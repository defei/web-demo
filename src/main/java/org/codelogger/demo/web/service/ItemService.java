package org.codelogger.demo.web.service;

import org.codelogger.core.repository.GenericRepository;
import org.codelogger.core.service.GenericService;
import org.codelogger.demo.web.domain.Item;
import org.codelogger.demo.web.repository.ItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemService extends GenericService<Item> {

    @Autowired
    private ItemRepository itemRepository;

    @Override
    protected GenericRepository<Item, Long> getRepository() {

        return itemRepository;
    }

}
