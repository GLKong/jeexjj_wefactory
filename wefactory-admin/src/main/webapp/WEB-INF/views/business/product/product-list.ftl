<#--
/****************************************************
 * Description: t_business_product的简单列表页面，没有编辑功能
 * Copyright:   Copyright (c) 2018
 * Company:     xjj
 * @author      zhanghejie
 * @version     1.0
 * @see
	HISTORY
    *  2018-07-11 zhanghejie Create File
**************************************************/
-->
<#include "/templates/xjj-list.ftl"> 
<@list id=tabId>
	<thead>
		<tr>
			<th><input type="checkbox" class="bscheckall"></th>
	        <th>goods_id</th>
	        <th>goods_specification_ids</th>
	        <th>goods_number</th>
	        <th>retail_price</th>
	        <th>url</th>
	        <th>add_time</th>
	        <th>deleted</th>
	        <th>操作</th>
		</tr>
	</thead>
	<tbody>
		<#list page.items?if_exists as item>
		<tr>
			<td>
			<input type="checkbox" class="bscheck" data="id:${item.id}">
			</td>
			<td>
			    ${item.goodsId}
			</td>
			<td>
			    ${item.goodsSpecificationIds}
			</td>
			<td>
			    ${item.goodsNumber}
			</td>
			<td>
			    ${item.retailPrice}
			</td>
			<td>
			    ${item.url}
			</td>
			<td>
			    ${item.addTime?string('yyyy-MM-dd HH:mm:ss')}
			</td>
			<td>
			    ${item.deleted}
			</td>
			<td>
            	<@button type="purple" icon="fa fa-pencil" onclick="XJJ.edit('${base}/business/product/input/${item.id}','修改t_business_product','${tabId}');">修改</@button>
				<@button type="danger" icon=" fa fa-trash-o" onclick="XJJ.del('${base}/business/product/delete/${item.id}','删除t_business_product？',false,{id:'${tabId}'});">删除</@button>
            </td>
		</tr>
		</#list>
	</tbody>
</@list>