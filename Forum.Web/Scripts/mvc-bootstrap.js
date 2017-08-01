// START
$(function () {
    fluid.setValidationStyle();
    fluid.onRenderInsert();
});


var fluid = function () {

    onRenderInsert = function (data) {
    },

    setValidationStyle = function (data) {
        // from: http://www.braindonor.net/blog/integrating-bootstrap-error-styling-with-mvcs-unobtrusive-error-validation/381/

        // Set error style for Validation Summary i.e. @Html.ValidationSummary(true)
        $('.validation-summary-errors').each(function () {
            $(this).addClass('text-error');
        });

        // Set error style for right side validation text i.e. Html.ValidationMessageFor() 
        $('span.field-validation-valid, span.field-validation-error').each(function () {
            $(this).addClass('help-inline');
        });

        // Set error style for Lable and input control i.e. Html.LabelFor and Html.EditorFor 
        $('form').submit(function () {
            if ($(this).valid()) {
                $(this).find('div.control-group').each(function () {
                    if ($(this).find('span.field-validation-error').length === 0) {
                        $(this).removeClass('error');
                    }
                });
            }
            else {
                $(this).find('div.control-group').each(function () {
                    if ($(this).find('span.field-validation-error').length > 0) {
                        $(this).addClass('error');
                    }
                });
            }
        });

        // Set error style for server side validation errors
        $('form').each(function () {
            $(this).find('div.control-group').each(function () {
                if ($(this).find('span.field-validation-error').length > 0) {
                    $(this).addClass('error');
                }
            });
        });
    };

    // Auto Starting Point -> Not required if we are using the DOM ready event above.
    //onRenderEdit();
    //onRenderInsert();

    return {
        setValidationStyle: setValidationStyle,
        onRenderInsert: onRenderInsert
    };

}();