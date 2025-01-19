
INSERT INTO category (id, description, name)
VALUES
    (nextval('category_seq'), 'Computer Keyboards', 'Keyboards'),
    (nextval('category_seq'), 'Computer Monitors', 'Monitors'),
    (nextval('category_seq'), 'Display Screens', 'Screens'),
    (nextval('category_seq'), 'Computer Mice', 'Mice'),
    (nextval('category_seq'), 'Computer Accessories', 'Accessories'),
    (nextval('category_seq'), 'Gaming Consoles and Accessories', 'Consoles'),
    (nextval('category_seq'), 'Smartphones and Accessories', 'Smartphones'),
    (nextval('category_seq'), 'Home Office Equipment', 'Office Equipment'),
    (nextval('category_seq'), 'Audio Devices', 'Audio'),
    (nextval('category_seq'), 'Wearable Technology', 'Wearables');

-- Assuming you already have a sequence named 'product_seq'

-- Insert products for the 'Keyboards' category
-- INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
-- VALUES
--     (nextval('product_seq'), 10, 'Mechanical keyboard with RGB lighting', 'Mechanical Keyboard 1', 99.99, (SELECT id FROM category WHERE name = 'Keyboards')),
--     (nextval('product_seq'), 15, 'Wireless compact keyboard', 'Wireless Compact Keyboard 1', 79.99, (SELECT id FROM category WHERE name = 'Keyboards')),
--     (nextval('product_seq'), 20, 'Backlit gaming keyboard with customizable keys', 'Gaming Keyboard 1', 129.99, (SELECT id FROM category WHERE name = 'Keyboards')),
--     (nextval('product_seq'), 25, 'Mechanical keyboard with wrist rest', 'Ergonomic Keyboard 1', 109.99, (SELECT id FROM category WHERE name = 'Keyboards')),
--     (nextval('product_seq'), 18, 'Wireless keyboard and mouse combo', 'Wireless Combo 1', 69.99, (SELECT id FROM category WHERE name = 'Keyboards'));

INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 10, 'Mechanical keyboard with RGB lighting', 'Mechanical Keyboard 1', 99.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 15, 'Wireless compact keyboard', 'Wireless Compact Keyboard 1', 79.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 20, 'Backlit gaming keyboard with customizable keys', 'Gaming Keyboard 2', 129.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 25, 'Mechanical keyboard with wrist rest', 'Ergonomic Keyboard 2', 109.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 18, 'Wireless keyboard and mouse combo', 'Wireless Combo 2', 69.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 30, 'Compact mechanical keyboard with hot-swappable keys', 'Mechanical Keyboard 3', 89.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 28, 'Ergonomic wireless keyboard with split design', 'Ergonomic Keyboard 3', 119.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 35, 'Programmable gaming keyboard with OLED display', 'Gaming Keyboard 3', 199.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 22, 'Budget-friendly office keyboard', 'Office Keyboard 1', 49.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 25, 'Portable foldable Bluetooth keyboard', 'Foldable Keyboard 1', 69.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 15, 'Silent mechanical keyboard for office use', 'Silent Keyboard 1', 89.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 18, 'Gaming keyboard with macro keys', 'Gaming Keyboard 4', 149.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 20, 'Full-size keyboard with numeric keypad', 'Full-size Keyboard 1', 59.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 22, 'Wireless solar-powered keyboard', 'Solar Keyboard 1', 79.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 28, 'Compact keyboard with touchpad', 'Compact Keyboard 1', 99.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 20, 'Mechanical keyboard with silent switches', 'Silent Mechanical Keyboard 1', 119.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 32, 'RGB gaming keyboard with aluminum frame', 'RGB Gaming Keyboard 1', 139.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 26, 'Durable keyboard for industrial use', 'Industrial Keyboard 1', 249.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 35, 'Mechanical keyboard with USB-C connection', 'Mechanical Keyboard 4', 109.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 30, 'Foldable mechanical keyboard for travelers', 'Travel Keyboard 1', 99.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 40, 'Water-resistant keyboard for harsh environments', 'Waterproof Keyboard 1', 79.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 22, 'Gaming keyboard with detachable palm rest', 'Gaming Keyboard 5', 159.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 29, 'Lightweight portable keyboard for tablets', 'Tablet Keyboard 1', 49.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 25, 'Keyboard with integrated trackball', 'Trackball Keyboard 1', 129.99, (SELECT id FROM category WHERE name = 'Keyboards')),
    (nextval('product_seq'), 28, 'Ergonomic gaming keyboard with wrist cushion', 'Gaming Keyboard 6', 179.99, (SELECT id FROM category WHERE name = 'Keyboards'));


