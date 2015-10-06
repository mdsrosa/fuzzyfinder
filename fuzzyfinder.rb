require 'enumerator'

def fuzzyfinder(user_input, collection)
  suggestions = []
  sorted = []
  pattern = user_input.split('').join('.*')
  collection.each_index do |i|
    item = collection[i]
    match_data = item.match(/#{pattern}/)
    if match_data
      position = Regexp.last_match.begin(0)
      suggestions.push([position, item])
    end
  end
  suggestions.sort!.each { |e| sorted.push(e[1]) }
  sorted
end
