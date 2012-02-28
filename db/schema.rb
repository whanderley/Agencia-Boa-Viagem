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

ActiveRecord::Schema.define(:version => 20120228140913) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.integer  "pontos"
    t.string   "endereco"
    t.string   "email"
    t.string   "telefone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hotels", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "email"
    t.string   "telefone"
    t.string   "site"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pacotes", :force => true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.float    "preco"
    t.integer  "pontos"
    t.integer  "pontos_requeridos"
    t.integer  "hotel_id"
    t.integer  "servico_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "pacotes", ["hotel_id"], :name => "index_pacotes_on_hotel_id"
  add_index "pacotes", ["servico_id"], :name => "index_pacotes_on_servico_id"

  create_table "reservas", :force => true do |t|
    t.date     "data_da_reserva"
    t.string   "modo_de_pagamento"
    t.integer  "cliente_id"
    t.integer  "pacote_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "reservas", ["cliente_id"], :name => "index_reservas_on_cliente_id"
  add_index "reservas", ["pacote_id"], :name => "index_reservas_on_pacote_id"

  create_table "servicos", :force => true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
