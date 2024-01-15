document.addEventListener('DOMContentLoaded', function() {
    var modal = document.getElementById("modal");
    var modalImg = document.getElementById("modal-img");

    modal.style.display = "none";

    document.querySelectorAll('.gallery-img').forEach(img => {
        img.onclick = function() {
            var highResImgSrc = this.getAttribute('data-hi-res'); // Get high-res image source
            modalImg.src = highResImgSrc; // Set high-res image in modal
            modal.style.display = "block";
        }
    });

    var span = document.getElementsByClassName("close")[0];
    span.onclick = function() {
        modal.style.display = "none";
    };
});
