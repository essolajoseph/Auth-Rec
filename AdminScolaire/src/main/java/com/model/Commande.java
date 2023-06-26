package com.model;
import java.time.LocalDate;
public class Commande {

    LocalDate date ;
    Client client;
    float montant;
    String modePayement;
    String statutPayement;
    String modeLivraison;

    public LocalDate getDate() {
        return date;
    }

    public void setDate() {
        this.date = LocalDate.now();
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public float getMontant() {
        return montant;
    }

    public void setMontant(float montant) {
        this.montant = montant;
    }

    public String getModePayement() {
        return modePayement;
    }

    public void setModePayement(String modePayement) {
        this.modePayement = modePayement;
    }

    public String getStatutPayement() {
        return statutPayement;
    }

    public void setStatutPayement(String statutPayement) {
        this.statutPayement = statutPayement;
    }

    public String getModeLivraison() {
        return modeLivraison;
    }

    public void setModeLivraison(String modeLivraison) {
        this.modeLivraison = modeLivraison;
    }

    public String getStatutLivraison() {
        return statutLivraison;
    }

    public void setStatutLivraison(String statutLivraison) {
        this.statutLivraison = statutLivraison;
    }

    String statutLivraison;

    public Commande(){}

}
