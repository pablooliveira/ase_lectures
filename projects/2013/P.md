Projet: ASE
===========

## Règles


### Rendu
Le projet est à rendre avant le jeudi 14 février à 23h59.
Pour rendre le projet envoyer une archive qui respecte
la nomenclature ``nom1-nom2-projet-ase-13.tar.gz``
à l'adresse <pablo.oliveira@prism.uvsq.fr>. Le sujet
du mail sera "[ASE] Rendu Projet nom1 nom2".
(Si les consignes de rendu ne sont pas respectées, 
votre note projet sera minorée d'un point).


### Questions

Les questions sont encouragées sur la liste ase-m2ihp@googlegroups.com.

### Retard

Si vous rendez le projet en retard, votre note sera minorée de 2 points par
jour de retard. Si vous n'avez pas rendu le 20 février, vous aurez 0/20.

### Plagiat
Si vous empruntez du code il faut:

   1. Citer sa provenance

   2. S'assurer que la licence du code vous permet de l'employer

Vous pouvez discuter et collaborer entre groupes, mais il est strictement
interdit de copier du code entre groupes.

Il est interdit de publier votre code avant la fin du cours d'ASE (le 22
février).

Si vous ne respectez pas ces règles, votre note projet sera de 0/20.

## Objectif

Il s'agit de porter JonesForth sur un processeur ARM.
Le code devra compiler et tourner sur la machine
virtuelle Raspberry-Pi que vous avez installée en TP.

L'archive qui vous est fournie comporte un squelette
du port dans le fichier ``jonesforth.S``.
Vous devez compléter tous les endroits du fichier
qui contiennent l'indication ``@ FIXME @``. 

Le code doit être commenté ! J'attends un commentaire en
détail de l'assembleur produit.  

Vous devez également compléter le questionnaire ci-joint.

## Étapes

### Étape 0 (lecture)

Lisez intégralement les commentaires du fichier x86 de JonesForth.

### Étape 1 (pile)

Écrivez les macros ``PUSHRSP``, ``POPRSP``, ``push`` et ``pop``,
qui permettent de manipuler la pile de retour et de données.
La pile de donnée est pointée par le macro DSP (data stack pointer)
et la pile de retour est pointée par le macro RSP (return stack pointer).

### Étape 2 (ITC)

Implémentez le modèle d'éxection ITC en complétant le code de ``NEXT``,
``DOCOL`` et ``EXIT``.

Après cette étape vous pouvez vérifier que votre code est correct en utilisant
GDB. Normalement si le code de NEXT est correct, une fois le code lancé, le
programme devrait sauter au code de QUIT. Vous pouvez le vérifier en faisant
du pas par pas, ou en mettant un breakpoint sur `code_RZ` (le premier mot natif
exécuté par QUIT).

### Étape 3 (entrées sorties)

Implémentez ``KEY``, ``EMIT``, ``NUMBER``.
Vérifiez que votre code marche, en testant de petits exemples avec GDB.
Vous pouvez par exemple changer temporairement le code de ``QUIT`` à:

~~~asm
    .int KEY
    .int EMIT
    .int BRANCH, -12
~~~ 

### Étape 4

Implémentez ``FIND`` et testez votre code en essayant de trouver des mots
qui sont présents ou pas dans le dictionnaire.


### Étape 5

Implémentez ``DIVMOD``.

### Étape 6

Implémentez tout le reste et nottamment le code ``INTERPRET``.
Attention, à chaque nouveau mot implémenté, prenez le temps de tester son
bon fonctionnement à l'aide de GDB.

## Étape 7 

Essayez de faire ``make test``. Passez vous tous les tests de JonesForth ?

## Questionnaire:

(@) Expliquez avec un schéma le fonctionnenement de NEXT, DOCOL et EXIT.

(@) Quelle est la différence entre link et LATEST ?

(@) Comment avez vous fait dans FIND pour que les mots marqués HIDDEN ne soient
    pas retournés ?

(@) À quoi servent les mots SYSCALL0, SYSCALL1, etc...   

(@) Expliquez le code de TICK.

(@) Commentez votre implémentation de DIVMOD.












