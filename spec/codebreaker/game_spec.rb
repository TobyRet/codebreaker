require 'spec_helper'

module Codebreaker
	describe Game do 
		describe "#start" do 
			let(:output) { double('output').as_null_object } 

			it "sends a welcome message" do
				game = Game.new(output)

				expect(output).to receive(:puts).with('Welcome to Codebreaker!')

				game.start
			end

			it "prompts for the first guess" do 
				game = Game.new(output)

				expect(output).to receive(:puts).with('Enter guess:')

				game.start
			end
		end
	end
end