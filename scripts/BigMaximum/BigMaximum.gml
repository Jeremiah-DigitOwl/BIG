/// Generates a BIG number equal to the maximum value

function BigMaximum()
{
	return array_create(BIG_MAX_WORDS, int64(4294967295));
}