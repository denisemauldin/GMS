namespace :assembly do

  desc "Test find_assembly_files"
  task :test_find_assembly_files => :environment do
    test = Assembly.find(132)
    files = test.find_assembly_files
    puts "files is #{files.inspect}"
  end

  desc "Test check_assembly_files"
  task :test_check_assembly_files => :environment do
    Assembly.all.each do |test|
      files = test.check_assembly_files
      if files.size > 0 then
      puts "files is #{files.inspect}"
      end
    end
  end

  desc "Test add_assembly_files"
  task :test_add_assembly_files => :environment do
    test = Assembly.find(717)
    puts "test #{test.inspect}"
    files = test.add_assembly_files
    puts "files is #{files.inspect}"
  end

  desc "Test update_assembly_files"
  task :test_update_assembly_files => :environment do
    test = Assembly.find(717)
    puts "test #{test.inspect}"
    files = test.update_assembly_files
    puts "files is #{files.inspect}"
  end

  desc "Run ensure_files_up_to_date on all assemblies"
  task :run_ensure_files_up_to_date => :environment do
    Assembly.all.each do |assembly|
      assembly.ensure_files_up_to_date
    end
  end

  desc "check software versions"
  task :check_software_version, [:file] => [:environment] do |t, args|
    raise "No file provided " unless args[:file]
    f = File.open(args[:file],"r")
    f.each_line do |line|
        next if line.match(/^#/)
        line.strip!
        path = line.split(/\//)
        assembly_name = path[-1]
        assembly = Assembly.find_by_name(assembly_name)
        if assembly.nil? then
            puts "can't find assembly named #{assembly_name}"
        else
            puts [line,assembly_name, assembly.software_version.to_s].join("\t")
        end
    end
    f.close
  end
end
