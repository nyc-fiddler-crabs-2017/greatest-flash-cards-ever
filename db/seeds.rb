require 'faker'

2.times do
  User.create(email: Faker::Internet.safe_email, password: "test")
end

Deck.create(category: "State Capitals")

Card.create(question: "What is the capital of Alabama?", answer: "Montgomery", deck_id: 1)
Card.create(question: "What is the capital of Florida?", answer: "Tallahassee", deck_id: 1)
Card.create(question: "What is the capital of Alaska?", answer: "Juneau", deck_id: 1)
Card.create(question: "What is the capital of Montana?", answer: "Helena", deck_id: 1)
Card.create(question: "What is the capital of Oregon?", answer: "Salem", deck_id: 1)
Card.create(question: "What is the capital of Georgia?", answer: "Atlanta", deck_id: 1)
Card.create(question: "What is the capital of South Dakota?", answer: "Pierre", deck_id: 1)
Card.create(question: "What is the capital of Vermont?", answer: "Montpelier", deck_id: 1)
Card.create(question: "What is the capital of Utah?", answer: "Salt Lake City", deck_id: 1)
Card.create(question: "What is the capital of Washington?", answer: "Olympia", deck_id: 1)

Deck.create(category: "Animal Facts")

Card.create(question: "What is the largest member of the cat family?" , answer: "tiger", deck_id: 2)
Card.create(question: "Which is the only bird that can fly backwards?", answer: "hummingbird", deck_id: 2)
Card.create(question: "How many stomachs does a sheep have?", answer: "4"  , deck_id: 2)
Card.create(question: "What is the fastest land animal?", answer: "cheetah", deck_id: 2)
Card.create(question: "What animal has the largest egg (laid or unlaid) in the world?", answer: "whale shark" , deck_id: 2)
Card.create(question: "What is the fastest swimming animal?" , answer: "black marlin" , deck_id: 2)
Card.create(question: "What kind of animal was Rin Tin Tin" , answer: "dog", deck_id: 2)
Card.create(question: "Tom from 'Tom & Jerry' was what kind of animal?", answer: "cat" , deck_id: 2)
Card.create(question: "I'm out of animal facts. Just type 'hi alex'.", answer: "hi alex" , deck_id: 2)
Card.create(question: "What animal rhymes with schmog?", answer: "dog", deck_id: 2)

Round.create(user_id: 1, deck_id: 1)
Round.create(user_id: 2, deck_id: 2)


Guess.create(user_input: "Montgomery", card_id: 1, first_try: true, round_id: 1)
Guess.create(user_input: "Tallahassee", card_id: 2, first_try: true, round_id: 1)
Guess.create(user_input: "Juneau", card_id: 3, first_try: true, round_id: 1)
Guess.create(user_input: "Helena", card_id: 4, first_try: true, round_id: 1)
Guess.create(user_input: "Salem", card_id: 5, first_try: true, round_id: 1)
Guess.create(user_input: "Atlanta", card_id: 6, first_try: true, round_id: 1)
Guess.create(user_input: "Pierre", card_id: 7, first_try: true, round_id: 1)
Guess.create(user_input: "Montpelier", card_id: 8, first_try: true, round_id: 1)
Guess.create(user_input: "Salt Lake City", card_id: 9, first_try: true, round_id: 1)
Guess.create(user_input: "Olympia", card_id: 10, first_try: true, round_id: 1)

Guess.create(user_input: "tiger", card_id:  11, first_try: true, round_id: 2)
Guess.create(user_input: "peacock", card_id:  12, first_try: false, round_id: 2)
Guess.create(user_input: "4", card_id:  13, first_try: true, round_id: 2)
Guess.create(user_input: "ostrich", card_id:  14, first_try: false, round_id: 2)
Guess.create(user_input: "whale shark", card_id:  15, first_try: true, round_id: 2)
Guess.create(user_input: "black marlin", card_id:  16, first_try: true, round_id: 2)
Guess.create(user_input: "dog", card_id:  17, first_try: true, round_id: 2)
Guess.create(user_input: "mouse", card_id:  18, first_try: false, round_id: 2)
Guess.create(user_input: "hi alex", card_id:  19, first_try: true, round_id: 2)
Guess.create(user_input: "dog", card_id:  20, first_try: true, round_id: 2)
Guess.create(user_input: "hummingbird", card_id:  12, first_try: false, round_id: 2)
Guess.create(user_input: "cheetah", card_id:  14, first_try: false, round_id: 2)
Guess.create(user_input: "cat", card_id:  18, first_try: false, round_id: 2)