-- Insert products for the 'Monitors' category
-- INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
-- VALUES
--     (nextval('product_seq'), 30, '27-inch IPS monitor with 4K resolution', '4K Monitor 1', 399.99, (SELECT id FROM category WHERE name = 'Monitors')),
--     (nextval('product_seq'), 25, 'Ultra-wide gaming monitor with HDR support', 'Ultra-wide Gaming Monitor 1', 499.99, (SELECT id FROM category WHERE name = 'Monitors')),
--     (nextval('product_seq'), 22, '24-inch LED monitor for office use', 'Office Monitor 1', 179.99, (SELECT id FROM category WHERE name = 'Monitors')),
--     (nextval('product_seq'), 28, '32-inch curved monitor with AMD FreeSync', 'Curved Monitor 1', 329.99, (SELECT id FROM category WHERE name = 'Monitors')),
--     (nextval('product_seq'), 35, 'Portable USB-C monitor for laptops', 'Portable Monitor 1', 249.99, (SELECT id FROM category WHERE name = 'Monitors'));

INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 30, '27-inch IPS monitor with 4K resolution', '4K Monitor 1', 399.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 25, 'Ultra-wide gaming monitor with HDR support', 'Ultra-wide Gaming Monitor 1', 499.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 22, '24-inch LED monitor for office use', 'Office Monitor 1', 179.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 28, '32-inch curved monitor with AMD FreeSync', 'Curved Monitor 1', 329.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 35, 'Portable USB-C monitor for laptops', 'Portable Monitor 1', 249.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 40, 'High-end gaming monitor with G-Sync', 'G-Sync Gaming Monitor', 799.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 30, '32-inch monitor with wide color gamut', 'Wide Gamut Monitor', 599.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 35, 'Budget-friendly monitor for students', 'Student Monitor', 149.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 25, '34-inch ultra-wide curved monitor', 'Curved Ultra-wide Monitor', 699.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 22, '4K monitor with built-in speakers', 'Monitor with Speakers', 249.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 28, '1080p monitor with 144Hz refresh rate', '1080p Gaming Monitor', 199.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 25, 'OLED monitor for content creators', 'OLED Creator Monitor', 799.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 30, 'HDR-enabled monitor with ultra-slim bezels', 'HDR Monitor 1', 429.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 40, '27-inch 1440p gaming monitor with HDR', '1440p Gaming Monitor', 329.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 35, '32-inch professional monitor for video editing', 'Video Editing Monitor', 1299.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 28, 'Full HD curved monitor for office use', 'Curved Office Monitor', 179.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 25, 'Portable monitor with built-in battery', 'Battery Monitor', 349.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 30, 'Slim LED monitor with 5ms response time', 'Slim LED Monitor', 129.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 22, 'Gaming monitor with ultra-low input lag', 'Low Latency Monitor', 699.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 28, '21:9 ultra-wide monitor for multitasking', 'Ultra-wide Multitasking Monitor', 549.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 35, 'Display monitor with USB-C and HDMI ports', 'USB-C Monitor', 299.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 25, '1440p IPS monitor for photographers', 'Photographer Monitor', 649.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 30, 'HDR gaming monitor with 1ms response time', 'HDR Gaming Monitor', 899.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 22, 'Ergonomic monitor with adjustable height', 'Ergonomic Monitor', 299.99, (SELECT id FROM category WHERE name = 'Monitors')),
    (nextval('product_seq'), 28, 'Portable touch-enabled monitor', 'Touch Monitor', 199.99, (SELECT id FROM category WHERE name = 'Monitors'));


