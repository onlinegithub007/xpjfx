/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/tlkzzz/jeesite">JeeSite</a> All rights reserved.
 */
package com.tlkzzz.jeesite.modules.cw.entity;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.tlkzzz.jeesite.modules.ck.entity.CKm;
import com.tlkzzz.jeesite.modules.ck.entity.CSupplier;
import com.tlkzzz.jeesite.modules.sys.entity.User;
import org.hibernate.validator.constraints.Length;

import com.tlkzzz.jeesite.common.persistence.DataEntity;

/**
 * 付款Entity
 * @author xrc
 * @version 2017-04-05
 */
public class FPayment extends DataEntity<FPayment> {

	private static final long serialVersionUID = 1L;

	private Date paymentDate;		// 付款日期
	private String paymentCode;		// 单据编号
	private String paymentAccount;		// 付款帐号
	private CSupplier travelUnit;		// 来往单位
	private String travelAccount;		// 来往帐号
	private String paymentType;		// 付款类型
	private String paymentMode;		// 付款方式
	private String je;				//付款金额
	private User jsr;		// 经手人
	private CKm subjectCode;		// 科目编码
	private String approvalStatus;		// 审核状态
	private User auditor;		// 审核人
	private String htje;        //合同金额

	private String ddbh;          //shizx 新增字段，用于取 订单ID

	private String thstatus;    //账单状态   0 审核状态   1 审核通过
	private String houseId;		//仓库ID作为中转字段不保存到数据库
	private int fybs;     		//分页标识
	private String csName;		//csname
	private String faName;		//faname


	@Length(min=0, max=20, message="合同金额长度必须介于 0 和 20 之间")
	public String getHtje() {
		return htje;
	}

	public void setHtje(String htje) {
		this.htje = htje;
	}

	public FPayment() {
		super();
	}

	public FPayment(String id){
		super(id);
	}

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	@Length(min=0, max=100, message="单据编号长度必须介于 0 和 100 之间")
	public String getPaymentCode() {
		return paymentCode;
	}

	public void setPaymentCode(String paymentCode) {
		this.paymentCode = paymentCode;
	}

	@Length(min=0, max=100, message="付款帐号长度必须介于 0 和 100 之间")
	public String getPaymentAccount() {
		return paymentAccount;
	}

	public void setPaymentAccount(String paymentAccount) {
		this.paymentAccount = paymentAccount;
	}

	public CSupplier getTravelUnit() {
		return travelUnit;
	}

	public void setTravelUnit(CSupplier travelUnit) {
		this.travelUnit = travelUnit;
	}

	@Length(min=0, max=100, message="来往帐号长度必须介于 0 和 100 之间")
	public String getTravelAccount() {
		return travelAccount;
	}

	public void setTravelAccount(String travelAccount) {
		this.travelAccount = travelAccount;
	}

	@Length(min=0, max=1, message="付款类型长度必须介于 0 和 1 之间")
	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	@Length(min=0, max=1, message="付款方式长度必须介于 0 和 1 之间")
	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	@Length(min=0, max=20, message="付款金额长度必须介于 0 和 20 之间")
	public String getJe() {
		return je;
	}

	public void setJe(String je) {
		this.je = je;
	}

	public User getJsr() {
		return jsr;
	}

	public void setJsr(User jsr) {
		this.jsr = jsr;
	}

	public CKm getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(CKm subjectCode) {
		this.subjectCode = subjectCode;
	}

	@Length(min=0, max=1, message="审核状态长度必须介于 0 和 1 之间")
	public String getApprovalStatus() {
		return approvalStatus;
	}

	public void setApprovalStatus(String approvalStatus) {
		this.approvalStatus = approvalStatus;
	}

	public User getAuditor() {
		return auditor;
	}

	public void setAuditor(User auditor) {
		this.auditor = auditor;
	}

	public String getDdbh() {
		return ddbh;
	}

	public void setDdbh(String ddbh) {
		this.ddbh = ddbh;
	}

	public String getThstatus() {
		return thstatus;
	}

	public void setThstatus(String thstatus) {
		this.thstatus = thstatus;
	}

	public String getHouseId() {
		return houseId;
	}

	public void setHouseId(String houseId) {
		this.houseId = houseId;
	}

	public int getFybs() {
		return fybs;
	}

	public void setFybs(int fybs) {
		this.fybs = fybs;
	}

	public String getCsName() {
		return csName;
	}

	public void setCsName(String csName) {
		this.csName = csName;
	}

	public String getFaName() {
		return faName;
	}

	public void setFaName(String faName) {
		this.faName = faName;
	}
}