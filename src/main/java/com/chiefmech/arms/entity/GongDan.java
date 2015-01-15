package com.chiefmech.arms.entity;

import java.util.Date;

import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

public class GongDan {
	/** 工单唯一编号 */
	private String txtGongDanId;
	/** 客户id */
	private String txtCustId;
	/** 车辆id */
	private String txtVehicleId;
	/** 送车间 */
	private String txtSongCheJian;
	/** 工单状态 */
	private String txtGongDanStatus;
	/** 车牌号 */
	private String txtChePaiHao;
	/** 里程 */
	public int txtLiCheng;
	/** 油量 */
	public float txtYouLiang;
	/** 购车日期 */
	public String txtGouCheDate;
	/** VIN */
	private String txtVin;
	/** 发动机号 */
	private String txtFaDongJiHao;
	/** 厂家品牌 */
	private String txtChangJiaPinPai;
	/** 车系名称 */
	private String txtCheXiName;
	/** 车身颜色 */
	private String txtChenShenYanSe;
	/** AT/MT */
	private String txtAT;
	/** 车型代码 */
	private String txtCheXingDaiMa;
	/** 客户类别 */
	private String txtCustSort;
	/** 车主名 */
	private String txtCheZhuName;
	/** 车主电话 */
	private String txtCheZhuTel;
	/** 车主手机 */
	private String txtCheZhuMob;
	/** 会员等级 */
	private String txtHuiYuanDengJi;
	/** 联系人姓名 */
	private String txtLianXiRenName;
	/** 联系人电话 */
	private String txtLianXiRenTel;
	/** 联系人手机 */
	private String txtLianXiRenMob;
	/** 会员卡号 */
	private String txtHuiYuanHao;
	/** 联系地址 */
	private String txtLianXiRenAdd;
	/** 维修单号 */
	private String txtBillNo;
	/** 协议单号 */
	private String txtXieYiBillNo;
	/** 入厂时间 */
	public String txtRuChangDate;
	/** 预出厂时间 */
	public Date txtYuChuChangDate;
	/** 服务顾问 */
	private String txtFuWuUserId;
	/** 维修类别 */
	private String ddlWeiXiuSort;
	/** 首保 */
	private String chkShouBao;
	/** 免检 */
	private String chkMianJian;
	/** 新车检查 */
	private String chkXinCheJianCha;
	/** 返修 */
	private String chkFanXiu;
	/** 保险 */
	private String chkBaoXian;
	/** 是否买单 */
	private String chkShiFouMaiDan;
	/** 档案号 */
	private String txtBaoXianDangAnHao;
	/** 本店保单 */
	private String radBaoXianIsBenDian;
	/** 出险日期 */
	public Date txtBaoXianDate;
	/** 理赔公司 */
	private String ddlBaoXianLiPeiComp;
	/** 维修提示 */
	private String txtTiShiInfo;
	/** 交修原因 */
	private String txtJiaoXiuReason;
	/** 故障原因 */
	private String txtGuZhangReason;
	/** 维修措施 */
	private String txtWeiXiuCuoShi;
	/** 预约id */
	private String txtYuYueId;

	public GongDan(VKeHuCheLiang customerInfo) {
		this.setTxtCustId(customerInfo.getTxtCustId());
		this.setTxtVehicleId(customerInfo.getTxtVehicleId());
		this.setTxtChePaiHao(customerInfo.getTxtCheLiangChePaiHao());
		this.setTxtGouCheDate(customerInfo.getTxtGouCheDate());
		this.setTxtVin(customerInfo.getTxtCheLiangCheJiaHao());
		this.setTxtFaDongJiHao(customerInfo.getTxtCheLiangFaDongJiHao());
		this.setTxtChangJiaPinPai(customerInfo.getDdlCheLiangZhiZaoShang());
		this.setTxtCheXiName(customerInfo.getDdlCheLiangCheXi());
		this.setTxtChenShenYanSe(customerInfo.getDdlCheShenColor());
		this.setTxtCheXingDaiMa(customerInfo.getTxtCheLiangCheXingDaiMa());
		this.setTxtCustSort(customerInfo.getDdlCheZhuTelSort());
		this.setTxtCheZhuName(customerInfo.getTxtCheZhuName());
		this.setTxtCheZhuTel(customerInfo.getTxtCheZhuTel());
		this.setTxtCheZhuMob(customerInfo.getTxtCheZhuMob());
		this.setTxtLianXiRenName(customerInfo.getTxtLianXiRenName());
		this.setTxtLianXiRenTel(customerInfo.getTxtLianXiRenTel());
		this.setTxtLianXiRenMob(customerInfo.getTxtLianXiRenMob());
		this.setTxtLianXiRenAdd(customerInfo.getTxtLianXiRenAdd());
		this.setTxtRuChangDate(DateUtil.getCurrentDateTime());
		this.setTxtBillNo("等待生成");
		this.setTxtGongDanStatus("接待中");
	}

	public GongDan() {
	}

	public String getTxtGongDanId() {
		return txtGongDanId;
	}

