# Mind Matters in Python

def main():
    """This is the main function of the Mind Matters program."""

    user_input = input("What do you want to do? \n[1] Talk to a Counselor  \n[2] Take a Quiz  \n[3] Learn About Mental Health  \n[4] Exit")

    if user_input == "1":
        talk_to_counselor()
    elif user_input == "2":
        take_quiz()
    elif user_input == "3":
        mental_health_info()
    elif user_input == "4":
        exit_program()
    else:
        print("Invalid input.")
        main()
    
def talk_to_counselor():
    """This function allows the user to talk to a counselor."""

    counselor_name = input("Who would you like to talk to? \n[1] Ms. Jones \n[2] Dr. Smith \n[3] Mr. Johnson \n[4] Exit")

    if counselor_name == "1":
        ms_jones()
    elif counselor_name == "2":
        dr_smith()
    elif counselor_name == "3":
        mr_johnson()
    elif counselor_name == "4":
        main()
    else:
        print("Invalid input.")
        talk_to_counselor()

def ms_jones():
    """This function allows the user to talk to Ms. Jones."""

    print("Ms. Jones: Hello, how can I help you?")
    user_input = input()

    if user_input == "Exit":
        talk_to_counselor()
    else:
        print("Ms. Jones: You said " + user_input + "? Let's talk about it.")
        ms_jones()

def dr_smith():
    """This function allows the user to talk to Dr. Smith."""

    print("Dr. Smith: Hi, what do you need to talk about?")
    user_input = input()

    if user_input == "Exit":
        talk_to_counselor()
    else:
        print("Dr. Smith: So you're feeling " + user_input + ". Let's talk about it.")
        dr_smith()

def mr_johnson():
    """This function allows the user to talk to Mr. Johnson."""

    print("Mr. Johnson: Greetings, what would you like to discuss?")
    user_input = input()

    if user_input == "Exit":
        talk_to_counselor()
    else:
        print("Mr. Johnson: Interesting, you said " + user_input + ". Let's chat about it.")
        mr_johnson()

def take_quiz():
    """This function allows the user to take a quiz about mental health."""

    print("Welcome to the Mental Health Quiz! Let's get started.")

    q1 = input("Q1: What is the most important thing for mental health? \n[1] Diet \n[2] Exercise \n[3] Sleep \n[4] Happiness")

    if q1 == "3":
        print("Correct!")
        q2()
    else:
        print("Incorrect, the correct answer was Sleep.")
        q2()

def q2():
    """This is the second question of the quiz."""

    q2 = input("Q2: How much sleep do adults need per night? \n[1] 6 hours \n[2] 8 hours \n[3] 10 hours \n[4] 12 hours")

    if q2 == "2":
        print("Correct!")
        q3()
    else:
        print("Incorrect, the correct answer was 8 hours.")
        q3()

def q3():
    """This is the third question of the quiz."""
    q3 = input("Q3: What can you do to reduce stress? \n[1] Take a walk \n[2] Talk to a friend \n[3] Watch TV \n[4] Listen to music")

    if q3 == "1" or q3 == "2" or q3 == "4":
        print("Correct!")
        print("Congratulations, you finished the quiz!")
        main()
    else:
        print("Incorrect, the correct answers were Take a walk, Talk to a friend, and Listen to music.")
        print("Congratulations, you finished the quiz!")
        main()

def mental_health_info():
    """This function provides the user with information about mental health."""
    
    print("Mental health is a state of well-being in which an individual is able to cope with the normal stresses of life, work productively, and make a contribution to their community. Some ways of improving mental health include getting regular physical activity, taking time to unwind and relax, eating a healthy diet, getting enough sleep, learning how to manage stress, and connecting with others.")
    main()

def exit_program():
    """This function exits the program."""
    print("Goodbye!")

if __name__ == '__main__':
    main()