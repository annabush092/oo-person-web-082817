# your code goes here
class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account=25
    @hygiene = 8
    @happiness = 8
  end

  def hygiene=(new_num)
    if new_num > 10
      @hygiene = 10
    elsif new_num < 0
      @hygiene = 0
    else
      @hygiene = new_num
    end
  end

  def happiness=(new_num)
    if new_num > 10
      @happiness = 10
    elsif new_num < 0
      @happiness = 0
    else
      @happiness = new_num
    end
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(paycheck)
    @bank_account += paycheck
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
      when "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
         "blah blah blah blah blah"
    end
  end

end
