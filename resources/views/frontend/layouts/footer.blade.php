<footer class="container bg-body-tertiary text-center mt-5">
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
        Ứng dụng hỗ trợ chăm sóc xe và đào tạo bằng lái HaUI
    </div>
</footer>

<!-- Jquery -->
<script src="{{ asset('frontend/js/jquery.min.js') }}"></script>
<script src="{{ asset('frontend/js/jquery-migrate-3.0.0.js') }}"></script>
<!-- Popper JS -->
<script src="{{ asset('frontend/js/popper.min.js') }}"></script>
<!-- Bootstrap JS -->
<script src="{{ asset('frontend/js/bootstrap.min.js') }}"></script>
<!-- ScrollUp JS -->
<script src="{{ asset('frontend/js/scrollup.js') }}"></script>
<!-- Easing JS -->
<script src="{{ asset('frontend/js/easing.js') }}"></script>

@stack('scripts')

<script>
    setTimeout(function() {
        $('.alert').slideUp();
    }, 10000);
    $(function() {
        // ------------------------------------------------------- //
        // Multi Level dropdowns
        // ------------------------------------------------------ //
        $("ul.dropdown-menu [data-toggle='dropdown']").on("click", function(event) {
            event.preventDefault();
            event.stopPropagation();

            $(this).siblings().toggleClass("show");


            if (!$(this).next().hasClass('show')) {
                $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
            }
            $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
                $('.dropdown-submenu .show').removeClass("show");
            });

        });
    });
</script>
