#import "PoCApiCode.h"

@implementation PoCCodeConverter

+ (NSString *) description:(NSInteger) code
{
    switch (code)
    {
        case PoCApiCode_NO_ASSIGN: {
                      return @"未分配返回值";
              
        }
        case PoCApiCode_UPLOAD_FILE_NAME_ERROR: {
                      return @"上传文件名错误";
              
        }
        case PoCApiCode_UPLOAD_FILE_TOO_LARGE: {
                      return @"上传文件过大";
              
        }
        case PoCApiCode_USER_LOCKED: {
                      return @"用户被锁定";
              
        }
        case PoCApiCode_TOKEN_ERROR: {
                      return @"token错误";
              
        }
        case PoCApiCode_NO_ACTIVE_DEVICE: {
                      return @"不是激活设备(用户在其他地方登录)";
              
        }
        case PoCApiCode_NO_TRUSTED_DEVICE: {
                      return @"不是用户的受信设备";
              
        }
        case PoCApiCode_TOKEN_EXPIRE: {
                      return @"token已过期";
              
        }
        case PoCApiCode_APPID_NOT_EXIST: {
                      return @"应用id不存在";
              
        }
        case PoCApiCode_UPLINK_SMS_NOT_RECEIVED: {
                      return @"上行短信尚未收到";
              
        }
        case PoCApiCode_DYNAMIC_CODE_ERROR: {
                      return @"手机动态密码错误";
              
        }
        case PoCApiCode_MOBILE_NOT_REGIST: {
                      return @"手机号未绑定";
              
        }
        case PoCApiCode_API_UPGRADE: {
                      return @"接口已升级";
              
        }
        case PoCApiCode_REQUEST_PARSE_ERROR: {
                      return @"请求解析错误";
              
        }
        case PoCApiCode_ILLEGAL_MUTLI_INTEGRATED_API_ACCESS: {
                      return @"ILLEGAL_MUTLI_INTEGRATED_API_ACCESS";
              
        }
        case PoCApiCode_ILLEGAL_MUTLI_RAWSTRING_RT: {
                      return @"ILLEGAL_MUTLI_RAWSTRING_RT";
              
        }
        case PoCApiCode_ILLEGAL_MULTIAPI_ASSEMBLY: {
                      return @"非法的请求组合";
              
        }
        case PoCApiCode_SIGNATURE_ERROR: {
                      return @"签名错误";
              
        }
        case PoCApiCode_RISK_MANAGER_DENIED: {
                      return @"RISK_MANAGER_DENIED";
              
        }
        case PoCApiCode_UNKNOW_ENCRYPTION_DENIED: {
                      return @"UNKNOW_ENCRYPTION_DENIED";
              
        }
        case PoCApiCode_UNKNOW_TOKEN_DENIED: {
                      return @"UNKNOW_TOKEN_DENIED";
              
        }
        case PoCApiCode_USER_CHECK_FAILED: {
                      return @"USER_CHECK_FAILED";
              
        }
        case PoCApiCode_ACCESS_DENIED: {
                      return @"访问被拒绝";
              
        }
        case PoCApiCode_PARAMETER_DECRYPT_ERROR: {
                      return @"PARAMETER_DECRYPT_ERROR";
              
        }
        case PoCApiCode_PARAMETER_ERROR: {
                      return @"参数错误";
              
        }
        case PoCApiCode_UNKNOWN_METHOD: {
                      return @"mt参数服务端无法识别";
              
        }
        case PoCApiCode_DUBBO_SERVICE_ERROR: {
                      return @"DUBBO_SERVICE_ERROR";
              
        }
        case PoCApiCode_DUBBO_SERVICE_TIMEOUT_ERROR: {
                      return @"DUBBO_SERVICE_TIMEOUT_ERROR";
              
        }
        case PoCApiCode_DUBBO_SERVICE_NOTFOUND_ERROR: {
                      return @"DUBBO_SERVICE_NOTFOUND_ERROR";
              
        }
        case PoCApiCode_SECURITY_SERVICE_ERROR: {
                      return @"SECURITY_SERVICE_ERROR";
              
        }
        case PoCApiCode_WEB_ACCESS_FAILED: {
                      return @"WEB_ACCESS_FAILED";
              
        }
        case PoCApiCode_FATAL_ERROR: {
                      return @"FATAL_ERROR";
              
        }
        case PoCApiCode_IP_DENIED: {
                      return @"IP_DENIED";
              
        }
        case PoCApiCode_SERIALIZE_FAILED: {
                      return @"SERIALIZE_FAILED";
              
        }
        case PoCApiCode_INTERNAL_SERVER_ERROR: {
                      return @"INTERNAL_SERVER_ERROR";
              
        }
        case PoCApiCode_UNKNOWN_ERROR: {
                      return @"服务端返回未知错误";
              
        }
        case PoCApiCode_SUCCESS: {
                      return @"成功";
              
        }
        case PoCApiCode_USER_NOT_FOUND_1000010: {
                      return @"未找到用户";
              
        }
        case PoCApiCode_USER_EXISTED_1000020: {
                      return @"账户已注册";
              
        }
        case PoCApiCode_USERNAME_OR_PASSWORD_ERROR_1000030: {
                      return @"用户名or密码错误";
              
        }
        case PoCApiCode_PASSWORD_ERROR_1000040: {
                      return @"原密码错误";
              
        }
        case PoCApiCode_MAILID_ERROR_1000050: {
                      return @"邮箱地址错误";
              
        }
        case PoCApiCode_SAME_PASSWORD_ERROR_1000060: {
                      return @"密码与原密码相同";
              
        }
        case PoCApiCode_PARAMETER_ERROR_1000070: {
                      return @"参数错误";
              
        }
        case PoCApiCode_SERVER_ERROR_1000080: {
                      return @"服务端错误";
              
        }
        case PoCApiCode_INVITECODE_ERROR_1000090: {
                      return @"邀请码错误";
              
        }
        case PoCApiCode_VERIFYCODE_ERROR_1000100: {
                      return @"图片验证码错误";
              
        }
        case PoCApiCode_USER_NOT_ACTIVATED_1000110: {
                      return @"账户尚未激活";
              
        }
        case PoCApiCode_LINK_EXPIRED_1000120: {
                      return @"链接已过期";
              
        }
        case PoCApiCode_SIGN_ERROR_1000130: {
                      return @"签名验证失败";
              
        }
        case PoCApiCode_PASSWORD_UPDATE_INTERVAL_SHORT_1000140: {
                      return @"密码修改间隔太短";
              
        }
        case PoCApiCode_MAILTYPE_NONSUPPORT_1000150: {
                      return @"目前不支持类型邮箱的注册,只接受顺丰内部邮箱注册";
              
        }
        case PoCApiCode_MAIL_ASK_TOO_OFTEN_1000160: {
                      return @"邮件请求频繁";
              
        }
        case PoCApiCode_PASSWORD_LENGTH_ERROR_1000170: {
                      return @"密码长度错误";
              
        }
        case PoCApiCode_INVITECODE_USED_1000180: {
                      return @"该邀请码已经被使用";
              
        }
        case PoCApiCode_RECEIVER_INFO_LOSE_1000190: {
                      return @"收货人身份信息缺失";
              
        }
        case PoCApiCode_RECEIVER_EXISTED_1000200: {
                      return @"收货人身份信息已存在，选择即可";
              
        }
        case PoCApiCode_CHECK_ACCESSTOKEN_FAILED_1000210: {
                      return @"校验第三方accessToken失败";
              
        }
        case PoCApiCode_USER_ORDER_NON_SUPPORTED_1000220: {
                      return @"不支持非门店账户下单or非门店下单";
              
        }
        case PoCApiCode_MOBILE_NUM_ERROR_1000230: {
                      return @"手机号错误，请输入正确的手机号";
              
        }
        case PoCApiCode_MOBILE_VFCODE_ERROR_1000240: {
                      return @"短信验证码错误";
              
        }
        case PoCApiCode_MOBILE_VFCODE_EXPIRE_1000250: {
                      return @"短信验证码已过期";
              
        }
        case PoCApiCode_USER_ACTIVATED_1000260: {
                      return @"用户已激活";
              
        }
        case PoCApiCode_MOBILE_SMS_ASK_TOO_OFTEN_1000270: {
                      return @"短信请求太过频繁";
              
        }
        case PoCApiCode_CREDTNUM_ERROR_1000280: {
                      return @"身份证号码错误";
              
        }
        case PoCApiCode_SMS_ASK_TOO_MORE_1000290: {
                      return @"短信请求太多";
              
        }
        case PoCApiCode_PASSWORD_ERROR_TOO_MORE_1000300: {
                      return @"用户名或密码错误已达3次";
              
        }
        case PoCApiCode_REACH_MAXNUM_1000310: {
                      return @"已达到最大允许数目";
              
        }
        case PoCApiCode_USER_NOT_AUTH_1000320: {
                      return @"用户未授权";
              
        }
        case PoCApiCode_GET_JS_API_TICKET_FAILED_1000330: {
                      return @"获取js api ticket失败";
              
        }
        case PoCApiCode_GET_ACCESS_TOKEN_FAILED_1000331: {
                      return @"获取access token失败";
              
        }
        case PoCApiCode_ZIPCODE_ERROR_1000332: {
                      return @"输入的邮编错误";
              
        }
        case PoCApiCode_USER_EXIST_NO_PSWD_1000340: {
                      return @"用户账户还没有密码";
              
        }
        case PoCApiCode_CHECK_TEMP_TOKEN_FAIL_1000350: {
                      return @"验证临时token失败,请重新登录";
              
        }
        case PoCApiCode_PARTNER_HAS_BINDED_1000360: {
                      return @"第三方账户已绑定海淘账户";
              
        }
        case PoCApiCode_ALIPAY_VERIFY_FAIL_1000370: {
                      return @"支付宝验签失败";
              
        }
        case PoCApiCode_HAS_BIND_SAME_PARTNER_1000380: {
                      return @"已经绑定了同类的第三方账户";
              
        }
        case PoCApiCode_MAIL_NONSUPPORT_1000390: {
                      return @"目前不支持邮箱账户绑定";
              
        }
        case PoCApiCode_PASSWORD_LOST_1000400: {
                      return @"密码缺失，请输入密码";
              
        }
        case PoCApiCode_MOBILE_VFCODE_NEED_1000410: {
                      return @"需要短信验证码，请输入";
              
        }
        case PoCApiCode_NOT_BIND_ALIACT_1000420: {
                      return @"尚未绑定支付宝账户或账户名缺失";
              
        }
        case PoCApiCode_NOT_REACH_GETCASHAMOUI_1000430: {
                      return @"未达到提现金额限制";
              
        }
        case PoCApiCode_HAS_BINDED_ALIACT_1000440: {
                      return @"已绑定支付宝账户";
              
        }
        case PoCApiCode_TIME_NOT_SUPPORT_REQUEST_1000450: {
                      return @"该时间段内不支持此请求";
              
        }
        case PoCApiCode_VOTETYPE_NOT_EXIST_1000460: {
                      return @"投票类型不存在";
              
        }
        case PoCApiCode_INVITER_NOT_PROMOTER_1000470: {
                      return @"邀请人并非推广员";
              
        }
        case PoCApiCode_USER_LOGINDENY_1000480: {
                      return @"用户账户被冻结，不允许登录";
              
        }
        case PoCApiCode_USER_RCVNAME_UNSUPPORT_1000490: {
                      return @"海关发货需要实名制信息，请输入真实姓名";
              
        }
        case PoCApiCode_USER_MOBILE_UNVERIFY_1000500: {
                      return @"用户手机号尚未验证，不允许设置密码";
              
        }
        case PoCApiCode_USER_HASBINDED_NUMB_1000510: {
                      return @"用户已经绑定过工号了";
              
        }
        case PoCApiCode_IDNUMB_BASBINDED_BY_OTHERS_1000520: {
                      return @"该工号已经被其他用户绑定了";
              
        }
        case PoCApiCode_USER_ISNOT_XG_1000530: {
                      return @"该用户不是小哥";
              
        }
        case PoCApiCode_USER_RQCASH_REJECTED_1000540: {
                      return @"该用户账户被封停，暂时不能提现";
              
        }
        case PoCApiCode_USER_HASNOPARTNER_UNBIND_1000550: {
                      return @"用户没有响应的第三方账户需要解绑";
              
        }
        case PoCApiCode_PARTNER_BIND_OTHERUSER_1000560: {
                      return @"第三方账户已经绑定了其他用户账户";
              
        }
        case PoCApiCode_USER_NOTSUPPORT_UNBIND_1000570: {
                      return @"不支持当前账户解绑，需要保证该账户可达";
              
        }
        case PoCApiCode_USER_CHANGEBIND_TOO_OFTEN_1000580: {
                      return @"换绑请求太过频繁，请稍后再试";
              
        }
        case PoCApiCode_AUTHTOKEN_CHECK_FAILED_1000590: {
                      return @"授权凭据验证失败，请重新获取凭据";
              
        }
        case PoCApiCode_LOGISTICS_CONCURRENT_ERR_2000001: {
                      return @"系统并发异常";
              
        }
        case PoCApiCode_LOGISTICS_DIAMOND_NOT_FOUND_ERR_2000002: {
                      return @"未找到对应的diamond配置";
              
        }
        case PoCApiCode_LOGISTICS_JAXB_TRANPoCER_ERR_2000003: {
                      return @"JAXB转换XML为对象时发生异常";
              
        }
        case PoCApiCode_LOGISTICS_CATEGORY_NOTEXIST_ERR_2003000: {
                      return @"品类信息不存在";
              
        }
        case PoCApiCode_LOGISTICS_WAREHOUSE_NOTEXIST_ERR_2003001: {
                      return @"仓库信息不存在";
              
        }
        case PoCApiCode_LOGISTICS_IDTYPE_ERR_2003002: {
                      return @"证件类型错误";
              
        }
        case PoCApiCode_LOGISTICS_IDNO_ERR_2003003: {
                      return @"证件号码错误";
              
        }
        case PoCApiCode_LOGISTICS_STOCKINID_ERR_2003004: {
                      return @"SKU入库失败";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_CREATE_ERR_2004000: {
                      return @"创建物流订单失败";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_ADD_ITEM_ERR_2004001: {
                      return @"创建物流订单添加商品失败";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_ADD_PACK_ERR_2004002: {
                      return @"创建物流订单添加包裹失败";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_ADD_PACK_ITEM_ERR_2004003: {
                      return @"创建物流订单添加包裹商品失败";
              
        }
        case PoCApiCode_LOGISTICS_REQUEST_ORDER_ADDRESS_ERR_2004010: {
                      return @"获取订单断地址失败";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_NOTEXIST_ERR_2004020: {
                      return @"订单不存在失败";
              
        }
        case PoCApiCode_LOGISTICS_STATE_CANNOT_CHANGE_ERR_2004021: {
                      return @"订单状态不允许修改错误";
              
        }
        case PoCApiCode_LOGISTICS_LINE_NOTEXIST_ERR_2004022: {
                      return @"订单线路不存在";
              
        }
        case PoCApiCode_LOGISTICS_BUYER_ADDRESS_ERR_2004023: {
                      return @"联系人信息缺失或错误";
              
        }
        case PoCApiCode_LOGISTICS_IDENTITY_ERR_2004024: {
                      return @"收货人证件信息缺失或错误";
              
        }
        case PoCApiCode_LOGISTICS_TRADEITEMS_ERR_2004025: {
                      return @"购买的商品信息缺失或错误";
              
        }
        case PoCApiCode_LOGISTICS_PACKAGE_ERR_2004026: {
                      return @"包裹信息缺失或错误";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_ERR_2004027: {
                      return @"物流信息缺失或错误";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_CANT_CANCEL_ERR_2004028: {
                      return @"物流状态不允许取消操作";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_CANT_SEND_ERR_2004029: {
                      return @"物流状态不允许发货操作";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_EXIST_ERR_2004030: {
                      return @"订单已存在";
              
        }
        case PoCApiCode_STOCKIN_ITEMS_EMPTY_2005000: {
                      return @"SKU入库商品为空";
              
        }
        case PoCApiCode_STOCKIN_ITEM_ERR_2005001: {
                      return @"SKU入库商品信息缺失";
              
        }
        case PoCApiCode_LOGISTICS_STARTPOINT_NOTEXIST_ERR_2005002: {
                      return @"起始位置不存在";
              
        }
        case PoCApiCode_LOGISTICS_SELF_ITEM_COMBINE_ERR_2005003: {
                      return @"仓配商品与非仓配商品混合错误";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_CANT_CONFIRM_ERR_2005004: {
                      return @"物流状态不允确认关税操作";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_PAYINFO_ERR_2005005: {
                      return @"订单支付信息缺失";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_DECLAREDVALUE_ERR_2005006: {
                      return @"订单申报价值不能为0";
              
        }
        case PoCApiCode_LOGISTICS_ORDER_TOTAL_ERR_2005007: {
                      return @"用户订单总金额不能为0";
              
        }
        case PoCApiCode_LOGISTICS_INTERNAL_ERROR_2006000: {
                      return @"物流系统内部异常";
              
        }
        case PoCApiCode_LOGISTICS_STOCK_SKU_NOT_ENOUGH_2007000: {
                      return @"实物库存不足";
              
        }
        case PoCApiCode_LOGISTICS_STOCK_SKU_NOT_FOUND_2007001: {
                      return @"找不到商品的实物库存信息";
              
        }
        case PoCApiCode_LOGISTICS_WAREHOUSE_NOT_FOUND_2007002: {
                      return @"找不到商品的发货仓库";
              
        }
        case PoCApiCode_LOGISTICS_SEND_ADDRESS_NOT_FOUND_2007003: {
                      return @"找不到商品的发货地";
              
        }
        case PoCApiCode_LOGISTICS_STATE_MACHINE_INTERNAL_EXCEPTION_2007004: {
                      return @"状态机内部异常";
              
        }
        case PoCApiCode_LOGISTICS_STOCK_SKU_RELEASE_ERR_2007005: {
                      return @"商品库存释放异常";
              
        }
        case PoCApiCode_LOGISTICS_SALE_STOCK_SKU_NOT_FOUND_2007006: {
                      return @"找不到商品的销售库存信息";
              
        }
        case PoCApiCode_LOGISTICS_UNSUPPORT_STOCKOUT_TYPE_2007007: {
                      return @"不支持的出库单类型";
              
        }
        case PoCApiCode_LOGISTICS_BATCH_STOCK_SKU_NOT_ENOUGH_2007008: {
                      return @"批次库存不足";
              
        }
        case PoCApiCode_LOGISTICS_BATCH_STOCK_SKU_NOT_FOUND_2007009: {
                      return @"找不到商品的批次库存信息";
              
        }
        case PoCApiCode_LOGISTICS_BATCH_STOCK_ENOUGH_WAREHOUSE_NOT_FOUND_2007010: {
                      return @"找不到商品批次库存足够的仓库";
              
        }
        case PoCApiCode_LOGISTICS_COMBINATION_MILK_SKU_QTY_NOT_TWO_2007011: {
                      return @"类别为奶粉的组合商品数量不为2";
              
        }
        case PoCApiCode_LOGISTICS_COMBINATION_SKU_WAREHOUSE_NOT_FOUND_2007012: {
                      return @"找不到同时存在组合商品下基本商品的仓库";
              
        }
        case PoCApiCode_LOGISTICS_COMPUTE_ERROR_2007013: {
                      return @"计算时发生错误";
              
        }
        case PoCApiCode_LOGISTICS_STOCKOUT_ORDER_PRICE_INCORRECT_2007014: {
                      return @"商品价值之和大于用户实际支付价格";
              
        }
        case PoCApiCode_LOGISTICS_STOCKOUT_ORDER_PARAMS_ILLEGAL_2007015: {
                      return @"出库单详情信息缺失，Item对应的信息不存在";
              
        }
        case PoCApiCode_LOGISTICS_SYSTEM_MAINTENANCE_2007016: {
                      return @"供应链系统维护中，请稍后再试";
              
        }
        case PoCApiCode_LOGISTICS_BSP_REGIST_NOT_ALLOW_ON_OTHRE_TPL_2007017: {
                      return @"供应链国内供应商不为BSP，不能进行BSP路由注册";
              
        }
        case PoCApiCode_LOGISTICS_BSP_REGIST_INNER_EXCEPTION_2007018: {
                      return @"供应链国内供应商BSP路由注册内部异常";
              
        }
        case PoCApiCode_LOGISTICS_GET_LINE_EXCEPTION_ON_SPLIT_2007019: {
                      return @"供应链分单时获取路线失败";
              
        }
        case PoCApiCode_LOGISTICS_ROUTE_REGIST_INNER_EXCEPTION_2007020: {
                      return @"供应链路由注册快递100内部异常";
              
        }
        case PoCApiCode_LOGISTICS_RECEIVER_ADDRESS_TOO_LONG_2007021: {
                      return @"收件人地址过长";
              
        }
        case PoCApiCode_LOGISTICS_CARRIER_CODE_NOTEXIST_ERR_2007022: {
                      return @"快递公司编码不存在";
              
        }
        case PoCApiCode_LOGISTICS_APPEND_USERROUTES_ERROR_2007023: {
                      return @"追加自定义物流信息异常";
              
        }
        case PoCApiCode_PURCHASE_ORDER_INNER_EXCEPTION_2020000: {
                      return @"采购单系统内部异常";
              
        }
        case PoCApiCode_PURCHASE_ORDER_PARAMS_ILLEGAL_2020001: {
                      return @"采购单参数不合法";
              
        }
        case PoCApiCode_PURCHASE_ORDER_NOT_ALLOW_UPDATE_2020002: {
                      return @"采购单不允许修改";
              
        }
        case PoCApiCode_PURCHASE_ORDER_NOT_ALLOW_SUBMIT_AUDIT_2020003: {
                      return @"采购单不允许提交审核";
              
        }
        case PoCApiCode_PURCHASE_ORDER_NOT_ALLOW_DELETE_2020004: {
                      return @"采购单不允许删除";
              
        }
        case PoCApiCode_PURCHASE_ORDER_NOT_ALLOW_OPERATER_ITEM_2020005: {
                      return @"采购单已提交，不可修改商品";
              
        }
        case PoCApiCode_PURCHASE_ORDER_ADD_REPEAT_ITEM_2020006: {
                      return @"添加的商品已在采购单中存在";
              
        }
        case PoCApiCode_PURCHASE_ORDER_NOT_EXIST_2020007: {
                      return @"采购单不存在";
              
        }
        case PoCApiCode_PURCHASE_ORDER_MORE_PROVIDER_2020008: {
                      return @"采购单中商品中包含多个供应商";
              
        }
        case PoCApiCode_PURCHASE_ORDER_EMPTY_ITEM_2020009: {
                      return @"采购单中商品不能为空";
              
        }
        case PoCApiCode_PURCHASE_ORDER_ITEM_MORE_CURRENCY_2020010: {
                      return @"采购单中商品货币类型不一致";
              
        }
        case PoCApiCode_PURCHASE_ORDER_ITEM_MORE_SETTLEMENT_2020011: {
                      return @"采购单中商品付款方式不一致";
              
        }
        case PoCApiCode_PURCHASE_ORDER_ITEM_EMPTY_CURRENCY_2020012: {
                      return @"采购单中商品货币类型不能为空";
              
        }
        case PoCApiCode_PURCHASE_ORDER_ITEM_EMPTY_SETTLEMENT_2020013: {
                      return @"采购单中商品付款方式不能为空";
              
        }
        case PoCApiCode_PURCHASE_ORDER_PREPAY_STATUS_ERROR_2020014: {
                      return @"采购单预付款状态错误";
              
        }
        case PoCApiCode_PURCHASE_ORDER_ITEM_HAS_CREATED_ERROR_2020015: {
                      return @"采购单中寄售不入库商品已经有库存记录";
              
        }
        case PoCApiCode_STOCKIN_ORDER_INNER_EXCEPTION_2030000: {
                      return @"入库单系统内部异常";
              
        }
        case PoCApiCode_STOCKIN_ORDER_PARAMS_ILLEGAL_2030001: {
                      return @"入库单参数不合法";
              
        }
        case PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_UPDATE_2030002: {
                      return @"当前状态不允许入库单修改";
              
        }
        case PoCApiCode_STOCKIN_ORDER_SKU_NOT_ALLOW_DELETE_2030003: {
                      return @"入库单商品不允许删除";
              
        }
        case PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_OPERATER_ITEM_2030004: {
                      return @"入库单已提交，不可修改商品";
              
        }
        case PoCApiCode_STOCKIN_ORDER_ADD_REPEAT_ITEM_2030005: {
                      return @"添加的商品已在入库单中存在";
              
        }
        case PoCApiCode_STOCKIN_ORDER_NOT_EXIST_2030006: {
                      return @"入库单不存在";
              
        }
        case PoCApiCode_STOCKIN_ORDER_SENDSTOCK_URLORKEY_NULL_2030007: {
                      return @"调用仓库接口URL或者KEY为空";
              
        }
        case PoCApiCode_STOCKIN_ORDER_SENDSTOCK_RESPONSE_NULL_2030008: {
                      return @"调用仓库接口返回信息为空";
              
        }
        case PoCApiCode_STOCKIN_ORDER_SENDSTOCK_FAIL_2030009: {
                      return @"调用仓库接口失败";
              
        }
        case PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_FINISH_2030010: {
                      return @"当前状态不允许入库单完成";
              
        }
        case PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_CANCEL_2031113: {
                      return @"当前状态不允许入库单取消";
              
        }
        case PoCApiCode_STOCKIN_ORDER_SKUS_IS_EMPTY_2031114: {
                      return @"入库单中没有商品";
              
        }
        case PoCApiCode_STOCKIN_ORDER_NOT_ALLOW_SUBMIT_2031115: {
                      return @"当前状态不允许入库单提交";
              
        }
        case PoCApiCode_STOCKIN_ORDER_SUBMIT_CMD_NOT_FOUND_2031116: {
                      return @"未找到对应的入库单提交命令";
              
        }
        case PoCApiCode_STOCKIN_ORDER_NOT_SETTLED_2031117: {
                      return @"入库单未生成结算信息";
              
        }
        case PoCApiCode_STOCKIN_ORDER_NOT_APPLY_SECOND_PAY_2031118: {
                      return @"入库单没有生成二次预付";
              
        }
        case PoCApiCode_STOCKIN_ORDER_CANCEL_CMD_NOT_FOUND_2031119: {
                      return @"未找到对应的入库单取消命令";
              
        }
        case PoCApiCode_STOCKIN_ORDER_INLAND_TRADE_2031120: {
                      return @"入库单供应商为国内贸易，仓库只能为国内实体仓";
              
        }
        case PoCApiCode_STOCKIN_ORDER_INTERNATIONAL_TRADE_2031121: {
                      return @"入库单供应商为国际贸易，仓库只能为海外实体仓、保税实体仓";
              
        }
        case PoCApiCode_STOCKIN_ORDER_EDIT_WAREHOUSE_2031122: {
                      return @"入库单状态为收货完成或已取消，不能改仓";
              
        }
        case PoCApiCode_STOCKIN_TRANS_INLAND_TRADE_2031123: {
                      return @"调拨入库的调出仓库为国内仓，改仓库只能为国内实体仓";
              
        }
        case PoCApiCode_STOCKIN_TRANS_INTERNATIONAL_TRADE_2031124: {
                      return @"调拨入库的调出仓库为海外仓或保税仓，仓库只能为海外实体仓、保税实体仓";
              
        }
        case PoCApiCode_SKU_SERVICE_PARAMS_ILLEGAL_2040000: {
                      return @"方法参数为空或不合法";
              
        }
        case PoCApiCode_SKU_SERVICE_INNER_EXCEPTION_2040001: {
                      return @"商品服务系统内部异常";
              
        }
        case PoCApiCode_SKU_SERVICE_DECLARE_NAME_NOT_EXIST_2040002: {
                      return @"商品备案名称不存在";
              
        }
        case PoCApiCode_SKU_SERVICE_DECLARE_EXIST_PASS_2040003: {
                      return @"商品已成功备案";
              
        }
        case PoCApiCode_SKU_SERVICE_DECLARE_EXIST_2040004: {
                      return @"备案商品已存在";
              
        }
        case PoCApiCode_SKU_DECLARE_NOT_ALLOW_DELETE_2040005: {
                      return @"备案商品不允许删除";
              
        }
        case PoCApiCode_MIXED_SKU_NOT_EXIST_2040006: {
                      return @"组合商品信息不存在";
              
        }
        case PoCApiCode_MIXED_SKU_PARAMS_ILLAGEL_2040007: {
                      return @"组合商品参数信息不合法";
              
        }
        case PoCApiCode_MIXSKU_EXITS_ERR_2041000: {
                      return @"组合商品信息已存在";
              
        }
        case PoCApiCode_MIXSKU_INSERT_ERR_2041001: {
                      return @"组合商品信息新增失败";
              
        }
        case PoCApiCode_MIXSKU_UPDATE_ERR_2041002: {
                      return @"组合商品信息更新失败";
              
        }
        case PoCApiCode_DUPLICATE_BARCODE_ERR_2041003: {
                      return @"重复的商品条码";
              
        }
        case PoCApiCode_SKU_POSTTAXCODE_NOT_MATCH_DECLARE_2041005: {
                      return @"商品的行邮税号与申报的不一致";
              
        }
        case PoCApiCode_SKU_DECLARE_EXIST_2041006: {
                      return @"商品的备案信息已存在";
              
        }
        case PoCApiCode_STOCK_EXIST_SKU_DELETE_ERROR_2041007: {
                      return @"尚有库存的商品不允许删除";
              
        }
        case PoCApiCode_SKU_BARCODE_IS_EMPTY_2041008: {
                      return @"商品条码为空";
              
        }
        case PoCApiCode_SKU_SERVICE_DECLARE_INNER_EXCEPTION_2041009: {
                      return @"商品备案内部异常";
              
        }
        case PoCApiCode_STOCK_EXIST_SKU_BARCODE_EDIT_NOT_ALLOWED_CODE_ERROR_2041010: {
                      return @"商品已存在库存，不允许修改条码";
              
        }
        case PoCApiCode_SKU_DECLARE_NOT_EXIST_2041011: {
                      return @"商品备案信息不存在";
              
        }
        case PoCApiCode_SKU_DECLARE_TAXRATE_ILLEGAL_2041012: {
                      return @"商品备案税率不合法";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_DECLARE_PRICE_SAVE_FAILURE_2041013: {
                      return @"出库单备案价格保存失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_SKU_DECLARE_PRICE_NOT_EXIST_2041014: {
                      return @"出库单商品申报价格不存在";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_PROVIDER_META_NOT_MATCH_2041015: {
                      return @"出库单供应商原信息不完整";
              
        }
        case PoCApiCode_SKU_DECLARE_WEIGHT_IS_EMPTY_2041016: {
                      return @"商品备案重量为空";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_DECLARE_ACTURE_PAY_IS_ZERO_2041017: {
                      return @"实际支付申报不能为0";
              
        }
        case PoCApiCode_PROVIDER_CODE_ERROR_EXCEPTION_2050000: {
                      return @"供应商编码为空或错误";
              
        }
        case PoCApiCode_PROVIDER_NAME_ERROR_EXCEPTION_2050001: {
                      return @"供应商名称不能为空";
              
        }
        case PoCApiCode_PROVIDER_FOREIGN_NAME_EMPTY_EXCEPTION_2050002: {
                      return @"供应商外文名称不能为空";
              
        }
        case PoCApiCode_PROVIDER_STATUS_IS_EMPTY_EXCEPTION_2050003: {
                      return @"供应商状态不能为空";
              
        }
        case PoCApiCode_PROVIDER_COMPANY_SIMPLE_NAME_EMPTY_EXCEPTION_2050004: {
                      return @"供应商简称不能为空";
              
        }
        case PoCApiCode_PROVIDER_CODE_ALREADY_EXISTS_ERROR_EXCEPTION_2050005: {
                      return @"供应商编码已存在";
              
        }
        case PoCApiCode_PROVIDER_DATEBASE_ERROR_EXCEPTION_2050006: {
                      return @"数据库异常";
              
        }
        case PoCApiCode_ROVIDER_SERVICE_PARAMS_ILLEGAL_2050007: {
                      return @"方法参数为空或不合法";
              
        }
        case PoCApiCode_PROVIDER_SERVICE_PROVIDERCODE_NOT_EXIST_2050008: {
                      return @"供应商编码不存在";
              
        }
        case PoCApiCode_PROVIDER_SERVICE_PROVIDERID_NOT_EXIST_2050009: {
                      return @"供应商不存在或已被删除";
              
        }
        case PoCApiCode_WAREHOUSE_CODE_ERROR_EXCEPTION_2060000: {
                      return @"仓库编码为空或错误";
              
        }
        case PoCApiCode_WAREHOUSE_NAME_ERROR_EXCEPTION_2060001: {
                      return @"仓库名称不能为空";
              
        }
        case PoCApiCode_WAREHOUSE_NATION_NOT_FOUND_ERROR_EXCEPTION_2060002: {
                      return @"国家没找到";
              
        }
        case PoCApiCode_WAREHOUSE_DATABASE_ERROR_EXCEPTION_2060003: {
                      return @"数据库异常";
              
        }
        case PoCApiCode_WAREHOUSE_NID_EMPTY_ERROR_EXCEPTION_2060004: {
                      return @"仓库编码不能为空";
              
        }
        case PoCApiCode_WAREHOUSE_NID_ALREADY_EXISTS_ERROR_EXCEPTION_2060005: {
                      return @"仓库编码已存在";
              
        }
        case PoCApiCode_WAREHOUSE_NOT_EXISTS_ERROR_EXCEPTION_2060006: {
                      return @"仓库不存在";
              
        }
        case PoCApiCode_STOCK_SERVICE_PARAMS_ILLEGAL_2070000: {
                      return @"方法参数为空或不合法";
              
        }
        case PoCApiCode_STOCK_SERVICE_INNER_EXCEPTION_2070001: {
                      return @"库存服务系统内部异常";
              
        }
        case PoCApiCode_STOCK_SERVICE_FREEZE_RECORD_NOT_FOUND_2070002: {
                      return @"未找到冻结库存记录";
              
        }
        case PoCApiCode_STOCK_SERVICE_FREEZE_RECORD_NOT_MATCH_2070003: {
                      return @"冻结库存记录和实际出库记录不符";
              
        }
        case PoCApiCode_STOCK_SERVICE_ACTUAL_RECORD_NOT_FOUND_2070004: {
                      return @"未找到实物库存记录";
              
        }
        case PoCApiCode_STOCK_SERVICE_FREEZE_RECORD_STATE_ERROR_2070005: {
                      return @"冻结库存的状态异常";
              
        }
        case PoCApiCode_STOCK_SERVICE_FREEZE_COUNT_NOT_MATCH_2070006: {
                      return @"冻结库存的数量和最终实际消费数量不符";
              
        }
        case PoCApiCode_STOCK_SERVICE_STOCK_PRICE_INVALID_2070007: {
                      return @"商品库存的成本价为空或者小于等于0";
              
        }
        case PoCApiCode_STOCK_SERVICE_SALE_RECORD_UPDATE_ERROR_2070008: {
                      return @"更改销售库存失败";
              
        }
        case PoCApiCode_STOCK_SERVICE_SALE_COUNT_NOT_ENOUGH_ERROR_2070009: {
                      return @"可售库存不足";
              
        }
        case PoCApiCode_STOCK_SERVICE_SALE_RECORD_NOT_FOUND_ERROR_2070010: {
                      return @"未找到可售库存记录";
              
        }
        case PoCApiCode_STOCK_SERVICE_BATCH_STOCK_RECORD_NOT_FOUND_2070011: {
                      return @"未找到商品批次库存记录";
              
        }
        case PoCApiCode_STOCK_SERVICE_BATCH_STOCK_PRICE_INVALID_2070012: {
                      return @"商品批次库存的成本价为空或者小于等于0";
              
        }
        case PoCApiCode_STOCK_SERVICE_SALE_FREEZE_RECORD_NOT_FOUND_ERROR_2070014: {
                      return @"未找到可售库存冻结记录";
              
        }
        case PoCApiCode_STOCK_SERVICE_BATCH_STOCK_RECODE_DUPLICATE_2070015: {
                      return @"商品批次库存重复";
              
        }
        case PoCApiCode_STOCK_SERVICE_FREEZE_IN_BATCH_FAIL_2070016: {
                      return @"批量冻结库存失败";
              
        }
        case PoCApiCode_STOCK_SERVICE_BATCH_STOCK_LOCK_LOG_NOT_FOUND_2070017: {
                      return @"找不到批次禁用记录";
              
        }
        case PoCApiCode_STOCK_SERVICE_BATCH_STOCK_LOCK_LOG_EXIST_2070018: {
                      return @"批次禁用记录已存在";
              
        }
        case PoCApiCode_STOCK_SERVICE_SAFE_COUNT_NOT_ENOUGH_ERROR_2070019: {
                      return @"安全库存不足";
              
        }
        case PoCApiCode_OPERATE_CONSIGN_STOCK_ERROR_2070020: {
                      return @"调整寄售不入库商品库存数量失败";
              
        }
        case PoCApiCode_SYNC_CONSIGN_STOCK_ERROR_2070021: {
                      return @"同步寄售不入库商品库存失败";
              
        }
        case PoCApiCode_UNSUPPORT_BATCH_STOCK_LOCK_WAREHOUSE_2070022: {
                      return @"退货仓和存储仓不需要使用批次禁用功能";
              
        }
        case PoCApiCode_RELEASE_PRESELL_STOCK_ERROR_2070023: {
                      return @"释放预售商品库存数量失败";
              
        }
        case PoCApiCode_CUSTOMCATEGORY_SERVICE_PARAMS_ILLEGAL_2080000: {
                      return @"方法参数为空或不合法";
              
        }
        case PoCApiCode_CUSTOMCATEGORY_SERVICE_INNER_EXCEPTION_2080001: {
                      return @"海关类目服务系统内部异常";
              
        }
        case PoCApiCode_NATION_SERVICE_PARAMS_ILLEGAL_2090000: {
                      return @"方法参数为空或不合法";
              
        }
        case PoCApiCode_NATION_SERVICE_INNER_EXCEPTION_2090001: {
                      return @"原产地服务系统内部异常";
              
        }
        case PoCApiCode_PROVIDERSKU_SERVICE_PARAMS_ILLEGAL_2100000: {
                      return @"方法参数为空或不合法";
              
        }
        case PoCApiCode_PROVIDERSKU_SERVICE_INNER_EXCEPTION_2100001: {
                      return @"供应商商品映射服务系统内部异常";
              
        }
        case PoCApiCode_PROVIDERSKU_NOT_EXIST_EXCEPTION_2100002: {
                      return @"供应商不存在";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_WAVENO_UPDATE_ERROR_2110000: {
                      return @"出库单波次号更新失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_ORDER_STATE_UPDATE_ERROR_2110001: {
                      return @"供应链推送订单状态更改失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_UPDATE_WAVENO_EXISTS_ERROR_2110002: {
                      return @"波次号已存在，更新波次号失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_STATE_CHANGE_EXCEPTION_2110003: {
                      return @"单据状态流转异常";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_PARAM_ILLIGAL_2110004: {
                      return @"出库单参数不合法";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_STOCKOUT_EXCEPTION_2110005: {
                      return @"出库单下发出库异常";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_SEND_EXCEPTION_2110006: {
                      return @"出库单发货异常";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_REQUEST_PARAM_ILLEGAL_2110007: {
                      return @"出库单报文请求参数不合法";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_TPL_CREATE_FAILURE_2110010: {
                      return @"三方物流TPL订单下发失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_PAY_CREATE_FAILURE_2110011: {
                      return @"支付单申报下发失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_PORT_CREATE_FAILURE_2110012: {
                      return @"口岸订单申报下发失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_WMS_CREATE_FAILURE_2110013: {
                      return @"仓库订单下发失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_CANNOT_CLOSE_2110014: {
                      return @"出库单状态不允许关闭";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_ENGINE_PARAM_ILLAGLE_2110015: {
                      return @"出库单状态流转参数不合法，缺少ID";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_TPL_SEND_FAILURE_2110016: {
                      return @"三方物流TPL运单确认失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_WMS_SEND_FAILURE_2110017: {
                      return @"仓库订单下发发货失败";
              
        }
        case PoCApiCode_STOCKOUT_COMMON_DECLARE_TYPE_NOT_FOUND_2110018: {
                      return @"未找到共通的申报方式";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_WMS_PORT_VALIDATE_FAILURE_2110019: {
                      return @"口岸避税验证失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_CONFIG_EXCEPTION_2110020: {
                      return @"系统配置出错";
              
        }
        case PoCApiCode_COMMAND_NOT_SUPPORT_2110021: {
                      return @"命令不支持";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_STATE_TO_SINGED_NOT_ALLOW_2110022: {
                      return @"出库单状态不允许流转到已签收";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_OBJECT_CONVERT_ERROR_2110023: {
                      return @"对象转换异常";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_OBJECT_CONVERT_PARAMS_ILLEGAL_2110024: {
                      return @"对象转换参数不合法";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_NOT_ALLOW_RESPLIT_2110025: {
                      return @"出库单状态不允许重新分包";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_NOT_GET_ZTO_REMARK_2110026: {
                      return @"获取中通大头笔失败";
              
        }
        case PoCApiCode_PRESELL_ORDER_CREATE_ERROR_2110027: {
                      return @"预售订单暂不能创建出库单";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_CCB_CONFIRM_WEIGHT_ERROR_2110028: {
                      return @"出库单下发清关确认重量参数不合法";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_CCB_CONFIRM_ERROR_2110029: {
                      return @"出库单下发清关确认失败";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_CUSTOMSOFFICE_MSG_ILLEGAL_2110030: {
                      return @"订单下发海关总署，参数不合法";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_CUSTOMSOFFICE_MSG_SEND_ERROR_2110031: {
                      return @"订单下发海关总署，发送异常";
              
        }
        case PoCApiCode_PAYTYPE_NOT_SUPPORT_ERROR_2120000: {
                      return @"支付类型错误";
              
        }
        case PoCApiCode_PAYTYPE_SERVICE_INNER_EXCEPTION_2120001: {
                      return @"线路服务系统内部异常";
              
        }
        case PoCApiCode_ADD_LINE_CONFIGURE_ERROR_2120002: {
                      return @"新增线路配置信息异常";
              
        }
        case PoCApiCode_SEND_SMS_ERROR_2130000: {
                      return @"发送短信异常";
              
        }
        case PoCApiCode_SEND_EMAIL_ERROR_2130001: {
                      return @"发送邮件异常";
              
        }
        case PoCApiCode_LIULIAN_SERVICE_PARAMS_ILLEGAL_2140000: {
                      return @"方法参数为空或不合法";
              
        }
        case PoCApiCode_LIULIAN_SERVICE_FREIGHT_NOT_FOUND_2140001: {
                      return @"未查询到符合条件的运费";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_PARAMS_ILLEGAL_2150000: {
                      return @"方法参数为空或不合法";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_STOCKOUTORDER_NOT_EXIST_2150001: {
                      return @"出库单不存在";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_WAREHOUSE_NOT_EXIST_2150002: {
                      return @"仓库不存在";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_WAREHOUSE_PROVIDER_NOT_EXIST_2150003: {
                      return @"仓库的供应商不存在";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_PERSONAL_GOODES_COUNT_NOT_MATCH_2150004: {
                      return @"订单中商品数与需申报的商品数不匹配";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_PERSONAL_GOODES_WAYBILL_NOT_MATCH_2150005: {
                      return @"订单中商品数与需申报的运单不匹配";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_WAREHOUSE_PROVIDER_META_PART_MISSING_2150006: {
                      return @"仓库的供应商元信息部分缺失";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_WAREHOUSE_PROVIDER_META_ILLEGAL_2150007: {
                      return @"仓库的供应商元信息格式不正确";
              
        }
        case PoCApiCode_LOGISTICS_COMPANY_SERVICE_PERSONAL_GOODES_PRODUCT_RECORD_MISSING_2150008: {
                      return @"个人申报单中商品国检备案编码部分缺失";
              
        }
        case PoCApiCode_COLLECTING_PURCHASE_ORDER_NOT_EXIT_2200000: {
                      return @"采购单不存在";
              
        }
        case PoCApiCode_COLLECTING_PURCHASE_ORDER_HAS_FINISHED_2200001: {
                      return @"采购已经处于完成状态";
              
        }
        case PoCApiCode_COLLECTING_PURCHASE_ORDER_PARAM_ILLEGAL_2200002: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_COLLECTING_PURCHASE_ORDER_SKU_NOT_EXIST_2200003: {
                      return @"SKU不存在";
              
        }
        case PoCApiCode_COLLECTING_PURCHASE_RESULT_MAILNO_EXIST_2200004: {
                      return @"运单号已存在";
              
        }
        case PoCApiCode_COLLECTING_STOCKIN_ORDER_MAILNO_EXIST_2210001: {
                      return @"运单号对应的入库记录已存在";
              
        }
        case PoCApiCode_COLLECTING_STOCKIN_ORDER_PURCHASE_RESUL_NOT_EXIST_2210002: {
                      return @"运单号对应的采购记录不存在";
              
        }
        case PoCApiCode_PORT_SERVICE_PORT_NOT_EXIST_2220000: {
                      return @"口岸不存在";
              
        }
        case PoCApiCode_PORT_SERVICE_ORDER_DELCARE_NOT_SUPPORT_2220001: {
                      return @"口岸不支持订单申报";
              
        }
        case PoCApiCode_PAY_COMPANY_SERVICE_ORDER_DELCARE_STATE_NOT_ALLOW_2220002: {
                      return @"支付单申报状态不允许再次申报";
              
        }
        case PoCApiCode_PAY_COMPANY_SERVICE_PAY_BILL_NOT_EXIST_2220003: {
                      return @"支付单申报记录不存在";
              
        }
        case PoCApiCode_PAY_COMPANY_SERVICE_PAY_BILL_PROXY_ONLY_ON_HANGZHOU_PORT_2220004: {
                      return @"电商代理推送支付单只允许在杭州口岸";
              
        }
        case PoCApiCode_PAY_COMPANY_SERVICE_PAY_BILL_DECLARE_EXCEPTION_2220005: {
                      return @"支付申报异常";
              
        }
        case PoCApiCode_GAL_ORDER_INNER_EXCEPTION_2230000: {
                      return @"损溢单系统内部异常";
              
        }
        case PoCApiCode_GAL_ORDER_SKU_FREEZE_FAILURE_ERROR_2230001: {
                      return @"损溢明细冻结失败";
              
        }
        case PoCApiCode_GAL_ORDER_NOT_FOUND_ERROR_2230002: {
                      return @"未找到损溢单记录";
              
        }
        case PoCApiCode_GAL_ORDER_SKU_NOT_FOUND_ERROR_2230003: {
                      return @"未找到损溢单明细记录";
              
        }
        case PoCApiCode_GAL_ORDER_CALL_GOODS_SYSTEM_REDUCE_CHANNEL_COUNT_ERROR_2230005: {
                      return @"调用商品系统接口扣减渠道库存失败";
              
        }
        case PoCApiCode_GAL_ORDER_CONFIRM_FAIL_CODE_ERROR_2230006: {
                      return @"下发损益单确认命令失败";
              
        }
        case PoCApiCode_GAL_ORDER_CANCEL_FAIL_CODE_ERROR_2230007: {
                      return @"损溢单取消失败";
              
        }
        case PoCApiCode_BATCH_STOCK_NOT_ENOUGH_CODE_ERROR_2230008: {
                      return @"批次实物库存小于损益库存";
              
        }
        case PoCApiCode_GAL_ORDER_PARAMS_ILLEGAL_2230009: {
                      return @"损溢单参数不合法";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_INNER_EXCEPTION_2250000: {
                      return @"调拨单系统内部异常";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_SKU_FREEZE_FAILURE_ERROR_2250001: {
                      return @"调拨明细冻结失败";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_NOT_FOUND_ERROR_2250002: {
                      return @"未找到调拨单记录";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_SKU_NOT_FOUND_ERROR_2250003: {
                      return @"未找到调拨单明细记录";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_CONFIRM_FAIL_CODE_ERROR_2250004: {
                      return @"下发调拨单确认命令失败";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_CANCEL_FAIL_CODE_ERROR_2250005: {
                      return @"调拨单取消失败";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_BATCH_STOCK_NOT_ENOUGH_CODE_ERROR_2250006: {
                      return @"批次实物库存小于申请调拨数量";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_SALE_STOCK_NOT_ENOUGH_CODE_ERROR_2250007: {
                      return @"可售库存小于申请调拨数量";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_PARAMS_ILLEGAL_2250008: {
                      return @"调拨单参数不合法";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_NOT_EXIST_2250009: {
                      return @"调拨单不存在";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_STATE_NOT_WAIT_AUDIT_2250010: {
                      return @"只有待审批状态的调拨单才能审批";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_STATE_NOT_INIT_2250011: {
                      return @"只有初始化状态的调拨单才能提交审批";
              
        }
        case PoCApiCode_TRANPoCER_WAREHOUSE_NOT_EXIST_2250012: {
                      return @"调拨单的调出仓库不存在";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_STOCKOUT_ORDER_SYN_ERROR_2250013: {
                      return @"同步出库单给仓库异常";
              
        }
        case PoCApiCode_TRANPoCER_OUT_ORDER_EXIST_2250014: {
                      return @"调拨出库单已存在";
              
        }
        case PoCApiCode_TRANPoCER_IN_ORDER_EXIST_2250015: {
                      return @"调拨入库单已存在";
              
        }
        case PoCApiCode_TRANPoCER_ORDER_CALL_GOODS_SYSTEM_REDUCE_CHANNEL_COUNT_ERROR_2250016: {
                      return @"调拨单调用商品系统接口扣减渠道库存失败";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_INNER_EXCEPTION_2260000: {
                      return @"商品备案系统内部异常";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_NOT_FOUND_ERROR_2260001: {
                      return @"未找到商品备案记录";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_PARAMS_ILLEGAL_2260002: {
                      return @"商品备案参数不合法";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_GZ_BONDED_NOT_FOUNT_EXCEPTION_2260003: {
                      return @"广州保税商品备案信息不存在";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_GZ_DIREDCTMAIL_NOT_FOUNT_EXCEPTION_2260004: {
                      return @"广州直邮商品备案信息不存在";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_HZ_BONDED_NOT_FOUNT_EXCEPTION_2260005: {
                      return @"杭州保税商品备案信息不存在";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_HZ_DIREDCTMAIL_NOT_FOUNT_EXCEPTION_2260006: {
                      return @"杭州直邮商品备案信息不存在";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_NB_BONDED_NOT_FOUNT_EXCEPTION_2260007: {
                      return @"宁波保税商品备案信息不存在";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_FINISHED_COLLECTING_STATE_ERROR_2260008: {
                      return @"待备案状态无法操作资料收集完毕导入";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_STATE_NOT_FINISHED_COLLECTING_OR_DECLARE_PASS_2260009: {
                      return @"商品的备案状态不为资料收集完毕或备案通过,无法操作备案通过导入";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_INIT_EXCEPTION_2260010: {
                      return @"初始化商品备案信息异常";
              
        }
        case PoCApiCode_PRODUCT_DECLARE_DECLARING_STATE_ERROR_2260011: {
                      return @"备案状态不为资料收集完毕, 无法操作备案中导入";
              
        }
        case PoCApiCode_PURCHASE_RETURN_INNER_EXCEPTION_2270000: {
                      return @"采购退货单系统内部异常";
              
        }
        case PoCApiCode_PURCHASE_RETURN_NOT_EXIST_2270001: {
                      return @"采退单不存在";
              
        }
        case PoCApiCode_PURCHASE_RETURN_NOT_ALLOW_DELETE_2270002: {
                      return @"采退单不允许删除";
              
        }
        case PoCApiCode_PURCHASE_RETURN_STATE_NOT_INIT_2270003: {
                      return @"只有初始化或是冻结失败的采退单才能提交审批";
              
        }
        case PoCApiCode_PURCHASE_RETURN_PARAMS_ILLEGAL_2270004: {
                      return @"采退单参数不合法";
              
        }
        case PoCApiCode_PURCHASE_RETURN_BATCH_STOCK_NOT_ENOUGH_CODE_ERROR_2270005: {
                      return @"批次正品库存小于申请采退数量";
              
        }
        case PoCApiCode_PURCHASE_RETURN_SALE_STOCK_NOT_ENOUGH_CODE_ERROR_2270006: {
                      return @"可售库存小于申请采退数量";
              
        }
        case PoCApiCode_PURCHASE_RETURN_STATE_NOT_WAIT_AUDIT_2270007: {
                      return @"只有待审批状态的采退单才能审批";
              
        }
        case PoCApiCode_PURCHASE_RETURN_OUT_ORDER_EXIST_2270008: {
                      return @"采退出库单已存在，不能成功创建";
              
        }
        case PoCApiCode_PURCHASE_RETURN_STOCK_OUT_EXCEPTION_2270009: {
                      return @"不能成功创建采退出库单，采退信息赋值异常";
              
        }
        case PoCApiCode_PURCHASE_RETURN_SKU_NOT_FOUND_ERROR_2270010: {
                      return @"未找到采退单明细记录";
              
        }
        case PoCApiCode_PURCHASE_RETURN_SKU_FREEZE_FAILURE_ERROR_2270011: {
                      return @"采退明细冻结失败";
              
        }
        case PoCApiCode_PURCHASE_RETURN_LINE_NOT_EXIST_2270012: {
                      return @"退货仓库未找到路线信息";
              
        }
        case PoCApiCode_PURCHASE_RETURN_BATCH_BAD_STOCK_NOT_ENOUGH_CODE_ERROR_2270013: {
                      return @"批次坏品库存小于申请采退数量";
              
        }
        case PoCApiCode_PURCHASE_RETURN_ACTUAL_BAD_STOCK_NOT_ENOUGH_CODE_ERROR_2270014: {
                      return @"实物批次坏品库存小于申请采退数量";
              
        }
        case PoCApiCode_PRESELL_ORDER_INNER_EXCEPTION_2270101: {
                      return @"预售申请单系统内部异常";
              
        }
        case PoCApiCode_PRESELL_ORDER_NOT_EXIST_2270102: {
                      return @"预售申请单不存在";
              
        }
        case PoCApiCode_PRESELL_ORDER_STATE_NOT_INIT_2270103: {
                      return @"只有待审批的申请单才能提交审批";
              
        }
        case PoCApiCode_PRESELL_ORDER_NOPO_2270104: {
                      return @"只有申请无PO预售的申请单才能提交审批";
              
        }
        case PoCApiCode_PRESELL_ORDER_MIN_CODE_ERROR_2270105: {
                      return @"可售库存表的可售库存小于申请预支可售数量";
              
        }
        case PoCApiCode_SUPPLIER_CHANNEL_DISTRIBUTION_PARAMS_ILLEGAL_2280000: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_SUPPLIER_CHANNEL_BATCH_STOCK_NOT_FOUND_2280001: {
                      return @"找不到批次库存记录";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_PARAMS_ILLEGAL_2290000: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_RECEIVE_ROUTE_ERROR_2290001: {
                      return @"接收清关路由异常";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_ORDER_NOT_EXIST_ERROR_2290002: {
                      return @"调用清关接口异常，出库单不存在";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_ORDER_NOT_MERCHANT_ERROR_2290003: {
                      return @"调用清关接口异常，出库单不属于该商户";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_DECLARATION_NULL_ERROR_2290004: {
                      return @"调用清关接口异常，出库单没有申报信息";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_LINE_NULL_ERROR_2290005: {
                      return @"调用清关接口异常，出库单没有找到对应线路";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_LINE_NOT_NEED_CARD_ERROR_2290006: {
                      return @"调用清关接口异常，出库单对应线路不需要身份证信息";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_CARD_INFO_INCOMPLETE_ERROR_2290007: {
                      return @"调用清关接口异常，未获取到身份信息";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_LOGISTICS_NULL_ERROR_2290008: {
                      return @"调用清关接口异常，该订单线路未配置清关信息";
              
        }
        case PoCApiCode_CUSTOMS_CLEARANCE_SERVICE_LOGISTICSNID_ERROR_2290009: {
                      return @"调用清关接口异常，清关公司编码错误";
              
        }
        case PoCApiCode_OPENAPI_SERVICE_STOCKOUT_ORDER_NOT_EXIST_2300001: {
                      return @"出库单不存在";
              
        }
        case PoCApiCode_OPENAPI_SERVICE_PARAM_ILLEGAL_2300002: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_OPENAPI_SERVICE_STATE_CHANGE_ERROR_2300003: {
                      return @"订单状态流转异常";
              
        }
        case PoCApiCode_OPENAPI_SERVICE_MAIL_NO_NOT_ALL_EMPTY_2300004: {
                      return @"订单运单信息不能为空";
              
        }
        case PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_NOT_FOUND_ERROR_2400001: {
                      return @"未找到价格调整申请单记录";
              
        }
        case PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_START_GREATER_THAN_END_ERROR_2400002: {
                      return @"活动价的生效开始时间必须小于生效结束时间";
              
        }
        case PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_EXIST_WAIT_APPROVE_ERROR_2400003: {
                      return @"存在待审批状态的价格调整申请单记录, 需要先完成该申请单的审批";
              
        }
        case PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_EXIST_TIME_PERIOD_OVERLAP_ERROR_2400004: {
                      return @"存在生效时间段重复的价格调整申请单记录, 请修改生效起止时间";
              
        }
        case PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_STATE_NOT_WAIT_APPROVE_ERROR_2400005: {
                      return @"价格调整申请单的状态不为待审批, 无法操作审批";
              
        }
        case PoCApiCode_PROVIDER_SKU_ACTIVITY_PRICE_ADJUST_DATA_DUPLICATE_ERROR_2400006: {
                      return @"已存在相同的活动价格调整申请记录, 无法操作新增";
              
        }
        case PoCApiCode_PROVIDER_SKU_SUPPLY_PRICE_ADJUST_DATA_DUPLICATE_ERROR_2400007: {
                      return @"已存在待审核的供货价格调整申请记录, 无法操作新增";
              
        }
        case PoCApiCode_PROVIDER_SKU_SUPPLY_PRICE_ADJUST_NOT_FOUND_ERROR_2400008: {
                      return @"未找到价格调整申请单记录";
              
        }
        case PoCApiCode_LINE_IS_CLOSED_2410001: {
                      return @"路线被关闭";
              
        }
        case PoCApiCode_DATA_PREPARE_ERROR_2410002: {
                      return @"出库单下发数据准备异常";
              
        }
        case PoCApiCode_STOCKOUT_DATA_IS_NULL_2410003: {
                      return @"出库单相关参数实体为空";
              
        }
        case PoCApiCode_ORDER_FEE_SPLIT_ERROR_2410004: {
                      return @"税费运费拆分逻辑异常";
              
        }
        case PoCApiCode_CCB_ORDER_CREATE_ERROR_2410005: {
                      return @"出库单下发清关公司异常";
              
        }
        case PoCApiCode_CONFIRM_REAL_NAME_ERROR_2410006: {
                      return @"收货人的实名认证失败";
              
        }
        case PoCApiCode_SKU_FOREIGN_NAME_NOT_NULL_2410007: {
                      return @"商品外文名称不能为空";
              
        }
        case PoCApiCode_WH_BATCH_STOCK_NOT_ENOUGH_2410008: {
                      return @"仓库返回商品批次库存数量不够";
              
        }
        case PoCApiCode_DATA_PREPARE_CALL_USER_SERVICE_FAIL_2410009: {
                      return @"出库单下发数据准备调用用户系统服务异常";
              
        }
        case PoCApiCode_ID_CARD_PHOTO_NOT_UPLOADED_2410010: {
                      return @"出库单下发数据准备收货人身份证未上传异常";
              
        }
        case PoCApiCode_ID_CARD_PHOTO_NOT_AUDITED_2410011: {
                      return @"出库单下发数据准备收货人身份证未审核异常";
              
        }
        case PoCApiCode_ID_CARD_PHOTO_AUDIT_NOT_PASS_2410012: {
                      return @"出库单下发数据准备收货人身份证审核未通过异常";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_OPT_PARAM_ILLEGAL_2420001: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_CREATE_ERROR_2420010: {
                      return @"创建属性模板失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_QUERY_ERROR_2420011: {
                      return @"查询属性模板失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_ALEARY_EXIST_2420012: {
                      return @"属性模板已经存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_KEY_QUERY_ERROR_2420013: {
                      return @"查询属性项失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_NOT_EXIST_2420014: {
                      return @"属性值不存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_KEY_NOT_EXIST_2420015: {
                      return @"属性项不存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_KEY_CREATE_ERROR_2420016: {
                      return @"属性项新建失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_CREATE_ERROR_2420017: {
                      return @"属性值新建失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_KEY_EXIST_2420018: {
                      return @"属性项已存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_EXIST_2420019: {
                      return @"属性值已存在";
              
        }
        case PoCApiCode_SKU_SELECT_OPT_PARAM_ILLEGAL_2430001: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_SKU_SELECT_OPT_OBJ_CONVERT_ERROR_2430002: {
                      return @"对象转换异常";
              
        }
        case PoCApiCode_SKU_SELECT_CREATE_RECORD_ERROR_2430003: {
                      return @"选品工具创建清单异常";
              
        }
        case PoCApiCode_SKU_SELECT_STATE_CHANGE_ERROR_2430004: {
                      return @"选品详情状态流转异常";
              
        }
        case PoCApiCode_SKU_SELECT_SKUID_IS_EMPTH_2430005: {
                      return @"SKUID不能为空";
              
        }
        case PoCApiCode_SKU_SELECT_QUERY_BY_PAGE_ERROR_2430006: {
                      return @"分页查询选品详情异常";
              
        }
        case PoCApiCode_SKU_SELECT_CROSS_RATE_EMPTY_2430007: {
                      return @"类目跨境消费税或增值税税率为空";
              
        }
        case PoCApiCode_SKU_SELECT_CATEGORY_GROSSPROFIT_EMPTY_2430008: {
                      return @"类目毛利率类型不准确或为空";
              
        }
        case PoCApiCode_UNKNOWN_ERROR_2500001: {
                      return @"系统内部异常";
              
        }
        case PoCApiCode_PARAMS_ILLEGAL_2500002: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_OPEN_CONCURRENT_ERR_2500003: {
                      return @"系统并发异常";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_EXIST_ERR_2500009: {
                      return @"该订单已创建过出库单";
              
        }
        case PoCApiCode_NO_REGISTER_WAREHOUSE_CODE_ERR_2500010: {
                      return @"未注册的仓库编码";
              
        }
        case PoCApiCode_UNUSABLE_WAREHOUSE_CODE_ERR_2500011: {
                      return @"不可用的仓库编码";
              
        }
        case PoCApiCode_STOCKOUT_ORDER_NOT_EXIST_ERR_2500012: {
                      return @"订单不存在";
              
        }
        case PoCApiCode_CURRENT_STATE_CANNOT_CANCEL_ERR_2500013: {
                      return @"订单已出库不允许取消";
              
        }
        case PoCApiCode_CURRENT_STATE_CANNOT_RECREATE_ERR_2500014: {
                      return @"订单已出库不允许取消";
              
        }
        case PoCApiCode_ONE_TIME_QUERY_NUM_OVER_LIMIT_ERR_2500015: {
                      return @"一次性查询订单量不能大于500";
              
        }
        case PoCApiCode_PARAMS_SHOP_ID_EMPTY_ERR_2500100: {
                      return @"店铺ID不能为空";
              
        }
        case PoCApiCode_PARAMS_COMPANY_CODE_EMPTY_ERR_2500101: {
                      return @"企业代码不能为空";
              
        }
        case PoCApiCode_PARAMS_COMPANY_NAME_EMPTY_ERR_2500102: {
                      return @"企业名称不能为空";
              
        }
        case PoCApiCode_PARAMS_WAREHOUSE_CODE_EMPTY_ERR_2500104: {
                      return @"仓库编码不能为空";
              
        }
        case PoCApiCode_PARAMS_BUYER_ACCOUNT_EMPTY_ERR_2500105: {
                      return @"购物网站买家账号不能为空";
              
        }
        case PoCApiCode_PARAMS_BUYER_PHONE_EMPTY_ERR_2500106: {
                      return @"购物网站买家手机号不能为空";
              
        }
        case PoCApiCode_PARAMS_PAYMENT_NO_EMPTY_ERR_2500107: {
                      return @"支付流水号不能为空";
              
        }
        case PoCApiCode_PARAMS_PAY_ID_NO_EMPTY_ERR_2500108: {
                      return @"买家身份证号码不能为空";
              
        }
        case PoCApiCode_PARAMS_PAY_NAME_EMPTY_ERR_2500109: {
                      return @"买家真实姓名不能为空";
              
        }
        case PoCApiCode_PARAMS_CARRIER_CODE_EMPTY_ERR_2500110: {
                      return @"国内物流承运商编码不能为空";
              
        }
        case PoCApiCode_PARAMS_CONSIGNEE_NAME_EMPTY_ERR_2500111: {
                      return @"收货人名称不能为空";
              
        }
        case PoCApiCode_PARAMS_CONSIGNEE_PROVINCE_EMPTY_ERR_2500112: {
                      return @"收货人地址（省）不能为空";
              
        }
        case PoCApiCode_PARAMS_CONSIGNEE_CITY_EMPTY_ERR_2500113: {
                      return @"收货人地址（市）不能为空";
              
        }
        case PoCApiCode_PARAMS_CONSIGNEE_DISTRICT_EMPTY_ERR_2500114: {
                      return @"收货人地址（区）不能为空";
              
        }
        case PoCApiCode_PARAMS_CONSIGNEE_ADDRESS_EMPTY_ERR_2500115: {
                      return @"收货人地址（详细地址）不能为空";
              
        }
        case PoCApiCode_PARAMS_CONSIGNEE_TELEPHONE_EMPTY_ERR_2500116: {
                      return @"收货人电话号码不能为空";
              
        }
        case PoCApiCode_PARAMS_SKU_DETAIL_EMPTY_ERR_2500117: {
                      return @"订单商品明细不能为空";
              
        }
        case PoCApiCode_NO_REGISTER_SHOP_ID_ERR_2500118: {
                      return @"未注册的企业代码";
              
        }
        case PoCApiCode_ORDER_ILLEGAL_AMOUNT_ERR_2500119: {
                      return @"订单相关金额必须大于等于0";
              
        }
        case PoCApiCode_ORDER_SKU_ILLEGAL_AMOUNT_ERR_2500120: {
                      return @"订单下商品相关金额必须大于等于0";
              
        }
        case PoCApiCode_ORDER_SKU_COUNT_ILLEGAL_ERR_2500121: {
                      return @"订单下商品购买数量必须大于0";
              
        }
        case PoCApiCode_ORDER_GOODS_AMOUNT_ILLEGAL_ERR_2500122: {
                      return @"订单货物价值必须等于实付金额+税金+优惠金额+运费";
              
        }
        case PoCApiCode_REAL_NAME_AUTHENTICATION_FAIL_ERR_2500123: {
                      return @"实名认证失败";
              
        }
        case PoCApiCode_TWS_MERCHANTID_EMPTY_ERROR_2600001: {
                      return @"集货回传-商户编码为空 ";
              
        }
        case PoCApiCode_TWS_ORDERID_ERROR_2600002: {
                      return @"集货回传-出库单ID数值错误 ";
              
        }
        case PoCApiCode_TWS_DATE_ERROR_2600003: {
                      return @"集货-日期错误 ";
              
        }
        case PoCApiCode_TWS_WEIGHT_ERROR_2600004: {
                      return @"集货回传-重量值错误";
              
        }
        case PoCApiCode_TWS_BILLNO_EMPTY_ERROR_2600005: {
                      return @"集货回传-提货单号为空";
              
        }
        case PoCApiCode_TWS_ORDER_NOT_EXIST_ERROR_2600006: {
                      return @"集货回传-订单不存在";
              
        }
        case PoCApiCode_TWS_ROUTE_EMPTY_ERROR_2600007: {
                      return @"集货回传-路由信息为空";
              
        }
        case PoCApiCode_TWS_ROUTE_DATE_ERROR_2600008: {
                      return @"集货回传-路由时间错误";
              
        }
        case PoCApiCode_TWS_ROUTE_CODE_ERROR_2600009: {
                      return @"集货回传-路由编码为空";
              
        }
        case PoCApiCode_TWS_ROUTE_CITY_ERROR_2600010: {
                      return @"集货回传-路由城市为空";
              
        }
        case PoCApiCode_TWS_ROUTE_DESCRIPTION_ERROR_2600011: {
                      return @"集货回传-路由详情为空";
              
        }
        case PoCApiCode_TWS_SAVE_OUT_ERROR_2600012: {
                      return @"集货-丰趣海淘保存出库信息失败";
              
        }
        case PoCApiCode_TWS_MERCHANT_NOT_EXIST_2600013: {
                      return @"集货-商户编码不存在";
              
        }
        case PoCApiCode_TWS_DATE_ORDER_ERROR_2600014: {
                      return @"集货查询-开始日期大于结束日期";
              
        }
        case PoCApiCode_TWS_ORDER_STATE_EMPTY_2600015: {
                      return @"集货查询-订单状态内容为空";
              
        }
        case PoCApiCode_TWS_ORDER_STATE_ERROR_2600016: {
                      return @"集货查询-订单状态值错误";
              
        }
        case PoCApiCode_SUPPLIER_MERCHANTID_EMPTY_ERROR_2700001: {
                      return @"供货商回传-商户编码为空 ";
              
        }
        case PoCApiCode_SUPPLIER_ORDERID_ERROR_2700002: {
                      return @"供货商回传-出库单ID数值错误 ";
              
        }
        case PoCApiCode_SUPPLIER_DATE_ERROR_2700003: {
                      return @"供货商-日期错误 ";
              
        }
        case PoCApiCode_SUPPLIER_WEIGHT_ERROR_2700004: {
                      return @"供货商回传-重量值错误 ";
              
        }
        case PoCApiCode_SUPPLIER_BILLNO_EMPTY_ERROR_2700005: {
                      return @"供货商回传-提货单号为空 ";
              
        }
        case PoCApiCode_SUPPLIER_ORDER_NOT_EXIST_ERROR_2700006: {
                      return @"供货商回传-订单不存在 ";
              
        }
        case PoCApiCode_SUPPLIER_ROUTE_EMPTY_ERROR_2700007: {
                      return @"供货商回传-路由信息为空 ";
              
        }
        case PoCApiCode_SUPPLIER_ROUTE_DATE_ERROR_2700008: {
                      return @"供货商回传-路由时间错误 ";
              
        }
        case PoCApiCode_WMS_ROUTE_CODE_ERROR_2700009: {
                      return @"供货商回传-路由编码为空 ";
              
        }
        case PoCApiCode_SUPPLIER_ROUTE_CITY_ERROR_2700010: {
                      return @"供货商回传-路由城市为空 ";
              
        }
        case PoCApiCode_SUPPLIER_ROUTE_DESCRIPTION_ERROR_2700011: {
                      return @"供货商回传-路由详情为空 ";
              
        }
        case PoCApiCode_SUPPLIER_SAVE_OUT_ERROR_2700012: {
                      return @"供货商-丰趣海淘保存出库信息失败 ";
              
        }
        case PoCApiCode_SUPPLIER_MERCHANT_NOT_EXIST_2700013: {
                      return @"供货商-商户编码不存在 ";
              
        }
        case PoCApiCode_SUPPLIER_DATE_ORDER_ERROR_2700014: {
                      return @"供货商查询-开始日期大于结束日期 ";
              
        }
        case PoCApiCode_SUPPLIER_ORDER_STATE_EMPTY_2700015: {
                      return @"供货商查询-订单状态内容为空 ";
              
        }
        case PoCApiCode_SUPPLIER_ORDER_STATE_ERROR_2700016: {
                      return @"供货商查询-订单状态值错误 ";
              
        }
        case PoCApiCode_SUPPLIER_ORDER_PDF_REGION_ERROR_2700017: {
                      return @"供货商查询PDF面单-异常 ";
              
        }
        case PoCApiCode_SUPPLIER_SKU_SYNC_ERROR_2700018: {
                      return @"供货商同步sku库存-同步数据为空";
              
        }
        case PoCApiCode_SUPPLIER_DATE_OVER_ERROR_2700019: {
                      return @"供货商订单查询时间跨度不能超过一个月 ";
              
        }
        case PoCApiCode_SUPPLIER_SKUID_EMPTY_EMPTY_2700020: {
                      return @"供货商回传商品库存skuID或thirdSkuid不能同时为空 ";
              
        }
        case PoCApiCode_SUPPLIER_OPERATE_TYPE_ERROR_2700021: {
                      return @"供货商更新商品库存-操作类型错误 ";
              
        }
        case PoCApiCode_SUPPLIER_OPERATE_COUNT_ERROR_2700022: {
                      return @"供货商更新商品库存-操作数量小于零 ";
              
        }
        case PoCApiCode_SUPPLIER_QUERY_COUNT_ERROR_2700023: {
                      return @"供货商查询商品库存-实物库存记录不存在 ";
              
        }
        case PoCApiCode_SUPPLIER_ORDER_PDF_INFO_ERROR_2700024: {
                      return @"供货商获取PDF面单信息-异常";
              
        }
        case PoCApiCode_SUPPLIER_BIZID_ERROR_2700025: {
                      return @"供货商回传-子订单ID数值错误 ";
              
        }
        case PoCApiCode_SKU_SCORE_INNER_ERROR_2800001: {
                      return @"系统内部异常";
              
        }
        case PoCApiCode_SKU_SCORE_PARAMS_ILLEGAL_2800002: {
                      return @"非法参数";
              
        }
        case PoCApiCode_SKU_ACTUALSTOCK_NOT_EXIST_2800003: {
                      return @"SKU实物库存不存在";
              
        }
        case PoCApiCode_STOCK_ADJUST_ORDER_INNER_EXCEPTION_2801001: {
                      return @"库存调整系统内部异常";
              
        }
        case PoCApiCode_STOCK_ADJUST_ORDER_PARAMS_ILLEGAL_2801002: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_STOCK_ADJUST_ORDER_FREEZE_FAILED_2801003: {
                      return @"冻结失败";
              
        }
        case PoCApiCode_STOCK_ADJUST_ORDER_UNFREEZE_FAILED_2801004: {
                      return @"解冻失败";
              
        }
        case PoCApiCode_STOCK_ADJUST_WEAR_STOCK_NOT_ENOUGH_2801005: {
                      return @"坏品库存不足";
              
        }
        case PoCApiCode_SPU_PARAM_ILLEGAL_ERROR_2900001: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_SPU_CREATE_ERROR_ERROR_2900002: {
                      return @"SPU创建异常";
              
        }
        case PoCApiCode_SPU_UPDATE_SKU_ERROR_ERROR_2900003: {
                      return @"SKU更新异常";
              
        }
        case PoCApiCode_SPU_CREATE_OR_UPDATE_SPU_ERROR_ERROR_2900004: {
                      return @"SPU创建或者更新异常";
              
        }
        case PoCApiCode_SPU_CREATE_OR_UPDATE_SKU_EMPTY_ERROR_2900005: {
                      return @"SPU创建或者时SKU不能为空";
              
        }
        case PoCApiCode_SPU_SYNC_BASIC_INFO_TO_GOODS_EXECPTION_2900006: {
                      return @"同步SPU基本信息到商品系统异常";
              
        }
        case PoCApiCode_SPU_SYNC_DETAIL_INFO_TO_GOODS_EXECPTION_2900007: {
                      return @"同步SPU详情信息到商品系统异常";
              
        }
        case PoCApiCode_SPU_SYNC_FULL_INFO_TO_GOODS_EXECPTION_2900008: {
                      return @"同步SPU全部信息到商品系统异常";
              
        }
        case PoCApiCode_PAY_AMOUNT_ERR_3000001: {
                      return @"支付金额非法";
              
        }
        case PoCApiCode_PAY_ORDER_STATE_CANNTPAY_ERR_3000002: {
                      return @"支付状态不允许支付";
              
        }
        case PoCApiCode_REFUND_AMOUNT_ERR_3000003: {
                      return @"退款金额非法";
              
        }
        case PoCApiCode_OLD_ORDER_NOTEXIST_ERR_3000004: {
                      return @"原订单不存在";
              
        }
        case PoCApiCode_OLD_ORDER_STATE_CANNT_REFUND_ERR_3000005: {
                      return @"原订单状态不允许退款";
              
        }
        case PoCApiCode_PAY_USER_ORDER_ERR_3000007: {
                      return @"不支持该支付方式";
              
        }
        case PoCApiCode_REFUND_PAYTYPE_UNSUPPORTED_3000008: {
                      return @"目前尚不支持该种支付类型的退款";
              
        }
        case PoCApiCode_PAYTYPE_UNSUPPORTED_3000009: {
                      return @"目前尚不支持该种支付类型";
              
        }
        case PoCApiCode_LOADBILL_PAYTYPE_UNSUPPORTED_3000010: {
                      return @"目前尚不支持该支付类型下载对账文件";
              
        }
        case PoCApiCode_ALIPAY_WAP_REQUEST_AUTH_ERR_3000020: {
                      return @"到支付宝请求wap支付授权失败";
              
        }
        case PoCApiCode_USER_BALANCE_NOT_ENOUGH_3000030: {
                      return @"用户账户余额不足，请充值或更换支付卡后再支付";
              
        }
        case PoCApiCode_ORDER_PAID_3000040: {
                      return @"商户订单已支付，无需重复操作";
              
        }
        case PoCApiCode_ORDER_CLOSED_3000050: {
                      return @"当前订单已关闭，无法支付";
              
        }
        case PoCApiCode_SERVER_ERROR_3000060: {
                      return @"服务端异常";
              
        }
        case PoCApiCode_CONCURRENT_PAYREQUEST_REFUSED_3000070: {
                      return @"订单并发支付请求被拒绝";
              
        }
        case PoCApiCode_PARAMETER_ERROR_3000080: {
                      return @"参数错误";
              
        }
        case PoCApiCode_PAY_ORDER_NOT_EXIST_3000090: {
                      return @"付款订单不存在";
              
        }
        case PoCApiCode_UNKNOWN_ERROR_3000100: {
                      return @"未知错误";
              
        }
        case PoCApiCode_ORDER_SUCCESS_4000001: {
                      return @"SUCCESS";
              
        }
        case PoCApiCode_ORDER_FLOW_CONTINUE_4000002: {
                      return @"FLOW_CONTINUE";
              
        }
        case PoCApiCode_ORDER_FLOW_STOP_4000003: {
                      return @"FLOW_STOP";
              
        }
        case PoCApiCode_ORDER_UNKNOW_ERROR_4000100: {
                      return @"order unkown error";
              
        }
        case PoCApiCode_REPOSITORY_STORER_NOT_DEF_4000101: {
                      return @"仓储服务未定义";
              
        }
        case PoCApiCode_ORDER_REC_ADDR_INEXISTENCE_4000200: {
                      return @"订单地址不存在";
              
        }
        case PoCApiCode_ORDER_REC_ADDR_STATUS_ERROR_4000300: {
                      return @"订单地址状态错误";
              
        }
        case PoCApiCode_ORDER_PRODUCTS_INFO_CHANGE_4000400: {
                      return @"订单商品信息改变";
              
        }
        case PoCApiCode_EXCEED_ACTIVITY_LIMIT_NUM_4000401: {
                      return @"购买数量超过活动每人限购数量";
              
        }
        case PoCApiCode_DISCOUNT_EXCEED_TOTALPRICE_4000402: {
                      return @"折扣金额大于订单总金额";
              
        }
        case PoCApiCode_EXCEED_ACTIVITY_COUNT_4000403: {
                      return @"购买数量超过活动剩余库存";
              
        }
        case PoCApiCode_ACTIVITY_FINISHED_4000404: {
                      return @"活动已经结束";
              
        }
        case PoCApiCode_DISCOUNT_TOO_LARGE_4000405: {
                      return @"折扣金额过大，超过订单总金额的30%！";
              
        }
        case PoCApiCode_ACTIVITY_PASSED_NOTIFY_4000406: {
                      return @"通过活动,但是需要通知用户！";
              
        }
        case PoCApiCode_TOTALPRICE_EXTEND_LIMIT_4000412: {
                      return @"商品金额超过订单限额";
              
        }
        case PoCApiCode_ORDER_STOCK_INSUFFICIENT_4000500: {
                      return @"订单商品库存不足";
              
        }
        case PoCApiCode_ORDER_PRODUCT_OVER_LIMIT_4000600: {
                      return @"订单商品超过限额";
              
        }
        case PoCApiCode_ORDER_AMOUNT_CHANGE_4000700: {
                      return @"订单商品金额改变";
              
        }
        case PoCApiCode_ORDER_STATUS_CANNOT_CANCEL_4000800: {
                      return @"订单状态不能取消";
              
        }
        case PoCApiCode_ORDER_STATUS_CANNOT_CONFIRM_4000900: {
                      return @"子订单状态不符合确认操作";
              
        }
        case PoCApiCode_ORDER_REFUND_GT_TOTAL_4001000: {
                      return @"退款金额大于实付金额";
              
        }
        case PoCApiCode_ORDER_REFUND_REASON_NULL_4001100: {
                      return @"退款原因不能为空";
              
        }
        case PoCApiCode_SUB_ORDER_STATUS_ERROR_4001200: {
                      return @"子订单状态不满足移入操作";
              
        }
        case PoCApiCode_SUB_ORDER_MOVE_NUM_OVERSTEP_4001300: {
                      return @"子订单移动商品数目越界";
              
        }
        case PoCApiCode_SUB_ORDER_NOT_EMPTY_4001400: {
                      return @"子订单内商品数目不为空";
              
        }
        case PoCApiCode_CALL_PAYSERVICE_ERROR_4001500: {
                      return @"请求支付系统失败";
              
        }
        case PoCApiCode_CALL_PAYSERVICE_ADDRESS_ERROR_4001501: {
                      return @"";
              
        }
        case PoCApiCode_CALL_PAYSERVICE_ORDER_ERROR_4001502: {
                      return @"";
              
        }
        case PoCApiCode_CALL_PAYSERVICE_AMOUNT_ERROR_4001503: {
                      return @"";
              
        }
        case PoCApiCode_CALL_PAYSERVICE_ORDER_STATE_ERROR_4001504: {
                      return @"";
              
        }
        case PoCApiCode_SEND_ORDER_LOGISTICS_ERROR_4001600: {
                      return @"向物流下单失败";
              
        }
        case PoCApiCode_LOGISTICSNO_DUPLICATE_4001601: {
                      return @"该物流单已经成功发货，不要重复发货！";
              
        }
        case PoCApiCode_SUB_ORDER_NOT_EXISTS_4001610: {
                      return @"获取不到子订单";
              
        }
        case PoCApiCode_SUB_ORDER_LACK_ATTR_4001611: {
                      return @"子订单缺少必要信息:线路id,短地址,创建时间";
              
        }
        case PoCApiCode_ORDER_NOT_EXISTS_4001620: {
                      return @"获取不到订单";
              
        }
        case PoCApiCode_ORDER_RECV_INFO_LACK_ATTR_4001621: {
                      return @"收货人缺少必要信息：证件类型,号码,证件正反照片";
              
        }
        case PoCApiCode_ORDER_PRODUCT_NUM_NOT_ZERO_4001622: {
                      return @"订单中商品的数量不能为0";
              
        }
        case PoCApiCode_ORDER_ITEM_NOT_EXISTS_4001623: {
                      return @"订单中itemId不存在";
              
        }
        case PoCApiCode_ORDER_SPU_NOT_EXISTS_4001624: {
                      return @"订单中spu不存在";
              
        }
        case PoCApiCode_ORDER_PRODUCT_LACK_ATTR_4001625: {
                      return @"订单中商品的其他关联信息缺失";
              
        }
        case PoCApiCode_ORDER_ADDRESS_CHANGED_4001626: {
                      return @"订单收货地址发生变化";
              
        }
        case PoCApiCode_ORDER_PRICE_TOO_LOW_4001627: {
                      return @"订单价格过低";
              
        }
        case PoCApiCode_ORDER_ADDRESS_CANNOT_EDIT_4001628: {
                      return @"订单地址无法编辑修改";
              
        }
        case PoCApiCode_ORDER_CONTROL_CANNOT_AUDIT_4001629: {
                      return @"订单被控制为不能审核通过";
              
        }
        case PoCApiCode_USER_ADDRESSINFO_NOT_EXISTS_4001630: {
                      return @"收货人信息不存在";
              
        }
        case PoCApiCode_USER_ADDRESSINFO_LACK_ATTR_4001631: {
                      return @"买家收货地址缺少必要信息：国家,省,市,详细地址";
              
        }
        case PoCApiCode_GET_SUBORDER_FROM_BUYER_ERROR_4001640: {
                      return @"从子订单获取包裹信息失败";
              
        }
        case PoCApiCode_INTRGAL_USE_ERROR_4001641: {
                      return @"积分使用失败";
              
        }
        case PoCApiCode_GET_SPUINFO_FROMCOUNTRY_IS_NULL_4001650: {
                      return @"商品货源地信息不能为空";
              
        }
        case PoCApiCode_CACHE_TIME_OUT_4001651: {
                      return @"缓存失效，请重新刷新页面";
              
        }
        case PoCApiCode_GET_SPUINFO_CATEGORIES_IS_NULL_4001660: {
                      return @"获取商品海关类目为空";
              
        }
        case PoCApiCode_ORDER_NOT_EXIST_4001700: {
                      return @"满足查询条件的订单不存在";
              
        }
        case PoCApiCode_USER_SUB_ORDER_NOT_EXISTS_4001710: {
                      return @"满足查询条件的用户子订单不存在";
              
        }
        case PoCApiCode_SUB_TYPE_CANNOT_REMOVE_4001800: {
                      return @"子订单类型不允许删除";
              
        }
        case PoCApiCode_ORDER_REFUND_USER_NOT_MATCH_4001900: {
                      return @"退款用户和订单用户不匹配";
              
        }
        case PoCApiCode_GET_PoCHT_USER_ERROR_4001901: {
                      return @"开放平台获取用户号失败";
              
        }
        case PoCApiCode_ORDER_REFUNDPRICE_NOT_MATCH_4001910: {
                      return @"退款金额和订单记录退款不匹配";
              
        }
        case PoCApiCode_ORDER_PAYSTATUS_NOT_PAYED_4001920: {
                      return @"订单支付状态不是已支付";
              
        }
        case PoCApiCode_ORDER_REFUND_RETURN_NULL_4001930: {
                      return @"订单请求退款调用支付系统返回结果空";
              
        }
        case PoCApiCode_ORDER_RECEIVERINFO_NULL_4002110: {
                      return @"根据收货人id查询不到收货人相关信息";
              
        }
        case PoCApiCode_ORDER_RECEIVER_CHECK_FALSE_4002120: {
                      return @"订单的收货人身份审核不未过";
              
        }
        case PoCApiCode_ORDER_SEND_LOGISTICS_FAILED_4002130: {
                      return @"调用订单发物流接口失败";
              
        }
        case PoCApiCode_ORDER_GET_LOGISTICS_LINE_NULL_4002200: {
                      return @"子订单获取物流线路信息为空";
              
        }
        case PoCApiCode_ORDER_STARTPOINT_INCONSISTENT_4002300: {
                      return @"购买的多个商品货源地不一致";
              
        }
        case PoCApiCode_ORDER_PRODUCT_SHAPE_INCONSISTENT_4002400: {
                      return @"购买的多个商品的商品形态不一致";
              
        }
        case PoCApiCode_ORDER_PRODUCT_PAYTYPE_NULL_4002500: {
                      return @"购买的商品支付卡类型为空";
              
        }
        case PoCApiCode_ORDER_PRODUCT_NOT_IN_RANGE_4002600: {
                      return @"购买的商品不在配送范围内";
              
        }
        case PoCApiCode_SPECIAL_PRODUCT_4002601: {
                      return @"特惠商品";
              
        }
        case PoCApiCode_SPECIAL_ACTIVITY_4002602: {
                      return @"特惠活动商品";
              
        }
        case PoCApiCode_ORDER_PRODUCT_STATUS_NOT_ON_SALE_4002700: {
                      return @"购买的商品不是上架状态";
              
        }
        case PoCApiCode_ORDER_STATUS_CANNOT_EDIT_4002800: {
                      return @"订单所处状态不能运营修改";
              
        }
        case PoCApiCode_ORDER_EDIT_NO_CHANGE_4002900: {
                      return @"运营订单修改，请求修改数据与原有订单数据相比未发生变化";
              
        }
        case PoCApiCode_ORDER_PROMOTION_ALREADY_OVER_4002901: {
                      return @"活动已经结束";
              
        }
        case PoCApiCode_ORDER_PRESELL_PREPAY_ALREADY_OVER_4002902: {
                      return @"当前预售活动，支付定金时间已过，已经不能买了";
              
        }
        case PoCApiCode_ILLEGLE_ARGUMENT_4100600: {
                      return @"请求参数有误";
              
        }
        case PoCApiCode_LOGISTIC_NO_DUP_4100601: {
                      return @"请求参数有误";
              
        }
        case PoCApiCode_ORDER_CANNOT_DELETE_4100602: {
                      return @"此订单无法被删除";
              
        }
        case PoCApiCode_ORDER_NOT_PAYED_4100603: {
                      return @"此订单不是已支付状态";
              
        }
        case PoCApiCode_ORDER_REFUND_ERROR_4100604: {
                      return @"订单申请退款错误";
              
        }
        case PoCApiCode_PARTNER_CANNOT_REFUND_4100605: {
                      return @"商户不允许发起退款";
              
        }
        case PoCApiCode_ORDER_UPDATE_FAILED_4100700: {
                      return @"订单更新错误";
              
        }
        case PoCApiCode_ORDER_CANCEL_USER_NOT_MATCH_4100800: {
                      return @"订单取消用户和订单用户不匹配";
              
        }
        case PoCApiCode_ERROR_GET_LINE_INFO_4100900: {
                      return @"获取物流路线信息失败";
              
        }
        case PoCApiCode_COUPON_USER_ERROR_4100901: {
                      return @"优惠券使用失败！";
              
        }
        case PoCApiCode_COUPON_TIME_ERROR_4100902: {
                      return @"优惠券不在可使用的时间范围内！";
              
        }
        case PoCApiCode_COUPON_CHANNEL_ERROR_4100903: {
                      return @"优惠券不能在该渠道下使用！";
              
        }
        case PoCApiCode_COUPON_APPLICATION_ERROR_4100904: {
                      return @"优惠券不能在该终端下使用！";
              
        }
        case PoCApiCode_COUPON_REDUCE_ERROR_4100905: {
                      return @"使用的优惠券不满足满减条件！";
              
        }
        case PoCApiCode_COUPON_AMOUNT_ERROR_4100906: {
                      return @"使用的优惠券金额超过商品总金额的30%！";
              
        }
        case PoCApiCode_NOTIFY_MERCHANT_ERROR_4100907: {
                      return @"通知商户状态变更失败!";
              
        }
        case PoCApiCode_MERCHANT_ORDER_NO_EXISTS_4100908: {
                      return @"商户订单号已存在！";
              
        }
        case PoCApiCode_MERCHANT_REFUND_PRICE_NOT_CORRECT_4100909: {
                      return @"商户退款金额不正确！";
              
        }
        case PoCApiCode_PRODUCT_ID_NOT_EXISTS_4100910: {
                      return @"商品id不存在";
              
        }
        case PoCApiCode_MERCHANT_ORDER_NO_NOT_EXISTS_4100911: {
                      return @"商户订单号不存在!";
              
        }
        case PoCApiCode_PRODUCT_ID_NOT_EXISTS_4100912: {
                      return @"商品id不存在";
              
        }
        case PoCApiCode_ORDER_PACKAGE_MULTI_CANCEL_4100913: {
                      return @"订单包裹重复申请取消";
              
        }
        case PoCApiCode_ORDER_PACKAGE_STATUS_CANT_CANCEL_4100914: {
                      return @"订单包裹状态不允许取消";
              
        }
        case PoCApiCode_ORDER_ADDRESS_NOT_EXISTS_4101000: {
                      return @"订单地址信息不存在";
              
        }
        case PoCApiCode_ORDER_ALREADY_CANCELED_4101100: {
                      return @"订单已经取消";
              
        }
        case PoCApiCode_ORDER_CANCEL_FAILED_4101200: {
                      return @"订单取消失败";
              
        }
        case PoCApiCode_ORDER_PAYMENT_FAILED_4101300: {
                      return @"订单支付状态更新失败";
              
        }
        case PoCApiCode_ORDER_GOODS_NOT_EXISTS_4101400: {
                      return @"订单商品快照不存在";
              
        }
        case PoCApiCode_PARAMETER_ERROR_5000000: {
                      return @"参数错误";
              
        }
        case PoCApiCode_SKU_FOUND_ERROR_5000100: {
                      return @"该商品不存在";
              
        }
        case PoCApiCode_ITEM_DATA_ERROR_5000101: {
                      return @"该商品不存在";
              
        }
        case PoCApiCode_SKUSNAPSHOT_FOUND_ERROR_5000200: {
                      return @"快照未找到";
              
        }
        case PoCApiCode_CREATE_SNAPSHOT_ERROR_5000300: {
                      return @"创建快照错误";
              
        }
        case PoCApiCode_CATEGORY_FOUND_ERROR_5000400: {
                      return @"类目未发现";
              
        }
        case PoCApiCode_SPU_FOUND_ERROR_5000500: {
                      return @"SPU未发现";
              
        }
        case PoCApiCode_BUSINESS_INTERNAL_ERROR_5000600: {
                      return @"业务内部错误";
              
        }
        case PoCApiCode_SKU_SALE_RELATION_FOUND_ERROR_5000700: {
                      return @"该商品不存在";
              
        }
        case PoCApiCode_PRICE_FOUND_ERROR_5000800: {
                      return @"价格API错误";
              
        }
        case PoCApiCode_SPU_SAVE_OR_UPDATE_ERROR_5000900: {
                      return @"创建或更新SPU错误";
              
        }
        case PoCApiCode_RECOMMEND_PRODUCT_FOUND_ERROR_5001000: {
                      return @"获取推荐商品列表错误";
              
        }
        case PoCApiCode_UPDATE_STOCK_ERROR_5001100: {
                      return @"库存更新或者获取失败";
              
        }
        case PoCApiCode_SAVE_OR_UPDATE_SKU_ERROR_5001200: {
                      return @"SKU更新或者获取失败";
              
        }
        case PoCApiCode_SAVE_OR_UPDATE_ATTRIBUTE_ERROR_5001300: {
                      return @"属性更新或者获取失败";
              
        }
        case PoCApiCode_SAVE_OR_UPDATE_BRAND_ERROR_5001400: {
                      return @"品牌更新或者获取失败";
              
        }
        case PoCApiCode_SAVE_OR_UPDATE_SALE_ERROR_5001500: {
                      return @"Sale保存或者更新失败";
              
        }
        case PoCApiCode_SAVE_OR_UPDATE_IMGTAG_ERROR_5001501: {
                      return @"图片标签保存或者更新失败";
              
        }
        case PoCApiCode_FIND_ATTRIBUTE_INFO_ERROR_5001600: {
                      return @"获取属性信息失败";
              
        }
        case PoCApiCode_FIND_BRAND_INFO_ERROR_5001700: {
                      return @"获取品牌信息错误";
              
        }
        case PoCApiCode_VERIFY_IS_WATCH_BRAND_ERROR_5001701: {
                      return @"校验是否收藏该品牌失败";
              
        }
        case PoCApiCode_REPEAT_WATCHING_BRANDS_5001702: {
                      return @"重复收藏品牌";
              
        }
        case PoCApiCode_SAVE_WATCHING_BRAND_ERROR_5001703: {
                      return @"收藏品牌失败!";
              
        }
        case PoCApiCode_CANCEL_WATCHING_BRAND_ERROR_5001704: {
                      return @"取消已收藏的品牌失败!";
              
        }
        case PoCApiCode_FIND_COLLECTED_BRAND_LIST_ERROR_5001705: {
                      return @"获取收藏品牌列表失败!";
              
        }
        case PoCApiCode_FIND_BRAND_BASE_INFO_ERROR_5001706: {
                      return @"获取品牌基本信息错误";
              
        }
        case PoCApiCode_FIND_ALL_BRAND_LIST_ERROR_5001707: {
                      return @"获取所有品牌列表失败!";
              
        }
        case PoCApiCode_FIND_SALE_INFO_ERROR_5001800: {
                      return @"获取su信息失败";
              
        }
        case PoCApiCode_FIND_CHANNEL_STOCK_ERROR_5001900: {
                      return @"获取渠道库存失败";
              
        }
        case PoCApiCode_STORE_MOBILE_PHONE_ERROR_5002000: {
                      return @"到货通知存储信息失败";
              
        }
        case PoCApiCode_SAVE_OR_UPDATE_NATION_ERROR_5002100: {
                      return @"国家更新或者获取失败";
              
        }
        case PoCApiCode_SAVE_OR_UPDATE_CATEGORY_ERROR_5002200: {
                      return @"后台类目更新或者获取失败";
              
        }
        case PoCApiCode_SAVE_OR_UPDATE_CATE_PAGE_ERROR_5002400: {
                      return @"前台类目更新或者获取失败";
              
        }
        case PoCApiCode_CATEGORY_PAGE_ITEMS_ERROR_5002401: {
                      return @"Item前台类目关系添加失败";
              
        }
        case PoCApiCode_DELETE_CATEGORY_PAGE_BY_ITEMID_ERROR_5002402: {
                      return @"删除Item的前台类目关系失败";
              
        }
        case PoCApiCode_DEL_CATE_PAGE_ERROR_5002600: {
                      return @"前台类目删除失败";
              
        }
        case PoCApiCode_SEND_MSG_ERROR_5003000: {
                      return @"发送短信通知失败";
              
        }
        case PoCApiCode_STORE_FEED_BACK_ERROR_5004000: {
                      return @"反馈信息存储失败";
              
        }
        case PoCApiCode_VERIFY_AREA_ERROR_5005000: {
                      return @"校验售卖范围失败";
              
        }
        case PoCApiCode_FIND_POST_ERROR_5006000: {
                      return @"获取邮政编码失败";
              
        }
        case PoCApiCode_GET_LOCK_ERROR_5007000: {
                      return @"获取乐观锁失败";
              
        }
        case PoCApiCode_TRIGGER_DISTRIBUTED_AFFAIRS_ERROR_5008000: {
                      return @"触发分布式事务幂等性";
              
        }
        case PoCApiCode_SINGLE_LOSS_CHANNEL_CHANGE_ERROR_5010000: {
                      return @"SKU的渠道发生了变动";
              
        }
        case PoCApiCode_NO_ENOUGH_STOCK_ERROR_5011000: {
                      return @"库存不足";
              
        }
        case PoCApiCode_ADD_ACTIVITY_ERROR_5012000: {
                      return @"添加活动错误";
              
        }
        case PoCApiCode_REMOVE_ITEMLIST_IN_ACTIVITY_ERROR_5013000: {
                      return @"移除活动中的ITEM列表错误";
              
        }
        case PoCApiCode_DELETE_WHOLE_ACTIVITY_ERROR_5014000: {
                      return @"删除整个活动错误";
              
        }
        case PoCApiCode_UPDATE_ACTIVITY_INFO_ERROR_5015000: {
                      return @"更新活动信息错误";
              
        }
        case PoCApiCode_ADD_ACTIVITY_STOCK_ERROR_5016000: {
                      return @"添加活动库存错误";
              
        }
        case PoCApiCode_DECR_ACTIVITY_STOCK_ERROR_5018000: {
                      return @"减少活动库存错误";
              
        }
        case PoCApiCode_FIND_ACTIVITY_INFO_ERROR_5019000: {
                      return @"获取活动信息失败";
              
        }
        case PoCApiCode_SET_ITEM_PREFERENTIAL_ERROR_5020000: {
                      return @"获取活动信息失败";
              
        }
        case PoCApiCode_SAVE_SONG_ERROR_5021000: {
                      return @"创建歌单或歌曲失败";
              
        }
        case PoCApiCode_IMPORT_SKU_BATCH_ERROR_5022000: {
                      return @"批量导入SKU错误";
              
        }
        case PoCApiCode_SHOP_DOES_NOT_EXIST_5023000: {
                      return @"店铺不存在";
              
        }
        case PoCApiCode_SALES_STOCK_NOT_ENOUGH_5024000: {
                      return @"销售库存不足";
              
        }
        case PoCApiCode_MIX_DISCOUNT_PRODUCT_FOUND_ERROR_5025000: {
                      return @"获取搭配折扣数据错误";
              
        }
        case PoCApiCode_ACTIVITY_TYPE_NOT_BE_SUPPORTED_5026000: {
                      return @"暂不支持此类型活动!";
              
        }
        case PoCApiCode_UPDATE_STOCK_EXPORT_TIMEOUT_5027000: {
                      return @"更新库存时超时";
              
        }
        case PoCApiCode_BATCH_UPDATE_PRICE_FAILURE_5028000: {
                      return @"批量更新价格失败";
              
        }
        case PoCApiCode_FIND_CATEPAGE_ERROR_5029000: {
                      return @"获取前台类目数据错误";
              
        }
        case PoCApiCode_ADD_SKU_INTO_SU_FAILURE_5030000: {
                      return @"添加SKU至SU下失败";
              
        }
        case PoCApiCode_RELOAD_SALE_ATTRIBUTE_FAILURE_5031000: {
                      return @"重新聚合sale的规格属性失败";
              
        }
        case PoCApiCode_CHANNEL_STOCK_NOT_EXIST_5032000: {
                      return @"The channel stock of the sku doesn't exist!";
              
        }
        case PoCApiCode_SUBSCRIBE_PRICE_NOTICE_ERROR_5033000: {
                      return @"降价通知订阅失败";
              
        }
        case PoCApiCode_QUOTA_UPDATE_ERROR_5034000: {
                      return @"ITEM配额更新失败";
              
        }
        case PoCApiCode_RECOVERY_ITEM_ON_SALE_FAILURE_5035000: {
                      return @"恢复ITEM正常销售失败";
              
        }
        case PoCApiCode_WATERMARK_NOT_EXIST_5036000: {
                      return @"该水印不存在";
              
        }
        case PoCApiCode_ITEM_NOT_EXIST_5037000: {
                      return @"该ITEM不存在";
              
        }
        case PoCApiCode_REPEAT_COLLECTING_GOODS_5038000: {
                      return @"重复收藏商品";
              
        }
        case PoCApiCode_VERIFY_IS_COLLECTED_GOODS_ERROR_5039000: {
                      return @"校验是否收藏该商品失败!";
              
        }
        case PoCApiCode_SAVE_COLLECTING_GOODS_ERROR_5040000: {
                      return @"收藏商品失败!";
              
        }
        case PoCApiCode_CANCEL_COLLECTED_GOODS_ERROR_5041000: {
                      return @"取消已收藏的商品失败!";
              
        }
        case PoCApiCode_FIND_COLLECTED_GOODS_LIST_ERROR_5042000: {
                      return @"获取收藏商品列表失败!";
              
        }
        case PoCApiCode_ACTIVITY_NOT_EXIST_5043000: {
                      return @"活动不存在!";
              
        }
        case PoCApiCode_REPEAT_ACTIVITY_5044000: {
                      return @"存在重复的活动ID!";
              
        }
        case PoCApiCode_MASTER_ITEM_NOT_EXIST_5045000: {
                      return @"搭配折扣的主ITEM不存在!";
              
        }
        case PoCApiCode_INTERFACE_REPEAT_CALL_5046000: {
                      return @"接口重复调用!";
              
        }
        case PoCApiCode_WAREHOUSE_NOT_EXIST_5047000: {
                      return @"仓库不存在!";
              
        }
        case PoCApiCode_QUERY_CACHE_INFO_ERROR_5048000: {
                      return @"查询缓存信息错误!";
              
        }
        case PoCApiCode_THREAD_INTERRUPTED_EXCEPTION_5049000: {
                      return @"线程中断异常!";
              
        }
        case PoCApiCode_THREAD_EXECUTION_EXCEPTION_5050000: {
                      return @"获取子线程执行结果失败!";
              
        }
        case PoCApiCode_TAG_CRUD_PARAMS_ILLEGAL_5051000: {
                      return @"标签管理参数不合法!";
              
        }
        case PoCApiCode_TAG_END_TIME_EXPIRED_5052000: {
                      return @"标签结束时间已过期!";
              
        }
        case PoCApiCode_TAG_ITEM_MAIN_IMAGE_EMPTY_5053000: {
                      return @"商品主图不存在!";
              
        }
        case PoCApiCode_TAG_SAVE_OR_UPDATE_ERROR_5054000: {
                      return @"新增或修改标签异常!";
              
        }
        case PoCApiCode_TAG_TIME_CONFLICT_ERROR_5055000: {
                      return @"标签有效时间冲突!";
              
        }
        case PoCApiCode_TAG_GENERATE_IMAGE_TAG_ERROR_5056000: {
                      return @"生成图片标签失败!";
              
        }
        case PoCApiCode_SECURITY_ENCRYPT_ERROR_5057000: {
                      return @"加密异常!";
              
        }
        case PoCApiCode_SECURITY_DECRYPT_ERROR_5058000: {
                      return @"解密异常!";
              
        }
        case PoCApiCode_SECURITY_DECRYPT_CONTENT_INVALID_5059000: {
                      return @"解密内容违法!";
              
        }
        case PoCApiCode_REBATE_ITEM_INSERT_INVALID_5060000: {
                      return @"高返利商品添加异常!";
              
        }
        case PoCApiCode_REBATE_ITEM_IMPORT_LOG_INSERT_INVALID_5061000: {
                      return @"高返利商品导入日志添加异常!";
              
        }
        case PoCApiCode_REBATE_ITEM_ALREADY_IN_ACTIVITY_5062000: {
                      return @"高返利商品已参加活动!";
              
        }
        case PoCApiCode_REBATE_ITEM_UPDATE_PRICE_INVALID_5063000: {
                      return @"高返利商品不能修改价格!";
              
        }
        case PoCApiCode_REBATE_ITEM_JOIN_ACTIVITY_INVALID_5064000: {
                      return @"高返利商品不能参加活动!";
              
        }
        case PoCApiCode_REBATE_ITEM_PRICE_NOT_EQUAL_INVALID_5065000: {
                      return @"高返利商品的价格不等于当前售价!";
              
        }
        case PoCApiCode_B2CMALL_INTERNAL_ERROR_9000001: {
                      return @"内部异常";
              
        }
        case PoCApiCode_B2CMALL_PARAMTER_ERROR_9000002: {
                      return @"参数错误";
              
        }
        case PoCApiCode_PRODUCT_SERVICE_ERROR_9000003: {
                      return @"商品服务异常";
              
        }
        case PoCApiCode_PRODUCT_DATA_ERROR_9000004: {
                      return @"该商品不存在";
              
        }
        case PoCApiCode_PAGEURL_ILLEGAL_9000005: {
                      return @"url不合法";
              
        }
        case PoCApiCode_SKU_NOT_FOUND_9000200: {
                      return @"该商品不存在";
              
        }
        case PoCApiCode_ITEM_NOT_FOUND_9000210: {
                      return @"该商品不存在";
              
        }
        case PoCApiCode_TOPIC_NOT_FOUND_9000300: {
                      return @"未知的专题";
              
        }
        case PoCApiCode_TOPIC_TYPE_NOT_MATCH_9000303: {
                      return @"访问专题类型不匹配";
              
        }
        case PoCApiCode_VENDER_INTERNAL_ERROR_10000001: {
                      return @"内部异常";
              
        }
        case PoCApiCode_VENDER_PARAMTER_ERROR_10000002: {
                      return @"参数错误";
              
        }
        case PoCApiCode_PRODUCT_SERVICE_ERROR_10000003: {
                      return @"调用商品接口失败";
              
        }
        case PoCApiCode_SKU_NOT_FOUND_10000004: {
                      return @"未知的sku";
              
        }
        case PoCApiCode_ITEM_NOT_FOUND_10000005: {
                      return @"未知的item";
              
        }
        case PoCApiCode_VENDER_PAGECONFIG_ERROR_10000006: {
                      return @"VENDER page config异常";
              
        }
        case PoCApiCode_VENDER_UNKOWNPAGE_10000007: {
                      return @"VENDER未知page";
              
        }
        case PoCApiCode_VENDER_UNKOWNTOPIC_10000008: {
                      return @"VENDER topicId对应的专题不存在";
              
        }
        case PoCApiCode_VENDER_PAGE_USED_10000009: {
                      return @"VENDER page已被其他在线专题使用，请先下线原专题或当前专题";
              
        }
        case PoCApiCode_VENDER_TOPIC_PAGE_EMPTY_10000010: {
                      return @"VENDER 专题未绑定任何page";
              
        }
        case PoCApiCode_VENDER_PAGENAME_EXISTS_10000011: {
                      return @"页面名称已被使用";
              
        }
        case PoCApiCode_VENDER_DATA_VERSION_DISMATCH_10000012: {
                      return @"VENDER 数据已变更";
              
        }
        case PoCApiCode_VENDER_DATA_SIZE_TOO_LARGE_10000013: {
                      return @"数据量超过上限";
              
        }
        case PoCApiCode_VENDER_ILLEGAL_LINK_10000014: {
                      return @"链接不合法";
              
        }
        case PoCApiCode_CATEGORY_FOUND_ERROR_10000015: {
                      return @"类目未发现";
              
        }
        case PoCApiCode_SERVER_ERROR_11000010: {
                      return @"服务端异常";
              
        }
        case PoCApiCode_CARD_NOT_EXIST_11000020: {
                      return @"卡券id不存在";
              
        }
        case PoCApiCode_CARD_CANCELED_11000030: {
                      return @"卡券已作废";
              
        }
        case PoCApiCode_CARD_NOT_VALID_11000040: {
                      return @"目前不再卡券发放有效期内";
              
        }
        case PoCApiCode_CARD_NOT_ENOUGH_11000050: {
                      return @"卡券已领完";
              
        }
        case PoCApiCode_PARAMETER_ERROR_11000060: {
                      return @"参数错误";
              
        }
        case PoCApiCode_COUPON_USED_11000070: {
                      return @"优惠券已使用";
              
        }
        case PoCApiCode_COUPON_NOT_EXIST_11000080: {
                      return @"优惠券不存在";
              
        }
        case PoCApiCode_COUPON_CAN_NOT_COST_11000090: {
                      return @"优惠券不能使用";
              
        }
        case PoCApiCode_USER_HAS_RECEIVED_11000100: {
                      return @"用户已领过该券";
              
        }
        case PoCApiCode_USER_CNT_TOO_LARGE_11000101: {
                      return @"批量发放用户数达上限";
              
        }
        case PoCApiCode_COUPON_NOT_VALID_11000120: {
                      return @"优惠券不再有效期内";
              
        }
        case PoCApiCode_CARD_BAG_NOT_EXIST_11000130: {
                      return @"卡包不存在";
              
        }
        case PoCApiCode_CARD_BAG_CANCELED_11000140: {
                      return @"卡包已作废";
              
        }
        case PoCApiCode_CARD_HAS_BEEN_OWNED_11000150: {
                      return @"卡券已经属于别的卡包";
              
        }
        case PoCApiCode_CODE_NOT_EXIST_11000160: {
                      return @"优惠码不存在";
              
        }
        case PoCApiCode_CODE_USED_11000170: {
                      return @"优惠码已兑换";
              
        }
        case PoCApiCode_CARD_NUM_MISMATCH_11000180: {
                      return @"卡券数目不匹配";
              
        }
        case PoCApiCode_CARDTYPE_BAGTYPE_MISMATCH_11000190: {
                      return @"卡券类型和礼包类型不匹配";
              
        }
        case PoCApiCode_CODE_EXPIRED_11000200: {
                      return @"优惠码已过期";
              
        }
        case PoCApiCode_PUB_CARD_NOT_EXIST_11000209: {
                      return @"共用card不存在";
              
        }
        case PoCApiCode_TEMPTOKEN_EXPIRED_11000210: {
                      return @"临时Token已过期";
              
        }
        case PoCApiCode_USER_EXCHANGE_TOO_MORE_11000220: {
                      return @"本账户兑换次数超出限制";
              
        }
        case PoCApiCode_USER_IN_BLACKLIST_11000230: {
                      return @"用户是黑名单用户，不参与活动";
              
        }
        case PoCApiCode_USER_HAS_RECEIVED_DAYALL_11000240: {
                      return @"用户今天的券已经领完了";
              
        }
        case PoCApiCode_USER_HAS_RECEIVED_PROALL_11000250: {
                      return @"用户已经领完该活动期间所有的券";
              
        }
        case PoCApiCode_USER_MOBILE_ERROR_11000260: {
                      return @"用户输入手机号有误";
              
        }
        case PoCApiCode_EX_TERMINAL_NOT_SUPPORT_11000270: {
                      return @"该终端不支持兑换";
              
        }
        case PoCApiCode_USER_NOT_NEW_11000280: {
                      return @"该券只有新用户可领取，您已不是新用户";
              
        }
        case PoCApiCode_COUPON_ONLYFORUSER_11000290: {
                      return @"亲，非常抱歉，该礼包为用户专属礼包";
              
        }
        case PoCApiCode_COUPON_NOTFORTHISUSER_11000300: {
                      return @"非常抱歉，您不属于生活卡新用户，不能兑换该礼包";
              
        }
        case PoCApiCode_COUPON_DEVICE_RCVTOOMORE_11000310: {
                      return @"抱歉 每台手机只能兑换一次新用户专享礼包哟";
              
        }
        case PoCApiCode_COUPON_DITUI_BLK_11000320: {
                      return @"该兑换码拒绝兑换";
              
        }
        case PoCApiCode_COUPON_DITUI_PRONOSTART_11000330: {
                      return @"抱歉，活动尚未开始~";
              
        }
        case PoCApiCode_PRO_NOT_EXIST_11000340: {
                      return @"活动不存在或已结束";
              
        }
        case PoCApiCode_EXPANDIONCOUPON_FULFILLED_11000350: {
                      return @"膨胀卡券已满额";
              
        }
        case PoCApiCode_MOBILE_HAS_RECEIVED_11000360: {
                      return @"该手机号账户已经领取过，请换个账户尝试";
              
        }
        case PoCApiCode_USER_SERVICE_USER_NOT_FOUND_12000001: {
                      return @"未找到用户";
              
        }
        case PoCApiCode_PROMOTION_NOT_EXIST_12000002: {
                      return @"活动不存在";
              
        }
        case PoCApiCode_PROMOTION_NOT_IN_USE_12000003: {
                      return @"活动状态非进行中";
              
        }
        case PoCApiCode_PROMOTION_NOT_SUSPEND_12000004: {
                      return @"活动状态非暂停中";
              
        }
        case PoCApiCode_PROMOTION_SERVICE_ERROR_12000005: {
                      return @"服务器错误";
              
        }
        case PoCApiCode_PROMOTION_DATE_ERROR_12000006: {
                      return @"活动时间错误";
              
        }
        case PoCApiCode_PROMOTIONP_RIZE_ERROR_12000007: {
                      return @"礼物不存在";
              
        }
        case PoCApiCode_PROMOTIONP_NOT_CLOSED_12000008: {
                      return @"活动状态不可关闭";
              
        }
        case PoCApiCode_PROMOTION_2_DIAMOND_ERROR_12000009: {
                      return @"DO转换成DIAMOND错误";
              
        }
        case PoCApiCode_DIAMOND_UPDATE_ERROR_12000010: {
                      return @"DIAMOND更新错误";
              
        }
        case PoCApiCode_SCOPE_ALL_NOT_NEED_ITEM_12000011: {
                      return @"全场活动不支持单个商品";
              
        }
        case PoCApiCode_SAME_TIME_ERROR_12000012: {
                      return @"同一时间商品错误出现在不能同时存在的两个活动中";
              
        }
        case PoCApiCode_PROMOTION_ENDED_12000013: {
                      return @"活动已结束";
              
        }
        case PoCApiCode_PROMOTION_NOT_ITEM_NEED_STOCK_12000014: {
                      return @"黑名单商品活动不应该有库存";
              
        }
        case PoCApiCode_USER_SERVICE_USER_EXISTED_12000020: {
                      return @"账户已注册";
              
        }
        case PoCApiCode_UNKNOW_ERROR_12000021: {
                      return @"活动未知错误";
              
        }
        case PoCApiCode_USER_SERVICE_USERNAME_OR_PASSWORD_ERROR_12000030: {
                      return @"用户名or密码错误";
              
        }
        case PoCApiCode_USER_SERVICE_PASSWORD_ERROR_12000040: {
                      return @"原密码错误";
              
        }
        case PoCApiCode_USER_SERVICE_MAILID_ERROR_12000050: {
                      return @"邮箱地址错误";
              
        }
        case PoCApiCode_USER_SERVICE_SAME_PASSWORD_ERROR_12000060: {
                      return @"密码与原密码相同";
              
        }
        case PoCApiCode_USER_SERVICE_PARAMETER_ERROR_12000070: {
                      return @"参数错误";
              
        }
        case PoCApiCode_USER_SERVICE_SERVER_ERROR_12000080: {
                      return @"服务端错误";
              
        }
        case PoCApiCode_USER_SERVICE_INVITECODE_ERROR_12000090: {
                      return @"邀请码错误";
              
        }
        case PoCApiCode_USER_SERVICE_VERIFYCODE_ERROR_12000100: {
                      return @"验证码错误";
              
        }
        case PoCApiCode_USER_SERVICE_USER_NOT_ACTIVATED_12000110: {
                      return @"账户尚未激活";
              
        }
        case PoCApiCode_USER_SERVICE_LINK_EXPIRED_12000120: {
                      return @"链接已过期";
              
        }
        case PoCApiCode_USER_SERVICE_SIGN_ERROR_12000130: {
                      return @"签名验证失败";
              
        }
        case PoCApiCode_PASSWORD_UPDATE_INTERVAL_SHORT_12000140: {
                      return @"密码修改间隔太短";
              
        }
        case PoCApiCode_USER_SERVICE_PASSWORD_LENGTH_ERROR_12000150: {
                      return @"密码长度错误";
              
        }
        case PoCApiCode_FINANCE_INNER_ERROR_12100000: {
                      return @"财务系统内部异常";
              
        }
        case PoCApiCode_CONCURRENT_ERROR_12100001: {
                      return @"并发操作异常";
              
        }
        case PoCApiCode_REFUND_TAX_EXISTS_12110000: {
                      return @"该订单已提交过退税申请";
              
        }
        case PoCApiCode_TAX_PAYMENT_NO_EXISTS_12110001: {
                      return @"该缴税凭证编号已被使用";
              
        }
        case PoCApiCode_REFUND_TAX_NOT_EXISTS_12110002: {
                      return @"该退税申请不存在";
              
        }
        case PoCApiCode_CALL_PAYMENT_FAIL_12110003: {
                      return @"调用支付接口失败";
              
        }
        case PoCApiCode_MERCHANT_CATEGORY_COMMISSION_NOT_EXISTS_12110004: {
                      return @"商品类目佣金点配置不存在";
              
        }
        case PoCApiCode_MERCHANT_CATEGORY_COMMISSION_ALREADY_EXISTS_12110005: {
                      return @"商品类目佣金点配置已存在";
              
        }
        case PoCApiCode_MERCHANT_CONFIG_ALREADY_EXISTS_12110006: {
                      return @"商家配置已存在";
              
        }
        case PoCApiCode_MERCHANT_CONFIG_NOT_EXISTS_12110007: {
                      return @"商家配置不存在";
              
        }
        case PoCApiCode_REFUNDTAX_MAILNO_NOT_EXISTS_12110008: {
                      return @"退税申请，未找到已出库且发ETK的运单号";
              
        }
        case PoCApiCode_REFUNDTAX_MAILNO_EXISTS_12110009: {
                      return @"该运单号存在待审批/审核中/退款完成的退税单，不允许重复申请";
              
        }
        case PoCApiCode_SETTLE_SERVICE_INTL_ERROR_13000001: {
                      return @"结算服务内部异常";
              
        }
        case PoCApiCode_TOP_CP_SUBJECT_URL_ILLEGAL_13000002: {
                      return @"上级scm不合法";
              
        }
        case PoCApiCode_FATHER_SCM_IS_NULL_13000003: {
                      return @"二级scm点的父级为空";
              
        }
        case PoCApiCode_PROMOTION_SERVICE_ERROR_13000005: {
                      return @"服务器错误";
              
        }
        case PoCApiCode_FIND_THEME_BASE_INFO_ERROR_13001000: {
                      return @"获取发现主题首页数据错误";
              
        }
        case PoCApiCode_VERIFY_IS_MY_LOVE_ERROR_13002000: {
                      return @"判断发现主题是否我的喜欢失败";
              
        }
        case PoCApiCode_SAVE_MY_LOVE_ERROR_13003000: {
                      return @"收藏我喜欢的发现主题失败";
              
        }
        case PoCApiCode_CANCEL_MY_LOVE_ERROR_13004000: {
                      return @"取消我喜欢的发现主题失败";
              
        }
        case PoCApiCode_FIND_THEME_DETAIL_ERROR_13005000: {
                      return @"获取发现详情页失败";
              
        }
        case PoCApiCode_SAVE_MY_WANT_ERROR_13006000: {
                      return @"保存我想要某个商品记录失败";
              
        }
        case PoCApiCode_VERIFY_IS_MY_WANT_ERROR_13007000: {
                      return @"判断是否想要发现主题提到的商品失败";
              
        }
        case PoCApiCode_CREATE_DISCOVERY_THEME_ERROR_13008000: {
                      return @"创建发现主题失败";
              
        }
        case PoCApiCode_UPDATE_DISCOVERY_THEME_ERROR_13009000: {
                      return @"更新发现主题失败";
              
        }
        case PoCApiCode_UPDATE_DISCOVERY_THEME_STATUS_ERROR_13010000: {
                      return @"更新发现主题的状态失败";
              
        }
        case PoCApiCode_DELETE_DISCOVERY_THEME_ERROR_13011000: {
                      return @"删除发现主题失败";
              
        }
        case PoCApiCode_UPDATE_MEDIA_INFO_ERROR_13012000: {
                      return @"更新发现主题的视频或者图片URL失败";
              
        }
        case PoCApiCode_REPEAT_SAVE_MY_LOVE_13013000: {
                      return @"重复收藏我喜欢的发现主题";
              
        }
        case PoCApiCode_REPEAT_SAVE_MY_WANT_13014000: {
                      return @"重复保存我想要某个商品记录";
              
        }
        case PoCApiCode_FIND_THEME_TITLE_ERROR_13015000: {
                      return @"获取主题的标题错误";
              
        }
        case PoCApiCode_CREATE_TAG_ERROR_13016000: {
                      return @"创建标签错误";
              
        }
        case PoCApiCode_DELETE_TAG_ERROR_13017000: {
                      return @"删除标签错误";
              
        }
        case PoCApiCode_SET_TAG_VIEW_STATUS_ERROR_13018000: {
                      return @"设置标签可见状态错误";
              
        }
        case PoCApiCode_REPORT_ERROR_13019000: {
                      return @"举报发现主题异常";
              
        }
        case PoCApiCode_SEARCH_LABEL_ERROR_13020000: {
                      return @"获取标签数据异常";
              
        }
        case PoCApiCode_REPEAT_REPORT_13021000: {
                      return @"重复举报!";
              
        }
        case PoCApiCode_SET_REPORT_STATUS_13022000: {
                      return @"设置举报的状态错误!";
              
        }
        case PoCApiCode_SAVE_THEME_WANTED_PRODUCT_ERROR_13023000: {
                      return @"主题想买商品数据错误";
              
        }
        case PoCApiCode_SAVE_THEME_FRONTED_IMG_ERROR_13024000: {
                      return @"主题封面数据错误";
              
        }
        case PoCApiCode_SAVE_THEME_DETAIL_ERROR_13025000: {
                      return @"保存主题详情数据错误";
              
        }
        case PoCApiCode_UPDATE_THEME_DETAIL_ERROR_13026000: {
                      return @"更新主题详情数据错误";
              
        }
        case PoCApiCode_DELETE_THEME_WANTED_PRODUCT_ERROR_13027000: {
                      return @"主题想买移除商品数据错误";
              
        }
        case PoCApiCode_FIND_THEME_BRAND_ERROR_13028000: {
                      return @"获取主题品牌数据错误";
              
        }
        case PoCApiCode_FIND_THEME_NATION_ERROR_13029000: {
                      return @"获取主题国家数据错误";
              
        }
        case PoCApiCode_FIND_THEME_LABEL_ERROR_13030000: {
                      return @"获取主题标签数据错误";
              
        }
        case PoCApiCode_FIND_THEME_CURRENCY_UNIT_ERROR_13031000: {
                      return @"获取主题币种数据错误";
              
        }
        case PoCApiCode_PUBLISH_MY_THEME_ERROR_13032000: {
                      return @"用户发布主题数据错误";
              
        }
        case PoCApiCode_DELETE_MY_THEME_ERROR_13033000: {
                      return @"用户删除主题数据错误";
              
        }
        case PoCApiCode_FIND_MY_THEME_ERROR_13034000: {
                      return @"用户查询自己主题数据错误";
              
        }
        case PoCApiCode_REPORT_THEME_ERROR_13035000: {
                      return @"举报主题数据错误";
              
        }
        case PoCApiCode_SET_THEME_SELECTED_ERROR_13036000: {
                      return @"设置主题精选数据错误";
              
        }
        case PoCApiCode_SET_THEME_NOT_SELECTED_ERROR_13037000: {
                      return @"取消主题精选数据错误";
              
        }
        case PoCApiCode_FIND_MY_RECEIVED_PRODUCT_LIST_ERROR_13038000: {
                      return @"获取我已经收到的商品tag数据";
              
        }
        case PoCApiCode_SAVE_MY_RED_LOVE_THEME_ERROR_13039000: {
                      return @"红心收藏主题失败";
              
        }
        case PoCApiCode_VERIFY_IS_MY_RED_LOVE_THEME_ERROR_13040000: {
                      return @"判断是否是红心收藏主题失败";
              
        }
        case PoCApiCode_VERIFY_UN_READ_COMMENT_ERROR_13050000: {
                      return @"获取未读评论信息数据失败";
              
        }
        case PoCApiCode_NOTIFY_UN_READ_COMMENT_ERROR_13060000: {
                      return @"新增未知评论消息";
              
        }
        case PoCApiCode_UPDATE_READ_COMMENT_ERROR_13070000: {
                      return @"更新用户已读评论消息";
              
        }
        case PoCApiCode_ADD_FOLLOWING_ERROR_13080000: {
                      return @"关注用户失败";
              
        }
        case PoCApiCode_CANCEL_FOLLOWING_ERROR_13090000: {
                      return @"取消关注失败";
              
        }
        case PoCApiCode_IS_FOLLOWING_ERROR_13400000: {
                      return @"取消关注失败";
              
        }
        case PoCApiCode_FOLLOWING_LIST_ERROR_13410000: {
                      return @"查看关注列表失败";
              
        }
        case PoCApiCode_FOLLOWER_LIST_ERROR_13420000: {
                      return @"查看粉丝列表失败";
              
        }
        case PoCApiCode_USER_DETAIL_ERROR_13430000: {
                      return @"查看个人主页失败";
              
        }
        case PoCApiCode_FIND_THEME_TIME_LINE_LIST_ERROR_13440000: {
                      return @"获取发现个人首页数据错误";
              
        }
        case PoCApiCode_SET_USER_RANK_BY_OPERATOR_ERROR_13450000: {
                      return @"人工干预排名数据";
              
        }
        case PoCApiCode_ADD_HOT_LABEL_ERROR_13460000: {
                      return @"热门标签创建错误";
              
        }
        case PoCApiCode_FIND_RECOMMEND_THEME_LIST_BY_TYPE_ERROR_13470000: {
                      return @"获取有趣推荐列表错误";
              
        }
        case PoCApiCode_ADD_RECOMMEND_ERROR_13480000: {
                      return @"趣文推荐创建错误";
              
        }
        case PoCApiCode_ADD_USER_EXP_DETAIL_BY_OPERATOR_ERROR_13490000: {
                      return @"后台添加用户经验值";
              
        }
        case PoCApiCode_FIND_TOP_COMMENT_INFO_ERROR_14000000: {
                      return @"获取神评论列表错误";
              
        }
        case PoCApiCode_ORDER_SERVICE_INTL_ERROR_14000001: {
                      return @"订单服务内部异常";
              
        }
        case PoCApiCode_ORDER_SERVICE_PARAM_ILLIGAL_14000002: {
                      return @"订单服务参数不合法";
              
        }
        case PoCApiCode_FIND_COMMON_COMMENT_INFO_ERROR_14001000: {
                      return @"获取评论列表错误";
              
        }
        case PoCApiCode_SAVE_LIKE_ERROR_14002000: {
                      return @"保存点赞数失败";
              
        }
        case PoCApiCode_PUBLISH_COMMENT_ERROR_14003000: {
                      return @"发表评论失败";
              
        }
        case PoCApiCode_VERIFY_NEED_WRITE_NICK_NAME_ERROR_14004000: {
                      return @"校验是否需要填写昵称失败";
              
        }
        case PoCApiCode_FIND_REPLY_COMMENT_DETAIL_ERROR_14005000: {
                      return @"获取评论回复详情信息失败";
              
        }
        case PoCApiCode_REPLY_COMMENT_ERROR_14006000: {
                      return @"回复评论失败";
              
        }
        case PoCApiCode_FIND_MY_ISSUED_COMMENT_ERROR_14007000: {
                      return @"获取我发送的评论信息失败";
              
        }
        case PoCApiCode_FIND_RECEIVED_COMMENT_ERROR_14008000: {
                      return @"获取我收到的回复信息失败";
              
        }
        case PoCApiCode_DELETE_MY_ISSUED_COMMENT_ERROR_14009000: {
                      return @"删除我的评论信息失败";
              
        }
        case PoCApiCode_GET_THEME_COMMENT_COUNT_ERROR_14010000: {
                      return @"获取发现主题的评论数";
              
        }
        case PoCApiCode_USER_IS_BLACKLIST_14011000: {
                      return @"用户为黑名单";
              
        }
        case PoCApiCode_REPORT_ERROR_14012000: {
                      return @"举报异常";
              
        }
        case PoCApiCode_COMMENT_CONTAIN_SENSITIVE_WORD_14013000: {
                      return @"您发布的评论含有敏感词!";
              
        }
        case PoCApiCode_REPEAT_REPORT_14014000: {
                      return @"重复举报!";
              
        }
        case PoCApiCode_NULL_COMMENT_14015000: {
                      return @"评论不存在!";
              
        }
        case PoCApiCode_FIND_COMMENT_INFO_ERROR_14017000: {
                      return @"获取评价详情错误!";
              
        }
        case PoCApiCode_FIND_COMMENT_LABEL_ERROR_14019000: {
                      return @"获取评价标签错误!";
              
        }
        case PoCApiCode_FIND_COMMENTLIST_TYPE_ERROR_14021000: {
                      return @"通过指定类型分页获取评论列表错误!";
              
        }
        case PoCApiCode_FIND_COMMENTLIST_ERROR_14023000: {
                      return @"分页获取评论列表错误!";
              
        }
        case PoCApiCode_FIND_COMMENT_STATUS_ERROR_14025000: {
                      return @"获取评论状态失败";
              
        }
        case PoCApiCode_PUSH_SATIPoC_ERROR_14027000: {
                      return @"发表订单满意度失败";
              
        }
        case PoCApiCode_COMMENT_LABEL_CONTAIN_SENSITIVE_WORD_14029000: {
                      return @"您发布的评论标签含有敏感词!";
              
        }
        case PoCApiCode_C_CACHE_FAILED_14031000: {
                      return @"缓存操作失败!";
              
        }
        case PoCApiCode_C_VALID_FAILED_14033000: {
                      return @"审核失败!";
              
        }
        case PoCApiCode_FIND_SKU_LIST_ERROR_14034000: {
                      return @"获取sku_id列表错误!";
              
        }
        case PoCApiCode_PARAMETER_ERROR_14035000: {
                      return @"参数错误!";
              
        }
        case PoCApiCode_CAN_NOT_FIND_SKU_LIST_BY_ITEM_14036000: {
                      return @"根据item未获取到sku_id!";
              
        }
        case PoCApiCode_BACKEND_COMMENT_SCORE_ERROR_14037000: {
                      return @"后台运营送积分错误";
              
        }
        case PoCApiCode_CAN_NOT_FIND_COMMENT_INFO_BY_COMMENT_ID_ERROR_14038000: {
                      return @"根据commentID获取评论信息失败";
              
        }
        case PoCApiCode_VENDER_STATE_MACHINE_INTERNAL_EXCEPTION_15000001: {
                      return @"状态机内部异常";
              
        }
        case PoCApiCode_VENDER_STATE_CHANGE_EXCEPTION_15000002: {
                      return @"供应商状态机内部状态流转异常";
              
        }
        case PoCApiCode_VENDER_ENGINE_PARAM_ILLAGLE_15000003: {
                      return @"供应商状态机状态流转参数不合法，缺少ID";
              
        }
        case PoCApiCode_SHOPCART_ILLEGLE_ARGUMENT_15000100: {
                      return @"请求参数有误";
              
        }
        case PoCApiCode_SHOPCART_ADD_ERROR_15000200: {
                      return @"购物车添加商品失败";
              
        }
        case PoCApiCode_SHOPCART_GOOD_CANNOT_JOIN_15000201: {
                      return @"该商品不支持加入购物车";
              
        }
        case PoCApiCode_SHOPCART_ADD_LIST_EMPTY_15000202: {
                      return @"添加进购物车的商品列表为空";
              
        }
        case PoCApiCode_SHOPCART_ADD_OVER_LIMIT_15000203: {
                      return @"添加进购物车的商品超过限购";
              
        }
        case PoCApiCode_SHOPCART_REMOVE_ERROR_15000300: {
                      return @"购物车删除商品失败";
              
        }
        case PoCApiCode_SHOPCART_UPDATENUM_ERROR_15000400: {
                      return @"更新购物车内商品数量失败";
              
        }
        case PoCApiCode_SHOPCART_UPDATE_OVER_STOCK_15000401: {
                      return @"更新购物车内商品数量超过库存限制";
              
        }
        case PoCApiCode_SHOPCART_PRODUCT_ITEM_NOT_EXISTS_15000500: {
                      return @"购物车获取不到商品系统商品信息";
              
        }
        case PoCApiCode_SHOPCART_PRICE_OVER_LIMIT_15000600: {
                      return @"购物车超过金额上限";
              
        }
        case PoCApiCode_SHOPCART_TO_ORDER_GOODS_EMPTY_15000700: {
                      return @"购物车内商品总价费用为0";
              
        }
        case PoCApiCode_SHOPCART_GOODS_NUM_ULTRALIMIT_15000800: {
                      return @"您的购物车已满";
              
        }
        case PoCApiCode_SHOPCART_GOOD_NOT_IN_15000900: {
                      return @"商品不在购物车内";
              
        }
        case PoCApiCode_SHOPCART_GET_TOTALNUM_ERROR_15001000: {
                      return @"购物车获取商品数量失败";
              
        }
        case PoCApiCode_SHOPCART_REFRESH_ERROR_15001100: {
                      return @"购物车刷新商品选中状态失败";
              
        }
        case PoCApiCode_SHOPCART_GET_CART_ERROR_15001200: {
                      return @"获取购物车信息失败";
              
        }
        case PoCApiCode_SHOPCART_DISCOUNT_OVER_ACTUAL_PRICE_15001300: {
                      return @"优惠金额超过限制";
              
        }
        case PoCApiCode_STOCK_ADJUST_ERROR_16000001: {
                      return @"库存调整失败";
              
        }
        case PoCApiCode_STOCK_ADJUST_EXCEL_CONTENT_EMPTY_16000002: {
                      return @"上传的Excel文件内容为空";
              
        }
        case PoCApiCode_STOCK_ADJUST_IMPORT_SIZE_OVERRUN_16000003: {
                      return @"批量调整库存数量超限";
              
        }
        case PoCApiCode_STOCK_ADJUST_IMPORT_SKUID_ERROR_16000004: {
                      return @"丰趣商品编码error";
              
        }
        case PoCApiCode_STOCK_ADJUST_IMPORT_ADDSTOCK_ERROR_16000005: {
                      return @"追加库存必须大于0";
              
        }
        case PoCApiCode_STOCK_ADJUST_IMPORT_ADDSTOCK_LOISTICS_ERROR_16000006: {
                      return @"供应链调整库存出错";
              
        }
        case PoCApiCode_CheckinRuleWrongReturnCode_16000008: {
                      return @"签到规则配置错误";
              
        }
        case PoCApiCode_InsufficientIntegralReturnCode_16000009: {
                      return @"积分不足";
              
        }
        case PoCApiCode_ReturnIntegralForOrderFailedReturnCode_16000011: {
                      return @"归还积分失败";
              
        }
        case PoCApiCode_NoActiveCheckinReturnCode_16000012: {
                      return @"没有在线的签到活动";
              
        }
        case PoCApiCode_DuplicateTranscationNoReturnCode_16000014: {
                      return @"系统未知异常";
              
        }
        case PoCApiCode_UnknownExceptionReturnCode_16000099: {
                      return @"系统未知异常";
              
        }
        case PoCApiCode_FIND_USER_PREFER_ERROR_17000000: {
                      return @"获取用户喜好商品错误";
              
        }
        case PoCApiCode_PRICE_ADJUST_REQUISITION_NOT_FOUND_ERROR_17000001: {
                      return @"未找到价格调整申请单记录";
              
        }
        case PoCApiCode_PRICE_ADJUST_REQUISITION_START_GREATER_THAN_END_ERROR_17000002: {
                      return @"活动价的生效开始时间必须小于生效结束时间";
              
        }
        case PoCApiCode_PRICE_ADJUST_REQUISITION_EXIST_WAIT_APPROVE_ERROR_17000003: {
                      return @"存在待审批状态的价格调整申请单记录, 需要先完成该申请单的审批";
              
        }
        case PoCApiCode_PRICE_ADJUST_REQUISITION_EXIST_TIME_PERIOD_OVERLAP_ERROR_17000004: {
                      return @"存在生效时间段重复的价格调整申请单记录, 请修改生效起止时间";
              
        }
        case PoCApiCode_PRICE_ADJUST_REQUISITION_STATE_NOT_WAIT_APPROVE_ERROR_17000005: {
                      return @"价格调整申请单的状态不为待审批, 无法操作审批";
              
        }
        case PoCApiCode_PRICE_ADJUST_REQUISITION_DATA_DUPLICATE_ERROR_17000006: {
                      return @"已存在相同的价格调整申请记录, 无法操作新增";
              
        }
        case PoCApiCode_PRICE_ADJUST_START_DATA_ERROR_17000007: {
                      return @"生效时间必须晚于当天时间";
              
        }
        case PoCApiCode_PRICE_ADJUST_EXCEL_EMPTY_17000008: {
                      return @"上传的excel文件为空";
              
        }
        case PoCApiCode_PRICE_ADJUST_IMPORT_SIZE_OVERRUN_17000009: {
                      return @"批量调整供货价数量超限";
              
        }
        case PoCApiCode_PRICE_ADJUST_IMPORT_SKUID_ERROR_17000010: {
                      return @"丰趣商品编码error";
              
        }
        case PoCApiCode_PRICE_ADJUST_IMPORT_START_DATE_ERROR_17000011: {
                      return @"生效时间必须晚于当前时间";
              
        }
        case PoCApiCode_SUPPLY_PRICE_ADJUST_ERROR_17000012: {
                      return @"供货价调整失败";
              
        }
        case PoCApiCode_SUPPLY_PRICE_ADJUST_REQUISITION_DATA_DUPLICATE_ERROR_17000013: {
                      return @"您已提交过一条供货价修改数据，请联系运营进行审核！";
              
        }
        case PoCApiCode_CATEGORY_NOT_EXIST_17001000: {
                      return @"类目不存在";
              
        }
        case PoCApiCode_UPDATE_TOP_N_FAILURE_17002000: {
                      return @"更新TOP N数据失败";
              
        }
        case PoCApiCode_FIND_USER_PREFER_BASED_ON_CLICK_VIEW_ERROR_17003000: {
                      return @"获取基于用户浏览行为的喜好商品错误";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SERVICE_INTL_EXCEPTION_18000001: {
                      return @"发货服务内部异常";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SERVICE_GET_CARRIES_ERROR_18000002: {
                      return @"获取供应商物流承运商失败";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SERVICE_PARAM_ILLEGAL_18000003: {
                      return @"供应商发货服务参数不合法";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SERVICE_ORDER_NOT_EXIST_18000004: {
                      return @"无法查询到此单信息";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SERVICE_WAIT_STOCKOUT_ORDER_NOT_ALLOW_MARK_STOCKOUT_18000005: {
                      return @"待出库订单不允许标记为已出库";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SERVICE_CANCEL_ORDER_NOT_ALLOW_MARK_STOCKOUT_18000006: {
                      return @"订单已取消，不允许标记为已出库";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SERVICE_MAIL_NO_IS_EMPTY_18000007: {
                      return @"订单运单信息不能为空";
              
        }
        case PoCApiCode_VENDER_DELIVERY_MARK_SIZE_OVERRUN_18000008: {
                      return @"批量标记订单数量超限";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SET_MAILNO_ONLY_STOCKOUTING_18000009: {
                      return @"只有发货中订单能够设置运单号";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SET_MAILNO_ERROR_18000010: {
                      return @"保存运单号失败";
              
        }
        case PoCApiCode_VENDER_DELIVERY_SERVICE_EXCEL_CONTENT_EMPTY_18000011: {
                      return @"上传的Excel文件内容为空";
              
        }
        case PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_SIZE_OVERRUN_18000012: {
                      return @"批量导入运单号数量超限";
              
        }
        case PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_ORDERNO_EMPTY_18000013: {
                      return @"订单号为空";
              
        }
        case PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_MAILNO_EMPTY_18000014: {
                      return @"运单号为空";
              
        }
        case PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_CARRIERCODE_EMPTY_18000015: {
                      return @"快递公司为空";
              
        }
        case PoCApiCode_VENDER_DELIVERY_IMPORT_MAILNO_CARRIERCODE_DIFFERENT_18000016: {
                      return @"导入的快递公司与选择的快递公司不一致";
              
        }
        case PoCApiCode_UNKNOWN_EXCEPTION_RETURN_CODE_18000099: {
                      return @"系统未知异常";
              
        }
        case PoCApiCode_VENDER_DOWNLOAD_SERVICE_INTL_EXCEPTION_19000001: {
                      return @"下载服务内部异常";
              
        }
        case PoCApiCode_VENDER_DOWNLOAD_FILETYPE_ILLIGAL_EXCEPTION_19000002: {
                      return @"文件类型不合法";
              
        }
        case PoCApiCode_VENDER_DOWNLOAD_SERVICE_EXIST_WAIT_TASK_19000003: {
                      return @"已经有下载报表的请求正在等待,请等待或者取消正在等待的报表下载请求";
              
        }
        case PoCApiCode_VENDER_DOWNLOAD_SERVICE_PDF_EXCEPTION_19000004: {
                      return @"生成PDF面单异常";
              
        }
        case PoCApiCode_VENDER_DOWNLOAD_SERVICE_LINE_NOT_EXIST_19000005: {
                      return @"订单路线不存在";
              
        }
        case PoCApiCode_VENDER_DOWNLOAD_SERVICE_PARAM_ILLEGAL_19000006: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_VENDER_DOWNLOAD_SERVICE_PDF_NOT_SUPPORT_ILLEGAL_19000007: {
                      return @"不支持面单下载";
              
        }
        case PoCApiCode_VENDER_SKU_DETAIL_QUERY_EXCEPTION_20000001: {
                      return @"查询详情内部异常";
              
        }
        case PoCApiCode_VENDER_SKU_DETAIL_SAVE_EXCEPTION_20000002: {
                      return @"保存详情内部异常";
              
        }
        case PoCApiCode_VENDER_SKU_DETAIL_SUBMIT_EXCEPTION_20000003: {
                      return @"提交详情内部异常";
              
        }
        case PoCApiCode_GROUP_EXCEED_MAX_COUNT_20000004: {
                      return @"该团参团人数已满";
              
        }
        case PoCApiCode_USER_EXCEED_MAX_GROUP_COUNT_20000005: {
                      return @"用户超过了最大的参团次数限制";
              
        }
        case PoCApiCode_GROUP_NOT_EXISTS_20000006: {
                      return @"团不存在";
              
        }
        case PoCApiCode_GROUP_ALREADY_EXPIRED_20000007: {
                      return @"团已结束";
              
        }
        case PoCApiCode_GROUP_STATUS_NOT_UNDERWAY_20000008: {
                      return @"团状态不为组团中";
              
        }
        case PoCApiCode_ITEM_SOLD_OUT_20000009: {
                      return @"商品已售罄";
              
        }
        case PoCApiCode_SYSTEM_ERROR_20000099: {
                      return @"系统异常";
              
        }
        case PoCApiCode_STOCK_SERVICE_SALE_COUNT_NOT_ENOUGH_ERROR_20700090: {
                      return @"";
              
        }
        case PoCApiCode_STOCK_SERVICE_SALE_RECORD_NOT_FOUND_ERROR_20700100: {
                      return @"";
              
        }
        case PoCApiCode_STOCK_SERVICE_BATCH_STOCK_LOCK_LOG_EXIST_ERROR_20700180: {
                      return @"";
              
        }
        case PoCApiCode_OPERATE_CONSIGN_STOCK_ERROR_ERROR_20700200: {
                      return @"";
              
        }
        case PoCApiCode_UNSUPPORT_BATCH_STOCK_LOCK_WAREHOUSE_ERROR_20700220: {
                      return @"";
              
        }
        case PoCApiCode_VENDER_BRAND_SERVICE_ERROR_21000001: {
                      return @"品牌服务错误";
              
        }
        case PoCApiCode_CUSTOMER_UNKNOW_ERROR_21000002: {
                      return @"customer unkown error";
              
        }
        case PoCApiCode_ILLEGLE_ARGUMENT_21000003: {
                      return @"请求参数有误";
              
        }
        case PoCApiCode_RETURN_GOODS_NUM_OVER_21000004: {
                      return @"商品申请退货数大于可退数!";
              
        }
        case PoCApiCode_RETURN_DETAIL_NOT_EXISTS_21000005: {
                      return @"退货商品明细不存在!";
              
        }
        case PoCApiCode_RETURN_APPLY_NOT_EXISTS_21000006: {
                      return @"退货申请不存在!";
              
        }
        case PoCApiCode_RETURN_UNCORRECT_STATUS_21000007: {
                      return @"退货单状态不允许操作!";
              
        }
        case PoCApiCode_RETURN_GOODS_CAN_NOT_RETURN_21000008: {
                      return @"商品不可退!";
              
        }
        case PoCApiCode_RETURN_CREATE_STOCKIN_ERROR_21000009: {
                      return @"供应链生成退货入库单失败!";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_OPT_PARAM_ILLEGAL_22000001: {
                      return @"参数不合法";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_CREATE_ERROR_22000002: {
                      return @"创建属性模板失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_NOT_EXIST_22000003: {
                      return @"属性模板不存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_QUERY_ERROR_22000004: {
                      return @"查询属性模板失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_TEMPALATE_ALEARY_EXIST_22000005: {
                      return @"属性模板已经存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_KEY_QUERY_ERROR_22000006: {
                      return @"查询属性项失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_NOT_EXIST_22000007: {
                      return @"属性值不存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_KEY_NOT_EXIST_22000008: {
                      return @"属性项不存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_KEY_CREATE_ERROR_22000009: {
                      return @"属性项新建失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_CREATE_ERROR_22000010: {
                      return @"属性值新建失败";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_KEY_EXIST_22000011: {
                      return @"属性项已存在";
              
        }
        case PoCApiCode_PRODUCT_ATTRIBUTE_VALUE_EXIST_22000012: {
                      return @"属性值已存在";
              
        }
        case PoCApiCode__C_SUPPLIER_CHANNEL_BATCH_STOCK_NOT_FOUND_ERROR_22800010: {
                      return @"";
              
        }
        case PoCApiCode_VENDER_SPU_RECORD_NOT_FOUND_23000001: {
                      return @"该记录不存在";
              
        }
        case PoCApiCode_VENDER_SPU_ILLEGAL_PARAM_23000002: {
                      return @"非法参数";
              
        }
        case PoCApiCode_VENDER_SPU_API_FAIL_23000003: {
                      return @"接口调用失败";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_BRAND_EMPTY_23000004: {
                      return @"品牌不能为空";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_GROSSWEIGHT_EMPTY_23000005: {
                      return @"商品毛重不能为空";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_LWH_EMPTY_23000006: {
                      return @"商品长宽高不能为空";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_ORIGIN_EMPTY_23000007: {
                      return @"商品原产地不能为空";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_SUPPLYLAND_EMPTY_23000008: {
                      return @"商品货源地不能为空";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_RETURNSPOLICY_EMPTY_23000009: {
                      return @"商品退货政策不能为空";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_DESC_ILLEGAL_23000010: {
                      return @"商品描述属性参数不合法";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_CATEGORY_EMPTY_23000011: {
                      return @"商品描分类不能为空";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_BRIEFNAME_EMPTY_23000012: {
                      return @"商品简称不能为空";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_DESC_NOTCHECKED_23000013: {
                      return @"商品描述属性填写不完整";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_DESC_VALUE_EMPTY_23000014: {
                      return @"商品描述属性值未填写";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_MEASUREMENTUNIT_EMPTY_23000015: {
                      return @"商品计量单位不能";
              
        }
        case PoCApiCode_VENDER_SPU_PARAM_DEFAULT_IMAGE_EMPTY_23000016: {
                      return @"商品默认图片不能为空";
              
        }
        case PoCApiCode_VENDER_SKU_BARCODE_DUPLICATE_23000017: {
                      return @"商品sku barcode不能重复";
              
        }
        case PoCApiCode_VENDER_SKU_ATTRIBUTES_DUPLICATE_23000018: {
                      return @"商品sku 规格属性不能重复";
              
        }
        case PoCApiCode_VENDER_SPU_CREATE_ERROR_23000019: {
                      return @"商品SPU创建异常";
              
        }
        case PoCApiCode_VENDER_SPU_PROPERTY_COPY_ERROR_23000020: {
                      return @"商品SPU属性复制异常";
              
        }
        case PoCApiCode_PROMOTION_NOT_STARTED_23000030: {
                      return @"活动未开始，敬请期待";
              
        }
        case PoCApiCode_DRAWLOTTERY_NEED_INTEGRAL_23000040: {
                      return @"此次抽奖需要消耗积分";
              
        }
        case PoCApiCode_USER_HAS_NOCHANCE_23000050: {
                      return @"用户今天的抽奖机会已用完";
              
        }
        case PoCApiCode_INTEGRAL_NOT_ENOUGH_23000060: {
                      return @"用户积分余额不足";
              
        }
        case PoCApiCode_INTEGRAL_CONSUME_FAILED_23000070: {
                      return @"积分消费失败,请稍后再试";
              
        }
        case PoCApiCode_NOTICE_UNKNOW_ERROR_25000100: {
                      return @"notice unkown error";
              
        }
        case PoCApiCode_NOTICE_ILLEGLE_ARGUMENT_25000101: {
                      return @"请求参数有误";
              
        }
    }
    return nil;
}

@end
