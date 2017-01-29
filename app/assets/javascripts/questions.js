
var installCKEditor = function(){
    if(document.getElementsByName('question[body]').length == 0){ return; }
    CKEDITOR.replace( 'question[body]' );
};

document.addEventListener("turbolinks:load", function () {
    installCKEditor();
});


