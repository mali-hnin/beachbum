ActiveRecord::Schema.define(version: 20170908154156) do

  enable_extension "plpgsql"

  create_table "beaches", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "category"
    t.boolean "bar"
    t.integer "price"
    t.boolean "nudist"
    t.boolean "nude_friendly"
    t.boolean "pet_friendly"
    t.boolean "surf"
    t.string "beach_sports", array: true
    t.string "water_sports", array: true
    t.integer "crowd"
    t.float "latitude"
    t.float "longitude"
    t.string "country"
    t.string "city"
    t.boolean "parking"
    t.boolean "public_transportation"
    t.integer "walking_distance"
    t.string "sand_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
