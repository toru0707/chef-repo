include_recipe 'database::mysql'

mysql_connection_info = {:host => "localhost",
                         :username => 'root',
                         :password => node['mysql']['server_root_password']}

mysql_database_user "root" do
  connection mysql_connection_info
  password ""
  database_name "*"
  host '%'
  privileges [:all]
  action [:grant]
end

