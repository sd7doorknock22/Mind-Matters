//import the required libraries
import { Component } from '@angular/core';
import { NavController, Platform } from 'ionic-angular';

//Declare the Component
@Component({
  selector: 'page-mindMatters',
  templateUrl: 'mindMatters.html'
})

//Define the class
export class MindMattersPage {

  //initialize necessary variables
  public mindMatters: any;

  //Constructor
  constructor(public navCtrl: NavController, public platform: Platform) {
    this.mindMatters = [
      {
        title: "Reduce Stress",
        content: "For many people, stress plays a major role in their daily lives. Take some time for yourself and practice relaxation techniques, like yoga, meditation, or even just taking a few deep breaths and counting to ten. A good night's sleep can also help immensely in reducing stress. "
      },
      {
        title: "Exercise Regularly",
        content: "Regular exercise can be a great way to improve your overall mental wellbeing. Studies have shown that exercise not only improves physical health, but also increases levels of serotonin (which helps promote happiness), and releases endorphins which can improve mood. "
      },
      {
        title: "Eat Right",
        content: "It's important to eat a balanced diet that provides all the necessary nutrients. Eating nutritious meals can help you feel better and have more energy, allowing you to tackle the day's tasks with more focus and ease. "
      },
      {
        title: "Practice Mindfulness",
        content: "Mindfulness is the practice of being aware of your thoughts and feelings without judging them. It can be a powerful tool for improving your mental wellbeing, as it helps to reduce stress, create a sense of calm, and increase self-awareness. "
      },
      {
        title: "Connect With Others",
        content: "Having strong connections with other people is essential for mental wellbeing. Reach out to friends and family, or make new connections with people in your community or online. Socializing helps to reduce loneliness and can provide a sense of belonging and purpose.  "
      },
      {
        title: "Take Time For Hobbies",
        content: "Taking the time to pursue hobbies that you enjoy can help to reduce stress, improve concentration, and lift your mood. Hobbies can also help to connect you with like-minded people and help you to stay motivated and engaged with life.  "
      },
      {
        title: "Be Kind To Yourself",
        content: "Learning how to be kind to yourself is an important part of improving your mental health. Take time to recognize and celebrate your successes, be gentle and understanding with yourself and practice positive self-talk. These behaviors can help to boost your mood and self-confidence.  "
      },
      {
        title: "Learn Something New",
        content: "Learning something new is an excellent way to boost your mental health. Taking up a new hobby, exploring a new skill set or even just reading a book can help to stimulate your brain and provide a sense of pride and accomplishment.  "
      },
      {
        title: "Spend Time Outdoors",
        content: "Spending time outdoors in nature has been shown to improve mood, reduce stress, and provide a sense of calm and relaxation. Take a walk, go for a bike ride, or just sit and enjoy the view.  "
      },
      {
        title: "Reduce The Use Of Technology",
        content: "Though technology can be helpful, too much use can have a negative effect on your mental wellbeing. Try to limit the amount of time you spend in front of a screen and take frequent breaks. "
      },
      {
        title: "Make Time For Fun",
        content: "Having fun is an essential part of mental wellbeing. Make time for activities that you enjoy and that bring you joy. Doing something just for fun can help to reduce stress, lighten your mood, and make you feel more positive. "
      },
      {
        title: "Journal",
        content: "Writing in a journal is a great way to let go of negative thoughts and feelings and to gain perspective on your thoughts and experiences. It can also help to foster self-awareness and provide a space for reflection. "
      },
      {
        title: "Get Help If Needed",
        content: "If you are feeling overwhelmed or struggling to cope with your mental wellbeing, it is important to seek help. Don't be afraid to talk to a therapist, counselor, or trusted friend or family member about what you're going through. "
      },
      {
        title: "Create A Support System",
        content: "Having a strong support system is essential for mental wellbeing. Cultivate relationships with people you trust and who you can turn to for help and advice. Having a strong support system can provide emotional comfort and a safe place to express yourself. "
      },
      {
        title: "Focus On The Present",
        content: "It is easy to get caught in worrying about the future or ruminating on the past, but this can only increase feelings of stress. Try to stay in the present moment and focus on the here and now. "
      },
      {
        title: "Explore Your Interests",
        content: "Take some time to explore your passions and interests. Find activities that spark your curiosity and make you feel alive. Doing something you are passionate about can help to reduce stress, lift your mood, and give you purpose. "
      },
      {
        title: "Know Your Stressors",
        content: "Identifying the things that cause us stress can be helpful in managing it. Knowing what triggers your stress can help you to take steps to reduce or avoid those triggers, as well as to develop coping strategies for dealing with them. "
      },
      {
        title: "Set Reasonable Goals",
        content: "Setting reasonable goals can help to reduce stress and create a sense of accomplishment. Start with small goals and work your way up to larger ones. Having achievable goals can help to give you a sense of purpose and increase feelings of self-worth. "
      },
      {
        title: "Practice Self-Compassion",
        content: "Self-compassion is the practice of being kind and understanding to yourself and accepting your imperfections. It is an important part of improving mental wellbeing and can help to reduce feelings of stress and anxiety. "
      },
      {
        title: "Make Time For Creative Pursuits",
        content: "Taking the time to engage in creative pursuits can help to reduce stress and improve mood. Creative activities like painting, writing, music, or photography can help to express emotions and provide an escape from the worries of daily life. "
      },
      {
        title: "Practice Gratitude",
        content: "Practicing gratitude can help to open your eyes to the positive aspects of life and can improve your overall mental wellbeing. Take the time to reflect on the things that you are thankful for and to appreciate the good in your life. "
      },
      {
        title: "Volunteer",
        content: "Volunteering is an excellent way to connect with your community, make a difference in the world, and boost your mental wellbeing. Research has shown that volunteering can improve mood, increase self-esteem, and reduce stress. "
      },
    ];
  }

  //Function - Card Tapped
  public cardTapped(mindMatters) {
    this.navCtrl.push('mindMattersDetailPage', {
      mindMatters: mindMatters
    });
  }
}