/*!

 =========================================================
 * Paper Bootstrap Wizard - v1.0.2
 =========================================================
 
 * Product Page: https://www.creative-tim.com/product/paper-bootstrap-wizard
 * Copyright 2017 Creative Tim (#)
 * Licensed under MIT (https://github.com/creativetimofficial/paper-bootstrap-wizard/blob/master/LICENSE.md)
 
 =========================================================
 
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 */

// Paper Bootstrap Wizard Functions

searchVisible = 0;
transparent = true;

        $(document).ready(function(){

            /*  Activate the tooltips      */
            $('[rel="tooltip"]').tooltip();

            // Code for the Validator
            var $validator = $('.wizard-card form').validate({
        		  rules: {
        		  
        		    stuid: {
        		      required: true,
        		      
                    },
                    name: {
                        required: true,
                        
                    },
                    gender: {
                        required: true,
                        
                        
                    },
                    nationality: {
                        required: true,
                        
                    },
                    number: {
                        required: true,
                        
                    },
                    shixianpai: {
                        required: true
                    },
                    shixididian: {
                        required: true
                    }

                    ,
                    money: {
                        required: true
                    }
                    ,
                    zhusu: {
                        required: true
                    }
                },
            });
            var $validator = $('.finish form').validate({
                rules: {

                    stuid: {
                        required: true,

                    },
                    name: {
                        required: true,

                    },
                    gender: {
                        required: true,
                        

                    },
                    nationality: {
                        required: true,

                    },
                    number: {
                        required: true,

                    },
                    shixianpai: {
                        required: true
                    },
                    shixididian: {
                        required: true
                    }
                    ,
                    money: {
                        required: true
                    }
                    ,
                    zhusu: {
                        required: true
                    }
                },
            });

            // Wizard Initialization
          	$('.wizard-card').bootstrapWizard({
                'tabClass': 'nav nav-pills',
                'nextSelector': '.btn-next',
                'previousSelector': '.btn-previous',

                onNext: function(tab, navigation, index) {
                	var $valid = $('.wizard-card form').valid();
                	if(!$valid) {
                		$validator.focusInvalid();
                		return false;
                	}
                },

                onInit : function(tab, navigation, index){

                  //check number of tabs and fill the entire row
                  var $total = navigation.find('li').length;
                  $width = 100/$total;

                  navigation.find('li').css('width',$width + '%');

                },

                onTabClick : function(tab, navigation, index){

                    var $valid = $('.wizard-card form').valid();

                    if(!$valid){
                        return false;
                    } else{
                        return true;
                    }

                },

                onTabShow: function(tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index+1;

                    var $wizard = navigation.closest('.wizard-card');

                    // If it's the last tab then hide the last button and show the finish instead
                    if($current >= $total) {
                        $($wizard).find('.btn-next').hide();
                        $($wizard).find('.btn-finish').show();
                    } else {
                        $($wizard).find('.btn-next').show();
                        $($wizard).find('.btn-finish').hide();
                    }

                    //update progress
                    var move_distance = 100 / $total;
                    move_distance = move_distance * (index) + move_distance / 2;

                    $wizard.find($('.progress-bar')).css({width: move_distance + '%'});
                    //e.relatedTarget // previous tab

                    $wizard.find($('.wizard-card .nav-pills li.active a .icon-circle')).addClass('checked');

                }
	        });


                // Prepare the preview for profile picture
                $("#wizard-picture").change(function(){
                    readURL(this);
                });

                $('[data-toggle="wizard-radio"]').click(function(){
                    wizard = $(this).closest('.wizard-card');
                    wizard.find('[data-toggle="wizard-radio"]').removeClass('active');
                    $(this).addClass('active');
                    $(wizard).find('[type="radio"]').removeAttr('checked');
                    $(this).find('[type="radio"]').attr('checked','true');
                });

                $('[data-toggle="wizard-checkbox"]').click(function(){
                    if( $(this).hasClass('active')){
                        $(this).removeClass('active');
                        $(this).find('[type="checkbox"]').removeAttr('checked');
                    } else {
                        $(this).addClass('active');
                        $(this).find('[type="checkbox"]').attr('checked','true');
                    }
                });

                $('.set-full-height').css('height', 'auto');

            });



         //Function to show image before upload

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
                }
                reader.readAsDataURL(input.files[0]);
            }
}



$("#btnsubmit").click(function () {

    var pro = $('#pro').val();
    var name = $('#name').val();
    var stuid = $('#stuid').val();
    var gender = $('#gender').val();
    var nationality = $('#nationality').val();
    var number = $('#number').val();
    var shixianpai = $('#shixianpai').val();
    var shixididian = $('#shixididian').val();
    var money = $('#money').val();
    var zhusu = $('#zhusu').val();
    var msg = $('#msg').val();

    var data = {
        name: name, pro: pro, stuid: stuid, gender: gender,
        nationality: nationality, number: number, shixianpai: shixianpai,
        shixididian: shixididian, money: money, zhusu: zhusu,msg:msg
    };
    if (money != "" && zhusu != "") {
        $.ajax({
            type: "post",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            url: "/Handler.ashx?method=storage",
            data: data,
            dataType: "text",
            success: function (data) {
                aler(data);
            },
            error: function (err) {
                aler(data);
            }
        });
    } else {
        aler("msgerr");
        
    }

    return false;
});

