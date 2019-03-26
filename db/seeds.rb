# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#hair_colours
hair = [
  { colour: 'Brown' }, #1
  { colour: 'Black' }, #2
  { colour: 'Blonde' }, #3
  { colour: 'Red' }, #4
  { colour: 'Grey' }, #5
  { colour: 'Blue' } #6
]
HairColour.create(hair)

#Eye_colours
eyes = [
  { colour: 'Blue' }, #1
  { colour: 'Black' }, #2
  { colour: 'Brown' }, #3
  { colour: 'Green' }, #4
  { colour: 'Hazel' } #5
]
EyeColour.create(eyes)

#questions
questions = [
  { question: "Is the character male?" },
  { question: "Is the character female?" },
  { question: "Is the character alive?" },
  { question: "Is the character deceased?" },
  { question: "Does the character wear glasses?" },
  { question: "Does the character have facial hair?" },
  { question: "Does the character have green eyes?" },
  { question: "Does the character have blue eyes?" },
  { question: "Does the character have brown eyes?" },
  { question: "Does the character have black eyes?" },
  { question: "Does the character have hazel eyes?" },
  { question: "Does the character have black hair?" },
  { question: "Does the character have brown hair?" },
  { question: "Does the character have blonde hair?" },
  { question: "Does the character have grey hair?" },
  { question: "Does the character have red hair?" },
  { question: "Does the character have blue hair?" },
  { question: "Does the character wear a hat?" },
  { question: "Is the character a student at Flatiron?" },
  { question: "Is the character a teacher at Flatiron?" },
  { question: "Is the character a TCF at Flatiron?" },
  { question: "Is the character a student at Flatiron?" },
  { question: "Is the character an actor/actress?" },
  { question: "Is the character a singer/musician?" },
  { question: "Is the character a political figure?" },
  { question: "Is the character an athlete?" },
  { question: "Is the character a scientist?" },
  { question: "Is the character a cartoon character?" },

]
Question.create(questions)

#base game characters
characters = [
  { name: "Freddie Mercury", hair_colour_id: 2, eye_colour_id: 2, glasses: "no", facial_hair: "yes", alive: "no", gender: "male", wears_hat: "no", occupation: "Singer/Musician" },
  { name: "Anne Hathaway", hair_colour_id: 1, eye_colour_id: 3, glasses: "no", facial_hair: "no", alive: "yes", gender: "female", wears_hat: "no", occupation: "Actor/Actress" },
  { name: "Frank Sinatra", hair_colour_id: 1, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "no", gender: "male", wears_hat: "yes", occupation: "Singer/Musician" },
  { name: "Ed Sheeran", hair_colour_id: 4, eye_colour_id: 1, glasses: "no", facial_hair: "yes", alive: "yes", gender: "male", wears_hat: "no", occupation: "Singer/Musician" },
  { name: "Martin Luther King Jr.", hair_colour_id: 2, eye_colour_id: 2, glasses: "yes", facial_hair: "yes", alive: "no", gender: "male", wears_hat: "no", occupation: "Politician" },

  { name: "George Clooney", hair_colour_id: 5, eye_colour_id: 3, glasses: "no", facial_hair: "yes", alive: "yes", gender: "male", wears_hat: "no", occupation: "Actor/Actress" },
  { name: "Julia Roberts", hair_colour_id: 1, eye_colour_id: 3, glasses: "no", facial_hair: "no", alive: "yes", gender: "Female", wears_hat: "no", occupation: "Actor/Actress" },
  { name: "Donald Trump", hair_colour_id: 3, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "Politician" },
  { name: "Johnny Depp", hair_colour_id: 2, eye_colour_id: 5, glasses: "no", facial_hair: "yes", alive: "yes", gender: "male", wears_hat: "yes", occupation: "Actor/Actress" },
  { name: "Meryl Streep", hair_colour_id: 5, eye_colour_id: 1, glasses: "yes", facial_hair: "no", alive: "yes", gender: "Female", wears_hat: "no", occupation: "Actor/Actress" },

  { name: "Nicole Kidman", hair_colour_id: 3, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "Actor/Actress" },
  { name: "Harrison Ford", hair_colour_id: 5, eye_colour_id: 5, glasses: "no", facial_hair: "no", alive: "yes", gender: "Female", wears_hat: "no", occupation: "Actor/Actress" },
  { name: "Vladimir Putin", hair_colour_id: 3, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "Politician" },
  { name: "Theresa May", hair_colour_id: 5, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "yes", gender: "female", wears_hat: "no", occupation: "Politician" },
  { name: "Tom Hanks", hair_colour_id: 5, eye_colour_id: 4, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "Actor/Actress" },

  { name: "Marilyn Monroe", hair_colour_id: 3, eye_colour_id: 3, glasses: "no", facial_hair: "no" , alive: "no", gender: "female", wears_hat: "no", occupation: "Actor/Actress" },
  { name: "Nelson Mandela", hair_colour_id: 5, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "no", gender: "male", wears_hat: "no", occupation: "Politician" },
  { name: "Muhammad Ali", hair_colour_id: 5, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "no", gender: "male", wears_hat: "no", occupation: "Athlete" },
  { name: "David Beckham", hair_colour_id: 3, eye_colour_id: 5, glasses: "no", facial_hair: "yes", alive: "yes", gender: "male", wears_hat: "no", occupation: "Athlete" },
  { name: "Albert Einstein", hair_colour_id: 5, eye_colour_id: 3, glasses: "no", facial_hair: "no", alive: "no", gender: "male", wears_hat: "no", occupation: "Scientist" },

  { name: "Homer Simpson", hair_colour_id: 2, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "Cartoon Character" },
  { name: "Bart Simpson", hair_colour_id: 3, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "Cartoon Character"},
  { name: "Lisa Simpson", hair_colour_id: 3, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "female", wears_hat: "no", occupation: "Cartoon Character"},
  { name: "Marge Simpson", hair_colour_id: 6, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "female", wears_hat: "no", occupation: "Cartoon Character"},
  { name: "Maggie Simpson", hair_colour_id: 3, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "female", wears_hat: "no", occupation: "Cartoon Character"},

  { name: "Charlie Brown", hair_colour_id: 2, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "Cartoon Character" },
  { name: "Eric Cartman", hair_colour_id: 1, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "yes", occupation: "Cartoon Character"},
  { name: "Kenny McCormick", hair_colour_id: 3, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "yes", occupation: "Cartoon Character"},
  { name: "Kyle Broflovski", hair_colour_id: 4, eye_colour_id: 2, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "yes", occupation: "Cartoon Character"},
  { name: "Stan Marsh", hair_colour_id: 2, eye_colour_id: 3, glasses: "no", facial_hair: "no", alive: "yes", gender: "female", wears_hat: "no", occupation: "Cartoon Character"}
]

Player.create(characters)
