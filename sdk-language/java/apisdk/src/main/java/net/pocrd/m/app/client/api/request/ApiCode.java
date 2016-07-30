// Auto Generated.  DO NOT EDIT!
package net.pocrd.m.app.client.api.request;

/**
 * 本类定义了接口有可能的返回值集合, 其中0为成功, 负数值为所有接口都有可能返回的通用code, 正数值是接口相关的code(请参见接口文档).
 */
public class ApiCode {
    
    /* 未分配返回值 服务端: */
    public static final int NO_ASSIGN = -2147483648;
    /* 上传文件名错误 服务端: */
    public static final int UPLOAD_FILE_NAME_ERROR = -390;
    /* 上传文件过大 服务端: */
    public static final int UPLOAD_FILE_TOO_LARGE = -380;
    /* 用户被锁定 服务端: */
    public static final int USER_LOCKED = -370;
    /* token错误 服务端: */
    public static final int TOKEN_ERROR = -360;
    /* 不是激活设备(用户在其他地方登录) 服务端: */
    public static final int NO_ACTIVE_DEVICE = -340;
    /* 不是用户的受信设备 服务端: */
    public static final int NO_TRUSTED_DEVICE = -320;
    /* token已过期 服务端: */
    public static final int TOKEN_EXPIRE = -300;
    /* 应用id不存在 服务端: */
    public static final int APPID_NOT_EXIST = -280;
    /* 上行短信尚未收到 服务端: */
    public static final int UPLINK_SMS_NOT_RECEIVED = -270;
    /* 手机动态密码错误 服务端: */
    public static final int DYNAMIC_CODE_ERROR = -260;
    /* 手机号未绑定 服务端: */
    public static final int MOBILE_NOT_REGIST = -250;
    /* 接口已升级 服务端: */
    public static final int API_UPGRADE = -220;
    /* 请求解析错误 服务端: */
    public static final int REQUEST_PARSE_ERROR = -200;
    /* 非法的请求组合 服务端: */
    public static final int ILLEGAL_MULTIAPI_ASSEMBLY = -190;
    /* 签名错误 服务端: */
    public static final int SIGNATURE_ERROR = -180;
    /* 访问被拒绝 服务端: */
    public static final int ACCESS_DENIED = -160;
    /* 参数错误 服务端: */
    public static final int PARAMETER_ERROR = -140;
    /* mt参数服务端无法识别 服务端: */
    public static final int UNKNOWN_METHOD = -120;
    /* 服务端返回未知错误 服务端: */
    public static final int UNKNOWN_ERROR = -100;
    /* 成功 服务端: */
    public static final int SUCCESS = 0;
    /* 未找到用户 服务端:user */
    public static final int USER_NOT_FOUND_1000010 = 1000010;
    /* 账户已注册 服务端:user */
    public static final int USER_EXISTED_1000020 = 1000020;
    /* 用户名or密码错误 服务端:user */
    public static final int USERNAME_OR_PASSWORD_ERROR_1000030 = 1000030;
    /* 原密码错误 服务端:user */
    public static final int PASSWORD_ERROR_1000040 = 1000040;
    /* 邮箱地址错误 服务端:user */
    public static final int MAILID_ERROR_1000050 = 1000050;
    /* 密码与原密码相同 服务端:user */
    public static final int SAME_PASSWORD_ERROR_1000060 = 1000060;
    /* 参数错误 服务端:user */
    public static final int PARAMETER_ERROR_1000070 = 1000070;
    /* 图片验证码错误 服务端:user */
    public static final int VERIFYCODE_ERROR_1000100 = 1000100;
    /* 账户尚未激活 服务端:user */
    public static final int USER_NOT_ACTIVATED_1000110 = 1000110;
    /* 链接已过期 服务端:user */
    public static final int LINK_EXPIRED_1000120 = 1000120;
    /* 签名验证失败 服务端:user */
    public static final int SIGN_ERROR_1000130 = 1000130;
    /* 密码修改间隔太短 服务端:user */
    public static final int PASSWORD_UPDATE_INTERVAL_SHORT_1000140 = 1000140;
    /* 邮件请求频繁 服务端:user */
    public static final int MAIL_ASK_TOO_OFTEN_1000160 = 1000160;
    /* 收货人身份信息已存在，选择即可 服务端:user */
    public static final int RECEIVER_EXISTED_1000200 = 1000200;
    /* 校验第三方accessToken失败 服务端:user */
    public static final int CHECK_ACCESSTOKEN_FAILED_1000210 = 1000210;
    /* 不支持非门店账户下单or非门店下单 服务端:user */
    public static final int USER_ORDER_NON_SUPPORTED_1000220 = 1000220;
    /* 手机号错误，请输入正确的手机号 服务端:user */
    public static final int MOBILE_NUM_ERROR_1000230 = 1000230;
    /* 短信验证码错误 服务端:user */
    public static final int MOBILE_VFCODE_ERROR_1000240 = 1000240;
    /* 短信验证码已过期 服务端:user */
    public static final int MOBILE_VFCODE_EXPIRE_1000250 = 1000250;
    /* 短信请求太过频繁 服务端:user */
    public static final int MOBILE_SMS_ASK_TOO_OFTEN_1000270 = 1000270;
    /* 身份证号码错误 服务端:user */
    public static final int CREDTNUM_ERROR_1000280 = 1000280;
    /* 短信请求太多 服务端:user */
    public static final int SMS_ASK_TOO_MORE_1000290 = 1000290;
    /* 用户名或密码错误已达3次 服务端:user */
    public static final int PASSWORD_ERROR_TOO_MORE_1000300 = 1000300;
    /* 已达到最大允许数目 服务端:user */
    public static final int REACH_MAXNUM_1000310 = 1000310;
    /* 用户未授权 服务端:user */
    public static final int USER_NOT_AUTH_1000320 = 1000320;
    /* 输入的邮编错误 服务端:user */
    public static final int ZIPCODE_ERROR_1000332 = 1000332;
    /* 用户账户还没有密码 服务端:user */
    public static final int USER_EXIST_NO_PSWD_1000340 = 1000340;
    /* 验证临时token失败,请重新登录 服务端:user */
    public static final int CHECK_TEMP_TOKEN_FAIL_1000350 = 1000350;
    /* 第三方账户已绑定海淘账户 服务端:user */
    public static final int PARTNER_HAS_BINDED_1000360 = 1000360;
    /* 支付宝验签失败 服务端:user */
    public static final int ALIPAY_VERIFY_FAIL_1000370 = 1000370;
    /* 已经绑定了同类的第三方账户 服务端:user */
    public static final int HAS_BIND_SAME_PARTNER_1000380 = 1000380;
    /* 密码缺失，请输入密码 服务端:user */
    public static final int PASSWORD_LOST_1000400 = 1000400;
    /* 需要短信验证码，请输入 服务端:user */
    public static final int MOBILE_VFCODE_NEED_1000410 = 1000410;
    /* 尚未绑定支付宝账户或账户名缺失 服务端:user */
    public static final int NOT_BIND_ALIACT_1000420 = 1000420;
    /* 未达到提现金额限制 服务端:user */
    public static final int NOT_REACH_GETCASHAMOUI_1000430 = 1000430;
    /* 已绑定支付宝账户 服务端:user */
    public static final int HAS_BINDED_ALIACT_1000440 = 1000440;
    /* 该时间段内不支持此请求 服务端:user */
    public static final int TIME_NOT_SUPPORT_REQUEST_1000450 = 1000450;
    /* 投票类型不存在 服务端:user */
    public static final int VOTETYPE_NOT_EXIST_1000460 = 1000460;
    /* 邀请人并非推广员 服务端:user */
    public static final int INVITER_NOT_PROMOTER_1000470 = 1000470;
    /* 用户账户被冻结，不允许登录 服务端:user */
    public static final int USER_LOGINDENY_1000480 = 1000480;
    /* 海关发货需要实名制信息，请输入真实姓名 服务端:user */
    public static final int USER_RCVNAME_UNSUPPORT_1000490 = 1000490;
    /* 用户手机号尚未验证，不允许设置密码 服务端:user */
    public static final int USER_MOBILE_UNVERIFY_1000500 = 1000500;
    /* 用户已经绑定过工号了 服务端:user */
    public static final int USER_HASBINDED_NUMB_1000510 = 1000510;
    /* 该工号已经被其他用户绑定了 服务端:user */
    public static final int IDNUMB_BASBINDED_BY_OTHERS_1000520 = 1000520;
    /* 该用户不是小哥 服务端:user */
    public static final int USER_ISNOT_XG_1000530 = 1000530;
    /* 该用户账户被封停，暂时不能提现 服务端:user */
    public static final int USER_RQCASH_REJECTED_1000540 = 1000540;
    /* 用户没有响应的第三方账户需要解绑 服务端:user */
    public static final int USER_HASNOPARTNER_UNBIND_1000550 = 1000550;
    /* 第三方账户已经绑定了其他用户账户 服务端:user */
    public static final int PARTNER_BIND_OTHERUSER_1000560 = 1000560;
    /* 不支持当前账户解绑，需要保证该账户可达 服务端:user */
    public static final int USER_NOTSUPPORT_UNBIND_1000570 = 1000570;
    /* 换绑请求太过频繁，请稍后再试 服务端:user */
    public static final int USER_CHANGEBIND_TOO_OFTEN_1000580 = 1000580;
    /* 授权凭据验证失败，请重新获取凭据 服务端:user */
    public static final int AUTHTOKEN_CHECK_FAILED_1000590 = 1000590;
    /* 订单不存在失败 服务端:supplychain */
    public static final int LOGISTICS_ORDER_NOTEXIST_ERR_2004020 = 2004020;
    /* 物流系统内部异常 服务端:supplychain */
    public static final int LOGISTICS_INTERNAL_ERROR_2006000 = 2006000;
    /* 状态机内部异常 服务端:supplychain */
    public static final int LOGISTICS_STATE_MACHINE_INTERNAL_EXCEPTION_2007004 = 2007004;
    /* 供应链系统维护中，请稍后再试 服务端:supplychain */
    public static final int LOGISTICS_SYSTEM_MAINTENANCE_2007016 = 2007016;
    /* 可售库存不足 服务端:supplychain */
    public static final int STOCK_SERVICE_SALE_COUNT_NOT_ENOUGH_ERROR_2070009 = 2070009;
    /* 未找到可售库存记录 服务端:supplychain */
    public static final int STOCK_SERVICE_SALE_RECORD_NOT_FOUND_ERROR_2070010 = 2070010;
    /* 批次禁用记录已存在 服务端:supplychain */
    public static final int STOCK_SERVICE_BATCH_STOCK_LOCK_LOG_EXIST_2070018 = 2070018;
    /* 调整寄售不入库商品库存数量失败 服务端:supplychain */
    public static final int OPERATE_CONSIGN_STOCK_ERROR_2070020 = 2070020;
    /* 退货仓和存储仓不需要使用批次禁用功能 服务端:supplychain */
    public static final int UNSUPPORT_BATCH_STOCK_LOCK_WAREHOUSE_2070022 = 2070022;
    /* 出库单不存在 服务端:supplychain */
    public static final int LOGISTICS_COMPANY_SERVICE_STOCKOUTORDER_NOT_EXIST_2150001 = 2150001;
    /* 参数不合法 服务端:supplychain */
    public static final int SUPPLIER_CHANNEL_DISTRIBUTION_PARAMS_ILLEGAL_2280000 = 2280000;
    /* 找不到批次库存记录 服务端:supplychain */
    public static final int SUPPLIER_CHANNEL_BATCH_STOCK_NOT_FOUND_2280001 = 2280001;
    /* 参数不合法 服务端:supplychain */
    public static final int CUSTOMS_CLEARANCE_SERVICE_PARAMS_ILLEGAL_2290000 = 2290000;
    /* 调用清关接口异常，出库单不存在 服务端:supplychain */
    public static final int CUSTOMS_CLEARANCE_SERVICE_ORDER_NOT_EXIST_ERROR_2290002 = 2290002;
    /* 调用清关接口异常，出库单没有找到对应线路 服务端:supplychain */
    public static final int CUSTOMS_CLEARANCE_SERVICE_LINE_NULL_ERROR_2290005 = 2290005;
    /* 调用清关接口异常，出库单对应线路不需要身份证信息 服务端:supplychain */
    public static final int CUSTOMS_CLEARANCE_SERVICE_LINE_NOT_NEED_CARD_ERROR_2290006 = 2290006;
    /* 调用清关接口异常，未获取到身份信息 服务端:supplychain */
    public static final int CUSTOMS_CLEARANCE_SERVICE_CARD_INFO_INCOMPLETE_ERROR_2290007 = 2290007;
    /* 调用清关接口异常，该订单线路未配置清关信息 服务端:supplychain */
    public static final int CUSTOMS_CLEARANCE_SERVICE_LOGISTICS_NULL_ERROR_2290008 = 2290008;
    /* 调用清关接口异常，清关公司编码错误 服务端:supplychain */
    public static final int CUSTOMS_CLEARANCE_SERVICE_LOGISTICSNID_ERROR_2290009 = 2290009;
    /* 出库单不存在 服务端:supplychain */
    public static final int OPENAPI_SERVICE_STOCKOUT_ORDER_NOT_EXIST_2300001 = 2300001;
    /* 参数不合法 服务端:supplychain */
    public static final int OPENAPI_SERVICE_PARAM_ILLEGAL_2300002 = 2300002;
    /* 订单状态流转异常 服务端:supplychain */
    public static final int OPENAPI_SERVICE_STATE_CHANGE_ERROR_2300003 = 2300003;
    /* 订单运单信息不能为空 服务端:supplychain */
    public static final int OPENAPI_SERVICE_MAIL_NO_NOT_ALL_EMPTY_2300004 = 2300004;
    /* 已存在待审核的供货价格调整申请记录, 无法操作新增 服务端:supplychain */
    public static final int PROVIDER_SKU_SUPPLY_PRICE_ADJUST_DATA_DUPLICATE_ERROR_2400007 = 2400007;
    /* 参数不合法 服务端:supplychain */
    public static final int PRODUCT_ATTRIBUTE_OPT_PARAM_ILLEGAL_2420001 = 2420001;
    /* 属性值新建失败 服务端:supplychain */
    public static final int PRODUCT_ATTRIBUTE_VALUE_CREATE_ERROR_2420017 = 2420017;
    /* 系统内部异常 服务端:supplychain */
    public static final int UNKNOWN_ERROR_2500001 = 2500001;
    /* 系统并发异常 服务端:supplychain */
    public static final int OPEN_CONCURRENT_ERR_2500003 = 2500003;
    /* 该订单已创建过出库单 服务端:supplychain */
    public static final int STOCKOUT_ORDER_EXIST_ERR_2500009 = 2500009;
    /* 未注册的仓库编码 服务端:supplychain */
    public static final int NO_REGISTER_WAREHOUSE_CODE_ERR_2500010 = 2500010;
    /* 不可用的仓库编码 服务端:supplychain */
    public static final int UNUSABLE_WAREHOUSE_CODE_ERR_2500011 = 2500011;
    /* 订单不存在 服务端:supplychain */
    public static final int STOCKOUT_ORDER_NOT_EXIST_ERR_2500012 = 2500012;
    /* 订单已出库不允许取消 服务端:supplychain */
    public static final int CURRENT_STATE_CANNOT_CANCEL_ERR_2500013 = 2500013;
    /* 订单已出库不允许取消 服务端:supplychain */
    public static final int CURRENT_STATE_CANNOT_RECREATE_ERR_2500014 = 2500014;
    /* 一次性查询订单量不能大于500 服务端:supplychain */
    public static final int ONE_TIME_QUERY_NUM_OVER_LIMIT_ERR_2500015 = 2500015;
    /* 店铺ID不能为空 服务端:supplychain */
    public static final int PARAMS_SHOP_ID_EMPTY_ERR_2500100 = 2500100;
    /* 企业代码不能为空 服务端:supplychain */
    public static final int PARAMS_COMPANY_CODE_EMPTY_ERR_2500101 = 2500101;
    /* 企业名称不能为空 服务端:supplychain */
    public static final int PARAMS_COMPANY_NAME_EMPTY_ERR_2500102 = 2500102;
    /* 仓库编码不能为空 服务端:supplychain */
    public static final int PARAMS_WAREHOUSE_CODE_EMPTY_ERR_2500104 = 2500104;
    /* 购物网站买家账号不能为空 服务端:supplychain */
    public static final int PARAMS_BUYER_ACCOUNT_EMPTY_ERR_2500105 = 2500105;
    /* 购物网站买家手机号不能为空 服务端:supplychain */
    public static final int PARAMS_BUYER_PHONE_EMPTY_ERR_2500106 = 2500106;
    /* 支付流水号不能为空 服务端:supplychain */
    public static final int PARAMS_PAYMENT_NO_EMPTY_ERR_2500107 = 2500107;
    /* 买家身份证号码不能为空 服务端:supplychain */
    public static final int PARAMS_PAY_ID_NO_EMPTY_ERR_2500108 = 2500108;
    /* 买家真实姓名不能为空 服务端:supplychain */
    public static final int PARAMS_PAY_NAME_EMPTY_ERR_2500109 = 2500109;
    /* 国内物流承运商编码不能为空 服务端:supplychain */
    public static final int PARAMS_CARRIER_CODE_EMPTY_ERR_2500110 = 2500110;
    /* 收货人名称不能为空 服务端:supplychain */
    public static final int PARAMS_CONSIGNEE_NAME_EMPTY_ERR_2500111 = 2500111;
    /* 收货人地址（省）不能为空 服务端:supplychain */
    public static final int PARAMS_CONSIGNEE_PROVINCE_EMPTY_ERR_2500112 = 2500112;
    /* 收货人地址（市）不能为空 服务端:supplychain */
    public static final int PARAMS_CONSIGNEE_CITY_EMPTY_ERR_2500113 = 2500113;
    /* 收货人地址（区）不能为空 服务端:supplychain */
    public static final int PARAMS_CONSIGNEE_DISTRICT_EMPTY_ERR_2500114 = 2500114;
    /* 收货人地址（详细地址）不能为空 服务端:supplychain */
    public static final int PARAMS_CONSIGNEE_ADDRESS_EMPTY_ERR_2500115 = 2500115;
    /* 收货人电话号码不能为空 服务端:supplychain */
    public static final int PARAMS_CONSIGNEE_TELEPHONE_EMPTY_ERR_2500116 = 2500116;
    /* 订单商品明细不能为空 服务端:supplychain */
    public static final int PARAMS_SKU_DETAIL_EMPTY_ERR_2500117 = 2500117;
    /* 未注册的企业代码 服务端:supplychain */
    public static final int NO_REGISTER_SHOP_ID_ERR_2500118 = 2500118;
    /* 订单相关金额必须大于等于0 服务端:supplychain */
    public static final int ORDER_ILLEGAL_AMOUNT_ERR_2500119 = 2500119;
    /* 订单下商品相关金额必须大于等于0 服务端:supplychain */
    public static final int ORDER_SKU_ILLEGAL_AMOUNT_ERR_2500120 = 2500120;
    /* 订单下商品购买数量必须大于0 服务端:supplychain */
    public static final int ORDER_SKU_COUNT_ILLEGAL_ERR_2500121 = 2500121;
    /* 订单货物价值必须等于实付金额+税金+优惠金额+运费 服务端:supplychain */
    public static final int ORDER_GOODS_AMOUNT_ILLEGAL_ERR_2500122 = 2500122;
    /* 实名认证失败 服务端:supplychain */
    public static final int REAL_NAME_AUTHENTICATION_FAIL_ERR_2500123 = 2500123;
    /* 集货回传-商户编码为空 
en-us: The content of MERCHANTID, which is passed from Shippers is null 服务端:supplychain */
    public static final int TWS_MERCHANTID_EMPTY_ERROR_2600001 = 2600001;
    /* 集货回传-出库单ID数值错误 
en-us: The order ID of stock out, which is passed back from delivery is wrong 服务端:supplychain */
    public static final int TWS_ORDERID_ERROR_2600002 = 2600002;
    /* 集货-日期错误 
en-us: The date 服务端:supplychain */
    public static final int TWS_DATE_ERROR_2600003 = 2600003;
    /* 集货回传-重量值错误 服务端:supplychain */
    public static final int TWS_WEIGHT_ERROR_2600004 = 2600004;
    /* 集货回传-提货单号为空 服务端:supplychain */
    public static final int TWS_BILLNO_EMPTY_ERROR_2600005 = 2600005;
    /* 集货回传-订单不存在 服务端:supplychain */
    public static final int TWS_ORDER_NOT_EXIST_ERROR_2600006 = 2600006;
    /* 集货回传-路由信息为空 服务端:supplychain */
    public static final int TWS_ROUTE_EMPTY_ERROR_2600007 = 2600007;
    /* 集货回传-路由时间错误 服务端:supplychain */
    public static final int TWS_ROUTE_DATE_ERROR_2600008 = 2600008;
    /* 集货回传-路由城市为空 服务端:supplychain */
    public static final int TWS_ROUTE_CITY_ERROR_2600010 = 2600010;
    /* 集货回传-路由详情为空 服务端:supplychain */
    public static final int TWS_ROUTE_DESCRIPTION_ERROR_2600011 = 2600011;
    /* 集货-丰趣海淘保存出库信息失败 服务端:supplychain */
    public static final int TWS_SAVE_OUT_ERROR_2600012 = 2600012;
    /* 集货-商户编码不存在 服务端:supplychain */
    public static final int TWS_MERCHANT_NOT_EXIST_2600013 = 2600013;
    /* 集货查询-开始日期大于结束日期 服务端:supplychain */
    public static final int TWS_DATE_ORDER_ERROR_2600014 = 2600014;
    /* 集货查询-订单状态内容为空 服务端:supplychain */
    public static final int TWS_ORDER_STATE_EMPTY_2600015 = 2600015;
    /* 集货查询-订单状态值错误 服务端:supplychain */
    public static final int TWS_ORDER_STATE_ERROR_2600016 = 2600016;
    /* 供货商回传-商户编码为空 
en-us: The content of MERCHANTID, which is passed from Shippers is null 服务端:supplychain */
    public static final int SUPPLIER_MERCHANTID_EMPTY_ERROR_2700001 = 2700001;
    /* 供货商回传-出库单ID数值错误 
en-us: The order ID of stock out, which is passed back from delivery is wrong 服务端:supplychain */
    public static final int SUPPLIER_ORDERID_ERROR_2700002 = 2700002;
    /* 供货商-日期错误 
en-us: The date is error 服务端:supplychain */
    public static final int SUPPLIER_DATE_ERROR_2700003 = 2700003;
    /* 供货商回传-提货单号为空 
en-us: billno is empty 服务端:supplychain */
    public static final int SUPPLIER_BILLNO_EMPTY_ERROR_2700005 = 2700005;
    /* 供货商回传-订单不存在 
en-us: The order id does not exist  服务端:supplychain */
    public static final int SUPPLIER_ORDER_NOT_EXIST_ERROR_2700006 = 2700006;
    /* 供货商-商户编码不存在 
en-us: Merchant code does not exist 服务端:supplychain */
    public static final int SUPPLIER_MERCHANT_NOT_EXIST_2700013 = 2700013;
    /* 供货商查询-开始日期大于结束日期 
en-us: Start date is greater than end date 服务端:supplychain */
    public static final int SUPPLIER_DATE_ORDER_ERROR_2700014 = 2700014;
    /* 供货商查询-订单状态内容为空 
en-us: The content of the order status is empty 服务端:supplychain */
    public static final int SUPPLIER_ORDER_STATE_EMPTY_2700015 = 2700015;
    /* 供货商查询-订单状态值错误 
en-us: Order status value error 服务端:supplychain */
    public static final int SUPPLIER_ORDER_STATE_ERROR_2700016 = 2700016;
    /* 供货商查询PDF面单-异常 
en-us: Supplier query PDF surface single - exception 服务端:supplychain */
    public static final int SUPPLIER_ORDER_PDF_REGION_ERROR_2700017 = 2700017;
    /* 供货商同步sku库存-同步数据为空 服务端:supplychain */
    public static final int SUPPLIER_SKU_SYNC_ERROR_2700018 = 2700018;
    /* 供货商订单查询时间跨度不能超过一个月 
en-us: Supplier order query time span no more than a month 服务端:supplychain */
    public static final int SUPPLIER_DATE_OVER_ERROR_2700019 = 2700019;
    /* 供货商回传商品库存skuID或thirdSkuid不能同时为空 
en-us: skuID or thirdSkuid cannot at the same time is empty 服务端:supplychain */
    public static final int SUPPLIER_SKUID_EMPTY_EMPTY_2700020 = 2700020;
    /* 供货商更新商品库存-操作类型错误 
en-us: Operation type error 服务端:supplychain */
    public static final int SUPPLIER_OPERATE_TYPE_ERROR_2700021 = 2700021;
    /* 供货商更新商品库存-操作数量小于零 
en-us: Operation number less than zero 服务端:supplychain */
    public static final int SUPPLIER_OPERATE_COUNT_ERROR_2700022 = 2700022;
    /* 供货商查询商品库存-实物库存记录不存在 
en-us: inventory record does not exist 服务端:supplychain */
    public static final int SUPPLIER_QUERY_COUNT_ERROR_2700023 = 2700023;
    /* 供货商获取PDF面单信息-异常 服务端:supplychain */
    public static final int SUPPLIER_ORDER_PDF_INFO_ERROR_2700024 = 2700024;
    /* 供货商回传-子订单ID数值错误 
en-us: The biz ID of stock out, which is passed back from delivery is wrong 服务端:supplychain */
    public static final int SUPPLIER_BIZID_ERROR_2700025 = 2700025;
    /* 支付金额非法 服务端:payment */
    public static final int PAY_AMOUNT_ERR_3000001 = 3000001;
    /* 支付状态不允许支付 服务端:payment */
    public static final int PAY_ORDER_STATE_CANNTPAY_ERR_3000002 = 3000002;
    /* 退款金额非法 服务端:payment */
    public static final int REFUND_AMOUNT_ERR_3000003 = 3000003;
    /* 原订单不存在 服务端:payment */
    public static final int OLD_ORDER_NOTEXIST_ERR_3000004 = 3000004;
    /* 原订单状态不允许退款 服务端:payment */
    public static final int OLD_ORDER_STATE_CANNT_REFUND_ERR_3000005 = 3000005;
    /* 不支持该支付方式 服务端:payment */
    public static final int PAY_USER_ORDER_ERR_3000007 = 3000007;
    /* 订单并发支付请求被拒绝 服务端:payment */
    public static final int CONCURRENT_PAYREQUEST_REFUSED_3000070 = 3000070;
    /* order unkown error 服务端:orderOpenApi */
    public static final int ORDER_UNKNOW_ERROR_4000100 = 4000100;
    /* 订单地址不存在 服务端:orderOpenApi */
    public static final int ORDER_REC_ADDR_INEXISTENCE_4000200 = 4000200;
    /* 订单商品信息改变 服务端:orderOpenApi */
    public static final int ORDER_PRODUCTS_INFO_CHANGE_4000400 = 4000400;
    /* 购买数量超过活动每人限购数量 服务端:order */
    public static final int EXCEED_ACTIVITY_LIMIT_NUM_4000401 = 4000401;
    /* 折扣金额大于订单总金额 服务端:order */
    public static final int DISCOUNT_EXCEED_TOTALPRICE_4000402 = 4000402;
    /* 购买数量超过活动剩余库存 服务端:order */
    public static final int EXCEED_ACTIVITY_COUNT_4000403 = 4000403;
    /* 活动已经结束 服务端:order */
    public static final int ACTIVITY_FINISHED_4000404 = 4000404;
    /* 折扣金额过大，超过订单总金额的30%！ 服务端:order */
    public static final int DISCOUNT_TOO_LARGE_4000405 = 4000405;
    /* 商品金额超过订单限额 服务端:orderOpenApi */
    public static final int TOTALPRICE_EXTEND_LIMIT_4000412 = 4000412;
    /* 订单商品库存不足 服务端:orderOpenApi */
    public static final int ORDER_STOCK_INSUFFICIENT_4000500 = 4000500;
    /* 订单商品超过限额 服务端:orderOpenApi */
    public static final int ORDER_PRODUCT_OVER_LIMIT_4000600 = 4000600;
    /* 订单商品金额改变 服务端:orderOpenApi */
    public static final int ORDER_AMOUNT_CHANGE_4000700 = 4000700;
    /* 订单状态不能取消 服务端:orderOpenApi */
    public static final int ORDER_STATUS_CANNOT_CANCEL_4000800 = 4000800;
    /* 子订单状态不符合确认操作 服务端:orderOpenApi */
    public static final int ORDER_STATUS_CANNOT_CONFIRM_4000900 = 4000900;
    /* 请求支付系统失败 服务端:orderOpenApi */
    public static final int CALL_PAYSERVICE_ERROR_4001500 = 4001500;
    /*  服务端:orderOpenApi */
    public static final int CALL_PAYSERVICE_ORDER_STATE_ERROR_4001504 = 4001504;
    /* 该物流单已经成功发货，不要重复发货！ 服务端:orderOpenApi */
    public static final int LOGISTICSNO_DUPLICATE_4001601 = 4001601;
    /* 订单中itemId不存在 服务端:orderOpenApi */
    public static final int ORDER_ITEM_NOT_EXISTS_4001623 = 4001623;
    /* 订单收货地址发生变化 服务端:order */
    public static final int ORDER_ADDRESS_CHANGED_4001626 = 4001626;
    /* 积分使用失败 服务端:order */
    public static final int INTRGAL_USE_ERROR_4001641 = 4001641;
    /* 缓存失效，请重新刷新页面 服务端:order */
    public static final int CACHE_TIME_OUT_4001651 = 4001651;
    /* 满足查询条件的订单不存在 服务端:orderOpenApi */
    public static final int ORDER_NOT_EXIST_4001700 = 4001700;
    /* 购买的多个商品货源地不一致 服务端:orderOpenApi */
    public static final int ORDER_STARTPOINT_INCONSISTENT_4002300 = 4002300;
    /* 购买的多个商品的商品形态不一致 服务端:orderOpenApi */
    public static final int ORDER_PRODUCT_SHAPE_INCONSISTENT_4002400 = 4002400;
    /* 购买的商品支付卡类型为空 服务端:orderOpenApi */
    public static final int ORDER_PRODUCT_PAYTYPE_NULL_4002500 = 4002500;
    /* 购买的商品不在配送范围内 服务端:orderOpenApi */
    public static final int ORDER_PRODUCT_NOT_IN_RANGE_4002600 = 4002600;
    /* 购买的商品不是上架状态 服务端:orderOpenApi */
    public static final int ORDER_PRODUCT_STATUS_NOT_ON_SALE_4002700 = 4002700;
    /* 订单所处状态不能运营修改 服务端:orderOpenApi */
    public static final int ORDER_STATUS_CANNOT_EDIT_4002800 = 4002800;
    /* 当前预售活动，支付定金时间已过，已经不能买了 服务端:order */
    public static final int ORDER_PRESELL_PREPAY_ALREADY_OVER_4002902 = 4002902;
    /* 请求参数有误 服务端:orderOpenApi */
    public static final int ILLEGLE_ARGUMENT_4100600 = 4100600;
    /* 此订单无法被删除 服务端:order */
    public static final int ORDER_CANNOT_DELETE_4100602 = 4100602;
    /* 订单取消用户和订单用户不匹配 服务端:orderOpenApi */
    public static final int ORDER_CANCEL_USER_NOT_MATCH_4100800 = 4100800;
    /* 优惠券使用失败！ 服务端:orderOpenApi */
    public static final int COUPON_USER_ERROR_4100901 = 4100901;
    /* 优惠券不在可使用的时间范围内！ 服务端:orderOpenApi */
    public static final int COUPON_TIME_ERROR_4100902 = 4100902;
    /* 优惠券不能在该渠道下使用！ 服务端:orderOpenApi */
    public static final int COUPON_CHANNEL_ERROR_4100903 = 4100903;
    /* 优惠券不能在该终端下使用！ 服务端:orderOpenApi */
    public static final int COUPON_APPLICATION_ERROR_4100904 = 4100904;
    /* 使用的优惠券不满足满减条件！ 服务端:orderOpenApi */
    public static final int COUPON_REDUCE_ERROR_4100905 = 4100905;
    /* 使用的优惠券金额超过商品总金额的30%！ 服务端:orderOpenApi */
    public static final int COUPON_AMOUNT_ERROR_4100906 = 4100906;
    /* 通知商户状态变更失败! 服务端:orderOpenApi */
    public static final int NOTIFY_MERCHANT_ERROR_4100907 = 4100907;
    /* 商户订单号已存在！ 服务端:orderOpenApi */
    public static final int MERCHANT_ORDER_NO_EXISTS_4100908 = 4100908;
    /* 商品id不存在 服务端:orderOpenApi */
    public static final int PRODUCT_ID_NOT_EXISTS_4100910 = 4100910;
    /* 订单包裹重复申请取消 服务端:order */
    public static final int ORDER_PACKAGE_MULTI_CANCEL_4100913 = 4100913;
    /* 订单包裹状态不允许取消 服务端:order */
    public static final int ORDER_PACKAGE_STATUS_CANT_CANCEL_4100914 = 4100914;
    /* 订单取消失败 服务端:orderOpenApi */
    public static final int ORDER_CANCEL_FAILED_4101200 = 4101200;
    /* 参数错误 服务端:product */
    public static final int PARAMETER_ERROR_5000000 = 5000000;
    /* 该商品不存在 服务端:product */
    public static final int SKU_FOUND_ERROR_5000100 = 5000100;
    /* 类目未发现 服务端:product */
    public static final int CATEGORY_FOUND_ERROR_5000400 = 5000400;
    /* 该商品不存在 服务端:product */
    public static final int SKU_SALE_RELATION_FOUND_ERROR_5000700 = 5000700;
    /* 重复收藏品牌 服务端:product */
    public static final int REPEAT_WATCHING_BRANDS_5001702 = 5001702;
    /* 到货通知存储信息失败 服务端:product */
    public static final int STORE_MOBILE_PHONE_ERROR_5002000 = 5002000;
    /* 反馈信息存储失败 服务端:product */
    public static final int STORE_FEED_BACK_ERROR_5004000 = 5004000;
    /* 店铺不存在 服务端:product */
    public static final int SHOP_DOES_NOT_EXIST_5023000 = 5023000;
    /* 获取搭配折扣数据错误 服务端:product */
    public static final int MIX_DISCOUNT_PRODUCT_FOUND_ERROR_5025000 = 5025000;
    /* 获取前台类目数据错误 服务端:product */
    public static final int FIND_CATEPAGE_ERROR_5029000 = 5029000;
    /* 降价通知订阅失败 服务端:product */
    public static final int SUBSCRIBE_PRICE_NOTICE_ERROR_5033000 = 5033000;
    /* 重复收藏商品 服务端:product */
    public static final int REPEAT_COLLECTING_GOODS_5038000 = 5038000;
    /* 参数错误 服务端:b2cmall */
    public static final int B2CMALL_PARAMTER_ERROR_9000002 = 9000002;
    /* url不合法 服务端:b2cmall */
    public static final int PAGEURL_ILLEGAL_9000005 = 9000005;
    /* 该商品不存在 服务端:b2cmall */
    public static final int SKU_NOT_FOUND_9000200 = 9000200;
    /* 该商品不存在 服务端:b2cmall */
    public static final int ITEM_NOT_FOUND_9000210 = 9000210;
    /* 访问专题类型不匹配 服务端:b2cmall */
    public static final int TOPIC_TYPE_NOT_MATCH_9000303 = 9000303;
    /* 内部异常 服务端:vender */
    public static final int VENDER_INTERNAL_ERROR_10000001 = 10000001;
    /* 参数错误 服务端:vender */
    public static final int VENDER_PARAMTER_ERROR_10000002 = 10000002;
    /* 卡券id不存在 服务端:coupon */
    public static final int CARD_NOT_EXIST_11000020 = 11000020;
    /* 卡券已作废 服务端:coupon */
    public static final int CARD_CANCELED_11000030 = 11000030;
    /* 目前不再卡券发放有效期内 服务端:coupon */
    public static final int CARD_NOT_VALID_11000040 = 11000040;
    /* 卡券已领完 服务端:coupon */
    public static final int CARD_NOT_ENOUGH_11000050 = 11000050;
    /* 参数错误 服务端:coupon */
    public static final int PARAMETER_ERROR_11000060 = 11000060;
    /* 用户已领过该券 服务端:coupon */
    public static final int USER_HAS_RECEIVED_11000100 = 11000100;
    /* 批量发放用户数达上限 服务端:coupon */
    public static final int USER_CNT_TOO_LARGE_11000101 = 11000101;
    /* 卡包不存在 服务端:coupon */
    public static final int CARD_BAG_NOT_EXIST_11000130 = 11000130;
    /* 卡包已作废 服务端:coupon */
    public static final int CARD_BAG_CANCELED_11000140 = 11000140;
    /* 优惠码不存在 服务端:coupon */
    public static final int CODE_NOT_EXIST_11000160 = 11000160;
    /* 优惠码已兑换 服务端:coupon */
    public static final int CODE_USED_11000170 = 11000170;
    /* 优惠码已过期 服务端:coupon */
    public static final int CODE_EXPIRED_11000200 = 11000200;
    /* 共用card不存在 服务端:coupon */
    public static final int PUB_CARD_NOT_EXIST_11000209 = 11000209;
    /* 临时Token已过期 服务端:coupon */
    public static final int TEMPTOKEN_EXPIRED_11000210 = 11000210;
    /* 本账户兑换次数超出限制 服务端:coupon */
    public static final int USER_EXCHANGE_TOO_MORE_11000220 = 11000220;
    /* 用户今天的券已经领完了 服务端:coupon */
    public static final int USER_HAS_RECEIVED_DAYALL_11000240 = 11000240;
    /* 用户已经领完该活动期间所有的券 服务端:coupon */
    public static final int USER_HAS_RECEIVED_PROALL_11000250 = 11000250;
    /* 用户输入手机号有误 服务端:coupon */
    public static final int USER_MOBILE_ERROR_11000260 = 11000260;
    /* 该终端不支持兑换 服务端:coupon */
    public static final int EX_TERMINAL_NOT_SUPPORT_11000270 = 11000270;
    /* 该券只有新用户可领取，您已不是新用户 服务端:coupon */
    public static final int USER_NOT_NEW_11000280 = 11000280;
    /* 亲，非常抱歉，该礼包为用户专属礼包 服务端:coupon */
    public static final int COUPON_ONLYFORUSER_11000290 = 11000290;
    /* 非常抱歉，您不属于生活卡新用户，不能兑换该礼包 服务端:coupon */
    public static final int COUPON_NOTFORTHISUSER_11000300 = 11000300;
    /* 抱歉 每台手机只能兑换一次新用户专享礼包哟 服务端:coupon */
    public static final int COUPON_DEVICE_RCVTOOMORE_11000310 = 11000310;
    /* 该兑换码拒绝兑换 服务端:coupon */
    public static final int COUPON_DITUI_BLK_11000320 = 11000320;
    /* 抱歉，活动尚未开始~ 服务端:coupon */
    public static final int COUPON_DITUI_PRONOSTART_11000330 = 11000330;
    /* 活动不存在或已结束 服务端:coupon */
    public static final int PRO_NOT_EXIST_11000340 = 11000340;
    /* 膨胀卡券已满额 服务端:coupon */
    public static final int EXPANDIONCOUPON_FULFILLED_11000350 = 11000350;
    /* 该手机号账户已经领取过，请换个账户尝试 服务端:coupon */
    public static final int MOBILE_HAS_RECEIVED_11000360 = 11000360;
    /* 未找到用户 服务端:vender */
    public static final int USER_SERVICE_USER_NOT_FOUND_12000001 = 12000001;
    /* 账户已注册 服务端:vender */
    public static final int USER_SERVICE_USER_EXISTED_12000020 = 12000020;
    /* 财务系统内部异常 服务端:finance */
    public static final int FINANCE_INNER_ERROR_12100000 = 12100000;
    /* 该订单已提交过退税申请 服务端:finance */
    public static final int REFUND_TAX_EXISTS_12110000 = 12110000;
    /* 结算服务内部异常 服务端:vender */
    public static final int SETTLE_SERVICE_INTL_ERROR_13000001 = 13000001;
    /* 上级scm不合法 服务端:cp */
    public static final int TOP_CP_SUBJECT_URL_ILLEGAL_13000002 = 13000002;
    /* 二级scm点的父级为空 服务端:cp */
    public static final int FATHER_SCM_IS_NULL_13000003 = 13000003;
    /* 获取发现主题首页数据错误 服务端:discovery */
    public static final int FIND_THEME_BASE_INFO_ERROR_13001000 = 13001000;
    /* 判断发现主题是否我的喜欢失败 服务端:discovery */
    public static final int VERIFY_IS_MY_LOVE_ERROR_13002000 = 13002000;
    /* 收藏我喜欢的发现主题失败 服务端:discovery */
    public static final int SAVE_MY_LOVE_ERROR_13003000 = 13003000;
    /* 获取发现详情页失败 服务端:discovery */
    public static final int FIND_THEME_DETAIL_ERROR_13005000 = 13005000;
    /* 保存我想要某个商品记录失败 服务端:discovery */
    public static final int SAVE_MY_WANT_ERROR_13006000 = 13006000;
    /* 判断是否想要发现主题提到的商品失败 服务端:discovery */
    public static final int VERIFY_IS_MY_WANT_ERROR_13007000 = 13007000;
    /* 重复收藏我喜欢的发现主题 服务端:discovery */
    public static final int REPEAT_SAVE_MY_LOVE_13013000 = 13013000;
    /* 重复保存我想要某个商品记录 服务端:discovery */
    public static final int REPEAT_SAVE_MY_WANT_13014000 = 13014000;
    /* 重复举报! 服务端:discovery */
    public static final int REPEAT_REPORT_13021000 = 13021000;
    /* 获取主题品牌数据错误 服务端:discovery */
    public static final int FIND_THEME_BRAND_ERROR_13028000 = 13028000;
    /* 获取主题国家数据错误 服务端:discovery */
    public static final int FIND_THEME_NATION_ERROR_13029000 = 13029000;
    /* 获取主题标签数据错误 服务端:discovery */
    public static final int FIND_THEME_LABEL_ERROR_13030000 = 13030000;
    /* 获取主题币种数据错误 服务端:discovery */
    public static final int FIND_THEME_CURRENCY_UNIT_ERROR_13031000 = 13031000;
    /* 用户发布主题数据错误 服务端:discovery */
    public static final int PUBLISH_MY_THEME_ERROR_13032000 = 13032000;
    /* 用户删除主题数据错误 服务端:discovery */
    public static final int DELETE_MY_THEME_ERROR_13033000 = 13033000;
    /* 用户查询自己主题数据错误 服务端:discovery */
    public static final int FIND_MY_THEME_ERROR_13034000 = 13034000;
    /* 举报主题数据错误 服务端:discovery */
    public static final int REPORT_THEME_ERROR_13035000 = 13035000;
    /* 获取我已经收到的商品tag数据 服务端:discovery */
    public static final int FIND_MY_RECEIVED_PRODUCT_LIST_ERROR_13038000 = 13038000;
    /* 红心收藏主题失败 服务端:discovery */
    public static final int SAVE_MY_RED_LOVE_THEME_ERROR_13039000 = 13039000;
    /* 判断是否是红心收藏主题失败 服务端:discovery */
    public static final int VERIFY_IS_MY_RED_LOVE_THEME_ERROR_13040000 = 13040000;
    /* 获取未读评论信息数据失败 服务端:discovery */
    public static final int VERIFY_UN_READ_COMMENT_ERROR_13050000 = 13050000;
    /* 关注用户失败 服务端:discovery */
    public static final int ADD_FOLLOWING_ERROR_13080000 = 13080000;
    /* 取消关注失败 服务端:discovery */
    public static final int CANCEL_FOLLOWING_ERROR_13090000 = 13090000;
    /* 取消关注失败 服务端:discovery */
    public static final int IS_FOLLOWING_ERROR_13400000 = 13400000;
    /* 查看关注列表失败 服务端:discovery */
    public static final int FOLLOWING_LIST_ERROR_13410000 = 13410000;
    /* 查看粉丝列表失败 服务端:discovery */
    public static final int FOLLOWER_LIST_ERROR_13420000 = 13420000;
    /* 查看个人主页失败 服务端:discovery */
    public static final int USER_DETAIL_ERROR_13430000 = 13430000;
    /* 获取发现个人首页数据错误 服务端:discovery */
    public static final int FIND_THEME_TIME_LINE_LIST_ERROR_13440000 = 13440000;
    /* 订单服务内部异常 服务端:vender */
    public static final int ORDER_SERVICE_INTL_ERROR_14000001 = 14000001;
    /* 订单服务参数不合法 服务端:vender */
    public static final int ORDER_SERVICE_PARAM_ILLIGAL_14000002 = 14000002;
    /* 发表评论失败 服务端:commentGoods */
    public static final int PUBLISH_COMMENT_ERROR_14003000 = 14003000;
    /* 用户为黑名单 服务端:commentGoods */
    public static final int USER_IS_BLACKLIST_14011000 = 14011000;
    /* 您发布的评论含有敏感词! 服务端:commentGoods */
    public static final int COMMENT_CONTAIN_SENSITIVE_WORD_14013000 = 14013000;
    /* 重复举报! 服务端:commentGoods */
    public static final int REPEAT_REPORT_14014000 = 14014000;
    /* 评论不存在! 服务端:commentGoods */
    public static final int NULL_COMMENT_14015000 = 14015000;
    /* 获取评价详情错误! 服务端:commentGoods */
    public static final int FIND_COMMENT_INFO_ERROR_14017000 = 14017000;
    /* 获取评价标签错误! 服务端:commentGoods */
    public static final int FIND_COMMENT_LABEL_ERROR_14019000 = 14019000;
    /* 通过指定类型分页获取评论列表错误! 服务端:commentGoods */
    public static final int FIND_COMMENTLIST_TYPE_ERROR_14021000 = 14021000;
    /* 分页获取评论列表错误! 服务端:commentGoods */
    public static final int FIND_COMMENTLIST_ERROR_14023000 = 14023000;
    /* 获取评论状态失败 服务端:commentGoods */
    public static final int FIND_COMMENT_STATUS_ERROR_14025000 = 14025000;
    /* 发表订单满意度失败 服务端:commentGoods */
    public static final int PUSH_SATISF_ERROR_14027000 = 14027000;
    /* 您发布的评论标签含有敏感词! 服务端:commentGoods */
    public static final int COMMENT_LABEL_CONTAIN_SENSITIVE_WORD_14029000 = 14029000;
    /* 供应商状态机内部状态流转异常 服务端:vender */
    public static final int VENDER_STATE_CHANGE_EXCEPTION_15000002 = 15000002;
    /* 请求参数有误 服务端:minicart */
    public static final int SHOPCART_ILLEGLE_ARGUMENT_15000100 = 15000100;
    /* 该商品不支持加入购物车 服务端:minicart */
    public static final int SHOPCART_GOOD_CANNOT_JOIN_15000201 = 15000201;
    /* 添加进购物车的商品列表为空 服务端:minicart */
    public static final int SHOPCART_ADD_LIST_EMPTY_15000202 = 15000202;
    /* 添加进购物车的商品超过限购 服务端:minicart */
    public static final int SHOPCART_ADD_OVER_LIMIT_15000203 = 15000203;
    /* 购物车删除商品失败 服务端:minicart */
    public static final int SHOPCART_REMOVE_ERROR_15000300 = 15000300;
    /* 您的购物车已满 服务端:minicart */
    public static final int SHOPCART_GOODS_NUM_ULTRALIMIT_15000800 = 15000800;
    /* 商品不在购物车内 服务端:minicart */
    public static final int SHOPCART_GOOD_NOT_IN_15000900 = 15000900;
    /* 库存调整失败 服务端:vender */
    public static final int STOCK_ADJUST_ERROR_16000001 = 16000001;
    /* 上传的Excel文件内容为空 服务端:vender */
    public static final int STOCK_ADJUST_EXCEL_CONTENT_EMPTY_16000002 = 16000002;
    /* 批量调整库存数量超限 服务端:vender */
    public static final int STOCK_ADJUST_IMPORT_SIZE_OVERRUN_16000003 = 16000003;
    /* 没有在线的签到活动 服务端:integral */
    public static final int NoActiveCheckinReturnCode_16000012 = 16000012;
    /* 系统未知异常 服务端:integral */
    public static final int UnknownExceptionReturnCode_16000099 = 16000099;
    /* 活动价的生效开始时间必须小于生效结束时间 服务端:vender */
    public static final int PRICE_ADJUST_REQUISITION_START_GREATER_THAN_END_ERROR_17000002 = 17000002;
    /* 存在待审批状态的价格调整申请单记录, 需要先完成该申请单的审批 服务端:vender */
    public static final int PRICE_ADJUST_REQUISITION_EXIST_WAIT_APPROVE_ERROR_17000003 = 17000003;
    /* 存在生效时间段重复的价格调整申请单记录, 请修改生效起止时间 服务端:vender */
    public static final int PRICE_ADJUST_REQUISITION_EXIST_TIME_PERIOD_OVERLAP_ERROR_17000004 = 17000004;
    /* 已存在相同的价格调整申请记录, 无法操作新增 服务端:vender */
    public static final int PRICE_ADJUST_REQUISITION_DATA_DUPLICATE_ERROR_17000006 = 17000006;
    /* 生效时间必须晚于当天时间 服务端:vender */
    public static final int PRICE_ADJUST_START_DATA_ERROR_17000007 = 17000007;
    /* 上传的excel文件为空 服务端:vender */
    public static final int PRICE_ADJUST_EXCEL_EMPTY_17000008 = 17000008;
    /* 批量调整供货价数量超限 服务端:vender */
    public static final int PRICE_ADJUST_IMPORT_SIZE_OVERRUN_17000009 = 17000009;
    /* 供货价调整失败 服务端:vender */
    public static final int SUPPLY_PRICE_ADJUST_ERROR_17000012 = 17000012;
    /* 您已提交过一条供货价修改数据，请联系运营进行审核！ 服务端:vender */
    public static final int SUPPLY_PRICE_ADJUST_REQUISITION_DATA_DUPLICATE_ERROR_17000013 = 17000013;
    /* 发货服务内部异常 服务端:vender */
    public static final int VENDER_DELIVERY_SERVICE_INTL_EXCEPTION_18000001 = 18000001;
    /* 获取供应商物流承运商失败 服务端:vender */
    public static final int VENDER_DELIVERY_SERVICE_GET_CARRIES_ERROR_18000002 = 18000002;
    /* 供应商发货服务参数不合法 服务端:vender */
    public static final int VENDER_DELIVERY_SERVICE_PARAM_ILLEGAL_18000003 = 18000003;
    /* 无法查询到此单信息 服务端:vender */
    public static final int VENDER_DELIVERY_SERVICE_ORDER_NOT_EXIST_18000004 = 18000004;
    /* 待出库订单不允许标记为已出库 服务端:vender */
    public static final int VENDER_DELIVERY_SERVICE_WAIT_STOCKOUT_ORDER_NOT_ALLOW_MARK_STOCKOUT_18000005 = 18000005;
    /* 订单已取消，不允许标记为已出库 服务端:vender */
    public static final int VENDER_DELIVERY_SERVICE_CANCEL_ORDER_NOT_ALLOW_MARK_STOCKOUT_18000006 = 18000006;
    /* 订单运单信息不能为空 服务端:vender */
    public static final int VENDER_DELIVERY_SERVICE_MAIL_NO_IS_EMPTY_18000007 = 18000007;
    /* 批量标记订单数量超限 服务端:vender */
    public static final int VENDER_DELIVERY_MARK_SIZE_OVERRUN_18000008 = 18000008;
    /* 只有发货中订单能够设置运单号 服务端:vender */
    public static final int VENDER_DELIVERY_SET_MAILNO_ONLY_STOCKOUTING_18000009 = 18000009;
    /* 保存运单号失败 服务端:vender */
    public static final int VENDER_DELIVERY_SET_MAILNO_ERROR_18000010 = 18000010;
    /* 上传的Excel文件内容为空 服务端:vender */
    public static final int VENDER_DELIVERY_SERVICE_EXCEL_CONTENT_EMPTY_18000011 = 18000011;
    /* 批量导入运单号数量超限 服务端:vender */
    public static final int VENDER_DELIVERY_IMPORT_MAILNO_SIZE_OVERRUN_18000012 = 18000012;
    /* 下载服务内部异常 服务端:vender */
    public static final int VENDER_DOWNLOAD_SERVICE_INTL_EXCEPTION_19000001 = 19000001;
    /* 文件类型不合法 服务端:vender */
    public static final int VENDER_DOWNLOAD_FILETYPE_ILLIGAL_EXCEPTION_19000002 = 19000002;
    /* 已经有下载报表的请求正在等待,请等待或者取消正在等待的报表下载请求 服务端:vender */
    public static final int VENDER_DOWNLOAD_SERVICE_EXIST_WAIT_TASK_19000003 = 19000003;
    /* 生成PDF面单异常 服务端:vender */
    public static final int VENDER_DOWNLOAD_SERVICE_PDF_EXCEPTION_19000004 = 19000004;
    /* 订单路线不存在 服务端:vender */
    public static final int VENDER_DOWNLOAD_SERVICE_LINE_NOT_EXIST_19000005 = 19000005;
    /* 参数不合法 服务端:vender */
    public static final int VENDER_DOWNLOAD_SERVICE_PARAM_ILLEGAL_19000006 = 19000006;
    /* 不支持面单下载 服务端:vender */
    public static final int VENDER_DOWNLOAD_SERVICE_PDF_NOT_SUPPORT_ILLEGAL_19000007 = 19000007;
    /* 查询详情内部异常 服务端:vender */
    public static final int VENDER_SKU_DETAIL_QUERY_EXCEPTION_20000001 = 20000001;
    /* 保存详情内部异常 服务端:vender */
    public static final int VENDER_SKU_DETAIL_SAVE_EXCEPTION_20000002 = 20000002;
    /* 提交详情内部异常 服务端:vender */
    public static final int VENDER_SKU_DETAIL_SUBMIT_EXCEPTION_20000003 = 20000003;
    /* 该团参团人数已满 服务端:groupPromotion */
    public static final int GROUP_EXCEED_MAX_COUNT_20000004 = 20000004;
    /* 用户超过了最大的参团次数限制 服务端:groupPromotion */
    public static final int USER_EXCEED_MAX_GROUP_COUNT_20000005 = 20000005;
    /* 团不存在 服务端:groupPromotion */
    public static final int GROUP_NOT_EXISTS_20000006 = 20000006;
    /* 团已结束 服务端:groupPromotion */
    public static final int GROUP_ALREADY_EXPIRED_20000007 = 20000007;
    /* 团状态不为组团中 服务端:groupPromotion */
    public static final int GROUP_STATUS_NOT_UNDERWAY_20000008 = 20000008;
    /* 系统异常 服务端:groupPromotion */
    public static final int SYSTEM_ERROR_20000099 = 20000099;
    /*  服务端:vender */
    public static final int STOCK_SERVICE_SALE_COUNT_NOT_ENOUGH_ERROR_20700090 = 20700090;
    /*  服务端:vender */
    public static final int STOCK_SERVICE_SALE_RECORD_NOT_FOUND_ERROR_20700100 = 20700100;
    /*  服务端:vender */
    public static final int STOCK_SERVICE_BATCH_STOCK_LOCK_LOG_EXIST_ERROR_20700180 = 20700180;
    /*  服务端:vender */
    public static final int OPERATE_CONSIGN_STOCK_ERROR_ERROR_20700200 = 20700200;
    /*  服务端:vender */
    public static final int UNSUPPORT_BATCH_STOCK_LOCK_WAREHOUSE_ERROR_20700220 = 20700220;
    /* customer unkown error 服务端:customer */
    public static final int CUSTOMER_UNKNOW_ERROR_21000002 = 21000002;
    /* 请求参数有误 服务端:customer */
    public static final int ILLEGLE_ARGUMENT_21000003 = 21000003;
    /* 商品申请退货数大于可退数! 服务端:customer */
    public static final int RETURN_GOODS_NUM_OVER_21000004 = 21000004;
    /*  服务端:vender */
    public static final int _C_SUPPLIER_CHANNEL_BATCH_STOCK_NOT_FOUND_ERROR_22800010 = 22800010;
    /* 非法参数 服务端:vender */
    public static final int VENDER_SPU_ILLEGAL_PARAM_23000002 = 23000002;
    /* 接口调用失败 服务端:vender */
    public static final int VENDER_SPU_API_FAIL_23000003 = 23000003;
    /* 品牌不能为空 服务端:vender */
    public static final int VENDER_SPU_PARAM_BRAND_EMPTY_23000004 = 23000004;
    /* 商品毛重不能为空 服务端:vender */
    public static final int VENDER_SPU_PARAM_GROSSWEIGHT_EMPTY_23000005 = 23000005;
    /* 商品长宽高不能为空 服务端:vender */
    public static final int VENDER_SPU_PARAM_LWH_EMPTY_23000006 = 23000006;
    /* 商品原产地不能为空 服务端:vender */
    public static final int VENDER_SPU_PARAM_ORIGIN_EMPTY_23000007 = 23000007;
    /* 商品货源地不能为空 服务端:vender */
    public static final int VENDER_SPU_PARAM_SUPPLYLAND_EMPTY_23000008 = 23000008;
    /* 商品退货政策不能为空 服务端:vender */
    public static final int VENDER_SPU_PARAM_RETURNSPOLICY_EMPTY_23000009 = 23000009;
    /* 商品描述属性参数不合法 服务端:vender */
    public static final int VENDER_SPU_PARAM_DESC_ILLEGAL_23000010 = 23000010;
    /* 商品描分类不能为空 服务端:vender */
    public static final int VENDER_SPU_PARAM_CATEGORY_EMPTY_23000011 = 23000011;
    /* 商品简称不能为空 服务端:vender */
    public static final int VENDER_SPU_PARAM_BRIEFNAME_EMPTY_23000012 = 23000012;
    /* 商品描述属性填写不完整 服务端:vender */
    public static final int VENDER_SPU_PARAM_DESC_NOTCHECKED_23000013 = 23000013;
    /* 商品描述属性值未填写 服务端:vender */
    public static final int VENDER_SPU_PARAM_DESC_VALUE_EMPTY_23000014 = 23000014;
    /* 商品计量单位不能 服务端:vender */
    public static final int VENDER_SPU_PARAM_MEASUREMENTUNIT_EMPTY_23000015 = 23000015;
    /* 商品sku barcode不能重复 服务端:vender */
    public static final int VENDER_SKU_BARCODE_DUPLICATE_23000017 = 23000017;
    /* 商品sku 规格属性不能重复 服务端:vender */
    public static final int VENDER_SKU_ATTRIBUTES_DUPLICATE_23000018 = 23000018;
    /* 商品SPU创建异常 服务端:vender */
    public static final int VENDER_SPU_CREATE_ERROR_23000019 = 23000019;
    /* 商品SPU属性复制异常 服务端:vender */
    public static final int VENDER_SPU_PROPERTY_COPY_ERROR_23000020 = 23000020;
    /* 活动未开始，敬请期待 服务端:lottery */
    public static final int PROMOTION_NOT_STARTED_23000030 = 23000030;
    /* 此次抽奖需要消耗积分 服务端:lottery */
    public static final int DRAWLOTTERY_NEED_INTEGRAL_23000040 = 23000040;
    /* 用户今天的抽奖机会已用完 服务端:lottery */
    public static final int USER_HAS_NOCHANCE_23000050 = 23000050;
    /* 用户积分余额不足 服务端:lottery */
    public static final int INTEGRAL_NOT_ENOUGH_23000060 = 23000060;
    /* 积分消费失败,请稍后再试 服务端:lottery */
    public static final int INTEGRAL_CONSUME_FAILED_23000070 = 23000070;
    /* notice unkown error 服务端:msg */
    public static final int NOTICE_UNKNOW_ERROR_25000100 = 25000100;
    /* 请求参数有误 服务端:msg */
    public static final int NOTICE_ILLEGLE_ARGUMENT_25000101 = 25000101;
}