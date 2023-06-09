<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
  let cust_add = {
    init:function (){
      $('#register_btn').click(function (){
        cust_add.send();
      });
    },
    send:function (){
      $('#register_form').attr({
        method:'post',
        action:'/cust/addimpl'
      });
      $('#register_form').submit();
    }
  };

  $(function (){
    cust_add.init();
  })
</script>

<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-2 text-gray-800">Cust Add</h1>

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Cust Add</h6>
    </div>
    <div class="card-body">
      <div id="container">
        <form id="register_form" class="form-horizontal well">
          <div class="form-group">
            <label class="control-label col-sm-2" for="id">ID:</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" placeholder="id 입력" id="id" name="id">
            </div>
            <div class="col-sm-10">
              <span id="check_id" class="bg-danger"></span>
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Password:</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">이름:</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button id="register_btn" type="button" class="btn btn-info">Register</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>