liste = recupCookie("panier") //recupere le cookie  sous forme de chaine de caractere 
if (liste!="")montab = JSON.parse(liste) // transforme la chaine  en tableau JSON
else montab =Array() // si il n'y a pas de tableau dans le cookie alors créer le tableau
console.log(montab)

document.getElementById('liste').value="panier="+JSON.stringify(montab)+"; path=/" // sauver montab pour le formulaire

var totalgeneral=0
var largeur = window.innerWidth;

montab.forEach(manif => {  

    html = `<tr id="${manif.id}">
    <td><img src="${manif.image}"></td>
        <td class="infos"><h3>${manif.titre}</h3><br><h4>${manif.date} - ${manif.horaire}</h4></td>
        <td id="quantite">
        <div><i class="material-icons moins">remove_circle</i><h4><span>${manif.quantite}</span></h4><i class="material-icons plus">add_circle</i></div> 
        </td>
        <td><h4><span class="unitaire">${manif.prix} €</span></h4></td>
        <td><h4><span class="prix">${(manif.prix * manif.quantite).toFixed(2)}</span><span> €</span></h4></td>
        </tr>`;

    mobile = `<div id="${manif.id}">
        <div id="thead">
            <div>
                <h3 class="th">Évènement</h3>
                <div class="td"><img src="${manif.image}" alt="event"></div>
                <div class="td"><h3 class="th">${manif.titre}</h3><br><h4>${manif.date} - ${manif.horaire}</h4></div>
            </div>
            <div>
                <h3 class="th">Quantité</h3>
                <div id="quantite">
                    <div><i class="material-icons moins">remove_circle</i><h4>${manif.quantite}</h4><i class="material-icons plus">add_circle</i></div> 
                </div>
            </div>
        </div>
        <div id="tbody">
            <div>
                <div><h3 class="th">Prix unitaire</h3><h4><span class="unitaire">${manif.prix} €</span></h4></div>
                <div><h3 class="th">Prix total</h3><h4><span class="prix">${(manif.prix * manif.quantite).toFixed(2)}</span><span> €</span></h4></div>
            </div>
        </div></div>`;

    if (largeur > 991) {
        document.getElementById('zone').innerHTML += html
    } else {
        document.getElementById('panier-mobile').innerHTML += mobile
    }
    totalgeneral += manif.prix * manif.quantite
})

document.getElementById('total').innerHTML = totalgeneral.toFixed(2)

document.querySelectorAll('.plus').forEach(clickplus)
    
function clickplus(tag){
    tag.addEventListener('click',function() { 
    qte= parseInt( this.parentNode.querySelector('span').innerHTML);
    qte++;
    this.parentNode.querySelector('span').innerHTML=qte;
    prix=parseFloat(this.parentNode.parentNode.parentNode.querySelector('.unitaire').innerHTML);
    total= prix*qte;
    this.parentNode.parentNode.parentNode.querySelector('.prix').innerHTML=total.toFixed(2);
    id = this.parentNode.parentNode.parentNode.id; // recupere l'id de l'article cliqué
    index = montab.findIndex(element => element.id ==id); //trouver l'article dans la liste du panier
    montab[index].quantite	= parseInt(montab[index].quantite) +1; //incrementer la quantité
    document.cookie = "panier="+JSON.stringify(montab)+"; path=/"  // sauvegarde des infos dans le cookie "liste"

    totalgeneral += parseFloat(prix)
    document.querySelector('#total').innerHTML=totalgeneral.toFixed(2)
})}

document.querySelectorAll('.moins').forEach(clickmoins)
    
function clickmoins(tag){
    tag.addEventListener('click',function() { 
    qte=parseInt(this.parentNode.querySelector('span').innerHTML);
    if( qte>0){
    qte--
    this.parentNode.querySelector('span').innerHTML=qte;
    prix=parseFloat(this.parentNode.parentNode.parentNode.querySelector('.unitaire').innerHTML);
    total= prix*qte;
    this.parentNode.parentNode.parentNode.querySelector('.prix').innerHTML=total.toFixed(2);

    id = this.parentNode.parentNode.parentNode.id; // recupere l'id de l'article cliqué
    index = montab.findIndex(element => element.id ==id); //trouver l'article dans la liste du panier
    montab[index].quantite	= parseInt(montab[index].quantite) -1; //incrementer la quantité

    if (montab[index].quantite==0 && montab[index]!=null) {
        montab.splice(index, 1)
        document.cookie = "panier="+JSON.stringify(montab)+"; path=/"  // sauvegarde des infos dans le cookie "liste"
        return window.location.reload()
    }
    console.log(montab)
    
    document.cookie = "panier="+JSON.stringify(montab)+"; path=/"  // sauvegarde des infos dans le cookie "liste"

    totalgeneral -= parseFloat(prix)
    document.querySelector('#total').innerHTML=totalgeneral.toFixed(2)
    }

})}  

function recupCookie(nom){

    if(document.cookie.length == 0)return null;

   var cookies = document.cookie.split("; "); //separe chaque parametre contenu dans le cookie
   cookies.forEach(element => { 
       ligne=element.split("=");
       if(ligne[0]===nom) sortie =ligne[1] 
           else sortie=null;
       })
       return sortie
}

function viderPanier() {
    document.cookie="panier=;expires=Thu, 01 Jan 1970;path=/;";
}