#*****************characteristics***************
characteristics = [
  { characteristic_name: 'Brown Eyes'}, #id= 1
  { characteristic_name: 'Black Eyes'}, #id = 2
  { characteristic_name: 'Blue Eyes'}, #id = 3
  { characteristic_name: 'Green Eyes'}, #id = 4
  { characteristic_name: 'Hazel Eyes'}, #id = 5
  { characteristic_name: 'Brown Hair'}, #id = 6
  { characteristic_name: 'Black Hair'}, #id = 7
  { characteristic_name: 'Blonde Hair'}, #id = 8
  { characteristic_name: 'Red Hair'}, #id = 9
  { characteristic_name: 'Grey Hair'}, #id = 10
  { characteristic_name: 'Blue Hair'}, #id = 11
  { characteristic_name: 'Actor/Actress'}, #id = 12
  { characteristic_name: 'Politician'}, #id = 13
  { characteristic_name: 'Athlete'}, #id = 14
  { characteristic_name: 'Singer/Musician'}, #id = 15
  { characteristic_name: 'Cartoon Character'}, #id = 16
  { characteristic_name: 'Flatiron Student'}, #id = 17
  { characteristic_name: 'Flatiron Staff'}, #id = 18
  { characteristic_name: 'Scientist'}, #id = 19
  { characteristic_name: 'Male'}, #id = 20
  { characteristic_name: 'Female'}, #id = 21
  { characteristic_name: 'Alive'}, #id = 22
  { characteristic_name: 'Dead'}, #id = 23
  { characteristic_name: 'Wears glasses'}, #id = 24
  { characteristic_name: 'No glasses'}, #id = 25
  { characteristic_name: 'Hat'}, #id = 26
  { characteristic_name: 'No hat'}, #id = 27
  { characteristic_name: 'Facial hair'}, #id = 28
  { characteristic_name: 'No facial hair'} #id = 29
]

Characteristic.create(questions)

