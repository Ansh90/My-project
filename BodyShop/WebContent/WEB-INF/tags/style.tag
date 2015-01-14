<style>
#man {
	background-color: white;
}

#mainnav {
	background-color: #FFF;
	border: 1px solid #cccccb;
	bottom: 0;
	height: 35px;
	left: 5px;
	position: absolute;
	padding: 0;
	right: 5px;
	text-transform: uppercase;
	top: 142px;
	z-index: 10;
}

#mainnav>ul>li>a {
	color: #666;
	display: block;
	float: left;
	font: normal 1.0em/35px "gill-ss-std", Verdana, Geneva, sans-serif;
	height: 35px;
}

#mainnav>ul>.first>a span {
	background:
		url(/resources/images/sprites.png)
		0 -40px no-repeat;
	display: block;
	float: left;
	height: 17px;
	margin: 8px 0 0 0;
	text-indent: -9999em;
	width: 18px;
	overflow: hidden;
	position: relative;
}

#banner {
	height: 160px;
	position: relative;
	width: 100%;
	z-index: 2;
}

#main-logo {
	display: block;
	float: left;
	height: 33px;
	margin: 73px 0 0 3px;
	position: relative;
	width: 310px;
}

#master .wrapper1200 {
	margin: 0 auto;
	max-width: 1070px;
	min-width: 751px;
	padding: 0 5px;
	position: relative;
	z-index: 5;
}

#baseline {
	color: #fff;
	font: normal 1.2em/1em "TBSactivist", "Comic Sans MS", cursive;
	left: 50%;
	margin: 0 0 0 -200px;
	position: absolute;
	text-align: center;
	top: 108px;
	width: 400px;
}

#baseline a {
	color: #fff;
	font-size: 1.2em;
}

#main-search {
	left: 50%;
	margin: 0 0 0 -135px;
	position: absolute;
	top: 72px;
}

#main-search input[type="submit"] {
	background:
		url("/resources/images/sprites.png")
		no-repeat scroll -80px -160px transparent;
	float: r;
	height: 30px;
	margin: 0 0 0 0;
	padding: 0;
	text-indent: -9999em;
	width: 28px;
}

.category #additionnal-nav {
	margin: 0 0 20px 0;
}

#complementary-nav {
	color: #f3fad9;
	float: right;
	font: normal 1.2em/23px "gill-ss-std", Verdana, Geneva, sans-serif;
	right: -5px;
	margin: 0;
	position: absolute;
	position: relative;
	top: -140px;
	text-transform: uppercase;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	background: #f3fad9;
}

#complementary-nav ul li:last-child a span {
	background:
		url(/resources/images/ico_card.gif)
		7px no-repeat;
	display: block;
	float: right;
	height: 23px;
	width: 48px;
}

#complementary-nav ul li {
	background:
		url(/resources/images/separator-01.gif)
		center right no-repeat transparent;
	display: block;
	float: left;
}

#client-manager {
	background-color: #f3fad9;
	border: 1px solid #c6c6c5;
	clear: both;
	float: right;
	height: 80px;
	margin: 0;
	overflow: hidden;
	padding: 0 0 0 10px;
	position: absolute;
	right: 0;
	top: 40px;
}

#client-manager nav {
	color: #fff;
	float: right;
	font: normal 1.2em/16px "gill-ss-std", Verdana, Geneva, sans-serif;
	margin: 5px 10px 15px 0;
	text-transform: uppercase;
}

#client-manager nav ul li {
	background:
		url(/resources/images/separator-01.gif)
		top right no-repeat transparent;
	display: inline-block;
	float: left;
	position: relative;
}

#client-manager #basket {
	clear: both;
	color: #666;
	font: normal 1.4em/40px "gill-ss-std", Verdana, Geneva, sans-serif;
	list-style: none;
	margin: 0;
	text-transform: uppercase;
}

#client-manager #basket a .visual {
	background:
		url(/resources/images/sprites.png)
		-280px -140px no-repeat;
	color: #666;
	display: block;
	float: left;
	font-family: "gill-ss-std-bold", Verdana, Geneva, sans-serif;
	height: 40px;
	margin: -7px 10px 0 0;
	width: 39px;
}

#header-bg {
	background:
		url(/resources/images/bg_header.jpg)
		0 0 repeat-x;
	height: 160px;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

#maincontent {
	overflow: hidden;
	margin: 0 0 15px 0;
	padding: 30px 0 0 0;
	position: relative;
	width: 100%;
	z-index: 2;
}

.gcontainer {
	margin: 0 auto;
	position: relative;
	text-align: left;
}

#additionnal-nav {
	background-color: #fff;
	border: 1px solid #ccc;
	display: block;
	position: relative;
	width: 242px;
	z-index: 150;
}

#additionnal-nav .title {
	color: #666;
	font: normal 3em/45px "bebasneue", Impact, Charcoal, sans-serif;
	position: relative;
	padding-left: 20px;
}

#additionnal-nav .title span {
	/*background:url(../image/common/sprites.png) -230px -60px no-repeat;*/
	display: block;
	height: 5px;
	margin: -2px 0 0 0;
	position: absolute;
	right: 20px;
	top: 50%;
	width: 10px;
}

#additionnal-nav ul {
	list-style: none;
}

#additionnal-nav ul li {
	background:
		url(/resources/images/separator-02.gif)
		0 0 repeat-x transparent;
	color: #666;
	font: normal 1.4em/14px "gill-ss-std", Verdana, Geneva, sans-serif;
	padding: 8px 0;
	position: relative;
	text-transform: uppercase;
}

#additionnal-nav ul .active {
	font-family: "gill-ss-std-bold", Verdana, Geneva, sans-serif;
}

#additionnal-nav ul li a {
	display: block;
	color: #666;
	padding: 0 35px 0 20px;
	position: relative;
}

#additionnal-nav ul li a:hover,#additionnal-nav ul .active a {
	color: #7fb719;
}

#additionnal-nav ul li a span {
	background:
		url(/resources/images/sprites.png)
		-230px -60px no-repeat;
	display: block;
	height: 9px;
	margin: -4px 0 0 0;
	position: absolute;
	right: 20px;
	top: 50%;
	width: 5px;
}

.-list {
	overflow: hidden;
	position: relative;
}

.advert-list ul {
	list-style: none;
	overflow: hidden;
	position: relative;
}

.advert-list ul li {
	overflow: hidden;
	position: relative;
	padding: 10px;
}

.product .advertising {
	margin: 0 0 20px 0;
}

.advertising {
	border: 1px solid #ccc;
	height: 184px;
	overflow: hidden;
	position: relative;
	width: 242px;
	z-index: 2;
}

#maincontent img {
	display: block;
}

.advertising img {
	display: inline-block;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
}

.gcols3>.gcol2.specific-breadcrumb {
	box-sizing: border-box;
	margin: 0;
	padding: 0 0 0 264px;
	width: 100%;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.gcols {
	clear: both;
	position: relative;
}

#breadcrumb {
	width: 100%;
}

#breadcrumb ul {
	list-style: none;
	width: 100%;
}

