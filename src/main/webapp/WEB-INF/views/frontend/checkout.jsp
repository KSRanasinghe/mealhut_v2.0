<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Checkout Section -->
        <section class="details-section">
            <div class="container">
                <div class="offset-lg-1 col-lg-10">
                    <!-- Detail Card -->
                    <div class="card shadow">
                        <div class="card-body">
                            <div class="row g-4">

                                <div class="col-lg-6">
                                    <div class="row g-3">
                                        <div class="text-start">
                                            <span class="text-capitalize text-black-50 fw-semibold">your grand total</span>
                                        </div>
                                        <div class="text-start">
                                            <h1 class="text-capitalize text-dark-emphasis fw-bold ms-2">rs.2100.00</h1>
                                        </div>
                                        <div class="position-relative p-5">
                                            <div class="position-absolute top-50 start-50 translate-middle">
                                                <img src="${BASE_URL}assets/images/app/stripe.svg"
                                                     class="img-fluid payment-method" />
                                            </div>
                                        </div>
                                        <div class="text-end">
                                        <span class="fst-italic text-black-50 opacity-50 fw-semibold">powered by
                                            Stripe.com</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-none d-lg-flex justify-content-center align-items-center col-lg-1">
                                    <div class="vr"></div>
                                </div>
                                <div class="d-block d-lg-none justify-content-center align-items-center">
                                    <hr />
                                </div>
                                <div class="col-lg-5">
                                    <div class="row g-3">
                                        <div class="col-12">
                                            <label class="form-label text-capitalize text-black fs-6">
                                                card holder name <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control shadow-none text-capitalize"
                                                   value="keshara ranasinghe" readonly disabled/>
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label text-capitalize text-black fs-6">
                                                your email address <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control shadow-none text-capitalize"
                                                   value="kesharashakthi71@gmail.com" readonly disabled />
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label text-capitalize text-black fs-6">
                                                your phone no <span class="text-danger">*</span></label>
                                            <input type="text" class="form-control shadow-none text-capitalize"
                                                   value="0764282345" readonly disabled />
                                        </div>
                                        <button class="btn btn-outline-success rounded-pill shadow-none">Pay with Card</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Detail Card -->
                </div>
            </div>
        </section>

    </layout:put>
</layout:extends>
