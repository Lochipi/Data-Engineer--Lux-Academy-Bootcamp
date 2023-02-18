#Task 1 python 
# Intermediate: 
# Using Python and the appropriate Python package of your choice, access https://randomuser.me/ api and list the top 100 male users.

import requests

payload = {'gender': 'male','results':100}
r = requests.get('https://randomuser.me/api',params=payload)

print(r.url) #ouput the url https://randomuser.me/api?gender=male&results=100

# checking the code if it's correct else give an error
if r.status_code == 200:
    result= r.json()
    for p, user in enumerate(result["results"]):
        print(f"{p + 1}. {user['name']['first']} {user['name']['last']}")
else:
    print("Sorry, Inavalid Response")