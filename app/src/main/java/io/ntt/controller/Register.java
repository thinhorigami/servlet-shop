package io.ntt.controller;

import java.io.IOException;

import io.ntt.model.User;
import io.ntt.service.IService;
import io.ntt.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "Register", urlPatterns = {"/register"})
public class Register extends HttpServlet {

    private final String NAME = "name";
    private final String EMAIL = "email";
    private final String PASSWORD = "password";
    private final String CONFIRN_PASSWORD = "confirn_password";
    private IService<User> user_servicce;

    public Register() {
        this.user_servicce = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("view/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter(this.EMAIL);
        String name = req.getParameter(this.NAME);
        String password = req.getParameter(this.PASSWORD);
        String confirn_password = req.getParameter(this.CONFIRN_PASSWORD);

        System.out.println(confirn_password);

        if (password.compareTo(confirn_password) == 0) {
            ((UserService) this.user_servicce).getByEmail(email).ifPresentOrElse((o) -> {
                req.setAttribute("email_arealy_exists", "email arealy exists");
            }, () -> {
                User user = new User();
                user.setEmail(email);
                user.setName(name);
                user.setPassword(password);
                user_servicce.add(user).ifPresentOrElse((o) -> {
                    try {
                        req.getRequestDispatcher("view/home.jsp").forward(req, resp);
                    } catch (ServletException | IOException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                }, () -> {
                    req.setAttribute("email_arealy_exists", "email arealy exists");
                    try {
                        req.getRequestDispatcher("view/register.jsp").forward(req, resp);
                    } catch (ServletException | IOException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                });
            });
        } else {
            req.setAttribute("password_not_match", "pasword and confirm password not match");
            req.getRequestDispatcher("view/register.jsp").forward(req, resp);
        }
    }
}
