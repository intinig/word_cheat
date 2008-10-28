module StringExtensions
  def signature
    self.split('').sort.join
  end
  
  def contains?(search)
   !Regexp.new(search.signature.split("").join(".*")).match(self.signature).nil?
  end
end

String.class_eval do
  include StringExtensions
end