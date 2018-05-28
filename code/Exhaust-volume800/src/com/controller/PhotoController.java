package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.service.PhotoService;
import com.service.TeachermanageService;

import net.sf.json.JSONObject;
import sun.misc.BASE64Decoder;

@Controller
@RequestMapping("message")
public class PhotoController {
	 @Resource
	 private PhotoService photoService;
	 private String filename = "";
	 
	  @ResponseBody
	  @RequestMapping(value="addPhoto", method=RequestMethod.POST,produces="application/json;charset=UTF-8")
	  public String addPhoto(HttpServletResponse response,HttpServletRequest request){
		  System.out.println("enter the PhotoController's addPhoto");
		  System.out.println("进入addphoto");
		  Map map = new HashMap();
		  String content = null; 
		  String fileFileName = request.getParameter("fileFileName");
		  String imgBase64 = request.getParameter("imgBase64");
		  String uploadPath= request.getSession().getServletContext()
	              .getRealPath("/upload");
	      String fileExt = fileFileName.substring(fileFileName.lastIndexOf(".") + 1).toLowerCase();//�ϴ����ļ��ĺ�׺  
	      String fileName = UUID.randomUUID().toString();
	      String newFileName = fileName+ "." + fileExt;
	      this.filename = newFileName;
	      String uploadPathName = uploadPath +"\\"+ newFileName;
	      System.out.println("uploadpathname"+uploadPathName);
	      System.out.println("filename"+filename);
	      BASE64Decoder decoder = new BASE64Decoder();  
	      imgBase64 = imgBase64.substring(30);    
	      try {  
	          imgBase64 = URLDecoder.decode(imgBase64,"UTF-8");  
	          byte[] decodedBytes = decoder.decodeBuffer(imgBase64);
	          for(int i=0;i<decodedBytes.length;++i){    
	              if(decodedBytes[i]<0) {  
	                  
	                  decodedBytes[i]+=256;    
	              }    
	          }  	
	           
	         File fis = new File(uploadPathName);
	         System.out.println(uploadPathName);
	         FileOutputStream fos = null;
	         fos = new FileOutputStream (fis);
	         fos.write(decodedBytes); 
	      } catch (IOException e) {  
	         e.printStackTrace();
	      }  
	      
	      String teacher_id = request.getParameter("teacher_id");
	      int t_id = new Integer(teacher_id);
	     if(photoService.addPhoto(t_id,filename)){
	    	map.put("success","ͷ�����óɹ���");
	     }else{
	    	 map.put("error","ͷ������ʧ�ܣ�");
	     }
	     ObjectMapper mapper = new ObjectMapper();  
	      try {
			content = mapper.writeValueAsString(map);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		} 
          System.out.println(content);  
	     return content;
	  }
}
