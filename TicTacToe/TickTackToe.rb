class TickTackToe
	attr_reader :slots, :player_choice, :computer_choice, :win_combos
	$board_array = [1,2,3,4,5,6,7,8,9]
	@@wins =
		[]

	def play
		puts board
		print_instructions
		whosfirst
		play_loop
	end

	def play_loop
		while true
			#puts board
			puts "Where you like to go?"
			get_player_choice

			if true
				get_player_choice
			else
				puts"you lost"
			end
		end
	end

	def get_player_choice
		@player_choice =gets.chomp
		update_array
	end


	def update_array
		n = @player_choice.to_s
		$board_array = $board_array.map! {|x| x == n ? x : x}.flatten!
		puts $board_array
	
	end

	def print_instructions
		puts "Welcome to TickTackToe, Where I,THE COMPUTER, am champion"
		puts "Would you like to go first? (y or n)"
	end

	def whosfirst
		n = gets.chomp
		puts n
	end

	class Board
		attr_reader :board, :empty_cell
		@board =Array.new(9, @empty_cell)
		x1 = $board_array[0]
		x2 = $board_array[1]
		x3 = $board_array[2]
		x4 = $board_array[3]
		x5 = $board_array[4]
		x6 = $board_array[5]
		x7 = $board_array[6]
		x8 = $board_array[7]
		x9 = $board_array[8]



		def print_board
			form = <<-eos

			  ___________
			 | #{x1} | #{x2} | #{x3} |
			 |___|___|___|
			 | #{x4} | #{x5} | #{x6} |
			 |___|___|___|
			 | #{x7} | #{x8} | #{x9} |
			 |___|___|___|

			 eos
		end
	end



end

TickTackToe.new.play