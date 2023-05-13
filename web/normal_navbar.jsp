<!--Navbar bootstarp-->
<nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"> <span class="fa fa-certificate"></span> My App</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"> <span class="fa fa-snowflake-o"></span> Learn awasome</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="fa fa-check-square"/> Categories
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Programing</a></li>
                        <li><a class="dropdown-item" href="#">Project</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Tasks</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact_us.jsp"><span class="fa fa-phone-square"/> Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login_page.jsp"><span class="fa fa-user-circle"/> Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registration_page.jsp"><span class="fa fa-user-plus"/> Signup</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link disabled">More...</a>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>