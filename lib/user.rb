require './concern/slack_notification.rb'

class User
  attr_accessor :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end
end

user = User.new(name: 'Hayato Ishida', age: 29)
SlackNotifier.post("Hi, my name is #{user.name} and I'm #{user.age} years old.")
