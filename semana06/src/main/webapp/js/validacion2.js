// Función que valida el formulario
function validateForm2() {
    var nomM = document.getElementById('nombMas').value.trim();
	var nomD = document.getElementById('nombre').value.trim();
    var direc = document.getElementById('direc').value.trim();
    var dni = document.getElementById('dni').value.trim();
    var telf = document.getElementById('telf').value.trim();
	var cant = document.getElementById('cant').value.trim();
	var tipoMascota = document.getElementById('cboTipoM').value;
	var servicio = document.getElementById('cboServicios').value;
	var tipoCliente = document.getElementById('cboCliente').value;

    console.log('Nombre de la mascota:', nomM);
	console.log('Nombre del dueño:', nomD);
    console.log('Dirección:', direc);
    console.log('DNI:', dni);
    console.log('Telefono:', telf);
	console.log('N° de mascotas:',cant)
	console.log('Tipo de mascota:', tipoMascota);
	console.log('Servicio seleccionado:', servicio);
	console.log('Tipo de cliente:', tipoCliente);
	
	
    if (!isValidName(nomM)) {
        Swal.fire({
            title: 'Error',
            text: 'Por favor, complete nombre de mascota con solo letras y espacios.',
            icon: 'error',
            confirmButtonText: 'Aceptar'
        });
        return false;
    }
    
    // Validar apellidos
    if (!isValidName(nomD)) {
        Swal.fire({
            title: 'Error',
            text: 'Por favor, complete nombre del dueño con solo letras y espacios.',
            icon: 'error',
            confirmButtonText: 'Aceptar'
        });
        return false;
    }
	
	//Validar direccion
	if (!isValidAddress(direc)) {
	    Swal.fire({
	        title: 'Error',
	        text: 'Por favor, ingrese una dirección válida (solo letras, números, espacios y los caracteres , . -).',
	        icon: 'error',
	        confirmButtonText: 'Aceptar'
	    });
	    return false;
	}
    
	// Validar DNI
	if (!isValidDNI(dni)) {
	    Swal.fire({
	        title: 'Error',
	        text: 'Por favor, ingrese un número de DNI válido (8 dígitos).',
	        icon: 'error',
	        confirmButtonText: 'Aceptar'
	    });
	    return false;
	}
	//Validar telefono
	if (!isValidPhoneNumber(telf)) {
	    Swal.fire({
	        title: 'Error',
	        text: 'Por favor, ingrese un número de teléfono válido con exactamente 9 dígitos.',
	        icon: 'error',
	        confirmButtonText: 'Aceptar'
	    });
	    return false;
	}
	
	
    // Validar dato decimal
    //if (!isValidDecimal(sDia)) {
    //    Swal.fire({
    //        title: 'Error',
    //        text: 'Por favor, ingrese un valor decimal válido para el dato diario.',
    //        icon: 'error',
    //        confirmButtonText: 'Aceptar'
    //    });
    //    return false;
    //}

    // Validar días trabajados
    if (!isPositiveInteger(cant)) {
        Swal.fire({
            title: 'Error',
            text: 'Por favor, ingrese un número válido para numero de macotas.',
            icon: 'error',
            confirmButtonText: 'Aceptar'
        });
        return false;
    }
	
	// Validación del tipo de mascota
	    if (tipoMascota === "0") {
	        Swal.fire({
	            title: 'Error',
	            text: 'Por favor, seleccione un tipo de mascota.',
	            icon: 'error',
	            confirmButtonText: 'Aceptar'
	        });
	        return false;
	    }
		
	// Validación del servicio seleccionado
		if (servicio === "0") {
		   Swal.fire({
		      title: 'Error',
		      text: 'Por favor, seleccione un servicio válido.',
		      icon: 'error',
		      confirmButtonText: 'Aceptar'
		     });
		   return false;
		}
		
		
	// Validación del tipo de cliente
		  if (tipoCliente === "0") {
		      Swal.fire({
		          title: 'Error',
		          text: 'Por favor, seleccione un tipo de cliente válido.',
		          icon: 'error',
	              confirmButtonText: 'Aceptar'
		        });
	         return false;
     	    }

    return true; // Si todo está bien, permitir el envío del formulario
}

// Función para verificar si un valor es un número entero positivo
function isPositiveInteger(value) {
    var number = parseInt(value, 10);
    return !isNaN(number) && number > 0;
}

// Función para validar nombres y apellidos
function isValidName(value) {
    const regex = /^[A-Za-zÀ-ÖØ-ÿ\s]+$/; // Permite letras y espacios
    return regex.test(value) && value.length > 0; // Asegura que el valor no esté vacío
}

//Funcion para validar una direccion
function isValidAddress(address) {
    // Expresión regular para validar una dirección que incluye letras, números, espacios y algunos caracteres especiales
    const addressRegex = /^[a-zA-Z0-9\s,.-]+$/;
    return addressRegex.test(address);
}
//Funcion para valida DNI
function isValidDNI(dni) {
    // Verificar que el valor tenga exactamente 8 dígitos y que sean números
    const dniRegex = /^\d{8}$/;
    return dniRegex.test(dni); // Devuelve true si es válido
}

//Funcion para validar telefono
function isValidPhoneNumber(phone) {
    // Expresión regular para validar exactamente 9 dígitos
    const phoneRegex = /^\d{9}$/;
    return phoneRegex.test(phone);
}

// Función para validar valores decimales
//function isValidDecimal(value) {
//    var number = parseFloat(value);
//    return !isNaN(number) && number >= 0; // Permite decimales positivos y cero
//}