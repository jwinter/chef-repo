current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jwinter"
client_key               "#{ENV['HOME']}/.chef/jwinter.pem"
validation_client_name   "jwinter_org-validator"
validation_key           "#{ENV['HOME']}/.chef/jwinter_org-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/jwinter_org"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
# ec2 aws keys 
require '~/.chef/microfree_ec2'
knife.merge!(AWS_KEYS)
