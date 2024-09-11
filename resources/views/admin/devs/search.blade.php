<form action="{{$url}}" pjax-container="" style="display: inline-block;">
    <div class="input-group input-group-sm" style="display: inline-block;">
        <input type="hidden" name="_token" value="{{$token}}">
        <input type="text" name="search" class="form-control grid-quick-search" style="width: 200px;" value="" placeholder="select * from devs where user='Admin'">

        <div class="input-group-btn" style="display: inline-block;">
            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
        </div>
    </div>
</form>
