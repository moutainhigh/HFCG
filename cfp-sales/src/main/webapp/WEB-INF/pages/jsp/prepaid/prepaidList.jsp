<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../common/common.jsp" %>
<head>
<style>
	#account_all{width: 100%;}
	#account_all ul li {float:left;margin-right:100px;}
</style>
</head>
<body>
<%@include file="../../common/header.jsp" %>
<div style="width: 100%;margin-left: 10px;">数据统计>>充值记录</div>

<div class="cf" style="width:900px;margin:0 10px 5px 10px;">
    <fieldset style="height:80px">
        <legend>查询条件</legend>
        <form name="bondSourceUserQuery" id="" action="" class="fitem" autocomplete="off">
            <table>
                <tbody>
                <tr>
                    <td nowrap="nowrap"><label>员工编号：</label></td>
                    <td>
                        <input id="adminCode" name="adminCode" value="${adminCode}" />
                    </td>
                    <td nowrap="nowrap"><label>用户名：</label></td>
                    <td>
                        <input id="userCode" name="userCode" value="" />
                    </td>
                    <td nowrap="nowrap"><label>用户姓名：</label></td>
                    <td>
                        <input id="userName" name="userName" value="" />
                    </td>
                    <td nowrap="nowrap"><label>充值卡：</label></td>
                    <td>
                        <input id="card" name="card" value="" />
                    </td>
                    <td nowrap="nowrap"><label>充值状态：</label></td>
                    <td>
                        <select class="easyui-combobox" id="status" style="width:150px" name="status" >
                            <option value="-1" >全部</option>
                            <option value="0">未支付</option>
                            <option value="1">支付成功</option>
                            <option value="2" >支付失败</option>
                        </select>
                    </td>
                    <td nowrap="nowrap">
                        <div style="margin:10px;">
                            <a href="javascript:void(0);" class="easyui-linkbutton" onclick="javascript:toQueryList();" iconCls="icon-search">查询</a>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </fieldset>
</div>
<div id="income" class="container-fluid" style="padding: 5px 0px 0px 10px">
	<div id="account_all">
		<ul>
			<li>未支付金额:<span></span></li>
			<li>支付成功金额:<span></span></li>
			<li>支付失败金额:<span></span></li>
			<li>总计金额:<span></span></li>
		</ul>
	</div>
    <table id="income_list"></table>
</div>

<script language="javascript">
    function toQueryList(){

        $("#income_list").datagrid("load", {
            "adminCode" : Trim($("#adminCode").val(),"g"),
            "userCode" : Trim($("#userCode").val(),"g"),
            "userName" : Trim($("#userName").val(),"g"),
            "card" : Trim($("#card").val(),"g"),
            "status":Trim($("#status").combobox("getValue"),"g")
        });
        $.ajax({
             type: "post",
             url: "${ctx}/phoneSell/prepaid/showPrepaidList",
             data: 
             		{
             			"adminCode" : Trim($("#adminCode").val(),"g"),
            			"userCode" : Trim($("#userCode").val(),"g"),
            			"userName" : Trim($("#userName").val(),"g"),
            			"card" : Trim($("#card").val(),"g"),
            			"status":Trim($("#status").combobox("getValue"),"g")
            		},
             success: function(data){
             	var lis=$("#account_all").find("li");
             	var amount=0;
             	$(lis).each(function(i,v){
             		if(data.rows!=null&&data.rows!=""&&data.rows[0].nums.length>0){
             			amount=data.rows[0].nums[i];
             		}
             		$(v).find("span").html(amount+"元");
             	});
             }            
        });
    }
    /**
     * 执行：列表加载。
     */
    function loadIncomeList(){
        $("#income_list").datagrid({
            title: "充值列表",
            url: "${ctx}/phoneSell/prepaid/showPrepaidList",
            pagination: true,
            pageSize: 10,
            singleSelect: true,
            rownumbers: true,
            width: document.body.clientWidth * 0.97,
            height: document.body.clientHeight * 0.6,
            columns:[[
                {field:"adminCode",title:"工号"},
                {field:"adminName",title:"姓名" },
                {field:"userCode", title:"用户名"},
                {field:"userName", title:"用户姓名"},
                {field:"time", title:"充值时间"},
                {field:"amount",title:"充值金额（元）"},
                {field:"type", title:"充值类型"},
                {field:"card",title:"充值卡"},
                {field:"status",title:"充值状态"},
            ]],
        });
        $.ajax({
             type: "post",
             url: "${ctx}/phoneSell/prepaid/showPrepaidList",
             data: 
             		{
             			"adminCode" : Trim($("#adminCode").val(),"g"),
            			"userCode" : Trim($("#userCode").val(),"g"),
            			"userName" : Trim($("#userName").val(),"g"),
            			"card" : Trim($("#card").val(),"g"),
            			"status":Trim($("#status").combobox("getValue"),"g")
            		},
             success: function(data){
             	var lis=$("#account_all").find("li");
             	var amount=0;
             	$(lis).each(function(i,v){
             		if(data.rows!=null&&data.rows!=""&&data.rows[0].nums.length>0){
             			amount=data.rows[0].nums[i];
             		}
             		$(v).find("span").html(amount+"元");
             	});
             }            
        });
    }

    function statusFormatter(val){
        if (val == undefined || val == "")
            return "";
        if(val == '1')
            return "充值成功";
        if(val == '2')
            return "充值失败";
    }

    function payMode(val){
        if (val == undefined || val == "")
            return "";
        if(val=='0')
            return "划扣";
        if(val=='1')
            return "转账";
        if(val=='2')
            return "现金";
    }
    //格式化时间
    function dateTimeFormatter(val) {

        if (val == undefined || val == "")
            return "";
        var date;
        if(val instanceof Date){
            date = val;
        }else{
            date = new Date(val);
        }
        var y = date.getFullYear();
        var m = date.getMonth() + 1;
        var d = date.getDate();

        var h = date.getHours();
        var mm = date.getMinutes();
        var s = date.getSeconds();

        var dateStr = y + '-' + (m < 10 ? ('0' + m) : m) + '-'
                + (d < 10 ? ('0' + d) : d);
        var TimeStr = h + ':' + (mm < 10 ? ('0' + mm) : mm) + ':'
                + (s < 10 ? ('0' + s) : s);

        return dateStr + ' ' + TimeStr;
    }

    $(function(){
        loadIncomeList();
    });
</script>

</body>