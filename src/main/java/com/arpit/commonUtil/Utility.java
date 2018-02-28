package com.arpit.commonUtil;

import com.arpit.model.Country;
import com.arpit.model.CountryList;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by arpit.khatri on 2/28/2018.
 * It share common Utilites throughout Application
 */
@Configuration
public class Utility {

    /**
     * It is Used read Countries list from json file.
     * @return List of country
     * @throws IOException
     */
    public static List<Country> getAllCountries() throws IOException {
        File countriesFile=new ClassPathResource("countries.json").getFile();
        ObjectMapper mapper=new ObjectMapper();
        CountryList countrieslist = mapper.readValue(countriesFile,CountryList.class);
        return countrieslist.getCountryList();
    }

}
