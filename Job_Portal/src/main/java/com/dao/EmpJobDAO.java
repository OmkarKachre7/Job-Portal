package com.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.AppliedJobs;
import com.entity.Jobs;


public class EmpJobDAO {
	private Connection conn;

	public EmpJobDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean empaddJobs(Jobs j) {
		boolean f=false;
		try {
			String sql="insert into jobs(title,description,category,status,location,emp_name) values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			ps.setString(6, j.getEmp_name());
			
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	public List<Jobs> getAllJobsByEmpName(String empName){
		List<Jobs> list = new ArrayList<Jobs>();
		Jobs j=null;
		
		try {
			String sql = "select * from jobs where emp_name=? order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, empName);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7)+"");
				list.add(j);    
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	public Jobs empgetJobById(int id){
		Jobs j=null;
		
		try {
			String sql = "select * from jobs where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7)+"");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return j;
	}
	
	public boolean empupdateJob(Jobs j) {
		boolean f=false;
		try {
			String sql="update jobs set title=?, description=?, category=?, status=?, location=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			ps.setInt(6, j.getId());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	public boolean empaddapplication(AppliedJobs j) {
		boolean f=false;
		try {
			String sql="insert into applied_jobs(emp_name,title,category,name,email,qualification) values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, j.getEmp_name());
			ps.setString(2, j.getTitle());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getName());
			ps.setString(5, j.getEmail());
			ps.setString(6, j.getQualification());
			
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	
	public List<AppliedJobs> getAllApplications(){
		List<AppliedJobs> list = new ArrayList<AppliedJobs>();
		AppliedJobs j=null;
		
		try {
			String sql = "select * from applied_jobs order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				j=new AppliedJobs();
				j.setId(rs.getInt(1));
				j.setEmp_name(rs.getString(2));
				j.setTitle(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setName(rs.getString(5));
				j.setEmail(rs.getString(6));
				j.setQualification(rs.getString(7));
				list.add(j);    
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	public List<AppliedJobs> getAllApplicantsByEmpName(String empName){
		List<AppliedJobs> list = new ArrayList<AppliedJobs>();
		AppliedJobs j=null;
		
		try {
			String sql = "select * from applied_jobs where emp_name=?  order by id desc";
			String pql = "update applied_jobs set emp_name = trim(emp_name) WHERE id BETWEEN 1 AND 1000 ";
			PreparedStatement prs = conn.prepareStatement(pql);
			prs.executeUpdate();
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, empName );
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				j=new AppliedJobs();
				j.setId(rs.getInt(1));
				j.setEmp_name(rs.getString(2));
				j.setTitle(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setName(rs.getString(5));
				j.setEmail(rs.getString(6));
				j.setQualification(rs.getString(7));
				list.add(j);       
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	public List<AppliedJobs> getAllApplicantsByUname(String empName){
		List<AppliedJobs> list = new ArrayList<AppliedJobs>();
		AppliedJobs j=null;
		
		try {
			String sql = "select * from applied_jobs where name=?  order by id desc";
			String pql = "update applied_jobs set name = trim(name) WHERE id BETWEEN 1 AND 1000 ";
			PreparedStatement prs = conn.prepareStatement(pql);
			prs.executeUpdate();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, empName );
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				j=new AppliedJobs();
				j.setId(rs.getInt(1));
				j.setEmp_name(rs.getString(2));
				j.setTitle(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setName(rs.getString(5));
				j.setEmail(rs.getString(6));
				j.setQualification(rs.getString(7));
				list.add(j);       
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	public Jobs getJobByTitleAndCategory(String title,String category){
		Jobs j=null;
		
		try {
			String sql = "select * from jobs where title=? and category=?";
			String dql = "select count(*) from jobs where title=? and category=? ;";
			String pql = "update applied_jobs set title = trim(title),category=trim(category) WHERE id BETWEEN 1 AND 1000 ";
			PreparedStatement prs = conn.prepareStatement(pql);
			prs.executeUpdate();
			PreparedStatement ps2 = conn.prepareStatement(dql);
			ps2.setString(1, title);
			ps2.setString(2, category);
			ResultSet rs1 = ps2.executeQuery();
			rs1.next();
			int p =rs1.getInt(1);
			if(p==0) {
				return j;
			}
			else {
				PreparedStatement ps = conn.prepareStatement(sql);
				ps.setString(1, title);
				ps.setString(2, category);
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					j=new Jobs();
					j.setId(rs.getInt(1));
					j.setTitle(rs.getString(2));
					j.setDescription(rs.getString(3));
					j.setCategory(rs.getString(4));
					j.setStatus(rs.getString(5));
					j.setLocation(rs.getString(6));
					j.setPdate(rs.getTimestamp(7)+"");
					j.setEmp_name(rs.getString(8));
				}
				

			}
						
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return j;
	}
}
