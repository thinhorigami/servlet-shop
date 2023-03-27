package io.ntt.controller;

import java.io.IOException;
import java.util.regex.Pattern;

import io.ntt.model.User;
import io.ntt.service.ICommonService;
import io.ntt.service.IService;
import io.ntt.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login")
public class Login extends HttpServlet {
  
  private final String PASSWIRD_PARAM = "login_password";
  private final String EMAIL_PARAM = "login_email";
  private IService<User> user_servicce;

  public Login() {
    this.user_servicce = new UserService();
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.getRequestDispatcher("view/register.jsp").forward(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
    String email = req.getParameter(this.EMAIL_PARAM);
    String password = req.getParameter(this.PASSWIRD_PARAM);

    if ((email.isEmpty()) && (password.isEmpty())) {
      req.setAttribute("email_and_password_is_empty", "email or password is empty");
      req.getRequestDispatcher("view/register.jsp").forward(req, resp);;
      return;
    }

    ((UserService)this.user_servicce).login(email, password).ifPresentOrElse((o) -> {
      try {
        resp.sendRedirect("/app/home");
      } catch (IOException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }, () -> {
      req.setAttribute("invalid_user_or_password", "invalid user or password");
      try {
        req.getRequestDispatcher("view/register.jsp").forward(req, resp);
      } catch (ServletException | IOException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      };
    }); 
  }
}
