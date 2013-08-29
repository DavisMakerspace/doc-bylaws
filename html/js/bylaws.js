$(document).ready(function() {
    var counter_h1 = 0;
    var counter_h2 = 0;
    var counter_h3 = 0;

    $('h1, h2, h3').each(function() {
        if ( $(this).prop('tagName') == 'H1' )
        {
            counter_h1 += 1;
            counter_h2  = 0;
            counter_h3  = 0;

	    this.label = "ARTICLE " + counter_h1;

            $(this).before("<div class='index bold'>" + this.label + "</div>");
        }

        if ( $(this).prop('tagName') == 'H2' )
        {
            counter_h2 += 1;
            counter_h3  = 0;

	    this.label = "Section " + counter_h1 + "." + counter_h2;

            $(this).before("<div class='index'>" + this.label + "</div>");
        }

        if ( $(this).prop('tagName') == 'H3' )
        {
            counter_h3 += 1;

	    this.label = counter_h1 + "." + counter_h2 + "." + counter_h3;

            $(this).before("<div class='index padded'>" + this.label + "</div>");
        }
    });

    $('a').each(function() {
	var target = $(this).attr('href');
	var label  = $(target)[0].label;

	$(this).html(label);
    });
})
