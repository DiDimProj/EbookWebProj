<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<!-- header.jsp 시작 -->
<%@ include file="./header.jsp"%>
<!-- header.jsp 끝 -->
<style>
body { padding-top:30px; }
.form-control { margin-bottom: 10px; }
</style>
<body>
	<div id="main">

		<div align="center"
			style="padding-top: 10px; padding-bottom: 10px; background-color: #eae6d9; padding-left: 30%; padding-right: 30%;">

			<div class="input-group">
				<span class="input-group-addon"> <span
					class="glyphicon glyphicon-search"></span></span> <input type="text"
					class="form-control"> <span class="input-group-btn">
					<button class="btn btn-default" type="button">Go!</button>
				</span>
			</div>
		</div>
		<div class="container" align="center" style="margin-left: 0 auto; margin-right: 0 auto; width: 80%">
    <div class="row" >
        <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
            <legend><a href="http://www.jquery2dotnet.com"><i class="glyphicon glyphicon-globe"></i></a> Sign up!</legend>
            <form action="#" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="firstname" placeholder="First Name" type="text"
                        required autofocus />
                </div>
                <div class="col-xs-6 col-md-6">
                    <input class="form-control" name="lastname" placeholder="Last Name" type="text" required />
                </div>
            </div>
            <input class="form-control" name="youremail" placeholder="Your Email" type="email" />
            <input class="form-control" name="reenteremail" placeholder="Re-enter Email" type="email" />
            <input class="form-control" name="password" placeholder="New Password" type="password" />
            <label for="">
                Birth Date</label>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Month">Month</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Day">Day</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Year">Year</option>
                    </select>
                </div>
            </div>
            <label class="radio-inline">
                <input type="radio" name="sex" id="inlineCheckbox1" value="male" />
                Male
            </label>
            <label class="radio-inline">
                <input type="radio" name="sex" id="inlineCheckbox2" value="female" />
                Female
            </label>
            <br />
            <br />
            <button class="btn btn-lg btn-primary btn-block" type="submit">
                Sign up</button>
            </form>
        </div>
    </div>
</div>

	</div>
	<hr>
	<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->
</body>


</html>