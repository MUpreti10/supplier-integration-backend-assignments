
class User:
    def __init__(self, user_id: int, name: str, email: str):
        self.user_id = user_id
        self.name = name
        self.email = email

class Storefront:
    def __init__(self, storefront_id: int, user_id: int, name: str):
        self.storefront_id = storefront_id
        self.user_id = user_id
        self.name = name

class MicroStore:
    def __init__(self, microstore_id: int, user_id: int, name: str):
        self.microstore_id = microstore_id
        self.user_id = user_id
        self.name = name

class Catalog:
    def __init__(self, catalog_id: int, storefront_id: int, name: str):
        self.catalog_id = catalog_id
        self.storefront_id = storefront_id
        self.name = name

class Product:
    def __init__(self, product_id: int, name: str, description: str, price: float, available_date: datetime.date, stock_quantity: int):
        self.product_id = product_id
        self.name = name
        self.description = description
        self.price = price
        self.available_date = available_date
        self.stock_quantity = stock_quantity

class Attribute:
    def __init__(self, attribute_id: int, product_id: int, name: str, value: str):
        self.attribute_id = attribute_id
        self.product_id = product_id
        self.name = name
        self.value = value

class Image:
    def __init__(self, image_id: int, product_id: int, url: str):
        self.image_id = image_id
        self.product_id = product_id
        self.url = url

class Category:
    def __init__(self, category_id: int, name: str):
        self.category_id = category_id
        self.name = name

class SearchHistory:
    def __init__(self, search_id: int, user_id: int, keyword: str, category_id: int, min_price: float, max_price: float, in_stock: bool):
        self.search_id = search_id
        self.user_id = user_id
        self.keyword = keyword
        self.category_id = category_id
        self.min_price = min_price
        self.max_price = max_price
        self.in_stock = in_stock
