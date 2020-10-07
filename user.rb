require_relative  'cuenta_bancaria'
clase  Usuario
  attr_accessor  : nombre ,  : cuentas
  def  initialize ( nombre ,  cuentas  =  [ ] )
    @nombre  =  nombre
    @cuentas  =  cuentas
  fin
  def  saldo_total
    total =  @cuentas . mapa  { | x | x . saldo  } . suma
    pone  "saldo total # { total } "
  fin
fin

cuentas_banco  =  [ CuentaBancaria . nuevo ( 'bci' ,  1234456789 ,  100000 ) ,  CuentaBancaria . nuevo ( 'Santander' ,  123144544 ,  50000 ) ,  CuentaBancaria . nuevo ( 'bice' ,  543212 ,  10 ) ]

usuario  =  Usuario . nuevo ( "elias" ,  cuentas_banco )
usuario . saldo_total