<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Menu Card Section -->
        <section class="details-section">
            <div class="container">
                <div class="row row-cols-1 g-4">
                    <!-- Menu Item Card 1 -->
                    <div class="col">
                        <div class="card shadow px-1">
                            <div class="card-body">

                                <div class="col-12 title-box">
                                    <h4 class="card-title text-uppercase fw-semibold text-dark text-center">rice</h4>
                                </div>
                                <hr/>

                                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                                    <!-- Meal Card 1 -->
                                    <div class="col">
                                        <div class="card h-100 shadow-lg border-success border-opacity-50">
                                            <a href="${BASE_URL}menu/meal" class="link text-decoration-none" style="cursor: pointer;">
                                                <img src="assets/images/product/pm2.jpeg" class="card-img-top"/>
                                            </a>
                                            <div class="card-body text-center bg-light">
                                                <h5 class="card-title text-capitalize fw-bold">
                                                    vegitable rice
                                                </h5>
                                                <p class="card-text text-secondary fw-semibold opacity-75 text-capitalize">
                                                    vege meal
                                                </p>
                                            </div>
                                            <div class="card-footer text-center border-success border-opacity-50">
                                            <span class="text-success fw-bold mt-3">
                                                Rs.750.00
                                            </span>
                                                <div class="row px-3 my-2">
                                                    <button class="btn btn-outline-success rounded-pill shadow-none">Add
                                                        to Cart
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Meal Card 1 -->
                                    <!-- Meal Card 2 -->
                                    <div class="col">
                                        <div class="card h-100 shadow-lg border-success border-opacity-50">
                                            <a href="#" class="link text-decoration-none" style="cursor: pointer;">
                                                <img src="assets/images/product/pm2.jpeg" class="card-img-top"/>
                                            </a>
                                            <div class="card-body text-center bg-light">
                                                <h5 class="card-title text-capitalize fw-bold">
                                                    vegitable rice
                                                </h5>
                                                <p class="card-text text-secondary fw-semibold opacity-75 text-capitalize">
                                                    vege meal
                                                </p>
                                            </div>
                                            <div class="card-footer text-center border-success border-opacity-50">
                                            <span class="text-success fw-bold mt-3">
                                                Rs.750.00
                                            </span>
                                                <div class="row px-3 my-2">
                                                    <button class="btn btn-outline-success rounded-pill shadow-none">Add
                                                        to Cart
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Meal Card 2 -->
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Menu Item Card 1 -->
                    <!-- Menu Item Card 2 -->
                    <div class="col">
                        <div class="card shadow px-1">
                            <div class="card-body">

                                <div class="col-12 title-box">
                                    <h4 class="card-title text-uppercase fw-semibold text-dark text-center">kottu</h4>
                                </div>
                                <hr/>

                                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                                    <!-- Meal Card 1 -->
                                    <div class="col">
                                        <div class="card h-100 shadow-lg border-success border-opacity-50">
                                            <a href="#" class="link text-decoration-none" style="cursor: pointer;">
                                                <img src="assets/images/product/pm1.jpeg" class="card-img-top"/>
                                            </a>
                                            <div class="card-body text-center bg-light">
                                                <h5 class="card-title text-capitalize fw-bold">
                                                    spicy kottu
                                                </h5>
                                                <p class="card-text text-secondary fw-semibold opacity-75 text-capitalize">
                                                    chicken meal
                                                </p>
                                            </div>
                                            <div class="card-footer text-center border-success border-opacity-50">
                                            <span class="text-success fw-bold mt-3">
                                                Rs.1000.00
                                            </span>
                                                <div class="row px-3 my-2">
                                                    <button class="btn btn-outline-success rounded-pill shadow-none">Add
                                                        to Cart
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Meal Card 1 -->
                                    <!-- Meal Card 2 -->
                                    <div class="col">
                                        <div class="card h-100 shadow-lg border-success border-opacity-50">
                                            <a href="#" class="link text-decoration-none" style="cursor: pointer;">
                                                <img src="assets/images/product/pm1.jpeg" class="card-img-top"/>
                                            </a>
                                            <div class="card-body text-center bg-light">
                                                <h5 class="card-title text-capitalize fw-bold">
                                                    spicy kottu
                                                </h5>
                                                <p class="card-text text-secondary fw-semibold opacity-75 text-capitalize">
                                                    chicken meal
                                                </p>
                                            </div>
                                            <div class="card-footer text-center border-success border-opacity-50">
                                            <span class="text-success fw-bold mt-3">
                                                Rs.1000.00
                                            </span>
                                                <div class="row px-3 my-2">
                                                    <button class="btn btn-outline-success rounded-pill shadow-none">Add
                                                        to Cart
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Meal Card 2 -->
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Menu Item Card 2 -->
                </div>
            </div>
        </section>

    </layout:put>
</layout:extends>
