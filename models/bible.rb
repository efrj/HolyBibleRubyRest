require "sqlite3"
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'db/KJV-PCE.db'
)

class Bible < ActiveRecord::Base
  self.table_name = "Bible"
end