class Item < ActiveRecord::Base
  belongs_to :merchant
  
  validates_presence_of :name, :tags, :description, :price, :currency
  
  def self.search_all(search_string)
    return nil if search_string.blank?
    search_string = "%#{search_string}%"
    return find(:all, :conditions => ["name like ? or tags like ? or description like ?", search_string, search_string, search_string])
  end
  
  # searchable do
  #    text :name, :tags, :description
  #  end
end
