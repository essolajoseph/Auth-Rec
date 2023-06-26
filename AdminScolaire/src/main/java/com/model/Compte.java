package com.model;

public class Compte {
    private String numeroCmpt;
    private Client client;

    public String getNumeroCmpt() {
        return numeroCmpt;
    }

    public void setNumeroCmpt(String numeroCmpt) {
        this.numeroCmpt = numeroCmpt;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Compte() {
    }
}
