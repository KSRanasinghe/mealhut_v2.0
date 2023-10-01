<%@ page import="com.ksr.webapp.entity.AdminType" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<layout:extends name="admin_base">

    <layout:put block="style" type="APPEND">
        <!-- DATA TABLE -->
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.bootstrap5.min.css"/>
    </layout:put>

    <layout:put block="header">
        <jsp:include page="include/header.jsp"/>
    </layout:put>

    <layout:put block="content">
        <!-- Admin Detail Section -->
        <section class="details-section">
            <div class="container-fluid px-md-4">
                <div class="row">
                    <div class="col">
                        <div class="fs-4 fw-semibold mb-3">
                            <span class="text-start text-black text-uppercase">administration</span>
                        </div>

                        <div class="row d-flex flex-column-reverse flex-lg-row g-4">

                            <div class="col-lg-8">
                                <div class="card shadow">
                                    <div class="card-body">
                                        <!-- table area -->
                                        <div class="container-fluid">
                                            <table class="table table-bordered display nowrap py-3" id="admin">
                                                <thead>
                                                <tr>
                                                    <th>Username</th>
                                                    <th>Admin Type</th>
                                                    <th>Assigned On</th>
                                                    <th>Status</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:if test="${not empty admins}">
                                                    <c:forEach items="${admins}" var="admins">
                                                        <tr class="align-middle">
                                                            <td>
                                                                <span class="font-monospace">${admins.email}</span>
                                                            </td>
                                                            <td>
                                                                <span class="text-capitalize">${admins.adminType}</span>
                                                            </td>
                                                            <td>
                                                                <span>${admins.createdAt}</span>
                                                            </td>
                                                            <td>
                                                                <div class="d-flex justify-content-center align-items-center">
                                                                    <c:set var="status" value="${admins.status}"/>
                                                                    <c:choose>
                                                                        <c:when test="${status}">
                                                                            <span class="badge text-bg-success text-uppercase">active</span>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <span class="badge text-bg-danger text-uppercase">inactive</span>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                    <button class="btn btn-outline-danger rounded-pill shadow-none ms-2"
                                                                            onclick="changeStatus(`${admins.email}`)">
                                                                        <i class="bi bi-arrow-repeat"></i>
                                                                    </button>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </c:if>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="card shadow">
                                    <div class="card-header fs-4 fw-semibold text-uppercase pt-3">
                                        new admin
                                    </div>
                                    <div class="card-body">
                                        <div class="mb-3">
                                            <label class="form-label">First Name</label>
                                            <input type="text" class="form-control shadow-none" id="fname" required/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Last Name</label>
                                            <input type="text" class="form-control shadow-none" id="lname" required/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Admin Type</label>
                                            <select class="form-select shadow-none" id="admin_type">
                                                <option value="unknown" selected disabled>Select admin type</option>
                                                <c:forEach items="<%=AdminType.values()%>" var="type">
                                                    <option value="${type}">${type}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Email</label>
                                            <input type="email" class="form-control shadow-none" id="email" required/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Password</label>
                                            <input type="password" class="form-control shadow-none" id="password_1"
                                                   required/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Confirm Password</label>
                                            <input type="password" class="form-control shadow-none" id="password_2"
                                                   required/>
                                        </div>
                                        <button class="btn btn-outline-success rounded-pill shadow-none btn-save">Save
                                        </button>
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
        <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/responsive.bootstrap5.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                new DataTable(`#admin`, {
                    responsive: true,
                    lengthChange: false,
                    pageLength: 15,
                    ordering: false,
                    columnDefs: [
                        {responsivePriority: 1, targets: 0},
                        {responsivePriority: 2, targets: -1},
                        {responsivePriority: 3, targets: -2},
                        {
                            targets: [2, 3],
                            searchable: false,
                        }
                    ]
                });
            });
        </script>
        <script type="text/javascript">
            /*Save new admin*/
            document.querySelector(`.btn-save`).addEventListener(`click`, (e) => {
                const emailRegex = /^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;
                const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@_])[A-Za-z\d$@_]{8,}$/;

                let firstName = document.querySelector(`#fname`);
                let lastName = document.querySelector(`#lname`);
                let adminType = document.querySelector(`#admin_type`);
                let email = document.querySelector(`#email`);
                let password = document.querySelector(`#password_1`);
                let password_2 = document.querySelector(`#password_2`);
                let btn_save = document.querySelector(`.btn-save`);

                if (firstName.value == `` || lastName.value == `` || adminType.value == `unknown` || email.value == `` || password.value == `` || password_2.value == ``) {
                    window.alert(`Please fill mandatory fields.`);
                } else if (!emailRegex.test(email.value)) {
                    window.alert(`Please enter a valid email.`)
                } else if (!passwordRegex.test(password.value)) {
                    window.alert(`Please enter a valid password.`)
                } else if (password.value != password_2.value) {
                    window.alert(`Please check if your confirm password is correct.`)
                } else {
                    firstName.readOnly = true;
                    lastName.readOnly = true;
                    adminType.disabled = true;
                    email.readOnly = true;
                    password.readOnly = true;
                    password_2.readOnly = true;
                    btn_save.disabled = true;

                    fetch('${BASE_URL}admin/administration/save', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            firstName: firstName.value,
                            lastName: lastName.value,
                            adminType: adminType.value,
                            email: email.value,
                            password: password.value,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                window.alert(`New ` + adminType.value + ` has been added successfully.`);
                                window.location.reload();
                            } else if (value == `exist`) {
                                window.alert(`This email already exists.`);
                                firstName.readOnly = false;
                                lastName.readOnly = false;
                                adminType.disabled = false;
                                email.readOnly = false;
                                password.readOnly = false;
                                password_2.readOnly = false;
                                btn_save.disabled = false;
                            } else {
                                window.alert(`Something went wrong.`);
                                window.location.reload();
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in administration.jsp :`, error);
                        })
                }
            });

            /*Change status*/
            function changeStatus(adminEmail) {
                let email = adminEmail;

                fetch('${BASE_URL}admin/administration/status', {
                    method: 'post',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        email: email,
                    })
                })
                    .then((response) => {
                        return response.text();
                    })
                    .then((value) => {
                        if (value == `success`) {
                            window.alert(`Admin status has been changed successfully.`);
                        } else {
                            window.alert(`Something went wrong.`);
                        }
                        window.location.reload();
                    })
                    .catch((error) => {
                        console.error(`Error in administration.jsp :`, error);
                    })
            }
        </script>
    </layout:put>
</layout:extends>
