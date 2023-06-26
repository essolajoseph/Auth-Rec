<%--
  Created by IntelliJ IDEA.
  User: DUMBRESH
  Date: 07/06/2023
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="colorlib.com">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/css/style.css">
    <meta name="robots" content="noindex, follow">
    <script nonce="2ce756ad-fce7-46db-b707-cad9c09f7725">(function(w,d){!function(Y,Z,_,ba){Y[_]=Y[_]||{};Y[_].executed=[];Y.zaraz={deferred:[],listeners:[]};Y.zaraz.q=[];Y.zaraz._f=function(bb){return function(){var bc=Array.prototype.slice.call(arguments);Y.zaraz.q.push({m:bb,a:bc})}};for(const bd of["track","set","debug"])Y.zaraz[bd]=Y.zaraz._f(bd);Y.zaraz.init=()=>{var be=Z.getElementsByTagName(ba)[0],bf=Z.createElement(ba),bg=Z.getElementsByTagName("title")[0];bg&&(Y[_].t=Z.getElementsByTagName("title")[0].text);Y[_].x=Math.random();Y[_].w=Y.screen.width;Y[_].h=Y.screen.height;Y[_].j=Y.innerHeight;Y[_].e=Y.innerWidth;Y[_].l=Y.location.href;Y[_].r=Z.referrer;Y[_].k=Y.screen.colorDepth;Y[_].n=Z.characterSet;Y[_].o=(new Date).getTimezoneOffset();if(Y.dataLayer)for(const bk of Object.entries(Object.entries(dataLayer).reduce(((bl,bm)=>({...bl[1],...bm[1]})),{})))zaraz.set(bk[0],bk[1],{scope:"page"});Y[_].q=[];for(;Y.zaraz.q.length;){const bn=Y.zaraz.q.shift();Y[_].q.push(bn)}bf.defer=!0;for(const bo of[localStorage,sessionStorage])Object.keys(bo||{}).filter((bq=>bq.startsWith("_zaraz_"))).forEach((bp=>{try{Y[_]["z_"+bp.slice(7)]=JSON.parse(bo.getItem(bp))}catch{Y[_]["z_"+bp.slice(7)]=bo.getItem(bp)}}));bf.referrerPolicy="origin";bf.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(Y[_])));be.parentNode.insertBefore(bf,be)};["complete","interactive"].includes(Z.readyState)?zaraz.init():Y.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>
<body>
<div class="main">
    <div class="container">
        <form method="POST" id="signup-form" class="signup-form" action="PayementServlet">
            <div>
                <h3>Personal info</h3>
                <fieldset>
                    <h2>Personal information</h2>
                    <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
                    <div class="fieldset-content">
                        <div class="form-row">
                            <label class="form-label">Name</label>
                            <div class="form-flex">
                                <div class="form-group">
                                    <input type="text" name="first_name" id="first_name" />
                                    <span class="text-input">First</span>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="last_name" id="last_name" />
                                    <span class="text-input">Last</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="form-label">Phone</label>
                            <input type="text" name="phone" id="phone" />
                        </div>
                        <div class="form-group">
                            <label for="filiere" class="form-label">Filiere</label>
                            <input type="text" name="filiere" id="filiere" />
                        </div>
                        <div class="form-group">
                            <label for="niveau" class="form-label">Niveau</label>
                            <input type="text" name="niveau" id="niveau" />
                        </div>
                        <div class="form-group">
                            <label for="datePicker">Date:</label>
                            <div class="input-group date" id="datePicker" data-target-input="nearest">
                                <input type="date" class="form-control datetimepicker-input" data-target="#datePicker" name="date"/>
                                <div class="input-group-append" data-target="#datePicker" data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="matricule" class="form-label">Matricule</label>
                            <input type="text" name="matricule" id="matricule" />
                        </div>
                    </div>
                </fieldset>
                <h3>Connect Bank Account</h3>
                <fieldset>
                    <h2>Connect Bank Account</h2>
                    <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
                    <div class="fieldset-content">
                        <div class="form-group">
                            <label for="find_bank" class="form-label">Find Your Bank</label>
                            <div class="form-find">
                                <input type="text" name="find_bank" id="find_bank" placeholder="Ex. Techcombank" />
                                <input type="submit" value="Search" class="submit">
                                <span class="form-icon"><i class="zmdi zmdi-search"></i></span>
                            </div>
                        </div>
                        <div class="choose-bank">
                            <p class="choose-bank-desc">Or choose from these popular bank</p>
                            <div class="form-radio-flex">
                                <div class="form-radio-item">
                                    <input type="radio" name="choose_bank" id="bank_1" value="bank_1" checked="checked" />
                                    <label for="bank_1"><img src="image/images/bank-1.jpg" alt=""></label>
                                </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="choose_bank" id="bank_2" value="bank_2" />
                                    <label for="bank_2"><img src="image/images/bank-2.jpg" alt=""></label>
                                </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="choose_bank" id="bank_3" value="bank_3" />
                                    <label for="bank_3"><img src="image/images/bank-3.jpg" alt=""></label>
                                </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="choose_bank" id="bank_4" value="bank_4" />
                                    <label for="bank_4"><img src="image/images/bank-4.jpg" alt=""></label>
                                </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="choose_bank" id="bank_5" value="bank_5" />
                                    <label for="bank_5"><img src="image/images/bank-5.jpg" alt=""></label>
                                </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="choose_bank" id="bank_6" value="bank_6" />
                                    <label for="bank_6"><img src="image/images/bank-6.jpg" alt=""></label>
                                </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="choose_bank" id="bank_7" value="bank_7" />
                                    <label for="bank_7"><img src="image/images/bank-7.jpg" alt=""></label>
                                </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="choose_bank" id="bank_8" value="bank_8" />
                                    <label for="bank_8"><img src="image/images/bank-8.jpg" alt=""></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <h3>Set Financial Goals</h3>
                <fieldset>
                    <h2>Set Financial Goals</h2>
                    <p class="desc">Entrer les informations sur la transaction</p>
                    <div class="fieldset-content">
                        <div class="form-row">
                            <label class="form-label">Name du Banquier</label>
                            <div class="form-flex">
                                <div class="form-group">
                                    <input type="text" name="firstname" id="firstname" />
                                    <span class="text-input">First</span>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="lastname" id="lastname" />
                                    <span class="text-input">Last</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="agence" class="form-label">Agence</label>
                            <input type="text" name="agence" id="agence" />
                        </div>
                        <div class="form-group">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" name="email" id="email" />
                        </div>
                        <div class="form-group">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" name="password" id="password" />
                        </div>

                        <div class="form-group">
                            <label for="datePicker">Date du jour :</label>
                            <div class="input-group date" id="datejour" data-target-input="nearest">
                                <input type="date" class="form-control datetimepicker-input" data-target="#datePicker" name="datejour"/>
                                <div class="input-group-append" data-target="#datePicker" data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="montant" class="form-label">Montant de la transacion</label>
                            <input type="number" name="montant" id="montant" />
                        </div>
                    </div>
                </fieldset>
            </div>
        </form>
    </div>
</div>

<script data-cfasync="false" src="js/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
<script src="vendor/jquery-steps/jquery.steps.min.js"></script>
<script src="vendor/minimalist-picker/dobpicker.js"></script>
<script src="vendor/nouislider/nouislider.min.js"></script>
<script src="vendor/wnumb/wNumb.js"></script>
<script src="js/js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7d28258b0faf03ca","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}' crossorigin="anonymous"></script>
<script>
    // Récupération des éléments HTML nécessaires
    const checkboxes = document.querySelectorAll('input[type="checkbox"]');
    const nombreInput = document.querySelector('input[name="nombre"]');

    // Fonction de mise à jour du texte des cases à cocher
    function updateCheckboxesText() {
        checkboxes.forEach((checkbox) => {
            const value = checkbox.value;
            const available = getAvailableTickets(value);
            checkbox.nextElementSibling.textContent = `${value} F CFA (${available} disponibles)`;
        });
    }

    // Fonction de récupération du nombre de billets disponibles pour un type de billet donné
    function getAvailableTickets(type) {
        switch (type) {
            case '500f':
                return 10 - nombreInput.value;
            case '1000f':
                return 5 - nombreInput.value;
            case '2000f':
                return 2 - nombreInput.value;
            default:
                return 0;
        }
    }

    // Écouteur d'événement pour la modification du nombre de billets
    nombreInput.addEventListener('input', () => {
        updateCheckboxesText();
    });

    // Initialisation du texte des cases à cocher
    updateCheckboxesText();
</script>

</body>
</html>
