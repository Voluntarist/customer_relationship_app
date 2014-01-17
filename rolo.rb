
class Rolodex

  def initialize
    @contacts = []
    @id = 0
  end

  def add_new_contact(name, age, email)

    @id += 1
    @contacts << Contact.new(@id, name, age, email)

  end

  def display_all_contacts
    @contacts.each do |contact|
      return contact if contact.id == @id
    end
  end


  def exit_program
    exit
  end

end