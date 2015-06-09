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

    def update_info(info)
        if self.updated_at < info.updated_at
            self.update_attribute(:email, info.email)
            #self.update_attribute(:full_name, info.full_name)
            #self.update_attribute(:company_name, info.company_name)
            #self.update_attribute(:time_zone, info.time_zone)
            #self.update_attribute(:vat, info.vat)
            #self.update_attribute(:language, info.language)
        end
    end
end
