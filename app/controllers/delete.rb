require_relative '../initialize_db_ar.rb'

#delete
class Delete
	def rspec
		#create metod to rspec
		init = Magi.new(	:id => 66,
							:chara  => 'bob_del',
		            		:rate => 7,
		                    :description  => 'dog, test deleted')
		init.save
		
		#del method to rspec
		bro = Magi.find(66)
		bro.destroy
		return 
	end
	
	def term_delete
		puts "== MENU DELETED"
		puts "== enter the id that you want to delete"
		y_input = gets.chomp.to_i
		init = Magi.find(y_input)
		puts init.inspect

		puts "== Are you sure you want to delete it? (y) (n)..."
		xxx = gets.chomp
		case xxx
			when "y"
				init.destroy
			puts "== deleted successfully"
				
			when "n"
				puts "== you are canceling deleted."
			else
				puts "== you are canceling deleted"
		end
	end
end


