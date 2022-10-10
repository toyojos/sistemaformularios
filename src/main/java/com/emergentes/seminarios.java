
package com.emergentes;

public class seminarios {
    private int fecha;
    private String nombre;
    private String apellido;
    private String turno[];
    private String sem[];

    public seminarios() {
    }

    public int getFecha() {
        return fecha;
    }

    public void setFecha(int fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String[] getTurno() {
        return turno;
    }

    public void setTurno(String[] turno) {
        this.turno = turno;
    }

    public String[] getSem() {
        return sem;
    }

    public void setSem(String[] sem) {
        this.sem = sem;
    }
    
    
}
