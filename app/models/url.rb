class Url < ActiveRecord::Base
  after_create :shorten_url
  validates_presence_of :original_url
  belongs_to :user
  has_many :visits

private

  def shorten_url
    update(:shortened_url => id)
  end
end