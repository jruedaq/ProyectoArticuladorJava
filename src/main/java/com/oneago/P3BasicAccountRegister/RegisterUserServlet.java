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

@WebServlet("/RegisterUserServlet")
public class RegisterUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public static final List<User> data = new ArrayList<>();

    public RegisterUserServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String typeDoc = request.getParameter("typeDoc");
        String doc = request.getParameter("doc");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String age = request.getParameter("age");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String bornDate = request.getParameter("bornDate");
        String pass = request.getParameter("pass");

        System.out.println(data);

        PrintWriter pw = response.getWriter();
        if (typeDoc != null && doc != null && fname != null && lname != null && age != null && phone != null && address != null && bornDate != null && pass != null) {
            data.add(new User(typeDoc, Integer.parseInt(doc), fname, lname, Integer.parseInt(age), Long.parseLong(phone), address, bornDate, pass));
            pw.print("Usuario registrado <a href='/P3BasicAccountRegister-1.0.0/RegisterUserServlet'>Registrar otro<a/> o <a href='/P3BasicAccountRegister-1.0.0/login.jsp'>Iniciar sesión<a/>");
        } else {
            pw.print("Error <a href='/P3BasicAccountRegister-1.0.0/'>Volver al registro<a/>");
        }
    }
}