# create_table "drivers", force: :cascade do |t|
#   t.string "name"
#   t.string "address"
#   t.string "contact_num"
#   t.string "age"
#   t.string "driver_license" 8 numbers, 88888888
#   t.string "ine" 16 numbers, XXXXXX000000X000
#   t.text "observations"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

Driver.destroy_all

Driver.create!([{
    name: "Mario Filomeno Cabrera Sandoval",
    address: "Sonora 100, Juan Josém Rios III, V. de Álvarez; Col.",
    contact_num: "3121204112",
    age: "30",
    driver_license: "88888888",
    ine: "XXXXXX000000X000",
    observations: "Esta es una observación basica para llenar el campo."
  },

  {
    name: "Guillermo Peña Rodríguez",
    address: "V. Carranza, Santa barbara, Colima; Col.",
    contact_num: "3121247171",
    age: "56",
    driver_license: "88888888",
    ine: "XXXXXX000000X000",
    observations: "Esta es una observación basica para llenar el campo."
  }
  ])

print "Created #{Driver.count} drivers."
