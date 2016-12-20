# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Seperate input based on spaces
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # If a duplicate is found, call update()
  # Else, push <item name> to <list> with (if included) <quantity> otherwise (if not included) default value
# output: new_hash with updated entries

# Method to remove an item from the list
# input: list, item
# steps:
  # check if item exists within list
    # if so, remove
    # otherwise, return nil
# output: new_hash (potentially updated)

# Method to update the quantity of an item
# input: list, item, new_quantity
# steps:
  # check if item exists within list
    # if it does
      # update item with new_quantity overwriting the old
    # otherwise
      # return nil
# output: new_hash

# Method to print a list and make it look pretty
# input: list
# steps:
  # sort through the list
    # print a contextual sentence containing the item with its value for each item
      # "We need to get <qty> of <item>."
# output: print to console a human-readable list containing keys and values of hash_list
