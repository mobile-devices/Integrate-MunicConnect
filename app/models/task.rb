class Task < ActiveRecord::Base
# t.string: title
# t.string: content
# t.timestamps

 validates :title, presence: true, length: {minimum: 1}
 validates :content, presence: true, length: {minimum: 1}

end
