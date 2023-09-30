<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="admin_base">

    <layout:put block="content">
        <!-- Admin Signin Section -->
        <section class="details-section">
            <div class="container">
                <div class="offset-lg-3 col-lg-6">
                    <div class="row row-cols-1 g-5">
                        <div class="col text-center display-5 fw-bold">
                            <span class="text-success">M</span>eal<span class="text-success">H</span>ut<span
                                class="text-success">.</span>
                        </div>
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body">
                                    <div class="offset-md-2 col-md-8">
                                        <div class="col-12 title-box">
                                            <h4 class="card-title fw-semibold text-dark text-center">Log into Admin
                                                Panel
                                            </h4>
                                        </div>
                                        <hr/>
                                        <div id="login-area">
                                            <div class="row g-3">
                                                <div class="col-12">
                                                    <label class="form-label text-black fs-6">Username <span
                                                            class="text-danger">*</span></label>
                                                    <input type="text" class="form-control shadow-none"
                                                           placeholder="example@gmail.com" id="uname"
                                                           autocomplete="on"/>
                                                </div>
                                                <div class="col-12">
                                                    <label class="form-label text-black fs-6">Password <span
                                                            class="text-danger">*</span></label>
                                                    <input type="password" class="form-control shadow-none mb-4"
                                                           placeholder="Password *" id="spswd"/>
                                                </div>
                                                <button class="btn btn-outline-success rounded-pill shadow-none login-btn">
                                                    Log In
                                                </button>
                                            </div>
                                        </div>
                                        <div class="d-none" id="otp-area">
                                            <div class="row g-3">
                                                <div class="col-12">
                                                    <label class="form-label text-black fs-6">OTP <span
                                                            class="text-danger">*</span></label>
                                                    <input type="text" class="form-control shadow-none" id="otp"/>
                                                </div>
                                                <a href="${BASE_URL}admin/dashboard" class="btn btn-outline-success rounded-pill shadow-none confirm-btn">
                                                    Confirm OTP
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
        </section>
    </layout:put>

    <layout:put block="script">
        <script type="text/javascript">
            /*Confirm OTP*/
            document.querySelector(`.login-btn`).addEventListener(`click`, (e) => {
                let login_area = document.querySelector(`#login-area`);
                let otp_area = document.querySelector(`#otp-area`);

                login_area.classList.toggle("d-none");
                otp_area.classList.toggle("d-none");
            });
        </script>
    </layout:put>
</layout:extends>