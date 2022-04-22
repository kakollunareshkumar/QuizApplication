package com.unt.quiz.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.w3c.dom.Document;

import com.unt.quiz.BuildDocumentObjectModel;

@WebServlet(urlPatterns = { "/login", "/register", "/takeExam", "/logout" ,"/feedback","/contact","/admin_login","/admin_validate","/view_results","/users","/feedback_results"})
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		

		 String URI = request.getRequestURI();
		 System.out.println("URI  "+URI);

		String applicationContextPath = request.getContextPath();
		System.out.println("applicationContextPath  "+applicationContextPath);
		
		 
		 

		if (request.getRequestURI().equals(applicationContextPath+ "/")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/home.jsp");
			dispatcher.forward(request, response);
		} else if (request.getRequestURI().equals(
				applicationContextPath + "/login")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/login.jsp");
			dispatcher.forward(request, response);
		}
		
		else if (request.getRequestURI().equals(
				applicationContextPath + "/view_results")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/view_results.jsp");
			dispatcher.forward(request, response);
		}
		
		else if (request.getRequestURI().equals(
				applicationContextPath + "/users")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/users.jsp");
			dispatcher.forward(request, response);
		}
		
			else if (request.getRequestURI().equals(
					applicationContextPath + "/admin_login")) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/WEB-INF/jsps/admin_login.jsp");
				dispatcher.forward(request, response);
				
		}
			else if (request.getRequestURI().equals(
					applicationContextPath + "/admin_validate")) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/WEB-INF/jsps/admin_validate.jsp");
				dispatcher.forward(request, response);
				
		}
			
			else if (request.getRequestURI().equals(
				applicationContextPath + "/feedback")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/feedback.jsp");
			dispatcher.forward(request, response);
		}  else if (request.getRequestURI().equals(
				applicationContextPath + "/contact")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/contact.jsp");
			dispatcher.forward(request, response);
		} else if (request.getRequestURI().equals(
				applicationContextPath + "/register")) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/register.jsp");
			dispatcher.forward(request, response);
		} 
		
		 else if (request.getRequestURI().equals(
					applicationContextPath + "/feedback_results")) {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/WEB-INF/jsps/feedback_results.jsp");
				dispatcher.forward(request, response);
			}
		
		else if (request.getRequestURI().equals(
				applicationContextPath + "/takeExam")) {
			request.getSession().setAttribute("currentExam", null);
			request.getSession().setAttribute("totalNumberOfQuizQuestions",null);
			request.getSession().setAttribute("quizDuration",null);
			request.getSession().setAttribute("min",null);
			request.getSession().setAttribute("sec",null);

			String exam = request.getParameter("test");
			request.getSession().setAttribute("exam", exam);

			System.out.println(request.getSession().getAttribute("user"));
			
			if (request.getSession().getAttribute("user") == null) {
				request.getRequestDispatcher("/login").forward(request,
						response);
				
			} else {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("/WEB-INF/jsps/quizDetails.jsp");
				Document document=null;
				try{
				document=BuildDocumentObjectModel.getDOM(exam);
			
				request.getSession().setAttribute("totalNumberOfQuizQuestions","10");
				request.getSession().setAttribute("quizDuration","10");
				request.getSession().setAttribute("min","5");
				request.getSession().setAttribute("sec",0);

				System.out.println("Minutes "+request.getSession().getAttribute("min")+"---------------- sec   "+request.getSession().getAttribute("sec"));
				}				
				catch(Exception e){e.printStackTrace();}
				dispatcher.forward(request, response);
			}
		} else if (request.getRequestURI().equals(
				applicationContextPath + "/logout")) {
			request.getSession().invalidate();
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/jsps/home.jsp");
			dispatcher.forward(request, response);
		}

	}

}
