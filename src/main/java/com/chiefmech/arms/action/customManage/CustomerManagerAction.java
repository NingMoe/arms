package com.chiefmech.arms.action.customManage;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.entity.CustomerInfo;
import com.chiefmech.arms.entity.CustomerTaoKaItem;
import com.chiefmech.arms.entity.TaoKaItem;
import com.chiefmech.arms.service.CustomerInfoService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class CustomerManagerAction extends BaseActionSupport
		implements
			ModelDriven<CustomerInfo> {

	@Resource()
	private CustomerInfoService customerInfoService;

	private CustomerInfo item = new CustomerInfo();
	private List<CheLiangInfo> cheLiangInfoLst;
	private List<CustomerTaoKaItem> customerTaoKaItemLst;
	private String customerId;
	private String txtTaoKaSort;
	private String customerTaoKaItemGuid;
	private int txtRestTimes;

	@Action(value = "customerInfo", results = {@Result(name = "input", location = "customerInfo.jsp")})
	public String customerInfo() {
		if (StringUtils.isNotBlank(customerId)) {
			item = customerInfoService.findCustomerInfoById(customerId);
			cheLiangInfoLst = customerInfoService
					.queryCheLiangInfoByCustomerId(customerId);
			customerTaoKaItemLst = customerInfoService
					.queryCustomerTaoKaItemLstByCustomerId(customerId);
		} else {
			item.setTxtCheZhuPwd("666666");
			item.setTxtCaiLiaoZheKou(1);
			item.setTxtGongShiZheKou(1);
		}

		return INPUT;
	}

	@Action(value = "saveCustomerInfo")
	public void saveCustomerInfo() {
		int rowsAffected = -1;
		String info = "";
		String msg = "保存数据失败";
		if (StringUtils.isBlank(item.getTxtCustId())) {
			List<CustomerInfo> itemAry = customerInfoService
					.findCustomerInfoByCheZhuTel(item.getTxtCheZhuTel());
			if (itemAry.size() == 0) {
				item.setTxtCustId(IDGen.getUUID());
				rowsAffected = customerInfoService.insertCustomerInfo(item);
				info = item.getTxtCustId();
			} else {
				msg = "车主电话已经存在，不能重复录入";
			}

		} else {
			rowsAffected = customerInfoService.updateCustomerInfo(item);
			info = "update";
		}
		this.transmitJson(getCrudJsonResponse(rowsAffected, info, msg));
	}

	@Action(value = "deleteCustInfo")
	public void deleteCustInfo() {
		int rowsAffected = customerInfoService.deleteCustInfo(customerId);
		String info = "";
		String msg = "删除数据失败";
		this.transmitJson(getCrudJsonResponse(rowsAffected, info, msg));
	}

	@Action(value = "queryTaoKaByName")
	public void queryTaoKaByName() {
		List<TaoKaItem> lst = customerInfoService
				.queryTaoKaByName(txtTaoKaSort);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}",
				lst.size(), lstJson);
		this.transmitJson(jsonStr);
	}

	@Action(value = "addTaoKa")
	public void addTaoKa() {
		int rowsAffected = customerInfoService.addTaoKa(customerId,
				txtTaoKaSort);
		String info = "";
		String msg = "保存数据失败";
		this.transmitJson(getCrudJsonResponse(rowsAffected, info, msg));
	}

	@Action(value = "deleteCustomerTaoKaItem")
	public void deleteCustomerTaoKaItem() {
		int rowsAffected = customerInfoService.deleteCustomerTaoKaItem(
				customerId, txtTaoKaSort);
		String info = "";
		String msg = "删除套卡信息失败";
		this.transmitJson(getCrudJsonResponse(rowsAffected, info, msg));
	}

	@Action(value = "modifyRestTimes")
	public void modifyRestTimes() {
		int rowsAffected = customerInfoService.modifyRestTimes(
				customerTaoKaItemGuid, txtRestTimes);
		String info = "";
		String msg = "修改套卡信息失败";
		this.transmitJson(getCrudJsonResponse(rowsAffected, info, msg));
	}

	protected String getCrudJsonResponse(int rowAffected, String info,
			String msg) {
		String jsonStr = String.format("{\"status\":\"ok\", \"info\":\"%s\"}",
				info);
		if (rowAffected < 1) {
			jsonStr = String.format("{\"errorMsg\":\"%s\"}", msg);
		}

		return jsonStr;
	}

	@Override
	public CustomerInfo getModel() {
		return item;
	}

	public CustomerInfo getItem() {
		return item;
	}

	public String getJsonData() {
		return JSONObject.fromObject(item).toString();
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public List<CheLiangInfo> getCheLiangInfoLst() {
		return cheLiangInfoLst;
	}

	public void setTxtTaoKaSort(String txtTaoKaSort) {
		this.txtTaoKaSort = txtTaoKaSort;
	}

	public List<CustomerTaoKaItem> getCustomerTaoKaItemLst() {
		return customerTaoKaItemLst;
	}

	public void setTxtRestTimes(int txtRestTimes) {
		this.txtRestTimes = txtRestTimes;
	}

	public void setCustomerTaoKaItemGuid(String customerTaoKaItemGuid) {
		this.customerTaoKaItemGuid = customerTaoKaItemGuid;
	}

}
