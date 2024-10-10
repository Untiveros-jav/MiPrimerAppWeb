<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boleta</title>
<link rel="stylesheet" type="text/css" href="css/perudev.css">
</head>
<body>
<%
   //declarar variables
   double cr=0.00,boni=0.00,desc=0.00,cf=0.00,igv=0.00;
   String categoria="",tipo="";
   int cat=0,cant=0,hr=0,tip=0,cli=0;
   //entrada de datos
   cat=Integer.parseInt(request.getParameter("cboCategoria"));
   cant=Integer.parseInt(request.getParameter("cant"));
   tip=Integer.parseInt(request.getParameter("cboTipoM"));
   cli=Integer.parseInt(request.getParameter("cboCliente"));
   
   //proceso 
   switch(cat){
         case 0: cr=0;break;
         case 1: cr=50*cant;break;
         case 2: cr=60*cant;break;
         case 3: cr=180*cant;break;
         case 4: cr=35*cant;break;
         case 5: cr=27*cant;break;
         case 6: cr=230*cant;break;
         case 7: cr=50*cant;break;
   }
   if(cli==1){
	   boni=5*cant;
   }else{
	   boni=2*cant;
   }
   cf=boni+cr;
   if(cf>=500){
	   desc=cf*0.175;
   }else{
	   desc=cf*0.10;
   }
   cf=cf-desc;
   igv=cf*0.18;
   cf=cf+igv;
   if(cat==1) categoria="Vacunación";
   if(cat==2) categoria="Desparacitación";
   if(cat==3) categoria="Hospitalización";
   if(cat==4) categoria="Peluqueria";
   if(cat==5) categoria="Control reproductivo";
   if(cat==6) categoria="Cirugía";
   if(cat==7) categoria="Farmacia Veterinaria";
   
   if(tip==1) tipo="Perro";
   if(tip==2) tipo="Gato";
   if(tip==3) tipo="Conejo";
   if(tip==4) tipo="Ave";
%>
<div id="datos">
<form name="frmResul" method="post" action="index.jsp">
<table width="307" border="1">
      <tr>
        <td colspan="2" align="center">Resultado de Pagos</td>
      </tr>
      <tr>
        <td>Categoría:</td>
        <td><input type="text" name="cat" class="fieldEdit" value="<%=categoria%>" disabled></td>
      </tr>
      <tr>
        <td>Tipo de Mascota:</td>
        <td><input type="text" name="tip" class="fieldEdit" value="<%=tipo%>" disabled></td>
      </tr>
      <tr>
        <td>Cantidad:</td>
        <td><input type="number" name="cant" class="fieldEdit" value="<%=cant%>" disabled></td> 
      </tr>
      
      <tr>
        <td colspan="2" align="center">Transacciones</td> 
      </tr>
      <tr>
        <td>Costo Regular:</td>
        <td><input type="number" name="cr" class="fieldEdit" value="<%=cr%>"disabled ></td> 
      </tr>
       <tr>
        <td>Bonificacion por fedelidad:</td>
        <td><input type="number" name="boni" class="fieldEdit" value="<%=boni%>"disabled ></td> 
      </tr>
      <tr>
        <td>Descuento:</td>
        <td><input type="number" name="desc" class="fieldEdit" value="<%=desc%>"disabled ></td> 
      </tr>
      <tr>
        <td>Impuesto:</td>
        <td><input type="number" name="igv" class="fieldEdit" value="<%=igv%>"disabled ></td> 
      </tr>
      <tr>
        <td>Costo promoción:</td>
        <td><input type="number" name="cf" class="fieldEdit" value="<%=cf%>"disabled ></td> 
      </tr>
</table> 
<p>
  <input type="submit" name="retornar" value="Retornar" class="button"> 
</p>        
</form>
</div>
</body>
</html>