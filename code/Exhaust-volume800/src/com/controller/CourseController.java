package com.controller;


import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.support.DefaultMultipartHttpServletRequest;

import com.entity.Course;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.model.Page;
import com.service.CourseService;




@Controller
@RequestMapping("course")
public class CourseController {
	private String filename;
	private int PageSize=5;
	
	@Resource
	private CourseService courseService;
	
	
	@RequestMapping("toAdd")
	public String toAdd( Course c,HttpServletRequest request){
		System.out.println("enter the CourController's toAdd");
		List teacherList = new ArrayList();
		teacherList = courseService.findAllTeacher();
		request.setAttribute("teacherList",teacherList);
		request.setAttribute("cou", c);
		request.setAttribute("action", "add");
		return "course/form";
	}
	
	@ResponseBody
	@RequestMapping(value="add", method=RequestMethod.POST,produces="application/json;charset=UTF-8")
	public String add(HttpServletRequest request,
			@RequestParam(value="file", required=false) MultipartFile file,
			@RequestParam(name="checkboxnames") String []checkboxnames,
			ModelMap model){
		System.out.println("enter the CourController's add");
		String content = null;
		Map map = new HashMap();

		 String befileName = file.getOriginalFilename();  
		 System.out.println("ԭ���ļ���������"+befileName);

	     String fileExt = befileName.substring(befileName.lastIndexOf(".") + 1, befileName.length());  

	     fileExt = fileExt.toLowerCase();
	     long fileSize = file.getSize();   
	     String uploadPath= request.getSession().getServletContext()
	              .getRealPath("/upload");
	     String fileName = UUID.randomUUID().toString();
	     String newFileName = fileName+ "." + fileExt;
	     String uploadPathName = uploadPath +"/"+ newFileName;
	     System.out.println("uploadPathName:"+uploadPathName);
	     File tmpFile = null;
	     tmpFile = new File(uploadPathName); 
	     try {
			file.transferTo(tmpFile);   
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
         BufferedImage sourceImg = null;
         FileInputStream fis = null;
         try {
			fis = new FileInputStream(tmpFile);
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			sourceImg = ImageIO.read(fis);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
         int imgWidth = sourceImg.getWidth();  
         int imgHeight = sourceImg.getHeight();  
         if(imgWidth < 250 && imgHeight<170){
        	
				Course c = new Course();
				String cname = request.getParameter("name");
				String courseTime = request.getParameter("courseTime");
				int time = new Integer(courseTime);
				String jieshao = request.getParameter("jieshao");
				this.courseService.addCourse(cname,time,newFileName,jieshao,checkboxnames);
				map.put("success","��ӿγ̳ɹ���");
         }else{
        	 try {
				fis.close();    
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	System.out.println("�ļ�̫��");
        	File deleteFile = new File(uploadPathName);
        	if(deleteFile.exists()){
        		deleteFile.delete();
        		System.out.println("ɾ���ļ��ɹ���");
        	}
        	map.put("error","�ļ���С���ܳ���250*170��");
        	 ObjectMapper mapper = new ObjectMapper();  
   	      try {
   			content = mapper.writeValueAsString(map);
   		} catch (JsonProcessingException e) {
   			e.printStackTrace();
   		} 
            System.out.println(content);  
         }
	    return content;
	}
	
	@RequestMapping(value="edit",method=RequestMethod.GET)
	public String toEdit(@RequestParam("id") int courseId,
			HttpServletRequest request){
		System.out.println("enter the CourController's toEdit");
		List teacherList = new ArrayList();
		teacherList = courseService.findAllTeacher();
		request.setAttribute("teacherList",teacherList);
		Course c=this.courseService.getCourseId(courseId);
		request.setAttribute("cou", c);
		request.setAttribute("action", "edit");
		System.out.println("edit get");
		return "course/form";
	}
	
	@RequestMapping(value="toEdit")
	public String toEditList(@RequestParam(name="pageNo",defaultValue="1") int pageNo,@RequestParam(name="searchparam",defaultValue="") String searchparam,HttpServletRequest request){
		System.out.println("enter the CourController's toEdit");
		request.setAttribute("action", "edit");
		request.setAttribute("searchparam", searchparam);
		System.out.println("toedit");
		return "forward:/course/list";
	}
	
	@RequestMapping(value="edit",method=RequestMethod.POST,produces="application/json;charset=UTF-8")
	public String edit(Course c,HttpServletRequest request,@RequestParam(name="checkboxnames") String []checkboxnames,@RequestParam(value="file", required=false) MultipartFile file){
		System.out.println("enter the CourController's edit");
		Map map = new HashMap();

		 String befileName = file.getOriginalFilename();  
		 System.out.println("ԭ���ļ���������"+befileName);

	     String fileExt = befileName.substring(befileName.lastIndexOf(".") + 1, befileName.length());  
 
	     fileExt = fileExt.toLowerCase();
	     long fileSize = file.getSize();   
	     String uploadPath= request.getSession().getServletContext()
	              .getRealPath("/upload");
	     String fileName = UUID.randomUUID().toString();
	     String newFileName = fileName+ "." + fileExt;
	     String uploadPathName = uploadPath +"/"+ newFileName;
	     System.out.println("uploadPathName"+uploadPathName);
	     File tmpFile = null;
	     tmpFile = new File(uploadPathName); 
	     try {
			file.transferTo(tmpFile);   
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
         BufferedImage sourceImg = null;
         FileInputStream fis = null;
         try {
			fis = new FileInputStream(tmpFile);
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			sourceImg = ImageIO.read(fis);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.courseService.editCourse(c,checkboxnames,newFileName);
		String name = request.getParameter("searchparam");
		request.setAttribute("action", "edit");
		Page page=courseService.queryForPage(0,PageSize,name);
		request.setAttribute("page", page);
		System.out.println("edit post");
		return "course/list";
	}
	
	@RequestMapping(value="delete")
	public String delete(@RequestParam("id") int courseId,@RequestParam(name="param",defaultValue="") String name,HttpServletRequest request){
		System.out.println("enter the CourController's delete");
		System.out.println("courseId:"+courseId);
		if(!this.courseService.deleteCourse(courseId)){
			System.out.println("1");
			request.setAttribute("prompt", "false");
		}
		request.setAttribute("action", "delete");
		return "forward:/course/list";
	}
	
	@RequestMapping(value="allDelete")
	public String allDelete(@RequestParam(name="idlists", defaultValue="") String str,HttpServletRequest request){
		System.out.println("enter the CourController's allDelete");
		if(str!=""){
			String[] strs = str.split(",");
			for(int i=0;i<strs.length;i++){
				System.out.println(strs[i]);
				if(!courseService.deleteCourse(new Integer(strs[i]))){
					request.setAttribute("prompt", "false");
				}
			}
		}
		
		request.setAttribute("action", "delete");
		return "forward:/course/list";
	}
	
	@RequestMapping(value="toDelete")
	public String toDelete(@RequestParam(name="pageNo",defaultValue="1") int pageNo,@RequestParam(name="param",defaultValue="") String name,HttpServletRequest request){
		System.out.println("enter the CourController's toDelete");
		request.setAttribute("action", "delete");
		return "forward:/course/list";
	}
	
	@RequestMapping(value="list")
	public String list(@RequestParam(name="pageNo", defaultValue="1") int pageNo,HttpServletRequest request){
		System.out.println("enter the CourController's list");
		String searchparam="";
		try{
			searchparam=request.getParameter("searchparam");
			searchparam=new String(searchparam.getBytes("iso-8859-1"),"utf8");
		}catch(Exception e){
			searchparam="";
		}
		
		
		String action=null;
		String prompt=null;
		try{
			action=request.getAttribute("action").toString();
		}catch(Exception e){
			action="select";
		}
		try{
			prompt=request.getAttribute("prompt").toString();
		}catch(Exception e){
			prompt="true";
		}
		searchparam=searchparam+"";
		System.out.println("searchparam:"+searchparam);
		
		Page page=courseService.queryForPage(pageNo-1, PageSize,searchparam);
		List <Course>list = page.getList();
		List listContent = new ArrayList();   
		//����ȡ���ַ����ŵ�һ��������
		for(int i=0;i<list.size();i++){
			String content = list.get(i).getJieshao();
			if(content.length()>=50){
				String contentSub = content.substring(0,50);
				String rcontent = contentSub+"....";
				listContent.add(rcontent);
			}else{
				listContent.add(content);
			}
		}
		request.setAttribute("page", page);
		request.setAttribute("action", action);
		request.setAttribute("prompt", prompt);
		request.setAttribute("skipNum",pageNo);
		request.setAttribute("listContent",listContent);
		return "course/list";
	}
	

}
