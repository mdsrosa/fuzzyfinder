require 'enumerator'

def fuzzyfinder(user_input, collection)
  suggestions = []
  sorted = []
  pattern = user_input.split('').join('.*')
  collection.each_index do |i|
    item = collection[i]
    match_data = item.match(/#{pattern}/)
    if match_data
      last_match = Regexp.last_match
      suggestions.push([last_match.string.length, last_match.begin(0), item])
    end
  end
  suggestions.sort!.each { |e| sorted.push(e.last) }
  sorted
end
