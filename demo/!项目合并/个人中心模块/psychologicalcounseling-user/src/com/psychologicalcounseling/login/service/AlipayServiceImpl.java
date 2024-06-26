package com.psychologicalcounseling.login.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradeCancelModel;
import com.alipay.api.domain.AlipayTradeQueryModel;
import com.alipay.api.request.AlipayTradeCancelRequest;
import com.alipay.api.request.AlipayTradeQueryRequest;
import com.alipay.api.response.AlipayTradeCancelResponse;
import com.alipay.api.response.AlipayTradeQueryResponse;

import com.psychologicalcounseling.entity.User;
import com.psychologicalcounseling.login.dao.AlipayDaoImpl;
import com.psychologicalcounseling.util.AlipayConfig;

import net.sf.json.JSONObject;

@Service
public class AlipayServiceImpl {

	@Resource
	private AlipayDaoImpl adi;
	
	public AlipayTradeCancelResponse AlipayTradeCancel(String out_trade_no) throws AlipayApiException {
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, AlipayConfig.format, AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
		AlipayTradeCancelRequest request = new AlipayTradeCancelRequest();
		/****************************传参方法一*********************/
		AlipayTradeCancelModel model = new AlipayTradeCancelModel();
		//订单号和支付宝交易号二选一传入即可
		model.setOutTradeNo(out_trade_no);
		//model.setTradeNo("2017080921001004680200182368");
		request.setBizModel(model);
		AlipayTradeCancelResponse response = alipayClient.execute(request);
		return response;
	}
	//根据订单号查询结果
	public AlipayTradeQueryResponse AlipayTradeQuery(String out_trade_no) throws AlipayApiException {
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, AlipayConfig.format, AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
		AlipayTradeQueryRequest request = new AlipayTradeQueryRequest();
		/****************************传参方法一*********************/
		//out_trade_no（外部订单号）和trade_no（支付宝交易号)二选一用 即可查询
		AlipayTradeQueryModel model = new AlipayTradeQueryModel();
		model.setOutTradeNo(out_trade_no);
		request.setBizModel(model);
		AlipayTradeQueryResponse response = alipayClient.execute(request);
		//返回的是查询结果体。
		return response;
	}
	/**
	 * 
	 *@desc:插入订单
	 *@param courseId
	 *@param userId
	 *@param orderId4Alipay
	 *@param courseorderPrice
	 *@return:void
	 *@trhows
	 */
	public void insertCourseOrderByPrecreate(int courseId,int userId,String orderId4Alipay ,float courseorderPrice) {
		adi.insertCourseOrderByPrecreate(courseId, userId, orderId4Alipay, courseorderPrice);
	}
	/**
	 * 
	 *@desc:第三方登录时插入用户。
	 *@param alipayUserId
	 *       false--新用户
	 *@return:void
	 *@trhows
	 */
	public void alipayLogin(String json) {
		//创建一个user
		User user=new User();
		//将传过来的json字符串数据变成json对象
		JSONObject jsonObject=JSONObject.fromObject(json);
		JSONObject jsonObject1=(JSONObject) jsonObject.get("alipay_user_info_share_response");
		System.out.println(jsonObject1.getString("user_id")+"*************************");
		if(isNewUser(jsonObject1.getString("user_id"))==false) {
			//接收用户详细信息的数据
			user.setAlipayUserId(jsonObject1.getString("user_id"));
			if(jsonObject1.has("city")) {
				user.setUserCity(jsonObject1.getString("city"));
			}
			user.setUserIdentity(user.IDENTITY_USER);
			if(jsonObject1.has("province")) {
				user.setUserProvince(jsonObject1.getString("province"));		
			}
			if(jsonObject1.has("nick_name")) {
				user.setUserNickName(jsonObject1.getString("nick_name"));
			}
			if(jsonObject1.has("avatar")) {
				user.setUserHeadPath(jsonObject1.getString("avatar"));
				if(jsonObject1.getString("avatar")=="f") {
					user.setUserSex("男");
				}else {
					user.setUserSex("女");
				}
			}
			user.setUserRegistTime(new Date());
			adi.insertUser(user);
		}else {
			//日志操作
		}
	}
	
	/**
	 * 
	 *@desc:根据alipayUserId判断是不是新用户。
	 *@param alipayUserId
	 *@return  false:新用户
	 *@return:boolean
	 *@trhows
	 */
	public boolean isNewUser(String alipayUserId) {
		List list=adi.isNewUser4Alipay(alipayUserId);
		if(list.size()==0) {
			return false;
		}else {
			return true;
		}
	}
	/**
	 * 
	 *@desc:根据alipayUserId找到对应的userId
	 *@param alipayUserId
	 *@return
	 *@return:int
	 *@trhows
	 */
	public int findUserId(String alipayUserId) {
		return adi.findUserId(alipayUserId);
	}
	

}
