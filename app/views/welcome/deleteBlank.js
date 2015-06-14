$(function(){
    var setElm = $('span');
    $(window).load(function(){
        setElm.each(function(){
            var self = $(this);
            $(this).parent().append(self);
        });
    });
});
