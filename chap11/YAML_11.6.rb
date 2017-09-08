# Saving and loading a method with one method each

require 'yaml'
#  First we define these fancy methods...
def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end
def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end
# ...and now weuse these two fancy methods
test_array = ['Slick shoes',
              'Bully Blinders',
              'Pinchers of peril']

filename = 'DatasGadgets.txt'

# We save it...
yaml_save test_array, filename
# We load it...
read_array = yaml_load filename

puts(read_array == test_array)
