<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Home Page</title>
</head>
<body>
	<div class="container mb-1">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Amazon</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						
						<li class="nav-item"><a class="nav-link" href="cart.jsp"
							tabindex="-1" aria-disabled="true">Cart</a></li>
					</ul>
					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>
	</div>
    <div class="container">

    </div>
    <div class="container text-center p-1">
        <figure class="figure">
            <img src='<c:url value='/resources/images/iphone.png'></c:url>' class="figure-img img-fluid rounded" alt="...">
            <figcaption class="figure-caption">Industry-leading IP68 water resistance
                Supports MagSafe accessories for easy attach and faster wireless charging
                iOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more<br>
                <b>120000 INR</b>   
            </figcaption>
          </figure>
          <div class="text-center">
            <button type="button" class="btn btn-success">
                <a href="cart.jsp" style="text-decoration: none;" class="link-primary text-white">Add To Cart</a>
            </button>
          </div>
    </div>
     <div class="container text-center mt-3">
        <figure class="figure">
            <img height="250px" width="250px" src='<c:url value='/resources/images/samsung.jpg'></c:url>' class="figure-img img-fluid rounded" alt="...">
            <figcaption class="figure-caption">5G Ready powered by Qualcomm Snapdragon 865 Octa-Core processor, 8GB RAM, 128GB internal memory expandable up to 1TB, Android 11.0 operating system and dual SIM
                Triple Rear Camera Setup - 12MP (Dual Pixel) OIS F1.8 Wide Rear Camera + 8MP OIS Tele Camera + 12MP Ultra Wide | 30X Space Zoom, Single Take & Night Mode | 32MP F2.2 Front Punch Hole Camera</b>
              <br/>  <b>35000 INR</b> 
            </figcaption>
          </figure>
          <div class="text-center">
            <button type="button" class="btn btn-success">
                <a href="cart.jsp" style="text-decoration: none;" class="link-primary text-white">Add To Cart</a>
            </button>
          </div>
    </div>
</body>
</html>
