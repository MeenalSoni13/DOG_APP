class Dog < ApplicationRecord
    validates :name, presence: true
    after_save :log_message

  private

  def log_message
    puts "Post with title '#{name}' has been saved!"
  end
end
