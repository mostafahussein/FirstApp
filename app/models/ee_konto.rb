class EEKonto < ActiveRecord::Base

  set_table_name "EEKonto"   

  attr_accessible :ktoNr, :bankId, :kreditlimit

  set_primary_key :ktoNr

  belongs_to :OZBKonto
  belongs_to :Bankverbindung
  has_one :ZEKonto, :foreign_key => :ktoNr # Done, getestet

end