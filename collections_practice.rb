require "pry"



def find_cool(list)
  list.find_all do |h|
    if h.has_value?("cool")
      h
    end
  end
end

def merge_data(keys, data)

  array_1 = []
  array_2 = []

  data_1 = data[0].fetch("blake")
  blake = keys[0].merge(data_1)

  data_2 = data[0].fetch("ashley")
  ashley = keys[1].merge(data_2)

  array_1 << blake
  array_2 << ashley

  array_1 + array_2

end

def remove_non_strings(words)
  words.find_all { |word| word.is_a?(String) }
end


def begins_with_r(tools)
  tools.all? { |tool| tool.start_with?("r") }
end

def contain_a(words)
  words.find_all do |word|
    word.include?("a")
  end
end

def first_wa(words)
  words.find do |word|
    word.to_s.start_with?("wa")
  end
end

#cheated

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end

# cheated
def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end
