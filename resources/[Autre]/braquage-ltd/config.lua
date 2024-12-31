Config = {}

Config.RequirePolice = true
Config.PoliceCount = 0 
Config.PoliceJobs = { 'police', 'sheriff' }
Config.Dispatch = 'Dispatch' 

Config.RegisterRobberyItem = 'lockpick' 
Config.RegisterMinCooldown = 10 -- Le temps de recharge minimum pour voler des registres une fois que l'un d'entre eux a été volé
Config.RegisterMaxCooldown = 20 -- Le temps de recharge maximum pour voler des registres une fois que l'un d'entre eux a été volé
Config.RegisterDiffuculty = { 'easy'} -- The skillcheck difficulty, can be 'easy', 'medium' or 'hard' Exemple [{ 'medium','medium','medium','medium','medium'} Pour Avoir 5 Actions en version moyen]
Config.RegisterInput = { 'W', 'A', 'S', 'D' } -- Les clés utilisées pour le mini-jeu de contrôle de compétences peuvent être n'importe quelle clé.
Config.RegisterRewardItem = 'black_money' 
Config.RegisterRewardRandom = true -- Définissez true si vous souhaitez récompenser une quantité aléatoire de l'article ci-dessus, sinon définissez false
Config.RegisterRewardQuantity = 1000 -- Si RegisterRewardRandom = false alors c'est la quantité récompensée, si vrai alors peut être ignoré
Config.RegisterRewardMinQuantity = 4500 -- Si RegisterRewardRandom = true alors c'est la quantité minimale, sinon peut être ignorée
Config.RegisterRewardMaxQuantity = 5000 -- Si RegisterRewardRandom = true alors c'est la quantité maximale, sinon peut être ignorée
Config.LockpickBreakChance = 50 -- Le pourcentage de chances que le crochetage se brise en cas d'échec du crochetage d'un registre
Config.CodeChance = 10 -- Le pourcentage de chances qu'un joueur reçoive un code du registre pour ignorer l'exigence de piratage du PC

Config.SafeMinCooldown = 10 --Le temps de recharge minimum pour cambrioler un coffre-fort une fois que celui-ci a été cambriolé
Config.SafeMaxCooldown = 20 --Le temps de recharge maximum pour cambrioler un coffre-fort une fois que celui-ci a été cambriolé
Config.MaxCodeAttempts = 3 -- Le nombre maximum de tentatives pour saisir le code correct pour déverrouiller le coffre-fort avant de devoir recommencer le vol
Config.SafeRewardItem = 'black_money' -- L'objet qui est récompensé en cas de vol réussi du coffre-fort (défini sur "markedbills" si vous utilisez QBCore)
Config.SafeRewardRandom = true -- Définissez true si vous souhaitez récompenser une quantité aléatoire de l'article ci-dessus, sinon définissez false
Config.SafeRewardQuantity = 2000 --  Si RegisterRewardRandom = false alors c'est la quantité récompensée, si vrai alors peut être ignoré
Config.SafeRewardMinQuantity = 4500 -- Si RegisterRewardRandom = true alors c'est la quantité minimale, sinon peut être ignorée
Config.SafeRewardMaxQuantity = 5000 -- Si RegisterRewardRandom = true alors c'est la quantité maximale, sinon peut être ignorée

Config.MaxHackAttempts = 3 --Le nombre maximum de tentatives de piratage pour obtenir le code de sécurité avant de devoir recommencer le vol
Config.EnableQuestionnaire = true --Si c'est vrai, le joueur se verra poser une séquence de questions au lieu du test de compétence ci-dessous pour pirater l'ordinateur.
Config.ComputerDifficulty = { 'easy'} --The skillcheck difficulty, can be 'easy', 'medium' or 'hard' Exemple [{ 'medium','medium','medium','medium','medium'} Pour Avoir 5 Actions en version moyen]
Config.ComputerInput = { 'W', 'A', 'S', 'D' } -- Les clés utilisées pour le mini-jeu de contrôle de compétences peuvent être n'importe quelle clé.

Config.Questions = { 
    question1 = {
        question = 'Qu\'est-ce qu\'un GPU ?',
        icon = 'bolt'
    },
    question2 = {
        question = 'Qu\'est-ce qu\'un OS ?',
        icon = 'lock'
    },
    question3 = {
        question = 'Qu\'est-ce qu\'un CPU ?',
        icon = 'desktop'
    },
    question4 = { 
        question = 'Que fait CTRL + A ?',
        icon = 'keyboard',
        options = {
            option1 = 'Copier le texte',
            option2 = 'Coller le texte',
            option3 = 'Selectioner Tout',
            option4 = 'Imprimer la page'
        }
    },
}

Config.Answers = { 
    question1Answer = 'Carte Graphique',
    question2Answer = 'Systeme Exploitation',
    question3Answer = 'Processeur',
    question4Answer = 3 
}

