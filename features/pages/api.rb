require 'httparty'
require 'byebug'
def activities()
  activities_response = JSON.parse(HTTParty.get("https://fakerestapi.azurewebsites.net/api/v1/Activities").body)
end
def activities_by_id(id = 1)
  activities_by_id_response = JSON.parse(HTTParty.get("https://fakerestapi.azurewebsites.net/api/v1/Activities/#{id}").body)
end

def add_activities(id = 1)
  add_activities_response = HTTParty.put("https://fakerestapi.azurewebsites.net/api/v1/Activities/#{id}",
    {
      body: {
        id: id,
        title: "string",
        dueDate: "2022-03-17T06:45:59.748Z",
        completed: true
      }
    }
  )
end

# activities()
# activities_by_id(100)
add_activities(31)