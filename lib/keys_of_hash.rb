require "pry"
class Hash
  def keys_of(*arguments)
    finalArray = []
    arguments.each do |value|
      #binding.pry
      if self.values.include?(value)
        self.each do |key, values|
          if values == value
            finalArray << key
          end
        end
      end
    end
    finalArray
  end
end
