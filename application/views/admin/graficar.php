<!DOCTYPE html>
<html>
<head>
        <title>Reporte</title>
        <link rel = "stylesheet" type = "text/css"
         href = "<?php echo base_url(); ?>css/estilos.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.2.1/Chart.min.js"></script>
        <script src="<?php echo base_url(); ?>assets/jquery-2.1.4.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>

</head>
<body>


        <header>
                <input type="checkbox" id="btn-menu">
                <label for="btn-menu"><img src="<?php echo base_url(); ?>css/icon.png" alt=""></label>
                <nav class="menu">
                        <ul>

                                <li><a href="<?php echo base_url(); ?>administrador/eg_users">Usuarios</a></li>
                                <li><a href="<?php echo base_url(); ?>administrador/formato_talleres">Formatos</a></li>
                                <li><a href="<?php echo base_url(); ?>administrador/Graficar/">Reporte</a></li>
                                <li><a href="<?php echo base_url(); ?>login/logout_ci">Salir</a></li>

                        </ul>
                </nav>

        </header>
        <br><br>
        <center>
        <script>
                function enviar(){
                        var inicio=document.getElementById('inicio').value;
                    var final=document.getElementById('final').value;

                    var datatotal = 'inicio='+inicio + '&final='+final;

                    $.ajax({
                        type:'post',
                        url:'<?php echo base_url();?>Administrador/get_graficar',
                        data:datatotal,
                        success:function(data){
                                $('#respuesta').html(data);
                        var obj = JSON.parse(data);
//                      obj.append({"navegador":" ","total":"0"})

                        paramnavegador = [];
                        paramusuario = [];
                        bgColor = [];
                        bgBorder = [];
                        $.each(obj, function(i,item){
                                var r = Math.random() * 255;
                                r = Math.round(r);

                                var g = Math.random() * 255;
                                g = Math.round(g);

                                var b = Math.random() * 255;
                                b = Math.round(b);

                                paramnavegador.push(item.navegador);
                                paramusuario.push(item.total);
                                bgColor.push('rgba('+r+','+g+','+b+', 0.7)');
                                bgBorder.push('rgba('+r+','+g+','+b+', 1)');
                        });

                        $('#myChart').remove();
                        $('#contenedor_grafico').append("<canvas id='myChart' width='400' height='100'></canvas>");

                        var ctx = $("#myChart");
                        var myChart = new Chart(ctx, {
                            type: 'pie',
                            data: {
                                labels: paramnavegador,
                                datasets: [{
                                    label: 'Visitas',
                                    data: paramusuario,
                                    backgroundColor: bgColor,
                                    borderColor: bgBorder,
                                    borderWidth: 1
                                }]
                            },
                        });
                        }
                    });
                    return false;
                    }


        </script>
<form method="post" onsubmit="return enviar();">

        <input type="date" name="inicio" id="inicio">&nbsp
        <input type="date" name="final" id="final">&nbsp
        <input type="submit" value="Graficar">
</form>
<!--<p id="respuesta"></p>-->
        <div id="contenedor_grafico">
                <canvas id="myChart" width="400" height="200"></canvas>
        </div>

        <script>



</script>

</center>
</body>
</html>
