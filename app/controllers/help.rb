require_relative '../initialize_db_ar.rb'

#help
class Help
	def he
		puts "== Menu Help"
		puts "<pg> : to test the connection db postgresql"
		puts "<ar> : to test the connection activerecord"
		puts "<create> : to create (fill in) new data in postgresql"
		puts "<read> : to view (fill in) data in postgresql"
		puts "<update> : to upate (fill in) data in postgresql"
		puts "<delete> : to delete (fill in) data in postgresql"
		puts "<exit> : exit"
	end
end


