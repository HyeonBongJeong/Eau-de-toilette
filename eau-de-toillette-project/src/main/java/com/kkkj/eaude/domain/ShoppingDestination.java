package com.kkkj.eaude.domain;


import org.springframework.stereotype.Component;

import lombok.Data;

@Data 
@Component
public class ShoppingDestination {
    private	String sd_id;
    private	String sd_addr;
    private	int ad_default;
    private	String sd_addr_nickname;
    private	String m_id;
    private String sd_phone;
    private String sd_name;
}
