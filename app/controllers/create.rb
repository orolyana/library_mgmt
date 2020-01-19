require_relative '../initialize_db_ar.rb'

#create
class Create
	def rspec
		#create metod to rspec
		init = Magi.new(	:id => 69,
							:chara  => 'bob_created',
		            		:rate => 6,
		                    :description  => 'dog, test read')
		init.save
		
		#del method to rspec
		bro = Magi.find(69)
		bro.destroy
		return 
	end
	
	def term_create
		puts "== Menu Created"
		puts "enter the name of the chara..."
		chara = gets.chomp
		puts "input rate (must be a number)..."
		rate = gets.chomp.to_i
		puts "enter description..."
		desc = gets.chomp
		
		init = Magi.new( :chara  => chara,
		                    :rate => rate,
		                	:description  => desc)

		init.save

		puts "finished, already entered"
		bro = Magi.where( :chara => chara)
		puts bro.inspect
	end
end
