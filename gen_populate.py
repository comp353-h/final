import random

email_providers = ["gmail", "hotmail"]

first_names = open( "populate_data/first_names.txt" ).readlines( )
first_names = [x.strip() for x in first_names]

last_names = open( "populate_data/last_names.txt" ).readlines( )
last_names = [x.strip( ) for x in last_names]      

def is_string_int( string ):
    try: 
        int(string)
        return True
    except ValueError:
        return False


def generate_rooms( file ):
    input_file = open( "populate.sql", "r" )

    is_building = False
    for line in input_file:
        line_data = line.strip( ).split( ' ' )

        if line_data[0] == "INSERT":
            if line_data[2] == "Building":
                is_building = True           
                
                
        if is_building == True:
            flush_line = line.replace( "(", "" ).replace( ")", "" ).replace( ",", " " ).replace( ";", "" )
            flush_line = " ".join( flush_line.split( ) )
            words = flush_line.split( " " )
    
            if ( is_string_int( words[-2] ) ):
                for x in range( 1, int( words[-2] ) + 1):
                    for y in range( 1, int( words[-1] ) + 1 ):
                        
                        room_number = ""
                        if len( str( y ) ) == 1:
                            room_number = str( x ) + "0" + str( y )
                        else:
                            room_number = str( x ) + str( y )

                        if len( words[0] ) == 4:
                            file.write( words[0] + ", " + room_number + "\n" )

        if is_building == True:
            for letter in line_data[-1]:
                if letter == ";":
                    is_building = False

        

        



def generate_people( file, count ):
    for i in range( count ):
        first = random.choice( first_names )
        last = random.choice( last_names )
        email = first + "." + last + "@" + random.choice( email_providers ) + ".com"

        file.write( "\"" + first + "\", " + last + "\", \"" + email +  "\", " + str( random.randint( 1000000000, 9999999999 ) ) + "\n" )

def main( ):
    db_structure = open( "dbStructure.sql", "r" )
    output_file = open( "info.txt", "w" )

    generate_people( output_file, 1000 )

    output_file.write( "\n\n" )

    generate_rooms( output_file )
                



if __name__ == "__main__":
    main( )