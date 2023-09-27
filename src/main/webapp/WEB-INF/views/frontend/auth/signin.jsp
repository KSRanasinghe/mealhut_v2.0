<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">
    <layout:put block="content">

        <!-- Sign In / Register Form -->
        <section class="signin-section">
            <div class="container">
                <div class="row">
                    <div class="col-12 offset-lg-1 col-lg-10">
                        <!-- loginCard -->
                        <div class="card shadow px-1" id="loginCard">
                            <div class="card-body">

                                <div class="col-12 offset-lg-1 col-lg-10">
                                    <div class="col-12 title-box">
                                        <h4 class="card-title text-uppercase fw-semibold text-dark text-center">let's
                                            make your order</h4>
                                    </div>
                                    <hr/>

                                    <div class="row g-4">
                                        <div class="col-lg-6">
                                            <div class="row g-3">
                                                <div class="col-12">
                                                    <label class="form-label text-black fs-6">Your Email <span
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
                                                <div class="form-check">
                                                    <input class="form-check-input shadow-none" type="checkbox"
                                                           value="1"
                                                           id="remember">
                                                    <label class="form-check-label text-black fs-6" for="remember">
                                                        Remember Me
                                                    </label>
                                                </div>
                                                <button class="btn btn-outline-success rounded-pill shadow-none signin-btn">
                                                    <i class="bi bi-person-check fs-5"></i>
                                                    <span class="ps-3">Sign in with MealHut</span>
                                                </button>
                                                <a href="${BASE_URL}auth/reset-password"
                                                   class="text-success text-decoration-none">
                                                    <i class="bi bi-arrow-repeat fs-5"></i><span class="ms-1">Reset
                                                    Password</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="d-none d-lg-flex col-lg-1 justify-content-center align-items-center">
                                            <div class="vr"></div>
                                        </div>
                                        <div class="d-block d-lg-none justify-content-center align-items-center">
                                            <hr>
                                        </div>
                                        <div class="col-lg-5">
                                            <div class="vstack gap-3">
                                                <a href="${BASE_URL}"
                                                   class="btn btn-outline-secondary rounded-pill shadow-none">
                                                    <i class="bi bi-people fs-5"></i>
                                                    <span class="ps-3">Continue as a guest</span>
                                                </a>
                                                <a href="${BASE_URL}auth/signup"
                                                   class="btn btn-outline-danger rounded-pill  shadow-none">
                                                    <i class="bi bi-person-plus fs-5"></i>
                                                    <span class="ps-3">Create an account</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- loginCard -->
                    </div>
                </div>
            </div>
        </section>

    </layout:put>

    <layout:put block="script" type="APPEND">
        <script type="text/javascript">
            document.querySelector(`.signin-btn`).addEventListener(`click`, (e) => {
                const emailRegex = /^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;

                let email = document.getElementById(`email`).value;
                let password = document.getElementById(`password`).value;
                let remember = document.getElementById(`remember`).checked;
                let btn = document.querySelector(`.signin-btn`);


                if (email == `` || password == ``) {
                    window.alert(`Please fill mandatory fields.`);
                } else if (!emailRegex.test(email)) {
                    window.alert(`Please enter a valid email.`)
                } else {
                    btn.disabled = true;

                    fetch('${BASE_URL}signin', {
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
                                window.location = `${BASE_URL}order/disposition`;
                            } else if(value == `fail`) {
                                window.alert(`Invalid email or password.`);
                                window.location.reload();
                            } else  {
                                window.alert(`Something went wrong.`);
                                window.location.reload();
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in signin.jsp :`, error);
                        })
                }
            });
        </script>
    </layout:put>
</layout:extends>
