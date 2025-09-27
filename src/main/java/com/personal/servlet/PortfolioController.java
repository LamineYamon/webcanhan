package com.personal.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Portfolio Controller - Xử lý trang dự án
 */
public class PortfolioController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Danh sách dự án
        List<Map<String, String>> projects = new ArrayList<>();
        
        // Dự án 1
        Map<String, String> project1 = new HashMap<>();
        project1.put("title", "Hệ thống Quản lý Bán hàng");
        project1.put("description", "Ứng dụng web quản lý bán hàng với tính năng quản lý sản phẩm, đơn hàng, khách hàng");
        project1.put("technologies", "Java, Spring Boot, MySQL, Bootstrap");
        project1.put("status", "Hoàn thành");
        project1.put("year", "2023");
        project1.put("image", "images/project1.jpg");
        projects.add(project1);
        
        // Dự án 2
        Map<String, String> project2 = new HashMap<>();
        project2.put("title", "API quản lý Sinh viên");
        project2.put("description", "RESTful API cho hệ thống quản lý thông tin sinh viên, điểm số, lịch học");
        project2.put("technologies", "Java, Spring Boot, PostgreSQL, JWT");
        project2.put("status", "Hoàn thành");
        project2.put("year", "2024");
        project2.put("image", "images/project2.jpg");
        projects.add(project2);
        
        // Dự án 3
        Map<String, String> project3 = new HashMap<>();
        project3.put("title", "Website Tin tức");
        project3.put("description", "Website hiển thị tin tức với chức năng tìm kiếm, phân loại, bình luận");
        project3.put("technologies", "JSP, Servlet, MySQL, HTML/CSS/JS");
        project3.put("status", "Đang phát triển");
        project3.put("year", "2025");
        project3.put("image", "images/project3.jpg");
        projects.add(project3);
        
        // Dự án 4
        Map<String, String> project4 = new HashMap<>();
        project4.put("title", "Ứng dụng Chat Real-time");
        project4.put("description", "Ứng dụng chat thời gian thực với WebSocket");
        project4.put("technologies", "Java, Spring WebSocket, React, MongoDB");
        project4.put("status", "Lên kế hoạch");
        project4.put("year", "2025");
        project4.put("image", "images/project4.jpg");
        projects.add(project4);
        
        request.setAttribute("projects", projects);
        request.setAttribute("totalProjects", projects.size());
        
        // Chuyển hướng đến trang portfolio.jsp
        request.getRequestDispatcher("/portfolio.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}