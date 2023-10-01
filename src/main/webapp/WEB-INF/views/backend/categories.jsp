<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <!-- Category Detail Section -->
        <section class="details-section">
            <div class="container-fluid px-md-4">
                <div class="row">
                    <div class="col">
                        <div class="fs-4 fw-semibold mb-3">
                            <span class="text-start text-black text-uppercase">category</span>
                        </div>
                        <div class="row d-flex flex-column-reverse flex-lg-row g-4">
                            <div class="col-lg-8">
                                <div class="card shadow">
                                    <div class="card-body">
                                        <!-- table area -->
                                        <table class="table table-bordered display nowrap py-3" id="category">
                                            <thead>
                                            <tr>
                                                <th>Category ID</th>
                                                <th>Category Name</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:if test="${not empty categories}">
                                                <c:forEach items="${categories}" var="categories">
                                                    <tr class="align-middle">
                                                        <td>${categories.id}</td>
                                                        <td class="text-capitalize">${categories.categoryName}</td>
                                                        <td class="text-uppercase">
                                                            <div class="d-flex justify-content-center align-items-center">
                                                                <c:set var="status" value="${categories.status}"/>
                                                                <c:choose>
                                                                    <c:when test="${status}">
                                                                        <span class="badge text-bg-success text-uppercase">active</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="badge text-bg-danger text-uppercase">inactive</span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                                <button
                                                                        class="btn btn-outline-danger rounded-pill shadow-none ms-2">
                                                                    <i class="bi bi-arrow-repeat"></i>
                                                                </button>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="d-flex justify-content-center align-items-center">
                                                                <c:set var="status" value="${categories.status}"/>
                                                                <c:choose>
                                                                    <c:when test="${status}">
                                                                        <button type="button" tabindex="0"
                                                                                data-bs-toggle="modal"
                                                                                data-bs-target="#staticBackdrop"
                                                                                class="btn btn-outline-light shadow-none rounded-pill">
                                                                                    <span class="text-secondary">
                                                                                        <i class="bi bi-pen"></i>
                                                                                        <span class="d-none d-md-inline ms-md-2">Edit
                                                                                            Category</span>
                                                                                    </span>
                                                                        </button>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <button type="button" tabindex="0"
                                                                                data-bs-toggle="modal"
                                                                                data-bs-target="#staticBackdrop"
                                                                                class="btn btn-outline-light shadow-none rounded-pill disabled">
                                                                                    <span class="text-secondary">
                                                                                        <i class="bi bi-pen"></i>
                                                                                        <span class="d-none d-md-inline ms-md-2">Edit
                                                                                            Category</span>
                                                                                    </span>
                                                                        </button>
                                                                    </c:otherwise>
                                                                </c:choose>
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
                            <div class="col-lg-4">
                                <div class="card shadow">
                                    <div class="card-header fs-4 fw-semibold text-uppercase pt-3">
                                        new category
                                    </div>
                                    <div class="card-body">
                                        <div class="mb-3">
                                            <label class="form-label">Category Name</label>
                                            <input type="text" class="form-control shadow-none" id="category_name"
                                                   required/>
                                        </div>
                                        <button class="btn btn-outline-success rounded-pill shadow-none save-btn">Save
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- static backdrop modal -->
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
             aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Category ID: <span class="ms-1">001</span>
                        </h1>
                        <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label class="form-label">Category Name</label>
                            <input type="text" class="form-control shadow-none" required/>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-success rounded-pill shadow-none">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </layout:put>

    <layout:put block="script" type="APPEND">
        <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/responsive.bootstrap5.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                new DataTable(`#category`, {
                    responsive: true,
                    lengthChange: false,
                    ordering: false,
                    pageLength: 15,
                    columnDefs: [{
                        targets: [2, 3],
                        searchable: false
                    }]
                });
            });
        </script>
        <script type="text/javascript">
            document.querySelector(`.save-btn`).addEventListener(`click`, (e) => {
                let category_name = document.querySelector(`#category_name`);
                let save_btn = document.querySelector(`.save-btn`);

                if (category_name.value == ``) {
                    window.alert(`Please fill mandatory fields.`);
                } else {
                    category_name.readOnly = true;
                    save_btn.disabled = true;

                    fetch('${BASE_URL}admin/category/save', {
                        method: 'post',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        body: JSON.stringify({
                            name: category_name.value,
                        })
                    })
                        .then((response) => {
                            return response.text();
                        })
                        .then((value) => {
                            if (value == `success`) {
                                window.alert(`New category has been added successfully.`)
                                window.location.reload();
                            } else if (value == `exist`) {
                                window.alert(`This category already exists.`);
                                category_name.readOnly = false;
                                save_btn.disabled = false;
                            } else {
                                window.alert(`Something went wrong.`);
                                window.location.reload();
                            }
                        })
                        .catch((error) => {
                            console.error(`Error in categories.jsp of backend :`, error);
                        })
                }
            });
        </script>
    </layout:put>
</layout:extends>
