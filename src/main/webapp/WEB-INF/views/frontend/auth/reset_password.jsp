<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Forgot Password Section -->
        <section class="details-section">
            <div class="container">
                <div class="offset-lg-2 col-lg-8">
                    <div class="row row-cols-1 g-4">
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-header bg-transparent text-capitalize pt-3">
                                    <h3>forgot your password?</h3>
                                </div>
                                <div class="card-body">
                                    <div class="vstack gap-4">
                                    <span>Change your password in easy three steps. This will help you to secure your
                                        account.</span>
                                        <ol class="vstack gap-2">
                                            <li class="p-1">Enter your email address below.</li>
                                            <li class="p-1">Our system will send you an OTP to your email.</li>
                                            <li class="p-1">Enter the OTP and confirm the account ownership.</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col" id="col-email">
                            <div class="card shadow">
                                <div class="card-body">
                                    <div class="row g-3">
                                        <div>
                                            <label class="form-label text-black fs-6">Your Email <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control me-auto shadow-none" required
                                                   id="email"/>
                                        </div>
                                        <div>
                                            <button class="btn btn-outline-success rounded-pill shadow-none btn-otp">Get
                                                OTP
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col d-none" id="col-otp">
                            <div class="card shadow">
                                <div class="card-body">
                                    <div class="row g-3">
                                        <div>
                                            <label class="form-label text-black fs-6">OTP <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control me-auto shadow-none" id="otp"
                                                   required/>
                                        </div>
                                        <div>
                                            <button type="button"
                                                    class="btn btn-outline-success rounded-pill shadow-none me-2 btn-confirm">
                                                Confirm
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col d-none" id="col-password">
                            <div class="card shadow">
                                <div class="card-body">
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label class="form-label text-black fs-6">New Password <span
                                                    class="text-danger">*</span></label>
                                            <input type="password" class="form-control me-auto shadow-none" id="password_1" required/>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label text-black fs-6">Confirm Password <span
                                                    class="text-danger">*</span></label>
                                            <input type="password" class="form-control me-auto shadow-none" id="password_2" required/>
                                        </div>
                                        <div>
                                            <small class="text-muted">
                                                Your password must be 8-20 characters long, contain at least one
                                                uppercase,one
                                                lowercase, one number and one symbol (like $@_), and must not contain
                                                spaces or emoji.
                                            </small>
                                        </div>
                                        <div>
                                            <button type="button"
                                                    class="btn btn-outline-success rounded-pill shadow-none me-2 btn-save">
                                                Save
                                            </button>
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
            /*Get OTP*/
            document.querySelector(`.btn-otp`).addEventListener(`click`, (e) => {
                let col_email = document.querySelector(`#col-email`);
                let col_otp = document.querySelector(`#col-otp`);

                const emailRegex = /^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;

                let email = document.querySelector(`#email`);
                let btn_otp = document.querySelector(`.btn-otp`);

                if (email.value == ``) {
                    window.alert(`Please enter your email.`);
                } else if (!emailRegex.test(email.value)) {
                    window.alert(`Please enter a valid email.`)
                } else {
                    email.readOnly = true;
                    btn_otp.disabled = true;

                    fetch('${BASE_URL}auth/reset', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            email: email.value,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                window.alert(`OTP has been sent to your email.`);
                                col_email.classList.toggle("d-none");
                                col_otp.classList.toggle("d-none");
                            } else {
                                window.alert(`Sorry! we can't find your account.`)
                                window.location.reload();
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in reset_password.jsp :`, error);
                        })
                }
            });

            /*Confirm OTP*/
            document.querySelector(`.btn-confirm`).addEventListener(`click`, (e) => {
                let col_otp = document.querySelector(`#col-otp`);
                let col_password = document.querySelector(`#col-password`);

                let otp = document.querySelector(`#otp`);
                let btn_confirm = document.querySelector(`.btn-confirm`);

                if (otp.value == ``) {
                    window.alert(`Please enter your OTP.`);
                } else {
                    otp.readOnly = true;
                    btn_confirm.disabled = true;

                    fetch('${BASE_URL}auth/reset/confirm-otp', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            otp: otp.value,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                col_otp.classList.toggle("d-none");
                                col_password.classList.toggle("d-none");
                            } else {
                                window.alert(`Invalid OTP. Please try again.`)
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in reset_password.jsp :`, error);
                        })
                }
            });

            /*Reset password*/
            document.querySelector(`.btn-save`).addEventListener(`click`, (e) => {
                const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@_])[A-Za-z\d$@_]{8,}$/;

                let passwordOne = document.querySelector(`#password_1`);
                let passwordTwo = document.querySelector(`#password_2`);
                let btn_save = document.querySelector(`.btn-save`);

                if (passwordOne.value == `` || passwordTwo.value == ``) {
                    window.alert(`Please fill mandatory fields.`);
                } else if (!passwordRegex.test(passwordOne.value)) {
                    window.alert(`Please enter a valid password.`)
                } else if (passwordOne.value != passwordTwo.value) {
                    window.alert(`Please check if your confirm password is correct.`)
                } else {
                    passwordOne.readOnly = true;
                    passwordTwo.readOnly = true;
                    btn_save.disabled = true;

                    fetch('${BASE_URL}auth/reset/password-change', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            passwordNew: passwordOne.value,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                window.alert(`Your password has been changed successfully.`);
                                window.location = ${BASE_URL}+"auth/signin";
                            } else {
                                window.alert(`Something went wrong.`);
                                passwordOne.readOnly = false;
                                passwordTwo.readOnly = false;
                                btn_save.disabled = false;
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in profile.jsp :`, error);
                        })
                }
            });
        </script>
    </layout:put>
</layout:extends>
