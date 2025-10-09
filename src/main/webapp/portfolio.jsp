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
                        Bài tập 2
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang2.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 3 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-envelope"></i>
                        Bài tập 3
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang-servey.onrender.com/Email/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 4 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-code"></i>
                        Bài tập 4
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoangbai4.onrender.com" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 6.1 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-list"></i>
                        Bài tập 6.1
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang6-1.onrender.com/emailList" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 6.2 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-database"></i>
                        Bài tập 6.2
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang6-2.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 7.1 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-shopping-cart"></i>
                        Bài tập 7.1
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang7-1-2.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 7.2 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-user-circle"></i>
                        Bài tập 7.2
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang7.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 7.3 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-chart-line"></i>
                        Bài tập 7.3
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoangbai7.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 8 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-cogs"></i>
                        Bài tập 8
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoangbai8.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 9.1 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-download"></i>
                        Bài tập 9.1
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang9-1.onrender.com/ch09_ex1_download/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 9.2 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-cloud-upload-alt"></i>
                        Bài tập 9.2
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang9-2.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 11 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-folder-open"></i>
                        Bài tập 11
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoang9-1.onrender.com/ch09_ex1_download/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 12 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-project-diagram"></i>
                        Bài tập 12
                    </h3>
                    <div class="assignment-links">
                        <a href="https://bai12-1-qr7h.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 13 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-rocket"></i>
                        Bài tập 13
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoangbai13-1.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
                        </a>
                    </div>
                </div>

                <!-- Bài tập 14 -->
                <div class="assignment-item">
                    <h3 class="assignment-title">
                        <i class="fas fa-star"></i>
                        Bài tập 14
                    </h3>
                    <div class="assignment-links">
                        <a href="https://duchoangchap14.onrender.com/" class="assignment-link" target="_blank">
                            <i class="fas fa-external-link-alt"></i>
                            Xem bài tập
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