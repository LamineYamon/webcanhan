# Web Cá Nhân - Võ Đức Hoàng

Trang web cá nhân được phát triển bằng Java Servlet/JSP với giao diện hiện đại và responsive.

## Tính năng chính

- **Trang chủ**: Giới thiệu tổng quan và thông tin liên hệ nhanh
- **Giới thiệu**: Thông tin cá nhân chi tiết, kỹ năng và kinh nghiệm
- **Bài tập**: Tổng hợp các bài tập đã hoàn thành với link demo
- **Liên hệ**: Form liên hệ và thông tin cá nhân

## Công nghệ sử dụng

- **Backend**: Java Servlet/JSP
- **Frontend**: HTML5, CSS3, JavaScript
- **Build Tool**: Maven
- **Server**: Apache Tomcat 9
- **Database**: (nếu có)

## Cách chạy local

1. Build project:
```bash
mvn clean package
```

2. Deploy file WAR lên Tomcat hoặc chạy với Docker:
```bash
docker build -t web-ca-nhan .
docker run -p 8080:8080 web-ca-nhan
```

## Deploy lên Render

1. Đẩy code lên GitHub repository
2. Tạo Web Service mới trên [Render](https://render.com)
3. Chọn repository từ GitHub
4. Cấu hình build settings:
   - **Build Command**: `mvn clean package`
   - **Start Command**: để trống (sử dụng Dockerfile)
5. Deploy và truy cập qua URL được cung cấp

## Cấu trúc project

```
├── src/main/
│   ├── java/com/personal/servlet/    # Controllers
│   └── webapp/                       # JSP files, CSS, JS
├── target/                          # Build output
├── Dockerfile                       # Docker configuration
└── pom.xml                         # Maven configuration
```

## Demo

Xem demo tại: [Link sẽ được cập nhật sau khi deploy]

## Liên hệ

- **Email**: voduchoang2911@gmail.com
- **GitHub**: [LamineYamon](https://github.com/LamineYamon)
- **Facebook**: [vo.uc.hoang.249116](https://www.facebook.com/vo.uc.hoang.249116)