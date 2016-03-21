/*
 * array_index_of(array, value)
 */
 
var array = argument[0];
var val = argument[1];
var length = array_length_1d(array);

for (var i=0;i<length;i++){
    if (array[i] == val){
        return i;
    }
}

return -1;
