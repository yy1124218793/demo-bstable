package com.xe.demo.common.utils;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;

import com.github.pagehelper.PageHelper;
import com.xe.demo.common.pojo.AjaxResult;
import com.xe.demo.common.pojo.PageAjax;
import com.xe.demo.common.pojo.ParamData;

/**
 * 参数工具
 */
public class AppUtil {

	/**
	 * 检验参数
	 * 
	 * @param key
	 * @param data
	 * @return
	 */
	public static String checkParam(ParamData params, String[] args) {
		String result = null;
		if (null != args && args.length > 0) {
			int size = args.length;
			for (int i = 0; i < size; i++) {
				String param = args[i];
				if (!params.containsKey(param)) {// 检验参数是否传递
					result = "缺少参数:" + param;
					break;
				}
				if (null == params.get(param)) {// 检验参数是否为空
					result = "参数" + param + "不能为空";
					break;
				}
			}
		}
		return result;
	}

	/**
	 * 开始分页
	 * 
	 * @param params
	 * @param order  排序：clumn1 desc, clumn2 desc
	 */
	public static void startPage(ParamData params) {
		if (null != params.get("pageNo") && null != params.get("pageSize")) {
			String order = params.get("sortName") + " " + params.get("sortOrder");
			int pageNo = params.getInt("pageNo");
			int pageSize = params.getInt("pageSize");
			PageHelper.startPage(pageNo, pageSize, order);
		}
	}

	/**
	 * 封装接口返回数据
	 * 
	 * @param result
	 * @return
	 */
	public static AjaxResult returnObj(String result) {
		if (StringUtils.isEmpty(result)) {
			return new AjaxResult();
		}
		return new AjaxResult(result);
	}

	/**
	 * 封装带数据的返回
	 * 
	 * @param result
	 * @param data
	 * @return
	 */
	public static AjaxResult returnObj(String result, Object data) {
		if (StringUtils.isEmpty(result)) {
			return new AjaxResult(data);
		}
		return new AjaxResult(result);
	}

	/**
	 * 封装带集合的返回
	 * 
	 * @param result
	 * @param T
	 * @return
	 */
	public static <T> AjaxResult returnList(String result, List<T> list) {
		if (StringUtils.isEmpty(result)) {
			return returnObj(result, list);
		}
		list = new ArrayList<T>();
		return new AjaxResult(0, result, list);
	}

	/**
	 * 封装分页查询返回
	 * 
	 * @param result
	 * @param list
	 * @return
	 */
	public static <T> AjaxResult returnPage(String result, List<T> list) {
		return returnObj(result, new PageAjax<T>(list));
	}

	/**
	 * 封装分页查询返回
	 * 
	 * @param list
	 * @return
	 */
	public static <T> PageAjax<T> returnPage(List<T> list) {
		return new PageAjax<T>(list);
	}

}
