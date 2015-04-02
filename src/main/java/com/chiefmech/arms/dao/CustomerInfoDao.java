package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.CheZhuLianXiRenDaoSqlProvider;
import com.chiefmech.arms.dao.sqlprovider.TaoKaOperLogDaoSqlProvider;
import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.entity.CustomerInfo;
import com.chiefmech.arms.entity.CustomerTaoKaItem;
import com.chiefmech.arms.entity.CustomerTaoKaItemOperLog;
import com.chiefmech.arms.entity.TaoKaItem;
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.query.TaoKaOperLogSearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.entity.view.VTaoKaOperLog;

@Repository("customerInfoDao")
public interface CustomerInfoDao {
	@Insert("insert into customerinfo(txtCustId,ddlCustSort,txtCheZhuName,txtCheZhuTel,txtCheZhuPwd,txtLianXiRenName,txtLianXiRenTel,txtLianXiRenAdd,txtCheZhuJiaZhaoDate,txtHuiYuanJiFen,txtGongShiZheKou,txtCaiLiaoZheKou,txtHuiYuanDengJi,txtRegisterShopCode) values(#{txtCustId},#{ddlCustSort},#{txtCheZhuName},#{txtCheZhuTel},#{txtCheZhuPwd},#{txtLianXiRenName},#{txtLianXiRenTel},#{txtLianXiRenAdd},#{txtCheZhuJiaZhaoDate},#{txtHuiYuanJiFen},#{txtGongShiZheKou},#{txtCaiLiaoZheKou},#{txtHuiYuanDengJi},#{txtRegisterShopCode} )")
	public int insertCustomerInfo(CustomerInfo item);

	@Update("update customerinfo set ddlCustSort=#{ddlCustSort},txtCheZhuName=#{txtCheZhuName},txtCheZhuTel=#{txtCheZhuTel},txtCheZhuPwd=#{txtCheZhuPwd},txtLianXiRenName=#{txtLianXiRenName},txtLianXiRenTel=#{txtLianXiRenTel},txtLianXiRenAdd=#{txtLianXiRenAdd},txtCheZhuJiaZhaoDate=#{txtCheZhuJiaZhaoDate},txtHuiYuanJiFen=#{txtHuiYuanJiFen},txtGongShiZheKou=#{txtGongShiZheKou},txtCaiLiaoZheKou=#{txtCaiLiaoZheKou},txtHuiYuanDengJi=#{txtHuiYuanDengJi} where txtCustId=#{txtCustId}")
	public int updateCustomerInfo(CustomerInfo item);

	@Select("select * from customerinfo where txtCustId=#{txtCustId}")
	public CustomerInfo findCustomerInfoById(String txtCustId);

