seed_file = Rails.root.join('db', 'seeds.yml')
config = HashWithIndifferentAccess.new(YAML::load_file(seed_file))

config['projects'].each do |project|
  p = Project.create(title: project['title'])
  project['todos'].each do |todo|
    p.todos.create(todo)
  end
end