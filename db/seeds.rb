# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Association.create(id: "40", nombre_empresa: "Prueba Seed 2", contacto_empresa: "yo 2", celular_empresa: "7445847415", 
				   #telefono_empresa: "4853424", correo_electronico_empresa: "empresa2@hotmail.com")

#Career.create(id: "", descripcion_carrera: "")

#Generation.create(career_id: "", descripcion_generacion: "")


=begin
User.create!(id: "65", type_user: "Administrador", 
			 career_id: "2", generation_id: "10", 
			 email: "pruebaseed@hotmail.com", 
			 password: "usuariopruebaseed", 
			 password_confirmation: "usuariopruebaseed", 
			 encrypted_password: "",
			 reset_password_token: nil,
			 reset_password_sent_at: nil,
			 remember_created_at: nil,
			 sign_in_count: "1",
			 current_sign_in_at: "2015-02-06 14:03:44",
			 last_sign_in_at: "2015-02-06 14:03:44",
			 current_sign_in_ip: "127.0.0.1",
			 last_sign_in_ip: "127.0.0.1",
			 created_at: "2018-02-06 14:03:44",
			 updated_at: "2018-02-06 14:03:44")
=end       
     
	
Career.destroy_all
Generation.destroy_all
User.destroy_all
Category.destroy_all

Career.create(id: "1", descripcion_carrera: "Derecho")
Career.create(id: "2", descripcion_carrera: "Administración")
Career.create(id: "3", descripcion_carrera: "Contaduría")
Career.create(id: "4", descripcion_carrera: "Turismo")
Career.create(id: "5", descripcion_carrera: "Gastronomía")
Career.create(id: "6", descripcion_carrera: "Nutrición")
Career.create(id: "7", descripcion_carrera: "Arquitectura")
Career.create(id: "8", descripcion_carrera: "Ingeniería en Computación")
Career.create(id: "9", descripcion_carrera: "Comunicación y Relaciones Públicas")
Career.create(id: "10", descripcion_carrera: "Psicología")
Career.create(id: "11", descripcion_carrera: "Lenguas Extranjeras")


Generation.create(career_id: "1", descripcion_generacion: "1991 - 1996")
Generation.create(career_id: "1", descripcion_generacion: "1992 - 1997")
Generation.create(career_id: "1", descripcion_generacion: "1993 - 1998")
Generation.create(career_id: "1", descripcion_generacion: "1994 - 1999")
Generation.create(career_id: "1", descripcion_generacion: "1995 - 2000")
Generation.create(career_id: "1", descripcion_generacion: "1996 - 2001")
Generation.create(career_id: "1", descripcion_generacion: "1997 - 2002")
Generation.create(career_id: "1", descripcion_generacion: "1998 - 2003")
Generation.create(career_id: "1", descripcion_generacion: "1999 - 2004")
Generation.create(career_id: "1", descripcion_generacion: "2000 - 2005")
Generation.create(career_id: "1", descripcion_generacion: "2001 - 2006")
Generation.create(career_id: "1", descripcion_generacion: "2002 - 2007")
Generation.create(career_id: "1", descripcion_generacion: "2003 - 2008")
Generation.create(career_id: "1", descripcion_generacion: "2004 - 2009")
Generation.create(career_id: "1", descripcion_generacion: "2005 - 2010")
Generation.create(career_id: "1", descripcion_generacion: "2006 - 2011")
Generation.create(career_id: "1", descripcion_generacion: "2007 - 2012")
Generation.create(career_id: "1", descripcion_generacion: "2009 - 2013")
Generation.create(career_id: "1", descripcion_generacion: "2010 - 2014")
Generation.create(career_id: "1", descripcion_generacion: "2011 - 2016")
Generation.create(career_id: "1", descripcion_generacion: "2012 - 2017")
Generation.create(career_id: "1", descripcion_generacion: "2013 - 2018")

Generation.create(career_id: "1", descripcion_generacion: "Derecho SUA 2003 - 2008")
Generation.create(career_id: "1", descripcion_generacion: "Derecho SUA 2005 - 2010")



