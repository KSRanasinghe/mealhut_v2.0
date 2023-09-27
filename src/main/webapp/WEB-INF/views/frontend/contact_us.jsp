<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Contact Us Section -->
        <section class="contact-section">
            <div class="container">

                <div class="offset-lg-2 col-lg-8">
                    <div class="row row-cols-1 g-4">
                        <div class="col">
                            <div class="card shadow px-1">
                                <div class="card-body">
                                    <div class="col-12 title-box">
                                        <h4 class="card-title text-uppercase fw-semibold text-dark text-center">contact us
                                        </h4>
                                    </div>
                                    <hr />

                                    <div class="row row-cols-1 g-3">
                                        <div class="col">
                                            <div class="card shadow-none border-0">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-12 col-lg-4">
                                                            <label class="form-label text-black fs-6">
                                                                Inquiry Type <span class="text-danger">*</span></label>
                                                            <select class="form-select shadow-none mb-3" required id="inq">
                                                                <option value="0" selected disabled></option>
                                                                <option value="1">Appreciation</option>
                                                                <option value="2">Comlaint</option>
                                                                <option value="3">Order Inquiry</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-4 col-lg-2">
                                                            <label class="form-label text-black fs-6">
                                                                Code <span class="text-danger">*</span></label>
                                                            <input type="text" value="+94"
                                                                   class="form-control shadow-none mb-3" readonly />
                                                        </div>
                                                        <div class="col-8 col-lg-6">
                                                            <label class="form-label text-black fs-6">
                                                                Phone No <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control shadow-none mb-3"
                                                                   required pattern="[1-9]{9}" placeholder="777123456"
                                                                   id="mobile" />
                                                        </div>
                                                    </div>
                                                    <label class="form-label text-black fs-6">
                                                        Message <span class="text-danger">*</span></label>
                                                    <div class="form-floating">
                                                    <textarea class="form-control shadow-none mb-3" id="msg"
                                                              style="height: 120px"></textarea>
                                                        <label for="msg">Message</label>
                                                    </div>
                                                    <a href="#"
                                                       class="btn btn-outline-success rounded-pill shadow-none mt-2">
                                                        <i class="bi bi-send me-2"></i>
                                                        Send Now
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card shadow mb-3">
                                <div class="row g-0">
                                    <div class="col-md-4">
                                        <img src="assets/images/app/operator.jpg" class="img-fluid rounded-start" />
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title">
                                            <span class="me-2 text-success"><i
                                                    class="bi bi-geo-alt-fill"></i></span>Head Office - Gampaha
                                            </h5>
                                            <p class="card-text mb-3 ps-4">
                                                Contact No. : 011 2334 587
                                            </p>
                                            <h5 class="card-title">
                                            <span class="me-2 text-success"><i
                                                    class="bi bi-geo-alt-fill"></i></span>Kadawatha Branch
                                            </h5>
                                            <p class="card-text mb-3 ps-4">
                                                Contact No. : 011 2334 588
                                            </p>
                                            <h5 class="card-title">
                                            <span class="me-2 text-success"><i
                                                    class="bi bi-geo-alt-fill"></i></span>Colombo Branch
                                            </h5>
                                            <p class="card-text ps-4">
                                                Contact No. : 011 2334 589
                                            </p>
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
</layout:extends>
