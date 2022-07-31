<?php $pageTitle = 'Groupement Banque Assurance Français'; ?>
<?php $header = 'connect'; ?>

<?php ob_start(); ?>
<main>
    <section id="presentation">
        <h1>Présentation du Groupement Banque Assurance Français</h1>
        <p>Le Groupement Banque Assurance Français​ (GBAF) est une fédération  représentant les 6 grands groupes français :</p>
        <div class="presentationListActeurs">
            <ul>
                <li><span  class="li_content">BNP Paribas ;</span></li>
                <li><span  class="li_content">BPCE ;</span></li>
                <li><span  class="li_content">Crédit Agricole ;</span></li>
            </ul>
            <ul>
                <li><span  class="li_content">Crédit Mutuel-CIC ;</span></li>
                <li><span  class="li_content">Société Générale ;</span></li>
                <li><span  class="li_content">La Banque Postale.</span></li>
            </ul>
        </div>
        <p>Même s’il existe une forte concurrence entre ces entités, elles vont toutes travailler  de la même façon pour gérer près de 80 millions de comptes sur le territoire  national.  Le GBAF est le représentant de la profession bancaire et des assureurs sur tous  les axes de la réglementation financière française. Sa mission est de promouvoir  l'activité bancaire à l’échelle nationale. C’est aussi un interlocuteur privilégié des pouvoirs publics.  </p>
        <figure id="illustration">
            <img src="public/img/illustration.jpg" alt="illustration"/>
        </figure>
        <figcaption hidden>Illustration de GBAF, photo de @slakarvounis libre de droits téléchargée sur unsplash.com</figcaption>
    </section>
<section id="acteurs">
        <h2>Présentation des acteurs</h2>
        <p>texte acteurs et partenaires</p>
        <p>...</p>
        <div id="conteneur_acteur">

                            <div class="acteur">
                    <div class="presentation_acteur">
                        <figure>
                            <img class="logo_acteur" src="public/img/actor_formation_co.png" alt="logo de l'acteur">
                        </figure>
                        <figcaption hidden>Logo de Formation&co</figcaption>
                        <div class="description">
                            <h3>Formation&co</h3>
                            <p><p>Formation&co est une association française présente sur tout le ...</p>
                        </div>
                    </div>

                    <div class="votesButton">
                        <div class="homeVotes">
                            <p><span class="fas fa-thumbs-up fa-2x"> 30</span></p>
                            <p><span class="fas fa-thumbs-down fa-2x"> 9</span></p>
                        </div>
                        <a class="button" href="index.php?action=actor&amp;id_actor=1">Lire la suite</a>
                    </div>
                </div>
                            <div class="acteur">
                    <div class="presentation_acteur">
                        <figure>
                            <img class="logo_acteur" src="public/img/actor_protectpeople.png" alt="logo de l'acteur">
                        </figure>
                        <figcaption hidden>Logo de Protectpeople</figcaption>
                        <div class="description">
                            <h3>Protectpeople</h3>
                            <p><p><strong>Protectpeople finance la solidarité nationale.</strong></...</p>
                        </div>
                    </div>

                    <div class="votesButton">
                        <div class="homeVotes">
                            <p><span class="fas fa-thumbs-up fa-2x"> 12</span></p>
                            <p><span class="fas fa-thumbs-down fa-2x"> 5</span></p>
                        </div>
                        <a class="button" href="index.php?action=actor&amp;id_actor=2">Lire la suite</a>
                    </div>
                </div>
                            <div class="acteur">
                    <div class="presentation_acteur">
                        <figure>
                            <img class="logo_acteur" src="public/img/actor_Dsa_france.png" alt="logo de l'acteur">
                        </figure>
                        <figcaption hidden>Logo de DSA France</figcaption>
                        <div class="description">
                            <h3>DSA France</h3>
                            <p><p>Dsa France accélère la croissance du territoire et s’engage av...</p>
                        </div>
                    </div>

                    <div class="votesButton">
                        <div class="homeVotes">
                            <p><span class="fas fa-thumbs-up fa-2x"> 6</span></p>
                            <p><span class="fas fa-thumbs-down fa-2x"> 9</span></p>
                        </div>
                        <a class="button" href="index.php?action=actor&amp;id_actor=3">Lire la suite</a>
                    </div>
                </div>
                            <div class="acteur">
                    <div class="presentation_acteur">
                        <figure>
                            <img class="logo_acteur" src="public/img/actor_CDE.png" alt="logo de l'acteur">
                        </figure>
                        <figcaption hidden>Logo de CDE</figcaption>
                        <div class="description">
                            <h3>CDE</h3>
                            <p><p>La CDE (Chambre Des Entrepreneurs) accompagne les entreprises dans...</p>
                        </div>
                    </div>

                    <div class="votesButton">
                        <div class="homeVotes">
                            <p><span class="fas fa-thumbs-up fa-2x"> 9</span></p>
                            <p><span class="fas fa-thumbs-down fa-2x"> 10</span></p>
                        </div>
                        <a class="button" href="index.php?action=actor&amp;id_actor=4">Lire la suite</a>
                    </div>
                </div>
                    </div>
    </section>
</main>

<?php $pageContent = ob_get_clean(); ?>

<?php require('view/intranet/template.php'); ?>