#breadcrumb ul li {
	float: left;

	font: normal 1.0em/45px "gill-ss-std", "Times New Roman", Times, serif;
	margin: 0 8px 0 0;
}

#breadcrumb ul li span {
	color: #666;
}

#breadcrumb ul li:last-child {
	font-family: "gill-ss-std-bold", "Times New Roman", Times, serif;
}

#breadcrumb ul .active span {
	background:
		url("/resources/images/sprites.png")
		no-repeat scroll -220px -60px transparent;
	display: inline-block;
	height: 9px;
	margin: 0 5px 0 0;
	width: 5px;
}

#breadcrumb ul li a {
	color: #666;
}

#breadcrumb ul li a:hover {
	color: #7fb719;
}

.item-L.item-01 {
	overflow: hidden;
	padding: 0 0 20px 0;
	position: relative;
	width: 100%;
}

.item-L.item-01 .visual {
	display: block;
	position: absolute;
	top: 0;
}

.item-L.item-01>.title {
	
}

.item-L.item-01 #additionnal-nav {
	margin: 39px 0 0 0;
	position: relative;
	width: 242px;
	z-index: 2;
}

.advertising {
	border: 1px solid #ccc;
	height: 184px;
	overflow: hidden;
	position: relative;
	width: 242px;
	z-index: 2;
}

.advertising img {
	display: inline-block;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
}

.item-L.item-01 .advertising-01 {
	margin: 20px 0 0 0;
	position: relative;
}

.item-L.item-01 .advertising-02 {
	right: 0;
	position: absolute;
	top: 39px;
}
.category .catalog-01 {
margin: 0 0 40px 0;
}
.category .catalog-01 .products-list {
background: url(/resources/images/separator-02.gif) top left repeat-x;
padding: 15px 0 10px;
}
.category .catalog-01 .products-list > li:nth-child(3n+1) {
padding: 0 3% 0 0;
}

.category .catalog-01 .products-list > li:first-child, .catalog-01 .products-list > li:nth-child(2), .catalog-01 .products-list > li:nth-child(3) {
margin: 0 0 0 0;
}

.category .catalog-01 .products-list > li {
background: url(/resources/images/separator-04.gif) top right repeat-y;
display: block;
float: left;
margin: 45px 0 0 0;
overflow: hidden;
padding: 0 3%;
position: relative;
width: 29%;
}

.category .catalog-01 ul {
display: inline-block;
list-style: none;
width: 100%;
}


.item-L.item-01 .advertising-03 {
	right: 0;
	position: absolute;
	bottom: 20px;
}

.item-L.item-02 {
	background-color: #fff;
	border: 1px solid #c6c6c5;
	height: 115px;
	padding: 0px;
	position: relative;
	overflow: hidden;
}

.item-L.item-02 .wrapper {
	height: 100%;
	width: 100%;
}

.item-L.item-02 .wrapper hgroup {
	margin: 20px 0 0 20px;
}

.item-L.item-02 .wrapper .title {
	color: #7fb719;
	font: normal 3em/1em "bebasneue", Impact, Charcoal, sans-serif;
	margin: 0 0 5px 0;
}

.item-L.item-02 .wrapper .title a {
	color: #7fb719;
}

.item-L.item-02 .wrapper .title a:hover {
	text-decoration: underline;
}

.item-L.item-02 .wrapper .description {
	color: #666;
	font: normal 1.4em/1.2em "gill-ss-std", Verdana, Geneva, sans-serif;
}

.item-L.item-02 .wrapper #slider-ingredients {
	display: block;
	height: 115px;
	position: absolute;
	right: 24px;
	top: 0;
	width: 60%;
}

.item-L.item-02 .wrapper #slider-ingredients .arrow-left {
	height: 100%;
	left: 0;
	position: absolute;
	top: 0;
	width: 16px;
	z-index: 1;
}

.item-L.item-02 .wrapper #slider-ingredients .arrow-left span {
	background: url(/resources/images/sprites.png) no-repeat -170px -40px
		transparent;
	height: 34px;
	left: 0;
	margin: -20px 0 0 0;
	position: absolute;
	top: 50%;
	width: 16px;
	z-index: 1;
}

.item-L.item-02 .wrapper #slider-ingredients .arrow-left:hover {
	cursor: pointer;
}

.item-L.item-02 .wrapper #slider-ingredients .arrow-right {
	height: 100%;
	position: absolute;
	top: 0;
	right: 0;
	width: 16px;
	z-index: 1;
}

.item-L.item-02 .wrapper #slider-ingredients .arrow-right span {
	background: url(/resources/images/sprites.png) -190px -40px no-repeat;
	height: 34px;
	margin: -20px 0 0 0;
	position: absolute;
	top: 50%;
	right: 0;
	width: 16px;
	z-index: 1;
}

.item-L.item-02 .wrapper #slider-ingredients .arrow-right:hover {
	cursor: pointer;
}

.item-L.item-02 .wrapper #slider-ingredients .slider-wrapper-contener {
	overflow: hidden;
	padding: 0px 20px 0px 20px;
	position: relative;
}

.item-L.item-02 .wrapper #slider-ingredients .slider-wrapper {
	height: 100%;
	overflow: hidden;
	position: relative;
	width: 100%;
}

.item-L.item-02 .wrapper #slider-ingredients ul {
	list-style: none;
	margin-top: 0;
	position: relative;
	width: 150000px;
}

.item-L.item-02 .wrapper #slider-ingredients ul li {
	float: left;
	display: block;
	height: 115px;
	position: relative;
	width: 115px;
}

.item-L.item-02 .wrapper #slider-ingredients ul li a {
	display: block;
}

.item-L.item-02 .wrapper #slider-ingredients ul li .visual {
	width: 70%;
	margin-top: 15px;
}

.item-L.item-02 .wrapper #slider-ingredients ul li .item-description {
	display: none;
	left: 50%;
	position: absolute;
	top: 0;
}

.item-L.item-02 .wrapper #slider-ingredients ul li:hover .item-description
	{
	display: block;
}

.link-find-out-more {
	color: #666;
	display: inline-block;
	font: normal 1em/1.2em "gill-ss-std", Verdana, Geneva, sans-serif;
	text-align: right;
}

.link-find-out-more:hover {
	color: #7fb719;
}

.item-L.item-03 {
	overflow: hidden;
	position: relative;
	width: 100%;
}

.item-L.item-03 .left {
	float: left;
	margin: 0 0 35px 0;
	overflow: hidden;
	position: relative;
	width: 50%
}

.item-L.item-03 .right {
	float: left;
	margin: 0 0 35px 0;
	overflow: hidden;
	position: relative;
	width: 50%
}

.item-L.item-03 .visual {
	display: block;
	padding: 0 5%;
	position: relative;
	width: 90%;
}

.item-L.item-03 .batch {
	padding: 70px 0 0 0;
	position: relative;
}

.item-L.item-03 .visual .sticker {
	right: 5%;
	overflow: hidden;
	position: absolute;
	top: 0;
	width: 23% !important;
}

.item-L.item-03 .visual .product {
	position: relative;
	width: 100%;
}

