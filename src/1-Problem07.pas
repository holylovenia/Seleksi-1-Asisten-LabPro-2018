program Problem07_1;
{* Shevalda Gracielira/13516134
 * Program yang mengeluarkan hasil permainan suit yang tidak pernah kalah
 *
 * Aturan permainan suit
 * Batu kalah dengan kertas
 * Kertas kalah dengan gunting
 * Gunting kalah dengan batu
 *
 * Pemain hanya dapat mengeluarkan 'batu' atau 'kertas'
 * Asumsi inputan dari pengguna 'gunting', 'batu', 'kertas' saja
 *}

var
    pilihan_tuan_vin : string;
    pilihan_pemain : string;

begin
    write('Tuan Vin mengeluarkan: ');
    readln(pilihan_tuan_vin);

    if pilihan_tuan_vin = 'gunting' then    // Tuan Vin memilih 'gunting'
        pilihan_pemain := 'batu'            // pemain menang dengan mengeluarkan 'batu'
    else                                    // Tuan Vin memilih 'batu' atau 'kertas'
		pilihan_pemain := 'kertas';             // pemain akan menang/seri dengan mengeluarkan 'kertas'

	writeln('Anda mengeluarkan: ', pilihan_pemain);
end.
