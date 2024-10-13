<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="negocio.Calcular2"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
	<div class="container mt-5">
		<h3>Datos</h3>
		<%
		//DECLARAR VARIABLES
		String servicio="",tipo="";
		
		//ENTRADA DE DATOS
		String nombMas = request.getParameter("nombMas");
		String nomD = request.getParameter("nombre");
		String direc = request.getParameter("direc");
		String dni = request.getParameter("dni");
		String telf = request.getParameter("telf");
		int serv=Integer.parseInt(request.getParameter("cboServicios"));
		int cant=Integer.parseInt(request.getParameter("cant"));
		int tip=Integer.parseInt(request.getParameter("cboTipoM"));
		int cli=Integer.parseInt(request.getParameter("cboCliente"));
		
		//PROCESO
	   if(serv==1) servicio="Vacunación";
	   if(serv==2) servicio="Desparacitación";
	   if(serv==3) servicio="Hospitalización";
	   if(serv==4) servicio="Peluqueria";
	   if(serv==5) servicio="Control reproductivo";
	   if(serv==6) servicio="Cirugía";
	   if(serv==7) servicio="Farmacia Veterinaria";
	   
	   if(tip==1) tipo="Perro";
	   if(tip==2) tipo="Gato";
	   if(tip==3) tipo="Conejo";
	   if(tip==4) tipo="Ave";

		Calcular2 calcular = new Calcular2(nombMas, nomD, direc, dni, telf, serv, cant, tip, cli);
		%>
		<ul class="list-group">
			<li class="list-group-item"><strong>Nombre de la Mascota: </strong><%=calcular.getNombMas()%></li>
			<li class="list-group-item"><strong>Nombre del Dueño: </strong><%=calcular.getNombreD() %></li>
			<li class="list-group-item"><strong>Servicio: </strong><%=servicio%></li>
			<li class="list-group-item"><strong>Tipo de Mascota: </strong><%=tipo%></li>
		</ul>
		<h3>Transacciones</h3>
		<ul class="list-group">
			<li class="list-group-item"><strong>Costo por el Servicio: </strong><%=calcular.getCostNormal()%></li>
			<li class="list-group-item"><strong>Descuento por Mascota: </strong><%=calcular.getDescM()%></li>
			<li class="list-group-item"><strong>Descuento por Fidelidad: </strong><%=calcular.getDescF()%></li>
			<li class="list-group-item"><strong>IGV: </strong><%=calcular.getIgv()%></li>
			<li class="list-group-item"><strong>Pago Total: </strong><%=calcular.getPagTotal()%></li>
		</ul>
		<a href="Index2.jsp" class="btn btn-warning mt-3">Volver</a>
	</div>
</body>
</html>