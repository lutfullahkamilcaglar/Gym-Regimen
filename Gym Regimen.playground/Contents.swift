import UIKit

struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int
  
  init(name: String, muscleGroups: [String], reps: Int, sets: Int){
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.totalReps = reps * sets
  }
 
}
var pushUp = Exercise(name: "Push up",muscleGroups: ["Triceps", "Chest", "Shoulders"],reps: 10,sets: 3)

var benchPress = Exercise(name: "Bench Press", muscleGroups:["Triceps", "Chest", "Shoulders"], reps: 12, sets: 3)

var back = Exercise(name: "Pull up",muscleGroups: ["Deltoids", "Biceps", "Core"],reps: 8,sets: 3)

var legs = Exercise(name: " Squat ",muscleGroups: ["Quadriceps", "Calves", "Hip"],reps: 12,sets: 3)

//print(pushUp)
//print(benchPress)

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  init(dayOfWeek: String, exercises: [Exercise]){
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }

func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and you're going to:")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
      print("That's a total of \(exercise.totalReps) \(exercise.name)s")
    }
  }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises:[pushUp])

var tuesdayRegimen = Regimen(dayOfWeek: "Tuesday", exercises:[benchPress])

var thursdayRegimen = Regimen(dayOfWeek: "Thursday", exercises:[back])

var fridayRegimen = Regimen(dayOfWeek: "Friday", exercises:[legs])



//print(mondayRegimen)
mondayRegimen.printExercisePlan()
//print(tuesdayRegimen)
tuesdayRegimen.printExercisePlan()
//print(thursdayRegimen)
thursdayRegimen.printExercisePlan()
//print(fridayRegimen)
fridayRegimen.printExercisePlan()











