<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>计量单位管理</title>
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
			<td class="titlebg"><span>基础设置</span> <span class="titleSpan">(计量单位管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>计量单位名称:</td>
				<td><input name="txtUnitName" type="text" maxlength="20"
					id="txtUnitName" style="width: 120px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询项目</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'UnitSearch.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'txtUnitId',width:120">单位编号</th>
				<th data-options="field:'txtUnitName',width:80">单位名</th>
				<th data-options="field:'ddlStopFlag',width:80">停用状态</th>
				<th field="action" width="100" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-search" plain="true" onclick="toggleSearchPanel()">查询</a>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 450px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0">
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>单位名称:</td>
					<td><input class="easyui-validatebox" name="txtUnitName"
						type="text" id="txtUnitName" style="width: 250px;"
						data-options="required:true,missingMessage:'单位名称为必填项'" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>启用标志:</td>
					<td><select name="ddlStopFlag" id="ddlStopFlag"	>
							<option value="启用" selected>启用</option>
							<option value="停用">停用</option>
					</select></td>
				</tr>
				<tr>
					<td align="right">备注:</td>
					<td><textarea name="txtRemarks" rows="2" cols="20"
							id="txtRemarks" style="height: 60px; width: 250px;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br /> <a onclick="saveItem()"
						id="btnSave" class="easyui-linkbutton" href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		var url;
		function addItem() {
			$('#mydlg').dialog('open').dialog('setTitle', '添加单位信息');
			$('#fm').form('clear');
			url = 'insertUnit.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改单位信息');
				$('#fm').form('load', row);
				url = 'updateUnit.action?txtUnitId=' + row.txtUnitId;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中维修项目吗?', function(r) {
					if (r) {
						$.post('deleteUnit.action', {
							"txtUnitId" : row.txtUnitId
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
		function saveItem() {
			$('#fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					} else {
						$('#mydlg').dialog('close'); // close the dialog
						$('#mydg').datagrid('reload'); // reload data
					}
				}
			});
		}

		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "UnitSearch.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
		}

		function formatAction(value, row, index) {
			return '<a href="javascript:void(0)" onclick="editItem(this)">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
		}
	</script>
</body>
</html>