package com.model;

import java.util.Random;

public class Transaction {
    private static String transactionNumber;

    public Transaction(int numChars) {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"; // les caractères possibles dans le numéro de transaction

        // Création d'un objet de type Random
        Random rand = new Random();

        // Génération du numéro de transaction aléatoire
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < numChars; i++) {
            int index = rand.nextInt(chars.length());
            char randomChar = chars.charAt(index);
            sb.append(randomChar);
        }
        this.transactionNumber = sb.toString();
    }

    public String getTransactionNumber() {
        return this.transactionNumber;
    }
}
