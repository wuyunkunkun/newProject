package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.Exam;
import com.entity.Question;
import com.entity.QuestionType;
import com.entity.Sort;
import com.service.ExamService;
import com.service.TestWordService;
import com.tool.ExcelGenerator;
import com.tool.WordGenerator;

@Controller
@RequestMapping("test")
public class TestExcelController {
	@Resource
	private TestWordService testService;
	@Resource
	private ExamService examService;
	
	@RequestMapping("Excel")
	public void MakeWord(HttpServletRequest request,HttpServletResponse response,
			HttpSession session){
		System.out.println("enter the TestExcelController's MakeWord");
		String ed=request.getParameter("ed");
		Integer id=Integer.parseInt(ed);
		Exam es=examService.selectExamById(id);
		int yearrepeat = this.examService.getRegulation();
	
		 try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}  
		
		 

		 	Exam exam = (Exam)session.getAttribute("exam");
	    	Set set = exam.getSorts();
	    	List<Integer> listPointValues=new ArrayList();
	    	for(int l=0;l<10;l++){
	    		listPointValues.add(0);
	    	}
	    	Map<Integer,Integer> map2=new HashMap();
	    	Iterator i=set.iterator();
	    	while(i.hasNext()){
	    		Sort s=(Sort) i.next();
	    		map2.put(s.getType().getId(), s.getPointvalue());
	    		listPointValues.set(s.getType().getId()-1,s.getPointvalue());
	    		
	    	}
	    	for(int k=0;k<10;k++){
	    		System.out.println("������ÿС��ķ�ֵ"+listPointValues.get(k));
	    	}	
	    	
	    	System.out.println("map2��Ϊ0��ֵ�ǣ�"+map2.get(0));
	    	System.out.println("map2��Ϊ1��ֵ�ǣ�"+map2.get(2));
	    	System.out.println("map2��Ϊ2��ֵ�ǣ�"+map2.get(2));
	    	System.out.println("map2��Ϊ3��ֵ�ǣ�"+map2.get(3));
	    	int sum=0;	    	
	    	List listpointvalue = this.testService.getScore(map2,exam);

	    	
	    	List<Integer> listNum=new ArrayList();
	    	for(int l=0;l<10;l++){
	    		listNum.add(0);
	    	}
	    	Iterator y=set.iterator();
	    	while(y.hasNext()){
	    		Sort s=(Sort) y.next();
	    		int t = listNum.get(s.getType().getId()-1);
	    		listNum.set(s.getType().getId()-1,++t);
	    	}
	    	
