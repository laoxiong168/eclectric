<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>--</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<#--<link href="${base}/static/css/normalize.css"  rel="stylesheet" />-->
<#--<link href="${base}/static/css/style.css"  rel="stylesheet" />-->
  <link href="${base}/static/css/colpick.css" rel="stylesheet"/>
  <script type="text/javascript" src="${base}/static/js/jquery.min.js"></script>
  <script src="${base}/static/js/colpick.js"></script>
  <script src="${base}/static/js/plugin.js"></script>
  <style>
    button {
      border-radius: 2px;
      border: 1px solid #DBDBDB;
      outline: none;
      cursor: pointer;
    }

    input {
      border-radius: 3px;
      border: 1px solid #DBDBDB;
      outline: none;
    }

    textarea {
      text-align: center;
      width: 500px;
      height: 100px;
      border: solid 1px;
      border-radius: 5px;
      resize: none;
    }

    .div1 {
      width: auto;
      font-size: 13px;
      margin-bottom: 10px;
    }

    .div2 {
      background-color: #7EC4CC;
      border-radius: 8px;
      width: 800px;
      height: 400px;
    }

    .total {
      margin-left: 100px;
    }

    .div2x {
      position: absolute;
      width: 300px;
    }

    .div_every_line {
      margin-top: 5px;
    }

    #input1, #input2, #input3 {
      border: none;
      position: absolute;
      background-color: transparent;
    }
  </style>
</head>
<body class="main_body">
<#--最外面的div-->
<div class="total">

<#--上面的div-->
  <div class="div1">
    <div style="margin-bottom: 3px">
      <button id="change_background_color">换背景色</button>
      <button id="chage_img">换背景图</button>
    </div>
  <#--第一行字-->
    <div class="div_every_line">
      第一行:
      坐标:
      <input id="x_axis1" style="width: 50px;" placeholder="横轴" oninput="value=value.replace(/[^\d]/g,'')"/>-
      <input id="y_axis1" style="width: 50px;" placeholder="纵轴" oninput="value=value.replace(/[^\d]/g,'')"/>
      字号:
      <input id="size1" style="width: 30px" oninput="value=value.replace(/[^\d]/g,'')"/>
      颜色:
      <input id="input_color11" style="width: 30px;" readOnly="true"/>
      <input id="input_computer" style="text-align: center" value="xxxx有限公司" placeholder="公司名"/>
    </div>
  <#--第二行字-->
    <div class="div_every_line">
      第二行:
      坐标:
      <input id="x_axis2" style="width: 50px;" placeholder="横轴" oninput="value=value.replace(/[^\d]/g,'')"/>-
      <input id="y_axis2" style="width: 50px;" placeholder="纵轴" oninput="value=value.replace(/[^\d]/g,'')"/>
      字号:
      <input id="size2" style="width: 30px" oninput="value=value.replace(/[^\d]/g,'')"/>
      颜色:
      <input id="input_color12" style="width: 30px" readOnly="true"/>
      <input id="input_user_name" style="text-align: center" value="周杰伦" placeholder="姓名"/>
    </div>
  <#--第三行字-->
    <div class="div_every_line">
      第三行:
      坐标:
      <input id="x_axis3" style="width: 50px;" placeholder="横轴" oninput="value=value.replace(/[^\d]/g,'')"/>-
      <input id="y_axis3" style="width: 50px;" placeholder="纵轴" oninput="value=value.replace(/[^\d]/g,'')"/>
      字号:
      <input id="size3" style="width: 30px" oninput="value=value.replace(/[^\d]/g,'')"/>
      颜色:
      <input id="input_color13" style="width: 30px" readOnly="true"/>
      <input id="input_position" style="text-align: center" value="设计经理" placeholder="职位"/>
    </div>
    <button id="confirm" style="margin-top: 5px">确定</button>
  </div>
<#--编辑框里的内容-->
  <div class="div2">
  <#--编辑框第一行-->
      <input id="input1" style="margin-top: 5px" readOnly="true" value="xxx有限公司">
  <#--编辑框第二行-->
      <input id="input2" style="color: #00AA00" readOnly="true" value="周杰伦">
  <#--编辑框第三行-->
      <input id="input3" readOnly="true" value="设计师">
  </div>

  <script>
    $(function () {

          /*确定按钮*/
          $("#confirm").click(function () {
            /*改变坐标*/
            $("#input1").css('margin-left', $('#x_axis1').val() + 'px');
            $("#input1").css('margin-top', $('#y_axis1').val() + 'px');
            $("#input2").css('margin-left', $('#x_axis2').val() + 'px');
            $("#input2").css('margin-top', $('#y_axis2').val() + 'px');
            $("#input3").css('margin-left', $('#x_axis3').val() + 'px');
            $("#input3").css('margin-top', $('#y_axis3').val() + 'px');
            /*改变三行的内容*/
            $("#input1").val($('#input_computer').val());
            $("#input2").val($('#input_user_name').val());
            $("#input3").val($('#input_position').val());
            /*设置字号大小*/
            $("#input1").css('font-size',$('#size1').val()+'px');
            $("#input2").css('font-size',$('#size2').val()+'px');
            $("#input3").css('font-size',$('#size3').val()+'px');
          })
          /*第一排字体更换颜色*/
          $('#input_color11').colpick(
              {
                layout: 'rgbhex',
                onSubmit: function (hsb, hex, rgb, el) {
                  $(el).css('background-color', '#' + hex);
                  $("#input1").css('color', '#' + hex);
                  $(el).colpickHide();
                }
              }
          );
          /*第二排字体更换颜色*/
          $('#input_color12').colpick(
              {
                layout: 'rgbhex',
                onSubmit: function (hsb, hex, rgb, el) {
                  $(el).css('background-color', '#' + hex);
                  $("#input2").css('color', '#' + hex);
                  $(el).colpickHide();
                }
              }
          );
          /*第三排字体更换颜色*/
          $('#input_color13').colpick(
              {
                layout: 'rgbhex',
                onSubmit: function (hsb, hex, rgb, el) {
                  $(el).css('background-color', '#' + hex);
                  $("#input3").css('color', '#' + hex);
                  $(el).colpickHide();
                }
              }
          );
          /*下排编辑框的更换颜色*/
          $('#change_background_color').colpick(
              {
                layout: 'rgbhex',
                onSubmit: function (hsb, hex, rgb, el) {
                  // $(el).css('background-color', '#' + hex);
                  $(el).colpickHide();
                  $(".div2").css("background-color", '#' + hex);
                  $("#input1").css("background-color", '#' + hex);
                  $("#input2").css("background-color", '#' + hex);
                  $("#input3").css("background-color", '#' + hex);
                }
              }
          );

        }
    )


  </script>
<#--最外面的div结束-->
</div>
</body>
<#--上面的编辑字体和字号的div-->
</html>