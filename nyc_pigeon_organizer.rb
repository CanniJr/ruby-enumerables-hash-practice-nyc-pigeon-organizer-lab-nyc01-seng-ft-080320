# originial hash copied for reference
pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}




require 'pry'
  
  
def nyc_pigeon_organizer(data)
  # write your code here!	  
  results = data.each_with_object({}) do |(k, v), final_array|
    value.each do |inner_k, names|
      names.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][k]
          !final_array[name][k] = []
        end
        final_array[name][k].push(inner_k.to_s)
      end
    end
  end
end
