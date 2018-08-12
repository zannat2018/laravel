<div class="panel panel-default" style="margin-top: -18px;">
	<div class="panel-heading">Pay List</div>
	<div class="panel-body">
		<div class="table-responsive">
			<table style="border-collapse: collapse;" class="table-hover table-borderd" id="list-student-fee">

				<thead>
					<tr>
						<th style="text-align: center;">N<sub>0</sub></th>
						<th>Level</th>
						<th style="text-align: center;">Fee</th>
						<th style="text-align: center;">Amount</th>
						<th style="text-align: center;">Discount</th>
						<th style="text-align: center;">Paid</th>
						<th style="text-align: center;">Balance</th>
						<th style="text-align: center;">Action</th>
					</tr>
				</thead>
				<tbody id="tbody-student-fee">
					@foreach($readStudentFee as $key => $sf)
					<tr data-id="" id="sfeeId">
						<td style="text-align: center;"
						>{{ $key+1 }}</td>
						<td style="text-align: center;"
						>{{$sf->level}}</td>
						<td style="text-align: center;"
						>$ {{ number_format($sf->school_fee,2) }}</td>
						<td style="text-align: center;"
						> $ {{ number_format($sf->student_amount,2) }}</td>
						<td style="text-align: center;"
						>{{ $sf->discount}}</td>
						<td style="text-align: center;"
						>$ {{ number_format($readStudentTransaction->where('s_fee_id',$sf->s_fee_id)->sum('paid'),2) }}
						<input type="hidden" name="b" id="b">
					</td>

						<td style="text-align: center;">
							$ {{ number_format($sf->student_amount -$readStudentTransaction->where('s_fee_id',$sf->s_fee_id)->sum('paid'),2) }}
						</td>
						<td style="text-align: center; width: 115px;">
							<a href="" class="btn btn-success btn-xs btn-sfee-edit" data-id-update-student-fee="{{$sf->s_fee_id }}" title="Edit"><i class="fa fa-edit"></i></a>
							<button type="button" class="btn btn-danger btn-xs btn-paid" ><i class="fa fa-usd" title="Complete"></i></button>
							<button  class="btn btn-primary btn-xs accordion-toggle" data-toggle="collapse" data-target="#demo{{ $key }}" title="Partial"><span class="fa fa-eye"></span></button>
						</td>

					</tr>
					<tr>
						<td colspan="9" class="hiddenRow">
							@include('fees.list.transactionList')
						</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
	<div class="panel-footer" style="height: 40px;">
		
	
		
	</div>
</div>