.item-L.item-03 .product_views {
	margin: 10px 0 10px 0;
	overflow: hidden;
	position: relative;
	z-index: 3;
}

.item-L.item-03 .product_views ul {
	list-style: none;
}

.item-L.item-03 .product_views ul li {
	float: left;
	width: 20%;
}

.item-L.item-03 .product_views ul li {
	border: 1px solid #fff;
}

.item-L.item-03 .product_views ul li a {
	/*display:block; height:80px; width:80px;*/
	
}

.item-L.item-03 .product_views ul li.product_selected-view {
	border: 1px solid #7fb719;
}

.item-L.item-03 .tools {
	overflow: hidden;
	position: relative;
}

.item-L.item-03 .tools .title {
	color: #666666;
	font: 0.7 "gill-ss-std", "Times New Roman", Times, serif;
	float: left;
	margin: 0 5px 0 0;
}

.item-L.item-03 .product-controls {
	float: left;
	list-style: none;
	margin: 0 10px 10px 0;
	position: relative;
}

.item-L.item-03 .product-controls li {
	float: left;
	margin-right: 3px;
	width: 25px;
}

.item-L.item-03 .product-sharing {
	float: left;
	list-style: none;
	position: relative;
	width: 250px;
}

.item-L.item-03 .product-sharing li {
	display: inline-block;
	float: left;
	margin-right: 3px;
}

.item-L.item-03 .product-sharing li>div {
	width: auto !important;
}

.item-L.item-03 {
	clear: both; /*padding:35px 0 0 0;*/
	padding: 0;
}

.item-L.item-03 .right {
	color: #666;
	/*font:normal 1.4em/15px "gill-ss-std","Times New Roman", Times, serif;*/
}

.item-L.item-03 .right>.title {
	color: #343434;
	/*font:normal 4em/.9em "bebasneue", Arial, Helvetica, sans-serif;*/
	font: normal 2.0em "gill-ss-std", "Times New Roman", Times, serif;
	margin: 0 0 10px 0;
	text-transform: uppercase;
}

.item-L.item-03 .right .note {
	font-family: "gill-ss-std", "Times New Roman", Times, serif;
}

.item-L.item-03 .right .note .rating {
	float: left;
	margin: 0 5px 5px 0;
	width: 115px;
}

.item-L.item-03 .right .note .rating-score {
	color: #333;
	float: left;
	font: normal 1.0px "gill-ss-std", "Times New Roman", Times;
}

.item-L.item-03 .right .note .fb-like {
	float: right;
	line-height: 21px;
	padding: 4px 0 0 0;
}

.item-L.item-03 .right .note .user-info-request {
	border-bottom: 1px dotted #ccc;
	clear: both;
	display: block;
	margin: 0 0 20px 0;
	overflow: hidden;
	padding: 0 0 15px 0;
	position: relative;
	width: 100%;
}

.item-L.item-03 .right .note .user-info-request a {
	color: inherit;
	font-size: 1.2em;
}

.item-L.item-03 .right .note .user-info-request a:hover {
	color: #000;
}

.item-L.item-03 .right .note .user-info-request .user-review {
	font-size: 1.4em;
	list-style-image:
		url('/resources/images/ico_article.gif');
	float: left;
}

.item-L.item-03 .right .note .user-info-request .user-review li {
	float: left;
	margin: 0 15px;
}

.item-L.item-03 .right .note .user-info-request .user-review li:last-child
	{
	margin-left: 12px;
}

.item-L.item-03 #video_container {
	display: none;
	height: 363px;
	position: relative;
	overflow: hidden;
	width: 363px;
}

/* order */
.item-L.item-03 .right .order .title {
	clear: both;
	color: #666;
	font: normal 1em "gill-ss-std", "Times New Roman", Times, serif;
	margin: 0 0 10px 0;
}

.item-L.item-03 .right .order .title .weight {
	color: #000;
	font-family: "gill-ss-std-bold", "Times New Roman", Times, serif;
	margin: 0 0 0 5px;
}

.item-L.item-03 .right .order ul.size-selector {
	list-style: none;
	margin: 0 0 15px 0;
	overflow: hidden;
	position: relative;
}

.item-L.item-03 .right .order ul.size-selector li {
	float: left;
	margin: 0 0 0 10px;
}

.item-L.item-03 .right .order ul.size-selector li:first-child {
	margin: 0px;
}

.item-L.item-03 .right .order ul.size-selector li input {
	display: none;
}

.item-L.item-03 .right .order ul.size-selector li label {
	background-color: white;
	border: 1px solid #4f4f4f;
	color: #666;
	display: block;
	float: left;
	font: normal 1em "gill-ss-std-bold", "Times New Roman", Times, serif;
	padding: 0 5px
}

.item-L.item-03 .right .order ul.size-selector li label.selected-size {
	background-color: #4f4f4f;
	border: 1px solid #4f4f4f;
	color: #fff;
	display: block;
	float: left;
	font: normal 1em "gill-ss-std-bold", "Times New Roman", Times, serif;
	padding: 0px 5px;
}

.item-L.item-03 .right .order .shade-selector {
	padding: 10px 0 0 0;
}

.item-L.item-03 #main-form { /*float: left;*/
	margin: 0 0 15px 0;
	overflow: hidden;
	position: relative;
	width: 100%
}

.item-L.item-03 #main-form .product-quantity {
	text-align: right;
	width: 60px;
}

.item-L.item-03 #main-form .product-size {
	text-align: right;
	width: 90px;
}

.item-L.item-03 #product-block input[type="submit"] {
	background-color: #e2007a;
	color: white;
	font: normal 2em "gill-ss-std-bold", "Times New Roman", Times, serif;
	height: 45px;
	float: left;
	text-transform: uppercase;
}
/*.item-L.item-03 #main-form .shade-type-select{  text-align:right; width:130px; }*/
.item-L.item-03 #main-form div { /*float:left;*/
	margin-right: 15px;
}

.item-L.item-03 #main-form .quantity {
	clear: both;
}

.item-L.item-03 #main-form .quantity,.item-L.item-03 #main-form .volume,.item-L.item-03 #main-form .shade-type
	{
	float: left;
	margin: 0 15px 15px 0;
}

.item-L.item-03 #main-form .shade-type .shade-type-select {
	width: 270px;
}

.item-L.item-03 #product-block {
	border: 1px solid #868686;
	display: block;
	float: left;
	padding: 20px;
	position: relative;
}

.item-L.item-03 #product-block .content {
	display: block;
	height: 100%;
	overflow: hidden;
	width: 100%
}

.item-L.item-03 #product-block .prices {
	float: left;
	margin: 0 20px 10px 0;
}

.item-L.item-03 #product-block input[type="submit"] {
	background-color: #e2007a;
	color: white;
	font: normal 1em "gill-ss-std-bold", "Times New Roman", Times, serif;
	height: 45px;
	float: right;
	text-transform: uppercase;
}

.item-L.item-03 #product-block .prices:last-of-type {
	float: left;
	margin: 0 0px 5px -10px;
}

.item-L.item-03 #product-block .prices #price_per_ml {
	font-size: 8px;
	float: left;
	margin: 0 20px 10px 0;
}

