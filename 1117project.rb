#Cheatsheet.rb
#creat a menu that takes in a user input
#a 1. Command 2. IDE 3. Search 4. Quit
#b Based on user choice go to a 2nd menu
#When command line is chosen display a list of command line options
#a also supply a way for the user to get back to the main menu
#b when a command line menu option is selected display the main pages for that option
#when the IDE menu s chosen list the shortcuts options
#a when a shortcut is choesn display more infomation about the shortcut
#b also provide a way for the user to get back to the main menu
#Bonus:

#what is needed for the project
#main menu
#have a case statement for a main menu option
#command line menu
#ide menu
#search menu




#main menu options

def main_menu
  puts "Cheatsheet"
  puts "*" * 15
  puts "1. Command Line"
  puts "2. VIM"
  puts "3. Ruby"
  puts "4. Search"
  puts "5. Quit"
  puts "Make a selection: "
  i = gets.to_i

  if i == 1
    commandline
  elsif i == 2
    vim
  elsif i == 3
    ruby
  elsif i == 4
    search
  elsif i == 5
    exit
  else
    puts "Please pick any available options."
    main_menu
  end
end

#command line
# use puts `man#{cmd}`   cmd is commmand you want explanation of
def commandline
  puts "Command Line"
  puts "1. Copy - cp"
  puts "2. Move - mv"
  puts "3. Make Directory - mkdir"
  puts "4. Main Menu"
  puts "Make a selection"
  i = gets.to_i
  if i == 1
    puts `man cd`
    commandline
  elsif i == 2
    puts `man mv`
    commandline
  elsif i == 3
    puts `man mkdir`
    commandline
  elsif i == 4
    main_menu
  else
    puts "Please pick any available options."
    commandline
  end
end

#VIM
def vim
  puts "VIM"
  puts "1. Quit - :q"
  puts "2. Quit without writing - :q!"
  puts "3. Write the current file and exit - :wq"
  puts "4. main_menu"
  puts "Make a selection: "
  i = gets.to_i
  if i == 1
    puts ":q means it will quit"
    vim
  elsif i == 2
    puts ":q! means it will quit VIM without writing to file"
    vim
  elsif i == 3
    puts ":wq means it will write the current file and exit"
    vim
  elsif i == 4
    main_menu
  else
    puts "Please pick any available options."
    vim
  end
end

#sublime
def ruby
  puts "Ruby"
  puts "1. puts / prints"
  puts "2. #"
  puts "3. Operatives"
  puts "4. Main menu"
  puts "Make a selection: "
  i = gets.to_i
  if i == 1
    puts "puts: outputs to screen "
    puts "print: outputs to screen, add a line break"
    ruby
  elsif i == 2
    puts "'#' this lets you put notes in the code, and wont be used by the compiler"
    ruby
  elsif i == 3
    puts "Operatives: used for math EX: +, -, %, *, ="
    ruby
  elsif i == 4
    main_menu
  else
    puts "Please pick any available options."
    ruby
  end
end
#========search===============1
# def search
#   puts "Search for a term: "
#   searchterm = gets.chomp

#   puts searchterm
#   if searchterm == 'cp'
#     puts `man cp`
#     main_menu
#   else
#     puts "working on it."
#     main_menu
#   end
#   search
# end
#   below is an easier way to do the search function
#========search===============2
def search
  puts "*Search for a terminal term*"
  puts "1. Main Menu"
  puts "2. Quit"
  #print will let you search next to term instead of underneath.
  print "Term: "
  searchterm = gets.chomp
    if searchterm.to_i == 1
      main_menu
    elsif searchterm.to_i == 2
      exit
    else
      puts `man #{searchterm}`
      search
    end
  end
#must call the main program to get the script running. like below, calls the main_menu to start running
main_menu
