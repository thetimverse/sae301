document.getElementById("ajout").addEventListener("click", function () {
    var id = document.getElementById("id").value;
    var titre = document.getElementById("titre").innerHTML;
    var date = document.getElementById("date").innerHTML;
    var horaire = document.getElementById("horaire").innerHTML;
    var image = document.getElementById("image").src;
    var prix = document.getElementById("prix").innerHTML;
    if (!montab) montab = []
    index = montab.findIndex((element) => element.id == id); //trouver l'article dans la liste du panier
    if (index > -1) {
        montab[index].quantite += parseInt(document.getElementById("qte").value);
    } else {
        montab.push({
        id: id,
        titre: titre,
        date: date,
        horaire: horaire,
        image: image,
        quantite: parseInt(document.getElementById("qte").value),
        prix: prix,
        })
    }
    document.cookie = "panier="+JSON.stringify(montab)+"; path=/" // sauvegarde des infos dans le cookie "liste"
    var panier = 0;
    montab.forEach(element => {
        panier += parseInt(element.quantite);
    });
    document.getElementById("panier").innerHTML = panier;
});