package io.github.sdutsoftlab.config;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * @Author: Devhui
 * @Date: 2020/10/8 10:27
 * @Email: devhui@ihui.ink
 * @Version: 1.0
 */

@Component
@Configuration
@Data
public class SoftlabConfig {

    @Value("${sdut.softlab.qqGroup.ID}")
    private String qqGroupID;

    @Value("${sdut.softlab.secretKey}")
    private String secretKey;

}
