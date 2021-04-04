package com.oneago.P3BasicAccountRegister;

import com.oneago.P3BasicAccountRegister.objects.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String id = request.getParameter("id");
        String password = request.getParameter("password");

        PrintWriter pw = response.getWriter();
        if (id != null && password != null) {
            List<User> users = RegisterUserServlet.data;
            for (User x : users) {
                if (Integer.parseInt(id) == x.getDoc()) {
                    pw.println("Usuario encontrado<br>");
                    if (password.equals(x.getPass())) {
                        pw.println("Usuario Inicia correctamente<br>");
                        pw.println(x);
                    } else {
                        pw.println("Contraseña incorrecta para " + x.getFname());
                        pw.println("<br>");
                    }
                    break;
                }
            }
        } else {
            pw.print("<a href='/P3BasicAccountRegister-1.0.0/login.jsp'>Volver al login<a/>");
        }
    }
}