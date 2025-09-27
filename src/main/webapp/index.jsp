<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Võ Đức Hoàng - Website Cá Nhân</title>
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
                    <a href="main" class="nav-link active">Trang chủ</a>
                </li>
                <li class="nav-item">
                    <a href="about" class="nav-link">Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <a href="portfolio" class="nav-link">Bài tập</a>
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

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-container">
            <div class="hero-content">
                <h1 class="hero-title">Xin chào, tôi là Võ Đức Hoàng</h1>
                <h2 class="hero-subtitle">Sinh viên ngành Kỹ Thuật Dữ Liệu<br>Trường Đại Học Sư Phạm Kỹ Thuật TPHCM</h2>
                <p class="hero-description">
                    Chào mừng đến với website cá nhân của tôi!
                </p>
                <div class="hero-buttons">
                    <a href="portfolio" class="btn btn-primary">Xem dự án</a>
                    <a href="contact" class="btn btn-secondary">Liên hệ</a>
                </div>
            </div>
            <div class="hero-image">
                <img src="images/duchoang.png" alt="Võ Đức Hoàng" class="profile-img">
            </div>
        </div>
    </section>

    <!-- Quick Info Section -->
    <section class="quick-info">
        <div class="container">
            <div class="info-grid">
                <div class="info-card">
                    <i class="fas fa-code"></i>
                    <h3>Ngôn ngữ lập trình</h3>
                    <p>Java, C#, Python, R, C++, C, JavaScript</p>
                </div>
                <div class="info-card">
                    <i class="fas fa-database"></i>
                    <h3>Database</h3>
                    <p>MySQL, PostgreSQL, MongoDB, SSMS</p>
                </div>
                <div class="info-card">
                    <i class="fas fa-globe"></i>
                    <h3>Web Development</h3>
                    <p>HTML, CSS, JavaScript</p>
                </div>
                <div class="info-card">
                    <i class="fas fa-tools"></i>
                    <h3>Tools</h3>
                    <p>Maven, Git, IntelliJ IDEA</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Info Section -->
    <section class="contact-info">
        <div class="container">
            <h2>Thông tin liên hệ</h2>
            <div class="contact-grid">
                <div class="contact-item">
                    <i class="fas fa-envelope"></i>
                    <span>voduchoang2911@gmail.com</span>
                </div>
                <div class="contact-item">
                    <i class="fas fa-phone"></i>
                    <span>+84 33 510 5582</span>
                </div>
                <div class="contact-item">
                    <i class="fas fa-map-marker-alt"></i>
                    <span>Thành Phố Hồ Chí Minh, Việt Nam</span>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <p>&copy; <%= java.time.LocalDate.now().getYear() %> Võ Đức Hoàng. All rights reserved.<p>
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