.item-L.item-03 #product-block .title {
	display: block;
	font-size: 16px;
	line-height: 1em;
	margin: 0;
}

.item-L.item-03 #product-block .price {
	display: table-cell;
	height: 30px;
	vertical-align: top;
}

.item-L.item-03 #product-block .prices .old {
	color: #333;
	font: normal 1em "gill-ss-std-bold", "Times New Roman", Times, serif;
	text-decoration: line-through;
}

.item-L.item-03 #product-block .prices .new {
	color: #e2007a;
	font: normal 2em "gill-ss-std-bold", "Times New Roman", Times, serif;
}

.item-L.item-03 .right .button-buy {
	background-color: #e2007a;
	color: white;
	font: normal 1em "gill-ss-std-bold", "Times New Roman", Times, serif;
	height: 45px;
	float: right;
	text-transform: uppercase;
	width: 195px;
}

.item-L.item-03 .right .button-buy:hover {
	text-decoration: underline;
}

.item-L.item-03 .right .free-shipping-amout {
	float: right;
	font: normal 1.4em/1em "gill-ss-std", "Times New Roman", Times, serif;
}

.item-L.item-03 .right .free-shipping-amout .amount-left {
	font: normal 1em "gill-ss-std-bold", "Times New Roman", Times, serif;
	color: #343434;
}

.item-L.item-03 .right .free-shipping-amout .free-shipping {
	background: url(/resources/images/free-shipping_bg.gif)
		no-repeat scroll bottom left transparent;
	display: inline-block;
	color: #343434;
	font: normal 1em/30px "gill-ss-std-bold", "Times New Roman", Times,
		serif;
}

.item-L.item-03 .right #product-offers {
	float: left;
	margin-top: 15px;
}

.item-L.item-03 .right #product-offers p:first-child {
	font: normal 1.4em/1em "gill-ss-std-bold", "Times New Roman", Times,
		serif;
}

.item-L.item-03 .right #product-offers p:last-child {
	color: #e2007a;
	font: normal 1.4em/1em "gill-ss-std", "Times New Roman", Times, serif;
	padding: 5px 0;
}

.item-L.item-03 .right .warranties {
	border-bottom: 1px dotted #ccc;
	border-top: 1px dotted #ccc;
	float: left;
	font: normal 1.4em/34px "gill-ss-std", "Times New Roman", Times, serif;
	height: 34px;
	margin: 10px 0;
	overflow: hidden; /*padding:15px 0;*/
	width: 100%;
}
/*.item-L.item-03 .right .warranties img { height:34px; padding:0 10px 0 0; display:inline !important}
.item-L.item-03 .right .warranties ul {list-style:none;  float:left;}
.item-L.item-03 .right .warranties ul li{ display:block; float:left; height:34px;  position:relative;}*/
.item-L.item-03 .right .warranties ul li>a {
	display: block;
	float: left;
	color: #7fb719;
	padding: 0 10px;
}

.item-L.item-03 .right .warranties ul li a:hover {
	text-decoration: underline;
}

.item-L.item-03 .right .warranties ul li:first-child img {
	width: 18px !important;
}

.item-L.item-03 .right .warranties ul li:last-child {
	background: none;
}

.item-L.item-03 .right .warranties ul li:last-child img {
	padding: 5p 0 0;
	width: 43px !important;
}

.item-L.item-03 .right .warranties ul li:last-child .delivery-txt {
	display: block;
	float: left;
	line-height: 58px;
	padding: 0 0 0 10px;
	position: relative;
}

.item-L.item-03 .right .warranties ul li:last-child .delivery-txt a {
	color: #7fb719;
	font-size: .9em;
	left: 10px;
	position: absolute;
	top: 15px;
}

.item-L.item-03 .right .warranties ul li:last-child .delivery-txt .shipping-amount
	{
	font: normal 1em "gill-ss-std-bold", "Times New Roman", Times, serif;
}

.item-L.item-03 .right .warranties .delivery-txt .more_info {
	color: #7fb719;
	font-size: 12px;
	left: 10px;
	position: absolute;
	top: 14px;
}

.item-L.item-03 .right .product-infos {
	color: #4d4d4d;
	float: left;
	font: normal 1em "gill-ss-std", "Times New Roman", Times, serif;
	padding: 15px 0;
	width: 100%;
}

.item-L.item-03 .right .product-infos .title {
	font-family: "gill-ss-std-bold", "Times New Roman", Times, serif;
	margin: 0 0 5px 0;
}

.item-L.item-03 .right .product-infos .introduction {
	margin: 0 0 5px 0;
}

.item-L.item-03 .right .product-infos .description {
	margin: 0 0 20px 0;
}

.item-L.item-03 .right .product-infos ul {
	margin: 0 15px 20px 15px;
}

.item-L.item-03 .right .product-infos ul li {
	padding: 2px 5px;
}

.customStyleSelectBox {
	background:
		url(/resources/images/ico_arrow-down_lang.jpg)
		right top no-repeat #4f4f4f;
	border: none;
	color: #fff;
	font-size: 12px;
	line-height: 25px;
	height: 25px;
	margin: 0 0 0 5px;
	padding: 0 25px 0 0;
	text-align: right;
}

.customStyleSelectBox-white {
	background:
		url(/resources/images/ico_arrow-down_white.gif)
		right top no-repeat #fff;
	border: 1px solid #4f4f4f;
	color: #4f4f4f;
	font: normal 1.4em/25px "gill-ss-std-bold", Verdana, Geneva, sans-serif;
	line-height: 25px;
	height: 25px;
	padding: 0 25px 0 0;
	text-align: right;
}
/* SUBCATEGORY ORDER FILTER SELECT */
/*#community-filter .customStyleSelectBox { background:url(../image/common/ico/ico_arrow-down_lang.jpg) right top no-repeat #4f4f4f; border:none; color:#fff; height:25px; margin:0; padding:0 45px 0 10px; text-align:left; }*/
#community-filter .customStyleSelectBox {
	background:
		url(/resources/images/ico_arrow-down_white.gif)
		right top no-repeat #fff;
	border: 1px solid #666;
	color: #666;
	height: 25px;
	margin: 0;
	padding: 0 25px 0 10px;
	text-align: right;
}

#main-form .customStyleSelectBox {
	background:
		url(/resources/images/ico_arrow-down_white.gif)
		right top no-repeat #fff;
	border: 1px solid #666;
	color: #666;
	height: 25px;
	margin: 0;
	padding: 0 25px 0 10px;
	text-align: right;
}

#quickshop .customStyleSelectBox {
	background:
		url(/resources/images/ico_arrow-down_white.gif)
		right top no-repeat #fff;
	border: 1px solid #666;
	color: #666;
	height: 25px;
	margin: 0;
	padding: 0 25px 0 10px;
	text-align: right;
}
/* second titre traduit */
.gcontainer {
	margin: 0 auto;
	position: relative;
	text-align: left;
}

.gcols {
	clear: both;
	position: relative;
}

.gcol,.gcol2,.gcol3,.gcol4,.gcol5 {
	float: left;
	display: inline;
	margin-left: 20px;
}

