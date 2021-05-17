package gradeInfoManage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import user.*;


public class StaffingServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException,IOException{
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		StaffingDao staffingdao = new StaffingDao();
		String op = request.getParameter("op");
		System.out.println(op);
		
		//无条件查询“教师”
		if(op.equals("sel_tea")){
			//当前页数和显示条数
			int currentPage = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
			int size = request.getParameter("limit")==null?5:Integer.parseInt(request.getParameter("limit"));
			
			List<Teacher> tea = staffingdao.SelectTeacher(size, currentPage);
			
			Gson gson = new Gson();
			String json = gson.toJson(tea);
			json="{\"code\":0,\"msg\":0,\"count\":1,\"data\":"+json+"}";
			response.getWriter().print(json);
			
		}
		
		//无条件查询“主任”
		if(op.equals("sel_dir")){
			//当前页数和显示条数
			int currentPage = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
			int size = request.getParameter("limit")==null?5:Integer.parseInt(request.getParameter("limit"));
			
			List<Director> dir = staffingdao.SelectDirector(size, currentPage);
			
			Gson gson = new Gson();
			String json = gson.toJson(dir);
			json="{\"code\":0,\"msg\":0,\"count\":1,\"data\":"+json+"}";
			response.getWriter().print(json);
			
		}
		
		//通过job、tno条件查询“主任”
		if(op.equals("sel_dirByjob_tno")){
			//当前页数和显示条数
			int currentPage = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
			int size = request.getParameter("limit")==null?5:Integer.parseInt(request.getParameter("limit"));
			String job = request.getParameter("job");
			String tno = request.getParameter("tno");
			
			List<Director> dir = staffingdao.SelectDirectorByjob_tno(size, currentPage, job, tno);
			System.out.println("通过job、tno条件查询“主任”");
			Gson gson = new Gson();
			String json = gson.toJson(dir);
			json="{\"code\":0,\"msg\":0,\"count\":1,\"data\":"+json+"}";
			response.getWriter().print(json);
			
		}
		
		//无条件查询“专业负责人”
		if(op.equals("sel_maj")){
			//当前页数和显示条数
			int currentPage = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
			int size = request.getParameter("limit")==null?5:Integer.parseInt(request.getParameter("limit"));
			
			List<Majorpic> maj = staffingdao.SelectMajorpic(size, currentPage);
			
			Gson gson = new Gson();
			String json = gson.toJson(maj);
			json="{\"code\":0,\"msg\":0,\"count\":1,\"data\":"+json+"}";
			response.getWriter().print(json);
			
		}
		
		//通过grade、major、tno条件查询“专业负责人”
		if(op.equals("sel_majBygrade_major_tno")){
			//当前页数和显示条数
			int currentPage = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
			int size = request.getParameter("limit")==null?5:Integer.parseInt(request.getParameter("limit"));
			String grade = request.getParameter("grade");
			String major = request.getParameter("major");
			String tno = request.getParameter("tno");
			
            List<Majorpic> maj = staffingdao.SelectMajorpic(size, currentPage, grade, major, tno);
			
			Gson gson = new Gson();
			String json = gson.toJson(maj);
			json="{\"code\":0,\"msg\":0,\"count\":1,\"data\":"+json+"}";
			response.getWriter().print(json);
			
		}
				
		//无条件查询“学习导师”
		if(op.equals("sel_men")){
			//当前页数和显示条数
			int currentPage = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
			int size = request.getParameter("limit")==null?5:Integer.parseInt(request.getParameter("limit"));
			
			List<Mentor> dir = staffingdao.SelectMentor(size, currentPage);
			
			Gson gson = new Gson();
			String json = gson.toJson(dir);
			json="{\"code\":0,\"msg\":0,\"count\":1,\"data\":"+json+"}";
			response.getWriter().print(json);
			
		}
		
		//通过grade、clazz、tno条件查询“学习导师”
		if(op.equals("sel_menBygrade_clazz_tno")){
			//当前页数和显示条数
			int currentPage = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
			int size = request.getParameter("limit")==null?5:Integer.parseInt(request.getParameter("limit"));
			String grade = request.getParameter("grade");
			String clazz = request.getParameter("clazz");
			String tno = request.getParameter("tno");
			
            List<Mentor> maj = staffingdao.SelectMentor(size, currentPage, grade, clazz, tno);
			
			Gson gson = new Gson();
			String json = gson.toJson(maj);
			json="{\"code\":0,\"msg\":0,\"count\":1,\"data\":"+json+"}";
			response.getWriter().print(json);
			
		}
		
		//添加主任
		if(op.equals("adddirector")){
			String job = request.getParameter("job");
			String box = request.getParameter("box");
            staffingdao.insertDirector(job, box);
		}
	}
}

