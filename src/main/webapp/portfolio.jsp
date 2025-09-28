<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bài tập - Võ Đức Hoàng</title>
    <link rel="stylesheet" href="css/style.css?v=<%= System.currentTimeMillis() %>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-logo">
                <a href="main">Web của Hoàng</a>
            </div>
            <ul class="nav-menu">
                <li class="nav-item">
                    <a href="main" class="nav-link">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a href="about" class="nav-link">Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <a href="portfolio" class="nav-link active">Bài tập</a>
                </li>
                <li class="nav-item">
                    <a href="contact" class="nav-link">Liên hệ</a>
                </li>
            </ul>
            <div class="nav-toggle" id="mobile-menu">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </div>
    </nav>

    <!-- Assignments Section -->
    <section class="assignments">
        <div class="container">
            <div class="section-header">
                <h1>Bài tập của tôi</h1>
                <p>Tổng hợp các bài tập đã hoàn thành trong quá trình học tập</p>
            </div>

            <!-- Assignments Grid -->
            <div class="assignments-grid">
                <!-- Bài tập 2 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-globe"></i>
                        Bài tập 2: Web cơ bản
                    </h3>
                    <p class="assignment-description">
                        Trang web cơ bản đầu tiên, thực hành HTML/CSS và triển khai lên Render.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang2.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>
                <!-- Bài tập 3 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-envelope"></i>
                        Bài tập 3: Email Survey
                    </h3>
                    <p class="assignment-description">
                        Ứng dụng khảo sát qua email với giao diện thân thiện và tính năng thu thập phản hồi người dùng.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang-servey.onrender.com/Email/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 4 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-code"></i>
                        Bài tập 4: Web Application
                    </h3>
                    <p class="assignment-description">
                        Ứng dụng web đa chức năng sử dụng các công nghệ web hiện đại để giải quyết bài toán thực tế.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoangbai4.onrender.com" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 6.1 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-list"></i>
                        Bài tập 6.1: Email List Management
                    </h3>
                    <p class="assignment-description">
                        Hệ thống quản lý danh sách email với các chức năng thêm, sửa, xóa và tìm kiếm thông tin người dùng.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang6-1.onrender.com/emailList" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 6.2 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-database"></i>
                        Bài tập 6.2: Database Integration
                    </h3>
                    <p class="assignment-description">
                        Ứng dụng tích hợp cơ sở dữ liệu với các thao tác CRUD cơ bản và giao diện người dùng trực quan.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang6-2.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 7.1 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-shopping-cart"></i>
                        Bài tập 7.1: E-commerce Features
                    </h3>
                    <p class="assignment-description">
                        Phát triển các tính năng thương mại điện tử cơ bản với giỏ hàng và xử lý đơn hàng.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang7-1-2.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 7.2 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-user-circle"></i>
                        Bài tập 7.2: User Management System
                    </h3>
                    <p class="assignment-description">
                        Hệ thống quản lý người dùng với authentication, authorization và profile management.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang7.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 7.3 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-chart-line"></i>
                        Bài tập 7.3: Advanced Web Application
                    </h3>
                    <p class="assignment-description">
                        Ứng dụng web nâng cao với tính năng phân tích dữ liệu và báo cáo thống kê trực quan.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoangbai7.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 8 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-cogs"></i>
                        Bài tập 8: System Integration
                    </h3>
                    <p class="assignment-description">
                        Tích hợp hệ thống với các API bên ngoài và xử lý dữ liệu đa dạng từ nhiều nguồn khác nhau.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoangbai8.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 9.1 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-download"></i>
                        Bài tập 9.1: File Download System
                    </h3>
                    <p class="assignment-description">
                        Hệ thống download file với quản lý quyền truy cập và theo dõi lượt tải xuống.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang9-1.onrender.com/ch09_ex1_download/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 9.2 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-upload"></i>
                        Bài tập 9.2: File Upload & Processing
                    </h3>
                    <p class="assignment-description">
                        Ứng dụng upload và xử lý file với validation, compression và storage management.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang9-2.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 9.3 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-file-alt"></i>
                        Bài tập 9.3: Advanced File Management
                    </h3>
                    <p class="assignment-description">
                        Hệ thống quản lý file nâng cao với tính năng preview, share và version control.
                    </p>
                    <div class="assignment-links">
                        <a href="https://duchoang9-1.onrender.com/ch09_ex1_download/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>

                <!-- Bài tập 12 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-project-diagram"></i>
                        Bài tập 12: SQLGateway
                    </h3>
                    <p class="assignment-description">
                        Thực hành với SQL
                    </p>
                    <div class="assignment-links">
                        <a href="https://bai12-1-qr7h.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem Demo
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; <%= java.time.LocalDate.now().getYear() %> Võ Đức Hoàng. All rights reserved.</p>
            
            <div class="footer-content">
                <div class="footer-info">
                    <div class="student-info">
                        <h4>Thông tin sinh viên</h4>
                        <p><strong>Họ tên:</strong> Võ Đức Hoàng</p>
                        <p><strong>MSSV:</strong> 23133024</p>
                        <p><strong>Ngành học:</strong> Kỹ thuật dữ liệu</p>
                    </div>
                </div>
                
                <div class="social-links">
                    <a href="https://github.com/LamineYamon" class="social-link" target="_blank"><i class="fab fa-github"></i></a>
                    <a href="https://www.youtube.com/@ucHoangVo-ck7hp" class="social-link" target="_blank"><i class="fab fa-youtube"></i></a>
                    <a href="https://www.facebook.com/vo.uc.hoang.249116" class="social-link" target="_blank"><i class="fab fa-facebook"></i></a>
                </div>
            </div>
        </div>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>