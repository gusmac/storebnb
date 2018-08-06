function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var storageAddress = document.getElementById('storage_space_address_city');

    if (storageAddress) {
      var autocomplete = new google.maps.places.Autocomplete(storageAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(storageAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
