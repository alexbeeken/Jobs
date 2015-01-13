require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/jobs")

get('/') do
  @jobs = Jobs.description_all()
  erb(:index)
end

post('/add_job') do
  @title = params.fetch('title')
  @company = params.fetch('company_name')
  @city = params.fetch('location')
  @job = Jobs.new(@title, @company, @city)
  @job.save()
  redirect '/'
end

post('/clear') do
  Jobs.clear()
  redirect '/'
end

post('/delete') do
  Jobs.delete_last_entry
  redirect '/'
end
