require 'require_all'
require 'sequel'

require_rel '../db/db'


class ReportType < Sequel::Model
	
	def load(name)
		self.name = name.strip
	end

end
