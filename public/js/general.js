liste = recupCookie("panier") //recupere le cookie  sous forme de chaine de caractere 
if (liste.length!=0)montab = JSON.parse(liste) // transforme la chaine  en tableau JSON
else montab =Array() // si il n'y a pas de tableau dans le cookie alors créer le tableau
console.log(montab)

panier = 0
montab.forEach(element => {   panier += parseInt(element.quantite) });
document.getElementById('panier').innerHTML = panier

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