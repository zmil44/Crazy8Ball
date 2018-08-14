#-----------------------------------------------------------
# Script name: Crazy8Ball_Exercise.rb
# Version 1.0
# Author: Zach Miller
# Date: April 04 2018
# Website: www.madeupsite.com
# Description: This program has the user enter a question and then displays a message like a magic 8 ball would
# last updated: April 29 2018
#-----------------------------------------------------------





class Screen
	def cls
		puts ("\n"*25)
		puts "\a"
	end

	def pause
		STDIN.gets
	end
end
	
class Ball
	attr_accessor :randomNo, :greeting, :question, :goodbye

	def get_fortune
		randomNo = 1+ rand(10)
		case randomNo
			when 1
				$prediction = "yes"
			when 2
				$prediction = "no"
			when 3
				$prediction = "maybe"
			when 4
				$prediction = "hard to tell. Try again"
			when 5
				$prediction = "unlikely"
			when 6
				$prediction = "unknown"
			when 7
				$prediction = "Sorry! I malfunctioned. Try again"
			when 8
				$prediction = "The world may never know"
			when 9
				$prediction = "You miss all the shots you don't take"
			when 10
				$prediction = "It's up to you"
		end
	end


	def say_greeting
		greeting = "\t\t Welcome to the Virtual Crazy 8-Ball game!\n\n To play this game you simply type in your question and revieve your fortune!\n\n\n\n\n\n\n\n\n\n\n\n\nPress enter to continue. \n\n: "
		print greeting
	end

	def get_question
		console_screen = Screen.new
		reply = ""
		until reply!=""	
			console_screen.cls
			question = "Type your question and press the Enter key. \n\n: "
			print question
			reply = STDIN.gets
			reply.chop!
		end
	end

	def tell_fortune()
		print "The answer is " +$prediction+ ". \n\n"
	end

	def say_goodbye
		goodbye = "Thanks for playing the Virtual Crazy 8-Ball game! Created by Zach Miller. www.bellevue.edu\n\n"
		puts goodbye
	end
end

#------------------------------------------------------------------------------

	console_screen = Screen.new
	eight_ball = Ball.new

	console_screen.cls

	eight_ball.say_greeting
	console_screen.pause

	answer = ""
	until answer == "y" || answer == "n"
		console_screen.cls
		print "would you like to have your fortune predicted? (y/n) \n\n: "
		answer = STDIN.gets
		answer.chop!
	end

	if answer == "n"
		console_screen.cls
		eight_ball.say_goodbye
	
	else
		gameOver="no"
		until gameOver =="yes"
			console_screen.cls
			eight_ball.get_question
			eight_ball.get_fortune
			console_screen.cls
			eight_ball.tell_fortune
			console_screen.pause
			
			print "press enter to ask another question or type q to quit. \n\n: "
			answer = STDIN.gets
			answer.chop!
			if answer == "q"
				gameOver = "yes"
			end
		end
	
	console_screen.cls
	eight_ball.say_goodbye
end