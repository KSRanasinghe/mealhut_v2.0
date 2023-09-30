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
        <!-- Feedback Detail Section -->
        <section class="details-section">
            <div class="container-fluid px-md-4">
                <div class="row">
                    <div class="col">
                        <div class="fs-4 fw-semibold mb-3">
                            <span class="text-start text-black text-uppercase">feedback</span>
                        </div>
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-body">
                                    <div class="container-fluid">
                                        <!-- filter area -->
                                        <div class="row offset-md-6 col-md-6 offset-lg-7 col-lg-5">
                                            <div class="input-group">
                                                <select class="form-select shadow-none rounded-start-pill"
                                                        id="inputGroupSelect04"
                                                        aria-label="Example select with button addon">
                                                    <option selected>Choose Inquiry Type</option>
                                                    <option value="1">One</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                </select>
                                                <button class="btn btn-outline-secondary shadow-none rounded-end-pill"
                                                        type="button">Clear
                                                </button>
                                            </div>
                                        </div>
                                        <!-- table area -->
                                        <table class="table table-bordered display nowrap py-3" id="feedback">
                                            <thead>
                                            <tr>
                                                <th>Customer Name</th>
                                                <th>Feedback Type</th>
                                                <th>Recieved Date</th>
                                                <th>Feedback</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr class="align-middle">
                                                <td><span class="text-capitalize">keshara ranasinghe</span></td>
                                                <td>
                                                    <span class="text-uppercase badge text-bg-warning">order
                                                        inquiry</span>
                                                    <!-- <span class="text-uppercase badge text-bg-success">appreciation</span> -->
                                                    <!-- <span class="text-uppercase badge text-bg-danger">complain</span> -->
                                                </td>
                                                <td>2023-08-23</td>
                                                <td>
                                                    <div class="text-wrap w-100 small">
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem
                                                        obcaecati consectetur soluta. Rerum sapiente odit deserunt, iure
                                                        incidunt libero, perspiciatis nihil, maiores minus commodi alias
                                                        officiis dolorem sit ut ratione.
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
                new DataTable(`#feedback`, {
                    responsive: true,
                    lengthChange: false,
                    ordering: false,
                    pageLength: 15,
                    searching: false,
                });
            });
        </script>
    </layout:put>
</layout:extends>
