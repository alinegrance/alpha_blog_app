class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum: 100}
  validates :description, presence: true, length: {minimum: 10, maximum: 300} #everytime i change the model i can run reload! on the console to update
end