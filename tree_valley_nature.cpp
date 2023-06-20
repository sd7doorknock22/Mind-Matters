#include <iostream>
using namespace std;

//This program is designed to help users track their mental health and well-being
int main() 
{
	//Prompt the user for their name
    cout << "What is your name? ";
    string name;
    cin >> name;
    cout << "Nice to meet you, " << name << "!\n";
	
    //Prompt the user to rate how they are feeling on a scale of 1 to 10
    int feeling;
    cout << "On a scale from 1 to 10, where 1 is feeling terrible and 10 is feeling great, how are you feeling? ";
    cin >> feeling;
    
    //Describe the current feeling
    if (feeling <= 4)
		cout << "That's not good. Let's try to make it better\n";
	else if (feeling > 4 && feeling <= 6)
		cout << "You can do better than that! Let's try to make you feel even better\n";
	else
		cout << "You're doing great. Let's try to keep it up!\n";
	
	//Suggest activities to boost the user's feeling
	cout << "Here are some activities and habits to boost your mood:\n";
	
	//Suggestion #1
	cout << "1. Exercise. Take a brisk walk, go for a bike ride, or take an online fitness class\n";
	
	//Suggestion #2
	cout << "2. Make time for yourself. Take a hot bath, read a book, or watch your favorite movie\n";
	
	//Suggestion #3
	cout << "3. Connect with someone. Call a family member, send a text to a friend, or video chat with a loved one\n";
	
	//Suggestion #4
	cout << "4. Eat a healthy meal. Exercise self-care by pairing nutritious foods with something you enjoy\n";
	
	//Suggestion #5
	cout << "5. Find some simple joys. Spend some time petting an animal, listening to music, or going outside\n";
	
	//Remind the user to take care of their mental health
	cout << "Remember, taking the time to care for your mental health is important. Keep up the good work!\n";
	
    return 0;
}