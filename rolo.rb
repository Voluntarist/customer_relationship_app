
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
    @contacts << Contact.new(name, age, email)
  end



  def display_all_contacts
    @contacts.each do |contact|
      puts "this contact's id # is #{@id}"
      puts contact.name
      puts contact.age
      puts contact.email
    end
  end


end