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

#occupations
occupations = [
{ occupation: 'Actor/Actress' }, #1
{ occupation: 'Politician' }, #2
{ occupation: 'Athlete' }, #3
{ occupation: 'Singer/Musician' }, #4
{ occupation: 'Cartoon Character' }, #5
{ occupation: 'Flatiron Student' }, #6
{ occupation: 'Flatiron Staff' }, #7
{ occupation: 'Scientist' } #8
]

Occupation.create(occupations)

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
  { question: "Is the character staff at Flatiron?" },
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
  { name: "Freddie Mercury", hair_colour_id: 2, eye_colour_id: 2, glasses: "No", facial_hair: "Yes", alive: "No", gender: "male", wears_hat: "No", occupation_id: 4 },
  { name: "Anne Hathaway", hair_colour_id: 1, eye_colour_id: 3, glasses: "No", facial_hair: "No", alive: "Yes", gender: "female", wears_hat: "No", occupation_id: 1 },
  { name: "Frank Sinatra", hair_colour_id: 1, eye_colour_id: 1, glasses: "No", facial_hair: "No", alive: "No", gender: "male", wears_hat: "Yes", occupation_id: 4 },
  { name: "Ed Sheeran", hair_colour_id: 4, eye_colour_id: 1, glasses: "No", facial_hair: "Yes", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 4 },
  { name: "Martin Luther King Jr.", hair_colour_id: 2, eye_colour_id: 2, glasses: "Yes", facial_hair: "Yes", alive: "No", gender: "male", wears_hat: "No", occupation_id: 2 },

  { name: "George Clooney", hair_colour_id: 5, eye_colour_id: 3, glasses: "No", facial_hair: "Yes", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 1 },
  { name: "Julia Roberts", hair_colour_id: 1, eye_colour_id: 3, glasses: "No", facial_hair: "No", alive: "Yes", gender: "Female", wears_hat: "No", occupation_id: 1 },
  { name: "Donald Trump", hair_colour_id: 3, eye_colour_id: 1, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 2 },
  { name: "Johnny Depp", hair_colour_id: 2, eye_colour_id: 5, glasses: "No", facial_hair: "Yes", alive: "Yes", gender: "male", wears_hat: "Yes", occupation_id: 1},
  { name: "Meryl Streep", hair_colour_id: 5, eye_colour_id: 1, glasses: "Yes", facial_hair: "No", alive: "Yes", gender: "Female", wears_hat: "No", occupation_id: 1 },

  { name: "Nicole Kidman", hair_colour_id: 3, eye_colour_id: 1, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 1 },
  { name: "Harrison Ford", hair_colour_id: 5, eye_colour_id: 5, glasses: "No", facial_hair: "No", alive: "Yes", gender: "Female", wears_hat: "No", occupation_id: 1},
  { name: "Vladimir Putin", hair_colour_id: 3, eye_colour_id: 1, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 2 },
  { name: "Theresa May", hair_colour_id: 5, eye_colour_id: 1, glasses: "No", facial_hair: "No", alive: "Yes", gender: "female", wears_hat: "No", occupation_id: 2 },
  { name: "Tom Hanks", hair_colour_id: 5, eye_colour_id: 4, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 1 },

  { name: "Marilyn Monroe", hair_colour_id: 3, eye_colour_id: 3, glasses: "No", facial_hair: "No" , alive: "No", gender: "female", wears_hat: "No", occupation_id: 1 },
  { name: "Nelson Mandela", hair_colour_id: 5, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "No", gender: "male", wears_hat: "No", occupation_id: 2 },
  { name: "Muhammad Ali", hair_colour_id: 5, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "No", gender: "male", wears_hat: "No", occupation_id: 3 },
  { name: "David Beckham", hair_colour_id: 3, eye_colour_id: 5, glasses: "No", facial_hair: "Yes", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 3 },
  { name: "Albert Einstein", hair_colour_id: 5, eye_colour_id: 3, glasses: "No", facial_hair: "No", alive: "No", gender: "male", wears_hat: "No", occupation_id: 8 },

  { name: "Homer Simpson", hair_colour_id: 2, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 5 },
  { name: "Bart Simpson", hair_colour_id: 3, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 5 },
  { name: "Lisa Simpson", hair_colour_id: 3, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "female", wears_hat: "No", occupation_id: 5 },
  { name: "Marge Simpson", hair_colour_id: 6, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "female", wears_hat: "No", occupation_id: 5 },
  { name: "Maggie Simpson", hair_colour_id: 3, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "female", wears_hat: "No", occupation_id: 5 },

  { name: "Charlie Brown", hair_colour_id: 2, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "No", occupation_id: 5 },
  { name: "Eric Cartman", hair_colour_id: 1, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "Yes", occupation_id: 5 },
  { name: "Kenny McCormick", hair_colour_id: 3, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "Yes", occupation_id: 5 },
  { name: "Kyle Broflovski", hair_colour_id: 4, eye_colour_id: 2, glasses: "No", facial_hair: "No", alive: "Yes", gender: "male", wears_hat: "Yes", occupation_id: 5 },
  { name: "Stan Marsh", hair_colour_id: 2, eye_colour_id: 3, glasses: "No", facial_hair: "No", alive: "Yes", gender: "female", wears_hat: "No", occupation_id: 5 }
]
Player.create(characters)
