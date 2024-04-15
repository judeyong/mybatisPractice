package com.kh.mybatis.board.model.vo;

import java.sql.Date;

public class Reply {
	
	private int replyNo;
	private int refBno;
	private String replyContent;
	private String replyWriter;
	private String status;
	private Date createDate;
	
	public Reply() {
		super();
	}
	
	public Reply(int replyNo, int refBno, String replyContent, String replyWriter, String status, Date createDate) {
		super();
		this.replyNo = replyNo;
		this.refBno = refBno;
		this.replyContent = replyContent;
		this.replyWriter = replyWriter;
		this.status = status;
		this.createDate = createDate;
	}
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public int getRefBno() {
		return refBno;
	}
	public void setRefBno(int refBno) {
		this.refBno = refBno;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyWriter() {
		return replyWriter;
	}
	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", refBno=" + refBno + ", replyContent=" + replyContent + ", replyWriter="
				+ replyWriter + ", status=" + status + ", CreateDate=" + createDate + "]";
	}
	
	
	
}
