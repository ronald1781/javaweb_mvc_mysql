/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Interfaces.CRUD;
import Modelo.Persona;
import conexion.conex_mysql;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

public class PersonaDAO implements CRUD {

    conex_mysql cn = new conex_mysql();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p = new Persona();
    String estado;

    @Override
    public List listar() {

        ArrayList<Persona> list = new ArrayList<>();
        String sql = "select * from tbpersona where estper='A'";
        try {
            con = cn.getConection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Persona per = new Persona();
                per.setID(rs.getInt("codper"));
                per.setDNI(rs.getString("dniper"));
                per.setNombre(rs.getString("nomper"));
                per.setEmail(rs.getString("emlper"));
                per.setTelefono(rs.getString("telper"));
                estado = rs.getString("estper");
                switch (estado) {
                    case "A":
                        estado = "Activo";
                }
                per.setEstado(estado);
                list.add(per);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Persona list(int id) {
        String sql = "select * from tbpersona where estper='A' and codper=" + id;
        try {
            con = cn.getConection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setID(rs.getInt("codper"));
                p.setDNI(rs.getString("dniper"));
                p.setNombre(rs.getString("nomper"));
                p.setEmail(rs.getString("emlper"));
                p.setTelefono(rs.getString("telper"));
            }

        } catch (Exception e) {
            System.out.println("Error listp " + e);
        }
        return p;

    }

    @Override
    public boolean add(Persona per) {
        String sql = "insert into tbpersona(dniper,nomper,emlper,telper)values('" + per.getDNI() + "','" + per.getNombre() + "','" + per.getEmail() + "','" + per.getTelefono() + "')";
        try {
            con = cn.getConection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {

        String sql = "update tbpersona set dniper='" + per.getDNI() + "',nomper='" + per.getNombre() + "',emlper='" + per.getEmail() + "',telper='" + per.getTelefono() + "' where codper=" + per.getID();
        try {
            con = cn.getConection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public boolean dele(int id) {
        String sql = "update tbpersona set estper='I' where codper=" + id;
        try {
            con = cn.getConection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public List buscar(String texto) {
        ArrayList<Persona> lista = new ArrayList<>();
        String sql = "select * from tbpersona where estper='A' and dniper like %'" + texto + "'% or nomper like %'" + texto + "'% or emlper like %'" + texto + "'% or telper like %'" + texto + "'%";
        
        try{
            con = cn.getConection();
         ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            Persona per = new Persona();
            per.setID(rs.getInt("codper"));
            per.setDNI(rs.getString("dniper"));
            per.setNombre(rs.getString("nomper"));
            per.setEmail(rs.getString("emlper"));
            per.setTelefono(rs.getString("telper"));
            estado = rs.getString("estper");
            switch (estado) {
                case "A":
                    estado = "Activo";
            }
            per.setEstado(estado);
            lista.add(per);
        }
        }catch(Exception e){
        
        }
       
        return lista;
    }

}
