<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Single Meal View Section -->
        <section class="meal-feature-section">
            <div class="container">
                <div class="row d-flex g-4">
                    <div class="col-md-5">
                        <div class="card border-success border-opacity-50 shadow">
                            <img src="../assets/images/product/pm1.jpeg" class="card-img"/>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="card shadow">
                            <div class="card-body">
                                <h1 class="text-capitalize text-success fw-bold">
                                    spicy kottu
                                </h1>
                                <div class="mt-4">
                                <span class="text-capitalize fw-semibold">
                                    <span class="text-dark">category : </span>
                                    <span class="text-secondary opacity-75">
                                        kottu
                                    </span>
                                </span>
                                </div>
                                <div class="mt-3">
                                <span class="text-capitalize fw-semibold">
                                    <span class="text-dark">meal type : </span>
                                    <span class="text-secondary opacity-75">
                                        chicken
                                    </span>
                                </span>
                                </div>
                                <div class="mt-3">
                                <span class="fw-semibold">
                                    <span class="text-capitalize text-dark">descripton : </span>
                                    <span class="text-secondary opacity-75">
                                        Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                                    </span>
                                </span>
                                </div>
                                <div class="mt-5">
                                <span class="text-capitalize fw-semibold">
                                    <span class="fs-2 text-dark opacity-75">rs.
                                        1000.00
                                    </span>
                                </span>
                                </div>
                                <div class="mt-3">
                                <span class="text-capitalize fw-semibold">
                                    <span class="text-dark">maximum preparation time : </span>
                                    <span class="text-secondary opacity-75">50 minutes</span>
                                </span>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-12 col-md-8 col-lg-6">
                                        <div class="row">
                                            <div class="col-3">
                                                <button class="btn btn-outline-success rounded-pill col-12 shadow-none decrease">
                                                    <i class="bi bi-dash-lg"></i>
                                                </button>
                                            </div>
                                            <div class="col-6">
                                                <input type="text" class="form-control border-1 border-success border-opacity-75
                                            shadow-none text-center fw-semibold rounded-pill quantity" value="1"
                                                       readonly/>
                                            </div>
                                            <div class="col-3">
                                                <button class="btn btn-outline-success rounded-pill col-12 shadow-none increase">
                                                    <i class="bi bi-plus-lg"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-8 col-lg-6 mt-3 mt-lg-0">
                                        <button class="col-12 btn btn-outline-success rounded-pill shadow-none text-capitalize">
                                            add to cart
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Related Item Section -->
        <section class="related-items-section">
            <div class="container">
                <div class="card">
                    <div class="card-header text-capitalize pt-3">
                        <h3>related items</h3>
                    </div>
                    <div class="card-body">
                        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                            <!-- Meal Card 1 -->
                            <div class="col">
                                <div class="card h-100 shadow-lg border-success border-opacity-50">
                                    <a href="${BASE_URL}menu/meal" class="link text-decoration-none"
                                       style="cursor: pointer;">
                                        <img src="../assets/images/product/pm2.jpeg" class="card-img-top"/>
                                    </a>
                                    <div class="card-body text-center bg-light">
                                        <h5 class="card-title text-capitalize fw-semibold">
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
                                            <button class="btn btn-outline-success rounded-pill shadow-none">Add to
                                                Cart
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Meal Card 1 -->
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </layout:put>

    <layout:put block="script" type="APPEND">
        <script type="text/javascript">
            // Quantity Increase
            document.querySelector(`.increase`).addEventListener(`click`, (e) => {
                let quantity = document.querySelector(`.quantity`);

                if (quantity.value < 10) {
                    let newQuantity = parseInt(quantity.value) + 1;
                    quantity.value = newQuantity;
                }
            });

            // Quantity Decrease
            document.querySelector(`.decrease`).addEventListener(`click`, (e) => {
                let quantity = document.querySelector(`.quantity`);

                if (quantity.value > 1) {
                    let newQuantity = parseInt(quantity.value) - 1;
                    quantity.value = newQuantity;
                }
            });
        </script>
    </layout:put>
</layout:extends>
