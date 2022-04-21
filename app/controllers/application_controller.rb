class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    User.all.find(5).to_json(include: :items)
  end

  get "/items" do 
    Item.all.to_json
  end 

  get "/users/:id" do
    User.find(params[:id]).to_json
  end

  delete "/itemdelete/:id" do
    Item.find(params[:id]).destroy.to_json
  end

  patch "/item/swap/:id1/:id2" do
    item1 = Item.find(params[:id1])
    user1 = item1.user
    item2 = Item.find(params[:id2])
    user2 = item2.user
    item1.update(user: user2).to_json
    item2.update(user: user1).to_json
  end




  post '/itemsubmit' do 
    Item.create(
      item_name: params[:item_name],
      description: params[:description],
      original_pricing: params[:original_pricing],
      condition: params[:condition],
      image_url: params[:image_url],
      user_id: params[:user_id]
    ).to_json
  end

end



# get "/Users" do
#   User.all.to_json(include: :items)   --- items because we want items and people on front end (combined fetch to get both at the same time)
# end

# get "/Users" do 
#   User.find(params[:id]).to_json(include: :items)
# end

# now when we do a get request we can see associations


# POST NOTES

# - inside of config.ru; use Rack::JSONBodyParser (ewceives something with body and parses it out to make it easier to read on the controller)
# - post "/items" do
#   binding.pry
# end
# - then go on postman
# - go to body and add some data and run it -> look up params on vscode
# - then Item.create(params)
# - put that where binding.pry is above ^^^ and add.to_json
# post "/items" do
#   Item.create(params).to_json
# end

# .to_json is to send to the frontend


# # Adding a form to add items











# import {useState, useEffect} from 'react'
# function App(){

# const [items, setItems] = useState([])
# const [formState, setFormState] = useState({
#   name:'',
#   age: 0,
#   #put stuff from both tables
# })

# useEffect(() => {
#   fetch('http://localhost:9292/items')
#   .then(res => res.json())
#   .then(data => setItems(data))
# }, [])

# const renderItems = items.map(item => {
#   return <p>{item.description}</p>
# })

# function handleSubmit(e) {
#   e.preventDefault()
#   fetch('http://localhost:9292/users', {
#     method: "POST",
#     headers: {
#       "Content-Type": 'application/json',

#     },
#     body: JSON.stringify({
#       item: {
#         name: formState.name,
#         description: formState.description
#       }
#     })
#   })
#   .then(res =>res.json())
#   .then(console.log)
# }

# return (

# {renderItems}

# <form onSubmit={handleSubmit}>
# <input name="name" value={formState.name} onChange={e => setFormState(prev => {...prev, name: e.target.value})}/>
# <input type = "number"name="age" value={formState.age} />


# </form>

# )

# }
# export default App;