<html>
<head>
<title>Hello World MongoDB!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="/static/bootstrap.min.css" rel="stylesheet" media="screen">

   
   <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
   <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
   <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

   <script type="text/javascript" src="/static/bootstrap.min.js"></script>


</head>
<body>

<h1>Hello MongoDB</h1>

</br>
</br>

<div class="alert alert-info">
  INFORMATION:Please Type Member ID in the TextEdit : ) </br>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It will show in the follow table
  </div>
<form class="form-inline",action="/index" method = "post">
  <input class="input-xlarge" name="patID" type="text" placeholder="ID" />
  <button class="btn btn-primary" type="button">Start</button>
</form>

            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Member ID</th>
                  <th>Account Number</th>
                  <th>Number of Events</th>
                </tr>
              </thead>
              <tbody>
                <tr class="success">
                  <td>1</td>
                  <td>{{mynames["MCMP_MBR_USI_ID"]}}</td>
                  <td>{{mynames["MCMP_SBS_ID"]}}</td>
                  <td>{{mynames["EL"]}}</td>
                </tr>
                <tr class="error">
                  <td>2</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr class="warning">
                  <td>3</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
                <tr class="info">
                  <td>4</td>
                  <td></td>
                  <td></td>
                  <td></td>
                </tr>
              </tbody>
            </table>
          </div>
 
</body>
</html>