=begin
Yellow belt

The rover knows its landing zone.

Sample code:
Landing position: 5, 5, N
Command: ""
Final position: 5, 5, N

Green belt 	Green belt

    The rover knows its final position.
    The rover receives a list of letters as command.
    When the rover recives the command "M" it moves forward.
    When the rover recives the command "R" it turns 90 degrees right.
    When the rover recives the command "L" it turns 90 degrees left.


Sample code:
Landing position: 1, 2, N
Command: "MMM"
Final position: 1, 5, N

Red belt 	Red belt

    Now the rover has to know the world dimensions.
    If the rover passes the world's edge, it appears in the opposite world position (Planets are spherical).


Sample code:
World dimensions: 5, 5
Landing position: 1, 1, N
Command: "MMMMM"
Final position: 1, 1, N

Black belt 	Black belt

    Do not use conditionals.
    Use methods (no returns).
    Apply solid to dead.
=end

describe 'Mars_Rover' do
  
  it 'initial position' do
    mars_rover = Mars_Rover.new
    expect(mars_rover.pass_the_position([0,0])).to eq([0,0])
  end

  it 'should move one step fordward' do
    mars_rover = Mars_Rover.new
    mars_rover.commands(:f)
    expect(mars_rover.pass_the_position(:f)).to eq([0,1])
  end
  
end

class Mars_Rover

  def pass_the_position position
    [0,0]
    return [0,1] if command == :f
  end

  def commands command
  end
end
