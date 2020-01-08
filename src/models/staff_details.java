/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author m
 */
public class staff_details
{
    private String staff_id;
    private String staff_address;
    private String staff_gender;
    private String telp_no;
    private String staff_name;
    private String password;

    public String getStaff_id ()
    {
        return staff_id;
    }

    public void setStaff_id (String id)
    {
        this.staff_id = id;
    }

    public String getAddress ()
    {
        return staff_address;
    }

    public void setAddress (String address)
    {
        this.staff_address = address;
    }

    public String getGender ()
    {
        return staff_gender;
    }

    public void setGender (String staff_gender)
    {
        this.staff_gender = staff_gender;
    }

    public String getTelp_no ()
    {
        return telp_no;
    }

    public void setTelp_no (String telp_no)
    {
        this.telp_no = telp_no;
    }

    public String getStaff_name ()
    {
        return staff_name;
    }

    public void setStaff_name (String staff_name)
    {
        this.staff_name = staff_name;
    }

    public String getPassword ()
    {
        return password;
    }

    public void setPassword (String password)
    {
        this.password = password;
    }

    @Override
    public String toString()
    {
        return "Staff [id = "+staff_id+", name = "+staff_name+", gender = "+staff_gender+", address = "+staff_address+", telp_no = "+telp_no+"]";
    }
}