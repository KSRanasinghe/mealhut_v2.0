<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="nav-section">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="cursor: default">
                <span class="text-success">M</span>eal<span class="text-success">H</span>ut<span
                    class="text-success">.</span>
            </a>
            <button class="navbar-toggler shadow-none border-0" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${BASE_URL}">Home</a>
                    </li>
                    <li class="nav-item dropdown-center">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            Menu
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Rice</a></li>
                            <li><a class="dropdown-item" href="#">Kottu</a></li>
                            <li><a class="dropdown-item" href="#">Pata</a></li>
                            <li><a class="dropdown-item" href="#">Desert</a></li>
                            <li><a class="dropdown-item" href="#">Beverages</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="${BASE_URL}menu">Full Menu</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="${BASE_URL}about-us">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="${BASE_URL}contact-us">Contact Us</a>
                    </li>
                </ul>
                <form class="d-flex flex-row">
                    <c:if test="${empty sessionScope.user}">
                        <a href="${BASE_URL}auth/signin" class="btn btn-outline-success rounded-pill me-2">Sign In /
                            Register
                        </a>
                        <a href="${BASE_URL}cart" class="btn btn-outline-success rounded-pill disabled">
                            <i class="bi bi-cart3"></i>
                        </a>
                    </c:if>
                    <c:if test="${not empty sessionScope.user}">
                        <div class="dropdown-center me-3">
                            <button type="button" class="btn border-0 bg-transparent dropdown-toggle"
                                    data-bs-toggle="dropdown"
                                    data-bs-display="static" aria-expanded="false">
                                My Account
                            </button>
                            <ul class="dropdown-menu dropdown-menu-ce dropdown-menu-lg-start">
                                <li><a class="dropdown-item" href="${BASE_URL}profile">Account Details</a></li>
                                <li><a class="dropdown-item" href="${BASE_URL}profile/meal-history">Meal History</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Logout</a></li>
                            </ul>
                        </div>
                        <a href="${BASE_URL}cart" class="btn btn-outline-success rounded-pill">
                            <i class="bi bi-cart3"></i>
                        </a>
                    </c:if>
                </form>
            </div>
        </div>
    </nav>
</section>