class Url < ActiveRecord::Base

  has_many :visits

  after_create :shorten_url

  private

  def shorten_url
    update(:shortened_url => id)
  end
end