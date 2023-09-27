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
                                    <h4 class="card-title text-uppercase fw-semibold text-dark text-center">account
                                        details
                                    </h4>
                                </div>
                                <hr/>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <label class="form-label text-black fs-6">
                                            First Name <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" required id="fname" value="${empty profile.firstName ? '' : profile.firstName}"/>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="form-label text-black fs-6">
                                            Last Name <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" required id="lname" value="${empty profile.lastName ? '' : profile.lastName}"/>
                                    </div>
                                    <div class="col-lg-6">
                                        <label class="form-label text-black fs-6">
                                            Email <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" id="email"
                                               value="${empty sessionScope.user ? '' : sessionScope.user.email}"
                                               readonly/>
                                    </div>
                                    <div class="col-md-4 col-lg-2">
                                        <label class="form-label text-black fs-6">
                                            Code <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3" value="+94" readonly/>
                                    </div>
                                    <div class="col-md-8 col-lg-4">
                                        <label class="form-label text-black fs-6">
                                            Phone No <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control shadow-none mb-3"
                                               placeholder="077 7123 456"
                                               id="phone" value="${empty profile.phone ? '' : profile.phone}"/>
                                    </div>
                                </div>

                                <button class="btn btn-outline-success rounded-pill shadow-none save_1">Save Changes
                                </button>
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
                                                    type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapseOne"
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
                                                       id="address_1"/>
                                                <label class="form-label text-black fs-6">
                                                    Address Line 2 <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control shadow-none mb-3" required
                                                       id="address_2"/>
                                                <div class="row">
                                                    <div class="col-lg-8">
                                                        <label class="form-label text-black fs-6">
                                                            Nearest City <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control shadow-none mb-3"
                                                               required
                                                               id="city"/>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <label class="form-label text-black fs-6">
                                                            Province <span class="text-danger">*</span></label>
                                                        <input type="text" class="form-control shadow-none mb-3"
                                                               value="WESTERN" readonly/>
                                                    </div>
                                                </div>
                                                <button class="btn btn-outline-success rounded-pill shadow-none save_2">
                                                    Save
                                                    Changes
                                                </button>
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
                                                    type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapseTwo"
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
                                                       id="current_pswd"/>
                                                <label class="form-label text-black fs-6">
                                                    New Password <span class="text-danger">*</span></label>
                                                <input type="password" class="form-control shadow-none mb-3" required
                                                       id="password_1"/>
                                                <label class="form-label text-black fs-6">
                                                    Confirm Password <span class="text-danger">*</span></label>
                                                <input type="password" class="form-control shadow-none mb-3" required
                                                       id="password_2"/>
                                                <button class="btn btn-outline-success rounded-pill shadow-none save_3">
                                                    Save
                                                    Changes
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

    <layout:put block="script" type="APPEND">
        <script type="text/javascript">
            document.querySelector(`.save_1`).addEventListener(`click`, (e) => {
                const phoneRegex = /^07[0,1,2,4,5,6,7,8]{1}[0-9]{7}$/;

                let uid = ${sessionScope.user.id};
                let fname = document.querySelector(`#fname`);
                let lname = document.querySelector(`#lname`);
                let phone = document.querySelector(`#phone`);
                let save_1 = document.querySelector(`.save_1`);

                if (fname.value == `` || lname.value == `` || phone.value == ``) {
                    window.alert(`Please fill mandatory fields.`);
                } else if (!phoneRegex.test(phone.value)) {
                    window.alert(`Please enter a valid phone number.`)
                } else {
                    fname.readOnly = true;
                    lname.readOnly = true;
                    phone.readOnly = true;
                    save_1.disabled = true;

                    fetch('${BASE_URL}profile/update', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            firstName: fname.value,
                            lastName: lname.value,
                            phone: phone.value,
                            uid: uid,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                window.alert(`Your profile has been updated.`);
                            } else {
                                window.alert(`Something went wrong.`);
                            }
                            window.location.reload();
                        })
                        .catch((error) => {
                            console.error(`Error in profile.jsp :`, error);
                        })
                }
            });
        </script>
    </layout:put>
</layout:extends>