.gcols .first,.gcol:first-child {
	margin-left: 0 !important;
}

.gcol {
	width: 49%;
}

.gcols3 .gcol {
	width: 32%;
}

.gcols4 .gcol {
	width: 23.5%;
}

.gcols5 .gcol {
	width: 18.4%;
}

.gcols6 .gcol {
	width: 15%;
}

.gcols2 .gcol-L {
	width: 730px;
}

.gcols2 .gcol-R {
	width: 188px;
}

.gcols3>.gcol-L {
	left: 0;
	position: absolute;
	top: 0;
	width: 244px;
	z-index: 10;
}

.gcols3>.gcol2 {
	margin: 0 0 0 264px;
	width: auto;
}

.gcols3>.gcol2.specific-breadcrumb {
	box-sizing: border-box;
	margin: 0;
	padding: 0 0 0 264px;
	width: 100%;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

.subcategory .gcols3>.gcol2.content {
	float: none;
	display: block;
	margin: 0 0 0 264px;
	width: auto;
}

/*.gcols3 > .gcol2.content { clear:both; width:inherit; }*/
.gcols3>.gcol2 .gcol-L {
	width: 78 .83%;
}

.gcols3>.gcol2 .gcol-ALL {
	width: 100%;
}

.gcols3>.gcol2 .gcol-R {
	margin: 0 0 0 2.16%;
	width: 19%;
}

#main-banner {
	background-color: #4c1535;
	position: relative;
	z-index: 2;
	background: rgb(254, 255, 232);
	background: -moz-linear-gradient(top, rgb(248, 191, 198) 1000%,
		rgb(248, 191, 198) 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(254,
		255, 232, 1)), color-stop(100%, rgba(214, 219, 191, 1)));
	background: -webkit-linear-gradient(top, rgb(248, 191, 198) 1000%,
		rgb(248, 191, 198) 100%);
	ackground: linear-gradient(top, rgb(248, 191, 198) 1000%,
		rgb(248, 191, 198) 100%);
	margin: -20px;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

#main-banner .wrapper1200 {
	overflow: hidden;
}

#master .wrapper1200 {
	margin: 0 auto;
	max-width: 1070px;
	min-width: 751px;
	padding: 0 5px;
	position: relative;
	z-index: 5;
}

a {
	color: #00915c;
}

a {
	text-decoration: none;
	outline: none;
}

.item-L.item-01 .visual {
	display: block;
	position: absolute;
	top: 0;
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

#additionnal-nav {
	background-color: #fff;
	border: 1px solid #ccc;
	display: block;
	position: relative;
	width: 245px;
	z-index: 150;
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

#additionnal-nav .title {
	color: #666;
	font: normal 1.2em/45px "bebasneue", Impact, Charcoal, sans-serif;
	position: relative;
	padding-left: 20px;
}

#header-bg span {
	background: #F3FAD9;
	height: 31px;
	overflow: hidden;
	position: absolute;
	width: 100%;
}

nav ul,nav li {
	margin: 0;
	list-style: none;
	list-style-image: none;
}

#additionnal-nav ul li {
	background:
		url(C:/Users/Manpreet/workspace/springregister/WebContent/images/separator-02.gif)
		0 0 repeat-x transparent;
	color: #666;
	font: normal 0.8em/14px "gill-ss-std", Verdana, Geneva, sans-serif;
	padding: 8px 0;
	position: relative;
	text-transform: uppercase;
}

#additionnal-nav ul li a {
	display: block;
	color: #666;
	padding: 0 35px 0 20px;
	position: relative;
}

.item-L.item-01 .advertising-01 {
	margin: 20px 0 0 0;
	position: relative;
}

.item-L.item-01 .advertising-02 {
	right: 0;
	position: absolute;
	top: 39px;
}

.advertising {
	border: 1px solid #ccc;
	height: 184px;
	overflow: hidden;
	position: relative;
	width: 242px;
	z-index: 2;
}

.item-L.item-01 .advertising-03 {
	right: 0;
	position: absolute;
	bottom: 20px;
}

.advertising img {
	display: inline-block;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
}

#mainfooter {
	background: #fff;
	clear: both;
	min-height: 420px;
	padding: 0;
	width: 100%;
}

#mainfooter #tools {
	background:
		url(/resources/images/separator-02.gif)
		left bottom repeat-x transparent;
	height: 68px;
	overflow: hidden;
	position: relative;
	z-index: 5;
	padding: 10px;
}

.warranties {
	float: left;
	height: 0px;
}

.warranties ul {
	list-style: none;
}

.warranties ul li {
	background:
		url(/resources/images/separator-01.gif)
		right center no-repeat;
	display: inline-block;
	float: left;
	height: 68px;
	position: relative;
	text-align: center;
}

.warranties ul li:last-child {
	background: 0 none;
}

.warranties ul li .title {
	color: #8f8f8f;
	display: block;
	float: left;
	font: normal 1.0em/50px "gill-ss-std-bold", Verdana, Geneva, sans-serif;
	text-align: left;
	text-transform: uppercase;
}

.warranties ul li .subtitle {
	color: #8f8f8f;
	font: normal .7em/0.7em "gill-ss-std", Verdana, Geneva, sans-serif;
	left: -25px;
	position: absolute;
	text-align: left;
	top: 40px;
}

.warranties.row ul .delivery {
	background: 0 none;
}

.warranties ul .payment .title {
	padding: 0 15px 0 10px;
}

.warranties ul .returns .title {
	padding: 0 15px 0 10px;
}

.warranties ul .delivery .title {
	padding: 0 15px 0 12px;
	position: relative;
}

.de .warranties ul .delivery .title {
	line-height: 12px !important;
	margin-top: 11px !important;
	position: relative !important;
}

.de #maincontent .warranties ul .delivery .title {
	margin-top: 0 !important;
}

.de .warranties ul li .subtitle {
	top: 28px !important;
}

.warranties ul li .visual {
	float: left;
}

.warranties ul .payment .visual {
	background:
		url("/resources/images/sprites.png")
		-130px 0 no-repeat;
	display: block;
	float: left;
	height: 40px;
	margin: 13px 0 0 10px;
	width: 21px;
}

.warranties ul .returns .visual {
	background:
		url("/resources/images/sprites.png")
		-160px 0 no-repeat;
	display: block;
	height: 40px;
	margin: 15px 0 0 10px;
	width: 39px;
}

.warranties ul .delivery .visual {
	background:
		url("/resources/images/sprites.png")
		-200px 0 no-repeat;
	display: block;
	height: 45px;
	margin: 13px 0 0 8px;
	width: 55px;
}

.warranties ul li span em {
	color: #0b8765;
}

