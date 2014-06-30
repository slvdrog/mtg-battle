class BattleValidator < ActiveModel::EachValidator
  def validate_each(record,attribute,value)
    # if 
    
    # record.errors[attribute] << (options[:message] || "is invalid") unless r
  end
end