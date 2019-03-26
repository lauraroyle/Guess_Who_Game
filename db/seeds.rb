# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#hair_colours
hair = [
  { colour: 'Brown' }, #1
  { colour: 'Black' },
  { colour: 'Blonde' },
  { colour: 'Red' },
  { colour: 'Grey' } #5
]
HairColour.create(hair)

#Eye_colours
eyes = [
  { colour: 'Blue' },
  { colour: 'Black' },
  { colour: 'Brown' },
  { colour: 'Green' },
  { colour: 'Hazel' }
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
  { question: "Does the character have black hair?" },
  { question: "Does the character have brown hair?" },
  { question: "Does the character have blonde hair?" },
  { question: "Does the character have grey hair?" },
  { question: "Does the character have red hair?" },
  { question: "Does the character wear a hat?" },
  { question: "Is the character a student at Flatiron?" },
  { question: "Is the character a teacher at Flatiron?" },
  { question: "Is the character a TCF at Flatiron?" },
  { question: "Is the character a student at Flatiron?" },
  { question: "Is the character an actor/actress?" },
  { question: "Is the character a singer/musician?" },
  { question: "Is the character a political figure?" },

]
Question.create(questions)

#base game characters
characters = [
  { name: "Freddie Mercury", hair_colour_id: 2, eye_colour_id: 2, glasses: "no", facial_hair: "yes", alive: "no", gender: "male", wears_hat: "no", occupation: "singer/musician" },
  { name: "Anne Hathaway", hair_colour_id: 1, eye_colour_id: 3, glasses: "no", facial_hair: "no", alive: "yes", gender: "female", wears_hat: "no", occupation: "actor/actress" },
  { name: "Frank Sinatra", hair_colour_id: 1, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "no", gender: "male", wears_hat: "yes", occupation: "singer/musician" },
  { name: "Ed Sheeran", hair_colour_id: 4, eye_colour_id: 1, glasses: "no", facial_hair: "yes", alive: "yes", gender: "male", wears_hat: "no", occupation: "singer/musician" },
  { name: "Martin Luther King Jr.", hair_colour_id: 2, eye_colour_id: 2, glasses: "yes", facial_hair: "yes", alive: "no", gender: "male", wears_hat: "no", occupation: "politician" },

  { name: "George Clooney", hair_colour_id: 5, eye_colour_id: 3, glasses: "no", facial_hair: "yes", alive: "yes", gender: "male", wears_hat: "no", occupation: "actor/actress" },
  { name: "Julia Roberts", hair_colour_id: 1, eye_colour_id: 3, glasses: "no", facial_hair: "no", alive: "yes", gender: "Female", wears_hat: "no", occupation: "actor/actress" },
  { name: "Donald Trump", hair_colour_id: 3, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "politician" },
  { name: "Johnny Depp", hair_colour_id: 2, eye_colour_id: 5, glasses: "no", facial_hair: "yes", alive: "yes", gender: "male", wears_hat: "yes", occupation: "actor/actress" },
  { name: "Meryl Streep", hair_colour_id: 5, eye_colour_id: 1, glasses: "yes", facial_hair: "no", alive: "yes", gender: "Female", wears_hat: "no", occupation: "actor/actress" },

  { name: "Nicole Kidman", hair_colour_id: 3, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "actor/actress" },
  { name: "Harrison Ford", hair_colour_id: 5, eye_colour_id: 5, glasses: "no", facial_hair: "no", alive: "yes", gender: "Female", wears_hat: "no", occupation: "actor/actress" },
  { name: "Vladimir Putin", hair_colour_id: 3, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "politician" },
  { name: "Theresa May", hair_colour_id: 5, eye_colour_id: 1, glasses: "no", facial_hair: "no", alive: "yes", gender: "female", wears_hat: "no", occupation: "politician" },
  { name: "Tom Hanks", hair_colour_id: 5, eye_colour_id: 4, glasses: "no", facial_hair: "no", alive: "yes", gender: "male", wears_hat: "no", occupation: "actor/actress" },

  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: },
  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: },
  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: },
  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: },
  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: }

  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: },
  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: },
  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: },
  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: },
  { name: "", hair_colour_id: , eye_colour_id: , glasses: , facial_hair: , alive: , gender: , wears_hat: , occupation: }

]
