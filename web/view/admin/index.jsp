<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Start header section -->
<jsp:include page = "./header/header.jsp" flush = "true" />
<div class="content-wrapper">
    <div class="container-fluid">
        <div class="card mt-3">
            <div class="card-content">
                <div class="row row-group m-0">
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">${count}<span class="float-right"><i class="fa fa-shopping-cart"></i></span>
                            </h5>
                            <div class="progress my-3" style="height:3px;">
                                <div class="progress-bar" style="width:55%"></div>
                            </div>
                            <p class="mb-0 text-white small-font">Đơn hàng (theo tháng)<span class="float-right">+${incre1}% <i
                                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">${total} <span class="float-right">VNĐ</span></h5>
                            <div class="progress my-3" style="height:3px;">
                                <div class="progress-bar" style="width:55%"></div>
                            </div>
                            <p class="mb-0 text-white small-font">Khoản Thu (theo tháng)<span class="float-right">+${incre2}% <i
                                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0"> 25 <span class="float-right"><i class="fa fa-eye"></i></span></h5>
                            <div class="progress my-3" style="height:3px;">
                                <div class="progress-bar" style="width:55%"></div>
                            </div>
                            <p class="mb-0 text-white small-font">Ghé trang (theo tuần)<span class="float-right">+5.2% <i
                                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">${countPro} <span class="float-right"><i class="fa fa-envira"></i></span></h5>
                            <div class="progress my-3" style="height:3px;">
                                <div class="progress-bar" style="width:55%"></div>
                            </div>
                            <p class="mb-0 text-white small-font">Số lượng bán ra (theo tháng)<span class="float-right">+${incre3}% <i
                                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-lg-4 col-xl-4">
                <div class="card">
                    <div class="card-header">Danh mục bán chạy
                    </div>
                    <div class="card-body">
                        <div class="chart-container-2">
                            <canvas id="chart2" style="width:100%;max-width:600px"></canvas>
                        </div>

                    </div>
                    <div class="table-responsive">
                        <table class="table align-items-center">
                            <tbody>
                                <tr>
                                    <td><i class="fa fa-circle text-white mr-2"></i>Rau Củ Quả</td>
                                    <td>${sumP1} VNĐ</td>
                                    <td>+${per1}%</td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-circle text-light-1 mr-2"></i>Các Loạt Hạt</td>
                                    <td>${sumP2} VNĐ</td>
                                    <td>+${per2}%</td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-circle text-light-2 mr-2"></i>Trái Cây</td>
                                    <td>${sumP3} VNĐ</td>
                                    <td>+${per3}%</td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-circle text-light-3 mr-2"></i>Mật Ong và Tinh Dầu</td>
                                    <td>${sumP4} VNĐ</td>
                                    <td>+${per4}%</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<script
src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script>
    let info = []

    info.push('${per1}')
    info.push('${per2}')
    info.push('${per3}')
    info.push('${per4}')


     new Chart("chart2", {
        type: 'doughnut',
        data: {
            labels: ["Rau Củ Quả", "Các Loại Hạt", "Trái Cây", "Mật Ong và Tinh Dầu"],
            datasets: [{
                    backgroundColor: [
                        "#ffffff",
                        "rgba(255, 255, 255, 0.70)",
                        "rgba(255, 255, 255, 0.50)",
                        "rgba(255, 255, 255, 0.20)"
                    ],
                    data: info,
                    borderWidth: [0, 0, 0, 0]
                }]
        },
        options: {
            maintainAspectRatio: false,
            legend: {
                position: "bottom",
                display: false,
                labels: {
                    fontColor: '#ddd',
                    boxWidth: 15
                }
            }
            ,
            tooltips: {
                displayColors: false
            }
        }
    });
</script>


<jsp:include page = "./footer/footer.jsp" flush = "true" />