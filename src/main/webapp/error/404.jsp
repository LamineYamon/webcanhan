<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang không tìm thấy - 404</title>
    <link rel="stylesheet" href="../css/style.css">
    <style>
        .error-page {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-align: center;
        }
        .error-content {
            max-width: 600px;
            padding: 40px;
        }
        .error-code {
            font-size: 8rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #ffd700;
        }
        .error-message {
            font-size: 2rem;
            margin-bottom: 20px;
        }
        .error-description {
            font-size: 1.2rem;
            margin-bottom: 40px;
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <div class="error-page">
        <div class="error-content">
            <div class="error-code">404</div>
            <h1 class="error-message">Trang không tìm thấy</h1>
            <p class="error-description">
                Xin lỗi, trang bạn đang tìm kiếm không tồn tại hoặc đã bị di chuyển.
            </p>
            <a href="../main" class="btn btn-primary">Về trang chủ</a>
        </div>
    </div>
</body>
</html>