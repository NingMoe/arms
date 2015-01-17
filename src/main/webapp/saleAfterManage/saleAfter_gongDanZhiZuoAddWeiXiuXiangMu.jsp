<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head><title>
	工单制作新增维修项目
</title>
    <style type="text/css" >
      td
      {
          white-space:nowrap;
          }
    </style>

 <link rel="stylesheet" type="text/css" href="../style/themes/default/easyui.css?v=17a48e594e374bee9428a515058eb666" /><link rel="stylesheet" type="text/css" href="../style/themes/icon.css?v=17a48e594e374bee9428a515058eb666" /><script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script> <script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script> <script src="../js/frame/locale/easyui-lang-zh_CN.js" type="text/javascript"></script> <script src="../js/common.js?v=17a48e594e374bee9428a515058eb666" type="text/javascript"></script><link href="../style/common.css?v=17a48e594e374bee9428a515058eb666" rel="stylesheet" type="text/css" /><link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=8" /></head>
<base target="_self" />
    <script language="javascript" type="text/javascript" >

        var tmp = '#FFFFFF';
        $(function () {
            $('tr').mouseover(function () {
                tmp = this.style.backgroundColor;
                this.style.backgroundColor = '#eaf2ff';
            });

            $('tr').mouseout(function () {
                this.style.backgroundColor = tmp;
            });
        });

    
      
    </script>
<body>
    <form name="form1" method="post" id="form1">
    <div style="margin-top:5px;margin-left:5px">
        <table border="0" style="width:700px;border-bottom:1px solid #b8b8b8;"  >
        <tr><td class="titlebg"><span>售后管理</span>
        <span class="titleSpan">(维修项目新增)</span> 
         </td><td align="right">
           </td></tr>
         </table> 

       <table border="0" >
       <tr>
        <td>项目编号:</td>
        <td><input name="txtWeiXiuXiangMuBianHao" type="text" maxlength="30" id="txtXiangMuBianHao" style="width:150px;" /> </td>
        <td>维修工段:</td>
        <td><select name="ddlSuoShuGongDuan" id="ddlWeiXiuGongDuan" style="width:150px">
	<option value="机电">机电</option>
	<option value="保养">保养</option>
	<option value="钣金">钣金</option>
	<option value="美容">美容</option>
	<option value="喷漆">喷漆</option>
	<option selected="selected" value=""></option>

</select>  </td>
         <td>维修内容:</td>
        <td><input name="txtWeiXiuNeiRong" type="text" id="txtWeiXiuNeiRong" style="width:160px;" /></td>
       
        <td>
          <a id="lnkSearch" class="easyui-linkbutton" href="javascript:searchWeiXiuXiangMu()">查询</a>
        </td> 
       </tr>
       </table>
       <!--数据列表 satrt-->
        <table id="dg" width="700" class="easyui-datagrid" data-options="singleSelect:true,rownumbers:true,onClickRow:insertWeiXiuXiangMu" >
            <thead>
                <tr>
                    <th field="txtWeiXiuXiangMuBianHao" width="100">维修编号</th>
                    <th field="ddlSuoShuGongDuan" width="80">工段</th>
                    <th field="txtGongShi" width="80">工时</th>
                    <th field="txtWeiXiuNeiRong" width="200">维修内容</th>
                </tr>
            </thead>
        </table>
       <!--数据列表 end-->
    </div>
    </form>
    
    <script language="javascript" type="text/javascript" >		 	
        $(function () {
			var jsonStr = '<s:property value="easyUiJSonData" escape="false"/>';
        	setupDatagrid(jsonStr);
        });
		
		function setupDatagrid(jsonStr) {
            $('#dg').datagrid('loadData', $.parseJSON(jsonStr));
        }	 

        function searchWeiXiuXiangMu(){
			$("#form1").form('submit', {
				url : "queryWeiXiuXiangMu.action",				
				success : function(jsonStr) {
					setupDatagrid(jsonStr);
				}
			});	
        }
		 
        function insertWeiXiuXiangMu(index,row){
			$.post("AddGongDanWeiXiuXiangMu.action?d=" + new Date(), {
				"saleAfterGuid": '<s:property value="saleAfterGuid" />',
				"txtWeiXiuXiangMuBianHao": row.txtWeiXiuXiangMuBianHao,
				"ddlSuoShuGongDuan": row.ddlSuoShuGongDuan,
				"txtGongShi": row.txtGongShi,
				"txtWeiXiuNeiRong": row.txtWeiXiuNeiRong
			}, function (data) {
				if (data.statusCode == "success") {
					if (window.opener != null) {
						window.opener.pageLoad();
						window.opener.focus();
					} 
					$('#dg').datagrid('deleteRow', index);
				}else{
					alert("添加工单维修项目信息失败");
				}
			}, "json");
        }
    </script>

</body>
</html>