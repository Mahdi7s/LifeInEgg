var result, evid;
evid = ds_map_find_value(async_load, "id");

switch (evid) {
    case async_ini:
        result = ds_map_find_value(async_load, "result");
        file = file_text_open_write( "check.txt" );
        file_text_write_string(file, result);
        file_text_close(file);
        
        break;
}

