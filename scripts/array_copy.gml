/*
 * array_copy(array)
 */
 
var array = argument[0];
var ret;

var length = array_length_1d(array);
for (var i=length-1;i>=0;i--){
    ret[i] = array[i];
}

return ret;
