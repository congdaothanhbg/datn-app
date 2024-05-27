<!-- Page level plugins -->
{{-- jquery.dataTables-1.10.21 --}}
<script src="{{ asset('backend/vendor/datatables/jquery.dataTables.js') }}"></script>
{{-- dataTables.bootstrap4.1.10 --}}
<script src="{{ asset('backend/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

<script src="{{ asset('backend/js/sweetalert-2.1.2.min.js') }}"></script>

<!-- Page level custom scripts -->
<script src="{{ asset('backend/js/demo/datatables-demo.js') }}"></script>

<!-- Page level custom scripts -->
{{-- <script src="{{asset('backend/js/demo/datatables-demo.js')}}"></script> --}}

{{-- Call the dataTables jQuery plugin --}}
<script>
    $('#dataTable').DataTable({
        "columnDefs": [{
            "orderable": false,
            "targets": [3, 4]
        }]
    });

    // sweetalert
    function deleteData(id) {}
</script>
<script>
    $(document).ready(function() {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $('.dltBtn').click(function(e) {
            var form = $(this).closest('form');
            var dataID = $(this).data('id');
            e.preventDefault();
            swal({
                title: "Bạn có chắc chắn muốn xoá bỏ mục này chứ?",
                text: "Lưu ý: Sau khi xóa, bạn sẽ không thể khôi phục dữ liệu này!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            }).then((willDelete) => {
                if (willDelete) {
                    form.submit();
                } else {
                    swal("Dữ liệu của bạn vẫn được an toàn!");
                }
            });
        })
    })
</script>
