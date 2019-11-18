package Modelo;

public class Persona {

    int ID;
    String DNI, Nombre, Email, Telefono, Estado;

    public Persona() {
    }

    public Persona(int ID, String DNI, String Nombre, String Email, String Telefono, String Estado) {
        this.ID = ID;
        this.DNI = DNI;
        this.Nombre = Nombre;
        this.Email = Email;
        this.Telefono = Telefono;
        this.Estado = Estado;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

}
