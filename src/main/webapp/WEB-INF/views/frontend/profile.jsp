<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Account Details Section -->
        <section class="details-section">
            <div class="container">
                <div class="row row-cols-1 g-4">
                    <div class="col">
                        <div class="card shadow px-1">
                            <div class="card-body">

                                <div class="col-12 title-box">
                                    <h4 class="card-title text-uppercase fw-semibold text-dark text-center">account details
                                    </h4>
                                </div>
                                <hr />

                                <div class="row">
                                    <div class="col-lg-6">
                                        <label class="form-label text-black fs-6">
                                            First Name <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" required id="fname" />
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="form-label text-black fs-6">
                                            Last Name <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" required id="lname" />
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="form-label text-black fs-6">
                                            Email <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" value="example@gmail.com"
                                               id="lname" readonly />
                                    </div>
                                    <div class="col-md-4 col-lg-2">
                                        <label class="form-label text-black fs-6">
                                            Code <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" value="+94" readonly />
                                    </div>
                                    <div class="col-md-8 col-lg-4">
                                        <label class="form-label text-black fs-6">
                                            Phone No <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" placeholder="777123456"
                                               id="phone" />
                                    </div>
                                </div>

                                <a href="#" class="btn btn-outline-success rounded-pill shadow-none">Save Changes</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="row row-cols-1 row-cols-lg-2 g-3">
                            <div class="col">
                                <div class="accordion shadow" id="accordionExample">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button
                                                    class="accordion-button shadow-none collapsed bg-success bg-opacity-50 text-black text-uppercase fw-semibold"
                                                    type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                                    aria-expanded="false" aria-controls="collapseOne">
                                                billing address
                                            </button>
                                        </h2>
                                        <div id="collapseOne" class="accordion-collapse collapse"
                                             data-bs-parent="#accordionExample">
                                            <div class="accordion-body">
                                                <label class="form-label text-black fs-6">
                                                    Address Line 1 <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control shadow-none mb-3" required
                                                       id="address_1" />
                                                <label class="form-label text-black fs-6">
                                                    Address Line 2 <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control shadow-none mb-3" required
                                                       id="address_2" />
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <label class="form-label text-black fs-6">
                                                            Nearest City <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control shadow-none mb-3" required
                                                               id="city" />
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <label class="form-label text-black fs-6">
                                                            Province <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control shadow-none mb-3"
                                                               value="WESTERN" readonly />
                                                    </div>
                                                </div>
                                                <a href="#" class="btn btn-outline-success rounded-pill shadow-none">Save
                                                    Changes</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="accordion shadow" id="accordionExampleTwo">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button
                                                    class="accordion-button shadow-none collapsed bg-success bg-opacity-50 text-black text-uppercase fw-semibold"
                                                    type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                    aria-expanded="false" aria-controls="collapseTwo">
                                                password change
                                            </button>
                                        </h2>
                                        <div id="collapseTwo" class="accordion-collapse collapse"
                                             data-bs-parent="#accordionExampleTwo">
                                            <div class="accordion-body">
                                                <label class="form-label text-black fs-6">
                                                    Current Password <span class="text-danger">*</span></label>
                                                <input type="password" class="form-control shadow-none mb-3" required
                                                       id="current_pswd" />
                                                <label class="form-label text-black fs-6">
                                                    New Password <span class="text-danger">*</span></label>
                                                <input type="password" class="form-control shadow-none mb-3" required
                                                       id="password_1" />
                                                <label class="form-label text-black fs-6">
                                                    Confirm Password <span class="text-danger">*</span></label>
                                                <input type="password" class="form-control shadow-none mb-3" required
                                                       id="password_2" />
                                                <a href="#" class="btn btn-outline-success rounded-pill shadow-none">Save
                                                    Changes</a>
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
</layout:extends>

