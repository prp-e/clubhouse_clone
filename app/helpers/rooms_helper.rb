require 'digest'
require 'active_support/core_ext/hash'

module RoomsHelper
    def make_room(api_url = ENV['BBB_API'], shared_secret = ENV['BBB_SECRET'], mod_pass = ENV['BBB_MP'], att_pass = ENV['BBB_AP'], room_name, room_id)
        room_name = room_name.gsub(" ", "+")
        create_checksum = "createname=#{room_name}&meetingID=#{room_id}&attendeePW=#{att_pass}&moderatorPW=#{mod_pass}#{shared_secret}"
        checksum = Digest::SHA1.hexdigest(create_checksum)

        request_url = api_url + "create?name=#{room_name}&meetingID=#{room_id}&attendeePW=#{att_pass}&moderatorPW=#{mod_pass}&checksum=#{checksum}"

        response = HTTParty.get(request_url)

        response = response.body 
        response = Hash.from_xml(response)

        if response['response']['returncode'] == "SUCCESS"
            return true 
        else 
            return false 
        end 
        
    end 
end
