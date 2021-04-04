package com.oneago.P3BasicAccountRegister.objects;

public class User {
    private String typeDoc;
    private int doc;
    private String fname;
    private String lname;
    private int age;
    private long phone;
    private String address;
    private String bornDate;
    private String pass;

    public User(String typeDoc, int doc, String fname, String lname, int age, long phone, String address, String bornDate, String pass) {
        this.typeDoc = typeDoc;
        this.doc = doc;
        this.fname = fname;
        this.lname = lname;
        this.age = age;
        this.phone = phone;
        this.address = address;
        this.bornDate = bornDate;
        this.pass = pass;
    }

    public String getTypeDoc() {
        return typeDoc;
    }

    public int getDoc() {
        return doc;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public int getAge() {
        return age;
    }

    public long getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public String getBornDate() {
        return bornDate;
    }

    public String getPass() {
        return pass;
    }

    @Override
    public String toString() {
        return "User{" +
                "typeDoc='" + typeDoc + '\'' +
                ", doc=" + doc +
                ", fname='" + fname + '\'' +
                ", lname='" + lname + '\'' +
                ", age=" + age +
                ", phone=" + phone +
                ", address='" + address + '\'' +
                ", bornDate='" + bornDate + '\'' +
                ", pass='" + pass + '\'' +
                '}';
    }
}
