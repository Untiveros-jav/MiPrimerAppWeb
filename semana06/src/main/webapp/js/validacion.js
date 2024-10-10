document.addEventListener("DOMContentLoaded", function() {
    const form = document.forms['frmTrab'];

    form.addEventListener('submit', function(event) {
        const comboBox = form['cboCategoria'];
        const selectedValue = comboBox.value;

        if (selectedValue === "0") {
            alert("Por favor, selecciona una categoría válida.");
            comboBox.focus(); // Lleva el foco al combo box
            event.preventDefault(); // Evita el envío del formulario
        }
    });
});