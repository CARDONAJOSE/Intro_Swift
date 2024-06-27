/*:
 ## App Exercise - Mile Times and Congratulations
 
 > Ces exercices renforcent les concepts Swift dans le contexte d'une application de fitness.

 
 La structure `RunningWorkout` ci-dessous contient des informations sur les entraînements en cours de vos utilisateurs. Cependant, vous décidez d'ajouter des informations sur le temps moyen parcouru en miles. Ajoutez une propriété calculée appelée `averageMileTime` qui utilise `distance` et `time` pour calculer le temps moyen en miles de l'utilisateur. Supposons que la `distance` soit en mètres et que 1600 mètres correspondent à un mile.


 Créez une instance de `RunningWorkout` et imprimez la propriété `averageMileTime`. Vérifiez que cela fonctionne correctement.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
}

//: [Previous](@previous)  |  page 8 of 10  |  [Next: Exercise - Type Properties and Methods](@next)
