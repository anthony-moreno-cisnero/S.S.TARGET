//---- 	GENERAL FUNCTION -----//
// Ocultar alertas
$(document).ready(function () {
	setTimeout(function () {
		$(document.getElementById('alertFade')).fadeOut(500);
	}, 3000);

});

//##### ALERTAS #######//
function alertError(men,tit){
  toastr.error(men,tit,{
      "closeButton": true,
      "positionClass": "toast-bottom-right",
      "timeOut": "2500",
      // "preventDuplicates": true,
      "progressBar": true
    });
}
function alertSuccess(men,tit){
  toastr.success(men,tit,{
      "closeButton": true,
      "positionClass": "toast-bottom-right",
      "timeOut": "2500",
      // "preventDuplicates": true,
      "progressBar": true
    });
}
function alertInfo(men,tit){
  toastr.info(men,tit,{
      "closeButton": true,
      "positionClass": "toast-bottom-right",
      "timeOut": "2500",
      // "preventDuplicates": true,
      "progressBar": true
    });
}
function alertWarning(men,tit){
  toastr.warning(men,tit,{
      "closeButton": true,
     "positionClass": "toast-bottom-right",
      "timeOut": "2500",
      // "preventDuplicates": true,
      "progressBar": true
    });
}
//##### FIN ALERTAS #######//

//sidevavPush//
/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
} 
//Fin sidevavPush//
// menu btn //
function myFunction(x) {
  x.classList.toggle("change");
  if($('#btnMenuBar').hasClass('change') == true){
  	openNav();
  }else{
  	closeNav();
  }
} 
// fin menu btn //
function getDatingveh(){
  $.ajax({
    url: 'http://localhost/S.S.TARGET/dashboard/getDatingveh',
    type: 'GET',
    success: function (getDatingveh) {
      if (getDatingveh == 'false') {
        let print = '';
          print += `<tr>
            <td class="text-danger" colspan="6">Aún no hay registros en el sistema</td>
          </tr>`;
          $('#datingveh').html(print);
      }else{
        let getDiv = JSON.parse(getDatingveh);
        print = '';
        getDiv.forEach(result => {
          if (`${result.horsal}` == 'null') {
            print += `<tr>
              <td>${result.codemp}</td>
              <td>${result.nomemp}</td>
              <td>${result.rutemp}</td>
              <td class="text-uppercase">${result.patent}</td>
              <td>${result.horing}</td>
              <td>
                <img style="cursor: pointer;" title="Ver detalles" id="${result.codemp}" src="http://localhost/S.S.TARGET/public/icon/eye.svg" alt=""> | 
                <img style="cursor: pointer;" title="Borrar" id="${result.codemp}" src="http://localhost/S.S.TARGET/public/icon/delete.svg" alt=""> | 
                <img style="cursor: pointer;" title="Editar" id="${result.codemp}" src="http://localhost/S.S.TARGET/public/icon/edit-3.svg" alt=""> | 
                <img style="cursor: pointer;" title="Salida" id="${result.codemp}" src="http://localhost/S.S.TARGET/public/icon/arrow-right.svg" alt="" onclick="regSalida(this);">
              </td>
            </tr>`;

          }else{
            print += `<tr>
              <td>${result.codemp}</td>
              <td>${result.nomemp}</td>
              <td>${result.rutemp}</td>
              <td>${result.patent}</td>
              <td>${result.horing}</td>
              <td class="text-danger">${result.horsal}</td>
            </tr>`;
          }
        $('#datingveh').html(print);
        });
      }
    }
  });
}

$('#searchFiltro').keyup(function () {
  if ($('#searchFiltro').val()) {
    let a = $('#searchFiltro').val();
    $.ajax({
      url: 'http://localhost/S.S.TARGET/dashboard/likeFiltro',
      type: 'POST',
      data: { a },
      success: function (result) {
        if (result == 'false') {
          // alert('no hay registros');
          let print = '';
          print += `<tr>
            <td class="text-danger" colspan="6">No hay resultados...</td>
          </tr>`;
          $('#datingveh').html(print);
        }else{
          let likeFiltro = JSON.parse(result);
          let print = '';

          likeFiltro.forEach(result => {
            if (`${result.horsal}` == 'null') {
              print += `<tr>
                <td>${result.codemp}</td>
                <td>${result.nomemp}</td>
                <td>${result.rutemp}</td>
                <td class="text-uppercase">${result.patent}</td>
                <td>${result.horing}</td>
                <td>
                  <img style="cursor: pointer;" title="Ver detalles" id="${result.codemp}" src="http://localhost/S.S.TARGET/public/icon/eye.svg" alt=""> | 
                  <img style="cursor: pointer;" title="Borrar" id="${result.codemp}" src="http://localhost/S.S.TARGET/public/icon/delete.svg" alt=""> | 
                  <img style="cursor: pointer;" title="Editar" id="${result.codemp}" src="http://localhost/S.S.TARGET/public/icon/edit-3.svg" alt=""> | 
                  <img style="cursor: pointer;" title="Salida" id="${result.codemp}" src="http://localhost/S.S.TARGET/public/icon/arrow-right.svg" alt="" onclick="regSalida(this);">
                </td>
              </tr>`;
            }else{
              print += `<tr>
                <td>${result.codemp}</td>
                <td>${result.nomemp}</td>
                <td>${result.rutemp}</td>
                <td>${result.patent}</td>
                <td>${result.horing}</td>
                <td class="text-danger">${result.horsal}</td>
              </tr>`;
            }
          });
        $('#datingveh').html(print);
        }
      }
    });
  } else {
    getDatingveh();
  }
});

