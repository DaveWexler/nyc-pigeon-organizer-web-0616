require 'pry'
# # A. Pure problem solving
# # 1. Rephrase the problem
# # 2. Break down the problem into smaller subproblems
# #   write a comment
# #   a. make an analogy to real life
# #   b. solve the problem as if you did not have computer


# # B. Translating into code
# # Think about the data and structure that you want
# #   reject information we don’t need
# #   coerce into the data structure we want
# # try to remove the abstraction by making a concrete example


# # in pigeon:
# #   steps
# #   1. new data structure to fill in
# #     a. each name is a key of the hash
# #     b. place in the relevant attributes

# #       # each name is a hash
# #         1. give me a list of unique names
# #         2. assign these names as the keys of a hash


#       # each value is a hash

#         #each value-hash is another hash
#           #the values of those hashes are arrays

# # pigeon_data = {
# #  :color => {
# #    :purple => ["Theo", "Peter Jr.", "Lucky"],
# #    :grey => ["Theo", "Peter Jr.", "Ms. K"],
# #    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
# #    :brown => ["Queenie", "Alex"]
# #  },
# #  :gender => {
# #    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
# #    :female => ["Queenie", "Ms. K"]
# #  },
# #  :lives => {
# #    "Subway" => ["Theo", "Queenie"],
# #    "Central Park" => ["Alex", "Ms. K", "Lucky"],
# #    "Library" => ["Peter Jr."],
# #    "City Hall" => ["Andrew"]
# #  }
# #}

# # def nyc_pigeon_organizer(data)
# #  # write your code here!
# #  name_key = []
# #  data.each_with_object({}) do |(category, attributes), list|
# #    attributes.each_with_object({}) do |stat, names|
# #      names.each do |name|
# #        list[name] ||= {}
# #        list[name]
# #        
# #      end
# #    name_key[name] = {category => {attribute => stat.to_s}}
      
# #     end
# #   end
# # end



# def nyc_pigeon_organizer(data)
#   #get list of names in new data structure
#   names = data[:gender][:male] + data[:gender][:female]

#   names.each_with_object({}) do |name, initial_structure|
#     # construct another hash where the keys are the attributes and the values are an array
#     attributes = data.keys
#     attributes_hash = attributes.each_with_object({}) do |attribute, attributes_hash|
#       attributes_hash[attribute] = []
#     end
#     initial_structure[name] = attributes_hash
#   end
#   # fill in the data structure
#     # fill in color - reduce the problem
#       #go through the list of colors - doing it without code
#         #for each color go through each pigeon
#           #for each pigeon add in the respective color
# # data.keys is :color, :gender, :lives
#   data.keys.each_with_object(initial_structure) do |attribute, working_hash|
#     data[attribute].each do |trait, names|
#       names.each do |name|
#         working_hash[name][:attribute] << trait.to_s
#       end
#     end
#   end
# end



def nyc_pigeon_organizer(data)
 data.each_with_object({}) do |(attribute, qualities), pigeon_list|
   qualities.each do |quality, names|
     names.each do |name|
       pigeon_list[name] ||= {}
       pigeon_list[name][attribute] ||= []
       pigeon_list[name][attribute] << quality.to_s
     end
   end
 end
end