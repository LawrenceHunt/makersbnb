class Request
  include DataMapper::Resource

  property :id, Serial

  belongs_to :user
  belongs_to :space

  property :date_from, Date
  property :date_to, Date

  property :confirmed, Boolean, default: false


  def self.confirm
    self.confirmed = true
  end

end
