(function ($) {
    $(window).load(function () {
        EqualSizer('.pro-cate .item .wrap-item');
        asideRe();
        height_pop();
    });
    $(window).resize(function () {
        asideRe();
        height_pop();
    });
    $(function () {
        myfunload();
        sp_quantity();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").not(".home").clone().appendTo($("#menuMobiles"));
    $("#menuMobiles input").remove();
    $("#menuMobiles > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobiles li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu > li:last-child").addClass("last");
    $("#menu > li:first-child").addClass("fisrt");

    $("#menu > li").find("ul").addClass("menu-level");

    $('#menu li').hover(function () {
        $(this).children('.sub-menu').stop(true, false, true).slideToggle(300);
    });

    /*=====  =====*/
    $('.carousel-inner').find('.item').first().addClass('active');
    $('.carousel-indicators li').first().addClass('active');


    /* accodion tin van */
    $(".cauhoi-content").hide();
    //$(".cau-hoi").append('<i class="fa fa-plus"></i>')
    // Áp dụng sự kiện click vào thẻ h3
    $(".cau-hoi").click(function () {
        // chọn .accordion (do phần tử đi đi ngay sau phần tử h3 nên ta dùng .next())
        $(".cau-hoi").removeClass('active');
        $(".cau-hoi i").removeClass('fa-minus');
        $(this).children("i").addClass('fa-minus');
        $(this).addClass('active');
        $accordion = $(this).next();
        // Kiểm tra nếu đang ẩn thì sẽ hiện và ẩn các phần tử khác
        // Nếu đang hiện thì click vào h3 sẽ ẩn
        if ($accordion.is(':hidden') === true) {
            $(".cauhoi-content").slideUp();
            $accordion.slideDown();
            $(this).addClass('active');
            $(this).children("i").addClass('fa-minus');
        } else {
            $accordion.slideUp();
            $(".cau-hoi").removeClass('active');
            $(".cau-hoi i").removeClass('fa-minus');
        }
    });

    $('#sliderPartner').owlCarousel({
        margin: 15,
        loop: true,
        autoplaySpeed: 2000,
        nav: true,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 2
            },
            440: {
                items: 2
            },
            700: {
                items: 4
            },
            1000: {
                items: 5
            },
            1200: {
                items: 6
            },
        }
    });


    $('#sliderNews').owlCarousel({
        margin: 20,
        loop: true,
        autoplaySpeed: 4000,
        nav: false,
        dots:true,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            440: {
                items: 2
            },
        }
    });

    $('#slideProduct .slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '#slideProduct .slider-nav'
    });
    $('#slideProduct .slider-nav').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        asNavFor: '#slideProduct .slider-for',
        dots: false,
        arrows: true,
        focusOnSelect: true,
    });
  
    $('.silderProduct').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        autoplay: true,
        vertical: true,
        dots: false,
        arrows: false,
        autoplaySpeed: 2000,
        responsive: [
        {
            breakpoint: 992,
            settings: {
                vertical: false,
                arrows: false,
                slidesToShow: 3
            }
        },

         {
             breakpoint: 700,
             settings: {
                 vertical: false,
                 arrows: false,
                 slidesToShow: 2
             }
         },
        {
            breakpoint: 450,
            settings: {
                vertical: false,
                arrows: false,
                slidesToShow: 1
            }
        }
        ]
    });

}





/*=========================================================================*/
//================== scroll top
$(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
        $('.scroll-to-top').fadeIn();
    } else {
        $('.scroll-to-top').fadeOut();
    }
});

$(window).scroll(function () {
    if ($(this).scrollTop() > 138) {
        $('.bot-head').addClass('bot-head-scroll');
    }
    else {
        $('.bot-head').removeClass('bot-head-scroll');
    }
});

$('.scroll-to-top').on('click', function (e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: 0 }, 800);
    return false;
});


function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function() {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};
function EqualSizer_1(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function () {
        DoEqualSizer(myclass);
    });
};
function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function() { 
        DoEqualSizer(myclass); 
    });
};
//==================


/** popup **/
$('.dk').click(function () {
    $('#main-content').append('<div id="overlay-screen-active">');
    $('.popup .popup-content').css('top', '30px');
});
$(document).on('click', ".popup-btn-close, #overlay-screen-active", function () {
    $('.popup-content').css('top', '-250%');
    $('#overlay-screen-active').fadeOut();
    $('#overlay-screen-active').remove();
    return false;
});
$(document).ready(function () {
    $(window).resize(function () {
        var winwidth = $(window).width();
        $('.dk').click(function () {
            $('#main-content').append('<div id="overlay-screen-active">');
            $('#overlay-screen-active').remove();
            $('.popup .popup-content').css('top', '30px');
        });
        $(document).on('click', ".popup-btn-close, #overlay-screen-active", function () {
            $('.popup-content').css('top', '-250%');
            $('#overlay-screen-active').fadeOut();
            $('#overlay-screen-active').remove();
            return false;
        });
    }).resize();
});

$('.dn').click(function () {
    $('#main-content').append('<div id="overlay-screen-active">');
    $('.popup_1 .popup-content').css('top', '30px');
});
$(document).ready(function () {
    $(window).resize(function () {
        var winwidth = $(window).width();
        $('.dn').click(function () {
            $('#main-content').append('<div id="overlay-screen-active">');
            $('#overlay-screen-active').remove();
            $('.popup_1 .popup-content').css('top', '30px');
        });
    }).resize();
});

function height_pop() {
    var n = $(window).height();
    $('.scroll-popup').each(function () {
        var x = $(this).children('.popup-content').height();
        if (x > n) {
            $(this).children('.popup-content').css('max-height', n - 50);
            //$(this).children('.popup-content').css('height', 'auto');
        }
        else {
            $(this).children('.popup-content').css('max-height', n - 50);
        }
    })
    //$('.popup-content').css('max-height', n - 50);
}
function sp_quantity() {
    $(".sp-btn").on("click", function () {
        var $button = $(this),
            $input = $button.closest('.sp-quantity').find("input.quntity-input");
        var oldValue = $input.val(),
            newVal;
        console.log(oldValue);

        if ($(this).attr('data-id') == 'sp-plus') {
            newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 0) {
                newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        $input.val(newVal);
    });
}

function asideRe() {
    if ($(window).width() <= 991) {
        $('.aside section ul').hide();
        $('.aside section h3 i').remove();
        $('.aside section h3').append('<i class="fa fa-plus"></i>');
        $('.aside section h3 i').click(function () {
            var n = $(this).parent();
            n.next('ul').stop(true,false,true).slideToggle(300);
        });
    }
    else {
        $('.aside section ul').show();
        $('.aside section h3 i').remove();
    }
}