#base game characters
characters = [
  { name: "Freddie Mercury" }, #id=1
  { name: "Anne Hathaway" }, #id=2
  { name: "Frank Sinatra" }, #id=3
  { name: "Ed Sheeran" }, #id=4
  { name: "Martin Luther King Jr." }, #id=5

  { name: "George Clooney" }, #id=6
  { name: "Julia Roberts" }, #id=7
  { name: "Donald Trump" }, #id=8
  { name: "Johnny Depp" }, #id=9
  { name: "Meryl Streep" }, #id=10

  { name: "Nicole Kidman" }, #id=11
  { name: "Harrison Ford" }, #id=12
  { name: "Vladimir Putin" }, #id=13
  { name: "Theresa May" }, #id=14
  { name: "Tom Hanks" }, #id=15

  { name: "Marilyn Monroe" }, #id=16
  { name: "Nelson Mandela" }, #id=17
  { name: "Muhammad Ali" }, #id=18
  { name: "David Beckham" }, #id=19
  { name: "Albert Einstein" }, #id=20

  { name: "Homer Simpson" }, #id=21
  { name: "Bart Simpson" }, #id=22
  { name: "Marge Simpson" }, #id=23
  { name: "Lisa Simpson" }, #id=24
  { name: "Maggie Simpson" }, #id=25

  { name: "Charlie Brown" }, #id=26
  { name: "Eric Cartman" }, #id=27
  { name: "Kenny McCormick" }, #id=28
  { name: "Kyle Broflovski" }, #id=29
  { name: "Stan Marsh" } #id=30
  ]
  Player.create(characters)
  #************player_characteristics for base characters***********************
  player_characteristics = [#hair, eyes, glasses, facial hair, alive, gender, hat, occupation
    {player_id: 1, characteristic_id: [7, 2, 25, 28, 23, 20, 27, 15]}, #Freddie Murcury: black hair, black eyes, no glasses, facial hair, not alive, male, no hat, singer/musician
    {player_id: 2, characteristic_id: [6, 1, 25, 29, 22, 21, 27, 12]}, #Anne Hathaway: brown hair, brown eyes, no glasses, no facial hair, alive, female, no hat, actor/actress
    {player_id: 3, characteristic_id: [6, 3, 25, 29, 23, 20, 26, 15]}, #Frank Sinatra: brown hair, blue eyes, no glasses, no facial hair, not alive, male, hat, singer/musician
    {player_id: 4, characteristic_id: [9, 3, 25, 28, 22, 20, 27, 15]}, #Ed Sheeran: red hair, blue eyes, no glasses, facial hair, alive, male, no hat, singer/musician
    {player_id: 5, characteristic_id: [7, 2, 25, 28, 23, 20, 27, 13]}, #Martin Luther King Jr.: black hair, black eyes, no glasses, facial hair, not alive, male, no hat, politician

    {player_id: 6, characteristic_id: [10, 1, 25, 28, 22, 20, 27, 12]}, #George Clooney: Grey hair, brown eyes, no glasses, facial hair, not alive, male, no hat, actor/actress
    {player_id: 7, characteristic_id: [6, 1, 25, 29, 22, 21, 27, 12]}, #Julia Roberts: brown hair, brown eyes, no glasses, no facial hair, not alive, male, no hat, actor/actress
    {player_id: 8, characteristic_id: [8, 3, 25, 29, 22, 20, 27, 13]}, #Donald Trump: blonde hair, blue eyes, no glasses, no facial hair, not alive, male, no hat, politician
    {player_id: 9, characteristic_id: [7, 5, 24, 28, 22, 20, 26, 12]}, #Johnny Depp: black hair, hazel eyes, glasses, facial hair, not alive, male, no hat, actor/actress
    {player_id: 10, characteristic_id: [10, 3, 24, 29, 22, 21, 27, 12]}, #Meryl Streep: black hair, blue eyes, glasses, no facial hair, not alive, male, no hat, actor/actress

    {player_id: 11, characteristic_id: [8, 3, 25, 29, 22, 21, 27, 12]}, # Nicole Kidman: blonde hair, blue eyes, no glasses, no facial hair, alive, female, no hat, actor/actress
    {player_id: 12, characteristic_id: [10, 5, 25, 29, 22, 20, 27, 12]}, # Harrison Ford: Grey hair, hazel eyes, no glasses, no facial hair, alive, male, no hat, actor/actress
    {player_id: 13, characteristic_id: [8, 3, 25, 29, 22, 20, 27, 13]}, # Vladimir Putin: blonde hair, blue eyes, no glasses, no facial hair, alive, male, no hat, politician
    {player_id: 14, characteristic_id: [10, 3, 25, 29, 22, 21, 27, 13]}, # Theresa May: grey hair, blue eyes, no glasses, no facial hair, alive, female, no hat, politician
    {player_id: 15, characteristic_id: [10, 4, 25, 29, 22, 20, 27, 12]}, # Tom Hanks: grey hair, green eyes, no glasses, no facial hair, alive, male, no hat, actor/actress

    {player_id: 16, characteristic_id: [8, 3, 25, 29, 23, 21, 27, 12]}, #Marilyn Monroe: blonde hair, blue eyes, no glasses, no facial hair, not alive, female, no hat, actor/actress
    {player_id: 17, characteristic_id: [7, 2, 25, 29, 23, 20, 27, 13]}, #Neslon Mandela: black hair, black eyes, no glasses, no facial hair, not alive, male, no hat, politician
    {player_id: 18, characteristic_id: [7, 2, 25, 29, 23, 20, 27, 14]}, # Muhammad Ali: black hair, black eyes, no glasses, no facial hair, not alive, male, no hat, Athlete
    {player_id: 19, characteristic_id: [8, 5, 25, 29, 22, 20, 27, 14]}, # David Beckham: blonde hair, hazel eyes, no glasses, facial hair, alive, male, no hat, athlete
    {player_id: 20, characteristic_id: [10, 1, 25, 29, 23, 20, 27, 19]}, # Albert Einstein: grey hair, brown eyes, no glasses, no facial hair, not alive, male, no hat, scientist
#hair, eyes, glasses, facial hair, alive, gender, hat, occupation
    {player_id: 21, characteristic_id: [7, 2, 25, 28, 22, 20, 27, 16]}, #homer simpson: black hair, black eyes, no glasses, no facial hair, alive, male, no hat, cartoon
    {player_id: 22, characteristic_id: [8, 2, 25, 28, 22, 20, 27, 16]}, #bart simpson: blonde hair, black eyes, no glasses, no facial hair, alive, male, no hat, cartoon
    {player_id: 23, characteristic_id: [11, 2, 25, 29, 22, 21, 27, 16]}, # marge simpson: blue hair, black eyes, no glasses, no facial hair, alive, female, no hat, cartoon
    {player_id: 24, characteristic_id: [8, 2, 25, 29, 22, 21, 27, 16]}, # lisa simpson: blonde hair, black eyes, no glasses, no facial hair, alive, female, no hat, cartoon
    {player_id: 25, characteristic_id: [8, 2, 25, 29, 22, 21, 27, 16]}, # maggie simpson: blonde hair, black eyes, no glasses, no facial hair, alive, female, no hat, cartoon

    {player_id: 26, characteristic_id: [7, 2, 25, 29, 22, 20, 27, 16]}, #Charlie Brown: black hair, black eyes, no glasses, no facial hair, alive, male, no hat, cartoon
    {player_id: 27, characteristic_id: [6, 2, 25, 29, 22, 20, 26, 16]}, #Eric Cartman: black hair, black eyes, no glasses, no facial hair, alive, male, hat, cartoon
    {player_id: 28, characteristic_id: [8, 2, 25, 29, 22, 20, 26, 16]}, #kenny mccormick: blonde hair, black eyes, no glasses, no facial hair, alive, male, hat, cartoon
    {player_id: 29, characteristic_id: [9, 2, 25, 29, 22, 20, 26, 16]}, #kyle broflovski: red hair, black eyes, no glasses, no facial hair, alive, male, hat, cartoon
    {player_id: 30, characteristic_id: [7, 2, 25, 29, 22, 20, 26, 16]}, #stan marsh: black hair, black eyes, no glasses, no facial hair, alive, male, hat, cartoon
  ]
  PlayerCharacteristic.create()
