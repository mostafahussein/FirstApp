class OZBKonto < ActiveRecord::Base

  set_table_name "OZBKonto"

  set_primary_key :ktoNr

  attr_accessible :ktoNr, :mnr, :ktoEinrDatum, :waehrung, :wSaldo, :pSaldo, :saldoDatum

  belongs_to :OZBPerson
    
  has_many :Buchung, :foreign_key => [:ktoNr] # Done, getestet
  has_many :KKLVerlauf, :foreign_key => [:ktoNr] # Done, getestet
  has_one :ZEKonto, :foreign_key => :ktoNr # Done, getestet
  has_one :EEKonto, :foreign_key => :ktoNr # Done, getestet

end