Config.Locations = {
    Registers = {
        vec3(24.9456, -1344.9544, 29.6116), -- Innocence Blvd
        vec3(-3041.3566, 584.2665, 8.0235), -- Inseno Road
        vec3(-3244.5734, 1000.6577, 12.9453), -- Barbareno Road
        vec3(1729.3294, 6417.1230, 35.1519), -- Great Ocean Highway
        vec3(1698.3787, 4923.2553, 42.2410), -- Grape Seed Main Street
        vec3(1959.3229, 3742.2895, 32.4584), -- Alhambra Drive
        vec3(548.9014, 2668.9414, 42.2711), -- Route 68
        vec3(2676.2124, 3280.9694, 55.3558), -- Senora Freeway
        vec3(2554.875, 381.3857, 108.7376), -- Palomino Freeway
        vec3(373.5953, 328.5891, 103.6810), -- Clinton Avenue
        vec3(-1820.5584, 793.9172, 138.2765), -- North Rockford Drive
        vec3(-47.2251, -1757.5423, 29.5983), -- Grove Street
        vec3(-706.7102, -913.5667, 19.3929), -- Ginger Street
        vec3(1164.1452, -322.7899, 69.3824) -- Mirror Park Blvd
    },
    Computers = {
        vec3(29.5590, -1338.3704, 29.3723), -- Innocence Blvd
        vec3(-3049.0339, 586.6518, 7.7842), -- Inseno Road
        vec3(-3250.736, 1005.8194, 12.7060), -- Barbareno Road
        vec3(1736.3864, 6420.9741, 34.9125), -- Great Ocean Highway
        vec3(1707.3872, 4921.6953, 42.0722), -- Grape Seed Main Street
        vec3(1960.0263, 3750.2978, 32.2190), -- Alhambra Drive
        vec3(545.1868, 2661.8115, 42.0318), -- Route 68
        vec3(2672.7070, 3288.2045, 55.1164), -- Senora Freeway
        vec3(2548.4802, 386.2579, 108.4982), -- Palomino Freeway
        vec3(379.6751, 333.8492, 103.4417), -- Clinton Avenue
        vec3(-1828.9333, 797.3793, 138.2624), -- North Rockford Drive
        vec3(-44.7806, -1748.8189, 29.4642), -- Grove Street
        vec3(-710.4782, -905.2836, 19.2711), -- Ginger Street
        vec3(1158.9605, -315.2624, 69.2748) -- Mirror Park Blvd
    },
    Safes = {
        vec3(28.1588, -1338.7192, 28.8068), -- Innocence Blvd
        vec3(-3048.2958, 585.4102, 7.2009), -- Inseno Road
        vec3(-3250.5161, 1004.4418, 12.1558), -- Barbareno Road
        vec3(1734.9835, 6421.3173, 34.3080), -- Great Ocean Highway
        vec3(1708.1695, 4920.8208, 41.3514), -- Grape Seed Main Street
        vec3(1959.0202, 3749.3291, 31.6847), -- Alhambra Drive
        vec3(546.5106, 2662.3266, 41.5089), -- Route 68
        vec3(2672.3398, 3286.8269, 54.6214), -- Senora Freeway
        vec3(2548.7395, 384.8841, 107.9211), -- Palomino Freeway
        vec3(378.2658, 333.8557, 102.9076), -- Clinton Avenue
        vec3(-1829.5384, 798.4634, 137.5601), -- North Rockford Drive
        vec3(-43.8009, -1748.0804, 28.7776), -- Grove Street
        vec3(-710.1920, -904.1401, 18.5740), -- Ginger Street
        vec3(1159.0540, -314.1202, 68.5665) -- Mirror Park Blvd
    }
}

Notify = {
    title = 'Braquage Superette', 
    icon = 'store',
    position = 'top', 
    registerCooldown = 'Les magasins ne peuvent pas être cambriolés aussi souvent : veuillez patienter et réessayer plus tard.',
    notEnoughPolice = 'Il n\'y a pas suffisamment de policiers disponibles dans la ville pour le faire.',
    missingItem = 'Il vous manque un outil requis pour Braquer La Caisse',
    lockpickBroke = 'Vous avez cassé le crochet et n\'avez pas réussi à Braquer La Caisse',
    robberyCancel = 'Arrêtez de braquer la caisse',
    failedHack = 'Vous avez échoué à pirater l`\'ordinateur',
    wrongPin = 'Vous saisissez le mauvais code PIN et le coffre-fort reste verrouillé',
    errorOccured = 'Une erreur s\'est produite. Veuillez réessayer',
    tooManyHackFails = 'Vous n\'avez pas réussi à pirater l\'ordinateur trop de fois et vous n\'avez pas réussi à cambrioler le magasin.',
    tooManySafeFails = 'Vous avez saisi un code PIN erroné trop de fois et vous n\'avez pas réussi à cambrioler le coffre-fort.'
}

Target = {
    debugTargets = false,
    registerLabel = 'Braquage Superette',
    registerIcon = 'fas fa-lock',
    computerLabel = 'Se Connecter',
    computerIcon = 'fas fa-computer',
    safeLabel = 'Deverouiller',
    safeIcon = 'fas fa-key'
}

ProgressCircle = {
    position = 'middle', 
    registerLabel = 'Vide La Caisse..',
    registerDuration = 30000,
    safeLabel = 'Vide Le Coffre..',
    safeDuration = 30000
}

AlertDialog = {
    registerHeader = 'Remarque trouvée',
    registerContent = 'Vous avez trouvé une note intéressante sous le registre avec rien d\'autre que les numéros suivants écrits dessus: ',
    registerCancelButton = 'Qui s\'en soucie ?',
    registerConfirmButton = 'J\'ai compris',
    computerHeader = 'Code exposé',
    computerContent = 'Vous avez réussi à pirater l\'ordinateur et trouvez le code suivant: ',
    computerConfirmButton = 'J\'ai compris'
}

InputDialog = {
    questionsHeader = 'Questions Secrete',
    questionOne = 'Question #1',
    questionTwo = 'Question #2',
    questionThree = 'Question #3',
    questionFour = 'Question #4',
    safeHeader = 'Stocker en toute sécurité',
    safeLabel = 'Enter PIN',
    safeDescription = 'Saisissez le code PIN pour déverrouiller le coffre-fort',
    safePlaceholder = '6969',
    safeIcon = 'Verrouillage'
}