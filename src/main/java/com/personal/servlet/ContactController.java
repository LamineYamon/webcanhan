package com.personal.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Contact Controller - Xử lý trang liên hệ
 */
public class ContactController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Thông tin liên hệ
        request.setAttribute("email", "nguyenvana@example.com");
        request.setAttribute("phone", "(+84) 123 456 789");
        request.setAttribute("address", "Hà Nội, Việt Nam");
        request.setAttribute("linkedin", "https://linkedin.com/in/nguyenvana");
        request.setAttribute("github", "https://github.com/nguyenvana");
        request.setAttribute("website", "https://nguyenvana.dev");
        
        // Giờ làm việc
        List<String> workingHours = new ArrayList<>();
        workingHours.add("Thứ 2 - Thứ 6: 8:00 - 17:00");
        workingHours.add("Thứ 7: 9:00 - 12:00");
        workingHours.add("Chủ nhật: Nghỉ");
        
        request.setAttribute("workingHours", workingHours);
        
        // Chuyển hướng đến trang contact.jsp
        request.getRequestDispatcher("/contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Xử lý form liên hệ
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        
        // Kiểm tra dữ liệu đầu vào
        List<String> errors = new ArrayList<>();
        
        if (name == null || name.trim().isEmpty()) {
            errors.add("Vui lòng nhập tên của bạn");
        }
        
        if (email == null || email.trim().isEmpty()) {
            errors.add("Vui lòng nhập email");
        } else if (!isValidEmail(email)) {
            errors.add("Email không hợp lệ");
        }
        
        if (subject == null || subject.trim().isEmpty()) {
            errors.add("Vui lòng nhập tiêu đề");
        }
        
        if (message == null || message.trim().isEmpty()) {
            errors.add("Vui lòng nhập nội dung tin nhắn");
        }
        
        if (!errors.isEmpty()) {
            request.setAttribute("errors", errors);
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("subject", subject);
            request.setAttribute("message", message);
        } else {
            // Xử lý gửi email (giả lập)
            System.out.println("Nhận được tin nhắn từ: " + name);
            System.out.println("Email: " + email);
            System.out.println("Tiêu đề: " + subject);
            System.out.println("Nội dung: " + message);
            
            request.setAttribute("success", "Cảm ơn bạn đã liên hệ! Tôi sẽ phản hồi sớm nhất có thể.");
        }
        
        // Gọi lại doGet để hiển thị trang
        doGet(request, response);
    }
    
    private boolean isValidEmail(String email) {
        return email != null && email.contains("@") && email.contains(".");
    }
}