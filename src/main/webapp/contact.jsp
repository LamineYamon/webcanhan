<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên hệ - Võ Đức Hoàng</title>
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
                    <a href="portfolio" class="nav-link">Bài tập</a>
                </li>
                <li class="nav-item">
                    <a href="contact" class="nav-link active">Liên hệ</a>
                </li>
            </ul>
            <div class="nav-toggle" id="mobile-menu">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </div>
    </nav>

    <!-- Contact Section -->
    <section class="contact">
        <div class="container">
            <div class="section-header">
                <h1>Liên hệ với tôi</h1>
                <p>Hãy liên hệ để thảo luận về dự án của bạn</p>
            </div>

            <div class="contact-content">
                <!-- Contact Info -->
                <div class="contact-info-section">
                    <h2>Thông tin liên hệ</h2>
                    <div class="contact-items">
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="contact-details">
                                <h3>Email</h3>
                                <p>voduchoang2911@gmail.com</p>
                            </div>
                        </div>

                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="contact-details">
                                <h3>Điện thoại</h3>
                                <p>0335105582</p>
                            </div>
                        </div>

                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-details">
                                <h3>Địa chỉ</h3>
                                <p>Thành Phố Hồ Chí Minh, Việt Nam</p>
                            </div>
                        </div>
                    </div>

                    <!-- Social Links -->
                    <div class="social-section">
                        <h3>Mạng xã hội</h3>
                        <div class="social-links">
                            <a href="https://github.com/LamineYamon" class="social-link" target="_blank">
                                <i class="fab fa-github"></i>
                                GitHub
                            </a>
                            <a href="https://www.youtube.com/@ucHoangVo-ck7hp" class="social-link" target="_blank">
                                <i class="fab fa-youtube"></i>
                                YouTube
                            </a>
                            <a href="https://www.facebook.com/vo.uc.hoang.249116" class="social-link" target="_blank">
                                <i class="fab fa-facebook"></i>
                                Facebook
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Contact Form -->
                <div class="contact-form-section">
                    <h2>Gửi tin nhắn</h2>
                    
                    <!-- Success Message -->
                    <c:if test="${not empty success}">
                        <div class="alert alert-success">
                            <i class="fas fa-check-circle"></i>
                            ${success}
                        </div>
                    </c:if>

                    <!-- Error Messages -->
                    <c:if test="${not empty errors}">
                        <div class="alert alert-error">
                            <i class="fas fa-exclamation-circle"></i>
                            <ul>
                                <c:forEach var="error" items="${errors}">
                                    <li>${error}</li>
                                </c:forEach>
                            </ul>
                        </div>
                    </c:if>

                    <form action="contact" method="post" class="contact-form">
                        <div class="form-group">
                            <label for="name">Họ tên *</label>
                            <input type="text" id="name" name="name" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email *</label>
                            <input type="email" id="email" name="email" required>
                        </div>

                        <div class="form-group">
                            <label for="subject">Tiêu đề *</label>
                            <input type="text" id="subject" name="subject" required>
                        </div>

                        <div class="form-group">
                            <label for="message">Nội dung tin nhắn *</label>
                            <textarea id="message" name="message" rows="6" required></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-paper-plane"></i>
                            Gửi tin nhắn
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; <%= java.time.LocalDate.now().getYear() %> Võ Đức Hoàng. All rights reserved.</p>
            <div class="social-links">
                <a href="https://github.com/LamineYamon" class="social-link" target="_blank"><i class="fab fa-github"></i></a>
                <a href="https://www.youtube.com/@ucHoangVo-ck7hp" class="social-link" target="_blank"><i class="fab fa-youtube"></i></a>
                <a href="https://www.facebook.com/vo.uc.hoang.249116" class="social-link" target="_blank"><i class="fab fa-facebook"></i></a>
            </div>
        </div>
    </footer>

    <script src="js/script.js"></script>
</body>
</html>