package com.azhar.crud.data;

/**
 * Created by Azhar Rivaldi on 27/06/2019.
 */

public class Data {
    private String id, nama, tlp, email;

    public Data() {
    }

    public Data(String id, String nama, String tlp, String email) {
        this.id = id;
        this.nama = nama;
        this.tlp = tlp;
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getTlp() {
        return tlp;
    }

    public void setTlp(String tlp) {
        this.tlp = tlp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.tlp = email;
    }
}
