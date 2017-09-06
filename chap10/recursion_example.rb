M = 'land'
O = 'water'

world = [[O, O, O, O, O, O, O, O, O, O, 0],
         [O, O, O, O, M, M, O, O, O, O, O],
         [O, O, O, O, O, O, O, O, M, M, O],
         [O, O, O, M, O, O, O, O, O, M, O],
         [O, O, O, M, O, M, M, O, O, O, O],
         [O, O, O, O, M, M, M, M, O, O, O],
         [O, O, O, M, M, M, M, M, M, M, M],
         [O, O, O, M, M, O, M, M, M, O, O],
         [O, O, M, O, O, O, M, M, O, O, O],
         [M, M, O, O, O, M, O, O, O, O, O],
         [O, O, O, O, O, M, M, O, O, O, O]]

def continent_size(world, x, y)
  if (x < 0 || x > world.count-1 || y < 0 || y > world[0].count-1 )
    return 0
  elsif world[y][x] != 'land'
    #Either it's water or we already counted it, so we dont wont to count it
    return 0
  end
#First we count this tile tile...
size = 1
world[y][x] = 'Counted Land' #prevents returning value more than once?????
#Then we count all of the neighbouring eight tiles
#(AND ALL OF THEIR NEIGHBOURS BY WAY OF RECURSION!)
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x  , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end

puts continent_size(world, 5, 5)
