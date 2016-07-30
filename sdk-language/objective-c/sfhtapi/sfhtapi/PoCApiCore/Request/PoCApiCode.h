// Auto Generated.  DO NOT EDIT!

/*
 * 本类定义了接口有可能的返回值集合, 其中0为成功, 负数值为所有接口都有可能返回的通用code, 正数值是接口相关的code(请参见接口文档).
 */
typedef enum {
    
    /* 未分配返回值 */
    PoCApiCode_NO_ASSIGN = -2147483648,
    
    /* 上传文件名错误 */
    PoCApiCode_UPLOAD_FILE_NAME_ERROR = -390,
    
    /* 上传文件过大 */
    PoCApiCode_UPLOAD_FILE_TOO_LARGE = -380,
    
    /* 用户被锁定 */
    PoCApiCode_USER_LOCKED = -370,
    
    /* token错误 */
    PoCApiCode_TOKEN_ERROR = -360,
    
    /* 不是激活设备(用户在其他地方登录) */
    PoCApiCode_NO_ACTIVE_DEVICE = -340,
    
    /* 不是用户的受信设备 */
    PoCApiCode_NO_TRUSTED_DEVICE = -320,
    
    /* token已过期 */
    PoCApiCode_TOKEN_EXPIRE = -300,
    
    /* 应用id不存在 */
    PoCApiCode_APPID_NOT_EXIST = -280,
    
    /* 上行短信尚未收到 */
    PoCApiCode_UPLINK_SMS_NOT_RECEIVED = -270,
    
    /* 手机动态密码错误 */
    PoCApiCode_DYNAMIC_CODE_ERROR = -260,
    
    /* 手机号未绑定 */
    PoCApiCode_MOBILE_NOT_REGIST = -250,
    
    /* 接口已升级 */
    PoCApiCode_API_UPGRADE = -220,
    
    /* 请求解析错误 */
    PoCApiCode_REQUEST_PARSE_ERROR = -200,
    
    /* ILLEGAL_MUTLI_INTEGRATED_API_ACCESS */
    PoCApiCode_ILLEGAL_MUTLI_INTEGRATED_API_ACCESS = -192,
    
    /* ILLEGAL_MUTLI_RAWSTRING_RT */
    PoCApiCode_ILLEGAL_MUTLI_RAWSTRING_RT = -191,
    
    /* 非法的请求组合 */
    PoCApiCode_ILLEGAL_MULTIAPI_ASSEMBLY = -190,
    
    /* 签名错误 */
    PoCApiCode_SIGNATURE_ERROR = -180,
    
    /* RISK_MANAGER_DENIED */
    PoCApiCode_RISK_MANAGER_DENIED = -166,
    
    /* UNKNOW_ENCRYPTION_DENIED */
    PoCApiCode_UNKNOW_ENCRYPTION_DENIED = -165,
    
    /* UNKNOW_TOKEN_DENIED */
    PoCApiCode_UNKNOW_TOKEN_DENIED = -164,
    
    /* USER_CHECK_FAILED */
    PoCApiCode_USER_CHECK_FAILED = -161,
    
    /* 访问被拒绝 */
    PoCApiCode_ACCESS_DENIED = -160,
    
    /* PARAMETER_DECRYPT_ERROR */
    PoCApiCode_PARAMETER_DECRYPT_ERROR = -141,
    
    /* 参数错误 */
    PoCApiCode_PARAMETER_ERROR = -140,
    
    /* mt参数服务端无法识别 */
    PoCApiCode_UNKNOWN_METHOD = -120,
    
    /* DUBBO_SERVICE_ERROR */
    PoCApiCode_DUBBO_SERVICE_ERROR = -109,
    
    /* DUBBO_SERVICE_TIMEOUT_ERROR */
    PoCApiCode_DUBBO_SERVICE_TIMEOUT_ERROR = -108,
    
    /* DUBBO_SERVICE_NOTFOUND_ERROR */
    PoCApiCode_DUBBO_SERVICE_NOTFOUND_ERROR = -107,
    
    /* SECURITY_SERVICE_ERROR */
    PoCApiCode_SECURITY_SERVICE_ERROR = -106,
    
    /* WEB_ACCESS_FAILED */
    PoCApiCode_WEB_ACCESS_FAILED = -105,
    
    /* FATAL_ERROR */
    PoCApiCode_FATAL_ERROR = -104,
    
    /* IP_DENIED */
    PoCApiCode_IP_DENIED = -103,
    
    /* SERIALIZE_FAILED */
    PoCApiCode_SERIALIZE_FAILED = -102,
    
    /* INTERNAL_SERVER_ERROR */
    PoCApiCode_INTERNAL_SERVER_ERROR = -101,
    
    /* 服务端返回未知错误 */
    PoCApiCode_UNKNOWN_ERROR = -100,
    
    /* 成功 */
    PoCApiCode_SUCCESS = 0,
    
    /* 未找到用户 */
    PoCApiCode_USER_NOT_FOUND_1000010 = 1000010,
    
    /* 账户已注册 */
    PoCApiCode_USER_EXISTED_1000020 = 1000020,
    
    /* 用户名or密码错误 */
    PoCApiCode_USERNAME_OR_PASSWORD_ERROR_1000030 = 1000030,
    
    /* 原密码错误 */
    PoCApiCode_PASSWORD_ERROR_1000040 = 1000040,
    
    /* 邮箱地址错误 */
    PoCApiCode_MAILID_ERROR_1000050 = 1000050,
    
    /* 密码与原密码相同 */
    PoCApiCode_SAME_PASSWORD_ERROR_1000060 = 1000060,
    
    /* 参数错误 */
    PoCApiCode_PARAMETER_ERROR_1000070 = 1000070,
    
    /* 服务端错误 */
    PoCApiCode_SERVER_ERROR_1000080 = 1000080,
    
    /* 邀请码错误 */
    PoCApiCode_INVITECODE_ERROR_1000090 = 1000090,
    
    /* 图片验证码错误 */
    PoCApiCode_VERIFYCODE_ERROR_1000100 = 1000100,
    
    /* 账户尚未激活 */
    PoCApiCode_USER_NOT_ACTIVATED_1000110 = 1000110,
    
    /* 链接已过期 */
    PoCApiCode_LINK_EXPIRED_1000120 = 1000120,
    
    /* 签名验证失败 */
    PoCApiCode_SIGN_ERROR_1000130 = 1000130,
    
    /* 密码修改间隔太短 */
    PoCApiCode_PASSWORD_UPDATE_INTERVAL_SHORT_1000140 = 1000140,
    
    /* 目前不支持类型邮箱的注册,只接受顺丰内部邮箱注册 */
    PoCApiCode_MAILTYPE_NONSUPPORT_1000150 = 1000150,
    
    /* 邮件请求频繁 */
    PoCApiCode_MAIL_ASK_TOO_OFTEN_1000160 = 1000160,
    
    /* 密码长度错误 */
    PoCApiCode_PASSWORD_LENGTH_ERROR_1000170 = 1000170,
    
    /* 该邀请码已经被使用 */
    PoCApiCode_INVITECODE_USED_1000180 = 1000180,
    
    /* 收货人身份信息缺失 */
    PoCApiCode_RECEIVER_INFO_LOSE_1000190 = 1000190,
    
    /* 收货人身份信息已存在，选择即可 */
    PoCApiCode_RECEIVER_EXISTED_1000200 = 1000200,
    
    /* 校验第三方accessToken失败 */
    PoCApiCode_CHECK_ACCESSTOKEN_FAILED_1000210 = 1000210,
    
    /* 不支持非门店账户下单or非门店下单 */
    PoCApiCode_USER_ORDER_NON_SUPPORTED_1000220 = 1000220,
    
    /* 手机号错误，请输入正确的手机号 */
    PoCApiCode_MOBILE_NUM_ERROR_1000230 = 1000230,
    
    /* 短信验证码错误 */
    PoCApiCode_MOBILE_VFCODE_ERROR_1000240 = 1000240,
    
    /* 短信验证码已过期 */
    PoCApiCode_MOBILE_VFCODE_EXPIRE_1000250 = 1000250,
    
    /* 用户已激活 */
    PoCApiCode_USER_ACTIVATED_1000260 = 1000260,
    
    /* 短信请求太过频繁 */
    PoCApiCode_MOBILE_SMS_ASK_TOO_OFTEN_1000270 = 1000270,
    
    /* 身份证号码错误 */
    PoCApiCode_CREDTNUM_ERROR_1000280 = 1000280,
    
    /* 短信请求太多 */
    PoCApiCode_SMS_ASK_TOO_MORE_1000290 = 1000290,
    
    /* 用户名或密码错误已达3次 */
    PoCApiCode_PASSWORD_ERROR_TOO_MORE_1000300 = 1000300,
    
    /* 已达到最大允许数目 */
    PoCApiCode_REACH_MAXNUM_1000310 = 1000310,
    
    /* 用户未授权 */
    PoCApiCode_USER_NOT_AUTH_1000320 = 1000320,
    
    /* 获取js api ticket失败 */
    PoCApiCode_GET_JS_API_TICKET_FAILED_1000330 = 1000330,
    
    /* 获取access token失败 */
    PoCApiCode_GET_ACCESS_TOKEN_FAILED_1000331 = 1000331,
    
    /* 输入的邮编错误 */
    PoCApiCode_ZIPCODE_ERROR_1000332 = 1000332,
    
    /* 用户账户还没有密码 */
    PoCApiCode_USER_EXIST_NO_PSWD_1000340 = 1000340,
    
    /* 验证临时token失败,请重新登录 */
    PoCApiCode_CHECK_TEMP_TOKEN_FAIL_1000350 = 1000350,
    
    /* 第三方账户已绑定海淘账户 */
    PoCApiCode_PARTNER_HAS_BINDED_1000360 = 1000360,
    
    /* 支付宝验签失败 */
    PoCApiCode_ALIPAY_VERIFY_FAIL_1000370 = 1000370,
    
    /* 已经绑定了同类的第三方账户 */
    PoCApiCode_HAS_BIND_SAME_PARTNER_1000380 = 1000380,
    
    /* 目前不支持邮箱账户绑定 */
    PoCApiCode_MAIL_NONSUPPORT_1000390 = 1000390,
    
    /* 密码缺失，请输入密码 */
    PoCApiCode_PASSWORD_LOST_1000400 = 1000400,
    
    /* 需要短信验证码，请输入 */
    PoCApiCode_MOBILE_VFCODE_NEED_1000410 = 1000410,
    
    /* 尚未绑定支付宝账户或账户名缺失 */
    PoCApiCode_NOT_BIND_ALIACT_1000420 = 1000420,
    
    /* 未达到提现金额限制 */
    PoCApiCode_NOT_REACH_GETCASHAMOUI_1000430 = 1000430,
    
    /* 已绑定支付宝账户 */
    PoCApiCode_HAS_BINDED_ALIACT_1000440 = 1000440,
    
    /* 该时间段内不支持此请求 */
    PoCApiCode_TIME_NOT_SUPPORT_REQUEST_1000450 = 1000450,
    
    /* 投票类型不存在 */
    PoCApiCode_VOTETYPE_NOT_EXIST_1000460 = 1000460,
    
    /* 邀请人并非推广员 */
    PoCApiCode_INVITER_NOT_PROMOTER_1000470 = 1000470,
    
    /* 用户账户被冻结，不允许登录 */
    PoCApiCode_USER_LOGINDENY_1000480 = 1000480,
    
    /* 海关发货需要实名制信息，请输入真实姓名 */
    PoCApiCode_USER_RCVNAME_UNSUPPORT_1000490 = 1000490,
    
    /* 用户手机号尚未验证，不允许设置密码 */
    PoCApiCode_USER_MOBILE_UNVERIFY_1000500 = 1000500,
    
    /* 用户已经绑定过工号了 */
    PoCApiCode_USER_HASBINDED_NUMB_1000510 = 1000510,
    
    /* 该工号已经被其他用户绑定了 */
    PoCApiCode_IDNUMB_BASBINDED_BY_OTHERS_1000520 = 1000520,
    
    /* 该用户不是小哥 */
    PoCApiCode_USER_ISNOT_XG_1000530 = 1000530,
    
    /* 该用户账户被封停，暂时不能提现 */
    PoCApiCode_USER_RQCASH_REJECTED_1000540 = 1000540,
    
    /* 用户没有响应的第三方账户需要解绑 */
    PoCApiCode_USER_HASNOPARTNER_UNBIND_1000550 = 1000550,
    
    /* 第三方账户已经绑定了其他用户账户 */
    PoCApiCode_PARTNER_BIND_OTHERUSER_1000560 = 1000560,
    
    /* 不支持当前账户解绑，需要保证该账户可达 */
    PoCApiCode_USER_NOTSUPPORT_UNBIND_1000570 = 1000570,
    
    /* 换绑请求太过频繁，请稍后再试 */
    PoCApiCode_USER_CHANGEBIND_TOO_OFTEN_1000580 = 1000580,
    
    /* 授权凭据验证失败，请重新获取凭据 */
    PoCApiCode_AUTHTOKEN_CHECK_FAILED_1000590 = 1000590,
    
    /* 系统并发异常 */
    PoCApiCode_LOGISTICS_CONCURRENT_ERR_2000001 = 2000001,
    
    /* 未找到对应的diamond配置 */
    PoCApiCode_LOGISTICS_DIAMOND_NOT_FOUND_ERR_2000002 = 2000002,
    
    /* JAXB转换XML为对象时发生异常 */
    PoCApiCode_LOGISTICS_JAXB_TRANPoCER_ERR_2000003 = 2000003,
    
    /* 品类信息不存在 */
    PoCApiCode_LOGISTICS_CATEGORY_NOTEXIST_ERR_2003000 = 2003000,
    
    /* 仓库信息不存在 */
    PoCApiCode_LOGISTICS_WAREHOUSE_NOTEXIST_ERR_2003001 = 2003001,
    
    /* 证件类型错误 */
    PoCApiCode_LOGISTICS_IDTYPE_ERR_2003002 = 2003002,
    
    /* 证件号码错误 */
    PoCApiCode_LOGISTICS_IDNO_ERR_2003003 = 2003003,
    
    /* SKU入库失败 */
    PoCApiCode_LOGISTICS_STOCKINID_ERR_2003004 = 2003004,
    
    /* 创建物流订单失败 */
    PoCApiCode_LOGISTICS_ORDER_CREATE_ERR_2004000 = 2004000,
    
    /* 创建物流订单添加商品失败 */
    PoCApiCode_LOGISTICS_ORDER_ADD_ITEM_ERR_2004001 = 2004001,
    
    /* 创建物流订单添加包裹失败 */
    PoCApiCode_LOGISTICS_ORDER_ADD_PACK_ERR_2004002 = 2004002,
    
    /* 创建物流订单添加包裹商品失败 */
    PoCApiCode_LOGISTICS_ORDER_ADD_PACK_ITEM_ERR_2004003 = 2004003,
    
    /* 获取订单断地址失败 */
    PoCApiCode_LOGISTICS_REQUEST_ORDER_ADDRESS_ERR_2004010 = 2004010,
    
    /* 订单不存在失败 */
    PoCApiCode_LOGISTICS_ORDER_NOTEXIST_ERR_2004020 = 2004020,
    
    /* 订单状态不允许修改错误 */
    PoCApiCode_LOGISTICS_STATE_CANNOT_CHANGE_ERR_2004021 = 2004021,
    
    /* 订单线路不存在 */
    PoCApiCode_LOGISTICS_LINE_NOTEXIST_ERR_2004022 = 2004022,
    
    /* 联系人信息缺失或错误 */
    PoCApiCode_LOGISTICS_BUYER_ADDRESS_ERR_2004023 = 2004023,
    
    /* 收货人证件信息缺失或错误 */
    PoCApiCode_LOGISTICS_IDENTITY_ERR_2004024 = 2004024,
    
    /* 购买的商品信息缺失或错误 */
    PoCApiCode_LOGISTICS_TRADEITEMS_ERR_2004025 = 2004025,
    
    /* 包裹信息缺失或错误 */
    PoCApiCode_LOGISTICS_PACKAGE_ERR_2004026 = 2004026,
    
    /* 物流信息缺失或错误 */
    PoCApiCode_LOGISTICS_ORDER_ERR_2004027 = 2004027,
    
    /* 物流状态不允许取消操作 */
    PoCApiCode_LOGISTICS_ORDER_CANT_CANCEL_ERR_2004028 = 2004028,
    
    /* 物流状态不允许发货操作 */
    PoCApiCode_LOGISTICS_ORDER_CANT_SEND_ERR_2004029 = 2004029,
    
    /* 订单已存在 */
    PoCApiCode_LOGISTICS_ORDER_EXIST_ERR_2004030 = 2004030,
    
    /* SKU入库商品为空 */
    PoCApiCode_STOCKIN_ITEMS_EMPTY_2005000 = 2005000,
    
    /* SKU入库商品信息缺失 */
    PoCApiCode_STOCKIN_ITEM_ERR_2005001 = 2005001,
    
    /* 起始位置不存在 */
    PoCApiCode_LOGISTICS_STARTPOINT_NOTEXIST_ERR_2005002 = 2005002,
    
    /* 仓配商品与非仓配商品混合错误 */
    PoCApiCode_LOGISTICS_SELF_ITEM_COMBINE_ERR_2005003 = 2005003,
    
    /* 物流状态不允确认关税操作 */
    PoCApiCode_LOGISTICS_ORDER_CANT_CONFIRM_ERR_2005004 = 2005004,
    
    /* 订单支付信息缺失 */
    PoCApiCode_LOGISTICS_ORDER_PAYINFO_ERR_2005005 = 2005005,
    
    /* 订单申报价值不能为0 */
    PoCApiCode_LOGISTICS_ORDER_DECLAREDVALUE_ERR_2005006 = 2005006,
    
    /* 用户订单总金额不能为0 */
    PoCApiCode_LOGISTICS_ORDER_TOTAL_ERR_2005007 = 2005007,
    
    /* 物流系统内部异常 */
    PoCApiCode_LOGISTICS_INTERNAL_ERROR_2006000 = 2006000,
    
    /* 实物库存不足 */
    PoCApiCode_LOGISTICS_STOCK_SKU_NOT_ENOUGH_2007000 = 2007000,
    
    /* 找不到商品的实物库存信息 */
    PoCApiCode_LOGISTICS_STOCK_SKU_NOT_FOUND_2007001 = 2007001,
    
    /* 找不到商品的发货仓库 */
    PoCApiCode_LOGISTICS_WAREHOUSE_NOT_FOUND_2007002 = 2007002,
    
    /* 找不到商品的发货地 */
    PoCApiCode_LOGISTICS_SEND_ADDRESS_NOT_FOUND_2007003 = 2007003,
    
    /* 状态机内部异常 */
    PoCApiCode_LOGISTICS_STATE_MACHINE_INTERNAL_EXCEPTION_2007004 = 2007004,
    
    /* 商品库存释放异常 */
    PoCApiCode_LOGISTICS_STOCK_SKU_RELEASE_ERR_2007005 = 2007005,
    
    /* 找不到商品的销售库存信息 */
    PoCApiCode_LOGISTICS_SALE_STOCK_SKU_NOT_FOUND_2007006 = 2007006,
    
    /* 不支持的出库单类型 */
    PoCApiCode_LOGISTICS_UNSUPPORT_STOCKOUT_TYPE_2007007 = 2007007,
    
    /* 批次库存不足 */
    PoCApiCode_LOGISTICS_BATCH_STOCK_SKU_NOT_ENOUGH_2007008 = 2007008,
    
    /* 找不到商品的批次库存信息 */
    PoCApiCode_LOGISTICS_BATCH_STOCK_SKU_NOT_FOUND_2007009 = 2007009,
    
    /* 找不到商品批次库存足够的仓库 */
    PoCApiCode_LOGISTICS_BATCH_STOCK_ENOUGH_WAREHOUSE_NOT_FOUND_2007010 = 2007010,
    
    /* 类别为奶粉的组合商品数量不为2 */
    PoCApiCode_LOGISTICS_COMBINATION_MILK_SKU_QTY_NOT_TWO_2007011 = 2007011,
    
    /* 找不到同时存在组合商品下基本商品的仓库 */
    PoCApiCode_LOGISTICS_COMBINATION_SKU_WAREHOUSE_NOT_FOUND_2007012 = 2007012,
    
    /* 计算时发生错误 */
    PoCApiCode_LOGISTICS_COMPUTE_ERROR_2007013 = 2007013,
    
    /* 商品价值之和大于用户实际支付价格 */
    PoCApiCode_LOGISTICS_STOCKOUT_ORDER_PRICE_INCORRECT_2007014 = 2007014,
    
    /* 出库单详情信息缺失，Item对应的信息不存在 */
    PoCApiCode_LOGISTICS_STOCKOUT_ORDER_PARAMS_ILLEGAL_2007015 = 2007015,
    
    /* 供应链系统维护中，请稍后再试 */
    PoCApiCode_LOGISTICS_SYSTEM_MAINTENANCE_2007016 = 2007016,
    
    /* 供应链国内供应商不为BSP，不能进行BSP路由注册 */
    PoCApiCode_LOGISTICS_BSP_REGIST_NOT_ALLOW_ON_OTHRE_TPL_2007017 = 2007017,
    
    /* 供应链国内供应商BSP路由注册内部异常 */
    PoCApiCode_LOGISTICS_BSP_REGIST_INNER_EXCEPTION_2007018 = 2007018,
    
    /* 供应链分单时获取路线失败 */
    PoCApiCode_LOGISTICS_GET_LINE_EXCEPTION_ON_SPLIT_2007019 = 2007019,
    
    /* 供应链路由注册快递100内部异常 */
    PoCApiCode_LOGISTICS_ROUTE_REGIST_INNER_EXCEPTION_2007020 = 2007020,
    
    /* 收件人地址过长 */
    PoCApiCode_LOGISTICS_RECEIVER_ADDRESS_TOO_LONG_2007021 = 2007021,
    
    /* 快递公司编码不存在 */
    PoCApiCode_LOGISTICS_CARRIER_CODE_NOTEXIST_ERR_2007022 = 2007022,
    
    /* 追加自定义物流信息异常 */
    PoCApiCode_LOGISTICS_APPEND_USERROUTES_ERROR_2007023 = 2007023,
    
    /* 采购单系统内部异常 */
    PoCApiCode_PURCHASE_ORDER_INNER_EXCEPTION_2020000 = 2020000,
    
    /* 采购单参数不合法 */
    PoCApiCode_PURCHASE_ORDER_PARAMS_ILLEGAL_2020001 = 2020001,
    
    /* 采购单不允许修改 */
    PoCApiCode_PURCHASE_ORDER_NOT_ALLOW_UPDATE_2020002 = 2020002,
    
    /* 采购单不允许提交审核 */
    PoCApiCode_PURCHASE_ORDER_NOT_ALLOW_SUBMIT_AUDIT_2020003 = 2020003,
    
    /* 采购单不允许删除 */
    PoCApiCode_PURCHASE_ORDER_NOT_ALLOW_DELETE_2020004 = 2020004,
    
    /* 采购单已提交，不可修改商品 */
    PoCApiCode_PURCHASE_ORDER_NOT_ALLOW_OPERATER_ITEM_2020005 = 2020005,
    
    /* 添加的商品已在采购单中存在 */
    PoCApiCode_PURCHASE_ORDER_ADD_REPEAT_ITEM_2020006 = 2020006,
    
    /* 采购单不存在 */
    PoCApiCode_PURCHASE_ORDER_NOT_EXIST_2020007 = 2020007,
    
    /* 采购单中商品中包含多个供应商 */
    PoCApiCode_PURCHASE_ORDER_MORE_PROVIDER_2020008 = 2020008,
    
    /* 采购单中商品不能为空 */
    PoCApiCode_PURCHASE_ORDER_EMPTY_ITEM_2020009 = 2020009,
    
    /* 采购单中商品货币类型不一致 */
    PoCApiCode_PURCHASE_ORDER_ITEM_MORE_CURRENCY_2020010 = 2020010,
    
    /* 采购单中商品付款方式不一致 */
    PoCApiCode_PURCHASE_ORDER_ITEM_MORE_SETTLEMENT_2020011 = 2020011,
    
    /* 采购单中商品货币类型不能为空 */
    PoCApiCode_PURCHASE_ORDER_ITEM_EMPTY_CURRENCY_2020012 = 2020012,
    
    /* 采购单中商品付款方式不能为空 */
    PoCApiCode_PURCHASE_ORDER_ITEM_EMPTY_SETTLEMENT_2020013 = 2020013,
    
    /* 采购单预付款状态错误 */
    PoCApiCode_PURCHASE_ORDER_PREPAY_STATUS_ERROR_2020014 = 2020014,
    
    /* 采购单中寄售不入库商品已经有库存记录 */
    PoCApiCode_PURCHASE_ORDER_ITEM_HAS_CREATED_ERROR_2020015 = 2020015,
    
    /* 入库单系统内部异常 */
    PoCApiCode_STOCKIN_ORDER_INNER_EXCEPTION_2030000 = 2030000,
    
    /* 入库单参数不合法 */
    PoCApiCode_STOCKIN_ORDER_PARAMS_ILLEGAL_2030001 = 2030001,
    
    /* 当前状态不允许入库单修改 */
    PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_UPDATE_2030002 = 2030002,
    
    /* 入库单商品不允许删除 */
    PoCApiCode_STOCKIN_ORDER_SKU_NOT_ALLOW_DELETE_2030003 = 2030003,
    
    /* 入库单已提交，不可修改商品 */
    PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_OPERATER_ITEM_2030004 = 2030004,
    
    /* 添加的商品已在入库单中存在 */
    PoCApiCode_STOCKIN_ORDER_ADD_REPEAT_ITEM_2030005 = 2030005,
    
    /* 入库单不存在 */
    PoCApiCode_STOCKIN_ORDER_NOT_EXIST_2030006 = 2030006,
    
    /* 调用仓库接口URL或者KEY为空 */
    PoCApiCode_STOCKIN_ORDER_SENDSTOCK_URLORKEY_NULL_2030007 = 2030007,
    
    /* 调用仓库接口返回信息为空 */
    PoCApiCode_STOCKIN_ORDER_SENDSTOCK_RESPONSE_NULL_2030008 = 2030008,
    
    /* 调用仓库接口失败 */
    PoCApiCode_STOCKIN_ORDER_SENDSTOCK_FAIL_2030009 = 2030009,
    
    /* 当前状态不允许入库单完成 */
    PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_FINISH_2030010 = 2030010,
    
    /* 当前状态不允许入库单取消 */
    PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_CANCEL_2031113 = 2031113,
    
    /* 入库单中没有商品 */
    PoCApiCode_STOCKIN_ORDER_SKUS_IS_EMPTY_2031114 = 2031114,
    
    /* 当前状态不允许入库单提交 */
    PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_SUBMIT_2031115 = 2031115,
    
    /* 未找到对应的入库单提交命令 */
    PoCApiCode_STOCKIN_ORDER_SUBMIT_CMD_NOT_FOUND_2031116 = 2031116,
    
    /* 入库单未生成结算信息 */
    PoCApiCode_STOCKIN_ORDER_NOT_SETTLED_2031117 = 2031117,
    
    /* 入库单没有生成二次预付 */
    PoCApiCode_STOCKIN_ORDER_NOT_APPLY_SECOND_PAY_2031118 = 2031118,
    
    /* 未找到对应的入库单取消命令 */
    PoCApiCode_STOCKIN_ORDER_CANCEL_CMD_NOT_FOUND_2031119 = 2031119,
    
    /* 入库单供应商为国内贸易，仓库只能为国内实体仓 */
    PoCApiCode_STOCKIN_ORDER_INLAND_TRADE_2031120 = 2031120,
    
    /* 入库单供应商为国际贸易，仓库只能为海外实体仓、保税实体仓 */
    PoCApiCode_STOCKIN_ORDER_INTERNATIONAL_TRADE_2031121 = 2031121,
    
    /* 入库单状态为收货完成或已取消，不能改仓 */
    PoCApiCode_STOCKIN_ORDER_EDIT_WAREHOUSE_2031122 = 2031122,
    
    /* 调拨入库的调出仓库为国内仓，改仓库只能为国内实体仓 */
    PoCApiCode_STOCKIN_TRANS_INLAND_TRADE_2031123 = 2031123,
    
    /* 调拨入库的调出仓库为海外仓或保税仓，仓库只能为海外实体仓、保税实体仓 */
    PoCApiCode_STOCKIN_TRANS_INTERNATIONAL_TRADE_2031124 = 2031124,
    
    /* 方法参数为空或不合法 */
    PoCApiCode_SKU_SERVICE_PARAMS_ILLEGAL_2040000 = 2040000,
    
    /* 商品服务系统内部异常 */
    PoCApiCode_SKU_SERVICE_INNER_EXCEPTION_2040001 = 2040001,
    
    /* 商品备案名称不存在 */
    PoCApiCode_SKU_SERVICE_DECLARE_NAME_NOT_EXIST_2040002 = 2040002,
    
    /* 商品已成功备案 */
    PoCApiCode_SKU_SERVICE_DECLARE_EXIST_PASS_2040003 = 2040003,
    
    /* 备案商品已存在 */
    PoCApiCode_SKU_SERVICE_DECLARE_EXIST_2040004 = 2040004,
    
    /* 备案商品不允许删除 */
    PoCApiCode_SKU_DECLARE_NOT_ALLOW_DELETE_2040005 = 2040005,
    
    /* 组合商品信息不存在 */
    PoCApiCode_MIXED_SKU_NOT_EXIST_2040006 = 2040006,
    
    /* 组合商品参数信息不合法 */
    PoCApiCode_MIXED_SKU_PARAMS_ILLAGEL_2040007 = 2040007,
    
    /* 组合商品信息已存在 */
    PoCApiCode_MIXSKU_EXITS_ERR_2041000 = 2041000,
    
    /* 组合商品信息新增失败 */
    PoCApiCode_MIXSKU_INSERT_ERR_2041001 = 2041001,
    
    /* 组合商品信息更新失败 */
    PoCApiCode_MIXSKU_UPDATE_ERR_2041002 = 2041002,
    
    /* 重复的商品条码 */
    PoCApiCode_DUPLICATE_BARCODE_ERR_2041003 = 2041003,
    
    /* 商品的行邮税号与申报的不一致 */
    PoCApiCode_SKU_POSTTAXCODE_NOT_MATCH_DECLARE_2041005 = 2041005,
    
    /* 商品的备案信息已存在 */
    PoCApiCode_SKU_DECLARE_EXIST_2041006 = 2041006,
    
    /* 尚有库存的商品不允许删除 */
    PoCApiCode_STOCK_EXIST_SKU_DELETE_ERROR_2041007 = 2041007,
    
    /* 商品条码为空 */
    PoCApiCode_SKU_BARCODE_IS_EMPTY_2041008 = 2041008,
    
    /* 商品备案内部异常 */
    PoCApiCode_SKU_SERVICE_DECLARE_INNER_EXCEPTION_2041009 = 2041009,
    
    /* 商品已存在库存，不允许修改条码 */
    PoCApiCode_STOCK_EXIST_SKU_BARCODE_EDIT_NOT_ALLOWED_CODE_ERROR_2041010 = 2041010,
    
    /* 商品备案信息不存在 */
    PoCApiCode_SKU_DECLARE_NOT_EXIST_2041011 = 2041011,
    
    /* 商品备案税率不合法 */
    PoCApiCode_SKU_DECLARE_TAXRATE_ILLEGAL_2041012 = 2041012,
    
    /* 出库单备案价格保存失败 */
    PoCApiCode_STOCKOUT_ORDER_DECLARE_PRICE_SAVE_FAILURE_2041013 = 2041013,
    
    /* 出库单商品申报价格不存在 */
    PoCApiCode_STOCKOUT_ORDER_SKU_DECLARE_PRICE_NOT_EXIST_2041014 = 2041014,
    
    /* 出库单供应商原信息不完整 */
    PoCApiCode_STOCKOUT_ORDER_PROVIDER_META_NOT_MATCH_2041015 = 2041015,
    
    /* 商品备案重量为空 */
    PoCApiCode_SKU_DECLARE_WEIGHT_IS_EMPTY_2041016 = 2041016,
    
    /* 实际支付申报不能为0 */
    PoCApiCode_STOCKOUT_ORDER_DECLARE_ACTURE_PAY_IS_ZERO_2041017 = 2041017,
    
    /* 供应商编码为空或错误 */
    PoCApiCode_PROVIDER_CODE_ERROR_EXCEPTION_2050000 = 2050000,
    
    /* 供应商名称不能为空 */
    PoCApiCode_PROVIDER_NAME_ERROR_EXCEPTION_2050001 = 2050001,
    
    /* 供应商外文名称不能为空 */
    PoCApiCode_PROVIDER_FOREIGN_NAME_EMPTY_EXCEPTION_2050002 = 2050002,
    
    /* 供应商状态不能为空 */
    PoCApiCode_PROVIDER_STATUS_IS_EMPTY_EXCEPTION_2050003 = 2050003,
    
    /* 供应商简称不能为空 */
    PoCApiCode_PROVIDER_COMPANY_SIMPLE_NAME_EMPTY_EXCEPTION_2050004 = 2050004,
    
    /* 供应商编码已存在 */
    PoCApiCode_PROVIDER_CODE_ALREADY_EXISTS_ERROR_EXCEPTION_2050005 = 2050005,
    
    /* 数据库异常 */
    PoCApiCode_PROVIDER_DATEBASE_ERROR_EXCEPTION_2050006 = 2050006,
    
    /* 方法参数为空或不合法 */
    PoCApiCode_ROVIDER_SERVICE_PARAMS_ILLEGAL_2050007 = 2050007,
    
    /* 供应商编码不存在 */
    PoCApiCode_PROVIDER_SERVICE_PROVIDERCODE_NOT_EXIST_2050008 = 2050008,
    
    /* 供应商不存在或已被删除 */
    PoCApiCode_PROVIDER_SERVICE_PROVIDERID_NOT_EXIST_2050009 = 2050009,
    
    /* 仓库编码为空或错误 */
    PoCApiCode_WAREHOUSE_CODE_ERROR_EXCEPTION_2060000 = 2060000,
    
    /* 仓库名称不能为空 */
    PoCApiCode_WAREHOUSE_NAME_ERROR_EXCEPTION_2060001 = 2060001,
    
    /* 国家没找到 */
    PoCApiCode_WAREHOUSE_NATION_NOT_FOUND_ERROR_EXCEPTION_2060002 = 2060002,
    
    /* 数据库异常 */
    PoCApiCode_WAREHOUSE_DATABASE_ERROR_EXCEPTION_2060003 = 2060003,
    
    /* 仓库编码不能为空 */
    PoCApiCode_WAREHOUSE_NID_EMPTY_ERROR_EXCEPTION_2060004 = 2060004,
    
    /* 仓库编码已存在 */
    PoCApiCode_WAREHOUSE_NID_ALREADY_EXISTS_ERROR_EXCEPTION_2060005 = 2060005,
    
    /* 仓库不存在 */
    PoCApiCode_WAREHOUSE_NOT_EXISTS_ERROR_EXCEPTION_2060006 = 2060006,
    
    /* 方法参数为空或不合法 */
    PoCApiCode_STOCK_SERVICE_PARAMS_ILLEGAL_2070000 = 2070000,
    
    /* 库存服务系统内部异常 */
    PoCApiCode_STOCK_SERVICE_INNER_EXCEPTION_2070001 = 2070001,
    
    /* 未找到冻结库存记录 */
    PoCApiCode_STOCK_SERVICE_FREEZE_RECORD_NOT_FOUND_2070002 = 2070002,
    
    /* 冻结库存记录和实际出库记录不符 */
    PoCApiCode_STOCK_SERVICE_FREEZE_RECORD_NOT_MATCH_2070003 = 2070003,
    
    /* 未找到实物库存记录 */
    PoCApiCode_STOCK_SERVICE_ACTUAL_RECORD_NOT_FOUND_2070004 = 2070004,
    
    /* 冻结库存的状态异常 */
    PoCApiCode_STOCK_SERVICE_FREEZE_RECORD_STATE_ERROR_2070005 = 2070005,
    
    /* 冻结库存的数量和最终实际消费数量不符 */
    PoCApiCode_STOCK_SERVICE_FREEZE_COUNT_NOT_MATCH_2070006 = 2070006,
    
    /* 商品库存的成本价为空或者小于等于0 */
    PoCApiCode_STOCK_SERVICE_STOCK_PRICE_INVALID_2070007 = 2070007,
    
    /* 更改销售库存失败 */
    PoCApiCode_STOCK_SERVICE_SALE_RECORD_UPDATE_ERROR_2070008 = 2070008,
    
    /* 可售库存不足 */
    PoCApiCode_STOCK_SERVICE_SALE_COUNT_NOT_ENOUGH_ERROR_2070009 = 2070009,
    
    /* 未找到可售库存记录 */
    PoCApiCode_STOCK_SERVICE_SALE_RECORD_NOT_FOUND_ERROR_2070010 = 2070010,
    
    /* 未找到商品批次库存记录 */
    PoCApiCode_STOCK_SERVICE_BATCH_STOCK_RECORD_NOT_FOUND_2070011 = 2070011,
    
    /* 商品批次库存的成本价为空或者小于等于0 */
    PoCApiCode_STOCK_SERVICE_BATCH_STOCK_PRICE_INVALID_2070012 = 2070012,
    
    /* 未找到可售库存冻结记录 */
    PoCApiCode_STOCK_SERVICE_SALE_FREEZE_RECORD_NOT_FOUND_ERROR_2070014 = 2070014,
    
    /* 商品批次库存重复 */
    PoCApiCode_STOCK_SERVICE_BATCH_STOCK_RECODE_DUPLICATE_2070015 = 2070015,
    
    /* 批量冻结库存失败 */
    PoCApiCode_STOCK_SERVICE_FREEZE_IN_BATCH_FAIL_2070016 = 2070016,
    
    /* 找不到批次禁用记录 */
    PoCApiCode_STOCK_SERVICE_BATCH_STOCK_LOCK_LOG_NOT_FOUND_2070017 = 2070017,
    
    /* 批次禁用记录已存在 */
    PoCApiCode_STOCK_SERVICE_BATCH_STOCK_LOCK_LOG_EXIST_2070018 = 2070018,
    
    /* 安全库存不足 */
    PoCApiCode_STOCK_SERVICE_SAFE_COUNT_NOT_ENOUGH_ERROR_2070019 = 2070019,
    
    /* 调整寄售不入库商品库存数量失败 */
    PoCApiCode_OPERATE_CONSIGN_STOCK_ERROR_2070020 = 2070020,
    
    /* 同步寄售不入库商品库存失败 */
    PoCApiCode_SYNC_CONSIGN_STOCK_ERROR_2070021 = 2070021,
    
    /* 退货仓和存储仓不需要使用批次禁用功能 */
    PoCApiCode_UNSUPPORT_BATCH_STOCK_LOCK_WAREHOUSE_2070022 = 2070022,
    
    /* 释放预售商品库存数量失败 */
    PoCApiCode_RELEASE_PRESELL_STOCK_ERROR_2070023 = 2070023,
    
    /* 方法参数为空或不合法 */
    PoCApiCode_CUSTOMCATEGORY_SERVICE_PARAMS_ILLEGAL_2080000 = 2080000,
    
    /* 海关类目服务系统内部异常 */
    PoCApiCode_CUSTOMCATEGORY_SERVICE_INNER_EXCEPTION_2080001 = 2080001,
    
    /* 方法参数为空或不合法 */
    PoCApiCode_NATION_SERVICE_PARAMS_ILLEGAL_2090000 = 2090000,
    
    /* 原产地服务系统内部异常 */
    PoCApiCode_NATION_SERVICE_INNER_EXCEPTION_2090001 = 2090001,
    
    /* 方法参数为空或不合法 */
    PoCApiCode_PROVIDERSKU_SERVICE_PARAMS_ILLEGAL_2100000 = 2100000,
    
    /* 供应商商品映射服务系统内部异常 */
    PoCApiCode_PROVIDERSKU_SERVICE_INNER_EXCEPTION_2100001 = 2100001,
    
    /* 供应商不存在 */
    PoCApiCode_PROVIDERSKU_NOT_EXIST_EXCEPTION_2100002 = 2100002,
    
    /* 出库单波次号更新失败 */
    PoCApiCode_STOCKOUT_ORDER_WAVENO_UPDATE_ERROR_2110000 = 2110000,
    
    /* 供应链推送订单状态更改失败 */
    PoCApiCode_STOCKOUT_ORDER_ORDER_STATE_UPDATE_ERROR_2110001 = 2110001,
    
    /* 波次号已存在，更新波次号失败 */
    PoCApiCode_STOCKOUT_ORDER_UPDATE_WAVENO_EXISTS_ERROR_2110002 = 2110002,
    
    /* 单据状态流转异常 */
    PoCApiCode_STOCKOUT_ORDER_STATE_CHANGE_EXCEPTION_2110003 = 2110003,
    
    /* 出库单参数不合法 */
    PoCApiCode_STOCKOUT_ORDER_PARAM_ILLIGAL_2110004 = 2110004,
    
    /* 出库单下发出库异常 */
    PoCApiCode_STOCKOUT_ORDER_STOCKOUT_EXCEPTION_2110005 = 2110005,
    
    /* 出库单发货异常 */
    PoCApiCode_STOCKOUT_ORDER_SEND_EXCEPTION_2110006 = 2110006,
    
    /* 出库单报文请求参数不合法 */
    PoCApiCode_STOCKOUT_ORDER_REQUEST_PARAM_ILLEGAL_2110007 = 2110007,
    
    /* 三方物流TPL订单下发失败 */
    PoCApiCode_STOCKOUT_ORDER_TPL_CREATE_FAILURE_2110010 = 2110010,
    
    /* 支付单申报下发失败 */
    PoCApiCode_STOCKOUT_ORDER_PAY_CREATE_FAILURE_2110011 = 2110011,
    
    /* 口岸订单申报下发失败 */
    PoCApiCode_STOCKOUT_ORDER_PORT_CREATE_FAILURE_2110012 = 2110012,
    
    /* 仓库订单下发失败 */
    PoCApiCode_STOCKOUT_ORDER_WMS_CREATE_FAILURE_2110013 = 2110013,
    
    /* 出库单状态不允许关闭 */
    PoCApiCode_STOCKOUT_ORDER_CANNOT_CLOSE_2110014 = 2110014,
    
    /* 出库单状态流转参数不合法，缺少ID */
    PoCApiCode_STOCKOUT_ORDER_ENGINE_PARAM_ILLAGLE_2110015 = 2110015,
    
    /* 三方物流TPL运单确认失败 */
    PoCApiCode_STOCKOUT_ORDER_TPL_SEND_FAILURE_2110016 = 2110016,
    
    /* 仓库订单下发发货失败 */
    PoCApiCode_STOCKOUT_ORDER_WMS_SEND_FAILURE_2110017 = 2110017,
    
    /* 未找到共通的申报方式 */
    PoCApiCode_STOCKOUT_COMMON_DECLARE_TYPE_NOT_FOUND_2110018 = 2110018,
    
    /* 口岸避税验证失败 */
    PoCApiCode_STOCKOUT_ORDER_WMS_PORT_VALIDATE_FAILURE_2110019 = 2110019,
    
    /* 系统配置出错 */
    PoCApiCode_STOCKOUT_ORDER_CONFIG_EXCEPTION_2110020 = 2110020,
    
    /* 命令不支持 */
    PoCApiCode_COMMAND_NOT_SUPPORT_2110021 = 2110021,
    
    /* 出库单状态不允许流转到已签收 */
    PoCApiCode_STOCKOUT_ORDER_STATE_TO_SINGED_NOT_ALLOW_2110022 = 2110022,
    
    /* 对象转换异常 */
    PoCApiCode_STOCKOUT_ORDER_OBJECT_CONVERT_ERROR_2110023 = 2110023,
    
    /* 对象转换参数不合法 */
    PoCApiCode_STOCKOUT_ORDER_OBJECT_CONVERT_PARAMS_ILLEGAL_2110024 = 2110024,
    
    /* 出库单状态不允许重新分包 */
    PoCApiCode_STOCKOUT_ORDER_NOT_ALLOW_RESPLIT_2110025 = 2110025,
    
    /* 获取中通大头笔失败 */
    PoCApiCode_STOCKOUT_ORDER_NOT_GET_ZTO_REMARK_2110026 = 2110026,
    
    /* 预售订单暂不能创建出库单 */
    PoCApiCode_PRESELL_ORDER_CREATE_ERROR_2110027 = 2110027,
    
    /* 出库单下发清关确认重量参数不合法 */
    PoCApiCode_STOCKOUT_ORDER_CCB_CONFIRM_WEIGHT_ERROR_2110028 = 2110028,
    
    /* 出库单下发清关确认失败 */
    PoCApiCode_STOCKOUT_ORDER_CCB_CONFIRM_ERROR_2110029 = 2110029,
    
    /* 订单下发海关总署，参数不合法 */
    PoCApiCode_STOCKOUT_ORDER_CUSTOMSOFFICE_MSG_ILLEGAL_2110030 = 2110030,
    
    /* 订单下发海关总署，发送异常 */
    PoCApiCode_STOCKOUT_ORDER_CUSTOMSOFFICE_MSG_SEND_ERROR_2110031 = 2110031,
    
    /* 支付类型错误 */
    PoCApiCode_PAYTYPE_NOT_SUPPORT_ERROR_2120000 = 2120000,
    
    /* 线路服务系统内部异常 */
    PoCApiCode_PAYTYPE_SERVICE_INNER_EXCEPTION_2120001 = 2120001,
    
    /* 新增线路配置信息异常 */
    PoCApiCode_ADD_LINE_CONFIGURE_ERROR_2120002 = 2120002,
    
    /* 发送短信异常 */
    PoCApiCode_SEND_SMS_ERROR_2130000 = 2130000,
    
    /* 发送邮件异常 */
    PoCApiCode_SEND_EMAIL_ERROR_2130001 = 2130001,
    
    /* 方法参数为空或不合法 */
    PoCApiCode_LIULIAN_SERVICE_PARAMS_ILLEGAL_2140000 = 2140000,
    
    /* 未查询到符合条件的运费 */
    PoCApiCode_LIULIAN_SERVICE_FREIGHT_NOT_FOUND_2140001 = 2140001,
    
    /* 方法参数为空或不合法 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_PARAMS_ILLEGAL_2150000 = 2150000,
    
    /* 出库单不存在 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_STOCKOUTORDER_NOT_EXIST_2150001 = 2150001,
    
    /* 仓库不存在 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_WAREHOUSE_NOT_EXIST_2150002 = 2150002,
    
    /* 仓库的供应商不存在 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_WAREHOUSE_PROVIDER_NOT_EXIST_2150003 = 2150003,
    
    /* 订单中商品数与需申报的商品数不匹配 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_PERSONAL_GOODES_COUNT_NOT_MATCH_2150004 = 2150004,
    
    /* 订单中商品数与需申报的运单不匹配 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_PERSONAL_GOODES_WAYBILL_NOT_MATCH_2150005 = 2150005,
    
    /* 仓库的供应商元信息部分缺失 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_WAREHOUSE_PROVIDER_META_PART_MISSING_2150006 = 2150006,
    
    /* 仓库的供应商元信息格式不正确 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_WAREHOUSE_PROVIDER_META_ILLEGAL_2150007 = 2150007,
    
    /* 个人申报单中商品国检备案编码部分缺失 */
    PoCApiCode_LOGISTICS_COMPANY_SERVICE_PERSONAL_GOODES_PRODUCT_RECORD_MISSING_2150008 = 2150008,
    
    /* 采购单不存在 */
    PoCApiCode_COLLECTING_PURCHASE_ORDER_NOT_EXIT_2200000 = 2200000,
    
    /* 采购已经处于完成状态 */
    PoCApiCode_COLLECTING_PURCHASE_ORDER_HAS_FINISHED_2200001 = 2200001,
    
    /* 参数不合法 */
    PoCApiCode_COLLECTING_PURCHASE_ORDER_PARAM_ILLEGAL_2200002 = 2200002,
    
    /* SKU不存在 */
    PoCApiCode_COLLECTING_PURCHASE_ORDER_SKU_NOT_EXIST_2200003 = 2200003,
    
    /* 运单号已存在 */
    PoCApiCode_COLLECTING_PURCHASE_RESULT_MAILNO_EXIST_2200004 = 2200004,
    
    /* 运单号对应的入库记录已存在 */
    PoCApiCode_COLLECTING_STOCKIN_ORDER_MAILNO_EXIST_2210001 = 2210001,
    
    /* 运单号对应的采购记录不存在 */
    PoCApiCode_COLLECTING_STOCKIN_ORDER_PURCHASE_RESUL_NOT_EXIST_2210002 = 2210002,
    
    /* 口岸不存在 */
    PoCApiCode_PORT_SERVICE_PORT_NOT_EXIST_2220000 = 2220000,
    
    /* 口岸不支持订单申报 */
    PoCApiCode_PORT_SERVICE_ORDER_DELCARE_NOT_SUPPORT_2220001 = 2220001,
    
    /* 支付单申报状态不允许再次申报 */
    PoCApiCode_PAY_COMPANY_SERVICE_ORDER_DELCARE_STATE_NOT_ALLOW_2220002 = 2220002,
    
    /* 支付单申报记录不存在 */
    PoCApiCode_PAY_COMPANY_SERVICE_PAY_BILL_NOT_EXIST_2220003 = 2220003,
    
    /* 电商代理推送支付单只允许在杭州口岸 */
    PoCApiCode_PAY_COMPANY_SERVICE_PAY_BILL_PROXY_ONLY_ON_HANGZHOU_PORT_2220004 = 2220004,
    
    /* 支付申报异常 */
    PoCApiCode_PAY_COMPANY_SERVICE_PAY_BILL_DECLARE_EXCEPTION_2220005 = 2220005,
    
    /* 损溢单系统内部异常 */
    PoCApiCode_GAL_ORDER_INNER_EXCEPTION_2230000 = 2230000,
    
    /* 损溢明细冻结失败 */
    PoCApiCode_GAL_ORDER_SKU_FREEZE_FAILURE_ERROR_2230001 = 2230001,
    
    /* 未找到损溢单记录 */
    PoCApiCode_GAL_ORDER_NOT_FOUND_ERROR_2230002 = 2230002,
    
    /* 未找到损溢单明细记录 */
    PoCApiCode_GAL_ORDER_SKU_NOT_FOUND_ERROR_2230003 = 2230003,
    
    /* 调用商品系统接口扣减渠道库存失败 */
    PoCApiCode_GAL_ORDER_CALL_GOODS_SYSTEM_REDUCE_CHANNEL_COUNT_ERROR_2230005 = 2230005,
    
    /* 下发损益单确认命令失败 */
    PoCApiCode_GAL_ORDER_CONFIRM_FAIL_CODE_ERROR_2230006 = 2230006,
    
    /* 损溢单取消失败 */
    PoCApiCode_GAL_ORDER_CANCEL_FAIL_CODE_ERROR_2230007 = 2230007,
    
    /* 批次实物库存小于损益库存 */
    PoCApiCode_BATCH_STOCK_NOT_ENOUGH_CODE_ERROR_2230008 = 2230008,
    
    /* 损溢单参数不合法 */
    PoCApiCode_GAL_ORDER_PARAMS_ILLEGAL_2230009 = 2230009,
    
    /* 调拨单系统内部异常 */
    PoCApiCode_TRANPoCER_ORDER_INNER_EXCEPTION_2250000 = 2250000,
    
    /* 调拨明细冻结失败 */
    PoCApiCode_TRANPoCER_ORDER_SKU_FREEZE_FAILURE_ERROR_2250001 = 2250001,
    
    /* 未找到调拨单记录 */
    PoCApiCode_TRANPoCER_ORDER_NOT_FOUND_ERROR_2250002 = 2250002,
    
    /* 未找到调拨单明细记录 */
    PoCApiCode_TRANPoCER_ORDER_SKU_NOT_FOUND_ERROR_2250003 = 2250003,
    
    /* 下发调拨单确认命令失败 */
    PoCApiCode_TRANPoCER_ORDER_CONFIRM_FAIL_CODE_ERROR_2250004 = 2250004,
    
    /* 调拨单取消失败 */
    PoCApiCode_TRANPoCER_ORDER_CANCEL_FAIL_CODE_ERROR_2250005 = 2250005,
    
    /* 批次实物库存小于申请调拨数量 */
    PoCApiCode_TRANPoCER_ORDER_BATCH_STOCK_NOT_ENOUGH_CODE_ERROR_2250006 = 2250006,
    
    /* 可售库存小于申请调拨数量 */
    PoCApiCode_TRANPoCER_ORDER_SALE_STOCK_NOT_ENOUGH_CODE_ERROR_2250007 = 2250007,
    
    /* 调拨单参数不合法 */
    PoCApiCode_TRANPoCER_ORDER_PARAMS_ILLEGAL_2250008 = 2250008,
    
    /* 调拨单不存在 */
    PoCApiCode_TRANPoCER_ORDER_NOT_EXIST_2250009 = 2250009,
    
    /* 只有待审批状态的调拨单才能审批 */
    PoCApiCode_TRANPoCER_ORDER_STATE_NOT_WAIT_AUDIT_2250010 = 2250010,
    
    /* 只有初始化状态的调拨单才能提交审批 */
    PoCApiCode_TRANPoCER_ORDER_STATE_NOT_INIT_2250011 = 2250011,
    
    /* 调拨单的调出仓库不存在 */
    PoCApiCode_TRANPoCER_WAREHOUSE_NOT_EXIST_2250012 = 2250012,
    
    /* 同步出库单给仓库异常 */
    PoCApiCode_TRANPoCER_ORDER_STOCKOUT_ORDER_SYN_ERROR_2250013 = 2250013,
    
    /* 调拨出库单已存在 */
    PoCApiCode_TRANPoCER_OUT_ORDER_EXIST_2250014 = 2250014,
    
    /* 调拨入库单已存在 */
    PoCApiCode_TRANPoCER_IN_ORDER_EXIST_2250015 = 2250015,
    
    /* 调拨单调用商品系统接口扣减渠道库存失败 */
    PoCApiCode_TRANPoCER_ORDER_CALL_GOODS_SYSTEM_REDUCE_CHANNEL_COUNT_ERROR_2250016 = 2250016,
    
    /* 商品备案系统内部异常 */
    PoCApiCode_PRODUCT_DECLARE_INNER_EXCEPTION_2260000 = 2260000,
    
    /* 未找到商品备案记录 */
    PoCApiCode_PRODUCT_DECLARE_NOT_FOUND_ERROR_2260001 = 2260001,
    
    /* 商品备案参数不合法 */
    PoCApiCode_PRODUCT_DECLARE_PARAMS_ILLEGAL_2260002 = 2260002,
    
    /* 广州保税商品备案信息不存在 */
    PoCApiCode_PRODUCT_DECLARE_GZ_BONDED_NOT_FOUNT_EXCEPTION_2260003 = 2260003,
    
    /* 广州直邮商品备案信息不存在 */
    PoCApiCode_PRODUCT_DECLARE_GZ_DIREDCTMAIL_NOT_FOUNT_EXCEPTION_2260004 = 2260004,
    
    /* 杭州保税商品备案信息不存在 */
    PoCApiCode_PRODUCT_DECLARE_HZ_BONDED_NOT_FOUNT_EXCEPTION_2260005 = 2260005,
    
    /* 杭州直邮商品备案信息不存在 */
    PoCApiCode_PRODUCT_DECLARE_HZ_DIREDCTMAIL_NOT_FOUNT_EXCEPTION_2260006 = 2260006,
    
    /* 宁波保税商品备案信息不存在 */
    PoCApiCode_PRODUCT_DECLARE_NB_BONDED_NOT_FOUNT_EXCEPTION_2260007 = 2260007,
    
    /* 待备案状态无法操作资料收集完毕导入 */
    PoCApiCode_PRODUCT_DECLARE_FINISHED_COLLECTING_STATE_ERROR_2260008 = 2260008,
    
    /* 商品的备案状态不为资料收集完毕或备案通过,无法操作备案通过导入 */
    PoCApiCode_PRODUCT_DECLARE_STATE_NOT_FINISHED_COLLECTING_OR_DECLARE_PASS_2260009 = 2260009,
    
    /* 初始化商品备案信息异常 */
    PoCApiCode_PRODUCT_DECLARE_INIT_EXCEPTION_2260010 = 2260010,
    
    /* 备案状态不为资料收集完毕, 无法操作备案中导入 */
    PoCApiCode_PRODUCT_DECLARE_DECLARING_STATE_ERROR_2260011 = 2260011,
    
    /* 采购退货单系统内部异常 */
    PoCApiCode_PURCHASE_RETURN_INNER_EXCEPTION_2270000 = 2270000,
    
    /* 采退单不存在 */
    PoCApiCode_PURCHASE_RETURN_NOT_EXIST_2270001 = 2270001,
    
    /* 采退单不允许删除 */
    PoCApiCode_PURCHASE_RETURN_NOT_ALLOW_DELETE_2270002 = 2270002,
    
    /* 只有初始化或是冻结失败的采退单才能提交审批 */
    PoCApiCode_PURCHASE_RETURN_STATE_NOT_INIT_2270003 = 2270003,
    
    /* 采退单参数不合法 */
    PoCApiCode_PURCHASE_RETURN_PARAMS_ILLEGAL_2270004 = 2270004,
    
    /* 批次正品库存小于申请采退数量 */
    PoCApiCode_PURCHASE_RETURN_BATCH_STOCK_NOT_ENOUGH_CODE_ERROR_2270005 = 2270005,
    
    /* 可售库存小于申请采退数量 */
    PoCApiCode_PURCHASE_RETURN_SALE_STOCK_NOT_ENOUGH_CODE_ERROR_2270006 = 2270006,
    
    /* 只有待审批状态的采退单才能审批 */
    PoCApiCode_PURCHASE_RETURN_STATE_NOT_WAIT_AUDIT_2270007 = 2270007,
    
    /* 采退出库单已存在，不能成功创建 */
    PoCApiCode_PURCHASE_RETURN_OUT_ORDER_EXIST_2270008 = 2270008,
    
    /* 不能成功创建采退出库单，采退信息赋值异常 */
    PoCApiCode_PURCHASE_RETURN_STOCK_OUT_EXCEPTION_2270009 = 2270009,
    
    /* 未找到采退单明细记录 */
    PoCApiCode_PURCHASE_RETURN_SKU_NOT_FOUND_ERROR_2270010 = 2270010,
    
    /* 采退明细冻结失败 */
    PoCApiCode_PURCHASE_RETURN_SKU_FREEZE_FAILURE_ERROR_2270011 = 2270011,
    
    /* 退货仓库未找到路线信息 */
    PoCApiCode_PURCHASE_RETURN_LINE_NOT_EXIST_2270012 = 2270012,
    
    /* 批次坏品库存小于申请采退数量 */
    PoCApiCode_PURCHASE_RETURN_BATCH_BAD_STOCK_NOT_ENOUGH_CODE_ERROR_2270013 = 2270013,
    
    /* 实物批次坏品库存小于申请采退数量 */
    PoCApiCode_PURCHASE_RETURN_ACTUAL_BAD_STOCK_NOT_ENOUGH_CODE_ERROR_2270014 = 2270014,
    
    /* 预售申请单系统内部异常 */
    PoCApiCode_PRESELL_ORDER_INNER_EXCEPTION_2270101 = 2270101,
    
    /* 预售申请单不存在 */
    PoCApiCode_PRESELL_ORDER_NOT_EXIST_2270102 = 2270102,
    
    /* 只有待审批的申请单才能提交审批 */
    PoCApiCode_PRESELL_ORDER_STATE_NOT_INIT_2270103 = 2270103,
    
    /* 只有申请无PO预售的申请单才能提交审批 */
    PoCApiCode_PRESELL_ORDER_NOPO_2270104 = 2270104,
    
    /* 可售库存表的可售库存小于申请预支可售数量 */
    PoCApiCode_PRESELL_ORDER_MIN_CODE_ERROR_2270105 = 2270105,
    
    /* 参数不合法 */
    PoCApiCode_SUPPLIER_CHANNEL_DISTRIBUTION_PARAMS_ILLEGAL_2280000 = 2280000,
    
    /* 找不到批次库存记录 */
    PoCApiCode_SUPPLIER_CHANNEL_BATCH_STOCK_NOT_FOUND_2280001 = 2280001,
    
    /* 参数不合法 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_PARAMS_ILLEGAL_2290000 = 2290000,
    
    /* 接收清关路由异常 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_RECEIVE_ROUTE_ERROR_2290001 = 2290001,
    
    /* 调用清关接口异常，出库单不存在 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_ORDER_NOT_EXIST_ERROR_2290002 = 2290002,
    
    /* 调用清关接口异常，出库单不属于该商户 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_ORDER_NOT_MERCHANT_ERROR_2290003 = 2290003,
    
    /* 调用清关接口异常，出库单没有申报信息 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_DECLARATION_NULL_ERROR_2290004 = 2290004,
    
    /* 调用清关接口异常，出库单没有找到对应线路 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_LINE_NULL_ERROR_2290005 = 2290005,
    
    /* 调用清关接口异常，出库单对应线路不需要身份证信息 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_LINE_NOT_NEED_CARD_ERROR_2290006 = 2290006,
    
    /* 调用清关接口异常，未获取到身份信息 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_CARD_INFO_INCOMPLETE_ERROR_2290007 = 2290007,
    
    /* 调用清关接口异常，该订单线路未配置清关信息 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_LOGISTICS_NULL_ERROR_2290008 = 2290008,
    
    /* 调用清关接口异常，清关公司编码错误 */
    PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_LOGISTICSNID_ERROR_2290009 = 2290009,
    
    /* 出库单不存在 */
    PoCApiCode_OPENAPI_SERVICE_STOCKOUT_ORDER_NOT_EXIST_2300001 = 2300001,
    
    /* 参数不合法 */
    PoCApiCode_OPENAPI_SERVICE_PARAM_ILLEGAL_2300002 = 2300002,
    
    /* 订单状态流转异常 */
    PoCApiCode_OPENAPI_SERVICE_STATE_CHANGE_ERROR_2300003 = 2300003,
    
    /* 订单运单信息不能为空 */
    PoCApiCode_OPENAPI_SERVICE_MAIL_NO_NOT_ALL_EMPTY_2300004 = 2300004,
    
    /* 未找到价格调整申请单记录 */
    PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_NOT_FOUND_ERROR_2400001 = 2400001,
    
    /* 活动价的生效开始时间必须小于生效结束时间 */
    PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_START_GREATER_THAN_END_ERROR_2400002 = 2400002,
    
    /* 存在待审批状态的价格调整申请单记录, 需要先完成该申请单的审批 */
    PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_EXIST_WAIT_APPROVE_ERROR_2400003 = 2400003,
    
    /* 存在生效时间段重复的价格调整申请单记录, 请修改生效起止时间 */
    PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_EXIST_TIME_PERIOD_OVERLAP_ERROR_2400004 = 2400004,
    
    /* 价格调整申请单的状态不为待审批, 无法操作审批 */
    PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_STATE_NOT_WAIT_APPROVE_ERROR_2400005 = 2400005,
    
    /* 已存在相同的活动价格调整申请记录, 无法操作新增 */
    PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_DATA_DUPLICATE_ERROR_2400006 = 2400006,
    
    /* 已存在待审核的供货价格调整申请记录, 无法操作新增 */
    PoCApiCode_PROVIDER_SKU_SUPPLY_PRICE_ADJUST_DATA_DUPLICATE_ERROR_2400007 = 2400007,
    
    /* 未找到价格调整申请单记录 */
    PoCApiCode_PROVIDER_SKU_SUPPLY_PRICE_ADJUST_NOT_FOUND_ERROR_2400008 = 2400008,
    
    /* 路线被关闭 */
    PoCApiCode_LINE_IS_CLOSED_2410001 = 2410001,
    
    /* 出库单下发数据准备异常 */
    PoCApiCode_DATA_PREPARE_ERROR_2410002 = 2410002,
    
    /* 出库单相关参数实体为空 */
    PoCApiCode_STOCKOUT_DATA_IS_NULL_2410003 = 2410003,
    
    /* 税费运费拆分逻辑异常 */
    PoCApiCode_ORDER_FEE_SPLIT_ERROR_2410004 = 2410004,
    
    /* 出库单下发清关公司异常 */
    PoCApiCode_CCB_ORDER_CREATE_ERROR_2410005 = 2410005,
    
    /* 收货人的实名认证失败 */
    PoCApiCode_CONFIRM_REAL_NAME_ERROR_2410006 = 2410006,
    
    /* 商品外文名称不能为空 */
    PoCApiCode_SKU_FOREIGN_NAME_NOT_NULL_2410007 = 2410007,
    
    /* 仓库返回商品批次库存数量不够 */
    PoCApiCode_WH_BATCH_STOCK_NOT_ENOUGH_2410008 = 2410008,
    
    /* 出库单下发数据准备调用用户系统服务异常 */
    PoCApiCode_DATA_PREPARE_CALL_USER_SERVICE_FAIL_2410009 = 2410009,
    
    /* 出库单下发数据准备收货人身份证未上传异常 */
    PoCApiCode_ID_CARD_PHOTO_NOT_UPLOADED_2410010 = 2410010,
    
    /* 出库单下发数据准备收货人身份证未审核异常 */
    PoCApiCode_ID_CARD_PHOTO_NOT_AUDITED_2410011 = 2410011,
    
    /* 出库单下发数据准备收货人身份证审核未通过异常 */
    PoCApiCode_ID_CARD_PHOTO_AUDIT_NOT_PASS_2410012 = 2410012,
    
    /* 参数不合法 */
    PoCApiCode_PRODUCT_ATTRIBUTE_OPT_PARAM_ILLEGAL_2420001 = 2420001,
    
    /* 创建属性模板失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_CREATE_ERROR_2420010 = 2420010,
    
    /* 查询属性模板失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_QUERY_ERROR_2420011 = 2420011,
    
    /* 属性模板已经存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_ALEARY_EXIST_2420012 = 2420012,
    
    /* 查询属性项失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_KEY_QUERY_ERROR_2420013 = 2420013,
    
    /* 属性值不存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_NOT_EXIST_2420014 = 2420014,
    
    /* 属性项不存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_KEY_NOT_EXIST_2420015 = 2420015,
    
    /* 属性项新建失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_KEY_CREATE_ERROR_2420016 = 2420016,
    
    /* 属性值新建失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_CREATE_ERROR_2420017 = 2420017,
    
    /* 属性项已存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_KEY_EXIST_2420018 = 2420018,
    
    /* 属性值已存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_EXIST_2420019 = 2420019,
    
    /* 参数不合法 */
    PoCApiCode_SKU_SELECT_OPT_PARAM_ILLEGAL_2430001 = 2430001,
    
    /* 对象转换异常 */
    PoCApiCode_SKU_SELECT_OPT_OBJ_CONVERT_ERROR_2430002 = 2430002,
    
    /* 选品工具创建清单异常 */
    PoCApiCode_SKU_SELECT_CREATE_RECORD_ERROR_2430003 = 2430003,
    
    /* 选品详情状态流转异常 */
    PoCApiCode_SKU_SELECT_STATE_CHANGE_ERROR_2430004 = 2430004,
    
    /* SKUID不能为空 */
    PoCApiCode_SKU_SELECT_SKUID_IS_EMPTH_2430005 = 2430005,
    
    /* 分页查询选品详情异常 */
    PoCApiCode_SKU_SELECT_QUERY_BY_PAGE_ERROR_2430006 = 2430006,
    
    /* 类目跨境消费税或增值税税率为空 */
    PoCApiCode_SKU_SELECT_CROSS_RATE_EMPTY_2430007 = 2430007,
    
    /* 类目毛利率类型不准确或为空 */
    PoCApiCode_SKU_SELECT_CATEGORY_GROSSPROFIT_EMPTY_2430008 = 2430008,
    
    /* 系统内部异常 */
    PoCApiCode_UNKNOWN_ERROR_2500001 = 2500001,
    
    /* 参数不合法 */
    PoCApiCode_PARAMS_ILLEGAL_2500002 = 2500002,
    
    /* 系统并发异常 */
    PoCApiCode_OPEN_CONCURRENT_ERR_2500003 = 2500003,
    
    /* 该订单已创建过出库单 */
    PoCApiCode_STOCKOUT_ORDER_EXIST_ERR_2500009 = 2500009,
    
    /* 未注册的仓库编码 */
    PoCApiCode_NO_REGISTER_WAREHOUSE_CODE_ERR_2500010 = 2500010,
    
    /* 不可用的仓库编码 */
    PoCApiCode_UNUSABLE_WAREHOUSE_CODE_ERR_2500011 = 2500011,
    
    /* 订单不存在 */
    PoCApiCode_STOCKOUT_ORDER_NOT_EXIST_ERR_2500012 = 2500012,
    
    /* 订单已出库不允许取消 */
    PoCApiCode_CURRENT_STATE_CANNOT_CANCEL_ERR_2500013 = 2500013,
    
    /* 订单已出库不允许取消 */
    PoCApiCode_CURRENT_STATE_CANNOT_RECREATE_ERR_2500014 = 2500014,
    
    /* 一次性查询订单量不能大于500 */
    PoCApiCode_ONE_TIME_QUERY_NUM_OVER_LIMIT_ERR_2500015 = 2500015,
    
    /* 店铺ID不能为空 */
    PoCApiCode_PARAMS_SHOP_ID_EMPTY_ERR_2500100 = 2500100,
    
    /* 企业代码不能为空 */
    PoCApiCode_PARAMS_COMPANY_CODE_EMPTY_ERR_2500101 = 2500101,
    
    /* 企业名称不能为空 */
    PoCApiCode_PARAMS_COMPANY_NAME_EMPTY_ERR_2500102 = 2500102,
    
    /* 仓库编码不能为空 */
    PoCApiCode_PARAMS_WAREHOUSE_CODE_EMPTY_ERR_2500104 = 2500104,
    
    /* 购物网站买家账号不能为空 */
    PoCApiCode_PARAMS_BUYER_ACCOUNT_EMPTY_ERR_2500105 = 2500105,
    
    /* 购物网站买家手机号不能为空 */
    PoCApiCode_PARAMS_BUYER_PHONE_EMPTY_ERR_2500106 = 2500106,
    
    /* 支付流水号不能为空 */
    PoCApiCode_PARAMS_PAYMENT_NO_EMPTY_ERR_2500107 = 2500107,
    
    /* 买家身份证号码不能为空 */
    PoCApiCode_PARAMS_PAY_ID_NO_EMPTY_ERR_2500108 = 2500108,
    
    /* 买家真实姓名不能为空 */
    PoCApiCode_PARAMS_PAY_NAME_EMPTY_ERR_2500109 = 2500109,
    
    /* 国内物流承运商编码不能为空 */
    PoCApiCode_PARAMS_CARRIER_CODE_EMPTY_ERR_2500110 = 2500110,
    
    /* 收货人名称不能为空 */
    PoCApiCode_PARAMS_CONSIGNEE_NAME_EMPTY_ERR_2500111 = 2500111,
    
    /* 收货人地址（省）不能为空 */
    PoCApiCode_PARAMS_CONSIGNEE_PROVINCE_EMPTY_ERR_2500112 = 2500112,
    
    /* 收货人地址（市）不能为空 */
    PoCApiCode_PARAMS_CONSIGNEE_CITY_EMPTY_ERR_2500113 = 2500113,
    
    /* 收货人地址（区）不能为空 */
    PoCApiCode_PARAMS_CONSIGNEE_DISTRICT_EMPTY_ERR_2500114 = 2500114,
    
    /* 收货人地址（详细地址）不能为空 */
    PoCApiCode_PARAMS_CONSIGNEE_ADDRESS_EMPTY_ERR_2500115 = 2500115,
    
    /* 收货人电话号码不能为空 */
    PoCApiCode_PARAMS_CONSIGNEE_TELEPHONE_EMPTY_ERR_2500116 = 2500116,
    
    /* 订单商品明细不能为空 */
    PoCApiCode_PARAMS_SKU_DETAIL_EMPTY_ERR_2500117 = 2500117,
    
    /* 未注册的企业代码 */
    PoCApiCode_NO_REGISTER_SHOP_ID_ERR_2500118 = 2500118,
    
    /* 订单相关金额必须大于等于0 */
    PoCApiCode_ORDER_ILLEGAL_AMOUNT_ERR_2500119 = 2500119,
    
    /* 订单下商品相关金额必须大于等于0 */
    PoCApiCode_ORDER_SKU_ILLEGAL_AMOUNT_ERR_2500120 = 2500120,
    
    /* 订单下商品购买数量必须大于0 */
    PoCApiCode_ORDER_SKU_COUNT_ILLEGAL_ERR_2500121 = 2500121,
    
    /* 订单货物价值必须等于实付金额+税金+优惠金额+运费 */
    PoCApiCode_ORDER_GOODS_AMOUNT_ILLEGAL_ERR_2500122 = 2500122,
    
    /* 实名认证失败 */
    PoCApiCode_REAL_NAME_AUTHENTICATION_FAIL_ERR_2500123 = 2500123,
    
    /* 集货回传-商户编码为空 
en-us: The content of MERCHANTID, which is passed from Shippers is null */
    PoCApiCode_TWS_MERCHANTID_EMPTY_ERROR_2600001 = 2600001,
    
    /* 集货回传-出库单ID数值错误 
en-us: The order ID of stock out, which is passed back from delivery is wrong */
    PoCApiCode_TWS_ORDERID_ERROR_2600002 = 2600002,
    
    /* 集货-日期错误 
en-us: The date */
    PoCApiCode_TWS_DATE_ERROR_2600003 = 2600003,
    
    /* 集货回传-重量值错误 */
    PoCApiCode_TWS_WEIGHT_ERROR_2600004 = 2600004,
    
    /* 集货回传-提货单号为空 */
    PoCApiCode_TWS_BILLNO_EMPTY_ERROR_2600005 = 2600005,
    
    /* 集货回传-订单不存在 */
    PoCApiCode_TWS_ORDER_NOT_EXIST_ERROR_2600006 = 2600006,
    
    /* 集货回传-路由信息为空 */
    PoCApiCode_TWS_ROUTE_EMPTY_ERROR_2600007 = 2600007,
    
    /* 集货回传-路由时间错误 */
    PoCApiCode_TWS_ROUTE_DATE_ERROR_2600008 = 2600008,
    
    /* 集货回传-路由编码为空 */
    PoCApiCode_TWS_ROUTE_CODE_ERROR_2600009 = 2600009,
    
    /* 集货回传-路由城市为空 */
    PoCApiCode_TWS_ROUTE_CITY_ERROR_2600010 = 2600010,
    
    /* 集货回传-路由详情为空 */
    PoCApiCode_TWS_ROUTE_DESCRIPTION_ERROR_2600011 = 2600011,
    
    /* 集货-丰趣海淘保存出库信息失败 */
    PoCApiCode_TWS_SAVE_OUT_ERROR_2600012 = 2600012,
    
    /* 集货-商户编码不存在 */
    PoCApiCode_TWS_MERCHANT_NOT_EXIST_2600013 = 2600013,
    
    /* 集货查询-开始日期大于结束日期 */
    PoCApiCode_TWS_DATE_ORDER_ERROR_2600014 = 2600014,
    
    /* 集货查询-订单状态内容为空 */
    PoCApiCode_TWS_ORDER_STATE_EMPTY_2600015 = 2600015,
    
    /* 集货查询-订单状态值错误 */
    PoCApiCode_TWS_ORDER_STATE_ERROR_2600016 = 2600016,
    
    /* 供货商回传-商户编码为空 
en-us: The content of MERCHANTID, which is passed from Shippers is null */
    PoCApiCode_SUPPLIER_MERCHANTID_EMPTY_ERROR_2700001 = 2700001,
    
    /* 供货商回传-出库单ID数值错误 
en-us: The order ID of stock out, which is passed back from delivery is wrong */
    PoCApiCode_SUPPLIER_ORDERID_ERROR_2700002 = 2700002,
    
    /* 供货商-日期错误 
en-us: The date is error */
    PoCApiCode_SUPPLIER_DATE_ERROR_2700003 = 2700003,
    
    /* 供货商回传-重量值错误 
en-us: The weight is error */
    PoCApiCode_SUPPLIER_WEIGHT_ERROR_2700004 = 2700004,
    
    /* 供货商回传-提货单号为空 
en-us: billno is empty */
    PoCApiCode_SUPPLIER_BILLNO_EMPTY_ERROR_2700005 = 2700005,
    
    /* 供货商回传-订单不存在 
en-us: The order id does not exist  */
    PoCApiCode_SUPPLIER_ORDER_NOT_EXIST_ERROR_2700006 = 2700006,
    
    /* 供货商回传-路由信息为空 
en-us: Routing information is empty  */
    PoCApiCode_SUPPLIER_ROUTE_EMPTY_ERROR_2700007 = 2700007,
    
    /* 供货商回传-路由时间错误 
en-us: Routing time error */
    PoCApiCode_SUPPLIER_ROUTE_DATE_ERROR_2700008 = 2700008,
    
    /* 供货商回传-路由编码为空 
en-us: The routing code is empty */
    PoCApiCode_WMS_ROUTE_CODE_ERROR_2700009 = 2700009,
    
    /* 供货商回传-路由城市为空 
en-us: Routing is empty city */
    PoCApiCode_SUPPLIER_ROUTE_CITY_ERROR_2700010 = 2700010,
    
    /* 供货商回传-路由详情为空 
en-us: Routing information is empty */
    PoCApiCode_SUPPLIER_ROUTE_DESCRIPTION_ERROR_2700011 = 2700011,
    
    /* 供货商-丰趣海淘保存出库信息失败 
en-us: FQ save the outbound information failure */
    PoCApiCode_SUPPLIER_SAVE_OUT_ERROR_2700012 = 2700012,
    
    /* 供货商-商户编码不存在 
en-us: Merchant code does not exist */
    PoCApiCode_SUPPLIER_MERCHANT_NOT_EXIST_2700013 = 2700013,
    
    /* 供货商查询-开始日期大于结束日期 
en-us: Start date is greater than end date */
    PoCApiCode_SUPPLIER_DATE_ORDER_ERROR_2700014 = 2700014,
    
    /* 供货商查询-订单状态内容为空 
en-us: The content of the order status is empty */
    PoCApiCode_SUPPLIER_ORDER_STATE_EMPTY_2700015 = 2700015,
    
    /* 供货商查询-订单状态值错误 
en-us: Order status value error */
    PoCApiCode_SUPPLIER_ORDER_STATE_ERROR_2700016 = 2700016,
    
    /* 供货商查询PDF面单-异常 
en-us: Supplier query PDF surface single - exception */
    PoCApiCode_SUPPLIER_ORDER_PDF_REGION_ERROR_2700017 = 2700017,
    
    /* 供货商同步sku库存-同步数据为空 */
    PoCApiCode_SUPPLIER_SKU_SYNC_ERROR_2700018 = 2700018,
    
    /* 供货商订单查询时间跨度不能超过一个月 
en-us: Supplier order query time span no more than a month */
    PoCApiCode_SUPPLIER_DATE_OVER_ERROR_2700019 = 2700019,
    
    /* 供货商回传商品库存skuID或thirdSkuid不能同时为空 
en-us: skuID or thirdSkuid cannot at the same time is empty */
    PoCApiCode_SUPPLIER_SKUID_EMPTY_EMPTY_2700020 = 2700020,
    
    /* 供货商更新商品库存-操作类型错误 
en-us: Operation type error */
    PoCApiCode_SUPPLIER_OPERATE_TYPE_ERROR_2700021 = 2700021,
    
    /* 供货商更新商品库存-操作数量小于零 
en-us: Operation number less than zero */
    PoCApiCode_SUPPLIER_OPERATE_COUNT_ERROR_2700022 = 2700022,
    
    /* 供货商查询商品库存-实物库存记录不存在 
en-us: inventory record does not exist */
    PoCApiCode_SUPPLIER_QUERY_COUNT_ERROR_2700023 = 2700023,
    
    /* 供货商获取PDF面单信息-异常 */
    PoCApiCode_SUPPLIER_ORDER_PDF_INFO_ERROR_2700024 = 2700024,
    
    /* 供货商回传-子订单ID数值错误 
en-us: The biz ID of stock out, which is passed back from delivery is wrong */
    PoCApiCode_SUPPLIER_BIZID_ERROR_2700025 = 2700025,
    
    /* 系统内部异常 */
    PoCApiCode_SKU_SCORE_INNER_ERROR_2800001 = 2800001,
    
    /* 非法参数 */
    PoCApiCode_SKU_SCORE_PARAMS_ILLEGAL_2800002 = 2800002,
    
    /* SKU实物库存不存在 */
    PoCApiCode_SKU_ACTUALSTOCK_NOT_EXIST_2800003 = 2800003,
    
    /* 库存调整系统内部异常 */
    PoCApiCode_STOCK_ADJUST_ORDER_INNER_EXCEPTION_2801001 = 2801001,
    
    /* 参数不合法 */
    PoCApiCode_STOCK_ADJUST_ORDER_PARAMS_ILLEGAL_2801002 = 2801002,
    
    /* 冻结失败 */
    PoCApiCode_STOCK_ADJUST_ORDER_FREEZE_FAILED_2801003 = 2801003,
    
    /* 解冻失败 */
    PoCApiCode_STOCK_ADJUST_ORDER_UNFREEZE_FAILED_2801004 = 2801004,
    
    /* 坏品库存不足 */
    PoCApiCode_STOCK_ADJUST_WEAR_STOCK_NOT_ENOUGH_2801005 = 2801005,
    
    /* 参数不合法 */
    PoCApiCode_SPU_PARAM_ILLEGAL_ERROR_2900001 = 2900001,
    
    /* SPU创建异常 */
    PoCApiCode_SPU_CREATE_ERROR_ERROR_2900002 = 2900002,
    
    /* SKU更新异常 */
    PoCApiCode_SPU_UPDATE_SKU_ERROR_ERROR_2900003 = 2900003,
    
    /* SPU创建或者更新异常 */
    PoCApiCode_SPU_CREATE_OR_UPDATE_SPU_ERROR_ERROR_2900004 = 2900004,
    
    /* SPU创建或者时SKU不能为空 */
    PoCApiCode_SPU_CREATE_OR_UPDATE_SKU_EMPTY_ERROR_2900005 = 2900005,
    
    /* 同步SPU基本信息到商品系统异常 */
    PoCApiCode_SPU_SYNC_BASIC_INFO_TO_GOODS_EXECPTION_2900006 = 2900006,
    
    /* 同步SPU详情信息到商品系统异常 */
    PoCApiCode_SPU_SYNC_DETAIL_INFO_TO_GOODS_EXECPTION_2900007 = 2900007,
    
    /* 同步SPU全部信息到商品系统异常 */
    PoCApiCode_SPU_SYNC_FULL_INFO_TO_GOODS_EXECPTION_2900008 = 2900008,
    
    /* 支付金额非法 */
    PoCApiCode_PAY_AMOUNT_ERR_3000001 = 3000001,
    
    /* 支付状态不允许支付 */
    PoCApiCode_PAY_ORDER_STATE_CANNTPAY_ERR_3000002 = 3000002,
    
    /* 退款金额非法 */
    PoCApiCode_REFUND_AMOUNT_ERR_3000003 = 3000003,
    
    /* 原订单不存在 */
    PoCApiCode_OLD_ORDER_NOTEXIST_ERR_3000004 = 3000004,
    
    /* 原订单状态不允许退款 */
    PoCApiCode_OLD_ORDER_STATE_CANNT_REFUND_ERR_3000005 = 3000005,
    
    /* 不支持该支付方式 */
    PoCApiCode_PAY_USER_ORDER_ERR_3000007 = 3000007,
    
    /* 目前尚不支持该种支付类型的退款 */
    PoCApiCode_REFUND_PAYTYPE_UNSUPPORTED_3000008 = 3000008,
    
    /* 目前尚不支持该种支付类型 */
    PoCApiCode_PAYTYPE_UNSUPPORTED_3000009 = 3000009,
    
    /* 目前尚不支持该支付类型下载对账文件 */
    PoCApiCode_LOADBILL_PAYTYPE_UNSUPPORTED_3000010 = 3000010,
    
    /* 到支付宝请求wap支付授权失败 */
    PoCApiCode_ALIPAY_WAP_REQUEST_AUTH_ERR_3000020 = 3000020,
    
    /* 用户账户余额不足，请充值或更换支付卡后再支付 */
    PoCApiCode_USER_BALANCE_NOT_ENOUGH_3000030 = 3000030,
    
    /* 商户订单已支付，无需重复操作 */
    PoCApiCode_ORDER_PAID_3000040 = 3000040,
    
    /* 当前订单已关闭，无法支付 */
    PoCApiCode_ORDER_CLOSED_3000050 = 3000050,
    
    /* 服务端异常 */
    PoCApiCode_SERVER_ERROR_3000060 = 3000060,
    
    /* 订单并发支付请求被拒绝 */
    PoCApiCode_CONCURRENT_PAYREQUEST_REFUSED_3000070 = 3000070,
    
    /* 参数错误 */
    PoCApiCode_PARAMETER_ERROR_3000080 = 3000080,
    
    /* 付款订单不存在 */
    PoCApiCode_PAY_ORDER_NOT_EXIST_3000090 = 3000090,
    
    /* 未知错误 */
    PoCApiCode_UNKNOWN_ERROR_3000100 = 3000100,
    
    /* SUCCESS */
    PoCApiCode_ORDER_SUCCESS_4000001 = 4000001,
    
    /* FLOW_CONTINUE */
    PoCApiCode_ORDER_FLOW_CONTINUE_4000002 = 4000002,
    
    /* FLOW_STOP */
    PoCApiCode_ORDER_FLOW_STOP_4000003 = 4000003,
    
    /* order unkown error */
    PoCApiCode_ORDER_UNKNOW_ERROR_4000100 = 4000100,
    
    /* 仓储服务未定义 */
    PoCApiCode_REPOSITORY_STORER_NOT_DEF_4000101 = 4000101,
    
    /* 订单地址不存在 */
    PoCApiCode_ORDER_REC_ADDR_INEXISTENCE_4000200 = 4000200,
    
    /* 订单地址状态错误 */
    PoCApiCode_ORDER_REC_ADDR_STATUS_ERROR_4000300 = 4000300,
    
    /* 订单商品信息改变 */
    PoCApiCode_ORDER_PRODUCTS_INFO_CHANGE_4000400 = 4000400,
    
    /* 购买数量超过活动每人限购数量 */
    PoCApiCode_EXCEED_ACTIVITY_LIMIT_NUM_4000401 = 4000401,
    
    /* 折扣金额大于订单总金额 */
    PoCApiCode_DISCOUNT_EXCEED_TOTALPRICE_4000402 = 4000402,
    
    /* 购买数量超过活动剩余库存 */
    PoCApiCode_EXCEED_ACTIVITY_COUNT_4000403 = 4000403,
    
    /* 活动已经结束 */
    PoCApiCode_ACTIVITY_FINISHED_4000404 = 4000404,
    
    /* 折扣金额过大，超过订单总金额的30%！ */
    PoCApiCode_DISCOUNT_TOO_LARGE_4000405 = 4000405,
    
    /* 通过活动,但是需要通知用户！ */
    PoCApiCode_ACTIVITY_PASSED_NOTIFY_4000406 = 4000406,
    
    /* 商品金额超过订单限额 */
    PoCApiCode_TOTALPRICE_EXTEND_LIMIT_4000412 = 4000412,
    
    /* 订单商品库存不足 */
    PoCApiCode_ORDER_STOCK_INSUFFICIENT_4000500 = 4000500,
    
    /* 订单商品超过限额 */
    PoCApiCode_ORDER_PRODUCT_OVER_LIMIT_4000600 = 4000600,
    
    /* 订单商品金额改变 */
    PoCApiCode_ORDER_AMOUNT_CHANGE_4000700 = 4000700,
    
    /* 订单状态不能取消 */
    PoCApiCode_ORDER_STATUS_CANNOT_CANCEL_4000800 = 4000800,
    
    /* 子订单状态不符合确认操作 */
    PoCApiCode_ORDER_STATUS_CANNOT_CONFIRM_4000900 = 4000900,
    
    /* 退款金额大于实付金额 */
    PoCApiCode_ORDER_REFUND_GT_TOTAL_4001000 = 4001000,
    
    /* 退款原因不能为空 */
    PoCApiCode_ORDER_REFUND_REASON_NULL_4001100 = 4001100,
    
    /* 子订单状态不满足移入操作 */
    PoCApiCode_SUB_ORDER_STATUS_ERROR_4001200 = 4001200,
    
    /* 子订单移动商品数目越界 */
    PoCApiCode_SUB_ORDER_MOVE_NUM_OVERSTEP_4001300 = 4001300,
    
    /* 子订单内商品数目不为空 */
    PoCApiCode_SUB_ORDER_NOT_EMPTY_4001400 = 4001400,
    
    /* 请求支付系统失败 */
    PoCApiCode_CALL_PAYSERVICE_ERROR_4001500 = 4001500,
    
    /*  */
    PoCApiCode_CALL_PAYSERVICE_ADDRESS_ERROR_4001501 = 4001501,
    
    /*  */
    PoCApiCode_CALL_PAYSERVICE_ORDER_ERROR_4001502 = 4001502,
    
    /*  */
    PoCApiCode_CALL_PAYSERVICE_AMOUNT_ERROR_4001503 = 4001503,
    
    /*  */
    PoCApiCode_CALL_PAYSERVICE_ORDER_STATE_ERROR_4001504 = 4001504,
    
    /* 向物流下单失败 */
    PoCApiCode_SEND_ORDER_LOGISTICS_ERROR_4001600 = 4001600,
    
    /* 该物流单已经成功发货，不要重复发货！ */
    PoCApiCode_LOGISTICSNO_DUPLICATE_4001601 = 4001601,
    
    /* 获取不到子订单 */
    PoCApiCode_SUB_ORDER_NOT_EXISTS_4001610 = 4001610,
    
    /* 子订单缺少必要信息:线路id,短地址,创建时间 */
    PoCApiCode_SUB_ORDER_LACK_ATTR_4001611 = 4001611,
    
    /* 获取不到订单 */
    PoCApiCode_ORDER_NOT_EXISTS_4001620 = 4001620,
    
    /* 收货人缺少必要信息：证件类型,号码,证件正反照片 */
    PoCApiCode_ORDER_RECV_INFO_LACK_ATTR_4001621 = 4001621,
    
    /* 订单中商品的数量不能为0 */
    PoCApiCode_ORDER_PRODUCT_NUM_NOT_ZERO_4001622 = 4001622,
    
    /* 订单中itemId不存在 */
    PoCApiCode_ORDER_ITEM_NOT_EXISTS_4001623 = 4001623,
    
    /* 订单中spu不存在 */
    PoCApiCode_ORDER_SPU_NOT_EXISTS_4001624 = 4001624,
    
    /* 订单中商品的其他关联信息缺失 */
    PoCApiCode_ORDER_PRODUCT_LACK_ATTR_4001625 = 4001625,
    
    /* 订单收货地址发生变化 */
    PoCApiCode_ORDER_ADDRESS_CHANGED_4001626 = 4001626,
    
    /* 订单价格过低 */
    PoCApiCode_ORDER_PRICE_TOO_LOW_4001627 = 4001627,
    
    /* 订单地址无法编辑修改 */
    PoCApiCode_ORDER_ADDRESS_CANNOT_EDIT_4001628 = 4001628,
    
    /* 订单被控制为不能审核通过 */
    PoCApiCode_ORDER_CONTROL_CANNOT_AUDIT_4001629 = 4001629,
    
    /* 收货人信息不存在 */
    PoCApiCode_USER_ADDRESSINFO_NOT_EXISTS_4001630 = 4001630,
    
    /* 买家收货地址缺少必要信息：国家,省,市,详细地址 */
    PoCApiCode_USER_ADDRESSINFO_LACK_ATTR_4001631 = 4001631,
    
    /* 从子订单获取包裹信息失败 */
    PoCApiCode_GET_SUBORDER_FROM_BUYER_ERROR_4001640 = 4001640,
    
    /* 积分使用失败 */
    PoCApiCode_INTRGAL_USE_ERROR_4001641 = 4001641,
    
    /* 商品货源地信息不能为空 */
    PoCApiCode_GET_SPUINFO_FROMCOUNTRY_IS_NULL_4001650 = 4001650,
    
    /* 缓存失效，请重新刷新页面 */
    PoCApiCode_CACHE_TIME_OUT_4001651 = 4001651,
    
    /* 获取商品海关类目为空 */
    PoCApiCode_GET_SPUINFO_CATEGORIES_IS_NULL_4001660 = 4001660,
    
    /* 满足查询条件的订单不存在 */
    PoCApiCode_ORDER_NOT_EXIST_4001700 = 4001700,
    
    /* 满足查询条件的用户子订单不存在 */
    PoCApiCode_USER_SUB_ORDER_NOT_EXISTS_4001710 = 4001710,
    
    /* 子订单类型不允许删除 */
    PoCApiCode_SUB_TYPE_CANNOT_REMOVE_4001800 = 4001800,
    
    /* 退款用户和订单用户不匹配 */
    PoCApiCode_ORDER_REFUND_USER_NOT_MATCH_4001900 = 4001900,
    
    /* 开放平台获取用户号失败 */
    PoCApiCode_GET_PoCHT_USER_ERROR_4001901 = 4001901,
    
    /* 退款金额和订单记录退款不匹配 */
    PoCApiCode_ORDER_REFUNDPRICE_NOT_MATCH_4001910 = 4001910,
    
    /* 订单支付状态不是已支付 */
    PoCApiCode_ORDER_PAYSTATUS_NOT_PAYED_4001920 = 4001920,
    
    /* 订单请求退款调用支付系统返回结果空 */
    PoCApiCode_ORDER_REFUND_RETURN_NULL_4001930 = 4001930,
    
    /* 根据收货人id查询不到收货人相关信息 */
    PoCApiCode_ORDER_RECEIVERINFO_NULL_4002110 = 4002110,
    
    /* 订单的收货人身份审核不未过 */
    PoCApiCode_ORDER_RECEIVER_CHECK_FALSE_4002120 = 4002120,
    
    /* 调用订单发物流接口失败 */
    PoCApiCode_ORDER_SEND_LOGISTICS_FAILED_4002130 = 4002130,
    
    /* 子订单获取物流线路信息为空 */
    PoCApiCode_ORDER_GET_LOGISTICS_LINE_NULL_4002200 = 4002200,
    
    /* 购买的多个商品货源地不一致 */
    PoCApiCode_ORDER_STARTPOINT_INCONSISTENT_4002300 = 4002300,
    
    /* 购买的多个商品的商品形态不一致 */
    PoCApiCode_ORDER_PRODUCT_SHAPE_INCONSISTENT_4002400 = 4002400,
    
    /* 购买的商品支付卡类型为空 */
    PoCApiCode_ORDER_PRODUCT_PAYTYPE_NULL_4002500 = 4002500,
    
    /* 购买的商品不在配送范围内 */
    PoCApiCode_ORDER_PRODUCT_NOT_IN_RANGE_4002600 = 4002600,
    
    /* 特惠商品 */
    PoCApiCode_SPECIAL_PRODUCT_4002601 = 4002601,
    
    /* 特惠活动商品 */
    PoCApiCode_SPECIAL_ACTIVITY_4002602 = 4002602,
    
    /* 购买的商品不是上架状态 */
    PoCApiCode_ORDER_PRODUCT_STATUS_NOT_ON_SALE_4002700 = 4002700,
    
    /* 订单所处状态不能运营修改 */
    PoCApiCode_ORDER_STATUS_CANNOT_EDIT_4002800 = 4002800,
    
    /* 运营订单修改，请求修改数据与原有订单数据相比未发生变化 */
    PoCApiCode_ORDER_EDIT_NO_CHANGE_4002900 = 4002900,
    
    /* 活动已经结束 */
    PoCApiCode_ORDER_PROMOTION_ALREADY_OVER_4002901 = 4002901,
    
    /* 当前预售活动，支付定金时间已过，已经不能买了 */
    PoCApiCode_ORDER_PRESELL_PREPAY_ALREADY_OVER_4002902 = 4002902,
    
    /* 请求参数有误 */
    PoCApiCode_ILLEGLE_ARGUMENT_4100600 = 4100600,
    
    /* 请求参数有误 */
    PoCApiCode_LOGISTIC_NO_DUP_4100601 = 4100601,
    
    /* 此订单无法被删除 */
    PoCApiCode_ORDER_CANNOT_DELETE_4100602 = 4100602,
    
    /* 此订单不是已支付状态 */
    PoCApiCode_ORDER_NOT_PAYED_4100603 = 4100603,
    
    /* 订单申请退款错误 */
    PoCApiCode_ORDER_REFUND_ERROR_4100604 = 4100604,
    
    /* 商户不允许发起退款 */
    PoCApiCode_PARTNER_CANNOT_REFUND_4100605 = 4100605,
    
    /* 订单更新错误 */
    PoCApiCode_ORDER_UPDATE_FAILED_4100700 = 4100700,
    
    /* 订单取消用户和订单用户不匹配 */
    PoCApiCode_ORDER_CANCEL_USER_NOT_MATCH_4100800 = 4100800,
    
    /* 获取物流路线信息失败 */
    PoCApiCode_ERROR_GET_LINE_INFO_4100900 = 4100900,
    
    /* 优惠券使用失败！ */
    PoCApiCode_COUPON_USER_ERROR_4100901 = 4100901,
    
    /* 优惠券不在可使用的时间范围内！ */
    PoCApiCode_COUPON_TIME_ERROR_4100902 = 4100902,
    
    /* 优惠券不能在该渠道下使用！ */
    PoCApiCode_COUPON_CHANNEL_ERROR_4100903 = 4100903,
    
    /* 优惠券不能在该终端下使用！ */
    PoCApiCode_COUPON_APPLICATION_ERROR_4100904 = 4100904,
    
    /* 使用的优惠券不满足满减条件！ */
    PoCApiCode_COUPON_REDUCE_ERROR_4100905 = 4100905,
    
    /* 使用的优惠券金额超过商品总金额的30%！ */
    PoCApiCode_COUPON_AMOUNT_ERROR_4100906 = 4100906,
    
    /* 通知商户状态变更失败! */
    PoCApiCode_NOTIFY_MERCHANT_ERROR_4100907 = 4100907,
    
    /* 商户订单号已存在！ */
    PoCApiCode_MERCHANT_ORDER_NO_EXISTS_4100908 = 4100908,
    
    /* 商户退款金额不正确！ */
    PoCApiCode_MERCHANT_REFUND_PRICE_NOT_CORRECT_4100909 = 4100909,
    
    /* 商品id不存在 */
    PoCApiCode_PRODUCT_ID_NOT_EXISTS_4100910 = 4100910,
    
    /* 商户订单号不存在! */
    PoCApiCode_MERCHANT_ORDER_NO_NOT_EXISTS_4100911 = 4100911,
    
    /* 商品id不存在 */
    PoCApiCode_PRODUCT_ID_NOT_EXISTS_4100912 = 4100912,
    
    /* 订单包裹重复申请取消 */
    PoCApiCode_ORDER_PACKAGE_MULTI_CANCEL_4100913 = 4100913,
    
    /* 订单包裹状态不允许取消 */
    PoCApiCode_ORDER_PACKAGE_STATUS_CANT_CANCEL_4100914 = 4100914,
    
    /* 订单地址信息不存在 */
    PoCApiCode_ORDER_ADDRESS_NOT_EXISTS_4101000 = 4101000,
    
    /* 订单已经取消 */
    PoCApiCode_ORDER_ALREADY_CANCELED_4101100 = 4101100,
    
    /* 订单取消失败 */
    PoCApiCode_ORDER_CANCEL_FAILED_4101200 = 4101200,
    
    /* 订单支付状态更新失败 */
    PoCApiCode_ORDER_PAYMENT_FAILED_4101300 = 4101300,
    
    /* 订单商品快照不存在 */
    PoCApiCode_ORDER_GOODS_NOT_EXISTS_4101400 = 4101400,
    
    /* 参数错误 */
    PoCApiCode_PARAMETER_ERROR_5000000 = 5000000,
    
    /* 该商品不存在 */
    PoCApiCode_SKU_FOUND_ERROR_5000100 = 5000100,
    
    /* 该商品不存在 */
    PoCApiCode_ITEM_DATA_ERROR_5000101 = 5000101,
    
    /* 快照未找到 */
    PoCApiCode_SKUSNAPSHOT_FOUND_ERROR_5000200 = 5000200,
    
    /* 创建快照错误 */
    PoCApiCode_CREATE_SNAPSHOT_ERROR_5000300 = 5000300,
    
    /* 类目未发现 */
    PoCApiCode_CATEGORY_FOUND_ERROR_5000400 = 5000400,
    
    /* SPU未发现 */
    PoCApiCode_SPU_FOUND_ERROR_5000500 = 5000500,
    
    /* 业务内部错误 */
    PoCApiCode_BUSINESS_INTERNAL_ERROR_5000600 = 5000600,
    
    /* 该商品不存在 */
    PoCApiCode_SKU_SALE_RELATION_FOUND_ERROR_5000700 = 5000700,
    
    /* 价格API错误 */
    PoCApiCode_PRICE_FOUND_ERROR_5000800 = 5000800,
    
    /* 创建或更新SPU错误 */
    PoCApiCode_SPU_SAVE_OR_UPDATE_ERROR_5000900 = 5000900,
    
    /* 获取推荐商品列表错误 */
    PoCApiCode_RECOMMEND_PRODUCT_FOUND_ERROR_5001000 = 5001000,
    
    /* 库存更新或者获取失败 */
    PoCApiCode_UPDATE_STOCK_ERROR_5001100 = 5001100,
    
    /* SKU更新或者获取失败 */
    PoCApiCode_SAVE_OR_UPDATE_SKU_ERROR_5001200 = 5001200,
    
    /* 属性更新或者获取失败 */
    PoCApiCode_SAVE_OR_UPDATE_ATTRIBUTE_ERROR_5001300 = 5001300,
    
    /* 品牌更新或者获取失败 */
    PoCApiCode_SAVE_OR_UPDATE_BRAND_ERROR_5001400 = 5001400,
    
    /* Sale保存或者更新失败 */
    PoCApiCode_SAVE_OR_UPDATE_SALE_ERROR_5001500 = 5001500,
    
    /* 图片标签保存或者更新失败 */
    PoCApiCode_SAVE_OR_UPDATE_IMGTAG_ERROR_5001501 = 5001501,
    
    /* 获取属性信息失败 */
    PoCApiCode_FIND_ATTRIBUTE_INFO_ERROR_5001600 = 5001600,
    
    /* 获取品牌信息错误 */
    PoCApiCode_FIND_BRAND_INFO_ERROR_5001700 = 5001700,
    
    /* 校验是否收藏该品牌失败 */
    PoCApiCode_VERIFY_IS_WATCH_BRAND_ERROR_5001701 = 5001701,
    
    /* 重复收藏品牌 */
    PoCApiCode_REPEAT_WATCHING_BRANDS_5001702 = 5001702,
    
    /* 收藏品牌失败! */
    PoCApiCode_SAVE_WATCHING_BRAND_ERROR_5001703 = 5001703,
    
    /* 取消已收藏的品牌失败! */
    PoCApiCode_CANCEL_WATCHING_BRAND_ERROR_5001704 = 5001704,
    
    /* 获取收藏品牌列表失败! */
    PoCApiCode_FIND_COLLECTED_BRAND_LIST_ERROR_5001705 = 5001705,
    
    /* 获取品牌基本信息错误 */
    PoCApiCode_FIND_BRAND_BASE_INFO_ERROR_5001706 = 5001706,
    
    /* 获取所有品牌列表失败! */
    PoCApiCode_FIND_ALL_BRAND_LIST_ERROR_5001707 = 5001707,
    
    /* 获取su信息失败 */
    PoCApiCode_FIND_SALE_INFO_ERROR_5001800 = 5001800,
    
    /* 获取渠道库存失败 */
    PoCApiCode_FIND_CHANNEL_STOCK_ERROR_5001900 = 5001900,
    
    /* 到货通知存储信息失败 */
    PoCApiCode_STORE_MOBILE_PHONE_ERROR_5002000 = 5002000,
    
    /* 国家更新或者获取失败 */
    PoCApiCode_SAVE_OR_UPDATE_NATION_ERROR_5002100 = 5002100,
    
    /* 后台类目更新或者获取失败 */
    PoCApiCode_SAVE_OR_UPDATE_CATEGORY_ERROR_5002200 = 5002200,
    
    /* 前台类目更新或者获取失败 */
    PoCApiCode_SAVE_OR_UPDATE_CATE_PAGE_ERROR_5002400 = 5002400,
    
    /* Item前台类目关系添加失败 */
    PoCApiCode_CATEGORY_PAGE_ITEMS_ERROR_5002401 = 5002401,
    
    /* 删除Item的前台类目关系失败 */
    PoCApiCode_DELETE_CATEGORY_PAGE_BY_ITEMID_ERROR_5002402 = 5002402,
    
    /* 前台类目删除失败 */
    PoCApiCode_DEL_CATE_PAGE_ERROR_5002600 = 5002600,
    
    /* 发送短信通知失败 */
    PoCApiCode_SEND_MSG_ERROR_5003000 = 5003000,
    
    /* 反馈信息存储失败 */
    PoCApiCode_STORE_FEED_BACK_ERROR_5004000 = 5004000,
    
    /* 校验售卖范围失败 */
    PoCApiCode_VERIFY_AREA_ERROR_5005000 = 5005000,
    
    /* 获取邮政编码失败 */
    PoCApiCode_FIND_POST_ERROR_5006000 = 5006000,
    
    /* 获取乐观锁失败 */
    PoCApiCode_GET_LOCK_ERROR_5007000 = 5007000,
    
    /* 触发分布式事务幂等性 */
    PoCApiCode_TRIGGER_DISTRIBUTED_AFFAIRS_ERROR_5008000 = 5008000,
    
    /* SKU的渠道发生了变动 */
    PoCApiCode_SINGLE_LOSS_CHANNEL_CHANGE_ERROR_5010000 = 5010000,
    
    /* 库存不足 */
    PoCApiCode_NO_ENOUGH_STOCK_ERROR_5011000 = 5011000,
    
    /* 添加活动错误 */
    PoCApiCode_ADD_ACTIVITY_ERROR_5012000 = 5012000,
    
    /* 移除活动中的ITEM列表错误 */
    PoCApiCode_REMOVE_ITEMLIST_IN_ACTIVITY_ERROR_5013000 = 5013000,
    
    /* 删除整个活动错误 */
    PoCApiCode_DELETE_WHOLE_ACTIVITY_ERROR_5014000 = 5014000,
    
    /* 更新活动信息错误 */
    PoCApiCode_UPDATE_ACTIVITY_INFO_ERROR_5015000 = 5015000,
    
    /* 添加活动库存错误 */
    PoCApiCode_ADD_ACTIVITY_STOCK_ERROR_5016000 = 5016000,
    
    /* 减少活动库存错误 */
    PoCApiCode_DECR_ACTIVITY_STOCK_ERROR_5018000 = 5018000,
    
    /* 获取活动信息失败 */
    PoCApiCode_FIND_ACTIVITY_INFO_ERROR_5019000 = 5019000,
    
    /* 获取活动信息失败 */
    PoCApiCode_SET_ITEM_PREFERENTIAL_ERROR_5020000 = 5020000,
    
    /* 创建歌单或歌曲失败 */
    PoCApiCode_SAVE_SONG_ERROR_5021000 = 5021000,
    
    /* 批量导入SKU错误 */
    PoCApiCode_IMPORT_SKU_BATCH_ERROR_5022000 = 5022000,
    
    /* 店铺不存在 */
    PoCApiCode_SHOP_DOES_NOT_EXIST_5023000 = 5023000,
    
    /* 销售库存不足 */
    PoCApiCode_SALES_STOCK_NOT_ENOUGH_5024000 = 5024000,
    
    /* 获取搭配折扣数据错误 */
    PoCApiCode_MIX_DISCOUNT_PRODUCT_FOUND_ERROR_5025000 = 5025000,
    
    /* 暂不支持此类型活动! */
    PoCApiCode_ACTIVITY_TYPE_NOT_BE_SUPPORTED_5026000 = 5026000,
    
    /* 更新库存时超时 */
    PoCApiCode_UPDATE_STOCK_EXPORT_TIMEOUT_5027000 = 5027000,
    
    /* 批量更新价格失败 */
    PoCApiCode_BATCH_UPDATE_PRICE_FAILURE_5028000 = 5028000,
    
    /* 获取前台类目数据错误 */
    PoCApiCode_FIND_CATEPAGE_ERROR_5029000 = 5029000,
    
    /* 添加SKU至SU下失败 */
    PoCApiCode_ADD_SKU_INTO_SU_FAILURE_5030000 = 5030000,
    
    /* 重新聚合sale的规格属性失败 */
    PoCApiCode_RELOAD_SALE_ATTRIBUTE_FAILURE_5031000 = 5031000,
    
    /* The channel stock of the sku doesn't exist! */
    PoCApiCode_CHANNEL_STOCK_NOT_EXIST_5032000 = 5032000,
    
    /* 降价通知订阅失败 */
    PoCApiCode_SUBSCRIBE_PRICE_NOTICE_ERROR_5033000 = 5033000,
    
    /* ITEM配额更新失败 */
    PoCApiCode_QUOTA_UPDATE_ERROR_5034000 = 5034000,
    
    /* 恢复ITEM正常销售失败 */
    PoCApiCode_RECOVERY_ITEM_ON_SALE_FAILURE_5035000 = 5035000,
    
    /* 该水印不存在 */
    PoCApiCode_WATERMARK_NOT_EXIST_5036000 = 5036000,
    
    /* 该ITEM不存在 */
    PoCApiCode_ITEM_NOT_EXIST_5037000 = 5037000,
    
    /* 重复收藏商品 */
    PoCApiCode_REPEAT_COLLECTING_GOODS_5038000 = 5038000,
    
    /* 校验是否收藏该商品失败! */
    PoCApiCode_VERIFY_IS_COLLECTED_GOODS_ERROR_5039000 = 5039000,
    
    /* 收藏商品失败! */
    PoCApiCode_SAVE_COLLECTING_GOODS_ERROR_5040000 = 5040000,
    
    /* 取消已收藏的商品失败! */
    PoCApiCode_CANCEL_COLLECTED_GOODS_ERROR_5041000 = 5041000,
    
    /* 获取收藏商品列表失败! */
    PoCApiCode_FIND_COLLECTED_GOODS_LIST_ERROR_5042000 = 5042000,
    
    /* 活动不存在! */
    PoCApiCode_ACTIVITY_NOT_EXIST_5043000 = 5043000,
    
    /* 存在重复的活动ID! */
    PoCApiCode_REPEAT_ACTIVITY_5044000 = 5044000,
    
    /* 搭配折扣的主ITEM不存在! */
    PoCApiCode_MASTER_ITEM_NOT_EXIST_5045000 = 5045000,
    
    /* 接口重复调用! */
    PoCApiCode_INTERFACE_REPEAT_CALL_5046000 = 5046000,
    
    /* 仓库不存在! */
    PoCApiCode_WAREHOUSE_NOT_EXIST_5047000 = 5047000,
    
    /* 查询缓存信息错误! */
    PoCApiCode_QUERY_CACHE_INFO_ERROR_5048000 = 5048000,
    
    /* 线程中断异常! */
    PoCApiCode_THREAD_INTERRUPTED_EXCEPTION_5049000 = 5049000,
    
    /* 获取子线程执行结果失败! */
    PoCApiCode_THREAD_EXECUTION_EXCEPTION_5050000 = 5050000,
    
    /* 标签管理参数不合法! */
    PoCApiCode_TAG_CRUD_PARAMS_ILLEGAL_5051000 = 5051000,
    
    /* 标签结束时间已过期! */
    PoCApiCode_TAG_END_TIME_EXPIRED_5052000 = 5052000,
    
    /* 商品主图不存在! */
    PoCApiCode_TAG_ITEM_MAIN_IMAGE_EMPTY_5053000 = 5053000,
    
    /* 新增或修改标签异常! */
    PoCApiCode_TAG_SAVE_OR_UPDATE_ERROR_5054000 = 5054000,
    
    /* 标签有效时间冲突! */
    PoCApiCode_TAG_TIME_CONFLICT_ERROR_5055000 = 5055000,
    
    /* 生成图片标签失败! */
    PoCApiCode_TAG_GENERATE_IMAGE_TAG_ERROR_5056000 = 5056000,
    
    /* 加密异常! */
    PoCApiCode_SECURITY_ENCRYPT_ERROR_5057000 = 5057000,
    
    /* 解密异常! */
    PoCApiCode_SECURITY_DECRYPT_ERROR_5058000 = 5058000,
    
    /* 解密内容违法! */
    PoCApiCode_SECURITY_DECRYPT_CONTENT_INVALID_5059000 = 5059000,
    
    /* 高返利商品添加异常! */
    PoCApiCode_REBATE_ITEM_INSERT_INVALID_5060000 = 5060000,
    
    /* 高返利商品导入日志添加异常! */
    PoCApiCode_REBATE_ITEM_IMPORT_LOG_INSERT_INVALID_5061000 = 5061000,
    
    /* 高返利商品已参加活动! */
    PoCApiCode_REBATE_ITEM_ALREADY_IN_ACTIVITY_5062000 = 5062000,
    
    /* 高返利商品不能修改价格! */
    PoCApiCode_REBATE_ITEM_UPDATE_PRICE_INVALID_5063000 = 5063000,
    
    /* 高返利商品不能参加活动! */
    PoCApiCode_REBATE_ITEM_JOIN_ACTIVITY_INVALID_5064000 = 5064000,
    
    /* 高返利商品的价格不等于当前售价! */
    PoCApiCode_REBATE_ITEM_PRICE_NOT_EQUAL_INVALID_5065000 = 5065000,
    
    /* 内部异常 */
    PoCApiCode_B2CMALL_INTERNAL_ERROR_9000001 = 9000001,
    
    /* 参数错误 */
    PoCApiCode_B2CMALL_PARAMTER_ERROR_9000002 = 9000002,
    
    /* 商品服务异常 */
    PoCApiCode_PRODUCT_SERVICE_ERROR_9000003 = 9000003,
    
    /* 该商品不存在 */
    PoCApiCode_PRODUCT_DATA_ERROR_9000004 = 9000004,
    
    /* url不合法 */
    PoCApiCode_PAGEURL_ILLEGAL_9000005 = 9000005,
    
    /* 该商品不存在 */
    PoCApiCode_SKU_NOT_FOUND_9000200 = 9000200,
    
    /* 该商品不存在 */
    PoCApiCode_ITEM_NOT_FOUND_9000210 = 9000210,
    
    /* 未知的专题 */
    PoCApiCode_TOPIC_NOT_FOUND_9000300 = 9000300,
    
    /* 访问专题类型不匹配 */
    PoCApiCode_TOPIC_TYPE_NOT_MATCH_9000303 = 9000303,
    
    /* 内部异常 */
    PoCApiCode_VENDER_INTERNAL_ERROR_10000001 = 10000001,
    
    /* 参数错误 */
    PoCApiCode_VENDER_PARAMTER_ERROR_10000002 = 10000002,
    
    /* 调用商品接口失败 */
    PoCApiCode_PRODUCT_SERVICE_ERROR_10000003 = 10000003,
    
    /* 未知的sku */
    PoCApiCode_SKU_NOT_FOUND_10000004 = 10000004,
    
    /* 未知的item */
    PoCApiCode_ITEM_NOT_FOUND_10000005 = 10000005,
    
    /* VENDER page config异常 */
    PoCApiCode_VENDER_PAGECONFIG_ERROR_10000006 = 10000006,
    
    /* VENDER未知page */
    PoCApiCode_VENDER_UNKOWNPAGE_10000007 = 10000007,
    
    /* VENDER topicId对应的专题不存在 */
    PoCApiCode_VENDER_UNKOWNTOPIC_10000008 = 10000008,
    
    /* VENDER page已被其他在线专题使用，请先下线原专题或当前专题 */
    PoCApiCode_VENDER_PAGE_USED_10000009 = 10000009,
    
    /* VENDER 专题未绑定任何page */
    PoCApiCode_VENDER_TOPIC_PAGE_EMPTY_10000010 = 10000010,
    
    /* 页面名称已被使用 */
    PoCApiCode_VENDER_PAGENAME_EXISTS_10000011 = 10000011,
    
    /* VENDER 数据已变更 */
    PoCApiCode_VENDER_DATA_VERSION_DISMATCH_10000012 = 10000012,
    
    /* 数据量超过上限 */
    PoCApiCode_VENDER_DATA_SIZE_TOO_LARGE_10000013 = 10000013,
    
    /* 链接不合法 */
    PoCApiCode_VENDER_ILLEGAL_LINK_10000014 = 10000014,
    
    /* 类目未发现 */
    PoCApiCode_CATEGORY_FOUND_ERROR_10000015 = 10000015,
    
    /* 服务端异常 */
    PoCApiCode_SERVER_ERROR_11000010 = 11000010,
    
    /* 卡券id不存在 */
    PoCApiCode_CARD_NOT_EXIST_11000020 = 11000020,
    
    /* 卡券已作废 */
    PoCApiCode_CARD_CANCELED_11000030 = 11000030,
    
    /* 目前不再卡券发放有效期内 */
    PoCApiCode_CARD_NOT_VALID_11000040 = 11000040,
    
    /* 卡券已领完 */
    PoCApiCode_CARD_NOT_ENOUGH_11000050 = 11000050,
    
    /* 参数错误 */
    PoCApiCode_PARAMETER_ERROR_11000060 = 11000060,
    
    /* 优惠券已使用 */
    PoCApiCode_COUPON_USED_11000070 = 11000070,
    
    /* 优惠券不存在 */
    PoCApiCode_COUPON_NOT_EXIST_11000080 = 11000080,
    
    /* 优惠券不能使用 */
    PoCApiCode_COUPON_CAN_NOT_COST_11000090 = 11000090,
    
    /* 用户已领过该券 */
    PoCApiCode_USER_HAS_RECEIVED_11000100 = 11000100,
    
    /* 批量发放用户数达上限 */
    PoCApiCode_USER_CNT_TOO_LARGE_11000101 = 11000101,
    
    /* 优惠券不再有效期内 */
    PoCApiCode_COUPON_NOT_VALID_11000120 = 11000120,
    
    /* 卡包不存在 */
    PoCApiCode_CARD_BAG_NOT_EXIST_11000130 = 11000130,
    
    /* 卡包已作废 */
    PoCApiCode_CARD_BAG_CANCELED_11000140 = 11000140,
    
    /* 卡券已经属于别的卡包 */
    PoCApiCode_CARD_HAS_BEEN_OWNED_11000150 = 11000150,
    
    /* 优惠码不存在 */
    PoCApiCode_CODE_NOT_EXIST_11000160 = 11000160,
    
    /* 优惠码已兑换 */
    PoCApiCode_CODE_USED_11000170 = 11000170,
    
    /* 卡券数目不匹配 */
    PoCApiCode_CARD_NUM_MISMATCH_11000180 = 11000180,
    
    /* 卡券类型和礼包类型不匹配 */
    PoCApiCode_CARDTYPE_BAGTYPE_MISMATCH_11000190 = 11000190,
    
    /* 优惠码已过期 */
    PoCApiCode_CODE_EXPIRED_11000200 = 11000200,
    
    /* 共用card不存在 */
    PoCApiCode_PUB_CARD_NOT_EXIST_11000209 = 11000209,
    
    /* 临时Token已过期 */
    PoCApiCode_TEMPTOKEN_EXPIRED_11000210 = 11000210,
    
    /* 本账户兑换次数超出限制 */
    PoCApiCode_USER_EXCHANGE_TOO_MORE_11000220 = 11000220,
    
    /* 用户是黑名单用户，不参与活动 */
    PoCApiCode_USER_IN_BLACKLIST_11000230 = 11000230,
    
    /* 用户今天的券已经领完了 */
    PoCApiCode_USER_HAS_RECEIVED_DAYALL_11000240 = 11000240,
    
    /* 用户已经领完该活动期间所有的券 */
    PoCApiCode_USER_HAS_RECEIVED_PROALL_11000250 = 11000250,
    
    /* 用户输入手机号有误 */
    PoCApiCode_USER_MOBILE_ERROR_11000260 = 11000260,
    
    /* 该终端不支持兑换 */
    PoCApiCode_EX_TERMINAL_NOT_SUPPORT_11000270 = 11000270,
    
    /* 该券只有新用户可领取，您已不是新用户 */
    PoCApiCode_USER_NOT_NEW_11000280 = 11000280,
    
    /* 亲，非常抱歉，该礼包为用户专属礼包 */
    PoCApiCode_COUPON_ONLYFORUSER_11000290 = 11000290,
    
    /* 非常抱歉，您不属于生活卡新用户，不能兑换该礼包 */
    PoCApiCode_COUPON_NOTFORTHISUSER_11000300 = 11000300,
    
    /* 抱歉 每台手机只能兑换一次新用户专享礼包哟 */
    PoCApiCode_COUPON_DEVICE_RCVTOOMORE_11000310 = 11000310,
    
    /* 该兑换码拒绝兑换 */
    PoCApiCode_COUPON_DITUI_BLK_11000320 = 11000320,
    
    /* 抱歉，活动尚未开始~ */
    PoCApiCode_COUPON_DITUI_PRONOSTART_11000330 = 11000330,
    
    /* 活动不存在或已结束 */
    PoCApiCode_PRO_NOT_EXIST_11000340 = 11000340,
    
    /* 膨胀卡券已满额 */
    PoCApiCode_EXPANDIONCOUPON_FULFILLED_11000350 = 11000350,
    
    /* 该手机号账户已经领取过，请换个账户尝试 */
    PoCApiCode_MOBILE_HAS_RECEIVED_11000360 = 11000360,
    
    /* 未找到用户 */
    PoCApiCode_USER_SERVICE_USER_NOT_FOUND_12000001 = 12000001,
    
    /* 活动不存在 */
    PoCApiCode_PROMOTION_NOT_EXIST_12000002 = 12000002,
    
    /* 活动状态非进行中 */
    PoCApiCode_PROMOTION_NOT_IN_USE_12000003 = 12000003,
    
    /* 活动状态非暂停中 */
    PoCApiCode_PROMOTION_NOT_SUSPEND_12000004 = 12000004,
    
    /* 服务器错误 */
    PoCApiCode_PROMOTION_SERVICE_ERROR_12000005 = 12000005,
    
    /* 活动时间错误 */
    PoCApiCode_PROMOTION_DATE_ERROR_12000006 = 12000006,
    
    /* 礼物不存在 */
    PoCApiCode_PROMOTIONP_RIZE_ERROR_12000007 = 12000007,
    
    /* 活动状态不可关闭 */
    PoCApiCode_PROMOTIONP_NOT_CLOSED_12000008 = 12000008,
    
    /* DO转换成DIAMOND错误 */
    PoCApiCode_PROMOTION_2_DIAMOND_ERROR_12000009 = 12000009,
    
    /* DIAMOND更新错误 */
    PoCApiCode_DIAMOND_UPDATE_ERROR_12000010 = 12000010,
    
    /* 全场活动不支持单个商品 */
    PoCApiCode_SCOPE_ALL_NOT_NEED_ITEM_12000011 = 12000011,
    
    /* 同一时间商品错误出现在不能同时存在的两个活动中 */
    PoCApiCode_SAME_TIME_ERROR_12000012 = 12000012,
    
    /* 活动已结束 */
    PoCApiCode_PROMOTION_ENDED_12000013 = 12000013,
    
    /* 黑名单商品活动不应该有库存 */
    PoCApiCode_PROMOTION_NOT_ITEM_NEED_STOCK_12000014 = 12000014,
    
    /* 账户已注册 */
    PoCApiCode_USER_SERVICE_USER_EXISTED_12000020 = 12000020,
    
    /* 活动未知错误 */
    PoCApiCode_UNKNOW_ERROR_12000021 = 12000021,
    
    /* 用户名or密码错误 */
    PoCApiCode_USER_SERVICE_USERNAME_OR_PASSWORD_ERROR_12000030 = 12000030,
    
    /* 原密码错误 */
    PoCApiCode_USER_SERVICE_PASSWORD_ERROR_12000040 = 12000040,
    
    /* 邮箱地址错误 */
    PoCApiCode_USER_SERVICE_MAILID_ERROR_12000050 = 12000050,
    
    /* 密码与原密码相同 */
    PoCApiCode_USER_SERVICE_SAME_PASSWORD_ERROR_12000060 = 12000060,
    
    /* 参数错误 */
    PoCApiCode_USER_SERVICE_PARAMETER_ERROR_12000070 = 12000070,
    
    /* 服务端错误 */
    PoCApiCode_USER_SERVICE_SERVER_ERROR_12000080 = 12000080,
    
    /* 邀请码错误 */
    PoCApiCode_USER_SERVICE_INVITECODE_ERROR_12000090 = 12000090,
    
    /* 验证码错误 */
    PoCApiCode_USER_SERVICE_VERIFYCODE_ERROR_12000100 = 12000100,
    
    /* 账户尚未激活 */
    PoCApiCode_USER_SERVICE_USER_NOT_ACTIVATED_12000110 = 12000110,
    
    /* 链接已过期 */
    PoCApiCode_USER_SERVICE_LINK_EXPIRED_12000120 = 12000120,
    
    /* 签名验证失败 */
    PoCApiCode_USER_SERVICE_SIGN_ERROR_12000130 = 12000130,
    
    /* 密码修改间隔太短 */
    PoCApiCode_PASSWORD_UPDATE_INTERVAL_SHORT_12000140 = 12000140,
    
    /* 密码长度错误 */
    PoCApiCode_USER_SERVICE_PASSWORD_LENGTH_ERROR_12000150 = 12000150,
    
    /* 财务系统内部异常 */
    PoCApiCode_FINANCE_INNER_ERROR_12100000 = 12100000,
    
    /* 并发操作异常 */
    PoCApiCode_CONCURRENT_ERROR_12100001 = 12100001,
    
    /* 该订单已提交过退税申请 */
    PoCApiCode_REFUND_TAX_EXISTS_12110000 = 12110000,
    
    /* 该缴税凭证编号已被使用 */
    PoCApiCode_TAX_PAYMENT_NO_EXISTS_12110001 = 12110001,
    
    /* 该退税申请不存在 */
    PoCApiCode_REFUND_TAX_NOT_EXISTS_12110002 = 12110002,
    
    /* 调用支付接口失败 */
    PoCApiCode_CALL_PAYMENT_FAIL_12110003 = 12110003,
    
    /* 商品类目佣金点配置不存在 */
    PoCApiCode_MERCHANT_CATEGORY_COMMISSION_NOT_EXISTS_12110004 = 12110004,
    
    /* 商品类目佣金点配置已存在 */
    PoCApiCode_MERCHANT_CATEGORY_COMMISSION_ALREADY_EXISTS_12110005 = 12110005,
    
    /* 商家配置已存在 */
    PoCApiCode_MERCHANT_CONFIG_ALREADY_EXISTS_12110006 = 12110006,
    
    /* 商家配置不存在 */
    PoCApiCode_MERCHANT_CONFIG_NOT_EXISTS_12110007 = 12110007,
    
    /* 退税申请，未找到已出库且发ETK的运单号 */
    PoCApiCode_REFUNDTAX_MAILNO_NOT_EXISTS_12110008 = 12110008,
    
    /* 该运单号存在待审批/审核中/退款完成的退税单，不允许重复申请 */
    PoCApiCode_REFUNDTAX_MAILNO_EXISTS_12110009 = 12110009,
    
    /* 结算服务内部异常 */
    PoCApiCode_SETTLE_SERVICE_INTL_ERROR_13000001 = 13000001,
    
    /* 上级scm不合法 */
    PoCApiCode_TOP_CP_SUBJECT_URL_ILLEGAL_13000002 = 13000002,
    
    /* 二级scm点的父级为空 */
    PoCApiCode_FATHER_SCM_IS_NULL_13000003 = 13000003,
    
    /* 服务器错误 */
    PoCApiCode_PROMOTION_SERVICE_ERROR_13000005 = 13000005,
    
    /* 获取发现主题首页数据错误 */
    PoCApiCode_FIND_THEME_BASE_INFO_ERROR_13001000 = 13001000,
    
    /* 判断发现主题是否我的喜欢失败 */
    PoCApiCode_VERIFY_IS_MY_LOVE_ERROR_13002000 = 13002000,
    
    /* 收藏我喜欢的发现主题失败 */
    PoCApiCode_SAVE_MY_LOVE_ERROR_13003000 = 13003000,
    
    /* 取消我喜欢的发现主题失败 */
    PoCApiCode_CANCEL_MY_LOVE_ERROR_13004000 = 13004000,
    
    /* 获取发现详情页失败 */
    PoCApiCode_FIND_THEME_DETAIL_ERROR_13005000 = 13005000,
    
    /* 保存我想要某个商品记录失败 */
    PoCApiCode_SAVE_MY_WANT_ERROR_13006000 = 13006000,
    
    /* 判断是否想要发现主题提到的商品失败 */
    PoCApiCode_VERIFY_IS_MY_WANT_ERROR_13007000 = 13007000,
    
    /* 创建发现主题失败 */
    PoCApiCode_CREATE_DISCOVERY_THEME_ERROR_13008000 = 13008000,
    
    /* 更新发现主题失败 */
    PoCApiCode_UPDATE_DISCOVERY_THEME_ERROR_13009000 = 13009000,
    
    /* 更新发现主题的状态失败 */
    PoCApiCode_UPDATE_DISCOVERY_THEME_STATUS_ERROR_13010000 = 13010000,
    
    /* 删除发现主题失败 */
    PoCApiCode_DELETE_DISCOVERY_THEME_ERROR_13011000 = 13011000,
    
    /* 更新发现主题的视频或者图片URL失败 */
    PoCApiCode_UPDATE_MEDIA_INFO_ERROR_13012000 = 13012000,
    
    /* 重复收藏我喜欢的发现主题 */
    PoCApiCode_REPEAT_SAVE_MY_LOVE_13013000 = 13013000,
    
    /* 重复保存我想要某个商品记录 */
    PoCApiCode_REPEAT_SAVE_MY_WANT_13014000 = 13014000,
    
    /* 获取主题的标题错误 */
    PoCApiCode_FIND_THEME_TITLE_ERROR_13015000 = 13015000,
    
    /* 创建标签错误 */
    PoCApiCode_CREATE_TAG_ERROR_13016000 = 13016000,
    
    /* 删除标签错误 */
    PoCApiCode_DELETE_TAG_ERROR_13017000 = 13017000,
    
    /* 设置标签可见状态错误 */
    PoCApiCode_SET_TAG_VIEW_STATUS_ERROR_13018000 = 13018000,
    
    /* 举报发现主题异常 */
    PoCApiCode_REPORT_ERROR_13019000 = 13019000,
    
    /* 获取标签数据异常 */
    PoCApiCode_SEARCH_LABEL_ERROR_13020000 = 13020000,
    
    /* 重复举报! */
    PoCApiCode_REPEAT_REPORT_13021000 = 13021000,
    
    /* 设置举报的状态错误! */
    PoCApiCode_SET_REPORT_STATUS_13022000 = 13022000,
    
    /* 主题想买商品数据错误 */
    PoCApiCode_SAVE_THEME_WANTED_PRODUCT_ERROR_13023000 = 13023000,
    
    /* 主题封面数据错误 */
    PoCApiCode_SAVE_THEME_FRONTED_IMG_ERROR_13024000 = 13024000,
    
    /* 保存主题详情数据错误 */
    PoCApiCode_SAVE_THEME_DETAIL_ERROR_13025000 = 13025000,
    
    /* 更新主题详情数据错误 */
    PoCApiCode_UPDATE_THEME_DETAIL_ERROR_13026000 = 13026000,
    
    /* 主题想买移除商品数据错误 */
    PoCApiCode_DELETE_THEME_WANTED_PRODUCT_ERROR_13027000 = 13027000,
    
    /* 获取主题品牌数据错误 */
    PoCApiCode_FIND_THEME_BRAND_ERROR_13028000 = 13028000,
    
    /* 获取主题国家数据错误 */
    PoCApiCode_FIND_THEME_NATION_ERROR_13029000 = 13029000,
    
    /* 获取主题标签数据错误 */
    PoCApiCode_FIND_THEME_LABEL_ERROR_13030000 = 13030000,
    
    /* 获取主题币种数据错误 */
    PoCApiCode_FIND_THEME_CURRENCY_UNIT_ERROR_13031000 = 13031000,
    
    /* 用户发布主题数据错误 */
    PoCApiCode_PUBLISH_MY_THEME_ERROR_13032000 = 13032000,
    
    /* 用户删除主题数据错误 */
    PoCApiCode_DELETE_MY_THEME_ERROR_13033000 = 13033000,
    
    /* 用户查询自己主题数据错误 */
    PoCApiCode_FIND_MY_THEME_ERROR_13034000 = 13034000,
    
    /* 举报主题数据错误 */
    PoCApiCode_REPORT_THEME_ERROR_13035000 = 13035000,
    
    /* 设置主题精选数据错误 */
    PoCApiCode_SET_THEME_SELECTED_ERROR_13036000 = 13036000,
    
    /* 取消主题精选数据错误 */
    PoCApiCode_SET_THEME_NOT_SELECTED_ERROR_13037000 = 13037000,
    
    /* 获取我已经收到的商品tag数据 */
    PoCApiCode_FIND_MY_RECEIVED_PRODUCT_LIST_ERROR_13038000 = 13038000,
    
    /* 红心收藏主题失败 */
    PoCApiCode_SAVE_MY_RED_LOVE_THEME_ERROR_13039000 = 13039000,
    
    /* 判断是否是红心收藏主题失败 */
    PoCApiCode_VERIFY_IS_MY_RED_LOVE_THEME_ERROR_13040000 = 13040000,
    
    /* 获取未读评论信息数据失败 */
    PoCApiCode_VERIFY_UN_READ_COMMENT_ERROR_13050000 = 13050000,
    
    /* 新增未知评论消息 */
    PoCApiCode_NOTIFY_UN_READ_COMMENT_ERROR_13060000 = 13060000,
    
    /* 更新用户已读评论消息 */
    PoCApiCode_UPDATE_READ_COMMENT_ERROR_13070000 = 13070000,
    
    /* 关注用户失败 */
    PoCApiCode_ADD_FOLLOWING_ERROR_13080000 = 13080000,
    
    /* 取消关注失败 */
    PoCApiCode_CANCEL_FOLLOWING_ERROR_13090000 = 13090000,
    
    /* 取消关注失败 */
    PoCApiCode_IS_FOLLOWING_ERROR_13400000 = 13400000,
    
    /* 查看关注列表失败 */
    PoCApiCode_FOLLOWING_LIST_ERROR_13410000 = 13410000,
    
    /* 查看粉丝列表失败 */
    PoCApiCode_FOLLOWER_LIST_ERROR_13420000 = 13420000,
    
    /* 查看个人主页失败 */
    PoCApiCode_USER_DETAIL_ERROR_13430000 = 13430000,
    
    /* 获取发现个人首页数据错误 */
    PoCApiCode_FIND_THEME_TIME_LINE_LIST_ERROR_13440000 = 13440000,
    
    /* 人工干预排名数据 */
    PoCApiCode_SET_USER_RANK_BY_OPERATOR_ERROR_13450000 = 13450000,
    
    /* 热门标签创建错误 */
    PoCApiCode_ADD_HOT_LABEL_ERROR_13460000 = 13460000,
    
    /* 获取有趣推荐列表错误 */
    PoCApiCode_FIND_RECOMMEND_THEME_LIST_BY_TYPE_ERROR_13470000 = 13470000,
    
    /* 趣文推荐创建错误 */
    PoCApiCode_ADD_RECOMMEND_ERROR_13480000 = 13480000,
    
    /* 后台添加用户经验值 */
    PoCApiCode_ADD_USER_EXP_DETAIL_BY_OPERATOR_ERROR_13490000 = 13490000,
    
    /* 获取神评论列表错误 */
    PoCApiCode_FIND_TOP_COMMENT_INFO_ERROR_14000000 = 14000000,
    
    /* 订单服务内部异常 */
    PoCApiCode_ORDER_SERVICE_INTL_ERROR_14000001 = 14000001,
    
    /* 订单服务参数不合法 */
    PoCApiCode_ORDER_SERVICE_PARAM_ILLIGAL_14000002 = 14000002,
    
    /* 获取评论列表错误 */
    PoCApiCode_FIND_COMMON_COMMENT_INFO_ERROR_14001000 = 14001000,
    
    /* 保存点赞数失败 */
    PoCApiCode_SAVE_LIKE_ERROR_14002000 = 14002000,
    
    /* 发表评论失败 */
    PoCApiCode_PUBLISH_COMMENT_ERROR_14003000 = 14003000,
    
    /* 校验是否需要填写昵称失败 */
    PoCApiCode_VERIFY_NEED_WRITE_NICK_NAME_ERROR_14004000 = 14004000,
    
    /* 获取评论回复详情信息失败 */
    PoCApiCode_FIND_REPLY_COMMENT_DETAIL_ERROR_14005000 = 14005000,
    
    /* 回复评论失败 */
    PoCApiCode_REPLY_COMMENT_ERROR_14006000 = 14006000,
    
    /* 获取我发送的评论信息失败 */
    PoCApiCode_FIND_MY_ISSUED_COMMENT_ERROR_14007000 = 14007000,
    
    /* 获取我收到的回复信息失败 */
    PoCApiCode_FIND_RECEIVED_COMMENT_ERROR_14008000 = 14008000,
    
    /* 删除我的评论信息失败 */
    PoCApiCode_DELETE_MY_ISSUED_COMMENT_ERROR_14009000 = 14009000,
    
    /* 获取发现主题的评论数 */
    PoCApiCode_GET_THEME_COMMENT_COUNT_ERROR_14010000 = 14010000,
    
    /* 用户为黑名单 */
    PoCApiCode_USER_IS_BLACKLIST_14011000 = 14011000,
    
    /* 举报异常 */
    PoCApiCode_REPORT_ERROR_14012000 = 14012000,
    
    /* 您发布的评论含有敏感词! */
    PoCApiCode_COMMENT_CONTAIN_SENSITIVE_WORD_14013000 = 14013000,
    
    /* 重复举报! */
    PoCApiCode_REPEAT_REPORT_14014000 = 14014000,
    
    /* 评论不存在! */
    PoCApiCode_NULL_COMMENT_14015000 = 14015000,
    
    /* 获取评价详情错误! */
    PoCApiCode_FIND_COMMENT_INFO_ERROR_14017000 = 14017000,
    
    /* 获取评价标签错误! */
    PoCApiCode_FIND_COMMENT_LABEL_ERROR_14019000 = 14019000,
    
    /* 通过指定类型分页获取评论列表错误! */
    PoCApiCode_FIND_COMMENTLIST_TYPE_ERROR_14021000 = 14021000,
    
    /* 分页获取评论列表错误! */
    PoCApiCode_FIND_COMMENTLIST_ERROR_14023000 = 14023000,
    
    /* 获取评论状态失败 */
    PoCApiCode_FIND_COMMENT_STATUS_ERROR_14025000 = 14025000,
    
    /* 发表订单满意度失败 */
    PoCApiCode_PUSH_SATIPoC_ERROR_14027000 = 14027000,
    
    /* 您发布的评论标签含有敏感词! */
    PoCApiCode_COMMENT_LABEL_CONTAIN_SENSITIVE_WORD_14029000 = 14029000,
    
    /* 缓存操作失败! */
    PoCApiCode_C_CACHE_FAILED_14031000 = 14031000,
    
    /* 审核失败! */
    PoCApiCode_C_VALID_FAILED_14033000 = 14033000,
    
    /* 获取sku_id列表错误! */
    PoCApiCode_FIND_SKU_LIST_ERROR_14034000 = 14034000,
    
    /* 参数错误! */
    PoCApiCode_PARAMETER_ERROR_14035000 = 14035000,
    
    /* 根据item未获取到sku_id! */
    PoCApiCode_CAN_NOT_FIND_SKU_LIST_BY_ITEM_14036000 = 14036000,
    
    /* 后台运营送积分错误 */
    PoCApiCode_BACKEND_COMMENT_SCORE_ERROR_14037000 = 14037000,
    
    /* 根据commentID获取评论信息失败 */
    PoCApiCode_CAN_NOT_FIND_COMMENT_INFO_BY_COMMENT_ID_ERROR_14038000 = 14038000,
    
    /* 状态机内部异常 */
    PoCApiCode_VENDER_STATE_MACHINE_INTERNAL_EXCEPTION_15000001 = 15000001,
    
    /* 供应商状态机内部状态流转异常 */
    PoCApiCode_VENDER_STATE_CHANGE_EXCEPTION_15000002 = 15000002,
    
    /* 供应商状态机状态流转参数不合法，缺少ID */
    PoCApiCode_VENDER_ENGINE_PARAM_ILLAGLE_15000003 = 15000003,
    
    /* 请求参数有误 */
    PoCApiCode_SHOPCART_ILLEGLE_ARGUMENT_15000100 = 15000100,
    
    /* 购物车添加商品失败 */
    PoCApiCode_SHOPCART_ADD_ERROR_15000200 = 15000200,
    
    /* 该商品不支持加入购物车 */
    PoCApiCode_SHOPCART_GOOD_CANNOT_JOIN_15000201 = 15000201,
    
    /* 添加进购物车的商品列表为空 */
    PoCApiCode_SHOPCART_ADD_LIST_EMPTY_15000202 = 15000202,
    
    /* 添加进购物车的商品超过限购 */
    PoCApiCode_SHOPCART_ADD_OVER_LIMIT_15000203 = 15000203,
    
    /* 购物车删除商品失败 */
    PoCApiCode_SHOPCART_REMOVE_ERROR_15000300 = 15000300,
    
    /* 更新购物车内商品数量失败 */
    PoCApiCode_SHOPCART_UPDATENUM_ERROR_15000400 = 15000400,
    
    /* 更新购物车内商品数量超过库存限制 */
    PoCApiCode_SHOPCART_UPDATE_OVER_STOCK_15000401 = 15000401,
    
    /* 购物车获取不到商品系统商品信息 */
    PoCApiCode_SHOPCART_PRODUCT_ITEM_NOT_EXISTS_15000500 = 15000500,
    
    /* 购物车超过金额上限 */
    PoCApiCode_SHOPCART_PRICE_OVER_LIMIT_15000600 = 15000600,
    
    /* 购物车内商品总价费用为0 */
    PoCApiCode_SHOPCART_TO_ORDER_GOODS_EMPTY_15000700 = 15000700,
    
    /* 您的购物车已满 */
    PoCApiCode_SHOPCART_GOODS_NUM_ULTRALIMIT_15000800 = 15000800,
    
    /* 商品不在购物车内 */
    PoCApiCode_SHOPCART_GOOD_NOT_IN_15000900 = 15000900,
    
    /* 购物车获取商品数量失败 */
    PoCApiCode_SHOPCART_GET_TOTALNUM_ERROR_15001000 = 15001000,
    
    /* 购物车刷新商品选中状态失败 */
    PoCApiCode_SHOPCART_REFRESH_ERROR_15001100 = 15001100,
    
    /* 获取购物车信息失败 */
    PoCApiCode_SHOPCART_GET_CART_ERROR_15001200 = 15001200,
    
    /* 优惠金额超过限制 */
    PoCApiCode_SHOPCART_DISCOUNT_OVER_ACTUAL_PRICE_15001300 = 15001300,
    
    /* 库存调整失败 */
    PoCApiCode_STOCK_ADJUST_ERROR_16000001 = 16000001,
    
    /* 上传的Excel文件内容为空 */
    PoCApiCode_STOCK_ADJUST_EXCEL_CONTENT_EMPTY_16000002 = 16000002,
    
    /* 批量调整库存数量超限 */
    PoCApiCode_STOCK_ADJUST_IMPORT_SIZE_OVERRUN_16000003 = 16000003,
    
    /* 丰趣商品编码error */
    PoCApiCode_STOCK_ADJUST_IMPORT_SKUID_ERROR_16000004 = 16000004,
    
    /* 追加库存必须大于0 */
    PoCApiCode_STOCK_ADJUST_IMPORT_ADDSTOCK_ERROR_16000005 = 16000005,
    
    /* 供应链调整库存出错 */
    PoCApiCode_STOCK_ADJUST_IMPORT_ADDSTOCK_LOISTICS_ERROR_16000006 = 16000006,
    
    /* 签到规则配置错误 */
    PoCApiCode_CheckinRuleWrongReturnCode_16000008 = 16000008,
    
    /* 积分不足 */
    PoCApiCode_InsufficientIntegralReturnCode_16000009 = 16000009,
    
    /* 归还积分失败 */
    PoCApiCode_ReturnIntegralForOrderFailedReturnCode_16000011 = 16000011,
    
    /* 没有在线的签到活动 */
    PoCApiCode_NoActiveCheckinReturnCode_16000012 = 16000012,
    
    /* 系统未知异常 */
    PoCApiCode_DuplicateTranscationNoReturnCode_16000014 = 16000014,
    
    /* 系统未知异常 */
    PoCApiCode_UnknownExceptionReturnCode_16000099 = 16000099,
    
    /* 获取用户喜好商品错误 */
    PoCApiCode_FIND_USER_PREFER_ERROR_17000000 = 17000000,
    
    /* 未找到价格调整申请单记录 */
    PoCApiCode_PRICE_ADJUST_REQUISITION_NOT_FOUND_ERROR_17000001 = 17000001,
    
    /* 活动价的生效开始时间必须小于生效结束时间 */
    PoCApiCode_PRICE_ADJUST_REQUISITION_START_GREATER_THAN_END_ERROR_17000002 = 17000002,
    
    /* 存在待审批状态的价格调整申请单记录, 需要先完成该申请单的审批 */
    PoCApiCode_PRICE_ADJUST_REQUISITION_EXIST_WAIT_APPROVE_ERROR_17000003 = 17000003,
    
    /* 存在生效时间段重复的价格调整申请单记录, 请修改生效起止时间 */
    PoCApiCode_PRICE_ADJUST_REQUISITION_EXIST_TIME_PERIOD_OVERLAP_ERROR_17000004 = 17000004,
    
    /* 价格调整申请单的状态不为待审批, 无法操作审批 */
    PoCApiCode_PRICE_ADJUST_REQUISITION_STATE_NOT_WAIT_APPROVE_ERROR_17000005 = 17000005,
    
    /* 已存在相同的价格调整申请记录, 无法操作新增 */
    PoCApiCode_PRICE_ADJUST_REQUISITION_DATA_DUPLICATE_ERROR_17000006 = 17000006,
    
    /* 生效时间必须晚于当天时间 */
    PoCApiCode_PRICE_ADJUST_START_DATA_ERROR_17000007 = 17000007,
    
    /* 上传的excel文件为空 */
    PoCApiCode_PRICE_ADJUST_EXCEL_EMPTY_17000008 = 17000008,
    
    /* 批量调整供货价数量超限 */
    PoCApiCode_PRICE_ADJUST_IMPORT_SIZE_OVERRUN_17000009 = 17000009,
    
    /* 丰趣商品编码error */
    PoCApiCode_PRICE_ADJUST_IMPORT_SKUID_ERROR_17000010 = 17000010,
    
    /* 生效时间必须晚于当前时间 */
    PoCApiCode_PRICE_ADJUST_IMPORT_START_DATE_ERROR_17000011 = 17000011,
    
    /* 供货价调整失败 */
    PoCApiCode_SUPPLY_PRICE_ADJUST_ERROR_17000012 = 17000012,
    
    /* 您已提交过一条供货价修改数据，请联系运营进行审核！ */
    PoCApiCode_SUPPLY_PRICE_ADJUST_REQUISITION_DATA_DUPLICATE_ERROR_17000013 = 17000013,
    
    /* 类目不存在 */
    PoCApiCode_CATEGORY_NOT_EXIST_17001000 = 17001000,
    
    /* 更新TOP N数据失败 */
    PoCApiCode_UPDATE_TOP_N_FAILURE_17002000 = 17002000,
    
    /* 获取基于用户浏览行为的喜好商品错误 */
    PoCApiCode_FIND_USER_PREFER_BASED_ON_CLICK_VIEW_ERROR_17003000 = 17003000,
    
    /* 发货服务内部异常 */
    PoCApiCode_VENDER_DELIVERY_SERVICE_INTL_EXCEPTION_18000001 = 18000001,
    
    /* 获取供应商物流承运商失败 */
    PoCApiCode_VENDER_DELIVERY_SERVICE_GET_CARRIES_ERROR_18000002 = 18000002,
    
    /* 供应商发货服务参数不合法 */
    PoCApiCode_VENDER_DELIVERY_SERVICE_PARAM_ILLEGAL_18000003 = 18000003,
    
    /* 无法查询到此单信息 */
    PoCApiCode_VENDER_DELIVERY_SERVICE_ORDER_NOT_EXIST_18000004 = 18000004,
    
    /* 待出库订单不允许标记为已出库 */
    PoCApiCode_VENDER_DELIVERY_SERVICE_WAIT_STOCKOUT_ORDER_NOT_ALLOW_MARK_STOCKOUT_18000005 = 18000005,
    
    /* 订单已取消，不允许标记为已出库 */
    PoCApiCode_VENDER_DELIVERY_SERVICE_CANCEL_ORDER_NOT_ALLOW_MARK_STOCKOUT_18000006 = 18000006,
    
    /* 订单运单信息不能为空 */
    PoCApiCode_VENDER_DELIVERY_SERVICE_MAIL_NO_IS_EMPTY_18000007 = 18000007,
    
    /* 批量标记订单数量超限 */
    PoCApiCode_VENDER_DELIVERY_MARK_SIZE_OVERRUN_18000008 = 18000008,
    
    /* 只有发货中订单能够设置运单号 */
    PoCApiCode_VENDER_DELIVERY_SET_MAILNO_ONLY_STOCKOUTING_18000009 = 18000009,
    
    /* 保存运单号失败 */
    PoCApiCode_VENDER_DELIVERY_SET_MAILNO_ERROR_18000010 = 18000010,
    
    /* 上传的Excel文件内容为空 */
    PoCApiCode_VENDER_DELIVERY_SERVICE_EXCEL_CONTENT_EMPTY_18000011 = 18000011,
    
    /* 批量导入运单号数量超限 */
    PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_SIZE_OVERRUN_18000012 = 18000012,
    
    /* 订单号为空 */
    PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_ORDERNO_EMPTY_18000013 = 18000013,
    
    /* 运单号为空 */
    PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_MAILNO_EMPTY_18000014 = 18000014,
    
    /* 快递公司为空 */
    PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_CARRIERCODE_EMPTY_18000015 = 18000015,
    
    /* 导入的快递公司与选择的快递公司不一致 */
    PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_CARRIERCODE_DIFFERENT_18000016 = 18000016,
    
    /* 系统未知异常 */
    PoCApiCode_UNKNOWN_EXCEPTION_RETURN_CODE_18000099 = 18000099,
    
    /* 下载服务内部异常 */
    PoCApiCode_VENDER_DOWNLOAD_SERVICE_INTL_EXCEPTION_19000001 = 19000001,
    
    /* 文件类型不合法 */
    PoCApiCode_VENDER_DOWNLOAD_FILETYPE_ILLIGAL_EXCEPTION_19000002 = 19000002,
    
    /* 已经有下载报表的请求正在等待,请等待或者取消正在等待的报表下载请求 */
    PoCApiCode_VENDER_DOWNLOAD_SERVICE_EXIST_WAIT_TASK_19000003 = 19000003,
    
    /* 生成PDF面单异常 */
    PoCApiCode_VENDER_DOWNLOAD_SERVICE_PDF_EXCEPTION_19000004 = 19000004,
    
    /* 订单路线不存在 */
    PoCApiCode_VENDER_DOWNLOAD_SERVICE_LINE_NOT_EXIST_19000005 = 19000005,
    
    /* 参数不合法 */
    PoCApiCode_VENDER_DOWNLOAD_SERVICE_PARAM_ILLEGAL_19000006 = 19000006,
    
    /* 不支持面单下载 */
    PoCApiCode_VENDER_DOWNLOAD_SERVICE_PDF_NOT_SUPPORT_ILLEGAL_19000007 = 19000007,
    
    /* 查询详情内部异常 */
    PoCApiCode_VENDER_SKU_DETAIL_QUERY_EXCEPTION_20000001 = 20000001,
    
    /* 保存详情内部异常 */
    PoCApiCode_VENDER_SKU_DETAIL_SAVE_EXCEPTION_20000002 = 20000002,
    
    /* 提交详情内部异常 */
    PoCApiCode_VENDER_SKU_DETAIL_SUBMIT_EXCEPTION_20000003 = 20000003,
    
    /* 该团参团人数已满 */
    PoCApiCode_GROUP_EXCEED_MAX_COUNT_20000004 = 20000004,
    
    /* 用户超过了最大的参团次数限制 */
    PoCApiCode_USER_EXCEED_MAX_GROUP_COUNT_20000005 = 20000005,
    
    /* 团不存在 */
    PoCApiCode_GROUP_NOT_EXISTS_20000006 = 20000006,
    
    /* 团已结束 */
    PoCApiCode_GROUP_ALREADY_EXPIRED_20000007 = 20000007,
    
    /* 团状态不为组团中 */
    PoCApiCode_GROUP_STATUS_NOT_UNDERWAY_20000008 = 20000008,
    
    /* 商品已售罄 */
    PoCApiCode_ITEM_SOLD_OUT_20000009 = 20000009,
    
    /* 系统异常 */
    PoCApiCode_SYSTEM_ERROR_20000099 = 20000099,
    
    /*  */
    PoCApiCode_STOCK_SERVICE_SALE_COUNT_NOT_ENOUGH_ERROR_20700090 = 20700090,
    
    /*  */
    PoCApiCode_STOCK_SERVICE_SALE_RECORD_NOT_FOUND_ERROR_20700100 = 20700100,
    
    /*  */
    PoCApiCode_STOCK_SERVICE_BATCH_STOCK_LOCK_LOG_EXIST_ERROR_20700180 = 20700180,
    
    /*  */
    PoCApiCode_OPERATE_CONSIGN_STOCK_ERROR_ERROR_20700200 = 20700200,
    
    /*  */
    PoCApiCode_UNSUPPORT_BATCH_STOCK_LOCK_WAREHOUSE_ERROR_20700220 = 20700220,
    
    /* 品牌服务错误 */
    PoCApiCode_VENDER_BRAND_SERVICE_ERROR_21000001 = 21000001,
    
    /* customer unkown error */
    PoCApiCode_CUSTOMER_UNKNOW_ERROR_21000002 = 21000002,
    
    /* 请求参数有误 */
    PoCApiCode_ILLEGLE_ARGUMENT_21000003 = 21000003,
    
    /* 商品申请退货数大于可退数! */
    PoCApiCode_RETURN_GOODS_NUM_OVER_21000004 = 21000004,
    
    /* 退货商品明细不存在! */
    PoCApiCode_RETURN_DETAIL_NOT_EXISTS_21000005 = 21000005,
    
    /* 退货申请不存在! */
    PoCApiCode_RETURN_APPLY_NOT_EXISTS_21000006 = 21000006,
    
    /* 退货单状态不允许操作! */
    PoCApiCode_RETURN_UNCORRECT_STATUS_21000007 = 21000007,
    
    /* 商品不可退! */
    PoCApiCode_RETURN_GOODS_CAN_NOT_RETURN_21000008 = 21000008,
    
    /* 供应链生成退货入库单失败! */
    PoCApiCode_RETURN_CREATE_STOCKIN_ERROR_21000009 = 21000009,
    
    /* 参数不合法 */
    PoCApiCode_PRODUCT_ATTRIBUTE_OPT_PARAM_ILLEGAL_22000001 = 22000001,
    
    /* 创建属性模板失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_CREATE_ERROR_22000002 = 22000002,
    
    /* 属性模板不存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_NOT_EXIST_22000003 = 22000003,
    
    /* 查询属性模板失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_QUERY_ERROR_22000004 = 22000004,
    
    /* 属性模板已经存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_ALEARY_EXIST_22000005 = 22000005,
    
    /* 查询属性项失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_KEY_QUERY_ERROR_22000006 = 22000006,
    
    /* 属性值不存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_NOT_EXIST_22000007 = 22000007,
    
    /* 属性项不存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_KEY_NOT_EXIST_22000008 = 22000008,
    
    /* 属性项新建失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_KEY_CREATE_ERROR_22000009 = 22000009,
    
    /* 属性值新建失败 */
    PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_CREATE_ERROR_22000010 = 22000010,
    
    /* 属性项已存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_KEY_EXIST_22000011 = 22000011,
    
    /* 属性值已存在 */
    PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_EXIST_22000012 = 22000012,
    
    /*  */
    PoCApiCode__C_SUPPLIER_CHANNEL_BATCH_STOCK_NOT_FOUND_ERROR_22800010 = 22800010,
    
    /* 该记录不存在 */
    PoCApiCode_VENDER_SPU_RECORD_NOT_FOUND_23000001 = 23000001,
    
    /* 非法参数 */
    PoCApiCode_VENDER_SPU_ILLEGAL_PARAM_23000002 = 23000002,
    
    /* 接口调用失败 */
    PoCApiCode_VENDER_SPU_API_FAIL_23000003 = 23000003,
    
    /* 品牌不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_BRAND_EMPTY_23000004 = 23000004,
    
    /* 商品毛重不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_GROSSWEIGHT_EMPTY_23000005 = 23000005,
    
    /* 商品长宽高不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_LWH_EMPTY_23000006 = 23000006,
    
    /* 商品原产地不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_ORIGIN_EMPTY_23000007 = 23000007,
    
    /* 商品货源地不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_SUPPLYLAND_EMPTY_23000008 = 23000008,
    
    /* 商品退货政策不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_RETURNSPOLICY_EMPTY_23000009 = 23000009,
    
    /* 商品描述属性参数不合法 */
    PoCApiCode_VENDER_SPU_PARAM_DESC_ILLEGAL_23000010 = 23000010,
    
    /* 商品描分类不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_CATEGORY_EMPTY_23000011 = 23000011,
    
    /* 商品简称不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_BRIEFNAME_EMPTY_23000012 = 23000012,
    
    /* 商品描述属性填写不完整 */
    PoCApiCode_VENDER_SPU_PARAM_DESC_NOTCHECKED_23000013 = 23000013,
    
    /* 商品描述属性值未填写 */
    PoCApiCode_VENDER_SPU_PARAM_DESC_VALUE_EMPTY_23000014 = 23000014,
    
    /* 商品计量单位不能 */
    PoCApiCode_VENDER_SPU_PARAM_MEASUREMENTUNIT_EMPTY_23000015 = 23000015,
    
    /* 商品默认图片不能为空 */
    PoCApiCode_VENDER_SPU_PARAM_DEFAULT_IMAGE_EMPTY_23000016 = 23000016,
    
    /* 商品sku barcode不能重复 */
    PoCApiCode_VENDER_SKU_BARCODE_DUPLICATE_23000017 = 23000017,
    
    /* 商品sku 规格属性不能重复 */
    PoCApiCode_VENDER_SKU_ATTRIBUTES_DUPLICATE_23000018 = 23000018,
    
    /* 商品SPU创建异常 */
    PoCApiCode_VENDER_SPU_CREATE_ERROR_23000019 = 23000019,
    
    /* 商品SPU属性复制异常 */
    PoCApiCode_VENDER_SPU_PROPERTY_COPY_ERROR_23000020 = 23000020,
    
    /* 活动未开始，敬请期待 */
    PoCApiCode_PROMOTION_NOT_STARTED_23000030 = 23000030,
    
    /* 此次抽奖需要消耗积分 */
    PoCApiCode_DRAWLOTTERY_NEED_INTEGRAL_23000040 = 23000040,
    
    /* 用户今天的抽奖机会已用完 */
    PoCApiCode_USER_HAS_NOCHANCE_23000050 = 23000050,
    
    /* 用户积分余额不足 */
    PoCApiCode_INTEGRAL_NOT_ENOUGH_23000060 = 23000060,
    
    /* 积分消费失败,请稍后再试 */
    PoCApiCode_INTEGRAL_CONSUME_FAILED_23000070 = 23000070,
    
    /* notice unkown error */
    PoCApiCode_NOTICE_UNKNOW_ERROR_25000100 = 25000100,
    
    /* 请求参数有误 */
    PoCApiCode_NOTICE_ILLEGLE_ARGUMENT_25000101 = 25000101,
    
}PoCApiCode;


@interface PoCCodeConverter : NSObject
+ (NSString *) description:(NSInteger) code;
@end
