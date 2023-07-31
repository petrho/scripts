# simple New-VirtualPortGroup
# na vsechny esxi
#$esxko = get-vmhost aspvm2[12345].eoutsourcing.cz,aspv1.eoutsourcing.cz
$esxko = get-vmhost aspvm22.eoutsourcing.cz
# vsude mame vSwitch0
$vsvist = get-virtualswitch -VMHost $esxko -name vSwitch0
$pogr1 = Get-VirtualPortGroup -VMHost $esxko -VirtualSwitch $vsvist -name "VM Network"

# mgmtnet
$pogr2 = new-VirtualPortGroup -VMHost $esxko -VirtualSwitch $vsvist -name "mgmtnet"

echo $vsvist
echo $pogr2
