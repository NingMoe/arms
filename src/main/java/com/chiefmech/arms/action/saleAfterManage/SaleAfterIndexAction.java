package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CustomerInfoService;
import com.chiefmech.arms.service.GongDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class SaleAfterIndexAction extends BaseActionSupport implements
		ModelDriven<GongDan> {

	@Resource()
	private GongDanService gongDanService;
	@Resource()
	private CustomerInfoService cheZhuLianXiRenService;

	private GongDan gongDan = new GongDan();

	private String saleAfterWeiXiuGuid;
	private String vehicleId;
	private int tabId = 1;
	private VKeHuCheLiang customer;

	@Action(value = "saleAfterIndex", results = { @Result(name = "input", location = "saleAfter_Index.jsp") })
	public String saleAfterIndex() {
		initGonDan();

		return INPUT;
	}

	@Action(value = "saleAfterWeiXiuJieDai", results = { @Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp") })
	public String saleAfterWeiXiuJieDai() {
		initGonDan();
		return INPUT;
	}

	private void initGonDan() {
		if (StringUtils.isBlank(saleAfterWeiXiuGuid)) {
			customer = cheZhuLianXiRenService
					.findVKeHuCheLiangByCheLiangId(vehicleId);
			gongDan = new GongDan(customer);
		} else {
			gongDan = gongDanService
					.findGongDanByWeiXiuGuid(saleAfterWeiXiuGuid);
		}
	}

	@Action(value = "saveWeiXiuJieDai")
	public void saveWeiXiuJieDai() {
		String statusCode = "failed";
		String info = "保存信息失败";

		int rowsAffected;
		if (StringUtils.isBlank(gongDan.getTxtGongDanId())) {
			gongDan.setTxtGongDanId(IDGen.getUUID());
			gongDan.setTxtBillNo(gongDanService.getNewBillNo());
			rowsAffected = gongDanService.insertWeiXiuJieDai(gongDan);
		} else {
			rowsAffected = gongDanService.updateWeiXiuJieDai(gongDan);
		}
		if (rowsAffected == 1) {
			statusCode = "success";
			info = String.format("{\"gongDanId\":\"%s\",\"billNo\":\"%s\"}",
					gongDan.getTxtGongDanId(), gongDan.getTxtBillNo());
		}

		this.transmitJson(String.format(
				"{\"statusCode\":\"%s\", \"info\":'%s'}", statusCode, info));
	}

	public VKeHuCheLiang getCustomer() {
		return customer;
	}

	public String getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

	public String getSaleAfterWeiXiuGuid() {
		return saleAfterWeiXiuGuid;
	}

	public void setTabId(int tabId) {
		this.tabId = tabId;
	}

	public int getTabId() {
		return tabId;
	}

	@Override
	public GongDan getModel() {
		return gongDan;
	}

	public GongDan getGongDan() {
		return gongDan;
	}

	public String getJsonData() {
		return JSONObject.fromObject(gongDan).toString();
	}

}
