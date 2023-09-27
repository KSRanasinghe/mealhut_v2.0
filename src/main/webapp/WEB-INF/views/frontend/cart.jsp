<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">

    <layout:put block="style" type="APPEND">
        <!-- DATA TABLE -->
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.bootstrap5.min.css"/>
    </layout:put>

    <layout:put block="content">
        <!-- Cart Details Section -->
        <section class="details-section">
            <div class="container-fluid">

                <div class="row row-cols-1">
                    <div class="col">

                        <div class="card shadow">
                            <div class="card-body">
                                <div class="container-fluid">
                                    <div class="row row-cols-1 row-cols-lg-2 g-4">

                                        <div class="col-lg-8">
                                            <div class="card shadow-none border-0">
                                                <div class="card-body">
                                                    <h5 class="card-title text-uppercase fw-semibold text-dark text-start">
                                                        your basket</h5>
                                                    <hr/>
                                                    <!-- This text has made invisible for now. make it visible or invisible according to DB record of cart. -->
                                                    <div class="row g-1 d-none">
                                                        <span class="text-secondary fw-semibold">No items in your basket.</span>
                                                        <small class="text-muted">Your Basket looks a little empty. Why
                                                            not check out some of our delighted meals.</small>
                                                    </div>


                                                    <table class="table align-middle display nowrap" id="cart">
                                                        <thead>
                                                        <tr>
                                                            <th>Product</th>
                                                            <th class="text-center">Price</th>
                                                            <th class="text-center">Quantity</th>
                                                            <th class="text-center">Subtotal</th>
                                                            <th class="text-center"></th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td class="text-capitalize">chicken kottu</td>
                                                            <td class="text-center">1000.0</td>
                                                            <td class="text-center">
                                                                <div class="row g-2 ">
                                                                    <div class="col-4 quantity">
                                                                        <span id="cart-quantity">1</span>
                                                                    </div>
                                                                    <div class="col-4">
                                                                        <button
                                                                                class="btn btn-light rounded-pill shadow-none cart-decrease">
                                                                            <span>
                                                                                <i class="bi bi-chevron-down"></i>
                                                                            </span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="col-4">
                                                                        <button
                                                                                class="btn btn-light rounded-pill shadow-none cart-increase">
                                                                            <span>
                                                                                <i class="bi bi-chevron-up"></i>
                                                                            </span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="text-center">2000.0</td>
                                                            <td class="text-center">
                                                                <button
                                                                        class="btn btn-light rounded-pill shadow-none cart-increase">
                                                                    <span><i class="bi bi-trash3"></i></span>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>

                                                    <div class="mt-3">
                                                        <a href="${BASE_URL}menu" class="btn btn-outline-success text-capitalize rounded-pill shadow-none">
                                                            <span class="me-2"><i class="bi bi-basket2"></i></span>
                                                            continue shopping
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="card shadow-none border-0">
                                                <div class="card-body">
                                                    <div class="col-12">
                                                        <h5 class="card-title text-uppercase fw-semibold text-dark text-start">
                                                            summary</h5>
                                                    </div>
                                                    <hr/>
                                                    <div class="row g-2">
                                                        <div class="col-6 text-start text-capitalize">sub total</div>
                                                        <div class="col-6 text-end">2000.00</div>
                                                        <hr/>
                                                        <div class="col-6 text-start text-capitalize">discount amount
                                                        </div>
                                                        <div class="col-6 text-end">0.00</div>
                                                        <hr/>
                                                        <div class="col-6 text-start text-capitalize">service
                                                            charge(7.0%)
                                                        </div>
                                                        <div class="col-6 text-end">100.00</div>
                                                        <hr/>
                                                        <div class="col-6 text-start text-capitalize">net total</div>
                                                        <div class="col-6 text-end">
                                                            <span class="fs-4 fw-bold">Rs.2100.00</span>
                                                        </div>
                                                        <hr/>
                                                        <a href="${BASE_URL}checkout/confirmation" class="btn btn-outline-danger rounded-pill text-capitalize shadow-none">
                                                            continue<i class="bi bi-arrow-right-circle ms-2"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </layout:put>

    <layout:put block="script" type="APPEND">
        <script type="text/javascript">
            // Quantity Increase
            document.querySelector(`.cart-increase`).addEventListener(`click`, (e) => {
                let quantity = document.querySelector(`#cart-quantity`);

                if (quantity.innerHTML < 10) {
                    let newQuantity = parseInt(quantity.innerHTML) + 1;
                    quantity.innerHTML = newQuantity;
                }
            });

            // Quantity Decrease
            document.querySelector(`.cart-decrease`).addEventListener(`click`, (e) => {
                let quantity = document.querySelector(`#cart-quantity`);

                if (quantity.innerHTML > 1) {
                    let newQuantity = parseInt(quantity.innerHTML) - 1;
                    quantity.innerHTML = newQuantity;
                }
            });
        </script>

        <!-- DATA TABLES -->
        <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/responsive.bootstrap5.min.js"></script>
        <script>
            $(document).ready(function () {
                new DataTable(`#cart`, {
                    responsive: true,
                    lengthChange: false,
                    pageLength: 10,
                    ordering: false,
                    searching: false,
                    paging: false,
                    info: false,
                    columnDefs: [
                        {responsivePriority: 1, targets: 0},
                        {responsivePriority: 2, targets: -2},
                    ]
                });
            });
        </script>
    </layout:put>
</layout:extends>