Generation.create(career_id: "2", descripcion_generacion: "1992 - 1996")
Generation.create(career_id: "2", descripcion_generacion: "1992 - 1997")
Generation.create(career_id: "2", descripcion_generacion: "1993 - 1998")
Generation.create(career_id: "2", descripcion_generacion: "1994 - 1999")
Generation.create(career_id: "2", descripcion_generacion: "1995 - 2000")
Generation.create(career_id: "2", descripcion_generacion: "1996 - 2001")
Generation.create(career_id: "2", descripcion_generacion: "1997 - 2002")
Generation.create(career_id: "2", descripcion_generacion: "1998 - 2002")
Generation.create(career_id: "2", descripcion_generacion: "1999 - 2003")
Generation.create(career_id: "2", descripcion_generacion: "2000 - 2004")
Generation.create(career_id: "2", descripcion_generacion: "2001 - 2005")
Generation.create(career_id: "2", descripcion_generacion: "2002 - 2006")
Generation.create(career_id: "2", descripcion_generacion: "2003 - 2007")
Generation.create(career_id: "2", descripcion_generacion: "2004 - 2008")
Generation.create(career_id: "2", descripcion_generacion: "2005 - 2009")
Generation.create(career_id: "2", descripcion_generacion: "2006 - 2010")
Generation.create(career_id: "2", descripcion_generacion: "2007 - 2011")
Generation.create(career_id: "2", descripcion_generacion: "2008 - 2012")
Generation.create(career_id: "2", descripcion_generacion: "2009 - 2013")
Generation.create(career_id: "2", descripcion_generacion: "2010 - 2014")
Generation.create(career_id: "2", descripcion_generacion: "2011 - 2015")
Generation.create(career_id: "2", descripcion_generacion: "2012 - 2016")
Generation.create(career_id: "2", descripcion_generacion: "2013 - 2017")

Generation.create(career_id: "2", descripcion_generacion: "Administración SUA 2002 - 2006")
Generation.create(career_id: "2", descripcion_generacion: "Administración SUA 2003 - 2007")
Generation.create(career_id: "2", descripcion_generacion: "Administración SUA 2004 - 2008")
Generation.create(career_id: "2", descripcion_generacion: "Administración SUA 2005 - 2009")
Generation.create(career_id: "2", descripcion_generacion: "Administración SUA 2006 - 2010")



Generation.create(career_id: "3", descripcion_generacion: "1992 - 1996")
Generation.create(career_id: "3", descripcion_generacion: "1992 - 1997")
Generation.create(career_id: "3", descripcion_generacion: "1993 - 1998")
Generation.create(career_id: "3", descripcion_generacion: "1994 - 1999")
Generation.create(career_id: "3", descripcion_generacion: "1995 - 2000")
Generation.create(career_id: "3", descripcion_generacion: "1996 - 2001")
Generation.create(career_id: "3", descripcion_generacion: "1997 - 2002")
Generation.create(career_id: "3", descripcion_generacion: "1998 - 2002")
Generation.create(career_id: "3", descripcion_generacion: "1999 - 2003")
Generation.create(career_id: "3", descripcion_generacion: "2000 - 2004")
Generation.create(career_id: "3", descripcion_generacion: "2001 - 2005")
Generation.create(career_id: "3", descripcion_generacion: "2002 - 2006")
Generation.create(career_id: "3", descripcion_generacion: "2003 - 2007")
Generation.create(career_id: "3", descripcion_generacion: "2004 - 2008")
Generation.create(career_id: "3", descripcion_generacion: "2005 - 2009")
Generation.create(career_id: "3", descripcion_generacion: "2006 - 2010")
Generation.create(career_id: "3", descripcion_generacion: "2007 - 2011")
Generation.create(career_id: "3", descripcion_generacion: "2008 - 2012")
Generation.create(career_id: "3", descripcion_generacion: "2009 - 2013")
Generation.create(career_id: "3", descripcion_generacion: "2013 - 2017")


