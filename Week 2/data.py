user = {}
user["name"] = input("Please enter your name: ")
user["age"] = input("Please enter your age: ")
user["yearsCoding"] = input("How many years have you been coding: ")

language1 = input("What was you first programming language: ")
language2 = input("Your 2nd language: ")
language3 = input("Your 3rd language: ")
languages = (language1, language2, language3)

favorites = []
favorites.append(input("What is your favorite language: "))
favorites.append(input("Your 2nd favorite: "))
favorites.append(input("your 3rd favorite: "))

firstFavorites = set(languages).intersection(set(favorites))

print(
    f"""You are {user["name"]} age: {user["age"]}
You have been coding for {user["yearsCoding"]} years.
The first languages you learned where {languages[0]}, {languages[1]}, {languages[2]}.
and your favorite languages are {favorites[0]}, {favorites[1]}, {favorites[2]}.
{firstFavorites} are both your favorites and one of the first languages you learned."""
)
