# your code goes here
def begins_with_r(arr)
  arr.all? { |word| word.start_with?("r") }
end

def contain_a(arr)
  arr.select { |word| word.include?("a") }
end 

def first_wa(arr)
  arr.find { |word| word[0..1] == "wa" }
end 

def remove_non_strings(arr)
  arr.delete_if { |element| element.class != String }
end 

def count_elements(arr)
  arr.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.map { |name, count| { :name=>name, :count=>count } }
end 

def merge_data(keys, data)
  merged_array = []
  keys.each do |obj|
    obj
    name_key = obj[:first_name]
    data.each do |hash|
      hash
      hash.each do |name_data, stats|
        if name_key == name_data
          merged_hash = {obj.key(name_key) => name_key}
          merged_array << merged_hash.merge(stats)
        end
      end
    end
  end
  merged_array
end

def find_cool(arr)
  new_arr = []
  arr.each do |hash|
    temperature= hash[:temperature]
    if temperature == 'cool'
      new_arr << hash
    end
  end
  new_arr
end

def organize_schools(school_hash)
  organized_hash = {}
  school_hash.each do |school_name, location_hash|
    location = location_hash[:location]
    organized_hash[location] = []
  end
  organized_hash.each do |schools_by_location|
    schools_by_location.each do |location_key, array_of_schools|
      school_hash.each do |school_name, location_hash|
        location = location_hash[:location]
        if location_key == location
          organized_hash[location_key] << school_name
        end
      end
    end
  end
  organized_hash
end