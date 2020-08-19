package com.xe.demo.service;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xe.demo.common.pojo.AjaxResult;
import com.xe.demo.common.pojo.PageAjax;
import com.xe.demo.common.pojo.ParamData;
import com.xe.demo.common.utils.AppUtil;
import com.xe.demo.mapper.DaoSupport;

public interface UserService {

	public AjaxResult findForObject(String str, String[] args);

	// 查询列表
	public AjaxResult findForList(String str, String[] args);

	// 分页查询
	public AjaxResult findForPage(String str, String[] args);

	public <T> PageAjax<T> findPage(String str, String[] args);

	// 查询指定字段
	public Map<?, ?> findForMap(String str, String key);

	// 保存
	public AjaxResult save(String str, String[] args);

	// 批量保存
	public AjaxResult batchSave(String str, List<?> list);

	// 修改
	public AjaxResult update(String str, String[] args);

	// 批量修改
	public AjaxResult batchUpdate(String str, List<?> list);

	// 删除
	public AjaxResult delete(String str, String[] args);

	// 批量删除
	public AjaxResult batchDelete(String str, Integer[] ids);
}
