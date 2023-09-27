<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Checkout Details Section -->
        <section class="details-section">
            <div class="container">
                <div class="offset-lg-1 col-lg-10">

                    <!-- Detail Card -->
                    <div class="card shadow">
                        <div class="card-body">
                            <div class="row row-cols-1 g-4">

                                <!-- 1st card -->
                                <div class="col">
                                    <div class="card shadow-none border border-1 border-secondary-subtle">
                                        <div class="card-body">
                                            <div class="vstack gap-1">
                                                <div>
                                                    <span class="me-2"><i class="bi bi-house-check"></i></span>
                                                    <span class="text-capitalize">44/20A, mahenawatta, pahala imbulgoda,
                                                    imbulgoda.</span>
                                                </div>
                                                <hr/>
                                                <div>
                                                    <span class="me-2"><i class="bi bi-clock"></i></span>
                                                    <span class="text-capitalize">Order For : Today, ASAP</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 1st card -->
                                <!-- 2nd card -->
                                <div class="col">
                                    <div class="card shadow-none border border-1 border-secondary-subtle">
                                        <div class="card-header text-center">
                                            <span class="text-uppercase fw-semibold fs-5">recipient details</span>
                                        </div>
                                        <div class="card-body">
                                            <div class="row g-4">
                                                <div class="col-md-6">
                                                    <label class="form-label text-capitalize text-black fs-6">
                                                        First Name <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control shadow-none text-capitalize"
                                                           value="keshara" readonly disabled/>
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="form-label text-capitalize text-black fs-6">
                                                        last Name <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control shadow-none text-capitalize"
                                                           value="ranasinghe" readonly disabled/>
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="form-label text-capitalize text-black fs-6">
                                                        your email address <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control shadow-none text-capitalize"
                                                           value="kesharashakthi71@gmail.com" readonly disabled/>
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="form-label text-capitalize text-black fs-6">
                                                        your phone no <span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control shadow-none text-capitalize"
                                                           value="0764282345" readonly disabled/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 2nd card -->
                                <!-- 3rd card -->
                                <div class="col">
                                    <div class="card shadow-none border border-1 border-secondary-subtle">
                                        <div class="card-header text-center">
                                            <span class="text-uppercase fw-semibold fs-5">payment details</span>
                                        </div>
                                        <div class="card-body">
                                            <div class="row g-2">
                                                <div class="col-lg-7">
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
                                                        <div class="col-12">
                                                            <div class="alert alert-info">
                                                                <small>
                                                                    <i class="bi bi-shield-check me-2"></i>
                                                                    All prices are mentioned in Sri Lankan Rupees (Rs.)
                                                                    and
                                                                    you will be charged based on the prevailing exchange
                                                                    rate.
                                                                </small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                        class="d-none d-lg-flex justify-content-center align-items-center col-lg-1">
                                                    <div class="vr"></div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="row g-4">
                                                        <div
                                                                class="col-12 col-md-6 col-lg-12 d-flex justify-content-center align-items-center">
                                                            <img src="${BASE_URL}assets/images/app/visa.svg"
                                                                 class="img-fluid payment-method"/>
                                                        </div>
                                                        <div
                                                                class="col-12 col-md-6 col-lg-12 d-flex justify-content-center align-items-center">
                                                            <img src="${BASE_URL}assets/images/app/mastercard.svg"
                                                                 class="img-fluid payment-method"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12 mt-4">
                                                    <div class="vstack gap-1">
                                                        <div class="form-check">
                                                            <input class="form-check-input shadow-none" type="radio"
                                                                   name="payment" id="online" checked>
                                                            <label class="form-check-label" for="online">
                                                                Pay Online
                                                            </label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input shadow-none" type="radio"
                                                                   name="payment" id="onsite">
                                                            <label class="form-check-label" for="onsite">
                                                                Pay on Delivery
                                                            </label>
                                                        </div>
                                                        <div class="form-check mt-3">
                                                            <input class="form-check-input shadow-none" type="checkbox"
                                                                   value="1" id="tc">
                                                            <label class="form-check-label" for="tc">
                                                                I have read and agreed to the <a href="${BASE_URL}terms"
                                                                                                 class="link link-primary text-decoration-none">
                                                                Terms and Conditions
                                                            </a>.
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="alert alert-warning alert-dismissible fade show h-75 align-content-center"
                                                         role="alert">
                                                        <small>
                                                            <i class="bi bi-exclamation-circle"></i> Please agree to
                                                            terms and conditions.
                                                        </small>
                                                        <button type="button" class="btn-close shadow-none"
                                                                data-bs-dismiss="alert" aria-label="Close"></button>
                                                    </div>
                                                </div>
                                                <a href="${BASE_URL}checkout" class="btn btn-outline-success rounded-pill text-capitalize shadow-none">
                                                    confirm order
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 3rd card -->

                            </div>
                        </div>
                    </div>
                    <!-- Detail Card -->

                </div>
            </div>
        </section>

    </layout:put>
</layout:extends>
