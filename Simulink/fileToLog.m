function log = fileToLog(path)
    logfile = fopen(path);
    tline = fgetl(logfile);
    log = [];
    while ischar(tline)
        entry = logstringToArray(tline);
        log = [log; entry];
        tline = fgetl(logfile);
    end
    fclose(logfile);
    
    start_time = log(1).Time;
    
    for i = 1:length(log)
        log(i).Time = log(i).Time - start_time;
    end
end

function entry = logstringToArray(str)
    try
        str = replace(str, "'", '"');
        entry = jsondecode(str);
    catch
        entry = [];
    end
end

