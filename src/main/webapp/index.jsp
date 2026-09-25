<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NexusShop — Modern E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

  <style>
    /* ========== ROOT VARIABLES ========== */
    :root {
      --bg: #f9f9fc;
      --bg-card: #ffffff;
      --primary: #0f0f1a;
      --primary-light: #2a2a3a;
      --accent: #d95d3b;
      --accent-light: #fdece6;
      --accent-hover: #c24e30;
      --text-main: #1a1a2c;
      --text-muted: #5e5e72;
      --border-light: #e8e8f0;
      --shadow-sm: 0 8px 20px rgba(0, 0, 0, 0.02), 0 2px 6px rgba(0, 0, 0, 0.02);
      --shadow-md: 0 15px 30px -8px rgba(0, 0, 0, 0.06), 0 4px 12px rgba(0, 0, 0, 0.03);
      --radius-xl: 28px;
      --radius-lg: 20px;
      --radius-md: 14px;
      --radius-sm: 10px;
      --transition: all 0.25s ease;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--text-main);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      padding: 0 1rem;
    }

    /* ========== UTILITY & LAYOUT ========== */
    .container {
      max-width: 1360px;
      margin: 0 auto;
      padding: 0 0.5rem;
    }

    .flex-between {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    /* ========== TOP ANNOUNCEMENT BAR ========== */
    .announcement {
      background: var(--primary);
      color: #fff;
      text-align: center;
      padding: 0.6rem 1rem;
      font-size: 0.85rem;
      font-weight: 500;
      letter-spacing: 0.2px;
      border-radius: 0 0 var(--radius-md) var(--radius-md);
      margin-bottom: 1.8rem;
      box-shadow: var(--shadow-sm);
    }

    .announcement i {
      color: var(--accent);
      margin-right: 8px;
    }

    /* ========== HEADER ========== */
    .main-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 1rem 0 1.5rem;
      flex-wrap: wrap;
      gap: 1.2rem;
    }

    .logo {
      display: flex;
      align-items: center;
      gap: 0.6rem;
    }

    .logo-mark {
      background: var(--primary);
      color: #fff;
      width: 42px;
      height: 42px;
      border-radius: 14px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.4rem;
      font-weight: 700;
      box-shadow: 0 6px 14px rgba(15, 15, 26, 0.15);
    }

    .logo-text {
      font-family: 'Playfair Display', serif;
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      color: var(--primary);
    }

    .logo-text span {
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 1rem;
      flex-wrap: wrap;
    }

    .search-wrapper {
      display: flex;
      align-items: center;
      background: var(--bg-card);
      border: 1px solid var(--border-light);
      border-radius: 80px;
      padding: 0.35rem 0.35rem 0.35rem 1.3rem;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
    }

    .search-wrapper:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(217, 93, 59, 0.08);
    }

    .search-wrapper i {
      color: var(--text-muted);
      font-size: 1rem;
    }

    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 0.7rem 0.8rem;
      font-size: 0.95rem;
      font-weight: 400;
      min-width: 220px;
      outline: none;
      font-family: 'Inter', sans-serif;
      color: var(--text-main);
    }

    .search-wrapper input::placeholder {
      color: #9a9ab0;
      font-weight: 400;
    }

    .search-btn {
      background: var(--primary);
      border: none;
      color: #fff;
      width: 42px;
      height: 42px;
      border-radius: 80px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
    }

    .search-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
    }

    .icon-btn {
      background: var(--bg-card);
      border: 1px solid var(--border-light);
      color: var(--primary);
      width: 48px;
      height: 48px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.2rem;
      cursor: pointer;
      transition: var(--transition);
      position: relative;
      box-shadow: var(--shadow-sm);
    }

    .icon-btn:hover {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      transform: translateY(-2px);
    }

    .badge {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #fff;
      font-size: 0.7rem;
      font-weight: 600;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid var(--bg-card);
    }

    /* ========== CATEGORY NAVIGATION ========== */
    .category-nav {
      display: flex;
      gap: 0.5rem;
      flex-wrap: wrap;
      margin: 1.2rem 0 2rem;
      padding-bottom: 0.5rem;
      border-bottom: 1px solid var(--border-light);
      overflow-x: auto;
      padding-top: 0.2rem;
    }

    .cat-btn {
      background: transparent;
      border: none;
      font-family: 'Inter', sans-serif;
      font-size: 0.95rem;
      font-weight: 500;
      color: var(--text-muted);
      padding: 0.7rem 1.4rem;
      border-radius: 40px;
      cursor: pointer;
      transition: var(--transition);
      white-space: nowrap;
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .cat-btn i {
      font-size: 1rem;
    }

    .cat-btn:hover {
      background: #f0f0f6;
      color: var(--primary);
    }

    .cat-btn.active {
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      box-shadow: 0 6px 14px rgba(15, 15, 26, 0.12);
    }

    /* ========== HERO ========== */
    .hero {
      background: linear-gradient(135deg, #ffffff 0%, #f3f3fa 100%);
      border-radius: var(--radius-xl);
      padding: 2.5rem 3rem;
      margin-bottom: 3rem;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 2rem;
      box-shadow: var(--shadow-md);
      border: 1px solid rgba(255, 255, 255, 0.6);
    }

    .hero-content {
      flex: 1 1 280px;
    }

    .hero-tag {
      display: inline-block;
      background: var(--accent-light);
      color: var(--accent);
      font-weight: 600;
      font-size: 0.8rem;
      letter-spacing: 0.4px;
      padding: 0.35rem 1rem;
      border-radius: 40px;
      margin-bottom: 1.2rem;
      text-transform: uppercase;
    }

    .hero h1 {
      font-size: 2.8rem;
      font-weight: 800;
      line-height: 1.2;
      letter-spacing: -1px;
      color: var(--primary);
      margin-bottom: 1rem;
      max-width: 520px;
    }

    .hero h1 i {
      color: var(--accent);
      font-style: normal;
    }

    .hero p {
      color: var(--text-muted);
      font-size: 1.1rem;
      max-width: 440px;
      margin-bottom: 1.8rem;
    }

    .hero-actions {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
    }

    .btn-primary {
      background: var(--primary);
      color: #fff;
      border: none;
      font-family: 'Inter', sans-serif;
      font-weight: 600;
      font-size: 1rem;
      padding: 0.9rem 2.2rem;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 8px;
      box-shadow: 0 8px 18px rgba(15, 15, 26, 0.12);
    }

    .btn-primary:hover {
      background: var(--accent);
      transform: translateY(-3px);
      box-shadow: 0 14px 24px rgba(217, 93, 59, 0.2);
    }

    .btn-outline {
      background: transparent;
      color: var(--primary);
      border: 1.5px solid var(--border-light);
      font-family: 'Inter', sans-serif;
      font-weight: 600;
      font-size: 1rem;
      padding: 0.9rem 2rem;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: var(--bg-card);
    }

    .btn-outline:hover {
      border-color: var(--accent);
      color: var(--accent);
      background: #fff;
    }

    .hero-visual {
      flex: 0 0 220px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .hero-badge {
      background: var(--bg-card);
      border-radius: 50%;
      width: 180px;
      height: 180px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      box-shadow: 0 25px 40px -12px rgba(0, 0, 0, 0.1);
      border: 2px solid rgba(255, 255, 255, 0.8);
    }

    .hero-badge i {
      font-size: 3.4rem;
      color: var(--accent);
      margin-bottom: 0.3rem;
    }

    .hero-badge span {
      font-weight: 700;
      font-size: 1.1rem;
      color: var(--primary);
    }

    /* ========== SECTION HEADER ========== */
    .section-head {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin: 3rem 0 1.5rem;
    }

    .section-head h2 {
      font-size: 1.9rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      color: var(--primary);
    }

    .section-head a {
      color: var(--accent);
      font-weight: 600;
      text-decoration: none;
      font-size: 0.95rem;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: var(--transition);
    }

    .section-head a:hover {
      gap: 10px;
      color: var(--accent-hover);
    }

    /* ========== PRODUCT GRID ========== */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
      gap: 1.8rem;
      margin-bottom: 3.5rem;
    }

    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius-lg);
      padding: 1.2rem 1.2rem 1.5rem;
      box-shadow: var(--shadow-sm);
      border: 1px solid var(--border-light);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 25px 30px -12px rgba(0, 0, 0, 0.1);
      border-color: #d0d0e0;
    }

    .product-badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #fff;
      font-size: 0.7rem;
      font-weight: 700;
      padding: 0.25rem 0.9rem;
      border-radius: 40px;
      letter-spacing: 0.3px;
      text-transform: uppercase;
      z-index: 2;
    }

    .wishlist-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      background: rgba(255, 255, 255, 0.9);
      border: none;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--text-muted);
      font-size: 1rem;
      cursor: pointer;
      transition: var(--transition);
      backdrop-filter: blur(4px);
      z-index: 2;
      box-shadow: 0 2px 8px rgba(0,0,0,0.04);
    }

    .wishlist-btn:hover {
      background: var(--accent);
      color: #fff;
    }

    .product-img {
      background: #f4f5fb;
      border-radius: var(--radius-md);
      height: 180px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 1rem;
      font-size: 3.2rem;
      color: var(--primary-light);
      transition: var(--transition);
      overflow: hidden;
    }

    .product-card:hover .product-img {
      background: #edeef7;
    }

    .product-title {
      font-weight: 700;
      font-size: 1.1rem;
      margin-bottom: 0.3rem;
      color: var(--primary);
      letter-spacing: -0.2px;
    }

    .product-desc {
      font-size: 0.85rem;
      color: var(--text-muted);
      margin-bottom: 0.9rem;
      line-height: 1.4;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }

    .product-meta {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: auto;
    }

    .price {
      font-weight: 800;
      font-size: 1.35rem;
      color: var(--primary);
      letter-spacing: -0.5px;
    }

    .price s {
      font-size: 0.85rem;
      font-weight: 400;
      color: #9a9ab0;
      margin-left: 6px;
    }

    .add-btn {
      background: var(--primary);
      color: #fff;
      border: none;
      width: 46px;
      height: 46px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.1rem;
      cursor: pointer;
      transition: var(--transition);
      box-shadow: 0 6px 14px rgba(15, 15, 26, 0.15);
    }

    .add-btn:hover {
      background: var(--accent);
      transform: scale(1.06) rotate(4deg);
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 0.8rem;
      color: #f5b342;
      margin-bottom: 0.5rem;
    }

    .rating span {
      color: var(--text-muted);
      font-weight: 500;
      margin-left: 4px;
      font-size: 0.8rem;
    }

    /* ========== FOOTER ========== */
    .footer {
      margin-top: 4rem;
      padding: 2.5rem 0 2rem;
      border-top: 1px solid var(--border-light);
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 2rem;
      font-size: 0.9rem;
      color: var(--text-muted);
    }

    .footer-links {
      display: flex;
      gap: 2rem;
      flex-wrap: wrap;
    }

    .footer-links a {
      color: var(--text-muted);
      text-decoration: none;
      transition: var(--transition);
    }

    .footer-links a:hover {
      color: var(--accent);
    }

    .footer-copy i {
      color: var(--accent);
      margin: 0 2px;
    }

    /* ========== RESPONSIVE ========== */
    @media (max-width: 750px) {
      body {
        padding: 0 0.8rem;
      }

      .hero {
        padding: 1.8rem;
      }

      .hero h1 {
        font-size: 2rem;
      }

      .search-wrapper input {
        min-width: 120px;
      }

      .main-header {
        flex-direction: column;
        align-items: stretch;
      }

      .header-actions {
        justify-content: space-between;
      }

      .hero-visual {
        display: none;
      }

      .section-head {
        flex-direction: column;
        gap: 0.5rem;
        align-items: flex-start;
      }
    }

    @media (max-width: 480px) {
      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 1rem;
      }

      .product-img {
        height: 120px;
        font-size: 2.2rem;
      }

      .product-title {
        font-size: 0.95rem;
      }

      .price {
        font-size: 1.1rem;
      }

      .add-btn {
        width: 38px;
        height: 38px;
        font-size: 0.9rem;
      }

      .search-wrapper {
        padding-left: 0.8rem;
      }

      .search-wrapper input {
        min-width: 80px;
        padding: 0.6rem 0.4rem;
      }

      .icon-btn {
        width: 42px;
        height: 42px;
        font-size: 1rem;
      }

      .logo-text {
        font-size: 1.4rem;
      }
    }
  </style>
