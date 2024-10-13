package negocio;

public class Calcular {
	   // atributos
		private String nombre;
		private String apellidos;
		private Double tpago;
		private int dtrabajo;
		private Double stotal;

		// constructor
		public Calcular(String nombre, String apellidos, Double tpago, int dtrabajo) {
			super();
			this.nombre = nombre;
			this.apellidos = apellidos;
			this.tpago = tpago;
			this.dtrabajo = dtrabajo;
		}

		// metodos get y set
		public String getNombre() {
			return nombre;
		}

		public void setNombre(String nombre) {
			this.nombre = nombre;
		}

		public String getApellidos() {
			return apellidos;
		}

		public void setApellidos(String apellidos) {
			this.apellidos = apellidos;
		}

		public Double getTpago() {
			return tpago;
		}

		public void setTpago(Double tpago) {
			this.tpago = tpago;
		}

		public int getDtrabajo() {
			return dtrabajo;
		}

		public void setDtrabajo(int dtrabajo) {
			this.dtrabajo = dtrabajo;
		}

		public Double getStotal() {
			double stotal=tpago*dtrabajo;
			return stotal;
		}

		public void setStotal(Double stotal) {
			this.stotal = stotal;
		}
}
