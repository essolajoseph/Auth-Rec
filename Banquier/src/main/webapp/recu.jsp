<%@ page import="java.util.Base64" %><%--
  Created by IntelliJ IDEA.
  User: DUMBRESH
  Date: 09/06/2023
  Time: 09:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style1.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="col-md-12">
        <div class="invoice">
            <!-- begin invoice-company -->
            <div class="invoice-company text-inverse f-w-600">
               <span class="pull-right hidden-print">
                  <h5>BORDEREAU DE VERSEMENT ESPECES</h5>
                  <h6>OPERATION N° : ${payement.numeroT}</h6>
                  <small>${payement.datejour}</small>
               </span>
                <h3>SOCIETE GENERALE </h3>
                <h3>CAMEROUN</h3>
                <small>compte: &emsp; <small>05021127346 - 71</small></small>
            </div>
            <!-- end invoice-company -->
            <!-- begin invoice-header -->
            <div class="invoice-header">
                <div class="invoice-from">
                    <small>from</small>
                    <address class="m-t-5 m-b-5">
                        <strong class="text-inverse">${etudiant.getNom()} </strong>
                        <strong class="text-inverse">${etudiant.getPrenom()} </strong><br>
                        REPUBLIQUE DU CAMEROUN<br>
                        YAOUNDE-HOTEL DE VILLE<br>
                        Phone: (+237) ${etudiant.getPhone()} <br>
                        Motif: Droits Universitaire / ${etudiant.getMatricule()}
                    </address>
                </div>
                <div class="invoice-to">
                    <small>to</small>
                    <address class="m-t-5 m-b-5">
                        <strong class="text-inverse">Société Générale CAMEROUN</strong><br>
                        Agence: YAOUNDE-BIYEM ASSI<br>
                        Devise: FRANC CFA(ZONE BEAC)<br>
                        Caisse: Caisse 3<br>
                        Guichetier:    ${banquier.getNom()}  <br/>

                    </address>
                </div>
                <div class="invoice-date">
                    <small>Invoice </small>
                    <address class="m-t-5 m-b-5">
                        <strong class="text-inverse">Université De Yaounde I</strong><br>
                        YAOUNDE<br>
                    </address>
                </div>
            </div>
            <!-- end invoice-header -->
            <!-- begin invoice-content -->
            <div class="invoice-content">
                <div class="invoice-price">
                    <div class="invoice-price-left">
                        <div class="invoice-price-row">
                            <div class="sub-price">
                                <small>SUBTOTAL</small>
                                <span class="text-inverse">XAF ${payement.montant} </span>
                            </div>
                            <div class="sub-price">
                                <i class="fa fa-plus text-muted"></i>
                            </div>

                        </div>
                    </div>
                    <div class="invoice-price-right">
                        <small>TOTAL</small> <span class="f-w-600">XAF ${payement.montant}</span>
                    </div>
                </div><br>
                <div id="print">
                <span class="pull-right hidden-print">
                  <a href="javascript:;" class="btn btn-sm btn-white m-b-10 p-l-5"><i class="fa fa-file t-plus-1 text-danger fa-fw fa-lg"></i> Export as PDF</a>
                  <a href="javascript:;" onclick="printPdf();" class="btn btn-sm btn-white m-b-10 p-l-5"><i class="fa fa-print t-plus-1 fa-fw fa-lg"></i> Print</a>
                  </span>
                </div>
                <!-- end invoice-price -->
            </div><br>
            <!-- end invoice-content -->
            <div>
                <small>
                    <strong>Nous portons au crédit du compte n° 05021127346 - 71 &emsp;XAF : &emsp;${payement.montant}</strong><br>
                    <strong>soit cinquante mille francs</strong>
                </small>
            </div>
            <span class="pull-right hidden-print">
               <img src="data:image/png;base64,<%= request.getAttribute("qrCodeBase64") %>" alt="Code QR">
              </span>

            <!-- begin invoice-note -->
            <div class="invoice-note">
                * Make all cheques payable to [Your Company Name]<br>
                * Payment is due within 30 days<br>
                * If you have any questions concerning this invoice, contact  [Name, Phone Number, Email]
            </div>
            <!-- end invoice-note -->
            <!-- begin invoice-footer -->
            <div class="invoice-footer">
                <p class="text-center m-b-5 f-w-600">
                    THANK YOU FOR YOUR BUSINESS
                </p>
                <p class="text-center">
                    <span class="m-r-10"><i class="fa fa-fw fa-lg fa-globe"></i> matiasgallipoli.com</span>
                    <span class="m-r-10"><i class="fa fa-fw fa-lg fa-phone-volume"></i> T:016-18192302</span>
                    <span class="m-r-10"><i class="fa fa-fw fa-lg fa-envelope"></i> rtiemps@gmail.com</span>
                </p>
            </div>
            <!-- end invoice-footer -->
        </div>
    </div>
</div>
<script>
    function printPdf() {
        document.getElementById('print').style.display="none";
        window.print();

    }
</script>
</body>
</html>
