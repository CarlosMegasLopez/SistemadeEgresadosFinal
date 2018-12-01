desc "Eliminar Busquedas pasadas a un mes"
task :remove_old_searches => :environment do 

	Search.delete.all ["created_at < ?", 1.month.ago]
		
end