<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap 4 Website Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/footer.css">

</head>
<body>
<div id="demo" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- The slideshow -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="images/codegym1.png" alt="codegym 1" height="280" width="100%">
        </div>
        <div class="carousel-item">
            <img src="images/codegym2.png" alt="codegym 2" height="280" width="100%">
        </div>
        <div class="carousel-item">
            <img src="images/codegym3.png" alt="codegym 3" height="280" width="100%">
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="/khachhang?action=quit">HOME</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/khachhang?action=borrowKH">Return book</a>
            </li>
        </ul>
        <div class="search-container">
            <form action="/khachhang?action=find" method="post">
                <input type="text" placeholder="Search.." name="findName"/>
            </form>
        </div>
    </div>
</nav>
<%-----------------------%>
<div class="container" style="margin-top:30px">
    <div class="row">
        <div class="col-sm-2">
            <h2>About Me</h2>
            <h5>Photo of me:</h5>
            <div class="fakeimg">Fake Image</div>
            <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
            <h3>Phan Loai</h3>
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Active</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">LogOut</a>
                </li>
            </ul>
            <hr class="d-sm-none">
        </div>
        <%--        -----%>
        <div class="col-sm-10">
            <div class="row">
                <c:forEach items="${listBookKH}" var="listbookkh" varStatus="loop">
                <div class="col-md-4 col-xs-6">
                    <div class="product">
                        <div class="product-img">
                            <img src="/images/${listbookkh.image}" width="300" height="300">
                            <div class="product-label">
                            </div>
                        </div>
                        <div class="product-body">
                            <h5>${listbookkh.callno}</h5>
                            <h5>${listbookkh.name}</h5>
                            <h5><${listbookkh.author}</h5>
                            <h5>${listbookkh.quantity}</h5>
                            <div class="product-btns">
                                <div><a href="/khachhang?action=buy&index=${loop.index}"
                                        class="btn btn-warning">view</a></div>
                            </div>
                            <h5><a href="/issuebook?action=IssueBookForm&index=${loop.index}" class="btn btn-success">Borrow</a>
                            </h5>
                        </div>
                        </c:forEach>
                        </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
    <footer class="footer-distributed">
        <div class="footer-left">
            <h3>Code<span>gym</span></h3>
            <p class="footer-links">
                <a href="/khachhang?action=quit" class="link-1">Home</a>
                <a href="#">Blog</a>
                <a href="#">Pricing</a>
                <a href="#">About</a>
                <a href="#">Faq</a>
                <a href="#">Contact</a>
            </p>
            <p class="footer-company-name">CodeGym © 2021</p>
        </div>
        <div class="footer-center">
            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>Nam Từ Niêm</span> Tòa nhà TT04, CodeGym</p>
            </div>
            <div>
                <i class="fa fa-phone"></i>
                <p>+9.999.999</p>
            </div>
            <div>
                <i class="fa fa-envelope"></i>
                <p><a href="mailto:support@company.com">codegym@company.com</a></p>
            </div>
        </div>
        <div class="footer-right">
            <p class="footer-company-about">
                <span>About the Dev</span>
                Thư viện codegym là nơi cung cấp cái tài liệu, sách báo giúp cho lập trình viên giải tỏa căng thẳng!
            </p>
            <div class="footer-icons">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <a href="#"><i class="fa fa-github"></i></a>
            </div>
        </div>
    </footer>
</div>
</body>
</html>
