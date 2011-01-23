# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#

Room.create(:number => 1, :floor => 1, :group => 'east', :length => 10, :width => 10, :state => 'empty',
            :last_check_ammeter_at => Time.now, :last_ammeter_amount => 1901)

Room.create(:number => 2, :floor => 1, :group => 'west', :length => 10, :width => 10, :state => 'empty',
            :last_check_ammeter_at => Time.local(2011,1,1), :last_ammeter_amount => 1900)

Tenant.create(:name => '张三', :desc => '金五星')
Tenant.create(:name => '李四', :desc => '烤串')
