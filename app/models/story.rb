require 'date'
require 'active_support/all'

class Story < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  belongs_to :user
  belongs_to :place

  def dennis
    1
  end
end
