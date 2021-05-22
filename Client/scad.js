$(function(){

 $(".Src").click(function(){
   // Berichtje
   $(".Info").hide();
   $("#Piepje")[0].pause();
   $("#Piepje")[0].currentTime = 0;
   $(this).parent().prepend('<span class="Info">Staat op het clipboard!</span>');
   $(".Info").css("width",$(this).parent().width());
   setTimeout(function(){
    $(".Info").hide();
   },4000);

  $.get($(this).attr("data-scad"), function(data) {
   var hiddenCopy = document.createElement('div');
   hiddenCopy.innerHTML = "<pre>"+data+"</pre>";
   hiddenCopy.style.position = 'absolute';
   hiddenCopy.style.left = '-9999px';
   document.body.appendChild(hiddenCopy);
   var CopyRange = document.createRange();
   CopyRange.selectNode(hiddenCopy);
   window.getSelection().addRange(CopyRange);
   document.execCommand('copy');
   document.body.removeChild(hiddenCopy);
   $("#Piepje")[0].play();
  },null,"text");

 });

});

