// MARK: - Mind Matters

//MARK: - Variables
//Variables for the mental state of the user
var currentMood: String = "" //set to happy, sad, anxious, etc
var currentFocus: String = "" //set to positive, negative, etc
var stressLevel: Int = 0 //0-10

//MARK: - Mind State Determination
//Function to determine the current mind state of the user
func determineMindState() -> Bool {
    if currentMood == "happy" && currentFocus == "positive" && stressLevel < 5 {
        return true
    } else {
        return false
    }
}

//MARK: - Tips 
//Functions offering strategies for managing various mental states 
func tipsForHappyMoods() {
    print("• Spend time with friends and family")
    print("• Exercise regularly")
    print("• Get enough sleep")
    print("• Spend time outdoors")
    print("• Laugh regularly")
}

func tipsForSadMoods() {
    print("• Talk to a friend or loved one")
    print("• Exercise")
    print("• Get enough sleep")
    print("• Avoid drugs and alcohol")
    print("• Make a list of things that make you happy")
}

func tipsForAnxiousMoods() {
    print("• Practice mindfulness techniques")
    print("• Exercise")
    print("• Get enough sleep")
    print("• Avoid caffeine and drugs")
    print("• Write down anxious thoughts")
}

//MARK: - Actions
//Function to take action based on the mental state of the user 
func takeAction() {
    if determineMindState() {
        print("Your current mind state is healthy. Keep up the good work!")
    } else {
        if currentMood == "happy" {
            tipsForHappyMoods()
        } else if currentMood == "sad" {
            tipsForSadMoods()
        } else if currentMood == "anxious" {
            tipsForAnxiousMoods()
        }
    }
}

//MARK: - Test
//Test the "Mind Matters" program
takeAction()