/* #mainfooter .extras {
	float: right;
	position: relative;
}

#mainfooter .social-networks {
	background:
		url(C:/Users/Manpreet/workspace/springregister/WebContent/images/separator-01.gif)
		right center no-repeat;
	color: #666;
	float: left;
	font: normal 1.0em "gill-ss-std", Verdana, Geneva, sans-serif;
	height: 48px;
	padding: 20px 10px 0 0;
}

#mainfooter .social-networks p {
	float: left;
	margin: 0 5px 0 0;
}

#mainfooter .social-networks ul {
	float: left;
	list-style: none;
}

.social-networks ul li {
	float: left;
	margin: 0 5px 0 0;
}

.social-networks ul li:last-child {
	margin: 0;
}

.social-networks ul li a {
	display: block;
	height: 28px;
	position: relative;
	text-indent: -9999em;
	width: 28px;
}

.social-networks ul .twitter a {
	width: 28px;
}

.social-networks ul .twitter a span {
	background:
		url("C:/Users/Manpreet/workspace/springregister/WebContent/images/sprites.png")
		-260px 0 no-repeat;
	height: 100%;
	left: 0;
	position: absolute;
	top: 1px;
	width: 100%;
}

.social-networks ul .facebook a {
	width: 28px;
}

.social-networks ul .facebook a span {
	background:
		url("C:/Users/Manpreet/workspace/springregister/WebContent/images/sprites.png")
		-288px 0 no-repeat;
	height: 100%;
	left: 0;
	position: absolute;
	top: 1px;
	width: 100%;
}

.social-networks ul .youtube a {
	height: 29px;
	width: 30px;
}

.social-networks ul .youtube a span {
	background:
		url("C:/Users/Manpreet/workspace/springregister/WebContent/images/sprites.png")
		-316px 0 no-repeat;
	height: 100%;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%;
} 
 */
#mainfooter .lang-menu {
	color: #666;
	float: right;
	font: normal 0.7em "gill-ss-std", Verdana, Geneva, sans-serif;
	padding: 22px 0 0 10px;
}

.customStyleSelectBox {
	background:
		url(/resources/images/ico_arrow-down_lang.jpg)
		right top no-repeat #4f4f4f;
	border: none;
	color: #fff;
	font-size: 12px;
	line-height: 25px;
	height: 25px;
	margin: 0 0 0 5px;
	padding: 0 25px 0 0;
	text-align: right;
}

#mainfooter .lang-menu select {
	margin: 0 0 0 5px;
	width: 165px;
	position: absolute;
	opacity: 0;
	font-size: 12px;
	height: 25px;
}

#mainfooter .lang-menu .dummy {
	display: inline-block;
	margin: 0 0 0 5px;
	position: relative;
	width: 165px;
	z-index: 100;
}

#mainfooter .lang-menu .dummy p {
	background-color: #4f4f4f;
	border: none;
	color: #fff;
	display: inline-block;
	height: 25px;
	font-size: 12px;
	line-height: 25px;
	height: 25px;
	margin: 0;
	padding: 0 25px 0 0;
	position: relative;
	text-align: right;
	width: 140px;
}

#mainfooter .lang-menu .dummy p .arrow {
	background:
		url("/resources/images/sprites.png")
		-20px -40px no-repeat;
	display: inline-block;
	height: 25px;
	right: 0;
	position: absolute;
	top: 0;
	width: 25px;
}

#mainfooter .lang-menu .dummy ul {
	background-color: #4f4f4f;
	display: none;
	height: 200px;
	left: 0;
	list-style: none;
	overflow-x: hidden;
	overflow-y: scroll;
	position: absolute;
	top: 25px;
	-webkit-overflow-scrolling: scroll;
	-webkit-overflow-scrolling: auto;
}

#mainfooter .lang-menu .dummy ul li {
	position: relative;
}

#mainfooter .lang-menu .dummy ul li a {
	color: #fff;
	display: block;
	height: 25px;
	line-height: 25px;
	padding: 0 5px 0 25px;
	text-align: right;
	width: 120px;
}

#mainfooter .lang-menu .dummy ul li:hover a {
	background-color: #fff;
	color: #4f4f4f;
}

#mainfooter .lang-menu .dummy .flag {
	display: block;
	height: 11px;
	left: 5px;
	position: absolute;
	top: 7px;
	width: 16px;
}

#mainfooter .lang-menu select {
	margin: 0 0 0 5px;
	width: 165px;
}

#mainfooter .lang-menu select option {
	background-color: #4f4f4f;
	color: #fff;
	text-indent: 20px;
	width: 140px;
}

#mainfooter .main-content {
	padding: 15px 0;
	margin: 0;
	overflow: hidden;
	position: relative;
	min-height: 300px;
}

#mainfooter .wrapper-01 {
	background:
		url(/resources/images/separator-02.gif)
		bottom left repeat-x;
	height: 254px;
	left: 0;
	overflow: hidden;
	padding: 0 0 0 298px;
	position: absolute;
	top: 15px;
	width: 100%;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-o-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

#mainfooter .ethics {
	height: 254px;
	left: 0;
	position: absolute;
	top: 15px;
	width: 288px;
	z-index: 2;
}

#mainfooter .ethics .visual {
	background:
		url(/resources/images/bottom_banner1.jpg)
		0 0 no-repeat;
	display: block;
	height: 254px;
	left: 0;
	position: absolute;
	top: 0;
	width: 288px;
}

#mainfooter .quicknav {
	background:
		url(/resources/images/separator-02.gif)
		bottom left repeat-x transparent;
	float: left;
	margin: 0;
	padding: 0 0 15px 0;
	position: relative;
	width: 100%;
}

#mainfooter .quicknav .container {
	overflow: hidden;
	margin: 0 288px;
	position: relative;
}

.quicknav .column {
	background:
		url(/resources/images/separator-03.png)
		top right no-repeat;
	float: left;
	margin: 0;
	min-height: 244px;
	padding: 0 18px;
}

.quicknav .column:last-child {
	background: 0 none;
}

.quicknav .column .title {
	color: #666;
	font: normal 1em/1em "bebasneue", Impact, Charcoal, sans-serif;
	margin: 0;
	padding: 0;
}

.quicknav .column ul {
	list-style: none;
	margin: 2px 0 5px 0;
}

.quicknav .column ul li {
	color: #666;
	font: normal 0.7em/0.7em "gill-ss-std", Verdana, Geneva, sans-serif;
	text-transform: uppercase;
}

.quicknav .column ul li a {
	color: #666;
	display: block;
	padding: 4px 0;
}

.quicknav .column ul li a:hover {
	color: #93be21;
}

#mainfooter .customer {
	background:
		url(/resources/images/separator-01.gif)
		top left repeat-y #fff;
	min-height: 254px;
	overflow: hidden;
	position: absolute;
	right: 0;
	top: 5px;
	margin: 0;
	font: 0.7em;
	padding: 0 10px 0 25px;
	width: 253px;
	z-index: 2;
}

/* #mainfooter .customer {
	background:
		url(C:/Users/Manpreet/workspace/springregister/WebContent/images/separator-01.gif)
		top left repeat-y #fff;
	overflow: hidden;
	position: absolute;
	right: 0;
	top: 15px;
	margin: 0;
	padding: 0 10px 0 25px;
	width: 253px;
	z-index: 2;
} */
#mainfooter .customer .title {
	color: #000;
	font: normal 1.4em/1em "bebasneue", Impact, Charcoal, sans-serif;
	margin: 0 0 4px 0;
	text-transform: uppercase;
}

