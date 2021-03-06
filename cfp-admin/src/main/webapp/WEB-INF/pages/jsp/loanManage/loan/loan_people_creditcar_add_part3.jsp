<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/common.jsp" %>
<html>
<body>
<div id="loan_add_part3" class="container-fluid" style="padding: 50px 0px 0px 10px;width:50%;">
<input style="margin-left: 800px;" type="button" class="btn  btn-primary" value="保 存" onclick="saveButtonAdd3();">
<form class="form-horizontal" id="loan_add_part3_form" method="post">
	<input type="hidden" id="loanApplicationId" name="loanApplicationId" value="${loanApplicationId}">
	<table width="100%">
      <tr>
          <td>
          		<hr>
          
          		<h3>抵押信息</h3>
          		
				<div class="control-group">
                    <label class="control-label"><span style="color: red;">*</span>抵押类型：</label>
                    <div class="controls">
                        <input type="radio" id="pledgeType" name="pledgeType" value="1" checked="checked"><font style="font-size: 12px;">一抵</font>
                        <input type="radio" id="pledgeType" name="pledgeType" value="2" ><font style="font-size: 12px;">二抵</font>
                    </div>
                </div>

              <div class="control-group">
                  <label class="control-label">车辆型号：</label>
                  <div class="controls">
                      <input type="text" style="width: 200px;margin-top: 3px;"
                             class="easyui-numberbox"   precision="0"
                             name="carModel" id="carModel"><span style="font-size: 12px;"></span>
                  </div>
              </div>

                
				<div class="control-group">
                    <label class="control-label">行驶里程：</label>
                    <div class="controls">
                        <input type="text" style="width: 200px;margin-top: 3px;"
                        	class="easyui-numberbox"   precision="0"
                        	name="mileage" id="mileage"><span style="font-size: 12px;">公里</span>
                    </div>
                </div>
                
				<div class="control-group">
                    <label class="control-label">购买时间：</label>
                    <div class="controls">
                        <input type="text" style="width: 200px;"
                        	class="easyui-datebox"
                        	name="buyDate" id="buyDate">
                    </div>
                </div>
                
				<div class="control-group">
                    <label class="control-label">产品金额：</label>
                    <div class="controls">
                        <input type="text" style="width: 200px;"
                        	class="easyui-numberbox" validType="length[0,4]" precision="0"
                        	name="carMoney" id="carMoney"><span style="font-size: 12px;">万元</span>
                    </div>
                </div>
                
				<div class="control-group">
                    <label class="control-label">市场价格：</label>
                    <div class="controls">
                        <input type="text" style="width: 200px;"
                        	class="easyui-numberbox" validType="length[0,4]" precision="0"
                        	name="originalPrice" id="originalPrice"><span style="font-size: 12px;">万元</span>
                    </div>
                </div>
                
				<div class="control-group">
                    <label class="control-label">市场评估价格：</label>
                    <div class="controls">
                        <input type="text" style="width: 200px;"
                        	class="easyui-numberbox" validType="length[0,4]" precision="0"
                        	name="appraisal" id="appraisal"><span style="font-size: 12px;">万元</span>
                    </div>
                </div>
      </tr>
	</table>
</form>
<input style="margin-left: 800px;margin-bottom: 40px;" type="button" class="btn btn-primary" value="保 存" onclick="saveButtonAdd3();">
</div>

<script type="text/javascript">

// 执行:保存。
function saveButtonAdd3(){
	
	// 验证
	if(!$("#loan_add_part3_form").form('validate')){
		return false;
	}
	
	$.post('${ctx}/jsp/loanManage/loan/save_loan_part3?r=' + Math.random(),
   		$("#loan_add_part3_form").serialize(),
   		function(data){
   	    	if(data.result == 'success'){
   	    		$.messager.alert("操作提示", "保存成功！", "info");
   	    	}else if(data.result == 'error'){
   	    		if(data.errCode == 'check'){
   	    			$.messager.alert("验证提示", data.errMsg, "info");
   	    		}else{
   	    			$.messager.alert("系统提示", data.errMsg, "info");
   	    		}
   	    	}else{
   	    		$.messager.alert("系统提示", "网络异常，请稍后操作！", "info");
   	    	}
   	 },'json');

}

// 加载房屋类型下拉框。
$("#loan_add_part3_form #houseType").combobox({
    url: '${ctx}/jsp/constant/loadSelect?constantTypeCode=houseType&parentConstant=0&selectedDisplay=selected',
    textField: 'CONSTANTNAME',
    valueField: 'CONSTANTVALUE'
});

//加载省份下拉框。
$("#loan_add_part3_form #houseAddr_provence").combobox({
    url: '${ctx}/jsp/constant/loadProvince?selectedDisplay=selected',
    textField: 'PROVINCENAME',
    valueField: 'PROVINCEID',
    onSelect: function (record) {
        $("#loan_add_part3_form #houseAddr_city").combobox("reload",
        	'${ctx}/jsp/constant/loadCity?pCityId=0&provinceId=' + record.PROVINCEID + '&selectedDisplay=selected');
    }
});

//加载城市下拉框。
$("#loan_add_part3_form #houseAddr_city").combobox({
    url: '${ctx}/jsp/constant/loadCity?pCityId=0&provinceId=0&selectedDisplay=selected',
    textField: 'CITYNAME',
    valueField: 'CITYID',
    onSelect: function (record) {
    	var provinceId = $("#houseAddr_provence").combobox("getValue");
        $("#loan_add_part3_form #houseAddr_district").combobox("reload",
        	'${ctx}/jsp/constant/loadCity?provinceId=' + provinceId + '&pCityId=' + record.CITYID + '&selectedDisplay=selected');
    }
});

//加载区县下拉框。
$("#loan_add_part3_form #houseAddr_district").combobox({
    url: '${ctx}/jsp/constant/loadCity?pCityId=0&provinceId=0&selectedDisplay=selected',
    textField: 'CITYNAME',
    valueField: 'CITYID'
});

</script>
</body>
</html>
