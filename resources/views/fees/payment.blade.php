@extends('layouts.master')
@section('content')
@include('fees.styleSheet.css-payment')
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="col-md-3">
			<form action="{{route('showStudentPayment')}}" class="search-payment" method="GET">
				<input class="form-control" value="{{$student_id}}"  name="student_id" placeholder="Student ID" type="text">
			</form>
			
		</div>
		<div class="col-md-3">
			<label class="eng-name">Name: <b class="student-name"></b></label>
			
		</div>
		<div class="col-md-3">
			
		</div>
		<div class="col-md-3" style="text-align: right;">
			<label class="date-invoice">Date: <b>{{date('d-M-Y')}}</b></label>
			
		</div>
		<div class="col-md-3" style="text-align: right;">
			<label class="invoice-number">Receipt N<sub>0</sub>: <b></b></label>
		</div>
		
	</div>

	<form action="#" method="post" id="frmPayment">

	<div class="panel-body">
		<table style="margin-top: -12px;">
			<caption class="academicDetail">
				{{$status->program}} /
				 Level:{{$status->level}}/ Shift:{{$status->shift}}/
				Time:{{$status->time}} /
				Batch:{{$status->batch}} /
				Group:{{$status->group}}


			</caption>
				<thead>
					<tr>
						<th>Program</th>
						<th>Level</th>
						<th>School Fee($)</th>
						<th>Amount($)</th>
						<th>Dis(%)</th>
						<th>Paid($)</th>
						<th>Amount Lack($)</th>
					</tr>
				</thead>
				<tr>
					<td>
						<select id="program_id" name="program_id">
						@foreach($programs as $key =>$p)
							<option value="{{$p->program_id}}" {{$p->program_id==status->program_id ? 'selected': null }}>{{$p->program}}</option>
						@endforeach
						</select>
					</td>
					<td>
						<select>
							@foreach($levels as $key =>$l)
							<option value="{{$p->program_id}}" {{$l->level_id==$status->level_id ? 'selected':null }}>{{$l->level}}</option>
						@endforeach
						</select>

					</td>
					<td>
						<input type="text" name="fee" id="fee" readonly="true">
						<input type="hidden" name="fee_id" id="FeeID">
						<input type="hidden" name="student_id" id="StudentID">
						<input type="hidden" name="level_id" id="LevelID">
						<input type="hidden" name="user_id" id="UserID">
						<input type="hidden" name="transacdate" id="TransacDate">
					</td>
					<td>
						<input type="text" name="amount" id="Amount">
					</td>
					<td>
						<input type="text" name="discount" id="Discount">
					</td>
					<td>
						<input type="text" name="paid" id="Paid">
					</td>
					<td>
						<input type="text" name="balance" id="Balance" disabled>
					</td>
				</tr>
				<thead>
					<tr>
						<th colspan="2">Remark</th>
						<th colspan="5">Description</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2" 
						>
							<input type="text" name="description" id="description">
						</td>
						<td colspan="5" 
						>
							<input type="text" name="remark" id="remark">
						</td>
					</tr>
				</tbody>
			</table>
		
	</div>
	<div class="panel-footer">
		<input type="submit" id="btn-go" name="btn-go" class="btn btn-default btn-payment">
		<input type="button" onclick="this.form.reset()" class="btn btn-default btn-reset pull right" value="Reset">
	</div>
	</form>
	
</div>


@stop