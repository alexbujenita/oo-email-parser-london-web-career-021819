class EmailParser

  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split(/[" " ,]/).reject(&:empty?).uniq
  end

end
