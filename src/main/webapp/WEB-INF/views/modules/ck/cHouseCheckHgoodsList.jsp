<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>抄帐管理</title>
	<meta name="decorator" content="default"/>
</head>
<body>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>所在仓库</th>
				<th>商品名称</th>
				<th>商品分类</th>
				<th>规格</th>
				<th>数量</th>
				<th>预警数</th>
				<th>商品编码</th>
				<th>品牌</th>
				<th>条码</th>
				<th>供应商</th>
				<th>成本价</th>
				<th>售价</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${cHgoodsList}" var="cHgoods">
			<tr>
				<td>
					${cHgoods.house.name}
				</td>
				<td>
					${cHgoods.goods.name}
				</td>
				<td>
					${cHgoods.goods.gclass.name}
				</td>
				<td>
					${cHgoods.goods.spec.name}
				</td>
				<td>
					${cHgoods.unit}
				</td>
				<td>
					${cHgoods.yjnub}
				</td>
				<td>
					${cHgoods.goods.sort}
				</td>
				<td>
					${cHgoods.goods.bands.name}
				</td>
				<td>
					${cHgoods.goods.tm}
				</td>
				<td>
					${cHgoods.goods.supplier.name}
				</td>
				<td>
					￥${cHgoods.goods.cbj}
				</td>
				<td>
					￥${cHgoods.goods.sj}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>