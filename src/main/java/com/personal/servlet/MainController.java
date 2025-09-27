package com.personal.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Main Controller Servlet - Điều hướng trang chủ
 */
public class MainController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("MainController initialized");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Thiết lập thông tin cá nhân
        request.setAttribute("name", "Nguyễn Văn A");
        request.setAttribute("title", "Lập trình viên Java");
        request.setAttribute("description", "Chào mừng đến với website cá nhân của tôi!");
        request.setAttribute("email", "nguyenvana@example.com");
        request.setAttribute("phone", "(+84) 123 456 789");
        
        // Chuyển hướng đến trang index.jsp
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}