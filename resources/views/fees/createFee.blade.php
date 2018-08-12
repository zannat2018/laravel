<style type="text/css">
	.table-fee{
		border:none;
	}
	.table-fee tr ,td ,th{
		border:none;
	}
</style>

<div class="modal fade" id="createFeeOpup" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-heading">
					<b><i class="glyphicon glyphicon-apple"></i>Create School Fee</b>
				</div>
				{{--------------}}
				<form action="{{route('createFee')}}" method="POST" id="frmFee">
					
					<div class="panel-body">
						<div class="table-responsive">
							{{------Start Table------}}
							<table class="table-fee">
								<tr>
									<td>
										<label>Fee Type</label>
									</td>
									<td>
										<select class="form-control" id="fee_type_id" name="fee_type_id" disabled>
											@foreach($feetypes as $key => $ft)
											<option value="{{ $ft->fee_type_id}}">{{$ft->fee_type}}</option>
											@endforeach
										</select>
									</td>
								</tr>

								<tr>
									<td><lable>Fee Heading</lable></td>
									<td>
										<input type="text" name="fee_heading" id="fee_heading" value="Fees" disabled>
									</td>
								</tr>

								<tr>
									<td>Academic Year</td>
									<td>
										<input type="text" value="{{$status->academic}}" disabled>
										<input type="hidden" name="academic_id" value="{{$status->academic_id}}">
									</td>
								</tr>
								<tr>
									<td>Program</td>
									<td>
										<input type="text" value="{{$status->program}}" disabled>
									</td>
							    </tr>
							    <tr>
									<td>Level</td>
									<td>
										<input type="text" value="{{$status->level}}" disabled>
										<input type="hidden" name="level_id" value="{{$status->level_id}}">
									</td>
							    </tr>
							    <tr>
									<td>School Fee($)</td>
									<td>
										<input type="text" name="amount" class="form-control" id="amount" autocomplete="off" placeholder="Amount" required>
									</td>
							    </tr>
							</table>
							{{------End Table-----}}
						</div>
					</div>
					<div class="panel-footer">
						<input type="submit" class="btn btn-default" value="Create Fee">
						<button type="button" class="btn btn-default pull-right" data-dismiss="modal">Close</button>
					</div>

				</form>
				{{------end form------}}
			</div>
		</div>
	</div>
</div>