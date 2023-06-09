package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.HrBean;
import com.dao.AdminDao;

/**
 * Servlet implementation class HrListController
 */
@WebServlet("/HrListController")
public class HrListController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<HrBean> hrBeanAL = new  AdminDao().getAllHr();
		
		request.setAttribute("hrBeanAL", hrBeanAL);
		
		request.getRequestDispatcher("DisplayHrList.jsp").forward(request, response);
	}

	

}
