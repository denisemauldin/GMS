require 'open3'
require 'time'

def array_to_html_table(header, data)
    xm = Builder::XmlMarkup.new(:indent => 2)
    xm.table {
      xm.tr { header.each {|key| xm.th(key) } }
      data.each {|row| xm.tr { row.each { |value| xm.td(value)} } }
    }
    xm.target
end

def csvdir_exists
  if !File.exists?(CSVDIR) then
    Dir.mkdir(CSVDIR)
  end
end

def creation_time(file)
   Time.parse(Open3.popen3("stat", 
                           "-c",
                           "%z", 
                           file)[1].read)
end

# open up a file and parse the # comments into a hash.  Use bzcat if bzip'd or gunzip -c for gzip'd
def file_header(file)
  cmd = Array.new
  if file.match(/\.bz2\z/) then
    cmd = [ 'bzcat', file ]
  elsif file.match(/\.gz\z/) then
    cmd = [ 'gunzip', '-c', file ]
  else
    cmd = [ 'cat', file ]
  end

  header = Hash.new
  Open3.popen3(*cmd) do |stdin, stdout, stderr|
    stdout.each do |line|
      if line.match('^#') then
        line.gsub!(/#/, '')
	line.strip! # remove newline at the end
        (key,value) = line.split(/\t/)
        header[key] = value
      else
        break
      end
    end
  end

  return header
end