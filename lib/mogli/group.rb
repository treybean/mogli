module Mogli
  class Group < Model
    define_properties :id, :name, :description, :link, :privacy, :updated_time
    
    hash_populating_accessor :owner, "User", "Page"
    hash_populating_accessor :venue, "Address"
    
    has_association :feed, "Post"
    has_association :members, "User"
  end
end