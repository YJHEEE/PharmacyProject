<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<%@ include file="/views/header.jsp"%>


        <!---------------------------------------------------------------------------------------------------->
        <!-- 페이지 위치 -->
        <!-- used for shop templates with filters on top-->
        <div class="bg-orange pt-4 pb-5">
            <div class="container pt-2 pb-3 pt-lg-3 pb-lg-4">
                <div class="d-lg-flex justify-content-between pb-3">
                    <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb breadcrumb-light flex-lg-nowrap justify-content-center justify-content-lg-start">
                                <li class="breadcrumb-item"><a class="text-nowrap" href="index.html"><i class="ci-home"></i>Home</a></li>
                                <li class="breadcrumb-item text-nowrap active" aria-current="page">약국검색</li>
                            </ol>
                        </nav>
                    </div>
                    <div class="order-lg-1  pe-lg-4 text-center text-lg-start">
                        <h1 class="h3  text-light fw-bolder mb-0">약국 검색</h1>
                    </div>
                </div>
                <div class="row mt-4 mb-n2">
                    <div class="col-lg-6 col-md-8">
                        <div class="input-group input-group-lg flex-nowrap">
                            <i class="ci-search position-absolute top-50 translate-middle-y ms-3"></i>
                            <input class="form-control rounded-start" type="text" placeholder="약국명 또는 지역을 입력하세요.">
                            <button class="btn btn-warning2 btn-lg fs-base home_search_btn btn-shadow text-white" type="button">검색</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!---------------------------------------------------------------------------------------------------->
        <!-- 필터 -->
        <div class="container pb-5 mb-2 mb-md-4">
            <!-- Toolbar-->
            <div class="bg-light shadow-lg rounded-3 p-4 mt-n5 mb-4">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="dropdown me-2"><a class="btn btn-outline-secondary dropdown-toggle" href="#shop-filters" data-bs-toggle="collapse"><i class="ci-filter me-2"></i>Filters</a></div>
                    <div class="d-none d-sm-flex">
                        <h6>검색 결과 전체 00 곳 </h6>
                    </div>
                </div>
                <!-- Toolbar with expandable filters-->
                <div class="collapse" id="shop-filters">
                    <div class="row pt-4">
                        <div class="col-lg-6 col-sm-6">
                            <!-- 카테고리-->
                            <div class="card mb-grid-gutter">
                                <div class="card-body px-4">
                                    <div class="widget widget-categories">
                                        <h2 class="widget-title">카테고리</h2>
                                        <div class="accordion mt-n1" id="pahrm-categories">
                                            <!-- 지역구-->
                                            <div class="accordion-item">
                                                <h3 class="accordion-header"><a class="accordion-button collapsed" href="#location" role="button" data-bs-toggle="collapse" aria-expanded="false">지역구</a></h3>
                                                <div class="accordion-collapse collapse" id="location" data-bs-parent="#pahrm-categories">
                                                    <div class="accordion-body">
                                                        <div class="widget widget-links widget-filter">
                                                            <div class="input-group input-group-sm mb-2">
                                                                <input class="widget-filter-search form-control rounded-end" type="text" placeholder="Search"><i class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
                                                            </div>
                                                            <ul class="widget-list widget-filter-list pt-1" style="height: 8rem;" data-simplebar data-simplebar-auto-hide="false">
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">강남구</span>
                                                                        <span class="fs-xs text-muted ms-3">436</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">강동구</span>
                                                                        <span class="fs-xs text-muted ms-3">236</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">강북구</span>
                                                                        <span class="fs-xs text-muted ms-3">167</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">강서구</span>
                                                                        <span class="fs-xs text-muted ms-3">256</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">관악구</span>
                                                                        <span class="fs-xs text-muted ms-3">212</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">광진구</span>
                                                                        <span class="fs-xs text-muted ms-3">165</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">구로구</span>
                                                                        <span class="fs-xs text-muted ms-3">175</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">금천구</span>
                                                                        <span class="fs-xs text-muted ms-3">120</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">노원구</span>
                                                                        <span class="fs-xs text-muted ms-3">214</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- 시간-->
                                            <div class="accordion-item">
                                                <h3 class="accordion-header"><a class="accordion-button collapsed" href="#time" role="button" data-bs-toggle="collapse" aria-expanded="false">시간</a></h3>
                                                <div class="accordion-collapse collapse" id="time" data-bs-parent="#shop-categories">
                                                    <div class="accordion-body">
                                                        <div class="widget widget-links widget-filter">
                                                            <div class="input-group input-group-sm mb-2">
                                                                <input class="widget-filter-search form-control rounded-end" type="text" placeholder="Search"><i class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
                                                            </div>
                                                            <ul class="widget-list widget-filter-list pt-1" style="height: 8rem;" data-simplebar data-simplebar-auto-hide="false">
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">24시간</span>
                                                                        <span class="fs-xs text-muted ms-3">24시간 약국 갯수</span>
                                                                    </a>
                                                                </li>
                                                                <li class="widget-list-item widget-filter-item">
                                                                    <a class="widget-list-link d-flex justify-content-between align-items-center" href="#">
                                                                        <span class="widget-filter-item-text">야간</span>
                                                                        <span class="fs-xs text-muted ms-3">야간 약국 갯수</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <!-- 요일-->
                            <div class="card mb-grid-gutter">
                                <div class="card-body px-4">
                                    <div class="widget widget-filter">
                                        <h3 class="widget-title">요일</h3>
                                        <div class="input-group input-group-sm mb-2">
                                            <input class="widget-filter-search form-control rounded-end pe-5" type="text" placeholder="Search"><i class="ci-search position-absolute top-50 end-0 translate-middle-y fs-sm me-3"></i>
                                        </div>
                                        <ul class="widget-list widget-filter-list list-unstyled pt-1" style="max-height: 8rem;" data-simplebar data-simplebar-auto-hide="false">
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="dayoftheweek">
                                                    <label class="form-check-label widget-filter-item-text" for="dayoftheweek">월요일</label>
                                                </div><span class="fs-xs text-muted">777</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="dayoftheweek">
                                                    <label class="form-check-label widget-filter-item-text" for="dayoftheweek">화요일</label>
                                                </div><span class="fs-xs text-muted">777</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="dayoftheweek">
                                                    <label class="form-check-label widget-filter-item-text" for="dayoftheweek">수요일</label>
                                                </div><span class="fs-xs text-muted">777</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="dayoftheweek">
                                                    <label class="form-check-label widget-filter-item-text" for="dayoftheweek">목요일</label>
                                                </div><span class="fs-xs text-muted">777</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="dayoftheweek">
                                                    <label class="form-check-label widget-filter-item-text" for="dayoftheweek">금요일</label>
                                                </div><span class="fs-xs text-muted">777</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="dayoftheweek">
                                                    <label class="form-check-label widget-filter-item-text" for="dayoftheweek">토요일</label>
                                                </div><span class="fs-xs text-muted">777</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="dayoftheweek">
                                                    <label class="form-check-label widget-filter-item-text" for="dayoftheweek">일요일</label>
                                                </div><span class="fs-xs text-muted">777</span>
                                            </li>
                                            <li class="widget-filter-item d-flex justify-content-between align-items-center mb-1">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" id="dayoftheweek">
                                                    <label class="form-check-label widget-filter-item-text" for="dayoftheweek">공휴일</label>
                                                </div><span class="fs-xs text-muted">777</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container pb-5 mb-2 mb-md-4">
                <div class="row justify-content-center">
                    <div class="col-lg-1"></div>
                    <!-- Products list-->
                    <section class="col-lg-5 pt-2 offcanvas-body" style="overflow-y: scroll; height: 35rem;">
                        <!-- Product-->
                        <div class="card product-card product-list"><span class="badge bg-info badge-shadow"><small>영업중</small></span>
                            <button class="btn-wishlist btn-sm" type="button" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to wishlist"><i class="ci-bookmark"></i></button>
                            <div class="d-sm-flex align-items-center">
                                <a class="product-list-thumb" href="pharm_detail.html"><img src="img\mypage\강남제일약국.jpg" alt="Product"></a>
                                <div class="card-body py-2"><a class="product-meta d-block fs-xs pb-1" href="#">강남구</a>
                                    <h3 class="product-title fs-base"><a href="pharm_detail.html">강남제일약국</a></h3>
                                    <h5 class="product-title fs-base"><a href="pharm_detail.html"><small>서울 강남구 테헤란로 139 (우)06132</small></a></h5>
                                    <div class="d-flex justify-content-between">
                                        <div class="product-price"><span class="text-accent"><small>02-555-7790</small></span></div>
                                        <div class="star-rating"><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i><i class="star-rating-icon ci-star-filled active"></i>
                                            <i class="star-rating-icon ci-star"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="border-top pt-3 mt-3"></div>
                    </section>
                    <!-- Map -->
                    <aside class="col-lg-5 d-none d-lg-block">
                        <div class="d-flex d-lg-block p-1 ms-auto w-100">
                            <div class="position-relative bg-size-cover bg-position-center rounded-3 py-5 mb-grid-gutter" id="map">
                                <iframe class="iframe-full-height-wrap" width="600" height="500" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d53357.14257194912!2d-73.07268695801845!3d40.78017062807504!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e8483b8bffed93%3A0x53467ceb834b7397!2s396+Lillian+Blvd%2C+Holbrook%2C+NY+11741%2C+USA!5e0!3m2!1sen!2sua!4v1558703206875!5m2!1sen!2sua"></iframe>
                            </div>
                        </div>
                    </aside>
                    <div class="col-lg-1"></div>
                </div>
            </div>
    </main>
    <!-- footer -->
    <div class="footer bg-gray">
        <div class="container col-lg-8">
            <footer class="py-3 my-4">
                <ul class="nav pb-3 mb-3 justify-content-start">
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">서비스 이용약관</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">개인정보처리방침</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">이메일무단수집거부</a></li>
                </ul>
                <p class="text-muted">(06234) 서울특별시 강남구 테헤란로14길 6 남도빌딩 2</p>
                <p class="text-muted">TEL. 02)1544-9970 | FAX. 02)526-2378 | 사업자등록번호 : 851-87-0062 | 기관명 : 동그라미팀 | 대표자 : 윤정희</p>
                <p class="text-muted">Copyright © 1998-2020 KH Information Educational Institute All Right Reserved</p>
            </footer>
        </div>
    </div>
    <!-- Back To Top Button-->
    <a class="btn-scroll-top" href="#top" data-scroll>
        <span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span>
        <i class="btn-scroll-top-icon ci-arrow-up"></i>
    </a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="vendor/tiny-slider/dist/min/tiny-slider.js"></script>
    <script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <script src="vendor/nouislider/dist/nouislider.min.js"></script>
    <script src="vendor/drift-zoom/dist/Drift.min.js"></script>
    <!-- Main theme script-->
    <script src="js/theme.min.js"></script>
</body>

</html>