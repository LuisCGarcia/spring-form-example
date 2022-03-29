<html>

<head>
  <title>spring boot form submit example</title>
  <style type="text/css">
    .form-style-3 {
      max-width: 450px;
      font-family: "Arial", "Helvetica", sans-serif;
    }

    .form-style-3 label {
      display: block;
      margin-bottom: 10px;
    }

    .form-style-3 label>span {
      float: left;
      width: 100px;
      color: #f072a9;
      font-weight: bold;
      font-size: 13px;
    }

    .form-style-3 fieldset {
      border-radius: 10px;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      margin: 0px 0px 10px 0px;
      border: 1px solid #ffd2d2;
      padding: 20px;
      background: #fff4f4;
      box-shadow: inset 0px 0px 15px #ffe5e5;
      -moz-box-shadow: inset 0px 0px 15px #ffe5e5;
      -webkit-box-shadow: inset 0px 0px 15px #ffe5e5;
    }

    .form-style-3 fieldset legend {
      color: #ffa0c9;
      border-top: 1px solid #ffd2d2;
      border-left: 1px solid #ffd2d2;
      border-right: 1px solid #ffd2d2;
      border-radius: 5px 5px 0px 0px;
      -webkit-border-radius: 5px 5px 0px 0px;
      -moz-border-radius: 5px 5px 0px 0px;
      background: #fff4f4;
      padding: 0px 8px 3px 8px;
      box-shadow: -0px -1px 2px #f1f1f1;
      -moz-box-shadow: -0px -1px 2px #f1f1f1;
      -webkit-box-shadow: -0px -1px 2px #f1f1f1;
      font-weight: normal;
      font-size: 12px;
    }

    .form-style-3 input[type="text"],
    .form-style-3 select {
      border-radius: 3px;
      -webkit-border-radius: 3px;
      -moz-border-radius: 3px;
      border: 1px solid #ffc2dc;
      outline: none;
      color: #f072a9;
      padding: 5px 8px 5px 8px;
      box-shadow: inset 1px 1px 4px #ffd5e7;
      -moz-box-shadow: inset 1px 1px 4px #ffd5e7;
      -webkit-box-shadow: inset 1px 1px 4px #ffd5e7;
      background: #ffeff6;
      width: 50%;
    }

    .form-style-3 input[type="submit"] {
      background: #eb3b88;
      border: 1px solid #c94a81;
      padding: 5px 15px 5px 15px;
      color: #ffcbe2;
      box-shadow: inset -1px -1px 3px #ff62a7;
      -moz-box-shadow: inset -1px -1px 3px #ff62a7;
      -webkit-box-shadow: inset -1px -1px 3px #ff62a7;
      border-radius: 3px;
      border-radius: 3px;
      -webkit-border-radius: 3px;
      -moz-border-radius: 3px;
      font-weight: bold;
    }
  </style>
</head>

<body>
  <h2>Enter your details</h2>
  <div class="form-style-3">
    <form method="post" action="saveDetails">
      <fieldset>
        <legend>Form</legend>
        <label for="studentName">
          <span>Name</span>
          <input type="text" class="input-field" name="studentName" pattern="^(?![\s.]+$)[a-zA-Z\s.]*$" required="required"/>
        </label>
        <label for="studentLastName">
          <span>Last Name</span>
          <input type="text" class="input-field" name="studentLastName" pattern="^(?![\s.]+$)[a-zA-Z\s.]*$" required="required"/>
        </label>
        <label for="studentIdNum">
          <span>ID Number</span>
          <input type="text" class="input-field" name="studentIdNum" minlength="8" maxlength="8" pattern="^([0-9]{8})*$" required="required"/>
        </label>
        <label for="birthday">
          <span>Birthday</span>
          <input type="text" class="input-field" name="birthday" placeholder="dd/mm/yyyy" pattern="^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$" required="required"/>
        </label>
        <label for="department">
          <select name="department" required="required">
            <option value="" disabled selected hidden>Choose your department!</option>
            <option value="Ahuachapán">Ahuachap&aacute;n</option>
            <option value="Santa Ana">Santa Ana</option>
            <option value="Sonsonate">Sonsonate</option>
            <option value="La Libertad">La Libertad</option>
            <option value="Chalatenango">Chalatenango</option>
            <option value="Cuscatlán">Cuscatl&aacute;n</option>
            <option value="San Salvador">San Salvador</option>
            <option value="La Paz">La Paz</option>
            <option value="Cabañas">Caba&ntilde;as</option>
            <option value="San Vicente">San Vicente</option>
            <option value="Usulután">Usulut&aacute;n</option>
            <option value="San Miguel">San Miguel</option>
            <option value="Morazán">Moraz&aacute;n</option>
            <option value="La Unión">La Uni&oacute;n</option>
          </select>
        </label>
      </fieldset>
      <br> <input type="submit" value="Submit">
    </form>
  </div>
</body>

</html>