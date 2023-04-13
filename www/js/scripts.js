
function alerta(){
    const tlf = document.getElementById('celphone').value;
    alert("El numero " + "'" + tlf +"'" + " es correcto ?");
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3500,
        timerProgressBar: false,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })
    
        Toast.fire({
        icon: 'info',
        title: 'Te enviaremos un codigo de seis digitos, el proceso puede tardar uno o varios minutos.'
        })
    setTimeout(()=>form.submit(),3000)
}
/*function alerta(){
    swal.fire({
        title: "",
        showConfirmButton: false,
        html:`
                    <div>El numero<p id="num">...</p>es correcto? </div>
                    <button class="botonDialog" >Editar</button>  <button class="botonDialog" onclick="test()">Aceptar</button>
                    <script>
                    const tlf = document.getElementById('celphone').value;
                    document.getElementById('num').innerHTML=(tlf);
                    </script>
            `,
        
        
})
return true
function test(){
    
}
}*/
function success(){
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Has confirmado tu cuenta!!',
            showConfirmButton: false,
            timer: 2000
    })
}
