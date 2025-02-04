/// Returns if a BIG number is exactly the maximum value
/// 
/// @param x

function BigIsMaximum(_x)
{
    static _max = BigMaximum();
    return array_equals(_x, _max);
}