	public void setTxtGongDanId(String txtGongDanId) {
		this.txtGongDanId = txtGongDanId;
	}

	public String getTxtGongDanStatus() {
		return txtGongDanStatus;
	}

	public void setTxtGongDanStatus(String txtGongDanStatus) {
		this.txtGongDanStatus = txtGongDanStatus;
	}

	public String getTxtBillNo() {
		return txtBillNo;
	}

	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}

	public String getTxtXieYiBillNo() {
		return txtXieYiBillNo;
	}

	public void setTxtXieYiBillNo(String txtXieYiBillNo) {
		this.txtXieYiBillNo = txtXieYiBillNo;
	}

	public String getTxtRuChangDate() {
		return txtRuChangDate;
	}

	public void setTxtRuChangDate(String txtRuChangDate) {
		this.txtRuChangDate = txtRuChangDate;
	}

	public Date getTxtYuChuChangDate() {
		return txtYuChuChangDate;
	}

	public void setTxtYuChuChangDate(Date txtYuChuChangDate) {
		this.txtYuChuChangDate = txtYuChuChangDate;
	}

	public String getTxtFuWuUserId() {
		return txtFuWuUserId;
	}

	public void setTxtFuWuUserId(String txtFuWuUserId) {
		this.txtFuWuUserId = txtFuWuUserId;
	}

	public String getDdlWeiXiuSort() {
		return ddlWeiXiuSort;
	}

	public void setDdlWeiXiuSort(String ddlWeiXiuSort) {
		this.ddlWeiXiuSort = ddlWeiXiuSort;
	}

	public String getChkShouBao() {
		return chkShouBao;
	}

	public void setChkShouBao(String chkShouBao) {
		this.chkShouBao = chkShouBao;
	}

	public String getChkMianJian() {
		return chkMianJian;
	}

	public void setChkMianJian(String chkMianJian) {
		this.chkMianJian = chkMianJian;
	}

	public String getChkXinCheJianCha() {
		return chkXinCheJianCha;
	}

	public void setChkXinCheJianCha(String chkXinCheJianCha) {
		this.chkXinCheJianCha = chkXinCheJianCha;
	}

	public String getChkFanXiu() {
		return chkFanXiu;
	}

	public void setChkFanXiu(String chkFanXiu) {
		this.chkFanXiu = chkFanXiu;
	}

	public String getChkBaoXian() {
		return chkBaoXian;
	}

	public void setChkBaoXian(String chkBaoXian) {
		this.chkBaoXian = chkBaoXian;
	}

	public String getChkShiFouMaiDan() {
		return chkShiFouMaiDan;
	}

	public void setChkShiFouMaiDan(String chkShiFouMaiDan) {
		this.chkShiFouMaiDan = chkShiFouMaiDan;
	}

	public String getTxtBaoXianDangAnHao() {
		return txtBaoXianDangAnHao;
	}

	public void setTxtBaoXianDangAnHao(String txtBaoXianDangAnHao) {
		this.txtBaoXianDangAnHao = txtBaoXianDangAnHao;
	}

	public String getRadBaoXianIsBenDian() {
		return radBaoXianIsBenDian;
	}

	public void setRadBaoXianIsBenDian(String radBaoXianIsBenDian) {
		this.radBaoXianIsBenDian = radBaoXianIsBenDian;
	}

	public Date getTxtBaoXianDate() {
		return txtBaoXianDate;
	}

	public void setTxtBaoXianDate(Date txtBaoXianDate) {
		this.txtBaoXianDate = txtBaoXianDate;
	}

	public String getDdlBaoXianLiPeiComp() {
		return ddlBaoXianLiPeiComp;
	}

	public void setDdlBaoXianLiPeiComp(String ddlBaoXianLiPeiComp) {
		this.ddlBaoXianLiPeiComp = ddlBaoXianLiPeiComp;
	}

	public String getTxtTiShiInfo() {
		return txtTiShiInfo;
	}

	public void setTxtTiShiInfo(String txtTiShiInfo) {
		this.txtTiShiInfo = txtTiShiInfo;
	}

	public String getTxtJiaoXiuReason() {
		return txtJiaoXiuReason;
	}

	public void setTxtJiaoXiuReason(String txtJiaoXiuReason) {
		this.txtJiaoXiuReason = txtJiaoXiuReason;
	}

	public String getTxtGuZhangReason() {
		return txtGuZhangReason;
	}

	public void setTxtGuZhangReason(String txtGuZhangReason) {
		this.txtGuZhangReason = txtGuZhangReason;
	}

	public String getTxtWeiXiuCuoShi() {
		return txtWeiXiuCuoShi;
	}

	public void setTxtWeiXiuCuoShi(String txtWeiXiuCuoShi) {
		this.txtWeiXiuCuoShi = txtWeiXiuCuoShi;
	}

	public String getTxtCustId() {
		return txtCustId;
	}

	public void setTxtCustId(String txtCustId) {
		this.txtCustId = txtCustId;
	}

	public String getTxtVehicleId() {
		return txtVehicleId;
	}

	public void setTxtVehicleId(String txtVehicleId) {
		this.txtVehicleId = txtVehicleId;
	}

	public String getTxtYuYueId() {
		return txtYuYueId;
	}

	public void setTxtYuYueId(String txtYuYueId) {
		this.txtYuYueId = txtYuYueId;
	}

	public String getTxtSongCheJian() {
		return txtSongCheJian;
	}

	public void setTxtSongCheJian(String txtSongCheJian) {
		this.txtSongCheJian = txtSongCheJian;
	}

	public String getTxtChePaiHao() {
		return txtChePaiHao;
	}

	public void setTxtChePaiHao(String txtChePaiHao) {
		this.txtChePaiHao = txtChePaiHao;
	}

	public int getTxtLiCheng() {
		return txtLiCheng;
	}

	public void setTxtLiCheng(int txtLiCheng) {
		this.txtLiCheng = txtLiCheng;
	}

	public float getTxtYouLiang() {
		return txtYouLiang;
	}

	public void setTxtYouLiang(float txtYouLiang) {
		this.txtYouLiang = txtYouLiang;
	}

	public String getTxtGouCheDate() {
		return txtGouCheDate;
	}

	public void setTxtGouCheDate(String txtGouCheDate) {
		this.txtGouCheDate = txtGouCheDate;
	}

	public String getTxtVin() {
		return txtVin;
	}

	public void setTxtVin(String txtVin) {
		this.txtVin = txtVin;
	}

	public String getTxtFaDongJiHao() {
		return txtFaDongJiHao;
	}

	public void setTxtFaDongJiHao(String txtFaDongJiHao) {
		this.txtFaDongJiHao = txtFaDongJiHao;
	}

	public String getTxtChangJiaPinPai() {
		return txtChangJiaPinPai;
	}

	public void setTxtChangJiaPinPai(String txtChangJiaPinPai) {
		this.txtChangJiaPinPai = txtChangJiaPinPai;
	}

	public String getTxtCheXiName() {
		return txtCheXiName;
	}

	public void setTxtCheXiName(String txtCheXiName) {
		this.txtCheXiName = txtCheXiName;
	}

	public String getTxtChenShenYanSe() {
		return txtChenShenYanSe;
	}

	public void setTxtChenShenYanSe(String txtChenShenYanSe) {
		this.txtChenShenYanSe = txtChenShenYanSe;
	}

	public String getTxtAT() {
		return txtAT;
	}

	public void setTxtAT(String txtAT) {
		this.txtAT = txtAT;
	}

	public String getTxtCheXingDaiMa() {
		return txtCheXingDaiMa;
	}

	public void setTxtCheXingDaiMa(String txtCheXingDaiMa) {
		this.txtCheXingDaiMa = txtCheXingDaiMa;
	}

	public String getTxtCustSort() {
		return txtCustSort;
	}

	public void setTxtCustSort(String txtCustSort) {
		this.txtCustSort = txtCustSort;
	}

	public String getTxtCheZhuName() {
		return txtCheZhuName;
	}

	public void setTxtCheZhuName(String txtCheZhuName) {
		this.txtCheZhuName = txtCheZhuName;
	}

	public String getTxtCheZhuTel() {
		return txtCheZhuTel;
	}

	public void setTxtCheZhuTel(String txtCheZhuTel) {
		this.txtCheZhuTel = txtCheZhuTel;
	}

	public String getTxtCheZhuMob() {
		return txtCheZhuMob;
	}

	public void setTxtCheZhuMob(String txtCheZhuMob) {
		this.txtCheZhuMob = txtCheZhuMob;
	}

	public String getTxtHuiYuanDengJi() {
		return txtHuiYuanDengJi;
	}

	public void setTxtHuiYuanDengJi(String txtHuiYuanDengJi) {
		this.txtHuiYuanDengJi = txtHuiYuanDengJi;
	}

	public String getTxtLianXiRenName() {
		return txtLianXiRenName;
	}

	public void setTxtLianXiRenName(String txtLianXiRenName) {
		this.txtLianXiRenName = txtLianXiRenName;
	}

	public String getTxtLianXiRenTel() {
		return txtLianXiRenTel;
	}

	public void setTxtLianXiRenTel(String txtLianXiRenTel) {
		this.txtLianXiRenTel = txtLianXiRenTel;
	}

	public String getTxtLianXiRenMob() {
		return txtLianXiRenMob;
	}

	public void setTxtLianXiRenMob(String txtLianXiRenMob) {
		this.txtLianXiRenMob = txtLianXiRenMob;
	}

	public String getTxtHuiYuanHao() {
		return txtHuiYuanHao;
	}

	public void setTxtHuiYuanHao(String txtHuiYuanHao) {
		this.txtHuiYuanHao = txtHuiYuanHao;
	}

	public String getTxtLianXiRenAdd() {
		return txtLianXiRenAdd;
	}

	public void setTxtLianXiRenAdd(String txtLianXiRenAdd) {
		this.txtLianXiRenAdd = txtLianXiRenAdd;
	}

}