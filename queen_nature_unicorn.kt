fun main(args: Array<String>) {
    println("Welcome to 'Mind Matters'")
    
    // Introduction
    println("This is a program designed to help explore the human brain and its many complexities.") 
    
    // Variables 
    var mood: String
    var emotion: String
    var mentalState: String
    var attitude: String
    
    // Main Body
    println("\nWhat is your current mood?")
    mood = readLine().toString()
    println("What is your primary emotion?")
    emotion = readLine().toString()
    println("What is your current mental state?")
    mentalState = readLine().toString()
    println("What is your attitude towards these feelings?")
    attitude = readLine().toString()
    
    // Output
    println("\nYour current mood is '$mood', which is primarily driven by '$emotion'. Your mental state is '$mentalState', and your attitude towards those feelings is '$attitude'.") 
    
    // Self-Reflection
    println("\nTake a moment to think about why you feel the way you do. Is your mood or emotion the result of an event that has recently happened?")
    
    // Thought Evaluation
    println("Once you have identified any triggers, think of what healthiest action you can take to process and deal with these emotions. What kind of self-care can you do to manage the situation?")
    
    // Thought Change
    println("Now, think of the opposite of your emotion. How would you feel if everything was the complete opposite? Take a moment to consider how it would be to be in that different mindset.")
    
    // Gratitude
    println("\nFinally, take a moment to recognize what you are grateful for. Shifting your perspective can often help put things into perspective and restore balance.")
    
    // Conclusion
    println("\nNo matter what your situation is, taking the time to think can often be a powerful tool to help manage and work through your emotions. Thanks for exploring 'Mind Matters'!")
    
}