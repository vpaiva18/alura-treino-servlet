<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty empresa}">
	Empresa 
	${empresa}
	cadastrada com sucesso
	</c:if>
	<br>
	Lista:

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
			<a href="<c:url value="/mostraEmpresa?id=${empresa.id}"/>">Editar</a>
			<a href="<c:url value="/removeEmpresa?id=${empresa.id}"/>">Remove</a>
		</c:forEach>
	</ul>

</body>
</html>