function sectoral_heterochromia_flag = SectoralHeterochromiaDetectorFn(section_flecks)
%SECTORALHETEROCHROMIADETECTOR Summary of this function goes here
%   Detailed explanation goes here
    sectoral_heterochromia_flag = 0;
    [RGB_flecks(1),RGB_flecks(2), RGB_flecks(3), Total_flecks, count_flecks] = ImageRGBColorAverageFinder(section_flecks);
    [SectoralHeterochromia_RGBMonochromeCount(1),SectoralHeterochromia_RGBMonochromeCount(2), SectoralHeterochromia_RGBMonochromeCount(3), SectoralHeterochromia_RGBMonochromeCount(4)] = sectoralRGBMonoCountFinder(RGB_flecks,Total_flecks,section_flecks);
    if(SectoralHeterochromia_RGBMonochromeCount > 20)
        sectoral_heterochromia_flag = 1;
        
    else
        sectoral_heterochromia_flag = 0;
    end
end

