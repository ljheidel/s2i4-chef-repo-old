#
# Cookbook Name:: aws-vpc-nat-instance
# Recipe:: ec2
#
# Copyright (C) 2015 Will Salt
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'aws-sdk'

chef_gem 'aws-sdk' do
  version '2.0.32'
  compile_time false
end

# call library function here
::Chef::Recipe.send(:include, AwsVpcNatInstance::Helper)

disable_source_dest()
