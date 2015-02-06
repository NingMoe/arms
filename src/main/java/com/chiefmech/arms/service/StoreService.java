package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.Store;

public interface StoreService {

	public int insertItem(Store item);

	public int updateItem(Store item);

	public int deleteItem(String id);

	public String getStoreEasyUiJSon(Store query, int page, int rows);

	public List<Store> selectItem();
}