function regSalida(e) {
  let r =  confirm('Are you sure?');
  if (r == true) {

    let id = e.id;
    $.ajax({
      url: 'http://localhost/S.S.TARGET/dashboard/regSalida',
      type: 'POST',
      data: {id},
      success: function(regSalida) {
        if (regSalida == 'true') {
          getDatingveh();
        }else{
          let tit = 'Error al actualizar';
          let men = 'No se pudo actualizar el registro debe contactar a un administrador del sistema.';
          alertError(men,tit);
        }
      }
    });
  }
}

$('#formSearchId').submit(function() { 
  event.preventDefault();
  if ($('#searchId').val()) {
    let id = $('#searchId').val();
    $.ajax({
      url: 'http://localhost/S.S.TARGET/dashboard/getatemp',
      type: 'POST',
      data: {id},
      success: function(getatemp) {
        if (getatemp == 'false') {
          $('#formEmpIngVeh')[0].reset();
          let tit = 'Usuario no encontrado';
          let men = 'El sistema no tiene registrado a este usuario debe contactar a un administrador del sistema.';
          alertWarning(men,tit);
        }else{
           let a = JSON.parse(getatemp);
            a.forEach(result => {
              $('#nom1').val(`${result.nom1}`);
              $('#ape1').val(`${result.ape1}`);
              $('#rut').val(`${result.rut}`);
              $('#pat').val(`${result.pat}`);
              let tit = 'Usuario activo';
              let men = ``;
              alertSuccess(men,tit);
            });
        }
      }
    });
  }else{
    $('#formEmpIngVeh')[0].reset();
    let tit = 'Campo ID vacío';
    let men = 'Debes colocar un ID valido';
    alertError(men,tit);
  }
});

function getEmpresas() {
  $.ajax({
    url: 'http://localhost/S.S.TARGET/dashboard/getEmpresas',
    type: 'GET',
    success: function (getEmpresas) {
      if (getEmpresas == 'false') {
       // alerta no se pudo caragar las empresas---
      }else{
        let a = JSON.parse(getEmpresas);
        print = '';
        a.forEach(result => {
          print += `<option value="${result.coddetpar}">${result.detpar}</option>`;
        $('#empresas').html(print);
        });
      }
    }
  });
}

$('#formEmpIngVeh').submit(function() {
  event.preventDefault();
  let nom1 = $('#nom1').val();
  let ape1 = $('#ape1').val();
  let rut = $('#rut').val();
  let pat = $('#pat').val();
  let empresas = $('#empresas').val();
  let obs = $('#obs').val();
  if (nom1 == '' || ape1 == '' || rut == '' || pat == '' || empresas == '') {
    let tit = 'Falta información:';
    let men = 'Los campos "Nombre, Apellido, RUT, Patente y Empresa son obligatorios."';
    alertWarning(men,tit);
  }else{
     $.ajax({
      url: 'http://localhost/S.S.TARGET/dashboard/validaReg',
      type: 'POST',
      data: {rut},
      success: function(validaReg) {
        alert(validaReg);
        // if (validaReg == 'false') {
        //   let tit = 'Usuario no encontrado';
        //   let men = 'aasda';
        //   alertWarning(men,tit);
        // }else{
        //   let a = JSON.parse(validaReg);
        //   a.forEach(result => {
        //     $('#nom1').val(`${result.nom1}`);
        //     $('#ape1').val(`${result.ape1}`);
        //     $('#rut').val(`${result.rut}`);
        //     $('#pat').val(`${result.pat}`);
        //     let tit = 'Usuarios con registro activo';
        //     let men = `El usuario <b>${result.nom1} ${result.ape1}</b> tiene un registro sin cerrar del dia `;
        //     alertWarning(men,tit);
        //   });
        // }
      }
    });
  }
});