class Merchant < ActiveRecord::Base
  has_many :items, :dependent => :destroy
  
  validates_presence_of :name, :address, :phone_number, :website
  
  def self.search_all(search_string)
    return nil if search_string.blank?
    search_string = "%#{search_string}%"
    return find(:all, :conditions => ["name like ? or address like ? or website like ? or phone_number like ? or tags like ?", search_string, search_string, search_string, search_string, search_string])
  end
  
  # searchable do
  #     text :name, :address, :phone_number, :website, :tags
  #   end
end
