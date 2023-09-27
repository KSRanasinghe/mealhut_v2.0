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
                                            <input type="text" class="form-control me-auto shadow-none" required />
                                        </div>
                                        <div>
                                            <button class="btn btn-outline-success rounded-pill shadow-none btn-otp">Get OTP</button>
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
                                            <input type="text" class="form-control me-auto shadow-none" required />
                                        </div>
                                        <div>
                                            <button type="button"
                                                    class="btn btn-outline-success rounded-pill shadow-none me-2 btn-confirm">Confirm</button>
                                            <button type="button"
                                                    class="btn btn-outline-danger rounded-pill shadow-none btn-re-enter">Re-enter</button>
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
                                            <input type="password" class="form-control me-auto shadow-none" required />
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label text-black fs-6">Confirm Password <span
                                                    class="text-danger">*</span></label>
                                            <input type="password" class="form-control me-auto shadow-none" required />
                                        </div>
                                        <div>
                                            <small class="text-muted">
                                                Your password must be 8-20 characters long, contain at least one uppercase,one
                                                lowercase, one number and one symbol (like $@_), and must not contain spaces or emoji.
                                            </small>
                                        </div>
                                        <div>
                                            <button type="button"
                                                    class="btn btn-outline-success rounded-pill shadow-none me-2 btn-save">Save</button>
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
            document.querySelector(`.btn-otp`).addEventListener(`click`, (e) => {
                let col_email = document.querySelector(`#col-email`);
                let col_otp = document.querySelector(`#col-otp`);

                col_email.classList.toggle("d-none");
                col_otp.classList.toggle("d-none");
            });

            // Show col-email
            document.querySelector(`.btn-re-enter`).addEventListener(`click`, (e) => {
                let col_otp = document.querySelector(`#col-otp`);
                let col_email = document.querySelector(`#col-email`);

                col_otp.classList.toggle("d-none");
                col_email.classList.toggle("d-none");
            });

            // Show col-password
            document.querySelector(`.btn-confirm`).addEventListener(`click`, (e) => {
                let col_otp = document.querySelector(`#col-otp`);
                let col_password = document.querySelector(`#col-password`);

                col_otp.classList.toggle("d-none");
                col_password.classList.toggle("d-none");
            });
        </script>
    </layout:put>
</layout:extends>
