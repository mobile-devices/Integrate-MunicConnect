class User < ActiveRecord::Base
    def self.create_with_omniauth(auth)
        create! do |user|
            user.provider = auth["provider"]
            user.uid = auth["uid"]
            user.email = auth["info"].email
            #user.full_name = auth["info"].full_name
            #user.company_name = auth["info"].company_name
            #user.time_zone = auth["info"].time_zone
            #user.vat = auth["info"].vat
            #user.language = auth["info"].language
        end
    end
end
