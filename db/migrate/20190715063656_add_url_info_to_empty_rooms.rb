class AddUrlInfoToEmptyRooms < ActiveRecord::Migration[5.2]

    def up
      add_column :empty_rooms, :url_info, :string
    end

    def down
      remove_column :empty_rooms, :url_info, :string
    end
end
