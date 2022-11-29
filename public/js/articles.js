document.getElementById("ajout").addEventListener("click", function () {
    var id = document.getElementById("id").value;
    var titre = document.getElementById("titre").innerHTML;
    var date = document.getElementById("date").innerHTML;
    var horaire = document.getElementById("horaire").innerHTML;
    var image = document.getElementById("image").src;
    var prix = document.getElementById("prix").innerHTML;
    console.log(id + " " + image + " " + prix);

    index = montab.findIndex((element) => element.id == id); //trouver l'article dans la liste du panier
    if (index > -1) {
        montab[index].quantite += parseInt(document.getElementById("qte").value);
        console.log(montab);
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
        console.log(montab);
    }
    document.cookie = "liste="+JSON.stringify(montab); // sauvegarde des infos dans le cookie "liste"
    var panier = 0;
    montab.forEach(element => {
        panier += parseInt(element.quantite);
    });
    document.getElementById("panier").innerHTML = panier;
});