# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby']}                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)


def pathify(input, string = "", result = [])
  if input.is_a? Array
    input.each do |value|
      return "/#{value}"
    end
  end
  input.each do |key, value|
    string_head = "/#{key}"
    string_tail = pathify(value)
    p string_tail.class
    p string_tail
    p string_head.class
    p string_head
    if string_tail.class == Array then string_tail = string_tail[0] end
    p string_tail
    result << (string_head + string_tail)
  end
  result
end




def pathify2(input, string = "", result = [])
  p input
  input.each do |key, value|
    if value.is_a? Array
      value.each do |v|
        result << (string +"/#{key}" + "/#{v}")
      end
      #string = ""
    else
      #if input.has_value?({key}) then string = "" end
      string += "/#{key}"
      pathify2(value, string, result)
      #string = ""
    end
    #string -= ""
  end
  result
end


 p pathify 'usr' => {'bin' => ['ruby', 'perl'] }
 #p pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'], 'french' => ['sdfasfd'] }
 puts "SSSSSSSSSSSSSSSSSSSSSSS"
 #p pathify2({"usr"=>{"bin"=>["ruby"]}, "opt"=>{"local"=>{"bin"=>["sqlite3", "rsync"]}}})
