# Move this script and the code_to_remove.js file into the root directory
# of your refinery project. Execute by running ruby ie11-fix.rb
# and when finished you can safely remove ie11-fix.rb and code_to_remove.js

# If you have already overriden refinery/boot_wym for whatever reason,
# comment out lines 10, 12 and 21.

code_to_remove = File.read "code_to_remove.js" 

rake_task_succeeded = system "rake refinery:override javascript=refinery/boot_wym"

if rake_task_succeeded
  boot_wym_path = "app/assets/javascripts/refinery/boot_wym.js.erb"
  file_contents = File.read boot_wym_path
  
  file_contents.sub!(code_to_remove, "")
  
  File.open(boot_wym_path, "w") { |file| file.puts file_contents }

  puts "IE11 refinery WYSIWYG patch completed successfully"
end
