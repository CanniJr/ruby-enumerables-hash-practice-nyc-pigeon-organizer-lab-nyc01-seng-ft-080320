# originial hash copied for reference
#pigeon_list = {
# "Theo" => {
#    :color => ["purple", "grey"],
#   :gender => ["male"],
#   :lives => ["Subway"]
# },
# "Peter Jr." => {
#   :color => ["purple", "grey"],
#   :gender => ["male"],
#   :lives => ["Library"]
# },
# "Lucky" => {
#   :color => ["purple"],
#   :gender => ["male"],
#   :lives => ["Central Park"]
# },
# "Ms. K" => {
#   :color => ["grey", "white"],
#   :gender => ["female"],
#   :lives => ["Central Park"]
# },
# "Queenie" => {
#   :color => ["white", "brown"],
#   :gender => ["female"],
#   :lives => ["Subway"]
# },
# "Andrew" => {
#   :color => ["white"],
#   :gender => ["male"],
#   :lives => ["City Hall"]
# },
# "Alex" => {
#   :color => ["white", "brown"],
#   :gender => ["male"],
#   :lives => ["Central Park"]
# }}




require 'pry'
  
  
def nyc_pigeon_organizer(data)
  # write your code here!	  
   final_results = data.each_with_object({}) do |(key, value), final_array|
     #binding.pry
    value.each do |inner_key, names|
      names.each do |name|
        #binding.pry
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          !final_array[name][key] = []
        end
        final_array[name][key].push(inner_key.to_s)
      end
    end
  end
end
