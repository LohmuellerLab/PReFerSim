## Compiling the program
gcc -g -o PReFerSim PReFerSim.c -lm -lgsl -lgslcblas -O3

RandomSeed=1

## Some examples on how to run the program

## 1) Simulating neutral variation evolving under a non-equilibrium demographic scenario
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile1.txt 1

## 2) Simulating variants whose selection coefficients are sampled from a gamma distribution of fitness effects (Boyko et al., 2008).
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile2.txt 2

## 3) Simulating variants whose selection coefficients are sampled from a DFE with discrete values.
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile3.txt 3

## 4) Simulating variants whose selection coefficients are sampled from a gamma distribution of fitness effects (Boyko et al., 2008) and with changing inbreeding coefficients through generations.
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile4.txt 4

## 5) Simulating variants whose selection coefficients are sampled from a beta distribution of fitness effects.
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile5.txt 5

## 6) Simulating recessive variants whose selection coefficients are sampled from a gamma distribution of fitness effects (Boyko et al., 2008)
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile6.txt 6

## 7) Simulating variants whose selection coefficients are sampled from a distribution of fitness effects with uniform intervals.
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile7.txt 7

## 8) Simulating variants whose selection coefficients are sampled from a log-normal distribution of fitness effects.
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile8.txt 8

## 9) Simulating variants whose selection coefficients are sampled from a gamma distribution of fitness effects (Boyko et al., 2008) and where there has been a relaxation in the selection coefficients.
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile9.txt 9

## 10) This is similar to 9), but here we relax the selection coefficients in a different way as defined by the parameter RelaxationSelectionType.
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile10.txt 10

## 11) Printing SFSs across time
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile11.txt 11


###################################################### 11)

## Here is an example of how to run PReFerSim to print allele frequencies when you condition on present-day POPULATION allele frequencies.
## This requires running PReFerSim twice as outlined in the manual.

# Set the number of the random seed.

RANDOM_SEED=1
# First run of PReFerSim. You must set the PrintSegSiteInfo parameter to 1 (see ParameterFile 11) to produce an outfile listing all mutations and their frequencies.

GSL_RNG_SEED=$RANDOM_SEED GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile11.txt 11

# Run perl script to extract out the allele IDs of variants that have the frequency you are interested. Here we specify that we are interested in alleles with a frequency between 0 and 0.1 from the file MiniTest/Output.11.full_out.txt (this is the outfile from PrintSegSiteInfo). We print these allele ids to a file called Alleles11.txt.

perl GetListOfRunsWhereFrequencyMatches.pl 0.0 0.1 MiniTest/Output.11.full_out.txt MiniTest/Alleles11.txt

# Second run of PReFerSim. This takes the list of allele IDs you want trajectories for (Alleles11.txt) and re-runs PReFerSim using the same random seed.

GSL_RNG_SEED=$RANDOM_SEED GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile11_B.txt 11


###################################################### End of 11)

## 12) An example on how to simulate variants with a fixed selection coefficient where we skip the burn-in period and the we start with a number of
## variants at each frequency i follows a Poisson distribution with mean Theta * F(i,2Ns) as defined in equation (2) from Bustamante et al (2001) Genetics.
time GSL_RNG_SEED=$RandomSeed GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile12.txt 12

###################################################### 13)

## Here is another example of how to run PReFerSim to print allele frequencies when you condition on present-day SAMPLE allele frequencies.
## This requires running PReFerSim twice as outlined in the manual.

# Set the number of the random seed.

RANDOM_SEED=1
# First run of PReFerSim. You must set the PrintSegSiteInfo parameter to 1 (see ParameterFile 11) to produce an outfile

GSL_RNG_SEED=$RANDOM_SEED GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile13.txt 13

# Run perl script to extract out the allele IDs of variants that have the frequency you are interested. Here we specify

perl GetListOfRunsWhereFrequencyMatches.pl 0.0 0.1 MiniTest/Output.13.full_out.txt MiniTest/Alleles13.txt

# Second run of PReFerSim. This takes the list of allele IDs you want trajectories for (Alleles11.txt) and re-runs PReFe

GSL_RNG_SEED=$RANDOM_SEED GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile13_B.txt 13


###################################################### End of 13)


