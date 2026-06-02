#import "../../../template.typ": project

#project("FoodWeOrder", url: "https://github.com/faketut/FoodWeOrder")
- 构建带微信支付集成的 Flask 点餐服务：校验回调、订单结算幂等；将慢速/第三方 I/O 下沉到后台 worker 队列，避免高峰期阻塞 Web 层。
- 通过短事务封装库存校验与订单写入，并采用原子扣减（行级锁）消除并发结账导致的超卖，使现存库存与已履约订单保持一致。
- 交付商家端看板（按日聚合销售额、SKU 周转、复购客户），直接基于交易型数据模型生成，让店主用实时运营指标而非人工统计来调整库存与定价。
