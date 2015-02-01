package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.WeiXiuPaiGong;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class WeiXiuPaiGongDaoSqlProvider {
	
	public String getWeiXiuPaiGongList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from weixiuzu %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getWeiXiuPaiGongListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from weixiuzu %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final WeiXiuPaiGong item = (WeiXiuPaiGong) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "weixiuzuName",item.getWeixiuzuName()));
			}
		};
		return searchBean;
	}
}
