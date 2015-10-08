# #8
 require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
# #9
    index = 0
    @entries.each do |entry|
# #10
      if name < entry.name
        break
      end
      index += 1
    end
# #11
    @entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
# #9
    ind = nil
    @entries.each do |entry, index|
# #10
      if name == entry.name
        ind = index
        break
      end
    end
# #11
    @entries.delete_at(ind.to_i)
  end
end
