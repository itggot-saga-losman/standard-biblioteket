require_relative './lib/slim-template.rb'

variables = {
    var: ["Emil", "är", "en", "stockholmare"],
    omg: 9,
    hej: 12,
    sas: "omgomgomg",
    teachers: [ #en lista med "odöpta" hashes/dictionaries
        {
            :name  => "Emil", 
            age: 23
        },
        {
            name: "David",
            age: 1337
        }
    ],
    people: [
        {
            name: "Emil",
            city: "Växjö", 
            iq: 230
        },
        {
            name: "Saga",
            city: "Göteborg", 
            iq: 2300
        },
        {
            name:"Samuel",
            city: "Stockholm", 
            iq: 23000
        }
    ]
}

html = slim( :test, locals: variables)

File.write("index.html",html)




# get('/') do
#     slim( :index )
# end