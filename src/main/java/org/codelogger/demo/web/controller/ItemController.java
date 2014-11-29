package org.codelogger.demo.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codelogger.demo.web.domain.Item;
import org.codelogger.demo.web.service.ItemService;
import org.codelogger.web.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ItemController extends BaseController {

    @Autowired
    private ItemService itemService;

    @RequestMapping(value = "items")
    public List<Item> list(final Long parentId) {

        return itemService.findAll();
    }

    @RequestMapping(value = "items", method = RequestMethod.POST)
    public Item save(final HttpServletRequest request, final HttpServletResponse response,
            @RequestBody final Item item) {

        return itemService.save(item);
    }

    @RequestMapping(value = "items/{itemId}", method = RequestMethod.PUT)
    public Item updateUser(final HttpServletRequest request, final HttpServletResponse response,
            @PathVariable final Long itemId, @RequestBody final Item item) throws IOException {

        Item itemOfDB = itemService.findById(itemId);
        itemOfDB.setName(item.getName());
        return itemService.save(itemOfDB);
    }

    @RequestMapping(value = "items/{itemId}", method = RequestMethod.DELETE)
    public void deleteUser(final HttpServletRequest request, final HttpServletResponse response,
            @PathVariable final Long itemId) throws IOException {

        itemService.delete(itemId);
    }
}
