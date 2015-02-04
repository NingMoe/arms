package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;

public interface RuKuDanService {

	public String getRuKuDanEasyUiJSon(RuKuDanSearchBean query);

	public String getNewBillNo();

	public int insertRuKuDan(RuKuDan ruKuDan);

	public int updateRuKuDan(RuKuDan ruKuDan);

	public RuKuDan findRuKuDanByGuid(String ruKuDanGuid);

	public int updateRuKuDanStatus(RuKuDan ruKuDan);

}