</head>
<body>

  <!-- ANNOUNCEMENT -->
  <div class="announcement">
    <i class="fas fa-bolt"></i> Free shipping on all orders over $50 · 30‑day returns
  </div>

  <div class="container">

    <!-- HEADER -->
    <header class="main-header">
      <div class="logo">
        <div class="logo-mark">N</div>
        <div class="logo-text">Nexus<span>Shop</span></div>
      </div>

      <div class="header-actions">
        <!-- Search -->
        <div class="search-wrapper">
          <i class="fas fa-search"></i>
          <input type="text" placeholder="Search products...">
          <button class="search-btn"><i class="fas fa-arrow-right"></i></button>
        </div>

        <!-- Icons -->
        <button class="icon-btn" aria-label="Wishlist">
          <i class="far fa-heart"></i>
          <span class="badge">3</span>
        </button>
        <button class="icon-btn" aria-label="Cart">
          <i class="fas fa-shopping-bag"></i>
          <span class="badge">2</span>
        </button>
        <button class="icon-btn" aria-label="Account">
          <i class="far fa-user"></i>
        </button>
      </div>
    </header>

    <!-- CATEGORY NAVIGATION -->
    <nav class="category-nav">
      <button class="cat-btn active"><i class="fas fa-th-large"></i> All</button>
      <button class="cat-btn"><i class="fas fa-mobile-alt"></i> Electronics</button>
      <button class="cat-btn"><i class="fas fa-tshirt"></i> Fashion</button>
      <button class="cat-btn"><i class="fas fa-couch"></i> Home</button>
      <button class="cat-btn"><i class="fas fa-shopping-basket"></i> Grocery</button>
      <button class="cat-btn"><i class="fas fa-dumbbell"></i> Sports</button>
      <button class="cat-btn"><i class="fas fa-book"></i> Books</button>
    </nav>

    <!-- HERO -->
    <section class="hero">
      <div class="hero-content">
        <div class="hero-tag"><i class="fas fa-star"></i> New season</div>
        <h1>Elevate your <i>everyday</i> with modern essentials</h1>
        <p>Discover curated collections designed for comfort, style, and functionality — all in one place.</p>
        <div class="hero-actions">
          <button class="btn-primary">Shop now <i class="fas fa-arrow-right"></i></button>
          <button class="btn-outline">Explore <i class="fas fa-compass"></i></button>
        </div>
      </div>
      <div class="hero-visual">
        <div class="hero-badge">
          <i class="fas fa-tag"></i>
          <span>Up to 40% off</span>
        </div>
      </div>
    </section>

    <!-- PRODUCT SECTION -->
    <div class="section-head">
      <h2>Trending now</h2>
      <a href="#">View all <i class="fas fa-chevron-right"></i></a>
    </div>

    <div class="product-grid">
      <!-- Product 1 -->
      <div class="product-card">
        <span class="product-badge">-20%</span>
        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
        <div class="product-img"><i class="fas fa-headphones"></i></div>
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><span>(4.8)</span></div>
        <div class="product-title">AuraSound Pro</div>
        <div class="product-desc">Wireless noise‑cancelling headphones with 40h battery.</div>
        <div class="product-meta">
          <div class="price">$189 <s>$239</s></div>
          <button class="add-btn"><i class="fas fa-plus"></i></button>
        </div>
      </div>

      <!-- Product 2 -->
      <div class="product-card">
        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
        <div class="product-img"><i class="fas fa-clock"></i></div>
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><span>(4.2)</span></div>
        <div class="product-title">Minimal Chrono</div>
        <div class="product-desc">Sapphire glass, leather strap, 5ATM water resistance.</div>
        <div class="product-meta">
          <div class="price">$129</div>
          <button class="add-btn"><i class="fas fa-plus"></i></button>
        </div>
      </div>

      <!-- Product 3 -->
      <div class="product-card">
        <span class="product-badge">New</span>
        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
        <div class="product-img"><i class="fas fa-camera-retro"></i></div>
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><span>(5.0)</span></div>
        <div class="product-title">Lumina X100</div>
        <div class="product-desc">Instant camera with retro design and modern lens.</div>
        <div class="product-meta">
          <div class="price">$249</div>
          <button class="add-btn"><i class="fas fa-plus"></i></button>
        </div>
      </div>

      <!-- Product 4 -->
      <div class="product-card">
        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
        <div class="product-img"><i class="fas fa-chair"></i></div>
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><span>(4.4)</span></div>
        <div class="product-title">Nordic Lounge</div>
        <div class="product-desc">Ergonomic accent chair with premium fabric.</div>
        <div class="product-meta">
          <div class="price">$349</div>
          <button class="add-btn"><i class="fas fa-plus"></i></button>
        </div>
      </div>

      <!-- Product 5 -->
      <div class="product-card">
        <span class="product-badge">-15%</span>
        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
        <div class="product-img"><i class="fas fa-shoe-prints"></i></div>
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><span>(4.7)</span></div>
        <div class="product-title">CloudRunner</div>
        <div class="product-desc">Lightweight running shoes with responsive cushioning.</div>
        <div class="product-meta">
          <div class="price">$119 <s>$140</s></div>
          <button class="add-btn"><i class="fas fa-plus"></i></button>
        </div>
      </div>

      <!-- Product 6 -->
      <div class="product-card">
        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
        <div class="product-img"><i class="fas fa-mug-hot"></i></div>
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><span>(4.9)</span></div>
        <div class="product-title">Ceramic Pour‑Over</div>
        <div class="product-desc">Artisan coffee set with double‑wall ceramic.</div>
        <div class="product-meta">
          <div class="price">$59</div>
          <button class="add-btn"><i class="fas fa-plus"></i></button>
        </div>
      </div>

      <!-- Product 7 -->
      <div class="product-card">
        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
        <div class="product-img"><i class="fas fa-tablet-alt"></i></div>
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><span>(4.1)</span></div>
        <div class="product-title">SlatePad Air</div>
        <div class="product-desc">11" tablet with vivid display and all‑day battery.</div>
        <div class="product-meta">
          <div class="price">$429</div>
          <button class="add-btn"><i class="fas fa-plus"></i></button>
        </div>
      </div>

      <!-- Product 8 -->
      <div class="product-card">
        <span class="product-badge">Limited</span>
        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
        <div class="product-img"><i class="fas fa-gem"></i></div>
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><span>(5.0)</span></div>
        <div class="product-title">Aurora Pendant</div>
        <div class="product-desc">Handcrafted sterling silver with lab‑grown stone.</div>
        <div class="product-meta">
          <div class="price">$215</div>
          <button class="add-btn"><i class="fas fa-plus"></i></button>
        </div>
      </div>
    </div>

    <!-- FOOTER -->
    <footer class="footer">
      <div class="footer-links">
        <a href="#">About</a>
        <a href="#">Contact</a>
        <a href="#">Shipping</a>
        <a href="#">Returns</a>
        <a href="#">Privacy</a>
      </div>
      <div class="footer-copy">
        <i class="fas fa-copyright"></i> 2025 NexusShop — designed for you
      </div>
    </footer>

  </div>
  <!-- container end -->

</body>
</html>

