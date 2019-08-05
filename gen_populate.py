import random

email_providers = ["gmail", "hotmail"]

first_names = open( "populate_data/first_names.txt" ).readlines( )
first_names = [x.strip() for x in first_names]

last_names = open( "populate_data/last_names.txt" ).readlines( )
last_names = [x.strip( ) for x in last_names]      


def generate_entry( file, count ):
    for i in range( count ):
        first = random.choice( first_names )
        last = random.choice( last_names )
        email = first_names + "." + last_names + "@" + random.choice( email_providers ) + ".com"
        
        file.write( "\"" + first + "\", " + last + "\", \"" + email +  "\"\n" )

def main( ):
    db_structure = open( "dbStructure.sql", "r" )
    output_file = open( "info.txt", "w" )

    table_list = []

    for line in db_structure:
        line_data = line.split( ' ' )

        if line_data[0] == "CREATE" and line_data[1] == "TABLE":
            if line_data[2] == "Advisor":
                generate_entry( output_file, 1000 )
                



if __name__ == "__main__":
    main( )