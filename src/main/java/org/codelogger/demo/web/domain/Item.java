package org.codelogger.demo.web.domain;

import javax.persistence.Entity;

import org.codelogger.core.domain.AbstractDomainObject;

@Entity(name = "item")
public class Item extends AbstractDomainObject {

    private static final long serialVersionUID = 1364762178043733441L;

    private String name;

    public String getName() {

        return name;
    }

    public void setName(final String name) {

        this.name = name;
    }

}
