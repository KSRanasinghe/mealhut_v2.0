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
                                            <h4 class="card-title fw-semibold text-dark text-center">Sign into Admin
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
                                                           placeholder="example@gmail.com" id="email"
                                                           autocomplete="on"/>
                                                </div>
                                                <div class="col-12">
                                                    <label class="form-label text-black fs-6">Password <span
                                                            class="text-danger">*</span></label>
                                                    <input type="password" class="form-control shadow-none mb-4"
                                                           placeholder="Password *" id="password"/>
                                                </div>
                                                <button class="btn btn-outline-success rounded-pill shadow-none signin-btn">
                                                    Sign In
                                                </button>
                                            </div>
                                        </div>
                                        <div class="d-none" id="otp-area">
                                            <div class="row g-3">
                                                <div class="col-12">
                                                    <label class="form-label text-black fs-6">Username</label>
                                                    <input type="text" class="form-control fst-italic shadow-none" id="email_2" readonly/>
                                                </div>
                                                <div class="col-12">
                                                    <label class="form-label text-black fs-6">OTP <span
                                                            class="text-danger">*</span></label>
                                                    <input type="text" class="form-control shadow-none" id="otp"/>
                                                </div>
                                                <button class="btn btn-outline-success rounded-pill shadow-none confirm-btn">
                                                    Confirm OTP
                                                </button>
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
            /*Sign in*/
            document.querySelector(`.signin-btn`).addEventListener(`click`, (e) => {
                const emailRegex = /^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;

                let login_area = document.querySelector(`#login-area`);
                let otp_area = document.querySelector(`#otp-area`);

                let email = document.querySelector(`#email`);
                let password = document.querySelector(`#password`);
                let email_2 = document.querySelector(`#email_2`);
                let signin_btn = document.querySelector(`.signin-btn`);

                if (email.value == `` || password.value == ``) {
                    window.alert(`Please fill mandatory fields.`);
                } else if (!emailRegex.test(email.value)) {
                    window.alert(`Please enter a valid email.`)
                } else {
                    email.readOnly = true;
                    password.readOnly = true;
                    signin_btn.disabled = true;

                    fetch('${BASE_URL}admin/signin', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            email: email.value,
                            password: password.value,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                alert(`We have been sent the OTP to your email.`)
                                login_area.classList.toggle("d-none");
                                otp_area.classList.toggle("d-none");
                                email_2.value = email.value;
                            } else if (value == `inactive`) {
                                window.alert(`Sorry, your account has been blocked. Please contact our support team.`);
                                window.location.reload();
                            } else if (value == `fail`) {
                                window.alert(`Invalid email or password.`);
                                email.readOnly = false;
                                password.readOnly = false;
                                signin_btn.disabled = false;
                            } else {
                                window.alert(`Something went wrong.`);
                                window.location.reload();
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in index.jsp of backend :`, error);
                        })
                }
            });

            /*Confirm OTP*/
            document.querySelector(`.confirm-btn`).addEventListener(`click`, (e) => {

                let otp = document.querySelector(`#otp`);
                let email = document.querySelector(`#email_2`);
                let confirm_btn = document.querySelector(`.confirm-btn`);

                if (otp.value == ``) {
                    window.alert(`Please enter your OTP.`);
                } else {
                    otp.readOnly = true;
                    confirm_btn.disabled = true;

                    fetch('${BASE_URL}admin/signin/verify', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            email: email.value,
                            otp: otp.value,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                window.location = `${BASE_URL}admin/dashboard`;
                            } else if (value == `fail`) {
                                window.alert(`Invalid OTP. Please try again.`);
                                otp.readOnly = false;
                                confirm_btn.disabled = false;
                            } else {
                                window.alert(`Something went wrong.`);
                                window.location.reload();
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in index.jsp of backend :`, error);
                        })
                }
            });
        </script>
    </layout:put>
</layout:extends>