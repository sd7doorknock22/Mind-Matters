# Mind Matters

# Program to calculate a person's weekly mental health score 

# Import necessary libraries
import numpy as np
import pandas as pd

# Define function to calculate person's weekly mental health score 
def weekly_score(mood, energy, sleep_hours):
    # Set variables for each measure
    mood_score = mood * 3.5
    energy_score = energy * 2.0
    sleep_score = sleep_hours * 0.75
    # Return the calculated mental health score
    return round(mood_score + energy_score + sleep_score, 2)

# Create a dictionary of weekly mental health measures
weekly_measures = {
 'monday': [3, 2, 6],
 'tuesday': [3, 1, 8],
 'wednesday': [4, 3, 5],
 'thursday': [2, 2, 6],
 'friday': [3, 4, 7],
 'saturday': [4, 3, 7],
 'sunday': [3, 3, 8]
}

# Convert the dictionary into a data frame
weekly_measures_df = pd.DataFrame.from_dict(weekly_measures, orient='index',
                                           columns=['mood', 'energy', 'sleep_hours'])

# Create a new column 'score' and calculate the weekly mental health score for each row
weekly_measures_df['score'] = weekly_measures_df.apply(lambda row:
                                                     weekly_score(row['mood'], row['energy'], row['sleep_hours']),axis=1)

# Print out the data frame
print(weekly_measures_df)

# Calculate the mean weekly mental health score
mean_score = np.mean(weekly_measures_df['score'])

# Print the mean weekly mental health score
print("Mean weekly mental health score: ", mean_score)