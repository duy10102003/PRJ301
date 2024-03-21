<%-- 
    Document   : changepass
    Created on : Nov 7, 2023, 5:10:14 PM
    Author     : DUYLC10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page = "./header/mainHeader.jsp" flush = "true" />

<section>
    <div class="container py-5">
        <div class="row">
             <div class="col-md-12">
                 <hr class="mb-5">
                             <h2 class="text-center mb-5">Đổi Mật Khẩu</h2>
            <div class="card card-outline-secondary">
                
                <div class="card-body" style="margin-bottom: 20px">
                    <form action="${pageContext.request.contextPath}/view/client/changepass" method="post" >
                        <div class="form-outline mb-4">
                            <input name="id"type="hidden" value="${sessionScope.info.id}" />
                        </div>
                        <div class="form-group  ">
                            <label for="inputPasswordOld" style="margin-left: 350px">Mật khẩu hiện tại</label >
                            <input type="password" name="oldpassword" class="form-control" id="inputPasswordOld" required="" style="width: 400px;margin-left: 350px">
                        </div>
                        <div class="form-group ">
                            <label for="inputPasswordNew" style="margin-left: 350px">Mật khẩu mới</label>
                            <input type="password" name="newpassword" class="form-control" id="inputPasswordNew" required="" style="width: 400px;margin-left: 350px">

                        </div>
                        <div class="form-group ">
                            <label for="inputPasswordNewVerify" style="margin-left: 350px">Nhập lại mật khẩu</label>
                            <input type="password" name="renewpassword" class="form-control" id="inputPasswordNewVerify" required="" style="width: 400px;margin-left: 350px">

                        </div>
                        <div class="form-group ">
                            <button type="submit" class="btn btn-success btn-lg float-right" style="margin-left: 350px">Save</button>
                           <p style="color: red; text-align: center">${msg}!</p>
                        </div>
                    </form>
                </div>
            </div>    
        </div>
    </div>
    </div>
</section>
<jsp:include page = "./footer/footer.jsp" flush = "true" />