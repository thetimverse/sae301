liste = recupCookie("panier") //recupere le cookie  sous forme de chaine de caractere 
if (liste!="")montab = JSON.parse(liste) // transforme la chaine  en tableau JSON
else montab =Array() // si il n'y a pas de tableau dans le cookie alors créer le tableau
console.log(montab)

document.getElementById('liste').value=JSON.stringify(montab); // sauver montab pour le formulaire

var totalgeneral=0
montab.forEach(manif => {  

    html = `<tr id="${manif.id}">
        <td class="infos"><h3>${manif.titre}</h3><br><h4>${manif.date} - ${manif.horaire}</h4></td>
        <td id="quantite">
        <div><i class="material-icons moins">remove_circle</i><span>${manif.quantite}</span><i class="material-icons plus">add_circle</i></div> 
        </td>
        <td><span class="unitaire">${manif.prix} €</span></td>
        <td><span class="prix">${manif.prix * manif.quantite} €</span></td>
        </tr>`;

    document.getElementById('zone').innerHTML += html
    totalgeneral += uneinfo.prix * uneinfo.quantite
})

document.getElementById('total').innerHTML = totalgeneral

document.querySelectorAll('.plus').forEach(clickplus)
    
function clickplus(tag){
    tag.addEventListener('click',function() { 
    qte=this.parentNode.querySelector('span').innerHTML;
    qte++;
    this.parentNode.querySelector('span').innerHTML=qte;
    prix=this.parentNode.parentNode.querySelector('.unitaire').innerHTML;
    total= prix*qte;
    this.parentNode.parentNode.querySelector('.prix').innerHTML=total;

    id = this.parentNode.parentNode.id; // recupere l'id de l'article cliqué
    index = montab.findIndex(element => element.id ==id); //trouver l'article dans la liste du panier
    montab[index].quantite	= parseInt(montab[index].quantite) +1; //incrementer la quantité
    document.cookie = JSON.stringify(montab);  // sauvegarde des infos dans le cookie "liste"

    totalgeneral += parseInt(prix)
    document.querySelector('#total').innerHTML=totalgeneral

})}

document.querySelectorAll('.moins').forEach(clickmoins)
    
function clickmoins(tag){
    tag.addEventListener('click',function() { 
    qte=this.parentNode.querySelector('span').innerHTML;
    if( qte>0){
    qte--
    this.parentNode.querySelector('span').innerHTML=qte;
    prix=this.parentNode.parentNode.querySelector('.unitaire').innerHTML;
    total= prix*qte;
    this.parentNode.parentNode.querySelector('.prix').innerHTML=total;

    id = this.parentNode.parentNode.id; // recupere l'id de l'article cliqué
    index = montab.findIndex(element => element.id ==id); //trouver l'article dans la liste du panier
    montab[index].quantite	= parseInt(montab[index].quantite) -1; //incrementer la quantité

    console.log(montab)
    document.cookie = "panier="+JSON.stringify(montab)+"; path=/"  // sauvegarde des infos dans le cookie "liste"

    totalgeneral -= parseInt(prix)
    document.querySelector('#total').innerHTML=totalgeneral
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