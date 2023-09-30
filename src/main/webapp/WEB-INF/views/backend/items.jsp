<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

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
        <!-- Item Detail Section -->
        <section class="details-section">
            <div class="container-fluid px-md-4">
                <div class="row">
                    <div class="col">
                        <div class="fs-4 fw-semibold mb-3">
                            <span class="text-start text-black text-uppercase">meal item</span>
                        </div>

                        <div class="row d-flex flex-column-reverse flex-lg-row g-4">

                            <div class="col-lg-8">
                                <div class="card shadow">
                                    <div class="card-body">
                                        <!-- table area -->
                                        <div class="container-fluid">
                                            <table class="table table-bordered display nowrap py-3" id="items">
                                                <thead>
                                                <tr>
                                                    <th>Item ID</th>
                                                    <th>Image</th>
                                                    <th>Item Name</th>
                                                    <th>Item Type</th>
                                                    <th>Description</th>
                                                    <th>Price</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr class="align-middle">
                                                    <td>1</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center align-items-center">
                                                            <img src="../assets/images/product/pm1.jpeg"
                                                                 class="img-fluid meal-img"/>
                                                        </div>
                                                    </td>
                                                    <td><span class="text-capitalize">spicy kottu</span></td>
                                                    <td><span class="text-capitalize">chicken meal</span></td>
                                                    <td>
                                                        <div class="text-wrap w-100 small">
                                                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                        </div>
                                                    </td>
                                                    <td>100</td>
                                                    <td>
                                                        <div class="d-flex justify-content-center align-items-center">
                                                            <span
                                                                    class="badge text-bg-success text-uppercase">active</span>
                                                            <!-- <span class="badge text-bg-danger">inactive</span> -->
                                                            <button
                                                                    class="btn btn-outline-danger rounded-pill shadow-none ms-2">
                                                                <i class="bi bi-arrow-repeat"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex justify-content-center align-items-center">
                                                            <button type="button" tabindex="0" data-bs-toggle="modal"
                                                                    data-bs-target="#staticBackdrop"
                                                                    class="btn btn-outline-light shadow-none rounded-pill">
                                                                <span class="text-secondary">
                                                                    <i class="bi bi-pen"></i>
                                                                    <span class="d-none d-md-inline ms-md-2">Edit</span>
                                                                </span>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <div class="card shadow">
                                    <div class="card-header fs-4 fw-semibold text-uppercase pt-3">
                                        new meal item
                                    </div>
                                    <div class="card-body">
                                        <div class="mb-3">
                                            <label class="form-label">Item Name</label>
                                            <input type="text" class="form-control shadow-none" required/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Category</label>
                                            <select class="form-select shadow-none">
                                                <option selected>Select</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Meal Type</label>
                                            <select class="form-select shadow-none">
                                                <option selected>Select</option>
                                                <option value="1">One</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Price</label>
                                            <input type="number" class="form-control shadow-none" min="0" required/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Description</label>
                                            <textarea class="form-control shadow-none" rows="3"></textarea>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="upload">Upload Image</label>
                                            <div class="input-group">
                                                <input type="file" class="form-control shadow-none" id="upload">
                                            </div>
                                        </div>
                                        <button class="btn btn-outline-success rounded-pill shadow-none">Save</button>
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
                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Item ID: <span class="ms-1">001</span>
                        </h1>
                        <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label class="form-label">Price</label>
                            <input type="number" class="form-control shadow-none" min="0" required/>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <textarea class="form-control shadow-none" rows="3"></textarea>
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
                new DataTable(`#items`, {
                    responsive: true,
                    lengthChange: false,
                    pageLength: 15,
                    ordering: false,
                    columnDefs: [
                        {responsivePriority: 1, targets: 0},
                        {responsivePriority: 2, targets: 1},
                        {responsivePriority: 3, targets: -2},
                        {
                            targets: [1, 4, 6, 7],
                            searchable: false
                        }
                    ]
                });
            });
        </script>
    </layout:put>
</layout:extends>
