/**
 * imulus.interface.js
 *
 */


Imulus.Interface = function(){
  var Interface = this;

  Interface.init = function(){
    this.forms.init();
  };

  Interface.forms = {
    init : function(){
      this.build();
      this.style();
      this.observe();
    },

    build : function(){
      if (!elementSupportsAttribute('input', 'placeholder')) { // Add placeholder for search box
        $('input[placeholder]').each(function(index) {
          var currentValue = $(this).val($(this).attr("placeholder"));
          $(this).addClass('inactive');

          $(this).focus(function() {
            if ($(this).val() === $(this).attr("placeholder")) {
              $(this).val("").removeClass('inactive');
            }
          });

          $(this).blur(function() {
            if ($(this).val() === "") {
              $(this).val($(this).attr("placeholder")).addClass('inactive');
            }
          });
        });
      }
    },

    style : function(){
      $("#main table tbody tr:nth-child(even)").addClass("even"); // Zebra stripe tables
    },

    observe : function(){

    }
  }

  Interface.init();
};
