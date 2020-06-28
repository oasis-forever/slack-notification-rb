require './lib/slack_notification.rb'

class User
  attr_accessor :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def post_to_slack
    SlackNotifier.post("Hi, my name is #{name} and I'm #{age} years old.")
  end
end

user = User.new(name: 'Hayato Ishida', age: 29)
user.post_to_slcak
