var loc = location.href;

var file = loc.substring(loc.lastIndexOf("/")+1,loc.length);

// 現在のURLリンクを持つaタグの親要素(liタグ)にactiveクラスを追加
$('.header-link').children('a[href$="'+file+'"]').parent().addClass('active');