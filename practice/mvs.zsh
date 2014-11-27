#!/usr/bin/env ruby

# `numf`` displays the N num-modified files matching the specified search-term.


while getopts :i:e:f:o: name
do
	case $name in
		n) NUM="$OPTARG" ;;
		s) SEARCH="$OPTARG" ;;
		d) DIRECTORY="$OPTARG" ;;
		*) usage ;;                # display usage and exit
	esac
done




mkdir -p $DIRECTORY

filenames = `lastf -n #{options.num} -s #{options.search_term}`.split(/\ \n/)

filenames.each_with_index do |filename, i|
  command = "cp '#{filename}' #{options.directory}/#{options.directory}_#{i+1}.png"
  puts command.green
  `#{command}`
end
