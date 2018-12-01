class CambioEmailColumna < ActiveRecord::Migration[5.0]
  def self.up    
     rename_column :searches, :email_user, :email
   end

   def self.down

   end
end
