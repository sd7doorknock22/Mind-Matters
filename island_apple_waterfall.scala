//File: MindMatters.scala

//Class to contain all the necessary methods and variables 
class MindMatters {
  //Variable for the amount of time to meditate for
  private var meditationTime: Int = 0
  //Method to set the meditation time
  def setMeditationTime(time: Int): Unit = {
    meditationTime = time
  }
  
  //Variable to store the type of meditation to be performed
  private var meditationType: String = ""
  //Method to set the kind of meditation to be done
  def setMeditationType(meditation: String): Unit = {
    meditationType = meditation
  }
  
  //Variable to store the results of each meditation session
  private var meditationResults: List[Int] = List()
  //Method to add a result to the meditationResults list
  def addMeditationResults(result: Int): Unit = {
    meditationResults = result::meditationResults
  }
  
  //Variable to store the average result of the meditation sessions
  private var avgResult: Int = 0
  //Method to calculate the average result
  def calAvgResult(): Unit = {
    if (meditationResults.length > 0) {
      var totalResult: Int = 0
      for (result <- meditationResults) {
        totalResult += result
      }
      avgResult = totalResult/meditationResults.length
    }
  }
  
  //Method to print out the meditation results
  def printResults(): Unit = {
    println("Meditating for " + meditationTime + " minutes of " + meditationType + " meditation has yielded an average result of " + avgResult)
  }
  
  //Variable to store whether or not there is a break in the meditation session
  private var breakTime: Boolean = false
  //Method to set the break in the meditation session
  def setBreakTime(takeABreak: Boolean): Unit = {
    breakTime = takeABreak
  }
  
  //Variable to store the meditation pause duration
  private var pauseDuration: Int = 0
  //Method to set the pause duration
  def setPauseDuration(pauseInMinutes: Int): Unit = {
    pauseDuration = pauseInMinutes
  }
  
  //Method to start the meditation session
  def startMeditation(): Unit = {
    if (breakTime) {
      println("Taking a break for " + pauseDuration + " minutes")
    } 
    else {
      println("Beginning the meditation session for " + meditationTime + " minutes")
    }
  }
  
  //Variable to store the meditation reflection
  private var meditationReflection: String = ""
  //Method to set the meditation reflection
  def setMeditationReflection(reflection: String): Unit = {
    meditationReflection = reflection
  }
  
  //Method to print out the meditation reflection
  def printMeditationReflection(): Unit = {
    println("Meditation reflection: " + meditationReflection)
  }
  
  //Variable to store the time left for the meditation session
  private var timeLeft: Int = 0
  //Method to set the time left for the meditation session
  def setTimeLeft(timeRemaining: Int): Unit = {
    timeLeft = timeRemaining
  }
  
  //Method to end the meditation session
  def endMeditation(): Unit = {
    println("Meditation session completed, " + timeLeft + " minutes remaining")
  }
}

//Object to use methods from the MindMatters class
object MindMatters {
  def main(args: Array[String]): Unit = {
    //Create instance of MindMatters class
    val mindMatters = new MindMatters()
    //Set the meditation time
    mindMatters.setMeditationTime(20)
    //Set the meditation type
    mindMatters.setMeditationType("Transcendental")
    //Set the break for the meditation session
    mindMatters.setBreakTime(true)
    //Set the pause duration
    mindMatters.setPauseDuration(5)
    //Begin the meditation session
    mindMatters.startMeditation()
    //Set the meditation reflection
    mindMatters.setMeditationReflection("I felt a deep sense of peace and calm during this meditation")
    //Print the meditation reflection
    mindMatters.printMeditationReflection()
    //Set the time left
    mindMatters.setTimeLeft(15)
    //Add the meditation results
    mindMatters.addMeditationResults(4)
    mindMatters.addMeditationResults(7)
    //Calculate the average result
    mindMatters.calAvgResult()
    //End the meditation session
    mindMatters.endMeditation()
    //Print the results
    mindMatters.printResults()
  }
}