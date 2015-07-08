# Week 2, Day 3: War! (huh, what is it good for?)

Let's implement a command line version of the card game "War".

The rules of "War," at least our version:

* Each player is playing with a full deck.
* If your card is higher than your opponent's card, you win both cards.
* If your card matches the value of your opponent's cards, you play again until the cards don't match (this is a "war') and win all the previous cards (since the start of the "war").
* The end of the game will differ between Normal Mode and Hard Mode.

## Deliverables

### Normal Mode

* A gist containing four files: `deck.rb`, `card.rb`, `player.rb` and `game.rb`
* The game is won by the player who has the most cards captured once both players have exhausted their initial decks.
* When I run `ruby game.rb` on the command line, the script will run a simulated game and output the results as such:
  ```
  Player 1 won this game after 123 rounds and survived 23 WARs.
  Would you like a rematch (y/n)?
  ```
* Notes: A round is one card played by each player. A war is described above. A rematch should kick off another simulated game. Otherwise, the program exits with a "Thanks for playing" message.

### Hard Mode

* When your deck is empty, you take all the cards you won, shuffle them, and that becomes your new deck.
* You win the game when your opponent is out of cards.
* A "war" actually involves putting the next five cards up for grabs before playing a card to see who wins.
* No methods of more than 10 lines.

### Nightmare Mode

* A test file for each our of four files that tests each method other than ones that put info to the command line.
