# This recipe is for updating the source list and installing MongoDB
apt_update 'update' do
  action :update
end

# MongoDB-org added to source list
apt_repository 'mongodb-org' do
  uri 'http://repo.mongodb.org/apt/ubuntu'
  distribution 'xenial/mongodb-org/3.2'
  components ['multiverse']
  keyserver 'hkp://keyserver.ubuntu.com:80'
  key 'EA312927'
end

package 'mongodb-org' do
  action :upgrade
end
