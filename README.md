### Simulation

To run the simulation:
1. Clone the repo
2. Go to the new folder
3. You can run `bundle` to install any dependencies (currently only `rspec`)
4. run `ruby main.rb`
5. Start typing commands

### Sample input

```
REPORT
MOVE
MOVE
REPORT
PLACE -1,0,WAT
REPORT
PLACE 2,2,EAST
MOVE
REPORT
3,2,EAST
MOVE
MOVE
REPORT
5,2,EAST
LEF
Invalid command, available commands are MOVE, PLACE, LEFT, RIGHT, REPORT
LEFT
MOVE
MOVE
REPORT
5,4,NORTH
MOVE
MOVE
MOVE
REPORT
5,5,NORTH
LEFT
MOVE
MOVE
MOVE
REPORT
2,5,WEST
LEFT
MOVE
MOVE
REPORT
2,3,SOUTH
PLACE 0,0,NORTH
REPORT
0,0,NORTH
```

### Tests

To run the tests go to the main folder and run `bundle exec rspec spec/`
