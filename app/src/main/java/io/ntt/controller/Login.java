package io.ntt.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login")
public class Login extends HttpServlet {
  
  private final String PASSWIRD_PARAM = "login_password";
  private final String EMAIL_PARAM = "email";

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.getRequestDispatcher("view/login.jsp").forward(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
    String email = req.getParameter(this.EMAIL_PARAM);
    String password = req.getParameter(this.PASSWIRD_PARAM);

  }
}
