// DBML for the SQL table schemas

Table users {
  id integer [pk]
  username varchar(255) [not null]
  password varchar(255) [not null]
  email varchar(255) [not null]
  created_at timestamp [not null] // [default: NOW()]
}

Table stores {
  id integer [pk]
  user_id integer [ref: > users.id]
  name varchar(255) [not null]
  is_microstore boolean [not null] //[default: false]
  created_at timestamp [not null]// [default: `NOW()`]
}

Table catalogs {
  id integer [pk]
  store_id integer [ref: > stores.id]
  name varchar(255) [not null]
  created_at timestamp [not null]// [default: `NOW()`]
}

Table products {
  id integer [pk]
  name varchar(255) [not null]
  description text [not null]
  price decimal(10, 2) [not null]
  available_date date [not null]
  stock_quantity integer [not null]
  image_url text [not null]
  created_at timestamp [not null]// [default: `NOW()`]
}

Table product_attributes {
  id integer [pk]
  product_id integer [ref: > products.id]
  title varchar(255) [not null]
  description text [not null]
  created_at timestamp [not null]// [default: `NOW()`]
}

Table catalog_products {
  id integer [pk]
  catalog_id integer [ref: > catalogs.id]
  product_id integer [ref: > products.id]
  created_at timestamp [not null]// [default: `NOW()`]
}

Table store_products {
  id integer [pk]
  store_id integer [ref: > stores.id]
  product_id integer [ref: > products.id]
  created_at timestamp [not null] //[default: `NOW()`]
}
