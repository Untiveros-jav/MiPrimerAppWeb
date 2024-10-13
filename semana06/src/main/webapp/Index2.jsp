<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLINICA JEFAZOO CLUB</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<div class="container mt-5">
  <h2 class="mb-4">Registre una cita para su mascota</h2>
  <form name="frmIndex" method="post" action="resultado2.jsp" onsubmit="return validateForm2();"> 
      <div class="mb-3">
         <label for="nombMas" class="form-label">Nombre de la Mascota:</label>
         <input type="text" class="form-control" id="nombMas" name="nombMas">
      </div>  
	  <div class="form-group">
		 <label for="cboTipoM">Tipo de mascota:</label>
		 <select class="form-control" id="cboTipoM" name="cboTipoM">
		   <option value="0">Seleccionar</option>
		   <option value="1">Perro</option>
		   <option value="2">Gato</option>
		   <option value="3">Conejo</option>
		   <option value="4">Ave</option>
		 </select>
	  </div>
	  <div class="form-group">
		 <label for="cboServicios">Servicios:</label>
		 <select class="form-control" id="cboServicios" name="cboServicios">
		   <option value="0">Seleccionar</option>
		   <option value="1">Vacunación</option>
		   <option value="2">Desparacitación</option>
		   <option value="3">Hospitalización</option>
		   <option value="4">Peluqueria</option>
		   <option value="5">Control reproductivo</option>
		   <option value="6">Cirugia</option>
		   <option value="7">Farmacia veterinaria</option>
		 </select>
	  </div>
	  <div class="mb-3">
	  	<label for="cant" class="form-label">N° de Mascotas:</label>
	  	<input type="text" class="form-control" id="cant" name="cant">
	  </div>
	  <div class="mb-3">
         <label for="nombre" class="form-label">Nombre del dueño:</label>
         <input type="text" class="form-control" id="nombre" name="nombre">
      </div>
      <div class="mb-3">
         <label for="direc" class="form-label">Dirección:</label>
         <input type="text" class="form-control" id="direc" name="direc">
      </div>
      <div class="form-group">
		 <label for="cboCliente">Tipo de Cliente:</label>
		 <select class="form-control" id="cboCliente" name="cboCliente">
		   <option value="0">Seleccionar</option>
		   <option value="1">Nuevo</option>
		   <option value="2">Conocido</option>
		 </select>
	  </div>
      <div class="mb-3">
         <label for="dni" class="form-label">DNI:</label>
         <input type="text" class="form-control" id="dni" name="dni">
      </div>
      <div class="mb-3">
         <label for="telf" class="form-label">Telefono:</label>
         <input type="text" class="form-control" id="telf" name="telf">
      </div> 
	  <button type="submit" class="btn btn-primary w-100">Procesar</button>
	  <button type="reset" class="btn btn-default w-100">Limpiar</button>
  </form>
</div>
<!-- Coloca el script JavaScript aquí, al final del body -->
<script src="js/validacion2.js"></script>
</body>
</html>