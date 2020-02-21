<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">����� ���� > ���೻��</h1>
	</div>

	<!-- Content Row -->
	<div style="width: 91%; margin: 0 auto;">
				<form  id="tableForm" name="tableForm" method="post" style="margin: 10px;">

					<input type="hidden" name="pageNo" id="pageNo">
					
					<div style="float:left">
					
						<select class="form-control form-control-sm" name="search" id="search">
							<option value="Everything">��ü</option>
							<option value="NAME">�̸�</option>
							<option value="DATE">��¥</option>
							<option value="AIRNAME">�װ����</option>
						</select>
					</div>
					<div style="float:left; padding-left:5px;"  >
					<select class="form-control form-control-sm" name="searchCount" id="searchCount">
							<option value="5">5 ����</option>
							<option value="10">10 ����</option>
							<option value="15">15 ����</option>
						</select>
					</div>
					<div style="padding-right: 10px; padding-left: 5px; float: left;">
						<input type="text" class="form-control form-control-sm" name="searchInput" id="searchInput">
					</div>
					<!--  button�� form�±� �ȿ� ������ �̺�Ʈ�� �ѹ� �� Ÿ�� Ŭ���� �ι��Ѱ�ó�� ����ȴ�. �׷��� ������ a�±׸� ����ϸ� button�� ����� ��� type="button"�� �ָ� �ȴ�-->
					<button class="btn btn-primary" type="button" style="background-color: black; color: white; margin-right: 0px;" id="search" onclick="show(1)">�˻�</button>		
				</form>
			</div>
			
		
			
			
		<table class="table" id="usertable" style="margin: 0 auto; margin-bottom: 100px; width: 91%; color:#000000;">
			<thead style="background: #7297ff;">
				<tr>
					<th scope="col">NO</th>
					<th scope="col">�����ȣ</th>
					<th scope="col">�̸�</th>
					<th scope="col">����</th>
					<th scope="col">Phone</th>
					<th scope="col">�װ����</th>
					<th scope="col">�����</th>
					<th scope="col">������</th>
					<th scope="col">��߽ð�</th>
					<th scope="col">�����ð�</th>
					<th scope="col">�����ݾ�</th>
				</tr>
			</thead>
			<tbody id="userList" style="background: #ffffff;">
			 	<%-- <c:forEach var="item" items="${list}"> --%>
					<tr>	
						<td>1</td>
						<td>D54AGD2W5</td>
						<td>�ּ���</td>
						<td>26</td>
						<td>010-8888-8888</td>
						<td>AD9522</td>
						<td>2020-02-21</td>
						<td>2020-02-23</td>
						<td>15:00</td>
						<td>22:00</td>
						<td>157,846��</td>
					</tr>
					<tr>
						<td>1</td>
						<td>D54AGD2W5</td>
						<td>�ּ���</td>
						<td>26</td>
						<td>010-8888-8888</td>
						<td>AD9522</td>
						<td>2020-02-21</td>
						<td>2020-02-23</td>
						<td>15:00</td>
						<td>22:00</td>
						<td>157,846��</td>
					</tr>
					<tr>
						<td>1</td>
						<td>D54AGD2W5</td>
						<td>�ּ���</td>
						<td>26</td>
						<td>010-8888-8888</td>
						<td>AD9522</td>
						<td>2020-02-21</td>
						<td>2020-02-23</td>
						<td>15:00</td>
						<td>22:00</td>
						<td>157,846��</td>
					</tr>
					<tr>
						<td>1</td>
						<td>D54AGD2W5</td>
						<td>�ּ���</td>
						<td>26</td>
						<td>010-8888-8888</td>
						<td>AD9522</td>
						<td>2020-02-21</td>
						<td>2020-02-23</td>
						<td>15:00</td>
						<td>22:00</td>
						<td>157,846��</td>
					</tr>
					<tr>
						<td>1</td>
						<td>D54AGD2W5</td>
						<td>�ּ���</td>
						<td>26</td>
						<td>010-8888-8888</td>
						<td>AD9522</td>
						<td>2020-02-21</td>
						<td>2020-02-23</td>
						<td>15:00</td>
						<td>22:00</td>
						<td>157,846��</td>
					</tr>
					<tr>
						<td>1</td>
						<td>D54AGD2W5</td>
						<td>�ּ���</td>
						<td>26</td>
						<td>010-8888-8888</td>
						<td>AD9522</td>
						<td>2020-02-21</td>
						<td>2020-02-23</td>
						<td>15:00</td>
						<td>22:00</td>
						<td>157,846��</td>
					</tr>
					<tr>
						<td>1</td>
						<td>D54AGD2W5</td>
						<td>�ּ���</td>
						<td>26</td>
						<td>010-8888-8888</td>
						<td>AD9522</td>
						<td>2020-02-21</td>
						<td>2020-02-23</td>
						<td>15:00</td>
						<td>22:00</td>
						<td>157,846��</td>
					</tr>
				<%-- </c:forEach> --%>
			</tbody>
		</table>
</div>
<!-- /.container-fluid -->