<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="nav-section">
    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid d-flex justify-content-start">
            <button class="navbar-toggler shadow-none border-0" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar"
                 aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title text-dark-emphasis fw-semibold" id="offcanvasNavbarLabel">Welcome
                        Admin!
                    </h5>
                    <button type="button" class="btn-close shadow-none" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="${BASE_URL}admin/dashboard">
                                <span class="fs-5 me-2"><i class="bi bi-speedometer2"></i></span>
                                Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${BASE_URL}admin/categories">
                                <span class="fs-5 me-2"><i class="bi bi-layers"></i></span>
                                Categories
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${BASE_URL}admin/items">
                                <span class="fs-5 me-2"><i class="bi bi-list-task"></i></span>
                                Items
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${BASE_URL}admin/orders">
                                <span class="fs-5 me-2"><i class="bi bi-cart4"></i></span>
                                Orders
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${BASE_URL}admin/customers">
                                <span class="fs-5 me-2"><i class="bi bi-people"></i></span>
                                Customers
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${BASE_URL}admin/feedbacks">
                                <span class="fs-5 me-2"><i class="bi bi-chat-text"></i></span>
                                Feedbacks
                            </a>
                        </li>
                        <c:if test="${not empty sessionScope.admin and sessionScope.admin.adminType eq 'ADMIN'}">
                            <li class="nav-item">
                                <a class="nav-link" href="${BASE_URL}admin/administration">
                                    <span class="fs-5 me-2"><i class="bi bi-person-gear"></i></span>
                                    Administration
                                </a>
                            </li>
                        </c:if>
                        <li class="nav-item">
                            <a class="nav-link text-danger" href="${BASE_URL}admin/sign-out">
                                <span class="fs-5 me-2"><i class="bi bi-box-arrow-right"></i></span>
                                Sign Out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <a class="navbar-brand ms-2" href="#">
                <span class="text-success">M</span>eal<span class="text-success">H</span>ut<span
                    class="text-success">.</span>
            </a>
        </div>
    </nav>
</section>