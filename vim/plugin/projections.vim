let g:rails_projections = {
  \"spec/features/*_spec.rb": {
  \ "command": "feature",
  \ "template": "require 'spec_helper'\n\nfeature '%h' do\n\nend"
  \},
  \"spec/requests/*_spec.rb": {
  \"command": "request",
  \"affinity": "controller",
  \"template": "require 'spec_helper'\n\ndescribe '%h' do\n\nend"
  \},
  \"app/serializers/*_serializer.rb": {
  \ "command": "serializer",
  \ "affinity": "model",
  \ "alternate": "app/models/%i.rb",
  \ "template": "class %ISerializer < ActiveModel::Serializer\nend"
  \},
  \"spec/factories/*.rb": {
  \ "command": "factory",
  \ "affinity": "collection",
  \ "alternate": "app/models/%i.rb",
  \ "related": "db/schema.rb#%s",
  \ "test": "spec/models/%i_spec.rb",
  \ "template": "FactoryGirl.define do\n factory :%i do\n end\nend"
  \},
  \"app/assets/javascripts/controllers/*_controller.coffee": {
  \ "command": ["embercontroller", "jc"],
  \ "affinity": "controller",
  \ "alternate": "app/assets/javascripts/routes/%s_route.coffee"
  \},
  \"app/assets/javascripts/routes/*_route.coffee": {
  \ "command": ["emberroute", "jr"],
  \ "affinity": "controller",
  \ "alternate": "app/javascripts/controllers/%s_controller.coffee"
  \},
  \"app/assets/javascripts/models/*.coffee": {
  \ "command": ["embermodel", "jm"],
  \ "affinity": "model",
  \ "alternate": "app/models/%i.rb"
  \},
  \"app/assets/javascripts/templates/*.emblem": {
  \ "command": ["embertemplate", "jt"],
  \ "affinity": "controller",
  \ "alternate": "app/javascripts/views/%s_view.coffee"
  \},
  \"app/assets/javascripts/views/*_view.coffee": {
  \ "command": ["emberview", "jv"],
  \ "affinity": "controller",
  \ "alternate": "app/javascripts/templates/%s_template.coffee"
  \},
  \"app/services/*.rb": {
  \ "command": "service",
  \ "affinity": "model",
  \ "test": "spec/services/%s_spec.rb"
  \}
\}