Generation.create(career_id: "4", descripcion_generacion: "1992 - 1997")
Generation.create(career_id: "4", descripcion_generacion: "1993 - 1998")
Generation.create(career_id: "4", descripcion_generacion: "1994 - 1999")
Generation.create(career_id: "4", descripcion_generacion: "1995 - 2000")
Generation.create(career_id: "4", descripcion_generacion: "1996 - 2001")
Generation.create(career_id: "4", descripcion_generacion: "1997 - 2002")
Generation.create(career_id: "4", descripcion_generacion: "1998 - 2002")
Generation.create(career_id: "4", descripcion_generacion: "1999 - 2003")
Generation.create(career_id: "4", descripcion_generacion: "2000 - 2004")
Generation.create(career_id: "4", descripcion_generacion: "2001 - 2005")
Generation.create(career_id: "4", descripcion_generacion: "2002 - 2006")
Generation.create(career_id: "4", descripcion_generacion: "2003 - 2007")
Generation.create(career_id: "4", descripcion_generacion: "2004 - 2008")
Generation.create(career_id: "4", descripcion_generacion: "2005 - 2009")
Generation.create(career_id: "4", descripcion_generacion: "2006 - 2010")
Generation.create(career_id: "4", descripcion_generacion: "2007 - 2011")
Generation.create(career_id: "4", descripcion_generacion: "2008 - 2012")
Generation.create(career_id: "4", descripcion_generacion: "2009 - 2013")
Generation.create(career_id: "4", descripcion_generacion: "2010 - 2014")
Generation.create(career_id: "4", descripcion_generacion: "2011 - 2015")
Generation.create(career_id: "4", descripcion_generacion: "2013 - 2017")



Generation.create(career_id: "5", descripcion_generacion: "2007 - 2010")
Generation.create(career_id: "5", descripcion_generacion: "2008 - 2011")
Generation.create(career_id: "5", descripcion_generacion: "2009 - 2012")
Generation.create(career_id: "5", descripcion_generacion: "2010 - 2013")
Generation.create(career_id: "5", descripcion_generacion: "2011 - 2014")
Generation.create(career_id: "5", descripcion_generacion: "2012 - 2015")
Generation.create(career_id: "5", descripcion_generacion: "2013 - 2016")
Generation.create(career_id: "5", descripcion_generacion: "2014 - 2017")

Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2002 - 2006")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2005 - 2007")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2006 - 2008")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2007 - 2009")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2008 - 2010")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2009 - 2011")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2010 - 2012")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2011 - 2013")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2012 - 2014")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2013 - 2015")
Generation.create(career_id: "5", descripcion_generacion: "Profesional Asociado en Gastronomía 2015 - 2017")



Generation.create(career_id: "6", descripcion_generacion: "2012 - 2016")
Generation.create(career_id: "6", descripcion_generacion: "2013 - 2017")



Generation.create(career_id: "7", descripcion_generacion: "1993 - 1997 José Francisco Ruiz Massieu")
Generation.create(career_id: "7", descripcion_generacion: "1993 - 1997 María José Ordorika Sacristán")
Generation.create(career_id: "7", descripcion_generacion: "1994 - 1998 Arq. Ernesto José Velasco León")
Generation.create(career_id: "7", descripcion_generacion: "1994 - 1998 Arq. Javier G. Morales Burgart")
Generation.create(career_id: "7", descripcion_generacion: "1994 - 1999 Ing. Jorge Gallegos Contreras")
Generation.create(career_id: "7", descripcion_generacion: "1995 - 1999 Arq. Francisco Javier Cabrera Betancourt")
Generation.create(career_id: "7", descripcion_generacion: "1995 - 2000 Arq. Federico Zagal León")
Generation.create(career_id: "7", descripcion_generacion: "1996 - 2001 Arq. Jorge Madrigal García")
Generation.create(career_id: "7", descripcion_generacion: "1997 - 2002 Arq. Agustín Hernández Navarro")
Generation.create(career_id: "7", descripcion_generacion: "1998 - 2003 Arq. Ramón Fares del Rio")
Generation.create(career_id: "7", descripcion_generacion: "1999 - 2004 Arq. Miguel Ángel Sagaón Sandoval")
Generation.create(career_id: "7", descripcion_generacion: "2000 - 2005 Arq. Jorge Alberto Coronel Fuentes")
Generation.create(career_id: "7", descripcion_generacion: "2001 - 2006 Arq. Salvador Guerrero Alonso")
Generation.create(career_id: "7", descripcion_generacion: "2002 - 2007 Arq. Miguel Ernesto Castañeda Espindola")
Generation.create(career_id: "7", descripcion_generacion: "2003 - 2008 Arq. Blanca Esthela Alpuing Rodriguez")
Generation.create(career_id: "7", descripcion_generacion: "2004 - 2009 Arq. Francisco Javier Cabrera Betancourt")
Generation.create(career_id: "7", descripcion_generacion: "2005 - 2010 Arq. Juan José Flores Mercado")
Generation.create(career_id: "7", descripcion_generacion: "2006 - 2011 Arq. Blanca Esthela Alpuing Rodriguez")
Generation.create(career_id: "7", descripcion_generacion: "2007 - 2012 Arq. Ramón Fares del Rio")
Generation.create(career_id: "7", descripcion_generacion: "2008 - 2013 Antonio Gaudí")
Generation.create(career_id: "7", descripcion_generacion: "2009 - 2014 Arq. Humberto Márquez Olea")
Generation.create(career_id: "7", descripcion_generacion: "2010 - 2015 Arq. Gustavo Rodríguez Espinoza")
Generation.create(career_id: "7", descripcion_generacion: "2011 - 2016")
Generation.create(career_id: "7", descripcion_generacion: "2012 - 2017")