#mainfooter .customer .title span {
	color: #7fb719;
}

#mainfooter .customer .category {
	color: #666;
	font: normal 2.0em/1em "bebasneue", Impact, Charcoal, sans-serif;
	margin: 0 0 4px 0;
	text-transform: uppercase;
}

#mainfooter .customer .infos {
	color: #666;
	font: normal 0.7em/0.7em "gill-ss-std", Verdana, Geneva, sans-serif;
	margin: 0 0 10px 0;
}

#mainfooter .customer .infos span {
	display: block;
}

#mainfooter .customer ul {
	background:
		url(/resources/images/separator-02.gif)
		0 0 repeat-x transparent;
	color: #666;
	font: normal 1.0em/0.7em "gill-ss-std", Verdana, Geneva, sans-serif;
	list-style: none;
	text-transform: uppercase;
}

#mainfooter .customer ul li {
	background:
		url(/resources/images/separator-02.gif)
		bottom left repeat-x transparent;
}

#mainfooter .customer ul li a {
	color: #515050;
	display: block;
	height: 20px;
	margin: 10px 0 0 5px;
	position: relative;
}

#mainfooter .customer ul li a:hover {
	color: #7FB719;
}

#mainfooter .customer ul li a span {
	background:
		url(/resources/images/sprites.png)
		-220px -60px no-repeat;
	display: inline-block;
	float: right;
	height: 9px;
	margin: 10px 0 0 5px;
	width: 5px;
}

#mainfooter .customer ul li a:hover span {
	background:
		url(/resources/images/sprites.png)
		-230px -60px no-repeat;
}

#mainfooter .customer .request_newsletter label {
	color: #515050;
	font: 0.7em/0.7em "bebasneue", Impact, Charcoal, sans-serif;
}

.request_newsletter input[type="submit"] {
	background:
		url(/resources/images/sprites.png)
		-40px -160px no-repeat;
	color: #fff;
	font: normal 1.2em/26px "gill-ss-std-bold", Verdana, Geneva, sans-serif;
	height: 26px;
	text-align: center;
	text-indent: -9999em;
	text-transform: uppercase;
	width: 31px;
}

#mainfooter .customer .request_newsletter .alternate {
	color: #515050;
	font: 0.7em/0.7em "bebasneue", Impact, Charcoal, sans-serif;
}

#mainfooter .customer .request_newsletter a {
	color: #515050;
	font-size: 0.4em;
	font-weight: 100;
}

#mainfooter .customer .request_newsletter a .arrow {
	background:
		url("/resources/images/sprites.png")
		no-repeat scroll -220px -60px transparent;
	display: inline-block;
	height: 9px;
	margin-left: 5px;
	position: relative;
	width: 2px;
}

#mainfooter .request_newsletter {
	padding: 0;
}

#mainfooter .customer .request_tracking label {
	color: #515050;
	font: 0.4em/0.7em "bebasneue", Impact, Charcoal, sans-serif;
}

#mainfooter .customer .request_tracking .alternate {
	color: #515050;
	font: 0.7em/0.7em "bebasneue", Impact, Charcoal, sans-serif;
}

#mainfooter .customer .request_tracking a {
	color: #515050;
	font-size: 0.5em;
	font-weight: 100;
}

#mainfooter .customer .request_tracking a .arrow {
	background:
		url("/resources/images/sprites.png")
		no-repeat scroll -220px -60px transparent;
	display: inline-block;
	height: 9px;
	margin-left: 5px;
	position: relative;
	width: 7px;
}

#mainfooter .request_tracking {
	padding: 0 0;
}

#mainfooter .disclaimer {
	clear: both;
	margin: 0 0 0 0;
	padding: 20px 0 40px 10px;
}

#mainfooter .disclaimer .copyright {
	color: #666;
	font: normal 0.7em/0.7em "bebasneue", Impact, Charcoal, sans-serif;
}

#mainfooter .disclaimer .registered {
	color: #666;
	font: normal 0.7em/0.7em "gill-ss-std", Verdana, Geneva, sans-serif;
}

#emptycart .leftcenter {
	width: 770px;
	position: relative;
	float: left;
	padding-bottom: 30px;
}

h1 {
	color: #3ba431;
	font-size: 36px;
	line-height: normal;
	padding-bottom: 25px;
	font-family: HelveticaNeueW01-Thin;
}

#emptycart.pageMessage {
	line-height: 20px;
	font-size: 13px;
	padding-bottom: 28px;
	color: black;
}

#emptycart.pageMessage p {
	margin-bottom: 12px;
}

#emptycart .greenLink {
	color: #3ba431;
	font-size: 13px;
	display: inline-block;
	padding-top: 1px;
}

#emptycart a.grayButton {
	color: white;
	text-transform: uppercase;
	background: #888888;
	color: #fff;
	font-size: 12px;
	font-weight: bold;
	border-radius: 3px;
	width: 155px;
	line-height: 28px;
	text-align: center;
	display: block;
	margin: 0;
}

item-L.item-04 {
	overflow: hidden;
	position: relative;
	width: 100%;
	
	
}

.item-L.item-04 header {
	display: block;
	padding: 0 0 80px 0;
	position: relative;
	top:50px;
}

.item-L.item-04 header hgroup {
	width: 50%;
}

.item-L.item-04 header .title {
	color: #7fb719;
	font: normal 3em "bebasneue", Impact, Charcoal, sans-serif;
	margin: 0 0 25px 0;
}

.item-L.item-04 header .subtitle {
	color: #424242;
	font: normal 1.2em/1em "gill-ss-std", Verdana, Geneva, sans-serif;
	margin: 0 0 0 0;
	text-transform: uppercase;
	width: 365px;
}

.item-L.item-04 header .subtitle span {
	font-family: "gill-ss-std-bold", Verdana, Geneva, sans-serif;
}

.item-L.item-04 header .visual {
	height: 100%;
	position: absolute;
	right: -400px;
	top: 0;
	width: 100%;
}

.category .item-L.item-04 .visual_subcat-01 {
	right: 100px;
}

.item-L.item-04 .visual_subcat-01 {
	float: right;
	bottom: 0;
	position: absolute;
	right: 30px;
	width: auto !important;
	max-width: 100%;
}

.category .catalog-01 {
	margin: 0 0 40px 0;
}

.category .catalog-01 ul {
	display: inline-block;
	*display: inline;
	list-style: none;
	width: 100%;
}

.category .catalog-01 .products-list>li {
	background:
		url(/resources/images/separator-04.gif)
		top right repeat-y;
	display: block;
	float: left; /*margin:45px 0 0 0;*/
	overflow: hidden;
	padding: 0 3%;
	position: relative;
	width: 29%;
}

/* .category .catalog-01 .products-list>li:nth-child(3n+1) {
	padding: 0 3% 0 0;
}

.category .catalog-01 .products-list>li:nth-child(3n+3) {
	background: 0 none;
	padding: 0 0 0 3%;
}

.subcategory #additionnal-nav,.category #additionnal-nav {
	margin: 0;;
} */

#additionnal-nav {
	background-color: #fff;
	margin:50px;
	border: 2px solid #ccc;
	display: block;
	position: relative;
	top:30px;
	width: 200px;
}


