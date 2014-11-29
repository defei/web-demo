package org.codelogger.demo.web.repository;

import org.codelogger.core.repository.GenericRepository;
import org.codelogger.demo.web.domain.Item;
import org.springframework.stereotype.Repository;

@Repository
public interface ItemRepository extends GenericRepository<Item, Long> {

}
