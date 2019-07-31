import random

first_names = open( "populate_data/first_names.txt" ).readlines( )
first_names = [x.strip() for x in first_names]

last_names = open( "populate_data/last_names.txt" ).readlines( )
last_names = [x.strip( ) for x in last_names]      


def generate_adsivors( file, count ):
    file.write( "INSERT INTO \"Advisors\" VALUES\n" )

    for i in range( count ):
        if ( i == count ):
            file.write( "( " + str( i + 1 ) + ", \"" + random.choice( first_names ) + "\", " + random.choice( last_names ) + "\" );\n" )
        else:
            file.write( "( " + str( i + 1 ) + ", \"" + random.choice( first_names ) + "\", " + random.choice( last_names ) + "\" ),\n" )

def main( ):
    db_structure = open( "dbStructure.sql", "r" )
    output_file = open( "info.txt", "w" )

    table_list = []

    for line in db_structure:
        line_data = line.split( ' ' )

        if line_data[0] == "CREATE" and line_data[1] == "TABLE":
            if line_data[2] == "Advisor":
                generate_adsivors( output_file, 50 )
                



if __name__ == "__main__":
    main( )