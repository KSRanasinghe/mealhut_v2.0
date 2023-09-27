<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>

<layout:extends name="base_content">

    <layout:put block="style" type="APPEND">
        <!-- DATA TABLE -->
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.bootstrap5.min.css"/>
    </layout:put>

    <layout:put block="content">
        <!-- Meal History Details Section -->
        <section class="details-section">
            <div class="container">
                <div class="card shadow px-1">
                    <div class="card-body">

                        <div class="col-12 title-box">
                            <h4 class="card-title text-uppercase fw-semibold text-dark text-center">my recent
                                orders</h4>
                        </div>
                        <hr/>

                        <div class="col-12">
                            <div class="row">
                                <div class="container-fluid">
                                    <table class="table table-bordered display nowrap py-3" id="history">
                                        <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Ordered On</th>
                                            <th>Net Total(Rs.)</th>
                                            <th>Status</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <!-- /.order id -->
                                            <td>
                                                <span>
                                                    00001
                                                </span>
                                            </td>
                                            <!-- /.datetime -->
                                            <td>
                                                <span>
                                                    2023-01-12 11:19:16
                                                </span>
                                            </td>
                                            <!-- /.nettotal -->
                                            <td>
                                                <span>
                                                    20000.0
                                                </span>
                                            </td>
                                            <!-- /.confirmation -->
                                            <td>
                                                <span class="badge text-bg-success text-uppercase">delivered</span>
                                                <!-- <span class="badge text-bg-warning text-uppercase">pending</span> -->
                                                <!-- <span class="badge text-bg-danger text-uppercase">canceled</span> -->
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
        </section>
    </layout:put>

    <layout:put block="script" type="APPEND">
        <!-- DATA TABLES -->
        <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/responsive.bootstrap5.min.js"></script>
        <script>
            $(document).ready(function () {
                new DataTable(`#history`, {
                    responsive: true,
                    lengthChange: false,
                    pageLength: 10,
                    ordering: false,
                    searching: false,
                    columnDefs: [
                        {responsivePriority: 1, targets: 0},
                        {responsivePriority: 2, targets: -1},
                    ]
                });
            });
        </script>
    </layout:put>
</layout:extends>
