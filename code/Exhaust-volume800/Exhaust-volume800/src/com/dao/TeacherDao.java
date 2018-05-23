package com.dao;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.entity.Course;
import com.entity.Role;
import com.entity.Teacher;

@Repository
public class TeacherDao {

	@Resource
	private SessionFactory sessionFactory;
	
	public Teacher findByIdAndPwd(int id,String password){
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Teacher where id=?");
		query.setInteger(0, id);
		Teacher t=(Teacher)query.uniqueResult();
		if(t==null){
			System.out.println("t是null");
			return null;
		}
		System.out.println("数据库中密码："+t.getPassword());
		if(!(t.getPassword().equals(password))){
			System.out.println("passsword:"+password);
			System.out.println("t是null啊");
			return null;
		}
		return t;
	}

	public void cancelCourse(Integer t_id,Integer c_id){
		Session session=sessionFactory.getCurrentSession();
		Teacher t=session.get(Teacher.class, t_id);
		Course c=session.get(Course.class, c_id);
		t.getCourses().remove(c);
		//c.getTeachers().remove(t);
		session.update(t);
	}

	public Role selectRole(String choice) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Role where name=?");
		query.setString(0, choice);
		return (Role)query.list().get(0);
	}
	
	/**
	 * �޸����루md5����м��ܣ�
	 * @param id
	 * @param jiumima
	 * @param querenxinmima
	 * @return
	 */
	public String rePassword(int id,String jiumima,String querenxinmima){
		Session session=sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Teacher where id = ?");
		query.setInteger(0,id);
		Teacher teacher = (Teacher) query.uniqueResult();
		String password = teacher.getPassword();
		//����ǰ̨����������Md5���ܣ������ݿ��еľ��������ƥ�䣬�����ȣ���ȷ��������������
		 MessageDigest oldMd;
		 String Md5OldPassword = null;
		 try {
			oldMd = MessageDigest.getInstance("MD5");
			 // ����md5����
			 oldMd.update(jiumima.getBytes());
			 Md5OldPassword = new BigInteger(1, oldMd.digest()).toString(16);
			 System.out.println("����֮��ľ������ǣ�"+Md5OldPassword);
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(!(password.equals(Md5OldPassword))){
			return "���������";
		}else{
			 MessageDigest md;
			 String Md5Password = null;
			try {
				md = MessageDigest.getInstance("MD5");
			    // ����md5����
			    md.update(querenxinmima.getBytes());
			    Md5Password = new BigInteger(1, md.digest()).toString(16);
			    System.out.println("����֮��������ǣ�"+Md5Password);
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			teacher.setPassword(Md5Password);
			session.update(teacher);
			return "�޸�����ɹ���";
		}
	}
}