-- Insert products for the 'Screens' category
-- INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
-- VALUES
--     (nextval('product_seq'), 15, 'Curved OLED gaming screen with 240Hz refresh rate', 'Curved OLED Gaming Screen 1', 799.99, (SELECT id FROM category WHERE name = 'Screens')),
--     (nextval('product_seq'), 18, 'Flat QLED monitor with 1440p resolution', 'QLED Monitor 1', 599.99, (SELECT id FROM category WHERE name = 'Screens')),
--     (nextval('product_seq'), 22, '27-inch touch screen display for creative work', 'Touch Screen Display 1', 699.99, (SELECT id FROM category WHERE name = 'Screens')),
--     (nextval('product_seq'), 20, 'Ultra-slim 4K HDR display for multimedia', 'Ultra-slim 4K HDR Display 1', 449.99, (SELECT id FROM category WHERE name = 'Screens')),
--     (nextval('product_seq'), 25, 'Gaming projector with low input lag', 'Gaming Projector 1', 899.99, (SELECT id FROM category WHERE name = 'Screens'));

INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 15, 'Curved OLED gaming screen with 240Hz refresh rate', 'Curved OLED Gaming Screen 1', 799.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 18, 'Flat QLED monitor with 1440p resolution', 'QLED Monitor 1', 599.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 22, '27-inch touch screen display for creative work', 'Touch Screen Display 1', 699.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 20, 'Ultra-slim 4K HDR display for multimedia', 'Ultra-slim 4K HDR Display 1', 449.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 25, 'Gaming projector with low input lag', 'Gaming Projector 1', 899.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 12, '8K gaming screen with FreeSync technology', '8K Gaming Screen', 1499.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 28, '24-inch touchscreen for business use', 'Touchscreen Monitor', 349.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 30, 'Portable 15.6-inch screen with USB-C', 'Portable Screen', 299.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 35, 'Curved gaming screen with RGB lighting', 'Curved Gaming Screen 2', 899.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 25, 'Office screen with blue-light filter', 'Office Screen', 179.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 18, 'Wide QHD screen for content creators', 'Content Creator Screen', 549.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 20, 'HDR-enabled screen for cinematic experiences', 'Cinematic Screen', 499.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 25, 'Professional 27-inch 4K screen for photo editing', 'Photo Editing Screen', 649.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 30, 'Small form-factor screen for Raspberry Pi projects', 'Raspberry Pi Screen', 99.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 40, 'Screen with ultra-low response time for eSports', 'eSports Screen', 399.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 32, 'Lightweight screen for portability', 'Lightweight Screen', 149.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 20, '4K display with ultra-wide aspect ratio', 'Ultra-wide 4K Screen', 699.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 28, '32-inch curved screen with FreeSync', 'Curved Screen 2', 499.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 22, 'Touch-enabled screen for presentations', 'Presentation Screen', 599.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 26, 'Screen with anti-glare technology', 'Anti-glare Screen', 399.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 30, 'OLED gaming screen with low response time', 'OLED Gaming Screen 2', 1099.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 25, 'Flat monitor with borderless design', 'Borderless Monitor', 349.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 15, 'Professional 32-inch HDR display', 'HDR Display', 1299.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 28, 'Portable screen with built-in battery', 'Battery-powered Screen', 249.99, (SELECT id FROM category WHERE name = 'Screens')),
    (nextval('product_seq'), 20, 'Gaming monitor with 360Hz refresh rate', '360Hz Gaming Monitor', 1299.99, (SELECT id FROM category WHERE name = 'Screens'));


-- -- Insert products for the 'Mice' category
-- INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
-- VALUES
--     (nextval('product_seq'), 30, 'Wireless gaming mouse with customizable RGB lighting', 'RGB Gaming Mouse 1', 59.99, (SELECT id FROM category WHERE name = 'Mice')),
--     (nextval('product_seq'), 28, 'Ergonomic wired mouse for productivity', 'Ergonomic Wired Mouse 1', 29.99, (SELECT id FROM category WHERE name = 'Mice')),
--     (nextval('product_seq'), 32, 'Ambidextrous gaming mouse with high DPI', 'Ambidextrous Gaming Mouse 1', 69.99, (SELECT id FROM category WHERE name = 'Mice')),
--     (nextval('product_seq'), 26, 'Travel-sized compact mouse for laptops', 'Travel Mouse 1', 19.99, (SELECT id FROM category WHERE name = 'Mice')),
--     (nextval('product_seq'), 35, 'Vertical ergonomic mouse for reduced strain', 'Vertical Ergonomic Mouse 1', 39.99, (SELECT id FROM category WHERE name = 'Mice'));

INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 30, 'Wireless gaming mouse with customizable RGB lighting', 'RGB Gaming Mouse 1', 59.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 28, 'Ergonomic wired mouse for productivity', 'Ergonomic Wired Mouse 1', 29.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 32, 'Ambidextrous gaming mouse with high DPI', 'Ambidextrous Gaming Mouse 1', 69.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 26, 'Travel-sized compact mouse for laptops', 'Travel Mouse 1', 19.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 35, 'Vertical ergonomic mouse for reduced strain', 'Vertical Ergonomic Mouse 1', 39.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 40, 'Gaming mouse with ultra-low latency', 'Low Latency Mouse', 89.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 30, 'Wireless mouse with rechargeable battery', 'Rechargeable Mouse', 49.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 20, 'Silent click mouse for office use', 'Silent Office Mouse', 24.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 25, 'Gaming mouse with 12 programmable buttons', 'Programmable Gaming Mouse', 79.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 18, 'Mouse with adjustable DPI settings', 'Adjustable DPI Mouse', 39.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 28, 'Compact mouse for travel and portability', 'Portable Mouse', 19.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 32, 'RGB mouse with customizable colors', 'RGB Mouse', 49.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 30, 'Dual-mode mouse for gaming and productivity', 'Dual-mode Mouse', 69.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 28, 'Trackball mouse with ergonomic design', 'Trackball Mouse', 59.99, (SELECT id FROM category WHERE name = 'Mice')),
    (nextval('product_seq'), 20, 'Vertical gaming mouse with high DPI', 'Vertical Gaming Mouse', 79.99, (SELECT id FROM category WHERE name = 'Mice')),
    -- Add more products following the same pattern
    (nextval('product_seq'), 18, 'Premium wireless gaming mouse', 'Premium Gaming Mouse', 99.99, (SELECT id FROM category WHERE name = 'Mice'));


-- Insert products for the 'Accessories' category
-- INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
-- VALUES
--     (nextval('product_seq'), 25, 'Adjustable laptop stand with cooling fan', 'Adjustable Laptop Stand 1', 34.99, (SELECT id FROM category WHERE name = 'Accessories')),
--     (nextval('product_seq'), 20, 'Wireless charging pad for smartphones', 'Wireless Charging Pad 1', 24.99, (SELECT id FROM category WHERE name = 'Accessories')),
--     (nextval('product_seq'), 28, 'Gaming headset stand with RGB lighting', 'RGB Headset Stand 1', 49.99, (SELECT id FROM category WHERE name = 'Accessories')),
--     (nextval('product_seq'), 22, 'Bluetooth mechanical keypad for tablets', 'Bluetooth Keypad 1', 39.99, (SELECT id FROM category WHERE name = 'Accessories')),
--     (nextval('product_seq'), 30, 'External hard drive enclosure with USB-C', 'External Hard Drive Enclosure 1', 29.99, (SELECT id FROM category WHERE name = 'Accessories'));


INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 25, 'Adjustable laptop stand with cooling fan', 'Adjustable Laptop Stand 1', 34.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 20, 'Wireless charging pad for smartphones', 'Wireless Charging Pad 1', 24.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 28, 'Gaming headset stand with RGB lighting', 'RGB Headset Stand 1', 49.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 22, 'Bluetooth mechanical keypad for tablets', 'Bluetooth Keypad 1', 39.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 30, 'External hard drive enclosure with USB-C', 'External Hard Drive Enclosure 1', 29.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 35, 'Adjustable phone holder for desk setups', 'Phone Holder 1', 19.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 18, 'USB-C multi-port hub with power delivery', 'USB-C Hub 1', 59.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 22, 'Cable management kit with zip ties', 'Cable Management Kit 1', 14.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 25, 'Portable power bank with 10,000mAh capacity', 'Power Bank 1', 29.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 30, 'Ergonomic footrest for office use', 'Ergonomic Footrest 1', 49.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 40, 'Foldable tablet stand for portability', 'Foldable Tablet Stand 1', 19.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 28, 'Screen cleaning kit with microfiber cloth', 'Screen Cleaning Kit 1', 9.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 22, 'Laptop cooling pad with dual fans', 'Cooling Pad 1', 24.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 18, 'Gaming mouse pad with RGB lighting', 'Gaming Mouse Pad 1', 29.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 20, 'Compact USB wall charger with 4 ports', 'USB Wall Charger 1', 19.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 25, 'Headphone stand with USB charging ports', 'Headphone Stand 1', 39.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 30, 'Wireless presenter with laser pointer', 'Wireless Presenter 1', 24.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 22, 'Adjustable monitor riser with storage', 'Monitor Riser 1', 49.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 28, 'Stylus pen for tablets and smartphones', 'Stylus Pen 1', 14.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 35, 'Portable SSD enclosure with USB-C', 'Portable SSD Enclosure 1', 39.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 20, 'Keyboard and mouse wrist support pads', 'Wrist Support Pads 1', 19.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 25, 'Adjustable armrest for ergonomic chairs', 'Adjustable Armrest 1', 34.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 30, 'Bluetooth adapter for desktop PCs', 'Bluetooth Adapter 1', 14.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 22, 'USB-powered LED desk lamp with dimmer', 'USB LED Lamp 1', 29.99, (SELECT id FROM category WHERE name = 'Accessories')),
    (nextval('product_seq'), 18, 'Foldable laptop stand for travelers', 'Travel Laptop Stand 1', 24.99, (SELECT id FROM category WHERE name = 'Accessories'));

-- Insert products for the 'Consoles' category

INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 50, 'Latest gaming console with 4K HDR support', 'Gaming Console X', 499.99, (SELECT id FROM category WHERE name = 'Consoles')),
    (nextval('product_seq'), 35, 'Wireless controller for console gaming', 'Wireless Controller', 59.99, (SELECT id FROM category WHERE name = 'Consoles')),
    (nextval('product_seq'), 20, 'High-speed external SSD for gaming consoles', 'External SSD 1TB', 129.99, (SELECT id FROM category WHERE name = 'Consoles')),
    (nextval('product_seq'), 40, 'Gaming headset with surround sound', 'Gaming Headset Pro', 99.99, (SELECT id FROM category WHERE name = 'Consoles')),
    (nextval('product_seq'), 30, 'Charging dock for gaming controllers', 'Controller Charging Dock', 29.99, (SELECT id FROM category WHERE name = 'Consoles')),
    (nextval('product_seq'), 45, 'Compact console carrying case', 'Console Carrying Case', 39.99, (SELECT id FROM category WHERE name = 'Consoles')),
    (nextval('product_seq'), 25, 'Gaming console cooling fan', 'Console Cooling Fan', 19.99, (SELECT id FROM category WHERE name = 'Consoles')),
    (nextval('product_seq'), 28, 'Vertical stand for gaming consoles', 'Console Vertical Stand', 24.99, (SELECT id FROM category WHERE name = 'Consoles'));



-- Insert products for the 'Smartphones' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 60, 'Latest flagship smartphone with 5G support', 'Smartphone Pro Max', 1099.99, (SELECT id FROM category WHERE name = 'Smartphones')),
    (nextval('product_seq'), 45, 'Wireless earbuds with noise cancellation', 'Wireless Earbuds', 149.99, (SELECT id FROM category WHERE name = 'Smartphones')),
    (nextval('product_seq'), 50, 'Fast-charging USB-C power adapter', 'USB-C Adapter', 19.99, (SELECT id FROM category WHERE name = 'Smartphones')),
    (nextval('product_seq'), 70, 'Protective smartphone case with kickstand', 'Protective Case', 24.99, (SELECT id FROM category WHERE name = 'Smartphones')),
    (nextval('product_seq'), 35, 'Portable power bank with 20,000mAh capacity', 'Power Bank Pro', 49.99, (SELECT id FROM category WHERE name = 'Smartphones')),
    (nextval('product_seq'), 30, 'Magnetic car mount for smartphones', 'Magnetic Car Mount', 14.99, (SELECT id FROM category WHERE name = 'Smartphones')),
    (nextval('product_seq'), 25, 'Wireless charger for multiple devices', 'Multi-device Charger', 39.99, (SELECT id FROM category WHERE name = 'Smartphones')),
    (nextval('product_seq'), 28, 'Smartphone screen protector pack', 'Screen Protector', 9.99, (SELECT id FROM category WHERE name = 'Smartphones'));


