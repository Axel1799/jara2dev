# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Marca.create(nombre: "Bimbo")
Marca.create(nombre: "Trébol")
Marca.create(nombre: "Girasol")
Marca.create(nombre: "Serenísima")
Marca.create(nombre: "Cheetos")

Rubro.create(nombre: "Panificado", perecedero: true)
Rubro.create(nombre: "Lácteo", perecedero: true)
Rubro.create(nombre: "Aceite", perecedero: true)
Rubro.create(nombre: "Artesanal", perecedero: true)
Rubro.create(nombre: "Snacks", perecedero: false)

Producto.create(nombre:"Pan", cant_min:5, cant_act:10, precio: 12000,activo: true, marca_id:1, rubro_id:1)
Producto.create(nombre:"Leche", cant_min:5, cant_act:10, precio: 12000,activo: false, marca_id:2, rubro_id:2)
Producto.create(nombre:"Aceite Girasol", cant_min:5, cant_act:10, precio: 12000,activo: true, marca_id:3, rubro_id:3)
Producto.create(nombre:"Queso", cant_min:5, cant_act:10, precio: 12000,activo:false, marca_id:4, rubro_id:4)
Producto.create(nombre:"Papas crujientes", cant_min:5, cant_act:10, precio: 12000,activo:true, marca_id:5, rubro_id:5)