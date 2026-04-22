<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>LUMINA — Dark Edition | Premium E‑Commerce</title>

    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #050b14;
            font-family: 'Plus Jakarta Sans', sans-serif;
            color: #eef5ff;
            scroll-behavior: smooth;
        }

        /* custom scrollbar */
        ::-webkit-scrollbar {
            width: 5px;
            height: 5px;
        }
        ::-webkit-scrollbar-track {
            background: #0f172a;
        }
        ::-webkit-scrollbar-thumb {
            background: #2dd4bf;
            border-radius: 10px;
        }

        .glass-card {
            background: rgba(15, 25, 45, 0.65);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(45, 212, 191, 0.2);
            border-radius: 2rem;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ---- header (glassmorphic) ---- */
        .header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(5, 11, 20, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(45, 212, 191, 0.25);
        }

        .nav-wrapper {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 1rem 0;
            gap: 24px;
            flex-wrap: wrap;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 800;
            background: linear-gradient(135deg, #e2f0ff, #2dd4bf);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .logo span {
            background: none;
            color: #2dd4bf;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
        }
        .nav-links a {
            color: #cbd5e6;
            font-weight: 500;
            transition: 0.2s;
            font-size: 0.95rem;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .nav-links a:hover, .nav-links a.active {
            color: #2dd4bf;
        }

        .search-group {
            display: flex;
            background: rgba(10, 20, 35, 0.7);
            border-radius: 60px;
            padding: 6px 16px;
            align-items: center;
            gap: 12px;
            border: 1px solid rgba(45,212,191,0.3);
            transition: 0.2s;
        }
        .search-group input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 220px;
            font-size: 0.85rem;
        }
        .search-group input::placeholder {
            color: #7e8ba3;
        }
        .search-group button {
            background: none;
            border: none;
            color: #2dd4bf;
            cursor: pointer;
        }

        .header-actions {
            display: flex;
            gap: 16px;
            align-items: center;
        }
        .icon-circle {
            background: rgba(45,212,191,0.1);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: 0.2s;
            cursor: pointer;
            color: #cbd5e6;
        }
        .icon-circle:hover {
            background: #2dd4bf;
            color: #0a0f1a;
        }
        .cart-badge {
            position: relative;
        }
        .cart-count-badge {
            position: absolute;
            top: -6px;
            right: -6px;
            background: #ff4d6d;
            font-size: 11px;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
        }

        .mobile-menu-btn {
            display: none;
            font-size: 1.5rem;
            background: none;
            border: none;
            color: white;
        }

        /* hero section (vibrant) */
        .hero-modern {
            background: radial-gradient(circle at 80% 20%, #0b1a2e, #03070f);
            margin: 32px 20px 40px 20px;
            border-radius: 2.5rem;
            padding: 64px 40px;
            border: 1px solid rgba(45,212,191,0.2);
            box-shadow: 0 20px 35px -12px rgba(0,0,0,0.5);
        }
        .hero-title {
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.2;
            background: linear-gradient(to right, #fff, #2dd4bf);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .btn-glow {
            background: linear-gradient(95deg, #2dd4bf, #14b8a6);
            border: none;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 700;
            color: #031017;
            transition: 0.2s;
            cursor: pointer;
            box-shadow: 0 4px 12px rgba(45,212,191,0.3);
        }
        .btn-outline-light {
            background: transparent;
            border: 1.5px solid rgba(45,212,191,0.6);
            padding: 12px 28px;
            border-radius: 40px;
            color: white;
            font-weight: 600;
            transition: 0.2s;
            cursor: pointer;
        }

        /* category grid (neomorphic) */
        .section-head {
            margin: 56px 0 28px 0;
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            flex-wrap: wrap;
        }
        .section-title {
            font-size: 1.8rem;
            font-weight: 700;
            letter-spacing: -0.3px;
        }
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
        }
        .cat-tile {
            background: rgba(18, 28, 45, 0.7);
            backdrop-filter: blur(8px);
            border-radius: 1.8rem;
            padding: 24px 12px;
            text-align: center;
            transition: all 0.25s ease;
            cursor: pointer;
            border: 1px solid rgba(45,212,191,0.1);
        }
        .cat-tile:hover {
            transform: translateY(-6px);
            border-color: #2dd4bf;
            background: rgba(45,212,191,0.08);
        }
        .cat-icon {
            font-size: 2.5rem;
            color: #2dd4bf;
            margin-bottom: 12px;
        }

        /* product grid (elegant cards) */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: #0f172ad9;
            backdrop-filter: blur(4px);
            border-radius: 1.8rem;
            overflow: hidden;
            transition: 0.2s;
            border: 1px solid #1e2a44;
        }
        .product-card:hover {
            transform: scale(1.02);
            border-color: #2dd4bf;
            box-shadow: 0 20px 30px -12px black;
        }
        .product-img {
            width: 100%;
            height: 210px;
            object-fit: cover;
            display: block;
        }
        .product-info {
            padding: 18px 16px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
        }
        .price-stack {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 12px 0;
        }
        .current-price {
            font-weight: 800;
            font-size: 1.4rem;
            color: #2dd4bf;
        }
        .old-price {
            text-decoration: line-through;
            color: #8e9aaf;
            font-size: 0.85rem;
        }
        .rating {
            color: #f5b042;
            font-size: 0.8rem;
            margin-bottom: 12px;
        }
        .btn-add {
            background: #1e2a44;
            width: 100%;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            border: none;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            transition: 0.2s;
            cursor: pointer;
        }
        .btn-add:hover {
            background: #2dd4bf;
            color: #031017;
        }

        /* flash sale section premium */
        .flash-sale {
            background: linear-gradient(145deg, #0f1825, #07111e);
            border-radius: 2rem;
            padding: 32px;
            margin: 48px 0;
            border: 1px solid #2dd4bf40;
        }
        .deal-flex {
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
        }
        .deal-img {
            flex: 1;
            min-width: 200px;
            border-radius: 1.5rem;
            overflow: hidden;
        }
        .deal-img img {
            width: 100%;
            height: 280px;
            object-fit: cover;
        }
        .deal-content {
            flex: 1.5;
        }
        .timer-group {
            display: flex;
            gap: 16px;
            margin: 20px 0;
        }
        .time-unit {
            background: #030b16;
            padding: 12px 16px;
            border-radius: 1.2rem;
            text-align: center;
            min-width: 70px;
            border: 1px solid #2dd4bf40;
        }
        .time-number {
            font-size: 2rem;
            font-weight: 800;
        }

        /* testimonials carousel style */
        .testimonial-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 20px;
        }
        .testimonial-card {
            background: rgba(20, 32, 50, 0.7);
            backdrop-filter: blur(8px);
            min-width: 300px;
            border-radius: 1.6rem;
            padding: 24px;
            border: 1px solid #2dd4bf30;
        }

        /* newsletter modern */
        .newsletter-modern {
            background: radial-gradient(ellipse at 30% 40%, #102a38, #05101c);
            border-radius: 2rem;
            padding: 48px 32px;
            text-align: center;
            margin: 40px 0;
        }
        .input-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 24px;
        }
        .input-group input {
            background: #0f172f;
            border: 1px solid #2dd4bf60;
            padding: 14px 24px;
            border-radius: 60px;
            width: 300px;
            color: white;
        }

        footer {
            margin-top: 64px;
            padding: 48px 0 32px;
            border-top: 1px solid #1e2a44;
        }

        @media (max-width: 800px) {
            .nav-links, .search-group {
                display: none;
            }
            .mobile-menu-btn {
                display: block;
            }
            .hero-title {
                font-size: 2.3rem;
            }
        }
        .mobile-drawer {
            display: none;
            background: #0a101cee;
            backdrop-filter: blur(20px);
            padding: 20px;
            border-radius: 0 0 24px 24px;
        }
        .mobile-drawer a {
            display: block;
            padding: 12px;
            color: white;
        }
        .hidden {
            display: none;
        }
        button {
            background: none;
            border: none;
        }
    </style>
</head>
<body>

<header class="header">
    <div class="container nav-wrapper">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-menu-btn" id="mobileMenuToggle"><i class="fas fa-bars"></i></button>
            <div class="logo">LUMINA<span>.</span></div>
        </div>

        <div class="nav-links">
            <a href="#"><i class="fas fa-compass"></i> Explore</a>
            <a href="#"><i class="fas fa-bolt"></i> Trending</a>
            <a href="#deals"><i class="fas fa-fire"></i> Flash Sale</a>
            <a href="#"><i class="fas fa-gem"></i> Luxury</a>
        </div>

        <div class="search-group">
            <input type="text" id="globalSearch" placeholder="Search products, categories...">
            <button id="searchTrigger"><i class="fas fa-search"></i></button>
        </div>

        <div class="header-actions">
            <div class="icon-circle"><i class="far fa-heart"></i></div>
            <div class="icon-circle cart-badge" id="cartIcon">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count-badge" id="cartCounter">0</span>
            </div>
        </div>
    </div>
    <div id="mobileDrawer" class="mobile-drawer" style="display: none;">
        <a href="#">🏠 Home</a>
        <a href="#">🔥 Trending</a>
        <a href="#deals">⚡ Deals</a>
        <a href="#">✨ New Arrivals</a>
        <div class="search-group" style="margin-top: 16px; width: 100%;">
            <input type="text" id="mobileSearchInput" placeholder="Search...">
        </div>
    </div>
</header>

<main>
    <div class="container">
        <!-- Hero modern -->
        <div class="hero-modern">
            <div style="max-width: 700px;">
                <h1 class="hero-title">Dark elegance.<br>Uncompromised style.</h1>
                <p style="margin: 18px 0 28px; color: #b9c7dd;">Step into the future of shopping — curated tech, streetwear & minimal design. <br> Limited drops, infinite vibes.</p>
                <div style="display: flex; gap: 16px; flex-wrap: wrap;">
                    <button class="btn-glow" id="shopNowBtn">Shop Now <i class="fas fa-arrow-right"></i></button>
                    <button class="btn-outline-light" id="exploreFlashBtn">Flash Deals <i class="fas fa-clock"></i></button>
                </div>
            </div>
        </div>

        <!-- Categories section (dynamic) -->
        <div class="section-head">
            <h2 class="section-title">✨ Shop by Category</h2>
            <span style="color:#2dd4bf;">trending picks</span>
        </div>
        <div id="categoriesContainer" class="cat-grid"></div>

        <!-- Products grid -->
        <div class="section-head" style="margin-top: 48px;">
            <h2 class="section-title">⚡ Hyperdrop</h2>
            <span style="color:#8e9aaf;">most wanted</span>
        </div>
        <div id="productsGrid" class="product-grid"></div>

        <!-- Flash Sale Section -->
        <div id="deals" class="flash-sale">
            <div class="deal-flex">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="Hyper X Master">
                </div>
                <div class="deal-content">
                    <h2 style="font-size: 2rem;">⚡ Flash Sale: <span style="color:#2dd4bf;">HYPER EDITION</span></h2>
                    <p style="margin: 12px 0;">Premium M2 Max — Studio performance, midnight aura. Limited stock.</p>
                    <div class="timer-group" id="countdownTimer">
                        <div class="time-unit"><span class="time-number" id="days">00</span><br>Days</div>
                        <div class="time-unit"><span class="time-number" id="hours">00</span><br>Hours</div>
                        <div class="time-unit"><span class="time-number" id="minutes">00</span><br>Mins</div>
                        <div class="time-unit"><span class="time-number" id="seconds">00</span><br>Secs</div>
                    </div>
                    <div style="display: flex; align-items: baseline; gap: 16px; margin: 20px 0;">
                        <span class="current-price" style="font-size: 2rem;">$1,249</span>
                        <span style="text-decoration: line-through; color:#9aa9c1;">$1,799</span>
                        <span style="background:#ff4d6d; padding:6px 14px; border-radius: 30px; font-weight: bold;">-30% OFF</span>
                    </div>
                    <button class="btn-glow" id="flashDealAddBtn"><i class="fas fa-bolt"></i> Grab Deal Now</button>
                </div>
            </div>
        </div>

        <!-- Testimonials -->
        <div class="section-head">
            <h2 class="section-title">💬 Voices of Lumina</h2>
            <span>4.9/5 rating</span>
        </div>
        <div class="testimonial-scroll" id="testimonialList">
            <div class="testimonial-card"><i class="fas fa-star" style="color:#f5b042;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p style="margin: 10px 0;">“Absolutely insane design and delivery speed. Got my grail item in 2 days.”</p><b>— Zara K.</b></div>
            <div class="testimonial-card"><i class="fas fa-star" style="color:#f5b042;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p>“Premium quality, the UI is slick and products are top-tier.”</p><b>— Marcus V.</b></div>
            <div class="testimonial-card"><i class="fas fa-star" style="color:#f5b042;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><p>“Flash sale prices are unbeatable. Coming back for more.”</p><b>— Lina Chen</b></div>
        </div>

        <!-- Newsletter -->
        <div class="newsletter-modern">
            <h3 style="font-size: 1.8rem;">🔮 The inner circle</h3>
            <p>Exclusive access, early drops & members-only pricing.</p>
            <div class="input-group">
                <input type="email" id="newsEmail" placeholder="your@email.com">
                <button class="btn-glow" id="subNewsBtn">Subscribe <i class="fas fa-paper-plane"></i></button>
            </div>
            <div id="newsMsg" style="margin-top: 12px; font-size: 0.85rem;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 32px;">
        <div><div class="logo" style="font-size: 1.6rem;">LUMINA</div><p style="margin-top: 12px; color:#8ba0bc;">The future of premium commerce.</p></div>
        <div style="display: flex; gap: 48px;">
            <div><b>Company</b><br>About<br>Press<br>Culture</div>
            <div><b>Support</b><br>FAQ<br>Returns<br>Contact</div>
        </div>
    </div>
    <div style="text-align: center; margin-top: 40px; color:#5d6f8f;">© 2026 Lumina — Dark elegance. All rights reserved.</div>
</footer>

<script>
    // ---------- DATA ----------
    const categories = [
        { id: 'tech', name: 'CyberTech', icon: 'fa-microchip' },
        { id: 'fashion', name: 'Noir Fashion', icon: 'fa-vest' },
        { id: 'audio', name: 'AudioPhile', icon: 'fa-headphones' },
        { id: 'access', name: 'Dark Accents', icon: 'fa-gem' },
        { id: 'foot', name: 'Stealth Kicks', icon: 'fa-shoe-prints' },
        { id: 'gadget', name: 'Edge Gadgets', icon: 'fa-tablet-alt' }
    ];

    const products = [
        { id: 101, title: 'Nebula Ultra 15', price: 1299, oldPrice: 1599, rating: 5, reviews: 234, img: 'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?auto=format&fit=crop&w=600&q=80', category: 'CyberTech', badge: '-18%' },
        { id: 102, title: 'Vanguard Z7 Laptop', price: 1899, oldPrice: 2199, rating: 4.5, reviews: 112, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'CyberTech', badge: 'new' },
        { id: 103, title: 'Phantom Headphones', price: 349, oldPrice: 499, rating: 5, reviews: 402, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'AudioPhile' },
        { id: 104, title: 'Cortex SmartWatch', price: 279, rating: 4.8, reviews: 319, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Edge Gadgets' },
        { id: 105, title: 'Shadow Runner Shoes', price: 189, oldPrice: 259, rating: 4.7, reviews: 97, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Stealth Kicks' },
        { id: 106, title: 'Onyx Ring (Silver)', price: 89, rating: 4.9, reviews: 256, img: 'https://images.unsplash.com/photo-1605100804763-247f67b3557e?auto=format&fit=crop&w=600&q=80', category: 'Dark Accents' },
        { id: 107, title: 'Spectre Drone Mini', price: 429, oldPrice: 599, rating: 4.6, reviews: 74, img: 'https://images.unsplash.com/photo-1508614589041-895b88991e3e?auto=format&fit=crop&w=600&q=80', category: 'Edge Gadgets' },
        { id: 108, title: 'Cyber Jacket', price: 259, rating: 4.5, reviews: 88, img: 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=600&q=80', category: 'Noir Fashion' }
    ];

    let cartItemCount = 0;
    const cartCountSpan = document.getElementById('cartCounter');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesContainer = document.getElementById('categoriesContainer');

    function updateCartUI() {
        cartCountSpan.innerText = cartItemCount;
    }

    function addToCart(productId) {
        const product = products.find(p => p.id === productId);
        if(product) {
            cartItemCount++;
            updateCartUI();
            const btn = document.querySelector(`.add-to-cart-btn[data-id='${productId}']`);
            if(btn) {
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                setTimeout(() => { btn.innerHTML = '<i class="fas fa-cart-plus"></i> Add to cart'; }, 1200);
            }
            // flash sale deal direct
        }
    }

    function renderCategories() {
        categoriesContainer.innerHTML = categories.map(cat => `
            <div class="cat-tile" data-catname="${cat.name}">
                <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
                <h4>${cat.name}</h4>
                <div style="font-size:12px; opacity:0.7;">shop now →</div>
            </div>
        `).join('');
        document.querySelectorAll('.cat-tile').forEach(tile => {
            tile.addEventListener('click', () => {
                const catName = tile.getAttribute('data-catname');
                document.getElementById('globalSearch').value = catName;
                filterProducts(catName);
            });
        });
    }

    function filterProducts(searchTerm) {
        const term = searchTerm.toLowerCase().trim();
        if(!term) return renderProducts(products);
        const filtered = products.filter(p => p.title.toLowerCase().includes(term) || p.category.toLowerCase().includes(term));
        renderProducts(filtered);
    }

    function renderProducts(productList) {
        productsGrid.innerHTML = productList.map(p => {
            const ratingStars = '★'.repeat(Math.floor(p.rating)) + (p.rating % 1 ? '½' : '');
            return `
                <div class="product-card">
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-info">
                        <div class="product-title">${escapeHtml(p.title)}</div>
                        <div class="rating">${ratingStars} <span style="color:#7e8aa8;">(${p.reviews})</span></div>
                        <div class="price-stack">
                            <span class="current-price">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                            ${p.badge ? `<span style="background:#2dd4bf20; padding:2px 10px; border-radius:40px;">${p.badge}</span>` : ''}
                        </div>
                        <button class="btn-add add-to-cart-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to cart</button>
                    </div>
                </div>
            `;
        }).join('');
        document.querySelectorAll('.add-to-cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.getAttribute('data-id'));
                addToCart(id);
            });
        });
    }

    function escapeHtml(str) { return str.replace(/[&<>]/g, function(m){if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }

    // Countdown Timer (ends in 2 days)
    function initCountdown() {
        const endTime = new Date().getTime() + (48 * 60 * 60 * 1000) + (7 * 60 * 60 * 1000);
        const timer = setInterval(() => {
            const now = new Date().getTime();
            const distance = endTime - now;
            if(distance < 0) { clearInterval(timer); document.getElementById('days').innerText = '00'; document.getElementById('hours').innerText = '00'; document.getElementById('minutes').innerText = '00'; document.getElementById('seconds').innerText = '00'; return; }
            const days = Math.floor(distance / (1000*60*60*24));
            const hours = Math.floor((distance % (86400000)) / (3600000));
            const mins = Math.floor((distance % 3600000) / 60000);
            const secs = Math.floor((distance % 60000) / 1000);
            document.getElementById('days').innerText = days.toString().padStart(2,'0');
            document.getElementById('hours').innerText = hours.toString().padStart(2,'0');
            document.getElementById('minutes').innerText = mins.toString().padStart(2,'0');
            document.getElementById('seconds').innerText = secs.toString().padStart(2,'0');
        }, 1000);
    }

    // Search bindings
    document.getElementById('searchTrigger').addEventListener('click', () => {
        const val = document.getElementById('globalSearch').value;
        filterProducts(val);
    });
    document.getElementById('globalSearch').addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });
    // mobile
    const mobileBtn = document.getElementById('mobileMenuToggle');
    const drawer = document.getElementById('mobileDrawer');
    mobileBtn.addEventListener('click', () => { drawer.style.display = drawer.style.display === 'none' ? 'block' : 'none'; });
    if(document.getElementById('mobileSearchInput')) {
        document.getElementById('mobileSearchInput').addEventListener('keyup', (e) => { filterProducts(e.target.value); document.getElementById('globalSearch').value = e.target.value; });
    }

    // Flash deal button
    document.getElementById('flashDealAddBtn').addEventListener('click', () => {
        cartItemCount++;
        updateCartUI();
        alert('🔥 Flash deal added to cart! Limited price secured.');
    });
    document.getElementById('shopNowBtn').addEventListener('click', () => { window.scrollTo({ top: document.getElementById('productsGrid').offsetTop - 70, behavior: 'smooth' }); });
    document.getElementById('exploreFlashBtn').addEventListener('click', () => { window.location.hash = '#deals'; });

    // Newsletter
    document.getElementById('subNewsBtn').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if(!email.includes('@')) { msgDiv.innerHTML = '<span style="color:#ff8a8a;">Enter valid email</span>'; msgDiv.style.opacity = 1; setTimeout(()=>msgDiv.innerHTML='',2000); return; }
        msgDiv.innerHTML = '<span style="color:#2dd4bf;">✨ You\'re now part of Lumina Circle</span>';
        document.getElementById('newsEmail').value = '';
        setTimeout(()=>msgDiv.innerHTML='',3000);
    });

    // Cart Icon demo
    document.getElementById('cartIcon').addEventListener('click', () => { alert(`Cart contains ${cartItemCount} item(s). Checkout demo ready.`); });

    renderCategories();
    renderProducts(products);
    updateCartUI();
    initCountdown();
</script>
</body>
</html>
