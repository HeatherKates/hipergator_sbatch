#/usr/bin/perl

@fastafile_array =<Original/*.fasta> or die $!;
$counter=1;
foreach $fastafile (@fastafile_array)
	{
	print $fastafile;
	`qsub blast_new.qsub -N blast$counter -v FASTAFILE=$fastafile,COUNTER=$counter`;
	$counter++;
	}

