/// Converts a BIG number to a shortened string of decimal digits
/// 
/// @param x

function BigToShortDecimalString(_x)
{
    static _suffix_array = [
        " K",  //thousand
        " M",  //million
        " B",  //billion
        " T",  //trillion
        " Q",  //quadrillion
        " Qi", //quintillion
        " Sx", //sextillion
        " Sp", //septillion
        " Oc", //octillion
        " No", //nonillion
        " Dc", //decillion
        " Un", //undecillion
        " Dd", //duodecillion
        " Td", //tredecillion
		" Qt", //quattuordecillion
		" Qd", //quindecillion
		" Sd", //sexdecillion
		" St", //septendecillion
		" Od", //octodecillion
    ];
    
	var _string = BigToDecimalString(_x);
    
    var _length = string_byte_length(_string);
    if (_length <= 3) return _string;
    
    _string = string_copy(_string, 1, 3);
    
    var _block = (_length-1) div 3;
    var _suffix = _suffix_array[_block-1];
    
    _block *= 3;
    if (_length - _block == 1)
    {
        _string = string_insert(".", _string, 2);
    }
    else if (_length - _block == 2)
    {
        _string = string_insert(".", _string, 3);
    }
    
    return _string + _suffix;;
}