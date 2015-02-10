<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>店铺管理</title>
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
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
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
			<td class="titlebg"><span>系统设置</span> <span class="titleSpan">(店铺管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>店铺编码:</td>
				<td><input name="jigouCode" type="text" maxlength="20"
					id="jigouCode" /></td>
				<td>店铺名称:</td>
				<td><input name="jigouName" type="text" maxlength="60"
					id="jigouName" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">店铺查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>

	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryJiGou.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th width="100" data-options="field:'jigouCode'">店铺编码</th>
				<th width="150" data-options="field:'jigouName'">店铺名称</th>
				<th width="400" data-options="field:'jigouAddr'">店铺地址</th>
				<th width="100" data-options="field:'jigouTel'">店铺电话</th>
				<th width="100" data-options="field:'jigouFax'">店铺传真</th>
				<th width="100" field="action" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增</a>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 700px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="100%;">
				<tr>
					<td width="80">店铺编码:</td>
					<td width="250"><input name="jigouCode" type="text"
						maxlength="15" id="jigouCode" style="width: 100%;"
						class="easyui-textbox" data-options="required:true" /></td>
					<td width="80" align="right">店铺名称:</td>
					<td width="250"><input name="jigouName" type="text"
						maxlength="15" id="jigouName" style="width: 100%;"
						class="easyui-textbox" data-options="required:true" /></td>
				</tr>
				<tr>
					<td>店铺地址:</td>
					<td colspan="3"><input name="jigouAddr" type="text"
						maxlength="15" id="jigouAddr" style="width: 100%;"
						class="easyui-textbox" data-options="required:true" /></td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>店铺电话:</td>
					<td><input name="jigouTel" type="text" maxlength="15"
						id="jigouTel" style="width: 100%;" class="easyui-textbox"
						data-options="required:true" /></td>
					<td align="right">店铺传真:</td>
					<td><input name="jigouFax" type="text" maxlength="15"
						id="jigouFax" style="width: 100%;" class="easyui-textbox" /></td>
				</tr>
				<tr>
					<td colspan="4">店铺描述:</td>
				</tr>
				<tr>
					<td colspan="4"><input name="jigouDesc" id="jigouDesc"
						class="easyui-textbox" data-options="multiline:true"
						style="width: 100%; height: 100px" /></td>
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
			$('#mydlg').dialog('open').dialog('setTitle', '添加店铺信息');
			$('#fm').form('clear');
			url = 'insertJiGou.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改店铺信息');
				$('#fm').form('load', row);
				url = 'updateJiGou.action?jigouGuid=' + row.jigouGuid;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中店铺信息吗?', function(r) {
					if (r) {
						$.post('deleteJiGou.action', {
							"jigouGuid" : row.jigouGuid
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
				url : "queryJiGou.action",
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