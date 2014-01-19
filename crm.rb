#CUSTOMER MANAGEMENT APPLICATION!
# --------------------------------
require 'rainbow'
require_relative 'contact'
require_relative 'rolo'


class CRM

  def initialize
    @rolo = Rolodex.new
  end


  def print_main_menu
    puts "[1] Add a new contact".color('#ff0000')
    puts "[2] Modify an existing contact".color('#00ff00')
    puts "[3] Delete a contact".color('#66ffff')
    puts "[4] Display all the contacts".color('#ff33ff')
    puts "[5] Display an attribute".color('#ff6600')
    puts "[6] Exit".color('#6666ff')
    puts "Enter a number fool:"
  end

  def main_menu
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
  end

  def exit_program
    print "now leaving the program see ya later... FOREVER!".color('#ff0000')
    exit
  end

  def call_option(user_selected)
    case
    when user_selected == 1
      @rolo.add_new_contact
      puts "\e[H\e[2J"
      print "contact successfully updated!".color('#ff6699')
      main_menu
    when user_selected == 2
      modify_existing_contact
    when user_selected == 3
      delete_contact
    when user_selected == 4
      @rolo.display_all_contacts
      main_menu
    when user_selected == 5
      display_an_attribute
    when user_selected == 6
      exit_program
    else
      puts "\e[H\e[2J"
      puts "Sorry thats not an option! Lets try that again dummy.".color('#ffffff')
      main_menu
    end
  end
end



  #list1 = Rolodex.new
  puts "***WELCOME TO YOUR CRM MANAGER***".color('#ffffff')
  a = CRM.new
  a.main_menu