	@Select("select * from customerinfo where txtCheZhuTel=#{txtCheZhuTel} and shopCode=#{shopCode}")
	public List<CustomerInfo> findCustomerInfoByCheZhuTel(
			@Param("txtCheZhuTel") String txtCheZhuTel,
			@Param("shopCode") String shopCode);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "queryVKeHuCheLiang")
	public List<VKeHuCheLiang> queryVKeHuCheLiang(
			@Param("item") VKeHuCheLiang query);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "getVKeHuCheLiangListForEasyUi")
	public List<VKeHuCheLiang> getVKeHuCheLiangListForEasyUi(
			@Param("item") SaleAfterCustomSearchBean query);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "getVKeHuCheLiangCountForEasyUi")
	public int getVKeHuCheLiangCountForEasyUi(
			@Param("item") SaleAfterCustomSearchBean query);

	@Select("select * from v_kehu_cheliang where txtCheLiangId=#{txtCheLiangId}")
	public VKeHuCheLiang findVKeHuCheLiangByCheLiangId(String txtCheLiangId);

	@Select("select * from customerinfo")
	public List<CustomerInfo> selectItem();

	@Insert("insert into chelianginfo(txtCustId,txtCheLiangId,ddlCheLiangZhiZaoShang,ddlCheLiangCheXi,txtCheLiangCheXingDaiMa,txtCheLiangChePaiHao,txtCheLiangCheJiaHao,txtCheLiangFaDongJiHao,txtCheLiangDengJiRiQi,txtCheLiangNianShenDaoQiRi,txtCheLiangBaoXianDaoQiRi,ddlChengBaoGongSi,ddlCheLiangNianFen,ddlCheLiangPaiLiang) values(#{txtCustId},#{txtCheLiangId},#{ddlCheLiangZhiZaoShang},#{ddlCheLiangCheXi},#{txtCheLiangCheXingDaiMa},#{txtCheLiangChePaiHao},#{txtCheLiangCheJiaHao},#{txtCheLiangFaDongJiHao},#{txtCheLiangDengJiRiQi},#{txtCheLiangNianShenDaoQiRi},#{txtCheLiangBaoXianDaoQiRi},#{ddlChengBaoGongSi},#{ddlCheLiangNianFen},#{ddlCheLiangPaiLiang})")
	public int insertCheLiangInfo(CheLiangInfo item);

	@Update("update chelianginfo set txtCustId=#{txtCustId},ddlCheLiangZhiZaoShang=#{ddlCheLiangZhiZaoShang},ddlCheLiangCheXi=#{ddlCheLiangCheXi},txtCheLiangCheXingDaiMa=#{txtCheLiangCheXingDaiMa},txtCheLiangChePaiHao=#{txtCheLiangChePaiHao},txtCheLiangCheJiaHao=#{txtCheLiangCheJiaHao},txtCheLiangFaDongJiHao=#{txtCheLiangFaDongJiHao},txtCheLiangDengJiRiQi=#{txtCheLiangDengJiRiQi},txtCheLiangNianShenDaoQiRi=#{txtCheLiangNianShenDaoQiRi},txtCheLiangBaoXianDaoQiRi=#{txtCheLiangBaoXianDaoQiRi},ddlChengBaoGongSi=#{ddlChengBaoGongSi},ddlCheLiangNianFen=#{ddlCheLiangNianFen},ddlCheLiangPaiLiang=#{ddlCheLiangPaiLiang} where txtCheLiangId=#{txtCheLiangId}")
	public int updateCheLiangInfo(CheLiangInfo item);

	@Select("select * from chelianginfo where txtCustId=#{txtCustId}")
	public List<CheLiangInfo> queryCheLiangInfoByCustomerId(String txtCustId);

	@Select("select * from chelianginfo where txtCheLiangId=#{txtCheLiangId}")
	public CheLiangInfo queryCheLiangInfoByCheLiangId(String txtCheLiangId);

	@Delete("delete from chelianginfo where txtCheLiangId=#{txtCheLiangId}")
	public int deleteCheLiangInfo(CheLiangInfo item);

	@Select("select * from chelianginfo where txtCheLiangId=#{txtCheLiangId}")
	public CheLiangInfo getCheLiangInfo(CheLiangInfo item);

	@Delete("delete from customerinfo where txtCustId=#{txtCustId}")
	public int deleteCustInfo(String txtCustId);

	@Select("select * from v_taokaitem where txtTaoKaSortGuid=#{txtTaoKaSortGuid} order by txtXiangMuCode")
	public List<TaoKaItem> queryTaoKaByTaoKaSortGuid(String txtTaoKaSortGuid);

	@Select("select * from customertaoka where txtCustId=#{txtCustId} and txtTaoKaSort=#{txtTaoKaSort} order by txtXiangMuCode")
	public List<CustomerTaoKaItem> queryCustomerTaoKaItem(
			@Param("txtCustId") String txtCustId,
			@Param("txtTaoKaSort") String txtTaoKaSort);

	@Insert("insert into customertaoka(txtGuid,txtCustId,txtTaoKaSort,txtXiangMuCode,txtXiangMuName,txtTotalTimes,txtRestTimes) values(#{txtGuid},#{txtCustId},#{txtTaoKaSort},#{txtXiangMuCode},#{txtXiangMuName},#{txtTotalTimes},#{txtRestTimes})")
	public int insertCustomerTaoKaItem(CustomerTaoKaItem item);

	@Insert("insert into customertaokaoperlog(txtLogGuid,txtAction,txtLogDate,txtNewRestTimes,txtGuid,txtCustId,txtTaoKaSort,txtXiangMuCode,txtXiangMuName,txtTotalTimes,txtRestTimes) values(#{txtLogGuid},#{txtAction},#{txtLogDate},#{txtNewRestTimes},#{txtGuid},#{txtCustId},#{txtTaoKaSort},#{txtXiangMuCode},#{txtXiangMuName},#{txtTotalTimes},#{txtRestTimes})")
	public int insertCustomerTaoKaItemOperLog(CustomerTaoKaItemOperLog item);

	@Update("update customertaoka set txtTotalTimes=#{txtTotalTimes},txtRestTimes=#{txtRestTimes} where txtGuid=#{txtGuid}")
	public int updateCustomerTaoKaItem(CustomerTaoKaItem customerTaoKaItem);

	@Update("update customertaoka set txtRestTimes=#{txtRestTimes} where txtGuid=#{txtGuid}")
	public int modifyRestTimes(@Param("txtGuid") String txtGuid,
			@Param("txtRestTimes") int txtRestTimes);

	@Delete("delete from customertaoka where txtCustId=#{txtCustId} and txtTaoKaSort=#{txtTaoKaSort}")
	public int deleteCustomerTaoKaItem(@Param("txtCustId") String txtCustId,
			@Param("txtTaoKaSort") String txtTaoKaSort);

	@Select("select * from customertaoka where txtCustId=#{txtCustId} order by txtTaoKaSort, txtXiangMuCode")
	public List<CustomerTaoKaItem> queryCustomerTaoKaItemLstByCustomerId(
			String txtCustId);

	@Select("select * from customertaoka where txtGuid=#{txtGuid}")
	public CustomerTaoKaItem findCustomerTaoKaItemByGuid(String txtGuid);

	@SelectProvider(type = TaoKaOperLogDaoSqlProvider.class, method = "getTaoKaOperLogListForEasyUi")
	public List<VTaoKaOperLog> getTaoKaOperLogList(
			@Param("item") TaoKaOperLogSearchBean query);

	@SelectProvider(type = TaoKaOperLogDaoSqlProvider.class, method = "getTaoKaOperLogCountForEasyUi")
	public int getTaoKaOperLogListCount(
			@Param("item") TaoKaOperLogSearchBean query);
}
