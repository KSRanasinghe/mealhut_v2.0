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
        <!-- Customer Detail Section -->
        <section class="details-section">
            <div class="container-fluid px-md-4">
                <div class="row">
                    <div class="col">
                        <div class="fs-4 fw-semibold mb-3">
                            <span class="text-start text-black text-uppercase">customer</span>
                        </div>

                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body">
                                    <!-- table area -->
                                    <div class="container-fluid">
                                        <table class="table table-bordered display nowrap py-3" id="customer">
                                            <thead>
                                            <tr>
                                                <th>Customer Name</th>
                                                <th>Email</th>
                                                <th>Mobile</th>
                                                <th>Joined On</th>
                                                <th>Address</th>
                                                <th>Status</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr class="align-middle">
                                                <td><span class="text-capitalize">keshara ranasinghe</span></td>
                                                <td>
                                                    <div class="text-wrap w-100 font-monospace">
                                                        kesharashakthi71@gmail.com
                                                    </div>
                                                </td>
                                                <td>
                                                    <span class="font-monospace">0764282345</span>
                                                </td>
                                                <td><span>2023-08-25</span></td>
                                                <td>
                                                    <div class="text-wrap w-100 small text-capitalize">
                                                        44/20A, mahenawatt, pahala imbulgoda, imbulgoda.
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="d-flex justify-content-center align-items-center">
                                                        <span class="badge text-bg-success text-uppercase">active</span>
                                                        <!-- <span class="badge text-bg-danger">inactive</span> -->
                                                        <button
                                                                class="btn btn-outline-danger rounded-pill shadow-none ms-2 change">
                                                            <i class="bi bi-arrow-repeat"></i>
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
                new DataTable(`#customer`, {
                    responsive: true,
                    lengthChange: false,
                    pageLength: 15,
                    ordering: false,
                    columnDefs: [
                        { responsivePriority: 1, targets: 0 },
                        {
                            targets: [3, 4, 5],
                            searchable: false,
                        }
                    ]
                });
            });
        </script>
    </layout:put>
</layout:extends>
