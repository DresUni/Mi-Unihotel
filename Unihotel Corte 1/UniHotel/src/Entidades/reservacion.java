/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author juand
 */
public class reservacion {
    private String fecha_reservacion;
    private String fecha_checkin;
    private String fecha_chekout;
    private String estado;
    private String metodo_de_pago;
    private String monto;

    public reservacion(String fecha_reservacion, String fecha_checkin, String fecha_chekout, String estado, String metodo_de_pago, String monto) {
        this.fecha_reservacion = fecha_reservacion;
        this.fecha_checkin = fecha_checkin;
        this.fecha_chekout = fecha_chekout;
        this.estado = estado;
        this.metodo_de_pago = metodo_de_pago;
        this.monto = monto;
    }

    public String getFecha_reservacion() {
        return fecha_reservacion;
    }

    public void setFecha_reservacion(String fecha_reservacion) {
        this.fecha_reservacion = fecha_reservacion;
    }

    public String getFecha_checkin() {
        return fecha_checkin;
    }

    public void setFecha_checkin(String fecha_checkin) {
        this.fecha_checkin = fecha_checkin;
    }

    public String getFecha_chekout() {
        return fecha_chekout;
    }

    public void setFecha_chekout(String fecha_chekout) {
        this.fecha_chekout = fecha_chekout;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMetodo_de_pago() {
        return metodo_de_pago;
    }

    public void setMetodo_de_pago(String metodo_de_pago) {
        this.metodo_de_pago = metodo_de_pago;
    }

    public String getMonto() {
        return monto;
    }

    public void setMonto(String monto) {
        this.monto = monto;
    }

    @Override
    public String toString() {
        return "reservacion{" + "fecha_reservacion=" + fecha_reservacion + ", fecha_checkin=" + fecha_checkin + ", fecha_chekout=" + fecha_chekout + ", estado=" + estado + ", metodo_de_pago=" + metodo_de_pago + ", monto=" + monto + '}';
    }
   
    
}