Generation.create(career_id: "8", descripcion_generacion: "1994 - 1999")
Generation.create(career_id: "8", descripcion_generacion: "1995 - 2000")
Generation.create(career_id: "8", descripcion_generacion: "1996 - 2001")
Generation.create(career_id: "8", descripcion_generacion: "1997 - 2002")
Generation.create(career_id: "8", descripcion_generacion: "1998 - 2003")
Generation.create(career_id: "8", descripcion_generacion: "1999 - 2004")
Generation.create(career_id: "8", descripcion_generacion: "2000 - 2005")
Generation.create(career_id: "8", descripcion_generacion: "2001 - 2006")
Generation.create(career_id: "8", descripcion_generacion: "2002 - 2007")
Generation.create(career_id: "8", descripcion_generacion: "2003 - 2008")
Generation.create(career_id: "8", descripcion_generacion: "2004 - 2009")
Generation.create(career_id: "8", descripcion_generacion: "2005 - 2010")
Generation.create(career_id: "8", descripcion_generacion: "2006 - 2010")
Generation.create(career_id: "8", descripcion_generacion: "2007 - 2011")
Generation.create(career_id: "8", descripcion_generacion: "2008 - 2012")
Generation.create(career_id: "8", descripcion_generacion: "2009 - 2013")
Generation.create(career_id: "8", descripcion_generacion: "2010 - 2014")
Generation.create(career_id: "8", descripcion_generacion: "2011 - 2015")
Generation.create(career_id: "8", descripcion_generacion: "2012 - 2016 José Mario Martínez Castro")
Generation.create(career_id: "8", descripcion_generacion: "2013 - 2017")
Generation.create(career_id: "8", descripcion_generacion: "2014 - 2018")



Generation.create(career_id: "8", descripcion_generacion: "Informatica 1992 - 1997")
Generation.create(career_id: "8", descripcion_generacion: "Informatica 1993 - 1997")
Generation.create(career_id: "8", descripcion_generacion: "Informatica 1999 - 2003")
Generation.create(career_id: "8", descripcion_generacion: "Informatica 2000 - 2004")

Generation.create(career_id: "8", descripcion_generacion: "Telecomunicaciones 2001 - 2006")
Generation.create(career_id: "8", descripcion_generacion: "Telecomunicaciones 2002 - 2007")
Generation.create(career_id: "8", descripcion_generacion: "Telecomunicaciones 2003 - 2008")
Generation.create(career_id: "8", descripcion_generacion: "Telecomunicaciones 2004 - 2009")
Generation.create(career_id: "8", descripcion_generacion: "Telecomunicaciones 2005 - 2010")
Generation.create(career_id: "8", descripcion_generacion: "Telecomunicaciones 2006 - 2010")



