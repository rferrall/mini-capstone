User.create!([
  {name: "Natalia Edison", email: "n.amir@live.com", password_digest: "$2a$10$7jsbg2T1MA2e0QL3FQPyB.atXahWm9bgboXlXrz8wLLHfDK.mY5sS", admin: false},
  {name: "Sophie Olympic", email: "sophiew@yahoo.com", password_digest: "$2a$10$.x.BjZe9EHahFZyc9Mo3iuBO5FEJkR/tifokJG7iWX1IhUNhx5phG", admin: false},
  {name: "Rory Gilmore", email: "08grad@yale.edu", password_digest: "$2a$10$sVhk8a9iSbV9GYKwXppGUONxH/v/4x4WrG1E4k.qV2IcaYLNKnTDe", admin: true}
])

Supplier.create!([
  {name: "Flintstones", email: 0, phone_number: "444-3456"},
  {name: "Riveras", email: 0, phone_number: "876-8899"},
  {name: "Dole", email: 0, phone_number: "453-3452"}
])

Image.create!([
  {url: "https://cdn.coffeeam.com/media/catalog/product/cache/1/image/536x/64ab722eb1ddc777f7aa79a78e9d2ed1/k/e/kenya_aa-single-origin.jpg", product_id: 1},
  {url: "https://www.coffeebeancorral.com/images-cache/DC/B0/A16F/DCB0A16FA61A7C5E852AE0928F4D57C443F7C27A.jpg", product_id: 1},
  {url: "https://www.cafebritt.com/siteimg/products/fullsize-tile/Costa-Rican-Tarrazu-Whole-Bean.jpg?r=24987", product_id: 2},
  {url: "https://res.cloudinary.com/roastcollective/image/upload/w_800,fl_progressive:steep,q_auto:good/v1536609799/solidus/l2x7ay5syauahtwpy6rb.png", product_id: 3},
  {url: "https://beanbox.co/wp-content/uploads/2015/11/137756906_c17ca6bcb0.jpg", product_id: 3},
  {url: "https://cdn.shopify.com/s/files/1/0800/0735/products/", product_id: 5},
  {url: "https://cdn11.bigcommerce.com/s-6qz5ugldsy/images/stencil/1280x1280/products/147/1242/RK-Kona-PrivRes-7oz-WB-Angle-800px__76171.1541129364.jpg?c=2&imbypass=on", product_id: 5},
  {url: "https://www.konacoffee.com/images/kona_coffee_beans_image.jpg", product_id: 5},
  {url: "https://www.eveningstarcoffeeroasters.com/wp-content/uploads/2015/09/product-elsalvador.jpg", product_id: 4},
  {url: "https://res.cloudinary.com/roastcollective/image/upload/w_800,fl_progressive:steep,q_auto:good/v1/products/CAF/019_TRD000014_CAF_Guatemala_Finca_Nueva_Vinas_Main_0125.png", product_id: 4},
  {url: "https://res.cloudinary.com/roastcollective/image/upload/w_800,fl_progressive:steep,q_auto:good/v1/products/CAF/019_TRD000014_CAF_Guatemala_Finca_Nueva_Vinas_Main_0125.png", product_id: 2},
  {url: "https://i.ebayimg.com/images/g/gf0AAOxy0x1TRakI/s-l640.jpg", product_id: 2}
])

Product.create!([
  {name: "El Salvador", price: "13.0", description: "A medium roast of the finest El Salvadorean arribica coffee beans. Whole bean. The freshest quality.", supplier_id: 2},
  {name: "Hawaiian Kona Premium", price: "33.0", description: "A dark roast featuring single origin Kona beans. The finest quality", supplier_id: 3},
  {name: "Kenya AA", price: "17.0", description: "A light roast of the finest Kenyan AA coffee. Whole bean. The freshest quality.", supplier_id: 1},
  {name: "Costa Rica Tarrazu", price: "15.0", description: "A medium roast of the finest Costa Rican coffee from the Tarrazu region. Whole bean. The freshest quality.", supplier_id: 2},
  {name: "Guatemala", price: "10.0", description: "A darker roast of the finest Guatemalan Arabica coffee beans. Whole bean. The freshest quality.", supplier_id: 2},
  {name: "Colombian Shade Grown", price: "19.0", description: "Whole Bean. The best shade grown Arabica beans with a medium roast. Smooth flavor.", supplier_id: 2},
  {name: "Colombian Peabody", price: "28.0", description: "Whole Bean. Special double globed beans. Unique taste.", supplier_id: 2}
])

Category.create!([
  {name: "Whole Bean"},
  {name: "Ground"},
  {name: "Africa"},
  {name: "Americas"}
])

CartedProduct.create!([
  {user_id: 3, product_id: 2, quantity: 1, status: "purchased", order_id: 6},
  {user_id: 3, product_id: 2, quantity: 1, status: "purchased", order_id: 6},
  {user_id: 3, product_id: 4, quantity: 1, status: "purchased", order_id: 6},
  {user_id: 3, product_id: 1, quantity: 1, status: "purchased", order_id: 6},
  {user_id: 3, product_id: 3, quantity: 2, status: "purchased", order_id: 6},
  {user_id: 3, product_id: 1, quantity: 4, status: "removed", order_id: nil},
  {user_id: 3, product_id: 4, quantity: 2, status: "removed", order_id: nil}
])


Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "33.0", tax: "2.97", total: "35.97"},
  {user_id: 1, subtotal: "14.0", tax: "1.26", total: "15.26"},
  {user_id: 3, subtotal: "14.0", tax: "1.26", total: "15.26"},
  {user_id: 3, subtotal: "80.0", tax: "7.2", total: "87.2"}
])


CategoryProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 1, category_id: 3},
  {product_id: 2, category_id: 1},
  {product_id: 2, category_id: 4},
  {product_id: 3, category_id: 1},
  {product_id: 3, category_id: 4},
  {product_id: 4, category_id: 1},
  {product_id: 4, category_id: 4},
  {product_id: 5, category_id: 1},
  {product_id: 5, category_id: 4}
])
