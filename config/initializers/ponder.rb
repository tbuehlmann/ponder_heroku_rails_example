module PonderHerokuRailsExample
  mattr_accessor :ponder

  self.ponder = Ponder::Thaum.new do |t|
    t.server   = 'chat.freenode.org'
    t.port     = 6667
    t.nick     = 'parrotponder'
    t.verbose  = false
    t.logging  = true
    t.logger   = Rails.logger
  end

  self.ponder.on :connect do
    self.ponder.join '#ponder'
  end

  self.ponder.on :channel, // do |data|
    self.ponder.message data[:channel], data[:message]
  end

  EM.next_tick do
    self.ponder.connect
  end
end

