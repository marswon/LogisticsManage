<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <jsp:include page="../../inc.jsp"/>
    <title>中心库房退货入库</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
    <div id="p" class="easyui-panel" title="中心库房退货入库"     
        style="width:100%;height:150px;padding:10px;background:#fafafa;" >   
		<div  style="position:absolute;width:100%">
		<table style="font-size:12px;">
		  <tr>
		    <td align="right" >退货单号</td>
		    <td><input id="ss" class="easyui-searchbox" style="width:300px" /></td>
		  </tr>
		  </table>
		</div>
		<div style="position:absolute;left:9px;top:78px;width:98.7%"><table id="tt"></table>
		</div>
	</div> 
</body>
</html>
<script language="javascript"> 
 
	$('#tt').datagrid({
			nowrap:true,//显示数据
			striped:true,//是否显示斑马效果
			rownumbers:true,//行号列
			fitColumns:true,//允许表格自动缩放，以适应父容器
			remoteSort:false,//服务器对数据进行排序
			singleSelect:true,//单选
			checkbox:true,//复选
			pagination:true,//显示分页
			columns:[[{	
				field:'a',
				title:'退货单号',
				width:'120',
				align:'center'
			},{
				field:'b',
				title:'商品编号',
				width:'130',
				align:'center'
			},{
				field:'c',
				title:'商品名称',
				width:'100',
				align:'center'
			},{	
				field:'d',
				title:'型号',
				width:'100',
				align:'center'
			},{
				field:'e',
				title:'厂商',
				width:'120',
				align:'center'
			},{
				field:'t',
				title:'售价',
				width:'120',
				align:'center'
			},{
				field:'l',
				title:'退货数量',
				width:'120',
				align:'center'
			},{
				field:'m',
				title:'计量单位',
				width:'120',
				align:'center'
			},{
				field:'q',
				title:'退货日期',
				width:'120',
				align:'center'
			},{
				field:'f',
				title:'操作',
				width:'100',
				align:'center',
				formatter:function(value,row,index){  
					var input = "";
					if(row.isdefault != 0){
						 input = $.formatString('<input class="inputt" type ="text" onclick="dodetailed(\'{0}\')"/>',row.messageId);
					}
					return btn;  
	        	}  
			}
			]],
			onLoadSuccess:function(data){
				$('.detailed').linkbutton({text:'查看'}),  
		        $('.detailed').linkbutton('resize',{		//设置按钮的高度
		        	height:20
		        })
			}		
		});
		var p = $("#tt").datagrid('getPager'); //返回页面对象
		var opts=$("#tt").datagrid('options');
		
		$(p).pagination({
		pageSize : 10,
		pageList : [ 10, 15, 20 ],
		displayMsg : '当前显示{from}-{to}条记录   共{total}条记录',
	});
</script> 