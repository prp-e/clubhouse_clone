require 'digest'
require 'active_support/core_ext/hash'

module ApplicationHelper
    def join_meeting(api_url = ENV['BBB_API'], shared_secret = ENV['BBB_SECRET'], password, room_id, name)
        create_checksum = "joinmeetingID=#{room_id}&fullName=#{name}&password=#{password}#{shared_secret}"
        checksum = Digest::SHA1.hexdigest(create_checksum)

        request_url = api_url + "join?meetingID=#{room_id}&fullName=#{name}&password=#{password}&checksum=#{checksum}"
        
        return request_url
    end 
end
