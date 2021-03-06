<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>预约管理</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
</head>
<style type="text/css">
td {
	height: 25px;
}
</style>
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>客户管理</span> <span class="titleSpan">(客户预约)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch" class="searchform">
		<table id="searchPanel" class="searchPanel" style="display: block;">
			<tr>
				<td>车牌号码:</td>
				<td><input  class="easyui-textbox" name="txtCheLiangChePaiHao" type="text" maxlength="20"
					id="txtCheLiangChePaiHao" style="width: 150px;" /></td>
				<td nowrap>预约时间:</td>
                <td><input name="txtReserveDateBegin" type="text"
                    id="txtReserveDateBegin" class="easyui-datebox" style="width: 120px;" /></td>
                <td><input name="txtReserveDateEnd" type="text"
                    id="txtReserveDateEnd" class="easyui-datebox" style="width: 120px;" /></td>
				<s:if test="user.privilegeLst.contains('customerReservationManage')">
                <td nowrap>预约店铺:</td>
                <td><input name="txtShopCode" id="txtShopCode" class="easyui-combobox"
								data-options="editable:false,valueField:'code',textField:'name',method:'post',url:'<s:property value='basePath' />/data/shopCodeOption.action'" /></td>
                <td>来电类型:</td>
				<td><input name="txtCallSort" type="text" id="txtCallSort"
							class="easyui-combobox"
							data-options="editable:false,valueField:'code',textField:'name',data: [{name: '预约',code: '预约'},{name: '咨询',code: '咨询'}]" style="width: 150px;" /></td>
				</s:if>
				<td><a class="easyui-linkbutton" href="javascript:doSearch()">查询</a>&nbsp;&nbsp;&nbsp;
                <a class="easyui-linkbutton" href="javascript:doSearchForToday()">今日预约</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryCustomerReservation.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true,onDblClickRow:jieDaiDaoHang">
		<thead>
			<tr>
                <th width="100" data-options="field:'txtCheZhuName'">车主</th>
                <th width="150" data-options="field:'txtLianXiRenTel'">联系电话</th>
                <th width="150" data-options="field:'ddlCheLiangCheXi'">车型</th>
                <th width="100" data-options="field:'ddlCheLiangNianFen'">车辆年份</th>
                <th width="60" data-options="field:'ddlCheLiangPaiLiang'">排量</th>
                <th width="100" data-options="field:'txtCheLiangChePaiHao'">车牌号</th>
                <th width="100" data-options="field:'txtCallSort'">来电类型</th>
                <th width="180" data-options="field:'txtReserveDate'">预约到店时间</th>
                <th width="130" data-options="field:'txtTicketInfo'">作业信息</th>
				<th width="200" data-options="field:'txtRemarks'">备注</th>
                <s:if test="user.privilegeLst.contains('customerReservationManage')">
                <th width="150" data-options="field:'txtShopName'">预约店铺</th>
                <th width="150" data-options="field:'txtCustomerServiceName'">客服姓名</th>
                <th width="100" field="action" align="center" formatter="formatAction">操作</th>
                </s:if>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
    	<s:if test="user.privilegeLst.contains('customerReservationManage')">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增预约</a>
     	</s:if>
	</div>
	<script type="text/javascript">
		function addItem() {
			openCustomerReserveDialog();
		}	
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			
			openCustomerReserveDialog(row.txtReserveGuid);
		}
		
		function openCustomerReserveDialog(txtReserveGuid) {
			var sURL = "customerReservationInfo.action";
			if(arguments.length == 1){
				sURL += "?txtReserveGuid="	+ txtReserveGuid + "&d=" + new Date();
			}else{
				sURL += "?d=" + new Date();
			}
			var sFeatures = "dialogWidth:600px;dialogHeight:400px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			
			doSearch();
		}
		
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中预约信息吗?', function(r) {
					if (r) {
						$.post('deleteCustomerReservation.action', {
							"txtReserveGuid" : row.txtReserveGuid
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
							} else {
								$('#mydg').datagrid('reload'); // reload data
							}
						}, 'json');
					}
				});
			}
		}

		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryCustomerReservation.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}
		
		function doSearchForToday(){
			var curDate = new Date();
			var y = curDate.getFullYear();
            var m = curDate.getMonth()+1;
            var d = curDate.getDate();
            var str_todayDate = y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);			
			
			$("#fmSearch").form('clear');
			$("#txtReserveDateBegin").datebox("setValue",str_todayDate);
			$("#txtReserveDateEnd").datebox("setValue",str_todayDate);
			doSearch();
		}

		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
		}

		function formatAction(value, row, index) {
			return '<a href="javascript:void(0)" onclick="editItem(this)">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
		}
		
		

		function jieDaiDaoHang() {
			var row = $('#mydg').datagrid('getSelected');
			if (row && row.txtCheLiangId!="") {
				var url = '../saleAfterManage/saleAfterWeiXiuJieDaiDaoHang.action?cheLiangId='
						+ row.txtCheLiangId + '&d=' + new Date();
				var name = '维修接待导航';
				var features = 'height=600, width=950, top=80, left=80, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no';
				
				z = window.open(url, name, features);
				z.focus();
			} else {
				$.messager.alert('提示', '请先选中目标车辆');
			}
		}
	</script>
</body>
</html>