<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Sign Up Section -->
        <section class="signup-section">
            <div class="container">

                <div class="offset-lg-3 col-lg-6">
                    <div class="card shadow px-1">
                        <div class="card-body">
                            <div class="col-12 title-box">
                                <h4 class="card-title text-uppercase fw-semibold text-dark text-center">become a mealhut
                                    friend
                                </h4>
                            </div>
                            <hr/>

                            <label class="form-label text-black fs-6">
                                Your Email <span class="text-danger">*</span></label>
                            <input type="text" class="form-control shadow-none mb-3" placeholder="example@gmail.com"
                                   required id="email" autocomplete="on"/>
                            <label for="password" class="form-label">
                                Password <span class="text-danger">*</span></label>
                            <input type="password" class="form-control shadow-none" aria-describedby="passwordHelpBlock"
                                   required id="password"/>
                            <div class="mb-3">
                                <small id="passwordHelpBlock" class="text-muted">
                                    Your password must be 8-20 characters long, contain at least one uppercase,one
                                    lowercase, one number and one symbol (like $@_), and must not contain spaces or
                                    emoji.
                                </small>
                            </div>
                            <div class="my-4">
                                <small class="text-muted">
                                    Your personal data will be used to support your experience throughout this website,
                                    to manage access to your account, and for other purposes described in our <a
                                        href="${BASE_URL}privacy-policy" class="text-decoration-none">privacy policy</a>.
                                </small>
                            </div>
                            <div class="form-check mb-3">
                                <input class="form-check-input shadow-none" type="checkbox" id="agree">
                                <label class="form-check-label small" for="agree">
                                    I agree to the privacy policy
                                </label>
                            </div>
                            <button class=" col-12 btn btn-outline-success rounded-pill shadow-none mb-2 signup-btn">
                                Register
                            </button>
                            <div class="text-center">
                                <a href="${BASE_URL}auth/signin" class="opacity-75 text-decoration-underline small">Already
                                    have an account?</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>

    </layout:put>

    <layout:put block="script">
        <script type="text/javascript">
            document.querySelector(`.signup-btn`).addEventListener(`click`, (e) => {
                const emailRegex = /^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;
                const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@_])[A-Za-z\d$@_]{8,}$/;


                let email = document.getElementById(`email`).value;
                let password = document.getElementById(`password`).value;
                let agree = document.getElementById(`agree`).checked;
                let btn = document.querySelector(`.signup-btn`);


                if (email == `` || password == ``) {
                    window.alert(`Please fill mandatory fields.`);
                } else if (!emailRegex.test(email)) {
                    window.alert(`Please enter a valid email.`)
                } else if (!passwordRegex.test(password)) {
                    window.alert(`Please enter a valid password.`)
                } else if (agree == false) {
                    window.alert(`Please agree to the privacy policy.`)
                } else {
                    btn.disabled = true;

                    fetch('${BASE_URL}register', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            email: email,
                            password: password,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                window.alert(`Your account has been created successfully.`)
                                window.location = `${BASE_URL}auth/signin`;
                            } else if (value == `exist`) {
                                window.alert(`This email already exists.`);
                                window.location.reload();
                            } else {
                                window.alert(`Something went wrong.`)
                                window.location.reload();
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in signup.jsp :`, error);
                        })
                }
            });
        </script>
    </layout:put>
</layout:extends>
