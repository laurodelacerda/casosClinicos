# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130331235431) do

  create_table "doencas", :force => true do |t|
    t.string   "nomepopular"
    t.string   "nomebio"
    t.string   "historico"
    t.string   "descricao"
    t.string   "causa"
    t.integer  "tipodoenca_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "doencas", ["tipodoenca_id"], :name => "index_doencas_on_tipodoenca_id"

  create_table "prevencaos", :force => true do |t|
    t.string   "metodo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipodoencas", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipotratamentos", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tratamentos", :force => true do |t|
    t.string   "metodo"
    t.integer  "tipotratamento_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "tratamentos", ["tipotratamento_id"], :name => "index_tratamentos_on_tipotratamento_id"

end
