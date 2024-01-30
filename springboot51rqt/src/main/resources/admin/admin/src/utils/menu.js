const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","开通会员"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核","通过会员"],"menu":"会员","menuJump":"列表","tableName":"huiyuan"}],"menu":"会员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"会员卡","menuJump":"列表","tableName":"huiyuanka"}],"menu":"会员卡管理"},{"child":[{"buttons":["查看","修改","删除","审核","通过会员"],"menu":"开通会员记录","menuJump":"列表","tableName":"kaitonghuiyuanjilu"}],"menu":"开通会员记录管理"},{"child":[{"buttons":["新增","查看","修改","删除","加积分","减积分"],"menu":"积分","menuJump":"列表","tableName":"jifen"}],"menu":"积分管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"水果","menuJump":"列表","tableName":"shuiguo"}],"menu":"水果管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"购买水果订单","menuJump":"列表","tableName":"goumaishuiguodingdan"}],"menu":"购买水果订单管理"},{"child":[{"buttons":["查看","修改","删除","审核"],"menu":"积分兑换记录","menuJump":"列表","tableName":"jifenduihuanjilu"}],"menu":"积分兑换记录管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"加积分记录","menuJump":"列表","tableName":"jiajifenjilu"}],"menu":"加积分记录管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"减积分记录","menuJump":"列表","tableName":"jianjifenjilu"}],"menu":"减积分记录管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"会员水果","menuJump":"列表","tableName":"huiyuanshuiguo"}],"menu":"会员水果管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核"],"menu":"会员购买订单","menuJump":"列表","tableName":"huiyuangoumaidingdan"}],"menu":"会员购买订单管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"水果新闻","tableName":"news"},{"buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","购买"],"menu":"会员卡列表","menuJump":"列表","tableName":"huiyuanka"}],"menu":"会员卡模块"},{"child":[{"buttons":["查看","购买","积分兑换"],"menu":"水果列表","menuJump":"列表","tableName":"shuiguo"}],"menu":"水果模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","支付"],"menu":"开通会员记录","menuJump":"列表","tableName":"kaitonghuiyuanjilu"}],"menu":"开通会员记录管理"},{"child":[{"buttons":["查看"],"menu":"积分","menuJump":"列表","tableName":"jifen"}],"menu":"积分管理"},{"child":[{"buttons":["查看","支付"],"menu":"购买水果订单","menuJump":"列表","tableName":"goumaishuiguodingdan"}],"menu":"购买水果订单管理"},{"child":[{"buttons":["查看"],"menu":"积分兑换记录","menuJump":"列表","tableName":"jifenduihuanjilu"}],"menu":"积分兑换记录管理"}],"frontMenu":[{"child":[{"buttons":["查看","购买"],"menu":"会员卡列表","menuJump":"列表","tableName":"huiyuanka"}],"menu":"会员卡模块"},{"child":[{"buttons":["查看","购买","积分兑换"],"menu":"水果列表","menuJump":"列表","tableName":"shuiguo"}],"menu":"水果模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["查看","会员购买"],"menu":"会员水果","menuJump":"列表","tableName":"huiyuanshuiguo"}],"menu":"会员水果管理"},{"child":[{"buttons":["查看","支付"],"menu":"会员购买订单","menuJump":"列表","tableName":"huiyuangoumaidingdan"}],"menu":"会员购买订单管理"}],"frontMenu":[{"child":[{"buttons":["查看","购买"],"menu":"会员卡列表","menuJump":"列表","tableName":"huiyuanka"}],"menu":"会员卡模块"},{"child":[{"buttons":["查看","购买","积分兑换"],"menu":"水果列表","menuJump":"列表","tableName":"shuiguo"}],"menu":"水果模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"否","roleName":"会员","tableName":"huiyuan"}]
    }
}
export default menu;
