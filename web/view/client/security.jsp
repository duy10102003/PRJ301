<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
<!-- Start header section -->
<jsp:include page = "./header/mainHeader.jsp" flush = "true" />

<section id="aa-catg-head-banner">
    <img src="${pageContext.request.contextPath}/view/client/assets/images/banner_tc.jpg" alt="banner sản phẩm">
    <div class="aa-catg-head-banner-area">
        <div class="container">
            <div class="aa-catg-head-banner-content">
                <h2>Chính sách</h2>
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
                    <li style="color:#fff">Chính sách</li>         
                </ol>
            </div>
        </div>
    </div>
</section>
<section id="aa-product-category">
    <div class="container">
        <div class="row">
            <div>
                <h1 style ="text-align: center; color: red;">Chính Sách</h1>
                <strong>Cám ơn quý khách đã truy cập vào website FarmsMarket</strong><br><br>
                <p>Lập chính sách cho trang web bán nông sản "FarmsMarkets" là một phần quan trọng trong việc đảm bảo tính minh bạch, 
                    an toàn và tạo niềm tin cho khách hàng và người bán. Dưới đây là một số quy định chính mà 
                    bạn có thể tích hợp vào trang web của bạn:.</p>

                <strong>1: Bảo mật thông tin cá nhân:</strong>
                <p>Bảo vệ thông tin cá nhân của khách hàng và người bán là ưu tiên hàng đầu.
                    Đảm bảo rằng mọi thông tin cá nhân được bảo vệ và chỉ được sử dụng cho mục đích xác định.
                    <br><br>
                </p>

                <strong>2. Chất lượng sản phẩm</strong>
                <p>
                    Đảm bảo rằng mọi sản phẩm được bán trên trang web FarmsMarkets đáp ứng các tiêu chuẩn chất lượng nông sản.
                    <br><br>
                </p>

                <strong>3. Mô tả sản phẩm chính xác</strong>
                <p>
                    Yêu cầu người bán cung cấp thông tin chính xác và minh bạch về sản phẩm, bao gồm nguồn gốc, quy cách, giá và hình ảnh.<br><br>
                </p>

                <strong>4. Giao dịch an toàn:</strong>
                <p>
                    Sử dụng phương thức thanh toán an toàn để đảm bảo rằng giao dịch được thực hiện một cách bảo mật..<br><br>
                </p>

                <strong>5. Xử lý khiếu nại</strong>
                <p>
                    Đảm bảo có quy trình xử lý khiếu nại từ phía khách hàng hoặc người bán một cách công bằng và nhanh chóng.<br><br>
                </p>

                <strong>6. Hướng dẫn về giao hàng</strong>
                <p>
                    Cung cấp thông tin về chính sách giao hàng, phí giao hàng và thời gian giao hàng ước tính.<br><br>
                </p>

                <strong>7. Quy tắc về việc đăng sản phẩm</strong>
                <p>
                    Hướng dẫn người bán về việc đăng sản phẩm, bao gồm hình ảnh và mô tả, cũng như đảm bảo rằng họ cung cấp thông tin liên hệ chính xác.<br><br>
                </p>
                
                <strong>8. Quy tắc về thỏa thuận giữa khách hàng và người bán</strong>
                <p>
                    Xác định các điều kiện và thỏa thuận mà khách hàng và người bán cần phải tuân theo khi sử dụng trang web.<br><br>
                </p>
                
                <strong>9. Chính sách bảo mật:</strong>
                <p>
                    Cung cấp một chính sách bảo mật chi tiết về cách thông tin cá nhân của người dùng được thu thập, lưu trữ và sử dụng.<br><br>
                </p>
                
                <strong>10. Chính sách về quảng cáo và tiếp thị</strong>
                <p>
                    Đảm bảo rằng mọi hình thức quảng cáo và tiếp thị tuân theo quy định và không gây nhầm lẫn cho khách hàng.<br><br>
                </p>
                
                <strong>11. Liên hệ và hỗ trợ khách hàng</strong>
                <p>
                    Cung cấp thông tin liên hệ dễ dàng và kênh hỗ trợ khách hàng để họ có thể giải quyết mọi vấn đề hoặc đặt câu hỏi.<br><br>
                </p>
                                
                <strong>12. Điều khoản và điều kiện chung</strong>
                <p>
                    Thiết lập các điều khoản và điều kiện chung về việc sử dụng trang web FarmsMarkets.<br><br>
                </p>
                
                <p>
                Nhớ cập nhật và công bố chính sách này một cách rõ ràng và dễ tiếp cận cho tất cả người dùng của trang web. 
                Hãy cân nhắc hợp pháp và tuân theo các quy định pháp luật liên quan 
                khi lập chính sách này và cập nhật chúng định kỳ để đảm bảo tính cập nhật và phù hợp.
                </p>


            </div>
        </div>
    </div>
</section>

<!--  footer-->
<jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
