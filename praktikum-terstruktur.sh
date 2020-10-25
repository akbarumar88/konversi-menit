echo -n "Inputkan jumlah menit : "; read menit
echo

msg=''
if [[ menit -lt 60 ]]; then
	msg="$menit menit"
elif [[ menit -lt 1440 ]]; then
	let jam=menit/60
	let sisaMenit=$menit%60

	msg="$jam jam"
	# Jika ada sisa menit, maka tampilkan
	if [[ sisaMenit -gt 0 ]]; then
		msg="$msg $sisaMenit menit"
	fi
else
	let hari=menit/1440
	# Sisa menit, setelah diambil hari
	let sisaMenit=menit%1440
	let jam=sisaMenit/60
	let sisaMenitTampil=sisaMenit%60

	msg="$hari hari"
	# Jika ada sisa jam, maka tampilkan
	if [[ jam -gt 0 ]]; then
		msg="$msg $jam jam"
	fi
	# Jika ada sisa menit, maka tampilkan
	if [[ sisaMenitTampil -gt 0 ]]; then
		msg="$msg $sisaMenitTampil menit"
	fi
fi

echo $msg