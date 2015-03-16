package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;

public class KuCun {
	private String txtKuCunGuid;
	private String txtShopCode;
	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private int txtQty;
	private float txtChengBenJia;
	private float txtSalePrice;
	private String txtSuppName;
	private String txtRemark;

	public KuCun(KuCunOperLog operLog) {
		this.txtKuCunGuid = IDGen.getUUID();
		this.txtShopCode = operLog.getTxtShopCode();
		this.txtWuLiaoCode = operLog.getTxtWuLiaoCode();
		this.txtWuLiaoName = operLog.getTxtWuLiaoName();
		this.txtQty = operLog.getTxtQty();
		this.txtChengBenJia = operLog.getTxtChengBenJia();
		this.txtSalePrice = operLog.getTxtSalePrice();
		this.txtSuppName = operLog.getTxtSuppName();
		this.txtRemark = operLog.getTxtRemark();
	}

	public KuCun() {
	}

	public String getTxtShopCode() {
		return txtShopCode;
	}

	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}

	public String getTxtRemark() {
		return txtRemark;
	}

	public void setTxtRemark(String txtRemark) {
		this.txtRemark = txtRemark;
	}

	public String getTxtKuCunGuid() {
		return txtKuCunGuid;
	}
	public void setTxtKuCunGuid(String txtKuCunGuid) {
		this.txtKuCunGuid = txtKuCunGuid;
	}
	public String getTxtWuLiaoCode() {
		return txtWuLiaoCode;
	}
	public void setTxtWuLiaoCode(String txtWuLiaoCode) {
		this.txtWuLiaoCode = txtWuLiaoCode;
	}
	public String getTxtWuLiaoName() {
		return txtWuLiaoName;
	}
	public void setTxtWuLiaoName(String txtWuLiaoName) {
		this.txtWuLiaoName = txtWuLiaoName;
	}
	public int getTxtQty() {
		return txtQty;
	}
	public void setTxtQty(int txtQty) {
		this.txtQty = txtQty;
	}
	public float getTxtChengBenJia() {
		return txtChengBenJia;
	}
	public void setTxtChengBenJia(float txtChengBenJia) {
		this.txtChengBenJia = txtChengBenJia;
	}
	public float getTxtSalePrice() {
		return txtSalePrice;
	}
	public void setTxtSalePrice(float txtSalePrice) {
		this.txtSalePrice = txtSalePrice;
	}

	public String getTxtSuppName() {
		return txtSuppName;
	}

	public void setTxtSuppName(String txtSuppName) {
		this.txtSuppName = txtSuppName;
	}

	@Override
	public String toString() {
		return "KuCun [txtKuCunGuid=" + txtKuCunGuid + ", txtShopCode="
				+ txtShopCode + ", txtWuLiaoCode=" + txtWuLiaoCode
				+ ", txtWuLiaoName=" + txtWuLiaoName + ", txtQty=" + txtQty
				+ ", txtChengBenJia=" + txtChengBenJia + ", txtSalePrice="
				+ txtSalePrice + ", txtSuppName=" + txtSuppName
				+ ", txtRemark=" + txtRemark + "]";
	}

}
