@extends('admin.layout.master')
@section('style')
<link rel="stylesheet" href="{{asset('assets/admin/plugins/DataTables/datatables.min.css')}}">

@endsection

@section('content')

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-xs-12">
      <div class="box">
        <div class="box-header">
          
         <h3 class="box-title" style="font-weight: bold">Subscribers List</h3>

        
<div class="clearfix"></div>
        <div class="col-sm-9">
           <!--error shows-->
         @if (count($errors) > 0)
         <div class="alert alert-danger lert-dismissible">
         	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
          <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
          </ul>
        </div>
        @endif
        <!--//error shows-->

          @if(Session::has('success'))
            <div class="alert alert-success alert-dismissible col-sm-9 col-sm-offset-2 success" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
              {{Session::get('success')}}
            </div>
          @endif
         </div> 
      </div>
      <!-- /.box-header -->
      <div class="box-body">

       <table id="datatable" class="table table-bordered">
        <thead>
         <tr>         
          <th>SN</th>
          <th>Name</th>
          <th>Email</th>
          <th>Added At</th>
          <th>Action</th>
        </tr>
      </thead>
      
      <tbody>
        @if(count($subscribers) > 0)
        @foreach($subscribers as $index => $subscriber)
        <tr>
          <td>{{$index+1}}</td>
          <td>{{$subscriber->name}}</td>
          <td>{{$subscriber->email}}</td>
          <td>{{date('F d, Y' ,strtotime($subscriber->created_at))}}</td>
          <td><a href="/admin/subscribers-list/{{$subscriber->id}}" onclick="return confirm('Are you sure to delete ?');" class="btn btn-danger">Delete</a></td>
        </tr>
        @endforeach
        @endif
      </tbody>  
    </table>  
  </div>
  <!-- /.box-body -->
</div>
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</section>
<!-- /.content -->
@endsection

@section('scripts')

<script src="{{asset('assets/admin/plugins/DataTables/datatables.min.js')}}"></script>

<script type="text/javascript"> 
$(document).ready(function(){
  $('.backlink').click(function(){
    parent.history.back();
    return false;
  });
});


$(document).ready( function () {
    $('#datatable').DataTable();
});

</script>

<script>
  setTimeout(function(){$('.success').slideUp();},2000);
</script>


@endsection
