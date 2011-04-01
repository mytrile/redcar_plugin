REPOS_FILE = File.join(File.dirname(__FILE__), "../repos.yaml")
class RedcarPlugin < Thor
  
  def initialize(args=[], options={}, config={})
    @list = YAML.load_file(REPOS_FILE)
    @plugins_dir = "#{ENV['HOME']}/.redcar/plugins/"
    @installed_plugins = Dir.entries(@plugins_dir).delete_if {|name| name =="." || name ==".."}
    super(args,options,config)
  end
  
  desc "install PLUGIN_NAME", "Install plugin PLUGIN_NAME"
  def install(plugin_name)    
    name = plugin_name
    url  = @list['repos'][plugin_name]['url']
    clone_repo(name,url)
  end
  
  desc "update PLUGIN_NAME", "Update plugin PLUGIN_NAME"
  def update(plugin_name)
    if @installed_plugins.include?(plugin_name)
      command = "cd #{@plugins_dir}#{plugin_name} && git pull"
      puts "Plugin #{plugin_name} successfully updated" if system(command)
    else
      puts "Plugin #{plugin_name} not installed"
    end
  end
  
  desc "update_all", "Update all plugins"
  def update_all
    @installed_plugins.each do |name|
      command = "cd #{@plugins_dir}#{name} && git pull"
      system("cd #{@plugins_dir}#{name} && git pull")
    end
  end
  
  desc "delete PLUGIN_NAME", "Delete plugin PLUGIN_NAME"
  def uninstall(plugin_name)
    if @installed_plugins.include?(plugin_name)
      command = "rm -rf #{@plugins_dir}#{plugin_name}"
      puts "Plugin #{plugin_name} successfully deleted" if system(command)
    else
      puts "Plugin is not installed"
    end
  end
  
  desc "installed", "List of installed plugins"
  def installed
    puts ''
    puts " *** LIST OF INSTALLED PLUGINS ***"
    puts ''
    @installed_plugins.each {|name| puts name}
    puts ''
  end
  
  desc "list", "List of available plugins"
  def list
    puts ''
    puts " *** LIST OF AVAILBLE PLUGINS ***"
    puts ''
    @list['repos'].each do |key, value|
      puts "* #{key} - #{value['description']}"
    end
    puts ''
  end
  
  private
  
  def clone_repo(name,url)
    puts "Plugin url: #{url}"    
    command = "git clone #{url} #{@plugins_dir}/#{name}"    
    puts "Plugin #{name} successfully installed" if system(command)
  end  
end