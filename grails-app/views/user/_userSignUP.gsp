<div>
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.3.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.validate.min.js')}"></script>

    <form class="cmxform" method="get" id="userSinghUpForm"
          action="${createLink(controller: "user", action: "UserSignUp")}">
        <div class="form-group">
            <label for="username_id" class="col-lg-3">Name:</label>

            <div class="col-md-9">
                <input type="text" autofocus="autofocus" class="form-control" minlength="3"
                       required="required" name="username"
                       id="username_id"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="email_id" class="col-lg-3">Email:</label>

            <div class="col-md-9">
                <input type="email" class="form-control" required="required" name="email"
                       id="email_id"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="address_id" class="col-lg-3">Address:</label>

            <div class="col-md-9">
                <input type="text" class="form-control" required="required" name="address"
                       id="address_id"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="contact_id" class="col-lg-3">Contact:</label>

            <div class="col-md-9">
                <input type="number" maxlength="10" class="form-control" min="1" minlength="10"
                       required="required" name="contact"
                       id="contact_id"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="profile_id" class="col-lg-3">Profile:</label>

            <div class="col-md-9">
                <g:select class="form-control" required="required" from="['INVESTOR', 'COMPANY']"
                          name="profile"
                          id="profile_id"/><br>

            </div>
        </div>

        <div class="form-group">
            <label for="password_id" class="col-lg-3">Password:</label>

            <div class="col-md-9">
                <input type="password" class="form-control" minlength="5" required="required"
                       name="password" id="password_id"/><br>
            </div>
        </div>

        <div class="form-group">
            <label for="confirm_password_id" class="col-lg-3">Confirm Password:</label>

            <div class="col-md-9">
                <input type="password" class="form-control" minlength="5" required="required"
                       name="confirm_password" equalTo="#password_id"
                       id="confirm_password_id"/>
                %{--<span id='message'></span>--}%
            </div>
        </div>




        <center>
            <g:submitButton name="Submit" style="margin-top: 20px" class="btn btn-success"
                            value="Register"
                            id="submit_btn"/>
        </center>
    </form>

    <script>
        $("#userSinghUpForm").validate({
            rules: {},
            messages: {
                username: {
                    minlength: "User name must contain 3 charecters",
                    required: "Please enter User name"
                },
                email: {
                    required: "Please enter Email id name"
                },

                address: {
                    required: "Please enter Address"
                },
                contact: {
                    min: "Contact must be a number",
                    minlength: "Contact lenght must be 10",
                    required: "Please enter Contact",
                    maxlength: "Contact lenght must be 10"
                },
                password: {
                    minlength: "Password must contain 5 charecters",
                    required: "Please enter password"
                },
                confirm_password: {
                    minlength: "Confirm Password must contain 5 charecters",
                    required: "Please enter Confirm password",
                    equalTo: "Please enter the password same as above"
                }

            }
        });
    </script>
</div>