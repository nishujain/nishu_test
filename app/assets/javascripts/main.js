$("#mobile-number").intlTelInput({
    //autoFormat: false,
    //autoHideDialCode: false,
    //defaultCountry: "jp",
    //nationalMode: true,
    //numberType: "MOBILE",
    //onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
    //preferredCountries: ['cn', 'jp'],
    //responsiveDropdown: true,
    // utilsScript: "/assets/utils.js"
});

function search_func(value){
  $.ajax({
    url: '/profiles/unverified_number',
    data: {phone_no: value }
  })
}

