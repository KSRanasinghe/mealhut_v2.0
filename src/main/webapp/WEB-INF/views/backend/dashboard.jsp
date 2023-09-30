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
        <!-- Dashboard Section 1 -->
        <section class="dashboard-section-1">
            <div class="container-fluid px-md-4">
                <div class="row">
                    <div class="col">
                        <div class="fs-4 fw-semibold mb-3">
                            <span class="text-start text-black text-uppercase">dashboard</span>
                        </div>
                        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                            <!-- dashboard detail card 1 -->
                            <div class="col">
                                <div
                                        class="card shadow h-100 border border-5 border-top-0 border-bottom-0 border-end-0 border-success">
                                    <div class="card-body">
                                        <div class="row px-1 py-3">
                                            <div class="col-8">
                                                <div class="text-start small text-uppercase text-success fw-semibold">
                                                    earnings (daily)
                                                </div>
                                                <div class="text-start text-dark-emphasis fs-5 fw-semibold">Rs.50,000
                                                </div>
                                            </div>
                                            <div class="col-4 text-center">
                                            <span class="fs-1 text-secondary opacity-50">
                                                <i class="bi bi-cash-coin"></i>
                                            </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- dashboard detail card 2 -->
                            <div class="col">
                                <div
                                        class="card shadow h-100 border border-5 border-top-0 border-bottom-0 border-end-0 border-success">
                                    <div class="card-body">
                                        <div class="row px-1 py-3">
                                            <div class="col-8">
                                                <div class="text-start small text-uppercase text-success fw-semibold">
                                                    earnings (monthly)
                                                </div>
                                                <div class="text-start text-dark-emphasis fs-5 fw-semibold">Rs.150,000
                                                </div>
                                            </div>
                                            <div class="col-4 text-center">
                                            <span class="fs-1 text-secondary opacity-50">
                                                <i class="bi bi-calendar-fill"></i>
                                            </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- dashboard detail card 3 -->
                            <div class="col">
                                <div
                                        class="card shadow h-100 border border-5 border-top-0 border-bottom-0 border-end-0 border-success">
                                    <div class="card-body">
                                        <div class="row px-1 py-3">
                                            <div class="col-8">
                                                <div class="text-start small text-uppercase text-success fw-semibold">
                                                    earnings (annual)
                                                </div>
                                                <div class="text-start text-dark-emphasis fs-5 fw-semibold">Rs.1,050,000
                                                </div>
                                            </div>
                                            <div class="col-4 text-center">
                                            <span class="fs-1 text-secondary opacity-50">
                                                <i class="bi bi-currency-dollar"></i>
                                            </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- dashboard detail card 4 -->
                            <div class="col">
                                <div
                                        class="card shadow h-100 border border-5 border-top-0 border-bottom-0 border-end-0 border-success">
                                    <div class="card-body">
                                        <div class="row px-1 py-3">
                                            <div class="col-8">
                                                <div class="text-start small text-uppercase text-success fw-semibold">
                                                    sales
                                                    (total)
                                                </div>
                                                <div class="text-start text-capitalize text-dark-emphasis fs-5 fw-semibold">
                                                    500 orders
                                                </div>
                                            </div>
                                            <div class="col-4 text-center">
                                            <span class="fs-1 text-secondary opacity-50">
                                                <i class="bi bi-tags-fill"></i>
                                            </span>
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

        <!-- Dashboard Section 2 -->
        <section class="dashboard-section-2">
            <div class="container-fluid px-md-4">
                <div class="row row-cols-1 row-cols-lg-2 g-4">
                    <div class="col-lg-8">
                        <div class="card shadow">
                            <div class="card-header fs-4 fw-semibold text-uppercase pt-3">
                                recent orders
                            </div>
                            <div class="card-body">
                                <table class="table table-bordered table-hover display nowrap py-3" id="orders">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Total (Rs.)</th>
                                        <th>Payment</th>
                                        <th>Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td class="text-capitalize">keshara ranasinghe</td>
                                        <td>1000</td>
                                        <td class="text-uppercase">
                                            <span>paid</span>
                                            <!-- <span>pending</span> -->
                                        </td>
                                        <td class="text-uppercase" role="button" tabindex="0" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop">
                                            <span class="badge text-bg-success">delivered</span>
                                            <!-- <span class="badge text-bg-warning">pending</span>
                                                <span class="badge text-bg-danger">canceled</span> -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-capitalize">keshara ranasinghe</td>
                                        <td>1000</td>
                                        <td class="text-uppercase">
                                            <span>paid</span>
                                            <!-- <span>pending</span> -->
                                        </td>
                                        <td class="text-uppercase" role="button" tabindex="0" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop">
                                            <span class="badge text-bg-success">delivered</span>
                                            <!-- <span class="badge text-bg-warning">pending</span>
                                                <span class="badge text-bg-danger">canceled</span> -->
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card shadow">
                            <div class="card-header fs-4 fw-semibold text-uppercase pt-3">
                                recent feedbacks
                            </div>
                            <div class="card-body">
                                <div class="row g-2">
                                    <div role="button" tabindex="0" data-bs-toggle="modal"
                                         data-bs-target="#staticBackdrop1">
                                        <div class="col-9 text-truncate">
                                            This text is quite long, and will be truncated once displayed.
                                        </div>
                                        <small class="text-muted">2023-08-28</small>
                                    </div>
                                    <hr/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- static backdrop modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                     tabindex="-1"
                     aria-labelledby="staticBackdropLabel1" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel1">Order No: 0001</h1>
                                <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="table-responsive mb-3">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th colspan="2">Meal</th>
                                            <th>Type</th>
                                            <th>Qty</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td colspan="2" class="text-capitalize">spicy kottu</td>
                                            <td class="text-capitalize">chicken</td>
                                            <td>2</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="card">
                                    <div class="card-header fs-6 fw-semibold text-capitalize pt-3">
                                        customer address
                                    </div>
                                    <div class="card-body">
                                        <span class="text-break">44/20A, Mahenawatta, Pahala Imbulgoda, Imbulgoda.</span>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-danger rounded-pill shadow-none"
                                        data-bs-dismiss="modal">Cancel
                                </button>
                                <button type="button"
                                        class="btn btn-outline-success rounded-pill shadow-none">Confirm
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- static backdrop modal 2 -->
                <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false"
                     tabindex="-1" aria-labelledby="staticBackdropLabel2" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5 text-capitalize" id="staticBackdropLabel2">order
                                    inquiry</h1>
                                <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="card mb-3">
                                    <div class="card-header fs-6 fw-semibold text-capitalize pt-3">
                                        customer details
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-group">
                                            <li class="list-group-item text-capitalize">keshara ranasinghe</li>
                                            <li class="list-group-item">kesharashakthi71@gmail.com</li>
                                            <li class="list-group-item">0764282345</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header fs-6 fw-semibold text-capitalize pt-3">
                                        message
                                    </div>
                                    <div class="card-body">
                                    <span class="text-break">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Tempora, officiis, nobis expedita rem maxime similique a, distinctio provident
                                        vero atque incidunt quod? Aut asperiores ipsum consequatur odit ab animi
                                        fuga!</span>
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
                new DataTable(`#orders`, {
                    responsive: true,
                    lengthChange: false,
                    searching: false,
                    ordering: false,
                    pageLength: 10,
                });
            });
        </script>
    </layout:put>
</layout:extends>