package com.model;

public class Etudiant {
    private String nom;
    private String prenom;
    private  int age;
    private String matricule;

    public Etudiant() {}

    public Etudiant(String nom, String prenom) {
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public int getAge() {
        return age;
    }

    public String getMatricule() {
        return matricule;
    }
}


