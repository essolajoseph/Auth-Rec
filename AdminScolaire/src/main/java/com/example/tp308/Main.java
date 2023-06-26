package com.example.tp308;

import com.google.zxing.WriterException;
import com.model.ConnexionDB;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Hashtable;

import javax.imageio.ImageIO;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.model.QRCodeGenerator;

public class Main {
    public static void main(String[] args) throws SQLException, IOException, WriterException {
        String qrCodeText = "https://www.journaldev.comfcgfxfdzxdszfxfdgffffffffffffffftrdtcytctx";
        new QRCodeGenerator().createQRImage(qrCodeText);
        System.out.println("ok");
    }

}
