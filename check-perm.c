#include <stdio.h>
#include <unistd.h>

int main( int argc, char * argv[] ){
	if ( argc != 5 ){
		printf( "Usage: %s <file name> <R or W (access type)> <T or F (expected result)> <user>\n", argv[0] );
		return 0;
	}
	int access_type= R_OK;
	if ( argv[2][0] == 'W' || argv[2][0] == 'W' )
		access_type= W_OK;
	int expected_result= 0; // true
	if ( argv[3][0] == 'F' || argv[3][0] == 'f' )
		expected_result= -1; // false
	int perm_result= access( argv[1], access_type );
	printf( "%s can ", argv[4] );
	if ( access_type == R_OK )
		printf( "read ");
	else
		printf( "write to ");
	printf( "%s  %c", argv[1], argv[3][0] );
	int return_value= 0;
	if ( perm_result == expected_result )
		return_value= 1;
	else
		printf( "   INCORRECT" );
	printf( "\n" );
	return return_value;
}
