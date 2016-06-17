# extentions aka monkey patches from lib/core_extentions folder
Dir[Rails.root.join('lib/core_extentions/*/*.rb')].each { |file| require file }