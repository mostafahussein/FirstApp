class ZEKonto < ActiveRecord::Base

  set_table_name "ZEKonto"

  attr_accessible :ktoNr, :eeKtoNr, :pgNr, :zeNr, :zeAbDatum, :zeEndDatum, :zeBetrag, 
                  :laufzeit, :zahlModus, :tilgRate, :ansparRate, :kduRate, :rduRate, :zeStatus
  
  set_primary_key :ktoNr
  
  belongs_to :OZBKonto
  belongs_to :EEKonto
  has_many :Buergschaft, :foreign_key => :ktoNr # Done, getestet
  belongs_to :Projektgruppe, :inverse_of => :ZEKonto, :foreign_key => :pgNr # Done, getestet
  
end