	    	for(int k=0;k<10;k++){
	    		System.out.println("�������������͵ĸ���"+listNum.get(k));
	    	}
	    	List<Integer> listSumValue=new ArrayList();
	    	//�����͵��ܷ�
	    	for(int l=0;l<10;l++){
	    		listSumValue.add(0);
	    	}
	    	for(int l=0;l<10;l++){
	    		listSumValue.set(l, listNum.get(l)*listPointValues.get(l));
	    	}
	    	for(int k=0;k<10;k++){
	    		System.out.println("���������������ܷ�"+listSumValue.get(k));
	    	}
		
//		 	List <QuestionType>questionList = (List<QuestionType>) session.getAttribute("types");
		 	List<HashMap<QuestionType,Integer>> types = (List<HashMap<QuestionType, Integer>>) session.getAttribute("types");
//		 	System.out.println("�Ծ����Ŀ�ǣ�"+exam.getTitle());
		 	Map<String, Object> map = new HashMap<String, Object>(); 
		 	List <Question>listone = new ArrayList();
		 	List <Question>listtow = new ArrayList();
		 	List <Question>listthree = new ArrayList();
		 	List <Question>listfour = new ArrayList();
		 	List <Question>listfive = new ArrayList();
		 	List <Question>listsix = new ArrayList();
		 	List <Question>listserve = new ArrayList();
		 	List <Question>listeight = new ArrayList();
		 	List <Question>listnine = new ArrayList();
		 	List <Question>listten = new ArrayList();
		 	Set<Sort>sorts = exam.getSorts();
		 	System.out.println("�Ծ��е����������ǣ�"+sorts.size());
		 	Iterator iterator = sorts.iterator();
		 	while(iterator.hasNext()){
		 		Sort sort = (Sort)iterator.next();
		 	
		 		if(sort.getType().getId() == 1){
		 			int size = listone.size();
		 			System.out.println("size�Ĵ�С�ǣ�"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("�������ǣ�"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listone.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
			 				listone.add(q);
			 				System.out.println("��ӯ��size�Ĵ�С�ǣ�"+listone.size());
			 				size = size+1;
		 				}
		 				listone.add(sort.getQuestion());
		 			}
//		 			listone.set(sequence,sort.getQuestion());
		 		}else if(sort.getType().getId() == 2){
		 			int size = listtow.size();
		 			System.out.println("size�Ĵ�С�ǣ�"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("�������ǣ�"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listtow.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listtow.add(q);
			 				size = size+1;
		 				}
		 				listtow.add(sort.getQuestion());
		 			}
//		 			listtow.set(sequence,sort.getQuestion());
		 		}else if(sort.getType().getId() == 3){
		 			int size = listthree.size();
		 			System.out.println("size�Ĵ�С�ǣ�"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("�������ǣ�"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listthree.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listthree.add(q);
			 				size = size+1;
		 				}
		 				listthree.add(sort.getQuestion());
		 			}
//		 			listthree.set(sequence,sort.getQuestion());
		 		}else if(sort.getType().getId() == 4){
		 			int size = listfour.size();
		 			System.out.println("size�Ĵ�С�ǣ�"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("�������ǣ�"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listfour.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listfour.add(q);
			 				size = size+1;
		 				}
		 				listfour.add(sort.getQuestion());
		 			}
//		 			listfour.set(sequence,sort.getQuestion());
		 		}else if(sort.getType().getId() == 5){
		 			int size = listfive.size();
		 			System.out.println("size�Ĵ�С�ǣ�"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("�������ǣ�"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listfive.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listfive.add(q);
			 				size = size+1;
		 				}
		 				listfive.add(sort.getQuestion());
		 			}
//		 			listfive.set(sequence,sort.getQuestion());
		 		}else if(sort.getType().getId() == 6){
		 			int size = listsix.size();
		 			System.out.println("size�Ĵ�С�ǣ�"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("�������ǣ�"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listsix.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listsix.add(q);
			 				size = size+1;
		 				}
		 				listsix.add(sort.getQuestion());
		 			}
//		 			listsix.set(sequence,sort.getQuestion());
		 		}else if(sort.getType().getId() == 7){
		 			int size = listserve.size();
		 			System.out.println("size�Ĵ�С�ǣ�"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("�������ǣ�"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listserve.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listserve.add(q);
			 				size = size+1;
		 				}
		 				listserve.add(sort.getQuestion());
		 			}
//		 			listserve.set(sequence,sort.getQuestion());
		 		}else if(sort.getType().getId() == 8){
		 			int size = listeight.size();
		 			System.out.println("size:"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("sequence:"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listeight.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listeight.add(q);
			 				size = size+1;
		 				}
		 				listeight.add(sort.getQuestion());
		 			}
//		 			listeight.set(sequence,sort.getQuestion());
		 		}else if(sort.getType().getId() == 9){
		 			int size = listnine.size();
		 			System.out.println("size"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("sequence"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listnine.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listnine.add(q);
			 				size = size+1;
		 				}
		 				listnine.add(sort.getQuestion());
		 			}
//		 			listeight.set(sequence,sort.getQuestion());
		 		}else{
		 			int size = listten.size();
		 			System.out.println("size"+size);
		 			int sequence = sort.getSequence();
		 			System.out.println("sequence"+sequence);
		 			Question q = null;
		 			if(size>=sequence){
		 				listten.set(sequence-1,sort.getQuestion());
		 			}else{
		 				while(size<sequence-1){
		 					listten.add(q);
			 				size = size+1;
		 				}
		 				listten.add(sort.getQuestion());
//		 				sort.getQuestion().get
		 			}
//		 			listeight.set(sequence,sort.getQuestion());
		 		}		 		
		 	}
		 	
		 	map.put("exam",exam);
		 	map.put("types",types);
		 	map.put("listone",listone);
		 	map.put("listtwo",listtow);
		 	map.put("listhree",listthree);
		 	map.put("listfour",listfour);
		 	map.put("listfive",listfive);
		 	map.put("listsix",listsix);
		 	map.put("listserve",listserve);
		 	map.put("listeight",listeight);
		 	map.put("listnine",listserve);
		 	map.put("listten",listeight);
		 
		 	for(int k=0;k<10;k++){
		 		System.out.println("�����͵��ܷ�"+listSumValue.get(k));
		 		System.out.println("�����͵ĸ���"+listNum.get(k));
		 	}
		 	map.put("listvalue",listpointvalue);
		 	map.put("listSumValue",listSumValue);
		 	map.put("listNum",listNum);
		 	map.put("listPointValues",listPointValues);
		 	
		 	
		 	
		 	
		
	        File file = null;  
	        InputStream fin = null;  
	        ServletOutputStream out = null;  
	        try {  
	           
	            file = ExcelGenerator.createDoc(map, "resume");  
	            try {
					fin = new FileInputStream(file);
				} catch (FileNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}  
	              
	            response.setCharacterEncoding("utf-8");  
	            response.setContentType("application/msword");  
	           
	            response.addHeader("Content-Disposition", "attachment;filename=resume.xls");  
	            
	            try {
					out = response.getOutputStream();
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}  
	            byte[] buffer = new byte[512];  // ������  
	            int bytesToRead = -1;  
	            
	            try {
					while((bytesToRead = fin.read(buffer)) != -1) {  
					    try {
							out.write(buffer, 0, bytesToRead);
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}  
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}  
	        } finally {  
	            if(fin != null)
					try {
						fin.close();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}  
	            if(out != null)
					try {
						out.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}  
	            if(file != null) file.delete(); // ɾ����ʱ�ļ�  
	        }
	    }  
}
