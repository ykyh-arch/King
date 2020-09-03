package org.king.framework.modelmapper.json;

import org.modelmapper.ModelMapper;
import org.modelmapper.Module;

/**
 * Supports the FastJson types  with  ModelMapper
 *
 * @author Ykyh
 */
public class FastJsonModule implements Module {

    @Override
    public void setupModule(ModelMapper modelMapper) {
        modelMapper.getConfiguration().getConverters().add(0, new JSONObjectToJSONObjectConverter());
        modelMapper.getConfiguration().getConverters().add(0, new JSONArrayToJSONArrayConverter());
    }
}
