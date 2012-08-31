family_file = File.open('relationships_data.data', 'r')
parents_file = File.open('code_to_name.data', 'r')

code_to_name = Hash.new
code_to_sex = Hash.new

family_file.each do |line| 

  m = line.match(/([\w]+) = ([\w]+) ([\w]+) \(([\w])\)/)

  code_to_name[m[1].to_sym] = "#{m[2].downcase}_#{m[3].downcase}"
  code_to_sex[m[1].to_sym] = m[4].to_sym

end

relations = Array.new
parents_file.each do |line|
  m = line.match(/([\w]+)->([\w]+)/)
  relations << {parent: "#{code_to_name[m[1].to_sym]}",
                descendant: "#{code_to_name[m[2].to_sym]}"}

end

f = File.new('out.pl', 'w')
relations.each do |r|
  
  f.write("parent(#{r[:parent]}, #{r[:descendant]}).\n")
end

code_to_sex.each do |c|

  f.write("sex(#{code_to_name[c[0]]}, #{c[1].downcase}).\n")

end
f.close 


family_file.close
parents_file.close