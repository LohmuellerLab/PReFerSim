#### PReFerSim
PReFerSim is an ANSI C program that performs forward simulations under the PRF model. PReFerSim models changes in population size, arbitrary amounts of inbreeding, dominance, and distributions of selective effects. Users can track summaries of genetic variation over time and output trajectories of selected alleles.

If you use PReFerSim please cite:
Ortega-Del Vecchyo, D., Marsden, C. D. & Lohmueller, K. E. PReFerSim: fast simulation of demography and selection under the Poisson Random Field model. Bioinformatics 32, 3516–3518 (2016).

The download folder includes a detailed user manual with download, installation, usage and troubleshooting instructions along with example files and the program.

Please note that PReFerSim is intended to run on Unix, or Unix-like operating systems, such as Linux or Mac OS X (10.8+). To use PReFerSim with Mac OS X, you must install the Mac OS X software developer kit usually included with Xcode.  The program can also be used in a Windows operating system, but it requires the installation of Cygwin. If you use Cygwin, make sure to install GNU's gcc compiler when downloading or updating Cygwin to be able to compile PReFerSim. In order to run PReFerSim GSL must be installed on your computer (available here: http://www.gnu.org/software/gsl/).

Please see the user manual (PReFerSim_Manual_v2.pdf) for instructions on how to compile the program. 
PReFerSim can be then be run with:
GSL_RNG_SEED=1 GSL_RNG_TYPE=mrg ./PReFerSim ParameterFile1.txt 1

For more details on usage see the manual for a comprehensive overview.

####The following files are included in the download folder:

Alleles11.txt.- A list of allele ID’s to follow allele frequency trajectories.

Bottleneck.txt.-  Sample demographic history file

DemographicHistoryBreedDogs1000.txt.- Sample demographic history file

DemographicHistoryTwoConstantSizes.txt.- Sample demographic history file

Examples.sh.- A set of examples to run PReFerSim

FChangedExample.txt.- Sample file showing changing inbreeding coefficients over different epochs

GetListOfRunsWhereFrequencyMatches.pl.-  perl script used to extract list of alleles at a certain frequency from PReFerSim output. Used when looking at allele frequency trajectories.

ParameterFileX.txt.- Variety of example parameter files

PReFerSim.c.- The C code for PReFerSim

PReFerSim_Manual_v2.pdf. - Detailed user manual

SelPointTest.txt.- Example file showing a discrete probability distribution of fitness effects

SelUnifBounds.txt.- Example file showing a distribution of fitness effects with uniform intervals.

