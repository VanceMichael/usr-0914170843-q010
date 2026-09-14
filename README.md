# 跨境运单会签闸门

本项目为铁路承运人与口岸机构提供运单文档会签的统一后端入口。`contracts/waybill.yml` 约定参与角色、文档类型和签名范围，`migrations` 定义业务状态与审计的基础数据边界。

执行 `pytest` 运行测试。`docker compose up --build` 启动 FastAPI、PostgreSQL 和 Redis，服务在 `GET /health` 提供探活响应。
