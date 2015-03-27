<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>工单维修项目清单</title>
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
<style type="text/css">
td {
	height: 25px;
}
</style>
</head>
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>报表管理</span> <span class="titleSpan">(工单维修项目清单)</span>
			</td>
		</tr>
	</table>
	<div id="searchPanel" style="display: block;">
		<form name="fmSearch" method="post" id="fmSearch" class="searchform">
			<table border='0' id="searchTb">
				<tr>
					<td nowrap>入厂时间:</td>
					<td><input name="txtRuChangDateBegin" type="text"
						id="txtRuChangDateBegin" class="easyui-datebox" style="width: 120px;" /></td>
					<td><input name="txtRuChangDateEnd" type="text"
						id="txtRuChangDateEnd" class="easyui-datebox" style="width: 120px;" /></td>
					<td>项目名称:</td>
					<td><input name="txtXiangMuName" type="text"
						class="easyui-textbox" maxlength="10" id="txtXiangMuName"
						 /></td>
					<td>&nbsp;</td>
					<td nowrap><a id="lnkSearch" class="easyui-linkbutton"
						href="javascript:doSearch()">查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:exportExcel()">导出到Excel表格</a></td>
				</tr>
			</table>
		</form>
	</div>
<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryGongDanXiangMuReport.action',rownumbers:true,singleSelect:true,toolbar:'#toolbar',pagination:false">
		<thead>
			<tr>
				<th width="100" data-options="field:'txtRuChangDate'">入厂时间</th>
				<th width="150" data-options="field:'txtXiangMuName'">项目名称</th>
				<th width="200" data-options="field:'txtWeiXiuNeiRong'">维修内容</th>
				<th width="100"  data-options="field:'txtGongDuanName'">工段</th>
				<th width="100" data-options="field:'txtFeiYong'">工时费</th>
				<th width="100" data-options="field:'ddlZhangTao'">帐套</th>
				<th width="150" data-options="field:'txtRemark'">备注</th>
				<th width="100" data-options="field:'txtBanZu'">维修班组</th>
				<th width="100" data-options="field:'txtWanJianStatus'">完检状态</th>
				<th width="100" data-options="field:'txtChePaiHao'">车牌号</th>
				<th width="100" data-options="field:'txtFuWuGuWen'">服务顾问</th>
				<th width="200" data-options="field:'txtVin'">车架号</th>
				<th width="200" data-options="field:'txtFaDongJiHao'">发动机号</th>
				<th width="200" data-options="field:'txtCheXiName'">车型</th>
				<th width="100" data-options="field:'txtCheZhuName'">车主名</th>
				<th width="150" data-options="field:'txtCheZhuTel'">车主电话</th>
				<th width="100" data-options="field:'txtLianXiRenName'">联系人姓名</th>
				<th width="150" data-options="field:'txtLianXiRenTel'">联系人电话</th>
				<th width="100" data-options="field:'txtGongDanStatus'">工单状态</th>
				<th width="150" data-options="field:'txtChuChangDate'">出厂时间</th>
			</tr>
		</thead>
	</table>
<script type="text/javascript">
        var myTable = $('#mydg');
        
		$(function() {
			var queryJson = eval('('
					+ '{"txtRuChangDateBegin":"<s:property value="txtRuChangDateBegin"/>", "txtRuChangDateEnd":"<s:property value="txtRuChangDateEnd"/>"}' + ')');
			initializeWithJsonData(queryJson);
			
			var jsonStr = '<s:property value="easyUiJSonData" escape="false"/>';
			setupDatagrid(jsonStr);
		});

		function setupDatagrid(jsonStr) {
			jsonStrData = $.parseJSON(jsonStr);
			$('#mydg').datagrid('loadData', jsonStrData);
		}

		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryGongDanXiangMuReport.action",
				success : function(jsonStr) {
					setupDatagrid(jsonStr);
				}
			});
		}
		
		function exportExcel() {
			$("#fmSearch").form('submit', {
				url : "exportGongDanXiangMuReport.action",
				success : function(resp) {
					if(resp != ""){
						$.messager.alert('提示', resp);
					}
				}
			});
		}
	</script>
</body>
</html>