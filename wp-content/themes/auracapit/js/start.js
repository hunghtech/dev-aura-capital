var AURA = AURA || {};
var showMenu = false;
var showSearch = false;
$(document).ready(function () {
    AURA.openNav();
    AURA.closeNav();
    var wow = new WOW();
    wow.init();
    $(".timeline .event").hover(
            function () {
                var type = $(this).attr('data-type');
                if (type == "other")
                {
                    $(".block-commitment .commitment-item").each(function () {
                        $(this).show();
                    });
                    $('.owl-controls').show();
                } else {
                    $(".block-commitment .commitment-item").each(function () {
                        $(this).hide();
                    });
                    $('.block-commitment .' + type).show();
                    $('.slick-dots').hide();
                }

                $('.timeline .event').removeClass('active');
                $(this).addClass('active');
            }, function () {
        $('.timeline .event').removeClass('active');
    }
    );
    $("#aura-capital .item").hover(
            function () {
                $(this).addClass('active');
            }, function () {
        $(this).removeClass('active');
    }
    );
    $("body").delegate(".icon-search", "click", function () {
        if (!showSearch) {
            $(".form-search-header").fadeIn(500);
            showSearch = true;
        } else {
            $(".form-search-header").fadeOut(500);
            showSearch = false;
        }

    });

    
    $(".commitment-carousel").slick({
        dots: true, autoplay: false, 
        centerMode: true, 
        infinite: false,
        arrows: false,
        slidesPerRow: 2,
        rows: 2,
        centerPadding: '150px',
        responsive: [
        {
          breakpoint: 478,
          settings: {
            slidesPerRow: 1,
            rows: 1,
          }
        }]
    });

    $(".regular").slick({
        dots: true, autoplay: false, infinite: true, centerMode: true, arrows: false,
        centerPadding: '350px',
        slidesToShow: 1, slidesToScroll: 1,
        responsive: [
            {breakpoint: 1200, settings: {slidesToShow: 1, centerPadding: '350px', slidesToScroll: 1, }},
            {breakpoint: 992, settings: {slidesToShow: 1, centerPadding: '100px', slidesToScroll: 1, }},
            {breakpoint: 768, settings: {slidesToShow: 1, centerPadding: '50px', slidesToScroll: 1}},
            {breakpoint: 480, settings: {slidesToShow: 1, centerPadding: '0px', slidesToScroll: 1}}
        ]
    });

    $(".regular-category").slick({
        dots: true, autoplay: false, infinite: false, centerMode: true, arrows: false,
        centerPadding: '30px',
        slidesToShow: 1, slidesToScroll: 1,
        responsive: [
            {breakpoint: 1200, settings: {slidesToShow: 1, centerPadding: '30px', slidesToScroll: 1, }},
            {breakpoint: 992, settings: {slidesToShow: 1, centerPadding: '100px', slidesToScroll: 1, }},
            {breakpoint: 768, settings: {slidesToShow: 1, centerPadding: '50px', slidesToScroll: 1}},
            {breakpoint: 480, settings: {slidesToShow: 1, centerPadding: '0px', slidesToScroll: 1}}
        ]
    });

    var offset = 200;
    $(window).scroll(function () {
        if ($(this).scrollTop() > offset) {
            if (!showMenu)
                $('.back-to-top').fadeIn(400);
        } else {
            $('.back-to-top').fadeOut(400);
        }
    }
    );
    $('.back-to-top').click(function (event) {
        event.preventDefault();
        $('html, body').animate({
            scrollTop: 0
        }
        , 600);
        return false;
    })

    $('#commitment-item').owlCarousel({
        autoPlay: false,
        items: 2,
        addClassActive: true,
        itemsTablet: 1,
        margin: 1000,
        stagePadding: 1000,
        itemsDesktop: [1199, 2],
        itemsDesktopSmall: [980, 2],
        itemsTablet: [768, 1],
        itemsTablet: [767, 2],
        itemsTabletSmall: [480, 2],
        itemsMobile: [479, 1],
        stopOnHover: true
    });

})

AURA.openNav = function () {
    $("body").delegate(".toggle-menu", "click", function () {
        $("#mySidenav").fadeIn(500);
        $("body").addClass('no-scroll');
        showMenu = true;
        $(".oveplay").show();
        $(".closebtn").show();
    });
}

AURA.closeNav = function () {
    $("body").delegate(".closebtn", "click", function () {
        $("#mySidenav").fadeOut(500);
        $("body").removeClass('no-scroll');
        $(".oveplay").hide();
        $(".closebtn").hide();
        showMenu = false;
    });
}

window.onscroll = function (e)
{
    var winheight = window.innerHeight || (document.documentElement || document.body).clientHeight;
    var docheight = $(document).height();
    var scrollTop = window.pageYOffset || (document.documentElement || document.body.parentNode || document.body).scrollTop;
    var trackLength = docheight - winheight;
    var pctScrolled = Math.floor(scrollTop / trackLength * 100);
    if (pctScrolled > 0) {
        //$(".navbar").addClass('stuck');
    } else {
        $(".navbar").removeClass('stuck');
    }
}
$(window).load(function () {
    setTimeout(function () {
        $(".transition-curtains").addClass('trans-in');
    }, 500);
    setTimeout(function () {
        $(".transition-curtains").addClass('hide');
    }, 2000);
});

var isMobile = {
    Android: function () {
        return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function () {
        return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function () {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function () {
        return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function () {
        return navigator.userAgent.match(/IEMobile/i) || navigator.userAgent.match(/WPDesktop/i);
    },
    any: function () {
        return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
    }
};