require_relative './../rover'

describe 'rover' do
  it 'starts in a location' do
    x = :some_coordinate  #arrange
    y = :some_coordinate
    cardinal_point = :north

    rover = Rover.new(x,y, cardinal_point)        #act

    expect(rover.broadcast_position).to eq([x, y]) #assert
  end
  it 'starts facing direction on a cardinal point' do
    cardinal_point = :north
    x = :some_coordinate
    y = :some_coordinate

    rover = Rover.new(x, y, cardinal_point)

    expect(rover.broadcast_facing_direction).to eq(:north)
  end
  it 'moves forward' do
    x = 0
    y = 0
    cardinal_point = :north
    rover = Rover.new(x, y, cardinal_point)

    rover.execute([:f])

    final_position = [0, 1]
    expect(rover.broadcast_position).to eq(final_position)
  end
  it 'moves backward' do
    x = 0
    y = 0
    cardinal_point = :north
    rover = Rover.new(x, y, cardinal_point)

    rover.execute([:b])

    final_position = [0, -1]
    expect(rover.broadcast_position).to eq(final_position)
  end
  it 'rotates right' do
    x = 0
    y = 0
    cardinal_point = :north
    rover = Rover.new(x, y, cardinal_point)

    rover.execute([:r])

    expect(rover.broadcast_facing_direction).to eq(:east)
  end
  it 'rotates left' do
    x = 0
    y = 0
    cardinal_point = :north
    rover = Rover.new(x, y, cardinal_point)

    rover.execute([:l])

    expect(rover.broadcast_facing_direction).to eq(:west)
  end
end
