require 'require_all'
require 'sequel'

require_rel '../db/db'


class AdminReport < Sequel::Model
  
    def load(params, type_id)
        self.user_id = params[:user_id]
        self.description = params[:description].strip
        self.subject = params[:subject].strip
        self.type_id = type_id
    end

    def validate
        super    
        errors.add('report', 'must have a user id') if user_id.nil?
        errors.add('report', 'is of invalid type') if ReportType.where(id: type_id).empty?
        errors.add('report', 'must have a subject') if subject.nil? || subject == ""
        errors.add('report', 'must have a description') if description.nil? || description == ""
      end

end
