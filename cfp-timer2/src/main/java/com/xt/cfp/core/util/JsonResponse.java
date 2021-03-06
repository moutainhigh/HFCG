package com.xt.cfp.core.util;

import java.util.List;

public class JsonResponse<T> {

	private boolean isSuccess;
	
	private String info;
	
	private T bean;
	
	private List<T> beans;

	public boolean isSuccess() {
		return isSuccess;
	}

	public void setSuccess(boolean isSuccess) {
		this.isSuccess = isSuccess;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public T getBean() {
		return bean;
	}

	public void setBean(T bean) {
		if (bean instanceof Object[]) {
			throw new RuntimeException("please method: setBeans");
		} else if (bean instanceof List) {
			throw new RuntimeException("please method: setBeans");
		}
		this.bean = bean;
	}

	public List<T> getBeans() {
		return beans;
	}

	public void setBeans(List<T> beans) {
		this.beans = beans;
	}
	
	
}
