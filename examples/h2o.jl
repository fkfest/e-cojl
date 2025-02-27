using ElemCo

@print_input

function main()
geometry="bohr
     O      0.000000000    0.000000000   -0.130186067
     H1     0.000000000    1.489124508    1.033245507
     H2     0.000000000   -1.489124508    1.033245507"


basis = Dict("ao"=>"cc-pVDZ",
             "jkfit"=>"cc-pvtz-jkfit",
             "mp2fit"=>"cc-pvdz-rifit")
#@opt scf thr=1.e-14 maxit=2
#@run dfhf
@dfhf
#@dfints
ccmethod="dcsd"
@cc ccmethod
end
main()
