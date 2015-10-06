class Fuzzyfinder
  def self.find(user_input, collection)
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