-- Insert products for the 'Office Equipment' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 30, 'Ergonomic office chair with lumbar support', 'Ergonomic Office Chair', 199.99, (SELECT id FROM category WHERE name = 'Office Equipment')),
    (nextval('product_seq'), 25, 'Adjustable standing desk for home office', 'Standing Desk', 399.99, (SELECT id FROM category WHERE name = 'Office Equipment')),
    (nextval('product_seq'), 40, 'Wireless keyboard and mouse combo', 'Wireless Combo', 59.99, (SELECT id FROM category WHERE name = 'Office Equipment')),
    (nextval('product_seq'), 35, 'Office desk organizer with multiple compartments', 'Desk Organizer', 29.99, (SELECT id FROM category WHERE name = 'Office Equipment')),
    (nextval('product_seq'), 20, 'LED desk lamp with adjustable brightness', 'LED Desk Lamp', 49.99, (SELECT id FROM category WHERE name = 'Office Equipment')),
    (nextval('product_seq'), 22, 'Noise-cancelling headphones for office use', 'Office Headphones', 199.99, (SELECT id FROM category WHERE name = 'Office Equipment')),
    (nextval('product_seq'), 28, 'Cable management kit for desks', 'Cable Organizer', 14.99, (SELECT id FROM category WHERE name = 'Office Equipment')),
    (nextval('product_seq'), 25, 'Footrest for ergonomic office setups', 'Ergonomic Footrest', 39.99, (SELECT id FROM category WHERE name = 'Office Equipment'));



--  Insert products for the 'Audio' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 25, 'Wireless over-ear headphones with ANC', 'Wireless Headphones', 249.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 40, 'Bluetooth speaker with 360-degree sound', 'Portable Bluetooth Speaker', 149.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 50, 'High-fidelity wired earphones for audiophiles', 'Wired Earphones', 99.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 30, 'Soundbar with subwoofer for home theaters', 'Soundbar System', 299.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 35, 'USB microphone for streaming and podcasts', 'USB Microphone', 129.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 28, 'Portable DAC for high-resolution audio', 'Portable DAC', 199.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 30, 'Noise-cancelling gaming headphones', 'Gaming Headphones', 179.99, (SELECT id FROM category WHERE name = 'Audio')),
    (nextval('product_seq'), 22, 'Home audio receiver with Bluetooth', 'Audio Receiver', 349.99, (SELECT id FROM category WHERE name = 'Audio'));


--  Insert products for the 'Wearables' category
INSERT INTO public.product (id, available_quantity, description, name, price, category_id)
VALUES
    (nextval('product_seq'), 50, 'Smartwatch with health tracking features', 'Smartwatch Pro', 349.99, (SELECT id FROM category WHERE name = 'Wearables')),
    (nextval('product_seq'), 45, 'Fitness tracker with heart rate monitoring', 'Fitness Tracker', 99.99, (SELECT id FROM category WHERE name = 'Wearables')),
    (nextval('product_seq'), 30, 'Bluetooth-enabled smart glasses', 'Smart Glasses', 199.99, (SELECT id FROM category WHERE name = 'Wearables')),
    (nextval('product_seq'), 35, 'GPS-enabled running watch with long battery life', 'Running Watch', 249.99, (SELECT id FROM category WHERE name = 'Wearables')),
    (nextval('product_seq'), 40, 'Wireless charging dock for wearables', 'Charging Dock', 49.99, (SELECT id FROM category WHERE name = 'Wearables')),
    (nextval('product_seq'), 22, 'Smart fitness band with sleep tracking', 'Smart Band', 79.99, (SELECT id FROM category WHERE name = 'Wearables')),
    (nextval('product_seq'), 28, 'Waterproof smartwatch for swimmers', 'Waterproof Smartwatch', 299.99, (SELECT id FROM category WHERE name = 'Wearables')),
    (nextval('product_seq'), 20, 'Smart ring for activity monitoring', 'Smart Ring', 199.99, (SELECT id FROM category WHERE name = 'Wearables'));
