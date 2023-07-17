#!/usr/bin/python

# Mind Matters
# A Program to Help Manage Mental Health

# Import Statements
from datetime import datetime, timedelta
import json

# Helper functions
def format_time(timestamp):
    tm = datetime.fromtimestamp(timestamp)
    return tm.strftime("%d/%m/%Y %H:%M:%S")

# Load data from file
with open('data.json') as json_file:
    data = json.load(json_file)

# User List
users = data.get("users", [])

# Print User List
print("Welcome to Mind Matters! Here's the list of users:")
for user in users:
    print("- %s" % user.get("name"))

# User set up
name = input("What is your name? ")
user = None

# Check for existing user
for user_check in users:
    if user_check.get("name") == name:
        user = user_check
        break

# Create a new user
if not user:
    user = {
        "name": name,
        "moods": [],
        "activities": []
    }
    users.append(user)


# Print User Data
moods = user.get("moods", [])
activities = user.get("activities", [])
if moods or activities:
    print("\nHere's your data:")
    print("Moods:")
    for mood in moods:
        print("- %s on %s" % (mood.get("mood"), format_time(mood.get("timestamp"))))
    print("Activities:")
    for activity in activities:
        print("- %s on %s" % (activity.get("activity"), format_time(activity.get("timestamp"))))

# Ask for mood input
mood = input("\nHow are you feeling today? ")

# Store new mood
now = datetime.now()
timestamp = (now - timedelta(hours=now.hour, minutes=now.minute, seconds=now.second)).timestamp()
moods.append({
    "mood": mood,
    "timestamp": timestamp
})

# Ask for activity input
activity = input("What have you been doing today? ")

# Store new activity
timestamp = (now - timedelta(hours=now.hour, minutes=now.minute, seconds=now.second)).timestamp()
activities.append({
    "activity": activity,
    "timestamp": timestamp
})

# Update data
data["users"] = users

# Write data to file
with open('data.json', 'w') as outfile:
    json.dump(data, outfile)

# Print closing message
print("\nThanks for using Mind Matters! Your data has been stored and will be used to help you manage your mental health.")