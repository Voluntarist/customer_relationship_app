
class Rolodex

  def initialize
    @contacts = []
    @id = 0
  end

  def add_new_contact
    puts "Please enter a name for this contact:".color('#ff3366')
    name = gets.chomp.to_s
    puts "Please enter an age for this contact."
    age = gets
    puts "Please enter an email address"
    email = gets.chomp
    @id += 1
    @contacts << Contact.new(@id, name, age, email)
  end


  def modify_contact
    puts "Here are your contacts... Who do you want to edit? (please enter by id number)".color('#ffff00')

    display_all_contacts

    @contacts.each do |contact|
      user_id = gets.chomp
      puts "you've selected contact with the number #{user_id}"
      puts "which attribute would you like to edit? name? age? email?"
      attribute_to_be_modified = gets.chomp

      case contact
      when user_id == contact.id
        #do something
      when attribute_to_be_modified == name
        contact.name = attribute_to_be_modified
      when attribute_to_be_modified == age
        contact.age = attribute_to_be_modified
      when attribute_to_be_modified == email
        contact.email = attribute_to_be_modified
      end
    end
  end


  def display_all_contacts
     @contacts.each do |contact|
      puts "This contact's id number is #{contact.id}".color('#ff00ff')
      puts contact.name
      puts contact.age
      puts contact.email
    end
  end

  def delete_contact()
    puts "here are your contacts. enter the ID number of who should be deleted"
    display_all_contacts
    contact_to_delete = gets.to_i
    @contacts.delete_if {|contact| contact.id == contact_to_delete}
    puts "GTFO MY LIST!"
  end

end