package com.personal.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * About Controller - Xử lý trang giới thiệu
 */
public class AboutController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Thông tin cá nhân chi tiết
        request.setAttribute("fullName", "Võ Đức Hoàng");
        request.setAttribute("position", "Sinh viên ngành Kỹ Thuật Dữ Liệu");
        request.setAttribute("school", "Đại Học Sư Phạm Kỹ Thuật TPHCM");
        request.setAttribute("course", "2023-2027");
        request.setAttribute("bio", "Tôi là một sinh viên ngành Kỹ thuật dữ liệu trường Đại học Sư Phạm Kỹ Thuật TPHCM. " +
                                   "Tôi hiện đang là sinh viên năm 3 và có kinh nghiệm thực hiện các đồ án sử dụng ngôn ngữ lập trình như Java, C#, Python...");
        
        // Danh sách kỹ năng
        List<String> skills = new ArrayList<>();
        skills.add("Java");
        skills.add("C#");
        skills.add("Python");
        skills.add("HTML/CSS/JavaScript");
        skills.add("MySQL/SQL Server");
        skills.add("Git & GitHub");
        skills.add("Maven/Gradle");
        
        request.setAttribute("skills", skills);
        
        // Kinh nghiệm học tập
        List<String> experiences = new ArrayList<>();
        experiences.add("Lập trình hướng đối tượng (Java, C#)");
        experiences.add("Cấu trúc dữ liệu & Giải thuật");
        experiences.add("Mạng máy tính, Hệ điều hành");
        experiences.add("Cơ sở dữ liệu (MySQL, SQL Server)");
        
        request.setAttribute("experiences", experiences);
        
        // Chuyển hướng đến trang about.jsp
        request.getRequestDispatcher("/about.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}