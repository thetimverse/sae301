liste = recupCookie("panier") //recupere le cookie  sous forme de chaine de caractere 
if (liste!="")montab = JSON.parse(liste) // transforme la chaine  en tableau JSON
else montab =Array() // si il n'y a pas de tableau dans le cookie alors créer le tableau
console.log(montab)

document.getElementById('liste').value="panier="+JSON.stringify(montab)+"; path=/" // sauver montab pour le formulaire

var totalgeneral=0
montab.forEach(manif => {  

    html = `<tr id="${manif.id}">
    <td><img src="${manif.image}"></td>
        <td class="infos"><h3>${manif.titre}</h3><br><h4>${manif.date} - ${manif.horaire}</h4></td>
        <td id="quantite">
        <div><i class="material-icons moins">remove_circle</i><span>${manif.quantite}</span><i class="material-icons plus">add_circle</i></div> 
        </td>
        <td><span class="unitaire">${manif.prix} €</span></td>
        <td><span class="prix">${manif.prix * manif.quantite}</span><span> €</span></td>
        </tr>`;

    document.getElementById('zone').innerHTML += html
    totalgeneral += manif.prix * manif.quantite
})

document.getElementById('total').innerHTML = totalgeneral

document.querySelectorAll('.plus').forEach(clickplus)
    
function clickplus(tag){
    tag.addEventListener('click',function() { 
    qte= parseInt( this.parentNode.querySelector('span').innerHTML);
    qte++;
    this.parentNode.querySelector('span').innerHTML=qte;
    prix=parseFloat(this.parentNode.parentNode.parentNode.querySelector('.unitaire').innerHTML);
    console.log(prix)
    console.log(qte)
    total= prix*qte;
    this.parentNode.parentNode.parentNode.querySelector('.prix').innerHTML=total.toFixed(2);
    console.log(total)
    id = this.parentNode.parentNode.parentNode.id; // recupere l'id de l'article cliqué
    console.log(id)
    index = montab.findIndex(element => element.id ==id); //trouver l'article dans la liste du panier
    console.log( montab)
    console.log(index)
    montab[index].quantite	= parseInt(montab[index].quantite) +1; //incrementer la quantité
    document.cookie = JSON.stringify(montab);  // sauvegarde des infos dans le cookie "liste"

    totalgeneral += parseFloat(prix)
    document.querySelector('#total').innerHTML=totalgeneral.toFixed(2)
    console.log(totalgeneral)

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