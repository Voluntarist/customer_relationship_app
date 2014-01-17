#CUSTOMER MANAGEMENT APPLICATION!
# ---------------------------------
require_relative 'contact'
require_relative 'rolo'
require 'rainbow'

class CRM

  def initialize(name_being_passed_in)
    @name = name_being_passed_in
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

  def call_option(user_selected)
    case
    when user_selected == 1
      add_new_contact
    when user_selected == 2
      modify_existing_contact
    when user_selected == 3
      delete_contact
    when user_selected == 4
      display_all_contacts
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


  a = CRM.new("list")
  list1 = Rolodex.new
  puts "***WELCOME TO YOUR CRM MANAGER***".color('#ffffff')
  a.main_menu





