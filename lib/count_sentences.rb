require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentence = self.split(/[.?!]/)
    sentence.reject!{|x| x.empty?}
    return 0 if sentence.empty?
    sentence.count 
  end
end