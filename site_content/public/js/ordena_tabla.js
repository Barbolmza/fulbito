$(document).ready(function () {
    // Función para ordenar la tabla
    function sortTable(table, column, order) {
        var tbody = table.find('tbody');
        var rows = tbody.find('tr').toArray();

        rows.sort(function (a, b) {
            var aValue = $(a).find('td:eq(' + column + ')').text();
            var bValue = $(b).find('td:eq(' + column + ')').text();

            // Convertir las cadenas en valores numéricos si es posible
            var aNum = parseFloat(aValue);
            var bNum = parseFloat(bValue);

            if (!isNaN(aNum) && !isNaN(bNum)) {
                // Si ambos son números, comparar como números
                aValue = aNum;
                bValue = bNum;
            } else {
                // Si al menos uno no es número, comparar como cadenas
                aValue = aValue.toLowerCase(); // Ignorar mayúsculas/minúsculas
                bValue = bValue.toLowerCase(); // Ignorar mayúsculas/minúsculas
            }

            if (order === 'asc') {
                return aValue < bValue ? -1 : aValue > bValue ? 1 : 0;
            } else {
                return bValue < aValue ? -1 : bValue > aValue ? 1 : 0;
            }
        });

        tbody.empty();
        $.each(rows, function (index, row) {
            tbody.append(row);
        });
    }



    // Manejar clic en el encabezado de la tabla para ordenar
    $('.datagrid table thead th').click(function () {
        var table = $(this).closest('table');
        var column = $(this).index();
        var order = 'asc';

        if ($(this).hasClass('sorted-asc')) {
            order = 'desc';
        }

        // Eliminar clases de orden previas
        table.find('thead th').removeClass('sorted-asc sorted-desc');

        // Agregar clase de orden actual
        $(this).addClass('sorted-' + order);

        // Ordenar la tabla
        sortTable(table, column, order);
    });
});