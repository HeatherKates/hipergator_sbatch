#/usr/bin/perl

@file_array =<*.phy> or die $!;
$counter=1;
foreach $alnfile (@file_array)
	{
	print $alnfile;
	`sbatch --export=PHYLIPFILE=$alnfile,COUNTER=$counter --job-name=raxml$counter raxml_batch.sbatch`;
	$counter++;
	}

