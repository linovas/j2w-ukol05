package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;
import java.time.Period;

public class RegistraceForm {

    @NotBlank
    private String jmenoUcastnika;
    @NotBlank
    private String prijmeniUcastnika;

    @DateTimeFormat(pattern = "d.M.yyyy")
    private LocalDate datumNarozeni;
    @NotNull
    private String pohlavi;
    @NotBlank
    private String turnus;
    @Email
    private String email;
    private String telefon;

    public String getJmenoUcastnika() {
        return jmenoUcastnika;
    }

    public void setJmenoUcastnika(String jmenoUcastnika) {
        this.jmenoUcastnika = jmenoUcastnika;
    }

    public String getPrijmeniUcastnika() {
        return prijmeniUcastnika;
    }

    public void setPrijmeniUcastnika(String prijmeniUcastnika) {
        this.prijmeniUcastnika = prijmeniUcastnika;
    }

    public LocalDate getDatumNarozeni() {
        return datumNarozeni;
    }

    public void setDatumNarozeni(LocalDate datumNarozeni) {
        this.datumNarozeni = datumNarozeni;
    }

    public String getPohlavi() {
        return pohlavi;
    }

    public void setPohlavi(String pohlavi) {
        this.pohlavi = pohlavi;
    }

    public String getTurnus() {
        return turnus;
    }

    public void setTurnus(String turnus) {
        this.turnus = turnus;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public int getVek(){
        Period period = datumNarozeni.until(LocalDate.now());
        int vek = period.getYears();
        return period.getYears();
    }
}