<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
 
<head>
	<style type="text/css">
		.page li {list-style: none; float: left; padding: 6px;}
	</style>
	
	<style type="text/css">
		.write_btn{
		margin: auto;
   		width: 50%;
		} 
	</style>
		
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    .container{
       
    }
     
    *{
      box-sizing: border-box;
    }
    .container{
      border:1px solid black;
    }
    .container>*{
      border:1px solid red;
    }
    .container>.content>*{
      border:1px solid green;
    }
    .container .content{
      padding-left:200px;
      padding-right:150px;
      overflow: hidden;
    }
    .container .content>*{
      float:left;
      padding-bottom:2500px;
      margin-bottom:-2500px;
    }
    .container .content main{
      width:100%;
    }
    .container .content nav{
      width:200px;
      margin-left: -100%;
      left:-200px;
      position: relative;
    }
    .container .content aside{
      width:150px;
      margin-right:-150px; 
    }
    .container footer{
      clear: both;
    }
     
    @media (max-width:599px){
      .container .content{
        padding-left:0;
        padding-right:0;
        overflow: visible;
      }
      .container .content>*{
        float:none;
        padding-bottom:0;
        margin-bottom:0;
      }
      .container .content main{
        width:100%;
      }
      .container .content nav{
        width:auto;
        margin-left: 0;
        left:0;
        position: relative;
      }
      .container .content aside{
        width:auto;
        margin-right:0; 
      }
    }
    
    ul{
   list-style:none;
   }
  </style>
	<style type="text/css">
	/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/

html,
body,
div,
span,
applet,
object,
iframe,
h1,
h2,
h3,
h4,
h5,
h6,
p,
blockquote,
pre,
a,
abbr,
acronym,
address,
big,
cite,
code,
del,
dfn,
em,
img,
ins,
kbd,
q,
s,
samp,
small,
strike,
strong,
sub,
sup,
tt,
var,
b,
u,
i,
center,
dl,
dt,
dd,
ol,
ul,
li,
fieldset,
form,
label,
legend,
table,
caption,
tbody,
tfoot,
thead,
tr,
th,
td,
article,
aside,
canvas,
details,
embed,
figure,
figcaption,
footer,
header,
hgroup,
menu,
nav,
output,
ruby,
section,
summary,
time,
mark,
audio,
video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
    letter-spacing: -1px;
    box-sizing: border-box;
}

/* HTML5 display-role reset for older browsers */
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
menu,
nav,
section {
    display: block;
}

body {
    line-height: 1;
}

ol,
ul {
    list-style: none;
}

blockquote,
q {
    quotes: none;
}

