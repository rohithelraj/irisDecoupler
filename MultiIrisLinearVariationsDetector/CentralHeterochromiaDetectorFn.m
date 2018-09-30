function central_heterochromia_flag = CentralHeterochromiaDetectorFn(section_flecks,section_collarette)
%CENTRALHETEROCHROMIADETECTORFN detects central heterochromia in a provided section_collarette
                                              %   Return: central_heterochromia_flag -> Boolean variable that marks the existance of central heterochromia
                                              %   from a section_collarette.
                                              %   Argument: section_flecks -> Flecks section of an iris.
                                              %             section_collarette -> Collarette section of an iris.
    central_heterochromia_flag = 0;
    [RGB_collarette(1),RGB_collarette(2), RGB_collarette(3), Total_collarette , count_collarette] = ImageRGBColorAverageFinder(section_collarette);
    [RGB_flecks(1),RGB_flecks(2), RGB_flecks(3), Total_flecks, count_flecks] = ImageRGBColorAverageFinder(section_flecks);
    intensity_diff_R = abs(RGB_collarette(1) - RGB_flecks(1));
    intensity_diff_G = abs(RGB_collarette(2) - RGB_flecks(2));
    intensity_diff_B = abs(RGB_collarette(3) - RGB_flecks(3));
    if((intensity_diff_R > 19)||(intensity_diff_G > 19)||(intensity_diff_B > 19))
        %disp('Central Heterochromia detected.');
        central_heterochromia_flag = 1;
    else
        %disp('Central Heterochromia not detected.');
        central_heterochromia_flag = 0;
    end
end

