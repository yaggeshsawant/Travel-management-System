package com.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.UserDto;
import com.service.UserService;

/**
 * Servlet implementation class userservlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ServletConfig config;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		this.config = config;
	}

	/**
	 * Default constructor.
	 */
	public UserServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		UserDto dto = new UserDto();
		UserService ser = new UserService();

		dto.setId(Integer.parseInt(request.getParameter("Id") == null ? "0" : request.getParameter("Id")));

		dto.setName(request.getParameter("Name") == null ? "" : request.getParameter("Name"));
		dto.setPhone(request.getParameter("Phone") == null ? "" : request.getParameter("Phone"));

		dto.setPassword(request.getParameter("Password") == null ? "" : request.getParameter("Password"));
		
		dto.setEmail(request.getParameter("Email") == null ? "" : request.getParameter("Email"));

	

		int flag = (Integer.parseInt(request.getParameter("flag") == null ? "0" : request.getParameter("flag")));

		boolean b = false;

		if (dto.getId() == 0) {

			b = ser.insertUser(dto, request, config);

			if (b) {

				response.sendRedirect("registerpage2.jsp?msg=Yes");
			} else {

				response.sendRedirect("registerpage2.jsp?msg=No");

			}
		}

		/*
		 * else {
		 * 
		 * if (flag == 2) {
		 * 
		 * b = ser.UpdateUserById(dto, request, config);
		 * 
		 * } else if (flag == 1) {
		 * 
		 * b = ser.updateUserInfoById(dto, request, config);
		 * 
		 * } else if (flag == 3) {
		 * 
		 * b = ser.updateUserPasswordById(dto, request, config);
		 * 
		 * } else { b = ser.UpdateUser(dto, request, config); }
		 * 
		 * if (b) {
		 * 
		 * if(flag==1 || flag==3) { response.sendRedirect("user_profile.jsp?msg=YesUp");
		 * } else { response.sendRedirect("manage_user.jsp?msg=YesUp"); }
		 * 
		 * } else { if(flag==1 || flag==3) {
		 * response.sendRedirect("user_profile.jsp?msg=NoUp"); } else {
		 * 
		 * response.sendRedirect("manage_user.jsp?msg=NoUp");
		 * 
		 * }
		 * 
		 * }
		 * 
		 * }
		 */
	}
}
