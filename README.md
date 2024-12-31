# Base-Template-V2
 
Elle contient :

OX : inventory, target, fuel, doorlock, lib, mysql
Illenium-appearance
Identité avec OX
Les scripts ESX de base
Un job EMS
Un mapping hôpital + Mapping sur Cayo
Un HUD avec speedometer
Un menu admin OX
Un loading screen
Une carte colorée sur Los Santos
Une location de voitures
Un script pour changer le temps
Un script pour exécuter des commandes comme : /porter, /id, /me
Voici une base template que vous pouvez personnaliser à votre guise.
Support actif sur Discord.

Bon développement à vous !

---

# Questions avec réponses

### Comment modifier le richpresence ?
Pour cela, vous devez vous rendre dans `[ESX]\es_extended\shared\config\adjustments.lua` entre les lignes **60 et 70**.

---

### Comment modifier le menu pause ?
Vous devez vous rendre dans `[Autre]\Nox_core\client\cl_core.lua`, entre les lignes **135 et 177**.

---

### Quel artefact est recommandé ?
Je vous conseille d'utiliser au minimum l'artefact **11505** pour éviter tout problème.

---

### Comment relier votre base de données à un hébergeur ?
Je vous recommande ce tutoriel : [Lien vers le tutoriel YouTube](https://www.youtube.com/watch?v=wHJRGl9AZcQ).

---

### Comment ajouter des items quand un joueur spawn ?
Rendez-vous dans `[ESX]\es_extended\shared\config\main.lua`, à la ligne **23**. Remplacez ceci :  

```lua
Config.StartingInventoryItems = false -- table/false
```

Par ceci :  

```lua
Config.StartingInventoryItems = {
    ["bread"] = 2,
    ["water"] = 4,
}
```

Vous pouvez ajouter les items que vous souhaitez et définir leur quantité.

---

### Comment changer le point de spawn ?
Rendez-vous dans `[ESX]\es_extended\shared\config\main.lua`, entre les lignes **25 et 31**. Modifiez simplement les coordonnées.

