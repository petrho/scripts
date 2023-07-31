# simple new-virtualportgroup
# na vsechny esxi

#foreach ($esxko in get-vmhost aspvm2[12345].eoutsourcing.cz,aspv1.eoutsourcing.cz) {
foreach ($esxko in get-vmhost aspvm2[12345].eoutsourcing.cz,aspv1.eoutsourcing.cz) {
  echo $esxko
  # vsude mame vSwitch0
  $vsvist = get-virtualswitch -VMHost $esxko -name vSwitch0
  #echo $vsvist
  $pogr1 = get-virtualPortGroup -VMHost $esxko -virtualswitch $vsvist -name "VM Network"
  echo $pogr1
  # mgmtnet pg
  $pogr2 = new-virtualPortGroup -virtualswitch $vsvist -name "mgmtnet" -vlanid 201
  get-virtualPortGroup -VMHost $esxko -virtualswitch $vsvist -name "mgmtnet"

}
