package negocio;

public class Calcular2 {
		
			// atributos
			private String nombMas;
			private String nombreD;
			private String direc;
			private String dni;
			private String telf;
			private int serv;
			private int cant;
			private int tipM;
			private int tipC;
			private double costNormal;
			private double descM;
			private double descF;
			private double igv;
			private double pagTotal;
			
			//CONSTRUCTOR
			public Calcular2(String nombMas, String nombreD, String direc, String dni, String telf, int serv, int cant,
					int tipM, int tipC) {
				super();
				this.nombMas = nombMas;
				this.nombreD = nombreD;
				this.direc = direc;
				this.dni = dni;
				this.telf = telf;
				this.serv = serv;
				this.cant = cant;
				this.tipM = tipM;
				this.tipC = tipC;
			}
			
			//GETTERS AND SETTERS

			public String getNombMas() {
				return nombMas;
			}

			public void setNombMas(String nombMas) {
				this.nombMas = nombMas;
			}

			public String getNombreD() {
				return nombreD;
			}

			public void setNombreD(String nombreD) {
				this.nombreD = nombreD;
			}

			public String getDirec() {
				return direc;
			}

			public void setDirec(String direc) {
				this.direc = direc;
			}

			public String getDni() {
				return dni;
			}

			public void setDni(String dni) {
				this.dni = dni;
			}

			public String getTelf() {
				return telf;
			}

			public void setTelf(String telf) {
				this.telf = telf;
			}

			public int getServ() {
				return serv;
			}

			public void setServ(int serv) {
				this.serv = serv;
			}

			public int getCant() {
				return cant;
			}

			public void setCant(int cant) {
				this.cant = cant;
			}

			public int getTipM() {
				return tipM;
			}

			public void setTipM(int tipM) {
				this.tipM = tipM;
			}

			public int getTipC() {
				return tipC;
			}

			public void setTipC(int tipC) {
				this.tipC = tipC;
			}

			public double getCostNormal() {
				
				switch(serv){
		         case 0: costNormal=0;break;
		         case 1: costNormal=50*cant;break;
		         case 2: costNormal=60*cant;break;
		         case 3: costNormal=180*cant;break;
		         case 4: costNormal=35*cant;break;
		         case 5: costNormal=27*cant;break;
		         case 6: costNormal=230*cant;break;
		         case 7: costNormal=50*cant;break;
				}
				return costNormal;
			}

			public void setCostNormal(double costNormal) {
				this.costNormal = costNormal;
			}

			public double getDescM() {
				if(cant>=2) {
					descM=0.08*cant;
				}
				return descM;
			}

			public void setDescM(double descM) {
				this.descM = descM;
			}

			public double getDescF() {
				
				if(tipC==1) {
					descF=0.00;
				}else {
					descF=2.15;
				}
				return descF;
			}

			public void setDescF(double descF) {
				this.descF = descF;
			}

			public double getIgv() {
				igv = 0.18*(costNormal - descM - descF);
				return igv;
			}

			public void setIgv(double igv) {
				this.igv = igv;
			}

			public double getPagTotal() {
				pagTotal = costNormal - descM - descF + igv;
				return pagTotal;
			}

			public void setPagTotal(double pagTotal) {
				this.pagTotal = pagTotal;
			}
			
			
			
			
			
			
			
			
}
