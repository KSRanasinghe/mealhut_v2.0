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
        <!-- Orders Detail Section -->
        <section class="details-section">
            <div class="container-fluid px-md-4">
                <div class="row">
                    <div class="col">
                        <div class="fs-4 fw-semibold mb-3">
                            <span class="text-start text-black text-uppercase">order</span>
                        </div>
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body">
                                    <!-- table area -->
                                    <table class="table table-bordered table-hover display nowrap py-3" id="category">
                                        <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Customer</th>
                                            <th>Total (Rs.)</th>
                                            <th>Ordered On</th>
                                            <th>Payment</th>
                                            <th>Status</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="align-middle">
                                            <td><span>001</span></td>
                                            <td><span class="text-capitalize">keshara ranasinghe</span></td>
                                            <td><span>1000</span></td>
                                            <td><span>2023-08-23</span></td>
                                            <td>
                                                <span class="text-uppercase badge text-bg-success">paid</span>
                                            </td>
                                            <td role="button" tabindex="0" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop">
                                                <span class="text-uppercase badge text-bg-success">delivered</span>
                                                <!-- <span class="text-uppercase badge text-bg-danger">complain</span> -->
                                            </td>
                                        </tr>
                                        <tr class="align-middle">
                                            <td><span>002</span></td>
                                            <td><span class="text-capitalize">keshara ranasinghe</span></td>
                                            <td><span>1000</span></td>
                                            <td><span>2023-08-25</span></td>
                                            <td>
                                                <span class="text-uppercase badge text-bg-success">paid</span>
                                            </td>
                                            <td role="button" tabindex="0" data-bs-toggle="modal"
                                                data-bs-target="#staticBackdrop">
                                                <span class="text-uppercase badge text-bg-success">delivered</span>
                                                <!-- <span class="text-uppercase badge text-bg-danger">complain</span> -->
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- static backdrop modal -->
                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                     tabindex="-1"
                     aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">Order No: 0001</h1>
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
                new DataTable(`#category`, {
                    responsive: true,
                    lengthChange: false,
                    ordering: false,
                    pageLength: 15,
                    searching: true,
                    columnDefs: [
                        {responsivePriority: 1, targets: 0},
                        {responsivePriority: 2, targets: [-1]},
                        {
                            targets: [1, 2, 4, 5],
                            searchable: false
                        }
                    ]
                });
            });
        </script>
    </layout:put>
</layout:extends>
