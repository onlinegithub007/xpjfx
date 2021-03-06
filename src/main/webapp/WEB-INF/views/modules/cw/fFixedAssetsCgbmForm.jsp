<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>固定资产采购变卖管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/cw/fFixedAssetsCgbm/">固定资产采购变卖列表</a></li>
		<li class="active"><a href="${ctx}/cw/fFixedAssetsCgbm/form?id=${fFixedAssetsCgbm.id}">固定资产采购变卖<shiro:hasPermission name="cw:fFixedAssetsCgbm:edit">${not empty fFixedAssetsCgbm.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="cw:fFixedAssetsCgbm:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="fFixedAssetsCgbm" action="${ctx}/cw/fFixedAssetsCgbm/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
		         <div class="control-group">
                                       <label class="control-label">资产名称：</label>
                                               <div class="controls">
                                               <form:select path="ffixedassets.id" class="required" >
                                               	<form:option value="" label="请选择"/>
                                                <form:options items="${FFixedAssetslist}" itemLabel="name" itemValue="id" htmlEscape="false" />
                                               </form:select>
                                                  <span class="help-inline"><font color="red">*</font> </span>
                                               </div>
                                            </div>

		<div class="control-group">
			<label class="control-label">往来单位：</label>
			<div class="controls">
				<form:input path="travelUnit" htmlEscape="false" maxlength="100" class="input-xlarge required "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">付款账户：</label>
			<div class="controls">
				<form:input path="paymentAccount" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">往来账户：</label>
			<div class="controls">
				<form:input path="travelAccount" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">合计金额：</label>
			<div class="controls">
				<form:input path="total" htmlEscape="false" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
        			<label class="control-label">付款方式：</label>
        			<div class="controls">
                                   <form:select path="paymentMode" >
                                  <form:option value="" label="请选择"/>
                                 <form:options items="${fns:getDictList('paymentMode')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
                                 </form:select>
                                             </div>
        		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="cw:fFixedAssetsCgbm:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>