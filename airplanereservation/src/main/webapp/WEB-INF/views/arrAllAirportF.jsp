<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="shadow_layer case2 select_airport" id="arrAllAirportF"
										name="allAirportF" style="display: block; display: none; width: 1200px; left: 18.5%; top: 336px;" clicklist="arrAllAirportF">
										<div class="inner">
											<h4 class="hidden">공항 선택</h4>
											<h5 class="hidden">국제선</h5>
											<div class="flights_list national">
												<div class="list_nation" style="width: 282px;" name="list_nation">
													<ul style="list-style:none;">
														<li class="active"><a href="#none" onclick="javascript:clickArea(this);" title="선택됨">한국</a></li>
														<li><a href="#none" onclick="javascript:clickArea(this);">동북아시아</a></li>
														<li><a href="#none" onclick="javascript:clickArea(this);">동남아시아</a></li>
														<li><a href="#none" onclick="javascript:clickArea(this);">미주(미국/캐나다/중남미)</a></li>
														<li><a href="#none" onclick="javascript:clickArea(this);">유럽</a></li>
														<li><a href="#none" onclick="javascript:clickArea(this);">대양주/사이판/팔라우</a></li>
														<li><a href="#none" onclick="javascript:clickArea(this);">몽골/중앙아시아</a></li>
													</ul>
													<div></div>
												</div>
												<div class="list_airport">
													<div class="national_listbox  active" name="national_listbox">
														<ul class="city_list" area="KR" mgtarea="KR">
															<li area="KR" mgtarea="KR" city="SEL" cityname="서울" direct=""
																airportname="서울 / 김포" airport="GMP"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">서울 / 김포</span><span class="abbr">GMP</span></a></li>
															<li area="KR" mgtarea="KR" city="SEL" cityname="서울" direct=""
																airportname="서울 / 인천" airport="ICN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">서울 / 인천</span><span class="abbr">ICN</span></a></li>
															<li area="KR" mgtarea="KR" city="PUS" cityname="부산" direct=""
																airportname="부산/김해" airport="PUS"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">부산/김해</span><span class="abbr">PUS</span></a></li>
															<li area="KR" mgtarea="KR" city="CJJ" cityname="청주" direct=""
																airportname="청주" airport="CJJ"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">청주</span><span class="abbr">CJJ</span></a></li>
															<li area="KR" mgtarea="KR" city="MWX" cityname="무안" direct=""
																airportname="무안" airport="MWX"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">무안</span><span class="abbr">MWX</span></a></li>
															<li area="KR" mgtarea="KR" city="HIN" cityname="진주" direct=""
																airportname="진주/사천" airport="HIN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">진주/사천</span><span class="abbr">HIN</span></a></li>
															<li area="KR" mgtarea="KR" city="RSU" cityname="여수" direct=""
																airportname="여수" airport="RSU"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">여수</span><span class="abbr">RSU</span></a></li>
															<li area="KR" mgtarea="KR" city="KWJ" cityname="광주" direct=""
																airportname="광주" airport="KWJ"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">광주</span><span class="abbr">KWJ</span></a></li>
															<li area="KR" mgtarea="KR" city="CJU" cityname="제주" direct=""
																airportname="제주" airport="CJU"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">제주</span><span class="abbr">CJU</span></a></li>
															<li area="KR" mgtarea="KR" city="TAE" cityname="대구" direct=""
																airportname="대구" airport="TAE"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">대구</span><span class="abbr">TAE</span></a></li>
														</ul>
													</div>
													<div class="national_listbox " name="national_listbox">
														<ul class="city_list" area="EC" mgtarea="TW">
															<li area="EC" mgtarea="TW" city="KHH" cityname="가오슝" direct=""
																airportname="가오슝[高雄]" airport="KHH"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">가오슝[高雄]</span><span class="abbr">KHH</span></a></li>
															<li area="EC" mgtarea="CN" city="CAN" cityname="광저우[廣州]"
																direct="" airportname="광저우[廣州]" airport="CAN"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">광저우[廣州]</span><span class="abbr">CAN</span></a></li>
															<li area="EC" mgtarea="CN" city="KWL" cityname="구이린[桂林]"
																direct="" airportname="구이린[桂林]" airport="KWL"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">구이린[桂林]</span><span class="abbr">KWL</span></a></li>
															<li area="EC" mgtarea="JP" city="NGO" cityname="나고야" direct=""
																airportname="나고야" airport="NGO"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">나고야</span><span class="abbr">NGO</span></a></li>
															<li area="EC" mgtarea="CN" city="NKG" cityname="난징[南京]" direct=""
																airportname="난징[南京]" airport="NKG"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">난징[南京]</span><span class="abbr">NKG</span></a></li>
															<li area="EC" mgtarea="CN" city="DLC" cityname="다롄[大連]" direct=""
																airportname="다롄[大連]" airport="DLC"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">다롄[大連]</span><span class="abbr">DLC</span></a></li>
															<li area="EC" mgtarea="JP" city="TYO" cityname="도쿄" direct=""
																airportname="도쿄 / 나리타" airport="NRT"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">도쿄 / 나리타</span><span class="abbr">NRT</span></a></li>
															<li area="EC" mgtarea="JP" city="TYO" cityname="도쿄" direct=""
																airportname="도쿄 / 하네다" airport="HND"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">도쿄 / 하네다</span><span class="abbr">HND</span></a></li>
															<li area="EC" mgtarea="JP" city="KMI" cityname="미야자키" direct=""
																airportname="미야자키" airport="KMI"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">미야자키</span><span class="abbr">KMI</span></a></li>
															<li area="EC" mgtarea="CN" city="BJS" cityname="베이징[北京]"
																direct="" airportname="베이징[北京]" airport="PEK"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">베이징[北京]</span><span class="abbr">PEK</span></a></li>
															<li area="EC" mgtarea="JP" city="SPK" cityname="삿포로" direct=""
																airportname="삿포로" airport="CTS"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">삿포로</span><span class="abbr">CTS</span></a></li>
															<li area="EC" mgtarea="CN" city="SHA" cityname="상하이[上海]"
																direct="" airportname="상하이[上海] / 푸동" airport="PVG"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">상하이[上海] / 푸동</span><span class="abbr">PVG</span></a></li>
															<li area="EC" mgtarea="CN" city="SHA" cityname="상하이[上海]"
																direct="" airportname="상하이[上海] / 홍차오" airport="SHA"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">상하이[上海] / 홍차오</span><span class="abbr">SHA</span></a></li>
															<li area="EC" mgtarea="CN" city="SHE" cityname="선양[瀋陽]" direct=""
																airportname="선양[瀋陽]" airport="SHE"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">선양[瀋陽]</span><span class="abbr">SHE</span></a></li>
															<li area="EC" mgtarea="CN" city="SZX" cityname="선전[深圳]" direct=""
																airportname="선전[深圳]" airport="SZX"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">선전[深圳]</span><span class="abbr">SZX</span></a></li>
															<li area="EC" mgtarea="JP" city="SDJ" cityname="센다이" direct=""
																airportname="센다이" airport="SDJ"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">센다이</span><span class="abbr">SDJ</span></a></li>
															<li area="EC" mgtarea="CN" city="SIA" cityname="시안[西安]" direct=""
																airportname="시안[西安]" airport="XIY"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">시안[西安]</span><span class="abbr">XIY</span></a></li>
															<li area="EC" mgtarea="CN" city="YNJ" cityname="옌지[延吉]" direct=""
																airportname="옌지[延吉]" airport="YNJ"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">옌지[延吉]</span><span class="abbr">YNJ</span></a></li>
															<li area="EC" mgtarea="CN" city="YNZ" cityname="옌청[盐城]" direct=""
																airportname="옌청[盐城]" airport="YNZ"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">옌청[盐城]</span><span class="abbr">YNZ</span></a></li>
															<li area="EC" mgtarea="CN" city="YNT" cityname="옌타이[煙臺]"
																direct="" airportname="옌타이[煙臺]" airport="YNT"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">옌타이[煙臺]</span><span class="abbr">YNT</span></a></li>
															<li area="EC" mgtarea="JP" city="OSA" cityname="오사카" direct=""
																airportname="오사카 / 간사이" airport="KIX"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">오사카 / 간사이</span><span class="abbr">KIX</span></a></li>
															<li area="EC" mgtarea="JP" city="OKA" cityname="오키나와" direct=""
																airportname="오키나와" airport="OKA"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">오키나와</span><span class="abbr">OKA</span></a></li>
															<li area="EC" mgtarea="CN" city="WEH" cityname="웨이하이[威海]"
																direct="" airportname="웨이하이[威海]" airport="WEH"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">웨이하이[威海]</span><span class="abbr">WEH</span></a></li>
															<li area="EC" mgtarea="CN" city="CSX" cityname="창사[長沙]" direct=""
																airportname="창사[長沙]" airport="CSX"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">창사[長沙]</span><span class="abbr">CSX</span></a></li>
															<li area="EC" mgtarea="CN" city="CGQ" cityname="창춘[長春]" direct=""
																airportname="창춘[長春]" airport="CGQ"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">창춘[長春]</span><span class="abbr">CGQ</span></a></li>
															<li area="EC" mgtarea="CN" city="CTU" cityname="청두[成都]" direct=""
																airportname="청두[成都]" airport="CTU"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">청두[成都]</span><span class="abbr">CTU</span></a></li>
															<li area="EC" mgtarea="CN" city="CKG" cityname="충칭[重慶]" direct=""
																airportname="충칭[重慶]" airport="CKG"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">충칭[重慶]</span><span class="abbr">CKG</span></a></li>
															<li area="EC" mgtarea="CN" city="TAO" cityname="칭다오[靑島]"
																direct="" airportname="칭다오[靑島]" airport="TAO"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">칭다오[靑島]</span><span class="abbr">TAO</span></a></li>
															<li area="EC" mgtarea="TW" city="TPE" cityname="타이베이[台北]"
																direct="" airportname="타이베이[台北]" airport="TPE"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">타이베이[台北]</span><span class="abbr">TPE</span></a></li>
															<li area="EC" mgtarea="TW" city="RMQ" cityname="타이중" direct=""
																airportname="타이중[台中]" airport="RMQ"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">타이중[台中]</span><span class="abbr">RMQ</span></a></li>
															<li area="EC" mgtarea="CN" city="TSN" cityname="톈진[天津]" direct=""
																airportname="톈진[天津]" airport="TSN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">톈진[天津]</span><span class="abbr">TSN</span></a></li>
															<li area="EC" mgtarea="CN" city="HRB" cityname="하얼빈[哈爾濱]"
																direct="" airportname="하얼빈[哈爾濱]" airport="HRB"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">하얼빈[哈爾濱]</span><span class="abbr">HRB</span></a></li>
															<li area="EC" mgtarea="CN" city="HGH" cityname="항저우[杭州]"
																direct="" airportname="항저우[杭州]" airport="HGH"><a
																href="#none" onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">항저우[杭州]</span><span class="abbr">HGH</span></a></li>
															<li area="EC" mgtarea="TW" city="HKG" cityname="홍콩[香港]" direct=""
																airportname="홍콩[香港]" airport="HKG"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">홍콩[香港]</span><span class="abbr">HKG</span></a></li>
															<li area="EC" mgtarea="JP" city="FUK" cityname="후쿠오카" direct=""
																airportname="후쿠오카" airport="FUK"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">후쿠오카</span><span class="abbr">FUK</span></a></li>
														</ul>
													</div>
													<div class="national_listbox " name="national_listbox">
														<ul class="city_list" area="EA" mgtarea="EA">
															<li area="EA" mgtarea="EA" city="DAD" cityname="다낭" direct=""
																airportname="다낭" airport="DAD"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">다낭</span><span class="abbr">DAD</span></a></li>
															<li area="EA" mgtarea="EA" city="MNL" cityname="마닐라" direct=""
																airportname="마닐라" airport="MNL"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">마닐라</span><span class="abbr">MNL</span></a></li>
															<li area="EA" mgtarea="EA" city="BKK" cityname="방콕" direct=""
																airportname="방콕" airport="BKK"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">방콕</span><span class="abbr">BKK</span></a></li>
															<li area="EA" mgtarea="EA" city="CEB" cityname="세부" direct=""
																airportname="세부" airport="CEB"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">세부</span><span class="abbr">CEB</span></a></li>
															<li area="EA" mgtarea="EA" city="SIN" cityname="싱가포르" direct=""
																airportname="싱가포르" airport="SIN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">싱가포르</span><span class="abbr">SIN</span></a></li>
															<li area="EA" mgtarea="EA" city="JKT" cityname="자카르타" direct=""
																airportname="자카르타" airport="CGK"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">자카르타</span><span class="abbr">CGK</span></a></li>
															<li area="EA" mgtarea="EA" city="CRK" cityname="클락" direct=""
																airportname="클락 / 앙헬레스" airport="CRK"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">클락 / 앙헬레스</span><span class="abbr">CRK</span></a></li>
															<li area="EA" mgtarea="EA" city="HKT" cityname="푸껫" direct=""
																airportname="푸껫" airport="HKT"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">푸껫</span><span class="abbr">HKT</span></a></li>
															<li area="EA" mgtarea="EA" city="PQC" cityname="푸꾸옥" direct=""
																airportname="푸꾸옥" airport="PQC"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">푸꾸옥</span><span class="abbr">PQC</span></a></li>
															<li area="EA" mgtarea="EA" city="PNH" cityname="프놈펜" direct=""
																airportname="프놈펜" airport="PNH"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">프놈펜</span><span class="abbr">PNH</span></a></li>
															<li area="EA" mgtarea="EA" city="HAN" cityname="하노이" direct=""
																airportname="하노이" airport="HAN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">하노이</span><span class="abbr">HAN</span></a></li>
															<li area="EA" mgtarea="EA" city="SGN" cityname="호찌민" direct=""
																airportname="호찌민" airport="SGN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">호찌민</span><span class="abbr">SGN</span></a></li>
															<li area="EA" mgtarea="EA" city="CXR" cityname="나트랑" direct=""
																airportname="나트랑" airport="CXR"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">나트랑</span><span class="abbr">CXR</span></a></li>
														</ul>
													</div>
													<div class="national_listbox " name="national_listbox">
														<ul class="city_list" area="US" mgtarea="US">
															<li area="US" mgtarea="US" city="NYC" cityname="뉴욕" direct=""
																airportname="뉴욕 / 존 F 케네디" airport="JFK"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">뉴욕 / 존 F 케네디, <em>NY</em></span><span
																	class="abbr">JFK</span></a></li>
															<li area="US" mgtarea="US" city="LAX" cityname="로스앤젤레스" direct=""
																airportname="로스앤젤레스" airport="LAX"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">로스앤젤레스, <em>CA</em></span><span class="abbr">LAX</span></a></li>
															<li area="US" mgtarea="US" city="SFO" cityname="샌프란시스코" direct=""
																airportname="샌프란시스코" airport="SFO"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">샌프란시스코, <em>CA</em></span><span class="abbr">SFO</span></a></li>
															<li area="US" mgtarea="US" city="SEA" cityname="시애틀" direct=""
																airportname="시애틀" airport="SEA"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">시애틀, <em>WA</em></span><span class="abbr">SEA</span></a></li>
															<li area="US" mgtarea="US" city="HNL" cityname="호놀룰루" direct=""
																airportname="호놀룰루" airport="HNL"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">호놀룰루, <em>HI</em></span><span class="abbr">HNL</span></a></li>
														</ul>
													</div>
													<div class="national_listbox " name="national_listbox">
														<ul class="city_list" area="EU" mgtarea="EU">
															<li area="EU" mgtarea="EU" city="BCN" cityname="바르셀로나" direct=""
																airportname="바르셀로나" airport="BCN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">바르셀로나</span><span class="abbr">BCN</span></a></li>
															<li area="EU" mgtarea="EU" city="VCE" cityname="베네치아" direct=""
																airportname="베네치아" airport="VCE"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">베네치아</span><span class="abbr">VCE</span></a></li>
															<li area="EU" mgtarea="EU" city="FRA" cityname="프랑크푸르트" direct=""
																airportname="프랑크푸르트" airport="FRA"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">프랑크푸르트</span><span class="abbr">FRA</span></a></li>
															<li area="EU" mgtarea="EU" city="PAR" cityname="파리" direct=""
																airportname="파리 / 샤를 드 골" airport="CDG"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">파리 / 샤를 드 골</span><span class="abbr">CDG</span></a></li>
															<li area="EU" mgtarea="EU" city="ROM" cityname="로마" direct=""
																airportname="로마 / 다빈치" airport="FCO"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">로마 / 다빈치</span><span class="abbr">FCO</span></a></li>
															<li area="EU" mgtarea="EU" city="LON" cityname="런던" direct=""
																airportname="런던 / 히드로" airport="LHR"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">런던 / 히드로</span><span class="abbr">LHR</span></a></li>
															<li area="EU" mgtarea="EU" city="IST" cityname="이스탄불" direct=""
																airportname="이스탄불 " airport="IST"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">이스탄불 </span><span class="abbr">IST</span></a></li>
															<li area="EU" mgtarea="EU" city="LIS" cityname="리스본" direct=""
																airportname="리스본" airport="LIS"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">리스본</span><span class="abbr">LIS</span></a></li>
														</ul>
													</div>
													<div class="national_listbox " name="national_listbox">
														<ul class="city_list" area="AU" mgtarea="AU">
															<li area="AU" mgtarea="AU" city="MEL" cityname="멜버른" direct=""
																airportname="멜버른" airport="MEL"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">멜버른</span><span class="abbr">MEL</span></a></li>
															<li area="AU" mgtarea="MP" city="ROR" cityname="팔라우" direct=""
																airportname="팔라우" airport="ROR"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">팔라우</span><span class="abbr">ROR</span></a></li>
															<li area="AU" mgtarea="MP" city="SPN" cityname="사이판" direct=""
																airportname="사이판" airport="SPN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">사이판</span><span class="abbr">SPN</span></a></li>
															<li area="AU" mgtarea="AU" city="SYD" cityname="시드니" direct=""
																airportname="시드니" airport="SYD"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">시드니</span><span class="abbr">SYD</span></a></li>
														</ul>
													</div>
													<div class="national_listbox " name="national_listbox">
														<ul class="city_list" area="RU" mgtarea="RU">
															<li area="RU" mgtarea="RU" city="ALA" cityname="알마티" direct=""
																airportname="알마티" airport="ALA"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">알마티</span><span class="abbr">ALA</span></a></li>
															<li area="RU" mgtarea="RU" city="TAS" cityname="타슈켄트" direct=""
																airportname="타슈켄트" airport="TAS"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">타슈켄트</span><span class="abbr">TAS</span></a></li>
															<li area="RU" mgtarea="RU" city="ULN" cityname="울란바타르" direct=""
																airportname="울란바타르" airport="ULN"><a href="#none"
																onclick="javascript:setAirportData(this);" title=""><span
																	class="cname">울란바타르</span><span class="abbr">ULN</span></a></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="recent_search_wrap">
												<h4>최근 검색</h4>
												<div class="recent_srch_box" name="recent_srch_box">
													<ul>
														<li class="return"
															val="KR,서울 / 김포,GMP,SEL,서울-KR,제주,CJU,CJU,제주,undefined-202002180000,undefined,undefined,undefined,undefined"
															data-itinerary="GMP-CJU"><a href="#none"><span>서울
																	/ 김포<var>GMP</var>
															</span><span>제주<var>CJU</var></span></a>
														<button type="button" class="btn_detlete" name="btn_delete"
																onclick="javascript:deleteSearchLatelyData(this, 'searchLatelyDatasArrDep_KRKO', 'GMP-CJU', 'dep');">
																<span class="hidden">삭제</span>
															</button></li>
													</ul>
												</div>
												<div class="btn_area">
													<button type="button" class="btn_M gray"
														onclick="javascript:clickNextStep('allAirportF', 'F');">다음</button>
												</div>
											</div>
										</div>
										<a href="javascript:hideAirportLayer();" class="layer_close"><img src="/resources/images/main/xicon.png" class="" alt="닫기">
										</a>
									</div>