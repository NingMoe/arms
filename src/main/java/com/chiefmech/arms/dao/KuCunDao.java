package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.KuCunDaoSqlProvider;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.KuCunOperLog;
import com.chiefmech.arms.entity.query.KuCunOperLogSearchBean;

@Repository("kuCunDao")
public interface KuCunDao {

	@Select("select count(*) from kucun where txtWuLiaoGuid = #{txtWuLiaoGuid}")
	public boolean isKuCunExist(KuCun item);

	@Select("select * from kucun where txtWuLiaoGuid = #{txtWuLiaoGuid}")
	public KuCun findExistKuCun(KuCun item);

	@Insert("insert into kucun(txtKuCunGuid,txtWuLiaoGuid,txtWuLiaoCode,txtWuLiaoName,txtQty,txtChengBenJia,txtSalePrice,ddlCangKu,txtSuppName) values(#{txtKuCunGuid},#{txtWuLiaoGuid},#{txtWuLiaoCode},#{txtWuLiaoName},#{txtQty},#{txtChengBenJia},#{txtSalePrice},#{ddlCangKu},#{txtSuppName})")
	public int insertKuCun(KuCun item);

	@Update("update kucun set txtQty=#{txtQty},txtChengBenJia=#{txtChengBenJia} where txtKuCunGuid=#{txtKuCunGuid}")
	public int updateKuCun(KuCun item);

	@Insert("insert into kucunoperlog(txtLogGuid,txtBillGuid,txtBillSort,txtLogDate,txtWuLiaoGuid,txtWuLiaoCode,txtWuLiaoName,txtQty,txtChengBenJia,txtSalePrice,ddlCangKu,txtSuppName) values(#{txtLogGuid},#{txtBillGuid},#{txtBillSort},#{txtLogDate},#{txtWuLiaoGuid},#{txtWuLiaoCode},#{txtWuLiaoName},#{txtQty},#{txtChengBenJia},#{txtSalePrice},#{ddlCangKu},#{txtSuppName})")
	public int insertKuCunOperLog(KuCunOperLog item);

	@Update("update kucun set txtSalePrice=#{txtSalePrice} where txtKuCunGuid=#{txtKuCunGuid}")
	public int updateJiShiKuCun(KuCun item);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunList")
	public List<KuCun> getKuCunList(
			@Param("txtGongDanId") String saleAfterWeiXiuGuid,
			@Param("item") KuCun query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunListCount")
	public int getKuCunListCount(
			@Param("txtGongDanId") String saleAfterWeiXiuGuid,
			@Param("item") KuCun query);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunOperLogList")
	public List<KuCunOperLog> getKuCunOperLogList(
			@Param("item") KuCunOperLogSearchBean query);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunOperLogListCount")
	public int getKuCunOperLogListCount(
			@Param("item") KuCunOperLogSearchBean query);
}
