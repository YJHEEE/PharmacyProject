<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="/views/header.jsp"%>

        <!-- Page Title (Light)-->
        <div class="bg-secondary py-4">
            <div class="container d-lg-flex justify-content-between py-2 py-lg-3">
                <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb flex-lg-nowrap justify-content-center justify-content-lg-start">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="<%=request.getContextPath()%>/views/main.jsp"><i class="ci-home"></i>Home</a></li>
                            <li class="breadcrumb-item text-nowrap active" aria-current="page">News </li>
                        </ol>
                    </nav>
                </div>
                <div class="order-lg-1 pe-lg-4 text-center text-lg-start">
                    <h1 class="h3 mb-0">News</h1>
                </div>
            </div>
        </div>
        <div class="container pb-5 mb-2 mb-md-4">

            <div class="pt-5 mt-md-2">
                <!-- Entries grid-->
                <div class="masonry-grid" data-columns="3">
                    <!-- Entry-->
                    <article class="masonry-grid-item">
                        <div class="card" style="width: 18rem; height: auto">
                            <a class="blog-entry-thumb" href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227940"><img class="card-img-top" src="<%=request.getContextPath()%>/views/img/news/SBI.jpg" alt="Post"></a>
                            <div class="card-body">
                                <h2 class="h6 blog-entry-title fw-bold"><a href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227940">"제약·바이오 투자 산업 이해 관점에서 접근했습니다"</a></h2>
                                <p class="fs-ms">
                                    <a class="link-dark" href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">“문과생도 이해할 수 있는 제약산업 안내서를 만들고 싶었습니다.”
                                        <br>SBI인베스트먼트 이태영 팀장(약사)이 비약 도서출판팀과 함께 ‘제약바이오 투자 입문하기’를 발간했다.</a> </p>
                            </div>
                            <div class="card-footer d-flex align-items-center fs-xs">
                                <a class="blog-entry-meta-link" href="#">
                                    <div class="blog-entry-author-ava"><img src="<%=request.getContextPath()%>/views/img/news/hansangin.jpg" alt="한상인 기자"></div>한상인 기자 hsicam@kpanews.co.kr</a>
                                <div class="ms-auto text-nowrap"><a class="blog-entry-meta-link text-nowrap" href="#">2021-12-06</a>
                                    <span class="blog-entry-meta-divider mx-2"></span>
                                    <a class="blog-entry-meta-link text-nowrap" href="blog-single.html#comments"> <i class="ci-message"></i>19</a>
                                </div>
                            </div>
                        </div>
                    </article>
                    <!-- Entry-->
                    <article class="masonry-grid-item">
                        <div class="card" style="width: 18rem; height: auto">
                            <div class="card-body">
                                <h2 class="h6 blog-entry-title fw-bold"><a href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">아이비웰니스, 혹한기 취약계층에 1억원 상당 아이비커큐민285 등 기부</a></h2>
                                <p class="fs-ms">
                                    <a class="link-dark" href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">이비웰니스(대표 윤중식)가 혹한기를 앞두고 취약계층 노인들을 위해 1억원 상당의 아이비커큐민285 등 건강식품을 기부했다.
                                        <br> 이번 기부물품은 독거노인종합지원센터(센터장 김현미)에 전달됐으며 노인들에게 혹한기 건강 증진 선물로 전달될 예정이다....</a></p>
                                <a class="btn-tag me-2 mb-2" href="#">약국경영</a>
                            </div>
                            <div class="card-footer d-flex align-items-center fs-xs">
                                <a class="blog-entry-meta-link" href="#">
                                    <div class="blog-entry-author-ava"><img src="<%=request.getContextPath()%>/views/img/news/sgkam.jpg" alt="감성균 기자">
                                    </div>감성균 기자 sgkam@kpanews.co.kr
                                </a>
                                <div class="ms-auto text-nowrap">2021-12-06</a><span class="blog-entry-meta-divider mx-2"></span>
                                    <a class="blog-entry-meta-link text-nowrap bg-dark" href="blog-single.html#comments"><i class="ci-message"></i>댓글..</a>
                                </div>
                            </div>
                        </div>
                    </article>

                    <!-- Entry-->
                    <article class="masonry-grid-item">
                        <div class="card" style="width: 18rem; height: auto">
                            <a class="blog-entry-thumb" href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083"><img class="card-img-top" src="<%=request.getContextPath()%>/views/img/news/rosartan.jpg" alt="Post"></a>
                            <div class="card-body">
                                <h2 class="h6 blog-entry-title fw-bold"><a href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">로사르탄 재처방·재조제 임박...제약사 비용 정산 방법은?</a></h2>
                                <p class="fs-ms">
                                    <a class="link-dark" href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">
                                        이번주 회수품목과 업무 가이드라인 확정 발표 전망
                                        <br>병의원·약국 청구→공단이 업체 전달→제약사 요양기관 입금</a> </p>
                            </div>
                            <div class="card-footer d-flex align-items-center fs-xs">
                                <a class="blog-entry-meta-link" href="#">
                                    <div class="blog-entry-author-ava"><img src="<%=request.getContextPath()%>/views/img/news/hansangin.jpg" alt="정흥준 기자"></div>정흥준 기자 jhj@dailypharm.com</a>
                                <div class="ms-auto text-nowrap"><a class="blog-entry-meta-link text-nowrap" href="#">2021-12-06</a>
                                    <span class="blog-entry-meta-divider mx-2"></span>
                                    <a class="blog-entry-meta-link text-nowrap" href="blog-single.html#comments"> <i class="ci-message"></i></a>
                                </div>
                            </div>
                        </div>
                    </article>
                    <!-- Entry-->
                    <article class="masonry-grid-item">
                        <div class="card" style="width: 18rem; height: auto">
                            <a class="blog-entry-thumb" href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083"><img class="card-img-top" src="<%=request.getContextPath()%>/views/img/news/rosartan.jpg" alt="Post"></a>
                            <div class="card-body">
                                <h2 class="h6 blog-entry-title fw-bold"><a href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">로사르탄 재처방·재조제 임박...제약사 비용 정산 방법은?</a></h2>
                                <p class="fs-ms">
                                    <a class="link-dark" href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">
                                        이번주 회수품목과 업무 가이드라인 확정 발표 전망
                                        <br>병의원·약국 청구→공단이 업체 전달→제약사 요양기관 입금</a> </p>
                            </div>
                            <div class="card-footer d-flex align-items-center fs-xs">
                                <a class="blog-entry-meta-link" href="#">
                                    <div class="blog-entry-author-ava"><img src="<%=request.getContextPath()%>/views/img/news/hansangin.jpg" alt="정흥준 기자"></div>정흥준 기자 jhj@dailypharm.com</a>
                                <div class="ms-auto text-nowrap"><a class="blog-entry-meta-link text-nowrap" href="#">2021-12-06</a>
                                    <span class="blog-entry-meta-divider mx-2"></span>
                                    <a class="blog-entry-meta-link text-nowrap" href="blog-single.html#comments"> <i class="ci-message"></i></a>
                                </div>
                            </div>
                        </div>
                    </article>
                    <!-- Entry-->
                    <article class="masonry-grid-item">
                        <div class="card" style="width: 18rem; height: auto">
                            <div class="card-body">
                                <h2 class="h6 blog-entry-title fw-bold"><a href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">아이비웰니스, 혹한기 취약계층에 1억원 상당 아이비커큐민285 등 기부</a></h2>
                                <p class="fs-ms">
                                    <a class="link-dark" href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">이비웰니스(대표 윤중식)가 혹한기를 앞두고 취약계층 노인들을 위해 1억원 상당의 아이비커큐민285 등 건강식품을 기부했다.
                                        <br> 이번 기부물품은 독거노인종합지원센터(센터장 김현미)에 전달됐으며 노인들에게 혹한기 건강 증진 선물로 전달될 예정이다....</a></p>
                                <a class="btn-tag me-2 mb-2" href="#">약국경영</a>
                            </div>
                            <div class="card-footer d-flex align-items-center fs-xs">
                                <a class="blog-entry-meta-link" href="#">
                                    <div class="blog-entry-author-ava"><img src="<%=request.getContextPath()%>/views/img/news/sgkam.jpg" alt="감성균 기자">
                                    </div>감성균 기자 sgkam@kpanews.co.kr
                                </a>
                                <div class="ms-auto text-nowrap">2021-12-06</a><span class="blog-entry-meta-divider mx-2"></span>
                                    <a class="blog-entry-meta-link text-nowrap bg-dark" href="blog-single.html#comments"><i class="ci-message"></i>댓글..</a>
                                </div>
                            </div>
                        </div>
                    </article>
                    <!-- Entry-->
                    <article class="masonry-grid-item">
                        <div class="card" style="width: 18rem; height: auto">
                            <a class="blog-entry-thumb" href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083"><img class="card-img-top" src="<%=request.getContextPath()%>/views/img/news/rosartan.jpg" alt="Post"></a>
                            <div class="card-body">
                                <h2 class="h6 blog-entry-title fw-bold"><a href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">로사르탄 재처방·재조제 임박...제약사 비용 정산 방법은?</a></h2>
                                <p class="fs-ms">
                                    <a class="link-dark" href="http://www.dailypharm.com/Users/News/NewsView.html?ID=283083">
                                        이번주 회수품목과 업무 가이드라인 확정 발표 전망
                                        <br>병의원·약국 청구→공단이 업체 전달→제약사 요양기관 입금</a> </p>
                            </div>
                            <div class="card-footer d-flex align-items-center fs-xs">
                                <a class="blog-entry-meta-link" href="#">
                                    <div class="blog-entry-author-ava"><img src="<%=request.getContextPath()%>/views/img/news/hansangin.jpg" alt="정흥준 기자"></div>정흥준 기자 jhj@dailypharm.com</a>
                                <div class="ms-auto text-nowrap"><a class="blog-entry-meta-link text-nowrap" href="#">2021-12-06</a>
                                    <span class="blog-entry-meta-divider mx-2"></span>
                                    <a class="blog-entry-meta-link text-nowrap" href="blog-single.html#comments"> <i class="ci-message"></i></a>
                                </div>
                            </div>
                        </div>
                    </article>
                    <!-- Entry-->
                    <article class="masonry-grid-item">
                        <div class="card" style="width: 18rem; height: auto">
                            <div class="card-body">
                                <h2 class="h6 blog-entry-title fw-bold"><a href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">아이비웰니스, 혹한기 취약계층에 1억원 상당 아이비커큐민285 등 기부</a></h2>
                                <p class="fs-ms">
                                    <a class="link-dark" href="https://www.kpanews.co.kr/article/show.asp?page=1&category=B&idx=227962">이비웰니스(대표 윤중식)가 혹한기를 앞두고 취약계층 노인들을 위해 1억원 상당의 아이비커큐민285 등 건강식품을 기부했다.
                                        <br> 이번 기부물품은 독거노인종합지원센터(센터장 김현미)에 전달됐으며 노인들에게 혹한기 건강 증진 선물로 전달될 예정이다....</a></p>
                                <a class="btn-tag me-2 mb-2" href="#">약국경영</a>
                            </div>
                            <div class="card-footer d-flex align-items-center fs-xs">
                                <a class="blog-entry-meta-link" href="#">
                                    <div class="blog-entry-author-ava"><img src="<%=request.getContextPath()%>/views/img/news/sgkam.jpg" alt="감성균 기자">
                                    </div>감성균 기자 sgkam@kpanews.co.kr
                                </a>
                                <div class="ms-auto text-nowrap">2021-12-06</a><span class="blog-entry-meta-divider mx-2"></span>
                                    <a class="blog-entry-meta-link text-nowrap bg-dark" href="blog-single.html#comments"><i class="ci-message"></i>댓글..</a>
                                </div>
                            </div>
                        </div>
                    </article>

                </div>
                <hr class="mb-4">
                <!-- Pagination-->
                <nav class="d-flex justify-content-between pt-2" aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#"><i class="ci-arrow-left me-2"></i>Prev</a></li>
                    </ul>
                    <ul class="pagination">
                        <li class="page-item d-sm-none"><span class="page-link page-link-static">1 / 5</span></li>
                        <li class="page-item active d-none d-sm-block" aria-current="page"><span class="page-link">1<span class="visually-hidden">(current)</span></span>
                        </li>
                        <li class="page-item d-none d-sm-block"><a class="page-link" href="#">2</a></li>
                        <li class="page-item d-none d-sm-block"><a class="page-link" href="#">3</a></li>
                        <li class="page-item d-none d-sm-block"><a class="page-link" href="#">4</a></li>
                        <li class="page-item d-none d-sm-block"><a class="page-link" href="#">5</a></li>
                    </ul>
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#" aria-label="Next">Next<i class="ci-arrow-right ms-2"></i></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </main>

<%@ include file="/views/footer.jsp" %>
