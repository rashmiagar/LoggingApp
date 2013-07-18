class TypesOfService < ActiveRecord::Base
	#	  validates_uniqueness_of :feature_name, :message => I18n.t(:name_exist_error), :if => :unique_for_program
	validates_uniqueness_of :service_name
end
