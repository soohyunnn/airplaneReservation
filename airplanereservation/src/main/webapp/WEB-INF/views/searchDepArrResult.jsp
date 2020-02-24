<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="searchDepArrResult" class="departure_list_wrap" style="display:none;">
		<table class="table_list">
			<caption style="text-indent:-10000px; position: absolute; top: 0; left: 0; ">
				<strong>항공편 상세정보 표</strong>
				<p>편명,상태,출발,도착,상세보기로 구성된 표입니다.</p>
			</caption>
			<colgroup>
				<col style="width:130px">
				<col style="width:160px">
				<col style="width:370px" span="2">
				<col style="width:150px">
			</colgroup>
			<thead>
				<tr style="height: 30px;">
					<th scope="col">편명</th>
					<th scope="col">상태</th>
					<th scope="col">출발</th>
					<th scope="col">도착</th>
					<th scope="col">상세보기</th>
				</tr>
			</thead>
			<tbody>
				
				<tr class="status_scd">
					<th scope="row" rowspan="2">
						<p class="flt_num" id="flightID_1" value="1">OZ 8901 </p>
					</th>
					<td rowspan="2">
						
						<div class="flt_status ico6">
							<p>도착완료</p>
						</div>		
						
					</td>
					<td>
						
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								06:05
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								07:10<span class="nextday"></span>
							</dd>
						</dl>
					</td>
					<td rowspan="2">
						<button type="button" class="btn_XS white" onclick="javascript:action_logging({pagecode:'01_FLT_03'});" id="goScheduleInfo_1">상세보기</button>
					</td>
				</tr>
				<tr class="status_end">
					<td class="bor_left">
						

						<dl class="sc_info">
							<dt class="tit">
								출발완료
							</dt>
							<dd class="time">
								06:06
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">
								도착완료

							</dt>
							<dd class="time">
								07:03<span class="nextday"></span>
								
							</dd>
						</dl>
					</td>
				</tr>
				
				<tr class="status_scd">
					<th scope="row" rowspan="2">
						<p class="flt_num" id="flightID_2" value="2">OZ 8903 </p>
					</th>
					<td rowspan="2">
						
						<div class="flt_status ico6">
							<p>도착완료</p>
						</div>		
						
					</td>
					<td>
						
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								06:10
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								07:20<span class="nextday"></span>
							</dd>
						</dl>
					</td>
					<td rowspan="2">
						<button type="button" class="btn_XS white" onclick="javascript:action_logging({pagecode:'01_FLT_03'});" id="goScheduleInfo_2">상세보기</button>
					</td>
				</tr>
				<tr class="status_end">
					<td class="bor_left">
						

						<dl class="sc_info">
							<dt class="tit">
								출발완료
							</dt>
							<dd class="time">
								06:14
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">
								도착완료

							</dt>
							<dd class="time">
								07:16<span class="nextday"></span>
								
							</dd>
						</dl>
					</td>
				</tr>
				
				<tr class="status_scd">
					<th scope="row" rowspan="2">
						<p class="flt_num" id="flightID_3" value="3">OZ 8905 </p>
					</th>
					<td rowspan="2">
						
						<div class="flt_status ico6">
							<p>도착완료</p>
						</div>		
						
					</td>
					<td>
						
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								06:20
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								07:30<span class="nextday"></span>
							</dd>
						</dl>
					</td>
					<td rowspan="2">
						<button type="button" class="btn_XS white" onclick="javascript:action_logging({pagecode:'01_FLT_03'});" id="goScheduleInfo_3">상세보기</button>
					</td>
				</tr>
				<tr class="status_end">
					<td class="bor_left">
						

						<dl class="sc_info">
							<dt class="tit">
								출발완료
							</dt>
							<dd class="time">
								06:20
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">
								도착완료

							</dt>
							<dd class="time">
								07:18<span class="nextday"></span>
								
							</dd>
						</dl>
					</td>
				</tr>
				
				<tr class="status_scd">
					<th scope="row" rowspan="2">
						<p class="flt_num" id="flightID_4" value="4">OZ 8907 </p>
					</th>
					<td rowspan="2">
						
						<div class="flt_status ico6">
							<p>도착완료</p>
						</div>		
						
					</td>
					<td>
						
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								06:50
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								08:00<span class="nextday"></span>
							</dd>
						</dl>
					</td>
					<td rowspan="2">
						<button type="button" class="btn_XS white" onclick="javascript:action_logging({pagecode:'01_FLT_03'});" id="goScheduleInfo_4">상세보기</button>
					</td>
				</tr>
				<tr class="status_end">
					<td class="bor_left">
						

						<dl class="sc_info">
							<dt class="tit">
								출발완료
							</dt>
							<dd class="time">
								06:54
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">
								도착완료

							</dt>
							<dd class="time">
								08:07<span class="nextday"></span>
								
							</dd>
						</dl>
					</td>
				</tr>
				
				<tr class="status_scd">
					<th scope="row" rowspan="2">
						<p class="flt_num" id="flightID_23" value="23">OZ 8993 </p>
					</th>
					<td rowspan="2">
						
						<div class="flt_status ico1">
							<p>출발 전</p>
						</div>
						
					</td>
					<td>
						
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								19:15
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								20:25<span class="nextday"></span>
							</dd>
						</dl>
					</td>
					<td rowspan="2">
						<button type="button" class="btn_XS white" onclick="javascript:action_logging({pagecode:'01_FLT_03'});" id="goScheduleInfo_23">상세보기</button>
					</td>
				</tr>
				<tr class="status_end">
					<td class="bor_left">
						

						<dl class="sc_info">
							<dt class="tit">
								출발 예정
							</dt>
							<dd class="time">
								19:15
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">
								도착 예정

							</dt>
							<dd class="time">
								20:25<span class="nextday"></span>
								
							</dd>
						</dl>
					</td>
				</tr>
				
				<tr class="status_scd">
					<th scope="row" rowspan="2">
						<p class="flt_num" id="flightID_24" value="24">OZ 8995 </p>
					</th>
					<td rowspan="2">
						
						<div class="flt_status ico1">
							<p>출발 전</p>
						</div>
						
					</td>
					<td>
						
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								20:10
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								21:20<span class="nextday"></span>
							</dd>
						</dl>
					</td>
					<td rowspan="2">
						<button type="button" class="btn_XS white" onclick="javascript:action_logging({pagecode:'01_FLT_03'});" id="goScheduleInfo_24">상세보기</button>
					</td>
				</tr>
				<tr class="status_end">
					<td class="bor_left">
						

						<dl class="sc_info">
							<dt class="tit">
								출발 예정
							</dt>
							<dd class="time">
								20:10
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">
								도착 예정

							</dt>
							<dd class="time">
								21:20<span class="nextday"></span>
								
							</dd>
						</dl>
					</td>
				</tr>
				
				<tr class="status_scd">
					<th scope="row" rowspan="2">
						<p class="flt_num" id="flightID_25" value="25">OZ 8997 </p>
					</th>
					<td rowspan="2">
						
						<div class="flt_status ico1">
							<p>출발 전</p>
						</div>
						
					</td>
					<td>
						
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								20:50
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">스케줄</dt>
							<dd class="time">
								22:00<span class="nextday"></span>
							</dd>
						</dl>
					</td>
					<td rowspan="2">
						<button type="button" class="btn_XS white" onclick="javascript:action_logging({pagecode:'01_FLT_03'});" id="goScheduleInfo_25">상세보기</button>
					</td>
				</tr>
				<tr class="status_end">
					<td class="bor_left">
						

						<dl class="sc_info">
							<dt class="tit">
								출발 예정
							</dt>
							<dd class="time">
								20:50
							</dd>
						</dl>
					</td>
					<td>
						<dl class="sc_info">
							<dt class="tit">
								도착 예정

							</dt>
							<dd class="time">
								22:00<span class="nextday"></span>
								
							</dd>
						</dl>
					</td>
				</tr>
				
			</tbody>
		</table>
		
		<form id="frmFMCFlightDepArr" name="frmFMCFlightDepArr" method="post" target="_self">
			<input type="hidden" id="main" name="main" value="Y">
			<input type="hidden" id="searchType" name="searchType" value="line">
			<input type="hidden" id="departureDate" name="departureDate" value="20200218">
			<input type="hidden" id="idCount" name="idCount">

			<input type="hidden" id="departureAirport" name="departureAirport" value="GMP">
			<input type="hidden" id="arrivalAirport" name="arrivalAirport" value="CJU">
			
		</form></div>