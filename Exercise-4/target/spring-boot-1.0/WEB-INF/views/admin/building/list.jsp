<%--
  Created by IntelliJ IDEA.
  User: Huy
  Date: 10/5/2024
  Time: 9:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="buildingListURL" value="/admin/building-list"/>
<c:url var = "buildingAPI" value ="/api/building"/>
<html>
<head>
    <title>Danh sách toà nhà</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check("breadcrumbs", "fixed");
                } catch (e) {
                }
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
                  <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input"
                         autocomplete="off">
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
                                </select>
                                <div class="dropdown dropdown-colorpicker"><a data-toggle="dropdown"
                                                                              class="dropdown-toggle" href="#"><span
                                        class="btn-colorpicker" style="background-color:#438EB9"></span></a>
                                    <ul class="dropdown-menu dropdown-caret">
                                        <li><a class="colorpick-btn selected" href="#" style="background-color:#438EB9;"
                                               data-color="#438EB9"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#222A2D;"
                                               data-color="#222A2D"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#C6487E;"
                                               data-color="#C6487E"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#D0D0D0;"
                                               data-color="#D0D0D0"></a></li>
                                    </ul>
                                </div>
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
                <h1>
                    Dashboard
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        overview &amp; stats
                    </small>
                </h1>
            </div>
            <!-- /.page-header -->
            <div class="row">
                <div class="col-xs-12 col-sm-12 widget-container-col ui-sortable" style="min-height: 37.5185px">
                    <div class="widget-box ui-sortable-handle" style="opacity: 1">
                        <div class="widget-header">
                            <h5 class="widget-title">Default Widget Box</h5>

                            <div class="widget-toolbar">
                                <a href="#" data-action="close">
                                    <i class="ace-icon fa fa-times"></i>
                                </a>
                            </div>
                        </div>

                        <div class="widget-body" style="display: block">
                            <div class="widget-main">
                                <%--Form Building Search--%>
                                <form:form id="listForm" modelAttribute="modelSearch" action="${buildingListURL}"
                                           method="GET">
                                    <div class="row">
                                        <div class="form-group" style="flex-direction: column">
                                            <div class="col-xs-12">
                                                <div class="col-xs-6">
                                                    <label class="name">Tên toà nhà</label>
                                                    <form:input class="form-control" path="name"/>
                                                </div>

                                                <div class="col-xs-6">
                                                    <label class="floorArea">Diện tích sàn</label>
                                                    <form:input class="form-control" path="floorArea"/>
                                                </div>
                                            </div>

                                            <div class="col-xs-12">
                                                <div class="col-xs-2">
                                                    <label class="name">Quận</label>
                                                    <form:select class="form-control" path="district">
                                                        <option value="">---Chọn Quận---</option>
                                                        <form:options items="${district}"/>
                                                    </form:select>
                                                </div>

                                                <div class="col-xs-5">
                                                    <label class="street">Đường</label>
                                                    <form:input class="form-control" path="street"/>
                                                </div>

                                                <div class="col-xs-5">
                                                    <label class="ward">Phường</label>
                                                    <form:input class="form-control" path="ward"/>
                                                </div>
                                            </div>

                                            <div class="col-xs-12">
                                                <div class="col-xs-4">
                                                    <label class="numberOfBasement">Số tầng hầm</label>
                                                    <form:input class="form-control" path="numberOfBasement"/>
                                                </div>

                                                <div class="col-xs-4">
                                                    <label class="direction">Hướng</label>
                                                    <form:input class="form-control" path="direction"/>
                                                </div>

                                                <div class="col-xs-4">
                                                    <label class="level">Hạng</label>
                                                    <form:input class="form-control" path="level"/>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <div class="col-xs-3">
                                                    <label class="areaFrom">Diện tích từ</label>
                                                    <input class="form-control" type="text" name="areaFrom" value="">
                                                </div>

                                                <div class="col-xs-3">
                                                    <label class="areaTo">Diện tích đến</label>
                                                    <input class="form-control" type="text" name="areaTo" value="">
                                                </div>
                                                <div class="col-xs-3">
                                                    <label  c3lass="rentPriceFrom">Giá thuê từ</label>
                                                    <input class="form-control" type="text" name="rentPriceFrom"
                                                           value="">
                                                </div>

                                                <div class="col-xs-3">
                                                    <label  class="rentPriceTo">Gía thuê đến</label>
                                                    <input class="form-control" type="text" name="rentPriceTo" value="">
                                                </div>
                                            </div>

                                            <div class="col-xs-12">
                                                <div class="col-xs-4">
                                                    <label  class="managerName">Tên quản lý</label>
                                                    <form:input class="form-control" path="managerName"/>
                                                </div>

                                                <div class="col-xs-4">
                                                    <label  class="managerPhone">Số điện thoại quản lý</label>
                                                    <form:input class="form-control" path="managerPhone"/>
                                                </div>

                                                <div class="col-xs-3">
                                                    <label class="">Chọn nhân viên phụ trách</label>
                                                    <form:select path="staffId" class="form-control" type="text">
                                                        <form:option value="">--Chọn nhân viên--</form:option>
                                                        <form:options items = "${listStaff}"/> <%--  options dung cho nhieu option --%>
                                                    </form:select>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <div class="col-xs-6">
                                                    <form:checkboxes items="${buildingListType}" path="typeCode"/>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <div class="col-xs-6">
                                                    <button type="button" class="btn btn-xs btn-danger"
                                                            id="btnSearchBuilding">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                             fill="currentColor" class="bi bi-search"
                                                             viewBox="0 0 16 16">
                                                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"></path>
                                                        </svg>
                                                        Tìm kiếm
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>

                            </div>
                        </div>
                    </div>
                    <div class="btn-group" style="
                    display: flex;
                    justify-content: flex-end;
                    padding-bottom: 50px;
                  ">
                        <a href="/admin/building-edit" class="btn btn-info" title="Thêm toà nhà">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-building-add" viewBox="0 0 16 16">
                                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"></path>
                                <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"></path>
                                <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                            </svg>
                        </a>
                        <button id="btnDeleteBuildings" class="btn btn-danger" title="Xoá toà nhà">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-building-dash" viewBox="0 0 16 16">
                                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"></path>
                                <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"></path>
                                <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"></path>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <!-- Danh Sách Bảng -->
            <div class="row">
                <div class="col-xs-12">
                    <table id="tableList" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input name="checkList" type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>Tên toà nhà</th>
                            <th>Địa chỉ</th>
                            <th>Số tầng hầm</th>
                            <th>Tên quản lý</th>
                            <th>Số điện thoại quản lý</th>
                            <th>Diện tích sàn</th>
                            <th>Diện tích trống</th>
                            <th>Diện tích thuê</th>
                            <th>Phí mô giới</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="item" items="${buildingList}">
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input name="checkList" type="checkbox" class="ace" value="${item.id}">
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>${item.name}</td>
                                <td>${item.name}</td>
                                <td>${item.name}</td>
                                <td>${item.name}</td>
                                <td>${item.name}</td>
                                <td>${item.name}</td>
                                <td>${item.name}</td>
                                <td>${item.name}</td>

                                <td>${item.name}</td>

                                <td>
                                    <div class="hidden-sm hidden-xs btn-group">
                                        <button class="btn btn-xs btn-success" onclick="assingmentBuilding(${item.id})">
                                            <i class="ace-icon glyphicon glyphicon-list"></i>
                                        </button>

                                        <a class="btn btn-xs btn-info" title="Sửa toà nhà" href="/admin/building-edit-${item.id}">
                                            <i class="ace-icon fa fa-pencil bigger-120"></i>
                                        </a>

                                        <button class="btn btn-xs btn-danger" title="Xoá toà nhà"  onclick="deleteBuilding(${item.id})">
                                            <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                        </button>
                                    </div>

                                    <div class="hidden-md hidden-lg">
                                        <div class="inline pos-rel">
                                            <button class="btn btn-minier btn-primary dropdown-toggle"
                                                    data-toggle="dropdown" data-position="auto">
                                                <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                            </button>

                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                <li>
                                                    <a href="#" class="tooltip-info" data-rel="tooltip" title=""
                                                       data-original-title="View">
                                  <span class="blue">
                                    <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                  </span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip" title=""
                                                       data-original-title="Edit">
                                  <span class="green">
                                    <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                  </span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip" title=""
                                                       data-original-title="Delete">
                                  <span class="red">
                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                  </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- /.page-content -->
    </div>
