<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu - Võ Đức Hoàng</title>
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
                    <a href="about" class="nav-link active">Giới thiệu</a>
                </li>
                <li class="nav-item">
                    <a href="portfolio" class="nav-link">Bài tập</a>
                </li>
            </ul>
            <div class="nav-toggle" id="mobile-menu">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </div>
    </nav>

    <!-- About Section -->
    <section class="about">
        <div class="container">
            <div class="section-header">
                <h1>Giới thiệu về tôi</h1>
                <p>Tìm hiểu thêm về kinh nghiệm và kỹ năng của tôi</p>
            </div>

            <div class="about-content">
                <div class="about-info">
                    <div class="personal-info">
                        <h2>Thông tin cá nhân</h2>
                        <div class="info-grid">
                            <div class="info-item">
                                <strong>Họ tên:</strong> Võ Đức Hoàng
                            </div>
                            <div class="info-item">
                                <strong>Công việc:</strong> Sinh viên ngành Kỹ Thuật Dữ Liệu 
                            </div>
                            <div class="info-item">
                                <strong>Trường:</strong> Đại Học Sư Phạm Kỹ Thuật TPHCM
                            </div>
                            <div class="info-item">
                                <strong>Khóa:</strong> 2023-2027
                            </div>
                            <div class="info-item">
                                <strong>Ngày sinh:</strong> 29/11/2005
                            </div>
                            <div class="info-item">
                                <strong>Sở thích:</strong> Nghe nhạc, chơi game, đánh cờ vua,...
                            </div>
                            <div class="info-item">
                                <strong>Tính cách:</strong> Kiên nhẫn, bình tĩnh, cẩn thận
                            </div>
                            <div class="info-item">
                                <strong>Kỹ năng:</strong> Làm việc nhóm, design, tư duy logic
                            </div>
                            <div class="info-item">
                                <strong>Định hướng tương lai:</strong> Data Engineer, Game Developer
                            </div>
                        </div>
                    </div>

                    <div class="bio-section">
                        <h2>Giới thiệu</h2>
                        <p>${bio}</p>
                    </div>
                </div>
            </div>

            <!-- Skills Section -->
            <div class="skills-section">
                <h2>Kỹ năng môn học</h2>
                <div class="skills-grid">
                    <c:forEach var="skill" items="${skills}">
                        <div class="skill-item">
                            <i class="fas fa-check-circle"></i>
                            <span>${skill}</span>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <!-- Experience Section -->
            <div class="experience-section">
                <h2>Kinh nghiệm học tập</h2>
                <div class="timeline">
                    <c:forEach var="exp" items="${experiences}">
                        <div class="timeline-item">
                            <div class="timeline-dot"></div>
                            <div class="timeline-content">
                                <p>${exp}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <!-- Stats Section -->
            <div class="stats-section">
                <div class="stats-grid">
                    <div class="stat-item">
                        <h3>2+</h3>
                        <p>Số năm học</p>
                    </div>
                    <div class="stat-item">
                        <h3>6+</h3>
                        <p>Dự án hoàn thành</p>
                    </div>
                    <div class="stat-item">
                        <h3>8+</h3>
                        <p>Công nghệ sử dụng</p>
                    </div>
                    <div class="stat-item">
                        <h3>8+</h3>
                        <p>Đánh giá trung bình</p>
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