Generation.create(career_id: "9", descripcion_generacion: "1992 - 1996")
Generation.create(career_id: "9", descripcion_generacion: "1993 - 1997")
Generation.create(career_id: "9", descripcion_generacion: "1994 - 1998")
Generation.create(career_id: "9", descripcion_generacion: "1995 - 1999")
Generation.create(career_id: "9", descripcion_generacion: "1996 - 2000")
Generation.create(career_id: "9", descripcion_generacion: "1997 - 2001")
Generation.create(career_id: "9", descripcion_generacion: "1998 - 2002")
Generation.create(career_id: "9", descripcion_generacion: "1999 - 2003")
Generation.create(career_id: "9", descripcion_generacion: "2000 - 2004")
Generation.create(career_id: "9", descripcion_generacion: "2001 - 2005")
Generation.create(career_id: "9", descripcion_generacion: "2002 - 2006")
Generation.create(career_id: "9", descripcion_generacion: "2003 - 2007")
Generation.create(career_id: "9", descripcion_generacion: "2004 - 2008")
Generation.create(career_id: "9", descripcion_generacion: "2005 - 2009")
Generation.create(career_id: "9", descripcion_generacion: "2006 - 2010")
Generation.create(career_id: "9", descripcion_generacion: "2007 - 2011")
Generation.create(career_id: "9", descripcion_generacion: "2008 - 2012")
Generation.create(career_id: "9", descripcion_generacion: "2009 - 2013")
Generation.create(career_id: "9", descripcion_generacion: "2010 - 2014")
Generation.create(career_id: "9", descripcion_generacion: "2011 - 2015")
Generation.create(career_id: "9", descripcion_generacion: "2012 - 2016")
Generation.create(career_id: "9", descripcion_generacion: "2013 - 2017")



Generation.create(career_id: "10", descripcion_generacion: "1997 - 2001")
Generation.create(career_id: "10", descripcion_generacion: "1998 - 2002")
Generation.create(career_id: "10", descripcion_generacion: "1999 - 2003")
Generation.create(career_id: "10", descripcion_generacion: "2000 - 2004")
Generation.create(career_id: "10", descripcion_generacion: "2001 - 2005")
Generation.create(career_id: "10", descripcion_generacion: "2002 - 2006")
Generation.create(career_id: "10", descripcion_generacion: "2003 - 2007")
Generation.create(career_id: "10", descripcion_generacion: "2004 - 2008")
Generation.create(career_id: "10", descripcion_generacion: "2005 - 2009")
Generation.create(career_id: "10", descripcion_generacion: "2006 - 2010")
Generation.create(career_id: "10", descripcion_generacion: "2007 - 2011")
Generation.create(career_id: "10", descripcion_generacion: "2008 - 2012")
Generation.create(career_id: "10", descripcion_generacion: "2009 - 2013")
Generation.create(career_id: "10", descripcion_generacion: "2010 - 2014")
Generation.create(career_id: "10", descripcion_generacion: "2011 - 2015")
Generation.create(career_id: "10", descripcion_generacion: "2012 - 2016")
Generation.create(career_id: "10", descripcion_generacion: "2013 - 2017")
Generation.create(career_id: "10", descripcion_generacion: "2014 - 2018")


User.create!(id: "1", 
			type_user: "Administrador",
			nombre_user: "Carlos Francisco",
			apellido_paterno_user: "López",
			apellido_materno_user: "Juárez", 
			career_id: "1", 
			generation_id: "1", 
			email: "megacarlitox@gmail.com", 
			password: ENV["USER_PASSWORD"], 
			password_confirmation: ENV["USER_PASSWORD"],
			encrypted_password: "$2a$11$f066MWh5P6xuAWmRLc7TVO9xHrzoI/ypYehDGg0NsGrIleZCnlcte")


User.create!(id: "2", 
			type_user: "Administrador", 
			career_id: "1", 
			generation_id: "1", 
			email: "egresados@uaa.edu.mx", 
			password: ENV["USER2_PASSWORD"], 
			password_confirmation: ENV["USER2_PASSWORD"],
			encrypted_password: "$2a$11$SEkpDyICI4TQm.AUCAvfD.zWq602HbBWziaXevO0EfeXEPL4gCcuy")


Category.create(id: "1", nombre_categoria: "Generales", color_categoria: "#0080ff")
Category.create(id: "2", nombre_categoria: "Educación Continua", color_categoria: "#008000")
Category.create(id: "3", nombre_categoria: "Proyectos Sociales", color_categoria: "#400080")
