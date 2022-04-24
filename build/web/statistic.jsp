<%-- 
    Document   : manage
    Created on : Mar 1, 2022, 10:11:46 PM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Po Shoes</title>
    </head>
    <body>
        <h1>Thống kê</h1>
        <c:set var="ad" value="${sessionScope.account}"/>
        <h3 style="color: chocolate">Hello ${ad.name}!</h3>
        <table border="1px" width="100%">
            <tr>
                <th>Customer Name</th>
                <th>Total Paid</th>
            </tr>
            <h3 style="text-align: center">Top 3 Customers</h3>
            <c:forEach items="${requestScope.listAccount}" var="o">
                <tr style="text-align: center">
                    <td>${o.name}</td>
                    <td><fmt:formatNumber pattern="##,###,###.##">${o.totalPay}</fmt:formatNumber> VND</td>

                    </tr>
            </c:forEach>
        </table>
        <br>
        <br>
        <br>
        <canvas id="myChart" style="width:100%;max-width: 600px"></canvas>

        <script> 
            var xValues = ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7",
                        "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"];
            var yValues = ${requestScope.listMoney};
            var barColors = ["#febebf", "#febebf", "#febebf", "#febebf", "#febebf", "#febebf", "#febebf", "#febebf", "#febebf", "#febebf", "#febebf", "#febebf"];

            new Chart("myChart", {
                type: "bar",
                data: {
                    labels: xValues,
                    datasets: [{
                            backgroundColor: barColors,
                            data: yValues
                        }]
                },
                options: {
                    legend: {display: false},
                    title: {
                        display: true,
                        text: "Doanh thu"
                    }
                }
            });
        </script>
        
        <h3><a href="manage">Back</a></h3>

    </body>
</html>
