require './lib/imgin.rb'


100.times do
  puts 'Salutations master, enter your random image desires or q to exit:'
  query = gets.chomp
  break if query =='q'
  if query == 'birthday cake'
    system("open", "http://devbootcamp.com/imgs/teaching-large-sherif.png")
  else
    system("open", "http://#{Imgin::Image.get(query)}")
  end
end