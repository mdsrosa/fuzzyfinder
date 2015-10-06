def fuzzyfinder(user_input, collection)
  suggestions = []
  pattern = user_input.split('').join('.*')
  collection.each do |item|
    if /#{pattern}/.match(item)
      suggestions.push(item)
    end
  end
  suggestions
end
