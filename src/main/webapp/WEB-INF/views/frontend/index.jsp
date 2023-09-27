<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_index">
    <layout:put block="content">
        <!-- Carousel -->
        <section class="slider-section">
            <div id="carouselExampleCaptions" class="carousel carousel-dark slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                            aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="carousel-img bg-img-1"></div>
                        <div class="carousel-caption caption-1">
                            <h5>Fuel Your Day with Fresh & Wholesome Fare.</h5>
                            <p>Experience a Fusion of Flavor and Health.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-img bg-img-2"></div>
                        <div class="carousel-caption caption-2">
                            <h5>Savor the Flavor,<br/>Delivered to Your Home.</h5>
                            <p>From Our Kitchen to Your Door: Fresh & Convenient.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-img bg-img-3"></div>
                        <div class="carousel-caption caption-3">
                            <h5>Crafting Freshness and <br/>Flavor for Every Bite.</h5>
                            <p>Experience the Fusion of Flavor and Wellness.</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </section>

        <!-- Popular Meals -->
        <section class="popular-section">
            <div class="container">
                <div class="row text-center">
                    <h2>Popular <span class="text-success fw-bolder display-5">M</span>eals</h2>
                    <p>Indulge your cravings with our most popular dishes.</p>
                </div>
                <!-- card box start -->
                <div class="card-box">
                    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                        <div class="col">
                            <div class="card h-100 shadow border-success border-opacity-50">
                                <img src="assets/images/product/pm1.jpeg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title text-capitalize fw-bold">Card title</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural
                                        lead-in
                                        to additional content. This content is a little bit longer.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card h-100 shadow border-success border-opacity-50">
                                <img src="assets/images/product/pm2.jpeg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title text-capitalize fw-bold">Card title</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural
                                        lead-in
                                        to additional content. This content is a little bit longer.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card h-100 shadow border-success border-opacity-50">
                                <img src="assets/images/product/pm3.jpeg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title text-capitalize fw-bold">Card title</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural
                                        lead-in
                                        to additional content.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card h-100 shadow border-success border-opacity-50">
                                <img src="assets/images/product/pm4.jpeg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title text-capitalize fw-bold">Card title</h5>
                                    <p class="card-text">This is a longer card with supporting text below as a natural
                                        lead-in
                                        to additional content. This content is a little bit longer.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- card box end -->
                <div class="row col-10 offset-1 col-lg-4 offset-lg-4 mt-3">
                    <a href="${BASE_URL}menu" class="btn btn-outline-success rounded-pill shadow-none">View All Our Meals</a>
                </div>
            </div>
        </section>
    </layout:put>
</layout:extends>