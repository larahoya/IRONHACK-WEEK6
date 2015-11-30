tour1 = Tournament.create(name: 'Tournament 1')
tour2 = Tournament.create(name: 'Tournament 2')

player1 = Player.create(name: 'Player 1')
player2 = Player.create(name: 'Player 2')
player3 = Player.create(name: 'Player 3')
player4 = Player.create(name: 'Player 4')

tour1.players << player1
tour1.players << player2
tour2.players << player3
tour2.players << player4
