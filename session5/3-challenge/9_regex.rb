# This challenge requires that you've completed challenges 7 and 8

# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solution, try to understand the code, then close the file, come back here, and try again to solve it.

# The Green Thumb Nursery calls you up "hey, remember that list of trees we sent you?"
# "Sure" you reply, fondly reveling in the brillinace of your regular expression that
# parsed it. "We want you to put it in a webpage for us" they tell you.
#
# Given the same inputs as challenge 7, output results in string format like this:
#   <!doctype html>
#   <html>
#     <head>
#       <title>Green Thumb Nursery</title>
#     </head>
#     <body>
#       <h1>Catalog</h1>
#       <table>
#         <tr>
#           <td>Type of tree</td>
#           <td>Size of the tree</td>
#           <td>Price of the tree</td>
#         </tr>
#
#         <!-- Put records here -->
#         <tr>
#           <td>American Redbud Tree</td>
#           <td>1 to 2 feet</td>
#           <td>$5.95</td>
#         </tr>
#         <!-- etc -->
#       </table>
#     </body>
#   </html>

require 'nokogiri'



def tree_parser(string)
  result = []
  array = []
  string.each_line do |line|
    line =~ /^(.*)[,;] (w|W)hich ships (at|@) (.*)[,;] cost:? (.+)/
    array << $1 << $4 << $5
    result << [$1, $4, $5]
  end
  result
end



def trees_to_html(trees)
  array = tree_parser(trees)
  string = "
     <!doctype html>
     <html>
       <head>
         <title>Green Thumb Nursery</title>
       </head>
       <body>
         <h1>Catalog</h1>
         <table>
           <tr>
             <td>Type of tree</td>
             <td>Size of the tree</td>
             <td>Price of the tree</td>
           </tr>"
  array.each do |x|
    string << "
    <tr>
      <td>#{x[0]}</td>
      <td>#{x[1]}</td>
      <td>#{x[2]}</td>
    </tr>"
   end
  string << "
         </table>
       </body>
     </html>"
   end


#I couldn't check this against the rake file because of a problem with loading the rspec.
=begin
def trees_to_html(trees)
  array = tree_parser(trees)
  string = "<html><head><title>Green Thumb Nursery</title></head><body><h1>Catalog</h1><table><tr><td>Type of tree</td><td>Size of the tree</td><td>Price of the tree</td></tr>"
  trees_string = ""
  array.each do |x|
    trees_string << "<tr><td>#{x[0]}</td><td>#{x[1]}</td><td>#{x[2]}</td></tr>"
  end
  string << trees_string
  string << "</table></body></html>"
  html_doc = Nokogiri::HTML(string)
  html_doc
end
=end
