# Welcome to [cpaas-fit](https://bitbucket.org/mathildetech/alauda-fit) 👋

> TSF docking components.

## 对接部署说明
- 安装包默认namespace为`alauda-system`；
- 安装参数需要指定envs；
- 该组件ingress默认path为/connector，acp访问该地址时，url需要传id_token, 如https://<host>/connector/app/tsf?id_token=xxxx
- 在ingress模式下给tsf验证token地址为: http://<host>/connector/app/tsf/serviceValidate
- 在nodeport模式下给tsf验证token的地址为: http://<ip>:32006/app/tsf/serviceValidate

## Charts最简安装

```
helm install . --set connectors.tsf.url=http://example.com,connectors.csp.url=http://example.com,authentication.oidc_issuer_url=https://10.0.129.100/dex,global.namespace=cpaas-system
```

## charts主要参数说明

```
global:
  registry:
    address: index.alauda.cn                        镜像仓库
  namespace: alauda-system                          部署的目标 namespace
authentication:
  oidc_issuer_url: https://10.0.129.100/dex         dex服务地址必须为https协议
  oidc_client_id: alauda-auth                       client-id
connectors:
  tsf:
    url: http://example.com                         tsf服务地址
  csp:
    url: http://example.com                         csp服务地址
```
