desc: 'ejecutar el programa'
task :default => "test"
	sh "ruby ppt.rb"
end