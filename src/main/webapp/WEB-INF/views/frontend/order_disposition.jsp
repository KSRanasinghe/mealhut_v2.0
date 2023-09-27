<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Order Details Section -->
        <section class="details-section">
            <div class="container">

                <div class="offset-lg-3 col-lg-6">
                    <div class="card shadow px-1">
                        <div class="card-body">
                            <div class="col-12 title-box">
                                <h4 class="card-title text-uppercase fw-semibold text-dark text-center">order
                                    details</h4>
                            </div>
                            <hr/>
                            <div class="row">
                                <p class="text-danger small fw-semibold" style="text-align: justify;">
                                    Please note that any meal order you place will be completed within a maximum
                                    preparation
                                    time of 50 minutes from the time the checkout process is completed. Furthermore,
                                    this
                                    time calculation may vary depending on the size of your order.
                                </p>
                                <p class="text-danger small fw-semibold" style="text-align: justify;">
                                    If you need to change the time when the order should be completed, please contact
                                    our
                                    staff through this number.
                                </p>
                                <span class="fs-6 fw-semibold text-secondary text-start">
                                <i class="bi bi-headset me-2"></i>
                                011 2334 587
                            </span>
                                <span class="fs-6 text-secondary fw-semibold  text-start my-2 pt-1">
                                <i class="bi bi-shop me-2"></i>
                                Operating Hours - 09:00AM to 10:00PM
                            </span>
                            </div>
                            <a href="${BASE_URL}menu"
                               class="btn btn-outline-success rounded-pill shadow-none col-12 my-2">Continue to menu
                            </a>
                            <span class="small text-muted my-2">
                            <span class="text-danger">*</span> Delivery time can be changed according to your delivery
                            location.
                        </span>
                        </div>
                    </div>
                </div>

            </div>
        </section>

    </layout:put>

</layout:extends>
