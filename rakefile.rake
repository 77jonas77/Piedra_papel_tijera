desc: 'ejecutar el programa'
task :default => "test"
directory "test"
file "ppt.rb" => "test" do
	sh "ruby ppt.rb"
end