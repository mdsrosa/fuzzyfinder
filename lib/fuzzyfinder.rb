class Fuzzyfinder
  def self.find(user_input, collection)
    user_input = user_input.to_s if user_input.is_a? Numeric
    temporary_suggestions, suggestions = [], []
    pattern = user_input.split('').join('.*?')
    collection.each do |item|
      matches = item.scan(/#{pattern}/)
      if matches.any?
        temporary_suggestions.push([matches.last.length, Regexp.last_match.begin(0), item])
      end
    end
    temporary_suggestions.sort!.each { |e| suggestions.push(e.last) }
    suggestions
  end
end
