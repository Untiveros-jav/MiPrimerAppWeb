<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CLINICA JEFAZOO CLUB</title>
<link rel="stylesheet" type="text/css" href="css/perudev.css">
</head>
<body>
<div id="datos">
<form name="frmTrab" method="post" action="resultado.jsp">
<table width="407" border="2">
      <tr>
        <td colspan="2" align="center">Registre una cita para su mascota</td>
      </tr>
      <tr>
        <td><label for="nomb">Nombre(s):</label></td>
        <td><input type="text" name="nomb" id="nomb" class="fieldEdit" required placeholder="Nombre del dueño"></td> 
      </tr>
      <tr>
        <td><label for="direc">Dirección:</label></td>
        <td><input type="text" name="direc" id="direc" class="fieldEdit" required placeholder="Dirección"></td> 
      </tr>
      <tr>
        <td><label for="dni">DNI:</label></td>
        <td><input type="text" name="dni" id="dni" class="fieldEdit" required placeholder="N° de DNI"></td> 
      </tr>
      <tr>
        <td><label for="telef">Telefono:</label></td>
        <td><input type="text" name="telef" id="telef" class="fieldEdit" required placeholder="N° de Telefono"></td> 
      </tr>
      <tr>
        <td><label for="nombMast">Nombre de la Mascota:</label></td>
        <td><input type="text" name="nombMast" id="nombMast" class="fieldEdit" required placeholder="Nombre de la mascota"></td> 
      </tr>
      <tr>
        <td width="197"><label for="cboTipoM">Tipo de mascota:</label></td>
        <td width="190">
           <select name="cboTipoM" id="cboTipoM" class="combo" required>
              <option value="0">Seleccionar</option>
              <option value="1">Perro</option>
              <option value="2">Gato</option>
              <option value="3">Conejo</option>
              <option value="4">Ave</option>
           </select>
        </td>
      </tr>
      <tr>
        <td><label for="cant">N° de Mascotas:</label></td>
        <td><input type="number" name="cant" id="cant" class="fieldEdit" required placeholder="N° de mascotas"></td> 
      </tr>
      <tr>
        <td width="197"><label for="cboCategoria">Servicios:</label></td>
        <td width="190">
           <select name="cboCategoria" id="cbocategoria" class="combo" required>
              <option value="0">Seleccionar</option>
              <option value="1">Vacunación</option>
              <option value="2">Desparacitación</option>
              <option value="3">Hospitalización</option>
              <option value="4">Peluqueria</option>
              <option value="5">Control reproductivo</option>
              <option value="6">Cirugía</option>
              <option value="7">Farmacia Veterinaria</option>
           </select>
        </td>
      </tr>
      <tr>
        <td width="197"><label for="cboCliente">Cliente:</label></td>
        <td width="190">
           <select name="cboCliente" id="cboCliente" class="combo" required>
              <option value="0">Seleccionar</option>
              <option value="1">Nuevo</option>
              <option value="2">Caserito</option>
           </select>
        </td>
      </tr>
</table> 
<p>
  <input type="submit" name="procesar" value="Procesar" class="button"> 
  <input type="reset" name="limpiar" value="Limpiar" class="button2"> 
</p>        
</form>
</div>
<script src="js/validacion.js"></script>
</body>
</html>