#*******************questions*********************
questions = [
  { question: "Is the character male?", characteristic_id: 20},
  { question: "Is the character female?", characteristic_id: 21},
  { question: "Is the character alive?", characteristic_id: 22},
  { question: "Is the character deceased?", characteristic_id: 23},
  { question: "Does the character wear glasses?", characteristic_id: 24},
  { question: "Does the character have facial hair?", characteristic_id: 28},
  { question: "Does the character have green eyes?", characteristic_id: 4},
  { question: "Does the character have blue eyes?", characteristic_id: 3},
  { question: "Does the character have brown eyes?", characteristic_id: 1},
  { question: "Does the character have black eyes?", characteristic_id: 2},
  { question: "Does the character have hazel eyes?", characteristic_id: 5},
  { question: "Does the character have black hair?", characteristic_id: 7},
  { question: "Does the character have brown hair?", characteristic_id: 6},
  { question: "Does the character have blonde hair?", characteristic_id: 8},
  { question: "Does the character have grey hair?", characteristic_id: 10},
  { question: "Does the character have red hair?", characteristic_id: 9},
  { question: "Does the character have blue hair?", characteristic_id: 11},
  { question: "Does the character wear a hat?", characteristic_id: 26},
  { question: "Is the character a student at Flatiron?", characteristic_id: 17},
  { question: "Is the character staff at Flatiron?", characteristic_id: 18},
  { question: "Is the character an actor/actress?", characteristic_id: 12},
  { question: "Is the character a singer/musician?", characteristic_id: 15},
  { question: "Is the character a political figure?", characteristic_id: 13},
  { question: "Is the character an athlete?", characteristic_id: 14},
  { question: "Is the character a scientist?", characteristic_id: 19},
  { question: "Is the character a cartoon character?", characteristic_id: 16},

]
Question.create(questions)
