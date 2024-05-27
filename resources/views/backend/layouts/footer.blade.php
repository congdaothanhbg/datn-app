<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Ứng dụng hỗ trợ chăm sóc xe và đào tạo bằng lái HaUI</span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
{{-- jquery-3.5.1 --}}
{{-- <script src="{{ asset('backend/vendor/jquery/jquery.min.js') }}"></script> --}}
<script src="{{ asset('backend/vendor/jquery/jquery-3.7.1.min.js') }}"></script>

{{-- bootstrap-4.5.0 --}}
<script src="{{ asset('backend/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
{{-- <script src="{{ asset('backend/vendor/bootstrap/js/bootstrap.bundle-5.2.3.min.js') }}"></script> --}}

<!-- Core plugin JavaScript-->
{{-- jquery.easing-1.4.1 --}}
<script src="{{ asset('backend/vendor/jquery-easing/jquery.easing.min.js') }}"></script>

<!-- Custom scripts for all pages-->
{{-- sb-admin-2-4.1.1 --}}
<script src="{{ asset('backend/js/sb-admin-2.min.js') }}"></script>

@stack('scripts')

<script>
    setTimeout(function() {
        $('.alert').slideUp();
    }, 10000);
</script>
