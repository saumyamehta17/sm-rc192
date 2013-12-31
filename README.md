Railscast sm-rc192
==================

cancan
```
Is a authorization library to restrict user to allow access to resources.All permissions are allowed in one place i.e ability.rb
```
gemfile
```
gem 'cancan'
rails g cancan:ability
```

Define roles for devise new registration
```
rails g devise user
rails g devise:views
Three roles are defined
Admin - Global user
Moderator - Edit comments
Author - Create article , edit article
```
Create authorization in one place
```
in ability.rb under app/models

```

Now use can? method for restriction
```
see articles/index.html.erb
```
But still  a problem
```
You can access through url change for ex http://localhost:3000/articles/1/edit, So solution is:
make changes in controller also
see edit action
#todo
```
Use load_and_authorize_resource
```
It will use a before filter to load the resource into an instance variable and authorize it for every action.
```