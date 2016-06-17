module CoreExtentions
	module String
		module Titleizing
			def titleize!
				replace titleize
			end
		end
	end
end

String.include CoreExtentions::String::Titleizing