#additionnal-nav .title {
	color: #666;
	font: normal 1em "bebasneue", Impact, Charcoal, sans-serif;
	position: relative;
	padding-left: 40px;
}

.category .catalog-01 {
	margin: 0 0 40px 0;
}

.category .catalog-01 .products-list {
	background:
		url("/resources/images/separator-02.gif")
		top left repeat-x;
	padding: 15px 0 10px;
}

.category .catalog-01 ul {
	display: inline-block;
	list-style: none;
	width: 100%;
}

.category .item-L.item-04 .visual_subcat-01 {
	right: 100px;
}

.category .ad {
	display: block;
	margin: 10px 0 5px;
	width: 100%;
}

.category .catalog-01 .head {
	border: 1px solid #ccc;
	display: block;
	margin: 0 0 20px 0;
	overfow: hidden;
	position: relative;
	padding: 12px 15px;
}

.category .catalog-01 span.title {
	color: #7FB719;
	display: block;
	font: 3em/1em "bebasneue", Arial, Helvetica, sans-serif;
	margin: 0 0 10px;
	text-transform: uppercase;
}

.item-S.item-05 {
	position: relative;
	width: 100%;
}

.products-list .item-S.item-05 .wrapper {
	border: 0px none;
}


.item-S.item-05 .wrapper {
	border: 1px solid #c6c6c5;
	overflow: hidden;
	padding: 0 0 10px;
	position: relative;
}

.products-list .item-S.item-05 .wrapper .title {
	background: none;
	margin: 0;
	padding: 0 0 0 10px;
}

.item-S.item-05 .wrapper .title {
	background:
		url(/resources/images/bg_header.jpg)
		0 0 no-repeat;
	color: #808080;
	font: normal 1em "bebasneue", Arial, Helvetica, sans-serif;
	display: block;
	margin: 0 0 10px 0;
	padding: 0 20px;
}

.products-list .item-S.item-05 .wrapper .title a {
	color: #666;
	line-height: 101%;
	display: block;
}

.item-S.item-05 .wrapper .container {
	background:
		url("/resources/images/separator-02.gif")
		repeat-x scroll 0 0 transparent;
	overflow: hidden;
	position: relative;
}

.item-S.item-05 .wrapper .title a {
	color: #fff;
}

.products-list .item-S.item-05 .wrapper .content {
	padding: 0 20px 10px;
}

.item-S.item-05 .wrapper .content {
	overflow: hidden;
	padding: 0 20px 10px;
	position: relative;
}

#maincontent img {
	display: block;
}

.item-S.item-05 .visual {
	display: block;
	margin: 0;
	padding: 0;
	width: 100%;
}

.products-list .item-S.item-05 .button-01 {
	bottom: 0;
	float: right;
	margin: 10px 0 0;
	position: relative;
	right: 0;
}

.item-S.item-05 .button-01 {
	bottom: 10px;
	position: absolute;
	right: 20px;
}

.item-S.item-05 .note {
	margin: 0 0 5px 0;
	overflow: hidden; /*width:90px;*/
}

.item-S.item-05 .note .detail {
	color: #333333;
	display: block;
	float: left;
	font: 1.2em/22px "gill-ss-std", Verdana, Geneva, sans-serif;
}

.item-S.item-05 .note .rating-stars {
	float: left;
	margin: 0 5px 0 0;
	width: 115px !important;
}

.products-list .item-S.item-05 .button-01 {
	bottom: 0;
	float: right;
	margin: 10px 0 0;
	position: relative;
	right: 0;
}

.item-S.item-01 .infos {
	float: left;
	margin: 0;
	padding: 0 0 10px 2.025%;
	width: 50%;
}

.item-S.item-01 .infos .name {
	color: #666;
	display: block;
	font: normal 1.4em/1.2em "gill-ss-std", Verdana, Geneva, sans-serif;
	margin-bottom: 5px;
	min-height: 67px;
	text-transform: uppercase;
	width: 95%;
}

.item-S.item-01 .infos .name a {
	color: #666;
}

.item-S.item-01 .infos .name a span {
	display: block;
	font-size: .8em;
	line-height: 14px;
}

.item-S.item-01 .infos .name a:hover {
	color: #7fb719;
}

.item-S.item-01 .infos .note {
	margin: 0 0 5px 0;
	overflow: hidden; /*width:90px;*/
}

.item-S.item-01 .infos .note .detail {
	color: #333333;
	display: block;
	float: left;
	font: 1.2em/22px "gill-ss-std", Verdana, Geneva, sans-serif;
}

.item-S.item-01 .infos .note .rating-stars {
	float: left;
	margin: 0 5px 0 0;
	width: 115px !important;
}

.item-S.item-05 .description {
	color: #666;
	display: block;
	font: normal 1.4em/1.2em "gill-ss-std", Verdana, Geneva, sans-serif;
	margin-top: 10px;
	width: 95%;
}

.button-01 {
	background-color: #7fb719;
	color: #FFFFFF;
	display: inline-block;
	font: 16px/35px "gill-ss-std", Verdana, Geneva, sans-serif;
	margin: 0;
	padding: 0 10px;
	position: relative;
	text-align: center;
	text-transform: uppercase;
}

.button-01 span {
	background:
		url(/resources/images/sprites.png)
		-210px -40px no-repeat;
	display: inline-block;
	height: 14px;
	margin: 0 0 0 10px;
	position: relative;
	top: 1px;
	width: 9px;
}

/* .category .catalog-01 .products-list>li:nth-child(3n+2) {
	
}

.category .catalog-01 .products-list>li:first-child,.catalog-01 .products-list>li:nth-child(2),.catalog-01 .products-list>li:nth-child(3)
	{
	margin: 0 0 0 0;
}
 */
.button-01:hover {
	text-decoration: underline;
}

.category .products-list .separator {
	
}

.advert-dummy {
	overflow: hidden;
	padding: 20px 0 0;
	position: relative;
}

.advert-dummy ul {
	list-style: none;
}

.advert-dummy ul li { /*display:inline-block;*/
	display: block;
	float: left;
	width: 33%;
}

.advert-dummy ul li .advertising {
	margin: 0 !important;
}

.advert-dummy ul li:nth-child(3n+1) .advertising {
	float: left;
}

.advert-dummy ul li:nth-child(3n+2) .advertising {
	margin: 0 auto !important;
}

.advert-dummy ul li:nth-child(3n+3) .advertising {
	float: right;
}

.container {
	
}

.row {
	overflow: hidden;
	width: 100%;
	margin: 0 0 10px 0;
}

.row div:last-child {
	margin-right: 0 !important;
}

.onecol,.twocol,.threecol,.fourcol,.fivecol,.sixcol,.sevencol,.eightcol,.ninecol,.tencol,.elevencol
	{
	float: left;
	margin-right: 0.833%;
	min-height: 1px;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.row .fourcol {
	width: 32.75%;
}

.row .sixcol {
	width: 49.583%;
}

.row .eightcol {
	width: 66.333%;
}

.row .twelvecol {
	float: left;
	width: 100%;
}
</style>