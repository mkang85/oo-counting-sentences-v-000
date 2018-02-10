require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split("?").map do |ele|
      if sentence?
        ele.split(".")
      elsif exclamation?
        ele.split("!")
      end
    end
  end
end