blockquote:before,
blockquote:after,
q:before,
q:after {
    content: '';
    content: none;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

a {
    text-decoration: none;
    color: inherit;
}
@import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap");
.wrapper {
  padding: 31px 28px;
  margin: 144px auto;
  width: 1060px;
  background-color: #f2f2f2;
  border: 2px solid #bdbdbd;
  border-radius: 15px;
  text-align: center;
}

.wrapper h1 {
  font-size: 24px;
  font-weight: 700;
  margin-top: 10px;
}

.wrapper h1::after {
  content: " ";
  display: block;
  margin: 0 auto;
  width: 650px;
  height: 2px;
  background-color: #bdbdbd;
  margin-top: 37px;
}

.wrapper .navbar {
  padding: 28px 312px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
}

.wrapper .navbar .on {
  font-weight: 900;
}

.divbox {
	 border: 2px solid #bdbdbd;
}

.content .movie_list {
  border: 2px solid #bdbdbd;
  border-radius: 15px;
  background-color: #fff;
  padding: 26px 27px;
  display: -ms-grid;
  display: grid;
  -ms-grid-columns: 1fr 1fr 1fr 1fr;
      grid-template-columns: 1fr 1fr 1fr 1fr;
  gap: 23px;
}

.wrapper .movie_list_item {
  border: 1px solid #bdbdbd;
  border-radius: 10px;
  width: 220px;
}

.wrapper .movie_list_item img {
  width: 180px;
  height: 250px;
  margin-top: 19px;
  border: 1px solid #bdbdbd;
  border-radius: 10px;
  -webkit-box-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
          box-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
}

.wrapper .movie_list_item .btn {
  width: 100%;
  background-color: #f2f2f2;
  border-top: 1px solid #bdbdbd;
  border-radius: 0 0 10px 10px;
  padding: 9px 27px 12px;
  font-size: 14px;
  font-weight: 700;
  position: relative;
  line-height: 20px;
  cursor: pointer;
}

.wrapper .movie_list_item .btn::after {
  position: absolute;
  content: "";
  background-color: #bdbdbd;
  width: 1px;
  height: 41px;
  left: 107px;
  top: 0;
}

.wrapper .movie_list_item .btn .trailer {
  padding-left: 68px;
  position: relative;
}

.wrapper .movie_list_item .btn .trailer::before {
  content: "";
  position: absolute;
  background: url(/images/css_sprites.png) no-repeat;
  background-size: 152px 34px;
  background-position: -29px -5px;
  width: 16px;
  height: 16px;
  left: 50px;
  top: 2px;
}

.contents {
  padding: 0 20px 18px 20px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  text-align: left;
}

.contents .title {
  font-weight: 900;
  margin: 11px 0;
}

.contents .sub_info {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
  position: relative;
}

.contents .info {
  font-size: 13px;
  color: #828282;
  margin-bottom: 5px;
}

.contents .info span {
  margin-left: 5px;
  color: #000;
}

.contents .info .rank {
  position: relative;
  margin-left: 23px;
}

.contents .info .rank::before {
  content: "";
  position: absolute;
  background: url(/images/css_sprites.png) no-repeat;
  background-size: 152px 34px;
  background-position: -5px -5px;
  width: 14px;
  height: 14px;
  left: -18px;
}

footer {
  background-color: #f2f2f2;
  display: block;
  position: relative;
  padding: 38px 365px;
  overflow: hidden;
  line-height: 20px;
}

footer h2 {
  font-size: 22px;
  font-weight: 700;
  padding: 15px 0 42px;
  border-bottom: 1px solid #bdbdbd;
}

footer dl {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  float: left;
  font-size: 14px;
  color: #4f4f4f;
  padding-top: 36px;
}

footer dl dt {
  margin-right: 4px;
  font-weight: 700;
}

footer dl dt:nth-child(1) {
  margin-right: 20px;
}

footer dl dd {
  margin-right: 20px;
}

footer .sns_list {
  position: absolute;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  gap: 21px;
  overflow: hidden;
  font-size: 1px;
  line-height: 0;
  text-indent: -9999px;
  right: 365px;
  top: 54px;
}

footer .sns_list .twitter {
  background: url(/images/css_sprites.png) no-repeat;
  background-size: 152px 34px;
  width: 24px;
  height: 24px;
  background-position: -55px -5px;
}

footer .sns_list .instagram {
  background: url(/images/css_sprites.png) no-repeat;
  background-size: 152px 34px;
  width: 24px;
  height: 24px;
  background-position: -88px -5px;
}

footer .sns_list .facebook {
  background: url(/images/css_sprites.png) no-repeat;
  background-size: 152px 34px;
  width: 24px;
  height: 24px;
  background-position: -123px -5px;
}

footer .copyright {
  float: right;
  margin-top: 36px;
}

  

/*# sourceMappingURL=style.css.map */
	</style>

	<style type="text/css">
		.page li {list-style: none; float: left; padding: 6px;}
	</style>
	
	

	<link rel="stylesheet"
	href="${rootPath}/static/css/main.css?ver=2022-08-29-001">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	

  
</head>

<body>
 <section class="wrapper">

 <nav>
        <ul class="navbar">

	          <a href ="http://localhost:8080/ticket/list"><li>- ALL</li></a>
	          <a href ="http://localhost:8080/ticket/list_Cgv"><li>- CGV</li></a>
	          <a href ="http://localhost:8080/ticket/list_Lot"><li>- 롯데시네마</li></a>
	          <a href ="http://localhost:8080/ticket/list_Mega"><li>- 메가박스</li></a>
	          <br>
	          <br>
	          <br>
	     </ul>           
      </nav>
    <section class="content" >
      <main>

			<section id="container">
	
				<form role="form" method="post" action="/ticket/write">
				
					<table class = "table table-hover">
					<tr><th>상품사진</th><th>상품설명</th><th>가격</th><h1>CGV</h1><th>작성자</th><th>조회수</th><th>작성일</th><th>상태</th></tr>
						<c:forEach items="${list_Cgv}" var = "list">
	
							<tr>
								 <td> <img src="/tickec_project/src/main/webapp/static/image/cgv.png" alt="cgv"></td>
								<td><c:out value="${list.content}" /></td>
								<td><fmt:formatNumber pattern="###,###,###" value="${list.cost}" />&#8361;</td>
								<td><c:out value="${list.writer}" /></td>
								<td><c:out value="${list.click_cnt}" /></td>
								<td><c:out value="${list.create_date}" /></td>
								<c:if test= "${list.state eq '판매중'}">
								<td><button type="button" class="btn btn-success"><a href="/ticket/readView?id=${list.id}"><c:out value="${list.state}" /></a></button></td></c:if>
								<c:if test= "${list.state eq '예약중'}">
								<td><button type="button" class="btn btn-warning"><a href="/ticket/readView?id=${list.id}"><c:out value="${list.state}" /></a></button></td></c:if>
								<c:if test= "${list.state eq '판매완료'}">
								<td><button type="button" class="btn btn-danger"><a href="/ticket/readView?id=${list.id}"><c:out value="${list.state}" /></a></button></td></c:if>
							</tr>
							
						</c:forEach>

					</table>
				</form>
			
			</section>


      </main>
     
          </section>
       
        <div>
	          	  <ul class="page">
				    <c:if test="${pageMaker.prev}">
				    	<li><a href="list${pageMaker.makeQuery(pageMaker.startPage - 1)}"><<</a></li>
				    </c:if>

				    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				    	<li><a href="list${pageMaker.makeQuery(idx)}">${idx}</a></li>
				    </c:forEach>

				    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				    	<li><a href="list${pageMaker.makeQuery(pageMaker.endPage + 1)}">>></a></li>
				    </c:if>
				  </ul>
				</div>

				<div class = "write_btn">
				
				<a href ="http://localhost:8080/ticket/writeView"><input type='button', value='글쓰기'/></a>
				
					
				</div>

        
    </section>

    
    
    
    
    
    
    
  
      <footer>
        <h2>영화대리예매</h2>
        <dl>
            <dt>(주) 한국경영원</dt>
            <dt>대표</dt>
            <dd>나준희</dd>
            <dt>사업자 번호</dt>
            <dd>000-0000-0000</dd>
            <dt>주소</dt>
            <dd>서울특별시</dd>
        </dl>
        <ul class="sns_list">
            <li class="twitter"><a href="#">twitter</a></li>
            <li class="instagram"><a href="#">instagram</a></li>
            <li class="facebook"><a href="#">facebook</a></li>
        </ul>
        <span class="copyright">&copy;영화대리예매</span>
    </footer>
    

</body>
 
</html>