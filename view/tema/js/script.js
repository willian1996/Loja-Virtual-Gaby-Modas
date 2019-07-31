  $(document).ready(function() {
    $('#cadcliente').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            cli_nome: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Por favor, forneça seu primeiro nome'
                    }
                }
            },
             cli_sobrenome: {
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Por favor, forneça seu sobrenome'
                    }
                }
            },
            cli_email: {
                validators: {
                    notEmpty: {
                        message: 'Por favor forneça o seu e-mail'
                    },
                    emailAddress: {
                        message: 'Por favor, forneça um endereço de email válido'
                    }
                }
            },
            cli_celular: {
                validators: {
                    notEmpty: {
                        message: 'Por favor, forneça seu número do whatsapp'
                    },
                    regexp: {
                        regexp: /^(?:(?:\+|00)?(55)\s?)?(?:\(?([1-9][0-9])\)?\s?)?(?:((?:9\d|[2-9])\d{3})\-?(\d{4}))$/,
                        message: 'Por favor, forneça um número de Whatsapp com DDD sem o zero'
                    },
//                    phone: {
//                        country: 'BR',
//                        message: 'Por favor, forneça um número de whatsapp válido com DDD'
//                    }
                }
            },

             cli_fone: {
                validators: {
//                    notEmpty: {
//                        message: 'Por favor, forneça seu número do whatsapp'
//                    },
                    regexp: {
                        regexp: /^(?:(?:\+|00)?(55)\s?)?(?:\(?([1-9][0-9])\)?\s?)?(?:((?:9\d|[2-9])\d{3})\-?(\d{4}))$/,
                        message: 'Por favor, forneça um número de telefone com DDD sem o zero'
                    },
//                    phone: {
//                        country: 'BR',
//                        message: 'Por favor, forneça um número de whatsapp válido com DDD'
//                    }
                }
            },
            cli_endereco: {
                validators: {
                     stringLength: {
                        min: 8,
                    },
                    notEmpty: {
                        message: 'Por favor, forneça seu rua'
                    }
                }
            },
            cli_cidade: {
                validators: {
                     stringLength: {
                        min: 4,
                    },
                    notEmpty: {
                        message: 'Por favor, selecione sua cidade'
                    }
                }
            },
            cli_cep: {
                validators: {
//                    notEmpty: {
//                        message: 'Por favor, forneça seu CEP'
//                    },
                    regexp: {
                        regexp: /^\d{8}$/,
                        message: 'Por favor, forneça um CEP válido'
                    },

                }
            },
            comment: {
                validators: {
                      stringLength: {
                        min: 10,
                        max: 200,
                        message:'Please enter at least 10 characters and no more than 200'
                    },
                    notEmpty: {
                        message: 'Please supply a description of your project'
                    }
                    }
                }
            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#cadcliente').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});
