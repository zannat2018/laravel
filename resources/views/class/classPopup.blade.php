<div class="modal fade" id="choose-academic" tabindex="-1" role="dialog" aria-lablelledby="myModallabel" aria-hidden="true">
	<div class="modal-dialog">

				<section class="panel panel-default">
			<header class="panel panel-heading">Choose Academic

			</header>

			<form class="form-horizontail" action="#" id="frm-view-class" method="POST" >
				<div class="panel-body" style="border-botton:1px solid #ccc">
					<div class="form-group">

						<div class="col-sm-6">
							<lable for="academic-year">Academic Year</lable>
							<div class="input-group">
								<select class="form-control" name="academic_id" id="academic_id">
									
									@foreach($academics as $key => $y)
									<option value="{{$y->academic_id}}">{{$y->academic}}</option>

									@endforeach
								</select>
								<div class="input-group-addon">
									<span class="fa fa-plus" id="add-more-academic"></span>

								</div>
							</div>
						</div>
						{{---------}}

						<div class="col-sm-6">
							<lable for="Courses">Courses</lable>
							<div class="input-group">
								<select class="form-control" name="program_id" id="program_id">
									<option value="">--------</option>
									@foreach($programs as $key => $p)
									<option value="{{$p->program_id}}">{{$p->program}}</option>

									@endforeach
								</select>
								<div class="input-group-addon">
									<span class="fa fa-plus" id="add-more-program"></span>

								</div>
							</div>
						</div>
						{{---------}}

						<div class="col-sm-6">
							<lable for="Courses">Level</lable>
							<div class="input-group">
								<select class="form-control" name="level_id" id="level_id">

								</select>
								<div class="input-group-addon">
									<span class="fa fa-plus" id="add-more-level"></span>

								</div>
							</div>
						</div>
						{{---------}}

						<div class="col-sm-6">
							<lable for="shift">Shift</lable>
							<div class="input-group">
								<select class="form-control" name="shift_id" id="shift_id">
									@foreach( $shift as $shf)
									<option value="{{$shf->shift_id}}">{{$shf->shift}}</option>
									

									@endforeach
								</select>
								<div class="input-group-addon">
									<span class="fa fa-plus" id="add-more-shift"></span>

								</div>
							</div>
						</div>
						{{--------------}}
						<div class="col-sm-6">
							<lable for="time">Time</lable>
							<div class="input-group">
								<select class="form-control" name="time_id" id="time_id">
									@foreach( $time as $t)
									<option value="{{$t->time_id}}">{{$t->time}}</option>
									

									@endforeach
								</select>
								<div class="input-group-addon">
									<span class="fa fa-plus" id="add-more-time"></span>

								</div>
							</div>
						</div>
						{{----------}}
						<div class="col-sm-3">
							<lable for="batch">Batch</lable>
							<div class="input-group">
								<select class="form-control" name="batch_id" id="batch_id">
									@foreach( $batch as $b)
									<option value="{{$b->batch_id}}">{{$b->batch}}</option>
									

									@endforeach
								</select>
								<div class="input-group-addon">
									<span class="fa fa-plus" id="add-more-batch"></span>

								</div>
							</div>
						</div>
						{{--------------}}
						<div class="col-sm-3">
							<lable for="group">Group</lable>
							<div class="input-group">
								<select class="form-control" name="group_id" id="group_id">
									@foreach( $group as $g)
									<option value="{{$g->group_id}}">{{$g->groups}}</option>
									

									@endforeach
								</select>
								<div class="input-group-addon">
									<span class="fa fa-plus" id="add-more-group"></span>

								</div>
							</div>
						</div>
						
						

					</div>			
				</div>

				
			</form>

			<div class="panel panel-default">
				<div class="panel-heading">Class Information
					
				</div>
				<div class="panel-body" id="add-class-info" style="overflow-y: auto; height: 250px;">
					
				</div>
			</div>

		</section>

   </div>
</div>
