package ec.edu.ups.modelo;

import java.io.Serializable;

import javax.persistence.*;

@Entity
public class Ticket implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int numero;
	private String fechaIngreso;
	private String fechaSalida;
	private String horaEntrada;
	private String horaSalida;
	@OneToOne
	private Vehiculo vehiculo;
	
	public Ticket() {
		
	}

	public Ticket(int numero, String fcehaIngreso, String fcehaSalida, String horaEntrada, String horaSalida,
			Vehiculo vehiculo) {
		this.numero = numero;
		this.fechaIngreso = fcehaIngreso;
		this.fechaSalida = fcehaSalida;
		this.horaEntrada = horaEntrada;
		this.horaSalida = horaSalida;
		this.vehiculo = vehiculo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getFcehaIngreso() {
		return fechaIngreso;
	}

	public void setFcehaIngreso(String fcehaIngreso) {
		this.fechaIngreso = fcehaIngreso;
	}

	public String getFcehaSalida() {
		return fechaSalida;
	}

	public void setFcehaSalida(String fcehaSalida) {
		this.fechaSalida = fcehaSalida;
	}

	public String getHoraEntrada() {
		return horaEntrada;
	}

	public void setHoraEntrada(String horaEntrada) {
		this.horaEntrada = horaEntrada;
	}

	public String getHoraSalida() {
		return horaSalida;
	}

	public void setHoraSalida(String horaSalida) {
		this.horaSalida = horaSalida;
	}

	public Vehiculo getVehiculo() {
		return vehiculo;
	}

	public void setVehiculo(Vehiculo vehiculo) {
		this.vehiculo = vehiculo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fechaIngreso == null) ? 0 : fechaIngreso.hashCode());
		result = prime * result + ((fechaSalida == null) ? 0 : fechaSalida.hashCode());
		result = prime * result + ((horaEntrada == null) ? 0 : horaEntrada.hashCode());
		result = prime * result + ((horaSalida == null) ? 0 : horaSalida.hashCode());
		result = prime * result + id;
		result = prime * result + numero;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ticket other = (Ticket) obj;
		if (fechaIngreso == null) {
			if (other.fechaIngreso != null)
				return false;
		} else if (!fechaIngreso.equals(other.fechaIngreso))
			return false;
		if (fechaSalida == null) {
			if (other.fechaSalida != null)
				return false;
		} else if (!fechaSalida.equals(other.fechaSalida))
			return false;
		if (horaEntrada == null) {
			if (other.horaEntrada != null)
				return false;
		} else if (!horaEntrada.equals(other.horaEntrada))
			return false;
		if (horaSalida == null) {
			if (other.horaSalida != null)
				return false;
		} else if (!horaSalida.equals(other.horaSalida))
			return false;
		if (id != other.id)
			return false;
		if (numero != other.numero)
			return false;
		return true;
	}

	
	
}
