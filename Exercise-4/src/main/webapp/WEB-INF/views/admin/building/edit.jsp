<%--
  Created by IntelliJ IDEA.
  User: Huy
  Date: 10/5/2024
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var = "buildingAPI" value ="/api/building"/>
<html>
<head>
    <title>Thêm toà nhà</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check("breadcrumbs", "fixed");
                } catch (e) {}
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul>
            <!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
                <form class="form-search">
                <span class="input-icon">
                  <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off">
                  <i class="ace-icon fa fa-search nav-search-icon"></i>
                </span>
                </form>
            </div>
            <!-- /.nav-search -->
        </div>

        <div class="page-content">
            <div class="ace-settings-container" id="ace-settings-container">
                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                    <i class="ace-icon fa fa-cog bigger-130"></i>
                </div>

                <div class="ace-settings-box clearfix" id="ace-settings-box">
                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <div class="pull-left">
                                <select id="skin-colorpicker" class="hide">
                                    <option data-skin="no-skin" value="#438EB9">
                                        #438EB9
                                    </option>
                                    <option data-skin="skin-1" value="#222A2D">
                                        #222A2D
                                    </option>
                                    <option data-skin="skin-2" value="#C6487E">
                                        #C6487E
                                    </option>
                                    <option data-skin="skin-3" value="#D0D0D0">
                                        #D0D0D0
                                    </option>
                                </select><div class="dropdown dropdown-colorpicker">		<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="btn-colorpicker" style="background-color:#438EB9"></span></a><ul class="dropdown-menu dropdown-caret"><li><a class="colorpick-btn selected" href="#" style="background-color:#438EB9;" data-color="#438EB9"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#222A2D;" data-color="#222A2D"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#C6487E;" data-color="#C6487E"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#D0D0D0;" data-color="#D0D0D0"></a></li></ul></div>
                            </div>
                            <span>&nbsp; Choose Skin</span>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar">
                            <label class="lbl" for="ace-settings-navbar">
                                Fixed Navbar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar">
                            <label class="lbl" for="ace-settings-sidebar">
                                Fixed Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs">
                            <label class="lbl" for="ace-settings-breadcrumbs">
                                Fixed Breadcrumbs</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl">
                            <label class="lbl" for="ace-settings-rtl">
                                Right To Left (rtl)</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container">
                            <label class="lbl" for="ace-settings-add-container">
                                Inside
                                <b>.container</b>
                            </label>
                        </div>
                    </div>
                    <!-- /.pull-left -->

                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover">
                            <label class="lbl" for="ace-settings-hover">
                                Submenu on Hover</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact">
                            <label class="lbl" for="ace-settings-compact">
                                Compact Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight">
                            <label class="lbl" for="ace-settings-highlight">
                                Alt. Active Item</label>
                        </div>
                    </div>
                    <!-- /.pull-left -->
                </div>
                <!-- /.ace-settings-box -->
            </div>
            <!-- /.ace-settings-container -->

            <div class="page-header">
                <h1 style="font-family: 'Times New Roman', Times, serif">
                    Sửa hoặc thêm toà nhà
                </h1>
            </div>
            <!-- /.page-header -->

            <!-- Danh Sách Bảng -->
            <div class="row">
               <form:form modelAttribute="buildingEdit" id="listForm" method="get">
                   <div class="col-xs-12">
                       <form  class="form-horizontal" role="form" id="form-edit">
                           <!-- name -->
                           <div class="form-group row">
                               <label for="name" class="col-xs-3 col-form-label">Tên toà nhà</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="name"/>
                               </div>
                           </div>
                           <!-- districtid -->
                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Quận</label>
                               <div class="col-xs-4">
                                   <form:select class="form-control" path="district">
                                       <option value="">---Chọn Quận---</option>
                                       <form:options items="${district}"/>
                                   </form:select>
                               </div>
                           </div>
                           <!-- ward -->
                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Phường</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="ward"/>
                               </div>
                           </div>
                           <!-- street -->
                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Đường</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="street"/>
                               </div>
                           </div>
                           <!-- structure -->
                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Kết cấu</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="structure"/>
                               </div>
                           </div>
                           <!-- numberofbasement -->
                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Số tầng hầm</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="numberOfBasement"/>
                               </div>
                           </div>
                           <!-- floorarea -->
                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Diện tích sàn</label>
                               <div class="col-xs-9">
                                   <<form:input class="form-control" path="floorArea"/>
                               </div>
                           </div>
                           <!-- direction -->
                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Hướng</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="direction"/>
                               </div>
                           </div>
                           <!-- level -->
                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Hạng</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="level"/>
                               </div>
                           </div>
                           <!-- rentarea -->
                           <div class="form-group row">
                               <label for="rentarea" class="col-xs-3 col-form-label">Diện tích thuê</label>
                               <div class="col-xs-9">
                                   <input class="form-control" type="text" name="rentarea" id="rentarea">
                               </div>
                           </div>
                           <!-- rentprice -->
                           <div class="form-group row">
                               <label for="rentprice" class="col-xs-3 col-form-label">Giá thuê</label>
                               <div class="col-xs-9">
                                   <input class="form-control" type="text" name="rentprice" id="rentprice">
                               </div>
                           </div>
                           <!-- rentpricedescription -->
                           <div class="form-group row">
                               <label for="rentpricedescription" class="col-xs-3 col-form-label">Mô tả giá</label>
                               <div class="col-xs-9">
                                   <textarea class="form-control" name="rentpricedescription" id="rentpricedescription"></textarea>
                               </div>
                           </div>
                           <!-- carfee -->
                           <div class="form-group row">
                               <label for="carfee" class="col-xs-3 col-form-label">Phí ô tô</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="carFee"/>
                               </div>
                           </div>
                           <!-- motorcyclefee -->
                           <div class="form-group row">
                               <label for="motorcyclefee" class="col-xs-3 col-form-label">Phí mô tô</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="motoFee"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label for="overtime_fee" class="col-xs-3 col-form-label">Phí ngoài giờ</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="overtimeFee"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label for="electricity_fee" class="col-xs-3 col-form-label">Tiền điện</label>
                               <div class="col-xs-9">
                                   <<form:input class="form-control" path="electricityFee"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label for="deposit" class="col-xs-3 col-form-label">Đặt cọc</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="deposit"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label for="rental_duration" class="col-xs-3 col-form-label">Thời hạn thuê</label>
                               <div class="col-xs-9">
                                   <input class="form-control" type="text" name="rental_duration" id="rental_duration">
                               </div>
                           </div>

                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Thời gian trang trí</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="decorationTime"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Tên quản lý</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="managerName"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">SĐT quản lý</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="managerPhone"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Phí môi giới</label>
                               <div class="col-xs-9">
                                   <form:input class="form-control" path="brokerageFee"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label class="col-xs-3 col-form-label">Loại toà nhà</label>

                               <div class="col-xs-6">
                                   <form:checkboxes items="${buildingListType}" path="typeCode"/>
                               </div>
                           </div>

                           <div class="form-group row">
                               <label for="note" class="col-xs-3 col-form-label">Ghi Chú</label>
                               <div class="col-xs-9">
                                   <input class="form-control" type="text" name="note" id="note">
                               </div>
                           </div>

                           <div class="form-group row">
                               <label class="col-xs-3"></label>
                               <div class="col-xs-9">
                                   <c:if test="${not empty buildingEdit.id}">
                                       <button id="btnAddOrUpdateBuilding" type="button" class="btn btn-primary">
                                           Cập nhập toà nhà
                                       </button>
                                       <button id="btnCancel" type="button" class="btn btn-secondary"> <!-- Đổi type thành button -->
                                           Huỷ thao tác
                                       </button>
                                   </c:if>
                                   <c:if test="${empty buildingEdit.id}">
                                       <button id="btnAddOrUpdateBuilding" type="button" class="btn btn-primary">
                                           Thêm toà nhà
                                       </button>
                                       <button id="btnCancel" type="button" class="btn btn-secondary"> <!-- Đổi type thành button -->
                                           Huỷ thao tác
                                       </button>
                                   </c:if>

                               </div>
                           </div>
                            <form:hidden path="id" id="buildingId"/>
                       </form>
                   </div>
               </form:form>
            </div>
        </div>
        <!-- /.page-content -->
    </div>
</div>


<script>
    $("#btnAddOrUpdateBuilding").click(function() {
        var data = {} ;
        var typeCode = [] ;
        var formData = $('#listForm').serializeArray() ;

        $.each(formData, function(i, v) {
            if(v.name != 'typeCode') {
                data["" + v.name + ""] = v.value ;
            }
            else {
                typeCode.push(v.value) ;
            }
        })

        data['typeCode'] = typeCode ;
        //call api
        if(data['name'] != "" && typeCode != "") {
            addOrUpdateBuidling(data) ;
        }
        else {
            window.location.href = "<c:url value="/admin/building-edit?typeCode=require" /> " ;
        }

    })

    function addOrUpdateBuidling(data) {
        $.ajax ({
            type: "POST",
            url: '${buildingAPI}',
            data: JSON.stringify(data) ,
            contentType: "application/json",
            dataType : "JSON",
            success: function(result) {
                $('#btnAddBuilding').html(result) ;
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                console.log(textStatus);
                console.log(errorThrown);
            }
        })
    }

    $("#btnCancel").click(function () {
        window.location.href = "/admin/building-list" ;

    })
</script>
</body>
</html>