</div>
<!-- /.main-container -->
<div
        class="modal fade"
        id="assingmentBuildingModal"
        role="dialog"
        style="font-family: 'Times New Roman', Times, serif"
>
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    &times;
                </button>
                <h4 class="modal-title">Danh sách nhân viên</h4>
            </div>
            <div class="modal-body">
                <table
                        id="staffList"
                        class="table table-striped table-bordered table-hover center"
                >
                    <thead>
                    <tr>
                        <th class="center">Chọn</th>
                        <th class="center">Tên nhân viên</th>
                    </tr>
                    </thead>

                    <tbody>


                    </tbody>
                </table>
                <input type="hidden" name="buildingId" id="buildingId" >
            </div>
            <div class="modal-footer">
                <button
                        type="button"
                        class="btn btn-default"
                        data-dismiss="modal"
                        id="btnassingmentBuilding"
                >
                    Giao toà nhà
                </button>
                <button
                        type="button"
                        class="btn btn-default"

                >
                    Đóng
                </button>
            </div>
        </div>
    </div>
</div>

<!--[if !IE]> -->
<script src="assets/js/jquery.2.1.1.min.js"></script>

<script>
    function assingmentBuilding(buildingId) {
        // Show modal when this function is called
        $("#assingmentBuildingModal").modal();
        loadStaff(buildingId) ;
        $('#buildingId').val(buildingId) ; //Cho id vao trong the id hidden luon
    }



    $("#btnassingmentBuilding").click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $("#buildingId").val();
        var staffs = $("#staffList").find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        if(data['staffs'] != '') {
            assingmentBuilding(data) ;
        }

    })

    function assingment(data) {
        $.ajax({
            url : "${buildingAPI}/assigment" ,
            type : "POST" ,
            data: JSON.stringify(data) ,
            contentType: "application/json",
            dataType: 'JSON' ,
            success: function(result) {
                console.log("success") ;
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log(jqXHR);
                console.log(textStatus);
                console.log(errorThrown);
            }
        })
    }

    $('#btnSearchBuilding').click(function (e) {
        e.preventDefault();
        $('#listForm').submit()
    })
    function deleteBuilding(id) {
        var buildingId = [id] ;
        deleteBuildings(buildingId) ;
    }


    $("#btnDeleteBuildings").click(function (e) {
        e.preventDefault();
        var buildingIds = $("#tableList").find('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        deleteBuildings(buildingIds);
    })

    function deleteBuildings(data) {
        //call api
        $.ajax ({
            type: "DELETE",
            url: '${buildingAPI}/' + data,
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

    function loadStaff(buildingId) {
        $.ajax({
            method: "GET",
            url: "${buildingAPI}/" + buildingId + "/staffs",
            dataType: "JSON",
            success: function (response) {
                console.log(response); // Kiểm tra cấu trúc của response

                var row = '';
                $.each(response.data, function (index, item) {
                    console.log(item); // Kiểm tra từng item
                    row += '<tr>';
                    row += '<td class="text-center">';
                    row += '<input type="checkbox" value="' + item.staffId + '" id="checkbox_' + item.staffId + '" ' + (item.checked ? 'checked' : '') + ' />';
                    row += '</td>';
                    row += '<td class="text-center">' + item.fullName + '</td>';
                    row += '</tr>';

                });

                $('#staffList tbody').html(row);
                console.log("Success");
            },
            error: function (response) {
                console.log("failed");
            }
        });
    }



</script>
</body>
</html>
