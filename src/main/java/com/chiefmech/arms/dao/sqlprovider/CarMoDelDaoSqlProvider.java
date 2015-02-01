package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.view.CarMoDelView;

public class CarMoDelDaoSqlProvider {

	public String getCarMoDelList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String
				.format("select * from view_carmodel %s %s",
						searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getCarMoDelListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String
				.format("select count(*) from view_carmodel %s",
						searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final CarMoDelView item = (CarMoDelView) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "modelId", item
						.getModelId()));
				this.addField(new Criteria(Action.LIKE, "modelName", item
						.getModelName()));
			}
		};
		return searchBean;
	}

}
