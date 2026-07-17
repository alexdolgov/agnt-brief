# Agentic Audit Brief: Locus Finance

## Project Overview

- Project: Locus Finance (`locus-finance`)
- Website: [https://www.locus.finance](https://www.locus.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.178Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, ethereum
- Contract surface: 157 unique implementations (270 raw deployments)
- DeFi Llama TVL: $43,019.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 27 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (basestrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 328; live-surface contracts included: 238 (142 live, 96 unknown).
- Excluded by liveness: 90 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/57 (7.0%)
- Deployed-live implementations: 74 of 157 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/74
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 83
- Unique implementations: 157
- Raw deployments: 270
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 5.4% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuraBALStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b4c9a314117e037461fbdc980c9debefee6f891`](./contracts/ethereum-1/0x1b4c9a314117e037461fbdc980c9debefee6f891/); ethereum `0x2b14e1254e6b069474cc426d0f1645c8b11f36a5` | ✅ Audited |
| AuraWETHStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x395f4a621dd51b120ece2152f45c315bb14799a0`](./contracts/ethereum-1/0x395f4a621dd51b120ece2152f45c315bb14799a0/); ethereum `0xbcfa151c40fa0dbd33b559b3ca49f019d3dcae9c` | ✅ Audited |
| CVXStrategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x10b42ddeb9571445c8bf5fa83c834313c51b06dc`](./contracts/ethereum-1/0x10b42ddeb9571445c8bf5fa83c834313c51b06dc/); ethereum `0x8cc29eb2f467cef3efab049e9ba5b97d9d785edc`; ethereum `0xf99302d3d4a30d2ac26b4f8e0390171b29d5f547` | ✅ Audited |
| FXSStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0de43faa33a21273867b390dc02152c2872046a8`](./contracts/ethereum-1/0x0de43faa33a21273867b390dc02152c2872046a8/); ethereum `0x854f178112008143014ecffd4059e3f913a47b40` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuraTriPoolStrategy | unknown | ethereum | n/a | [`0x50670b867aa20319fd8e3c685005576fdf40147f`](./contracts/ethereum-1/0x50670b867aa20319fd8e3c685005576fdf40147f/) | ⚠️ Unaudited |
| BeefyPendleStrategy | unknown | arbitrum | n/a | [`0xca271d0dbd646d64423432de8d0aa6300c9cddf5`](./contracts/arbitrum-42161/0xca271d0dbd646d64423432de8d0aa6300c9cddf5/) | ⚠️ Unaudited |
| Diamond | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6c447230f098cddb62f6aeaeec25c27e8b90b25e`](./contracts/arbitrum-42161/0x6c447230f098cddb62f6aeaeec25c27e8b90b25e/); arbitrum `0xfce625e69bd4952417fe628bc63d9aa0e4012684` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | n/a | [`0xecc5e0c19806cf47531f307140e8b042d5afb952`](./contracts/arbitrum-42161/0xecc5e0c19806cf47531f307140e8b042d5afb952/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x08909fc5d2e322692870231f1a979eb104347fe2`](./contracts/arbitrum-42161/0x08909fc5d2e322692870231f1a979eb104347fe2/); arbitrum `0x44a5652055a19a211f0199ea606cc2a84dc48dc2`; arbitrum `0xe40076869ddf0885f59ffd3c005f8f3da504355b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0da285586c03301b9d09f26b7df6386cc3e4d0d1`](./contracts/arbitrum-42161/0x0da285586c03301b9d09f26b7df6386cc3e4d0d1/); arbitrum `0x0f0911d9b15a22948d3e7639c5e1d6267b21a75d`; arbitrum `0x294c57b56dc98b36eca11849ff5c3b3ed3bedda2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x17f2f455ccfc37ff7cebb24a56347e1c11e3b0e8`](./contracts/arbitrum-42161/0x17f2f455ccfc37ff7cebb24a56347e1c11e3b0e8/); arbitrum `0x5b5a2ab795aa731ef74a0b97f5190ef6661e460f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2e5331ff35801e834a7e085724611ced30fad542`](./contracts/arbitrum-42161/0x2e5331ff35801e834a7e085724611ced30fad542/); arbitrum `0x568bc5910219c5e699056153ec25742fee15aa24` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3a2349b990ddf19119180434bbcb7722737eb3a8`](./contracts/arbitrum-42161/0x3a2349b990ddf19119180434bbcb7722737eb3a8/); arbitrum `0xafc7025ae2c0d34af24c362b09e1cd4e199c7f8f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x3cf0dd05fc591f6e41022c0add62b15e789d4992`](./contracts/arbitrum-42161/0x3cf0dd05fc591f6e41022c0add62b15e789d4992/); arbitrum `0x773dc333a36d8032c0cf4ece42c79799157dc8c5`; arbitrum `0xa6a16aedb87f2844cd0a7cc6d0998365b3921e7c`; arbitrum `0xec6ebc842f7bb965c436ce97024f6c113ffa1320` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x405beada362a9d2d32bda45f2ae1ed8bc891e0e4`](./contracts/arbitrum-42161/0x405beada362a9d2d32bda45f2ae1ed8bc891e0e4/); arbitrum `0x51d616eeab4291d81826c4413e52c2c2cc3fca82` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x4bd64eb32d05c488cb2aa3f7c1c41f90c598ec10`](./contracts/arbitrum-42161/0x4bd64eb32d05c488cb2aa3f7c1c41f90c598ec10/); arbitrum `0x95a7422b7dae2bef1b5e969b93db69bd1a348e9b`; arbitrum `0xaa17a4bf2f4d39000d52b7c657c93a2c9a37a37b`; arbitrum `0xd1348133404911040fe9332b3e7a0f89e60b5870`; arbitrum `0xd3823b7635f7356b79d992414eb4cdddbbe0cb61`; arbitrum `0xd53c6315375d49f9f10e435b3034ed0d240de838` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0x57c817253e0ee2b260468e81628bc6ccdd67c23f`](./contracts/arbitrum-42161/0x57c817253e0ee2b260468e81628bc6ccdd67c23f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6ce65fd4e0136c46a66304b005f26ad99ab02518`](./contracts/arbitrum-42161/0x6ce65fd4e0136c46a66304b005f26ad99ab02518/); arbitrum `0xac92ebab5c1305314e4454319caa26b9ef01ccf9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8a11cb417f0785cbea249f6ea5326e85d5af4618`](./contracts/arbitrum-42161/0x8a11cb417f0785cbea249f6ea5326e85d5af4618/); arbitrum `0xfbbd6eb5e5e87eba1d30c0cd025aba91298ea068` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9297641d2e4074ccece9a7f2e75add871e473eab`](./contracts/arbitrum-42161/0x9297641d2e4074ccece9a7f2e75add871e473eab/); arbitrum `0xfcd8166889e25cd76a779e77de326ccbd296d98d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa9c734e8735c158f86b99fb80e280d6530b759d1`](./contracts/arbitrum-42161/0xa9c734e8735c158f86b99fb80e280d6530b759d1/); arbitrum `0xebb8b082b2309e56a7d4545f37a600ec1211f6b4` | ⚠️ Unaudited |
| GNSStrategy | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x2a683b4db3c018817f8a79e0554049e23ad2c84f`](./contracts/arbitrum-42161/0x2a683b4db3c018817f8a79e0554049e23ad2c84f/); arbitrum `0x381d91367317a9edb49c770ffade27fe91c977f5`; arbitrum `0x4488b69067eae5e201a7330c56198aba5a595e3f`; arbitrum `0x9c073294bafcd23150ba3364dabe37571b47dabd`; arbitrum `0xa504b036a0ca72cf9325b87e34e3d3d8392bb14d` | ⚠️ Unaudited |
| GNSStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3cbad75284bd1a15c2c32b7cf7558e7235747541`](./contracts/arbitrum-42161/0x3cbad75284bd1a15c2c32b7cf7558e7235747541/); arbitrum `0x6b1c7a6e061baa46e2bb79e862e68a4690dd4061` | ⚠️ Unaudited |
| HopStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x68ee86f798f247fec4d33c224dad360dc919450a`](./contracts/arbitrum-42161/0x68ee86f798f247fec4d33c224dad360dc919450a/); arbitrum `0xbaf7bc7027deb70e339a4528458107899dc099f8` | ⚠️ Unaudited |
| HopStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa93e1dff89dccca3c3cadfd0a28ad071c230ed84`](./contracts/arbitrum-42161/0xa93e1dff89dccca3c3cadfd0a28ad071c230ed84/); arbitrum `0xc268d70a718cf42b674f11751ea8b51223b2b796` | ⚠️ Unaudited |
| LSDepositaryForVaultTokensFacet | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x24d6d6af23cd865b4dee7f169ca60bf07b4dd9ae`](./contracts/arbitrum-42161/0x24d6d6af23cd865b4dee7f169ca60bf07b4dd9ae/); arbitrum `0x6390743ccb7928581f61427652330a1aefd885c2` | ⚠️ Unaudited |
| LTERC20Facet | token | arbitrum | n/a | [`0xe1d3495717f9534db67a6a8d4940dd17435b6a9e`](./contracts/arbitrum-42161/0xe1d3495717f9534db67a6a8d4940dd17435b6a9e/) | ⚠️ Unaudited |
| OnChainVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x05cd4b1e2d7acaeeb2d2f640a8d6f75791930c4e`](./contracts/ethereum-1/0x05cd4b1e2d7acaeeb2d2f640a8d6f75791930c4e/); ethereum `0x0cd5cda0e120f7e22516f074284e5416949882c2` | ⚠️ Unaudited |
| OnChainVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x387b7cb67c3c60d5441e6dce26663e8c6ceee552`](./contracts/ethereum-1/0x387b7cb67c3c60d5441e6dce26663e8c6ceee552/); ethereum `0xb0a66dd3b92293e5dc946b47922c6ca9de464649` | ⚠️ Unaudited |
| OnChainVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7057e7e6874a7b46096d6e59e6ef25dc7f9e5d3d`](./contracts/arbitrum-42161/0x7057e7e6874a7b46096d6e59e6ef25dc7f9e5d3d/); arbitrum `0xf8f045583580c4ba954cd911a8b161fafd89a9ef` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x0876c47cfc47e20d8b8220abdd925fee3081bca2`](./contracts/arbitrum-42161/0x0876c47cfc47e20d8b8220abdd925fee3081bca2/); arbitrum `0x114de5aa6990097d2eca974c1b2a6e1dc3ca7faa`; arbitrum `0x529d1068c915bc60aabb62466efedca3b12dff9e`; arbitrum `0x942044f8ba12731000b5010d54c6c50018c40f4c`; arbitrum `0x9f1e5f300cfb09fa6518e82806818dd80a171828`; arbitrum `0xa2d8def20db4050b7864df337a6bb1372421de7f`; arbitrum `0xb818f39a43a15d4674ea7681ff5ac5396708d2d6`; arbitrum `0xff4965462e04144ad4a18544bb3678496d6501f7` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x208e688a08ff4ebec4772957d3b1c2f682ea8694`](./contracts/arbitrum-42161/0x208e688a08ff4ebec4772957d3b1c2f682ea8694/); arbitrum `0x2912f1e2c2ca016f912182ef34ba84ef97f210ba`; arbitrum `0x43c73c92246728b8e47e1679a4b5e3122012bc80`; arbitrum `0x4bb316a544b88511db7e34825f57f24c02e8a066`; arbitrum `0x5bb916c06da66ba73b943377f49be66e0789eb28`; arbitrum `0x69c103010ae99a8e9ac2ee8554efb15d08020a93`; arbitrum `0x6c2b7ab29863fe02ca719e64946c695592703cce`; arbitrum `0x6ef5d0b8ae800269e99fda9587fa3dad002e23ef`; arbitrum `0xa052e2e1381b198a3a00769fb0f2fe0142b7bc18`; arbitrum `0xb1e59f74faaafb80f50f76746b3e2ef0a2ea193d`; arbitrum `0xbce096f3587817ba0e6f679be399549cace08482` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x269a26ab05c39cbd8ae1d887b2925556614389fa`](./contracts/arbitrum-42161/0x269a26ab05c39cbd8ae1d887b2925556614389fa/); arbitrum `0x31f615dd3b4f77affe0932f11ba7c178e563043b` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x2bc41c9eb8a7531aea2d4ddfdb03fb6a758b38a1`](./contracts/arbitrum-42161/0x2bc41c9eb8a7531aea2d4ddfdb03fb6a758b38a1/); arbitrum `0x49565de8ae53d1bbcebabeeffb4b5dae8f7de833`; arbitrum `0x785b288233aa92d6b86e3593a230888803ef7be1`; arbitrum `0x950e461f3f615e847c3cc80a826aa5be2f08e507`; arbitrum `0x9ba15da32d597b052ed960bfa79ad7370f83bbe6`; arbitrum `0xc1f3c15399574702d1f93471f06d8a804544ac38`; arbitrum `0xdc8483d76f14beaf98aa8c96af0b4b63aa10f582`; arbitrum `0xf5768cfe34a360442ce00609594af9841d7d7073` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | [`0x324450a9bb3814e0b8c88dc847ad81559b9968b2`](./contracts/arbitrum-42161/0x324450a9bb3814e0b8c88dc847ad81559b9968b2/) | ⚠️ Unaudited |
| OnChainVaultPendle | core_logic | arbitrum | n/a | [`0x515f3533a17e2eefb13313d9248f328c94dbe641`](./contracts/arbitrum-42161/0x515f3533a17e2eefb13313d9248f328c94dbe641/) | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | [`0x84a896b7a0f34693cefb2480e44f9061c6b42368`](./contracts/arbitrum-42161/0x84a896b7a0f34693cefb2480e44f9061c6b42368/) | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | [`0x903ba028fa6b2aa7fece9fe02038c9795a055eb6`](./contracts/arbitrum-42161/0x903ba028fa6b2aa7fece9fe02038c9795a055eb6/) | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | [`0xe77c02e778199221b005b84bd900b32de2369d6a`](./contracts/arbitrum-42161/0xe77c02e778199221b005b84bd900b32de2369d6a/) | ⚠️ Unaudited |
| OriginEthStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a82566bb321873701191878cebbc27ee984aa6b`](./contracts/ethereum-1/0x8a82566bb321873701191878cebbc27ee984aa6b/); ethereum `0xa93e1dff89dccca3c3cadfd0a28ad071c230ed84` | ⚠️ Unaudited |
| PendleEtherFi | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x64e57ade661ffd9dc9f97732fc34adad0dbaa0e3`](./contracts/arbitrum-42161/0x64e57ade661ffd9dc9f97732fc34adad0dbaa0e3/); arbitrum `0xc3ad420689eaa5b5da80976e49be50c946ade012` | ⚠️ Unaudited |
| PendleEzEth | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x152fb6f9250fa041f9d4ee375325b1abf5fe7640`](./contracts/arbitrum-42161/0x152fb6f9250fa041f9d4ee375325b1abf5fe7640/); arbitrum `0x1bd045e7ccab2686c458b5ceed4ec4dc60f5bc37`; arbitrum `0x6a899b6f6e8d6aff1b3e942f170b80363c59be35` | ⚠️ Unaudited |
| PendleEzEth | unknown | arbitrum | n/a | [`0x24f6b690c4cd84966069a4b62515d1bca1ee4d2e`](./contracts/arbitrum-42161/0x24f6b690c4cd84966069a4b62515d1bca1ee4d2e/) | ⚠️ Unaudited |
| PendleEzEth | unknown | arbitrum | n/a | [`0x25fc7ffa425a63f6ced2d974bbd276c443007b71`](./contracts/arbitrum-42161/0x25fc7ffa425a63f6ced2d974bbd276c443007b71/) | ⚠️ Unaudited |
| PendleEzEth | unknown | arbitrum | n/a | [`0x342754cd76c5a6213a5975472720782abbab94aa`](./contracts/arbitrum-42161/0x342754cd76c5a6213a5975472720782abbab94aa/) | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0f6c31d923175b58c14fc436a08257774b8c4592`](./contracts/arbitrum-42161/0x0f6c31d923175b58c14fc436a08257774b8c4592/); arbitrum `0x35d8eaf4ba64640d6fcc5bac8d359016c7ff560e`; arbitrum `0x7f29df2b1fb1643186d9110066758ceffdca90d7` | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x42189c0588bf73a449d619794c2eb409c2554456`](./contracts/arbitrum-42161/0x42189c0588bf73a449d619794c2eb409c2554456/); arbitrum `0xd8b10c1ff8acea7ccfd42af30f1597c4c07691d8`; arbitrum `0xe10d82ca259853a2e4f2e9fc78c316a00388147c` | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x438a4a1b64acdc80fb75f26af85848dcfe1a0c64`](./contracts/arbitrum-42161/0x438a4a1b64acdc80fb75f26af85848dcfe1a0c64/); arbitrum `0x9d2c4212bc9036bd589549524f4aed2799ee374b` | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5f06bc1d58286011b33de636d4ab5df49c86b7f9`](./contracts/arbitrum-42161/0x5f06bc1d58286011b33de636d4ab5df49c86b7f9/); arbitrum `0x89b9e8ccf9c03ea16369726581a0afd354b5a0d9` | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | [`0xac36cef3acb969812adaaf1ca09810f998c34788`](./contracts/arbitrum-42161/0xac36cef3acb969812adaaf1ca09810f998c34788/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x0b4cf39b345aafe16957794636e5b0e7c90d0f87`](./contracts/ethereum-1/0x0b4cf39b345aafe16957794636e5b0e7c90d0f87/); arbitrum [`0x0b4cf39b345aafe16957794636e5b0e7c90d0f87`](./contracts/arbitrum-42161/0x0b4cf39b345aafe16957794636e5b0e7c90d0f87/); arbitrum `0x1b4c9a314117e037461fbdc980c9debefee6f891` | ⚠️ Unaudited |
| RocketAuraStrategy | unknown | ethereum | n/a | [`0xf12c92cbe97f16cfb8dc007545c29a55912177fe`](./contracts/ethereum-1/0xf12c92cbe97f16cfb8dc007545c29a55912177fe/) | ⚠️ Unaudited |
| SaverStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x05758130a5222e0bab6f7e9a2b7ae25fafd64183`](./contracts/arbitrum-42161/0x05758130a5222e0bab6f7e9a2b7ae25fafd64183/); arbitrum `0x10d59e26511db3861d81a6c9d91fb801a7ac0336` | ⚠️ Unaudited |
| SgBridge | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1c0c2133c9f2b74fb3522df0437d290f364f38a3`](./contracts/arbitrum-42161/0x1c0c2133c9f2b74fb3522df0437d290f364f38a3/); arbitrum `0x2b14e1254e6b069474cc426d0f1645c8b11f36a5` | ⚠️ Unaudited |
| SgBridge | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x70f92c756285f8f3cf3a3cc67ef6b264b8bd78cf`](./contracts/arbitrum-42161/0x70f92c756285f8f3cf3a3cc67ef6b264b8bd78cf/); arbitrum `0x9f5bdc1f1483ba60941c9e575d9abf7ae815e517`; arbitrum `0xc66534d9f18a9ab1b092861590495f6e4b4cfe14` | ⚠️ Unaudited |
| StargateV2SynthChef | unknown | arbitrum | n/a | [`0x28ee1b1db52b23a539792effe2b2fa69648116a2`](./contracts/arbitrum-42161/0x28ee1b1db52b23a539792effe2b2fa69648116a2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x4a8a7539ad59c277c1915c3938d2b0c15cd0ee97`](./contracts/ethereum-1/0x4a8a7539ad59c277c1915c3938d2b0c15cd0ee97/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6a7f42c6f1a51316378d5fabf95ac25e72a54aef`](./contracts/arbitrum-42161/0x6a7f42c6f1a51316378d5fabf95ac25e72a54aef/); arbitrum `0xa7eb4efe088a3618c9ba21e1520e0c8460b42d37` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0xb0a66dd3b92293e5dc946b47922c6ca9de464649`](./contracts/arbitrum-42161/0xb0a66dd3b92293e5dc946b47922c6ca9de464649/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0xbf8181f3b5e71fa0cbbe1e067f408a9a0558c60f`](./contracts/arbitrum-42161/0xbf8181f3b5e71fa0cbbe1e067f408a9a0558c60f/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2a889e9ef10c7bd607473aadc8c806c4511eb26f`](./contracts/arbitrum-42161/0x2a889e9ef10c7bd607473aadc8c806c4511eb26f/); arbitrum `0xd1e874c70cb23a65b06a24555962cac730ac1a49` | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x395f4a621dd51b120ece2152f45c315bb14799a0`](./contracts/arbitrum-42161/0x395f4a621dd51b120ece2152f45c315bb14799a0/); arbitrum `0xbcfa151c40fa0dbd33b559b3ca49f019d3dcae9c` | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x62ed3fb4c5798725aaa9dc020fd593b78a80b779`](./contracts/arbitrum-42161/0x62ed3fb4c5798725aaa9dc020fd593b78a80b779/); arbitrum `0x6318938f825f57d439b3a9e25c38f04ef97987d8` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x000152c46e507dde65b65a817f95aef3e14ec553`](./contracts/arbitrum-42161/0x000152c46e507dde65b65a817f95aef3e14ec553/); arbitrum `0x95611dcbffc93b97baa9c65a23aafdec088b7f32` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x1204c6c7ec2d60e1a12ca02473d25250767d30ce`](./contracts/arbitrum-42161/0x1204c6c7ec2d60e1a12ca02473d25250767d30ce/); arbitrum `0x3ffa4658922e1c9b17b0c9edeed592ee92592b37`; arbitrum `0x5205d16496a2be14028b21bebf06460938714cdd`; arbitrum `0x63dbaf88838c9d0432d1e911099cdd2105c0f8c7`; arbitrum `0x63dc3869d169c6ab95403398e5d163b7e0c3f1f1`; arbitrum `0x790fb50bfb452c1c86ebfa4d31642629f9f47559`; arbitrum `0x7c7b84044bcbba8458476102d1a0ba0bb5812a6b`; arbitrum `0x92a8f3e57692f1dde22fb8cfd304d4d447c8c3a0`; arbitrum `0xa8ade294284cbb5500c49bd0bea33f0a6569b0b9`; arbitrum `0xbe3f9f9309c66ff82c30dc4066e24a7f53a92852`; arbitrum `0xde5f9e4f7036a878f06e48340ef0177f21e0e470` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x2e5cbf05856d11376e94df8246149db9a290f014`](./contracts/arbitrum-42161/0x2e5cbf05856d11376e94df8246149db9a290f014/); arbitrum `0x6776844ff52cfaae145d4046b124738b5bf46803`; arbitrum `0x6cd7eb459e7e534ac6930c7262662b42135aab83`; arbitrum `0xe074ff22f3806f675e158a8dc0aa293a0e1f3abb`; arbitrum `0xfcf07f71714dfb7d9e14c282d3ff476fad64e0c3` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x2ff0850be310f32b826624bdf3d98804653982cf`](./contracts/arbitrum-42161/0x2ff0850be310f32b826624bdf3d98804653982cf/); arbitrum `0x43ea03a0b43a3e71e00f1f75047b62b456e80292`; arbitrum `0x6599934d8c524358df3a7b91984a5972b66d8401`; arbitrum `0x6f1d519d16124a254d72069c51ad9c1d7fe1c843`; arbitrum `0xf2ea41fc814078bc79d82a615d8b97b7993b98ff`; arbitrum `0xf7d1c52fd02541f827a385c0607988e1df6f9705` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x369b6dedac484100a6043cca825c5805a5732a18`](./contracts/arbitrum-42161/0x369b6dedac484100a6043cca825c5805a5732a18/); arbitrum `0xa37558558d49c263da04ac73be2418541e24ebc3`; arbitrum `0xa74f54c2c3d21beb4cce301353941846a4c0d296`; arbitrum `0xb42099f042677b8c7f9026dfafb3a80a233f8833`; arbitrum `0xfb92f35c431b7dfee746e96528c641ad05b3b241` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x55a0ebd4c4c121daed4afaac049b3dda7827feea`](./contracts/arbitrum-42161/0x55a0ebd4c4c121daed4afaac049b3dda7827feea/); arbitrum `0xac4b6efa1e213c1a0b0895726515454743c2a49d` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6800d74e0c7da229459f75ec771e141272374ef8`](./contracts/arbitrum-42161/0x6800d74e0c7da229459f75ec771e141272374ef8/); arbitrum `0xa31ec4c877c65bea5c5d4c307473624a0b377090` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x90ac1bdd88fb04dea485eca95350f14b11ea0fb5`](./contracts/arbitrum-42161/0x90ac1bdd88fb04dea485eca95350f14b11ea0fb5/); arbitrum `0xa9d5814c83b49f5203310d27bd48aec3153abe35`; arbitrum `0xfb0e59eb9afdd2e3f667793864cc12c734cb845e` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa66afe02047dd0c4c9f9554b2eaf16a74ed5456c`](./contracts/arbitrum-42161/0xa66afe02047dd0c4c9f9554b2eaf16a74ed5456c/); arbitrum `0xf8253b9bbdd1d4134831a20d1d77bf457661894c` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc8eb89d11264e9c8462a9623ca6239ee13819768`](./contracts/arbitrum-42161/0xc8eb89d11264e9c8462a9623ca6239ee13819768/); arbitrum `0xd8781a98ab01c76b146a325a6a0c902476a05b59` | ⚠️ Unaudited |
| YCRVStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcaa70cc97165d8168e3da7a99f6430d64e2f09a1`](./contracts/ethereum-1/0xcaa70cc97165d8168e3da7a99f6430d64e2f09a1/); ethereum `0xe4fb84cdd1f4d0ae9f9972d2f5da96dc67c2f859` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (83)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xcd1bc23b85add6e843cde49880eff153d43aff92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08a2e3a7e76a1d62d8f720868232ee0555d736c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b85a56b12a1160208c35f1b597110fc8d8e0bce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c58de3642d172b26b2998fd265f55aab3e75631` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cdb153eb2a23c59e7f8d2f2ace54cc3bffc0143` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0dfdc18378ec75771bf91c5c6fb77a2feb922a0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e639da7951e1f70d237fbcb84cb78ede1ce4bbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x117ba3ef3c0d343ecb46294dbe5a520542e7d6c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ee8a34e3616ca47bb0a4c3261b62ab73b6763b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f38d0256e85f0ef6e53ad962fcba51d2025150e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25958013657e72a96f50693fb05142fd9260ed9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2be6cb3ead07a49774ffee2737315444a9337739` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x334a840853dd20a50d67f31c4ae9a7b548186b19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34a992565cd66b24f527254d1318a9fd043bc602` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35732660ad9ae33f66f356cebfcfcbf5f899b3ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x360ab7aade0afbfeec1fce071c7d63c8eb8d6239` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b6f4a2a8c7b5f83f745b6c05848465501cb1852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x402e3e0a29fd22b5259c97846ef97f44f6dad80a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41424be3dce593a7c51167b9c07bdc989a5d16d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42c21c38d5669681f72e18ddaf1f5dc5d05ec8e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45e3fd7cfb6e8a79a6d32b0fc651ea5796e0e9b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x483a4bc4f892620a2b72afa738fe96e2810c5f04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48bbe9a89a709c22aacc909cf059b7670f742a29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x495f31857a4c9d73b0ae3496ce31ca25fa7e0552` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e89ebd7a18f61b18849ca0ec4da8ec72c374f9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52dfbd65adcc117fab63b4b43e8ef64cb8c8dd0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54aa7a3c94096de5fd16224623936b56417898a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61e9ce582783df695ff07e45315f21ae88226aff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6725271ea060e3a05ad55cba2853274fcabc8132` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x687869421f3301a76a8102fe7eba529924b96695` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b6892b8a2f2f165c84d6bde5468cf7ea5a3e263` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ca8c60a9d45446ef2f02bb809ca82fd6c955935` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x703a97ff12c8adf89a99d33346c52ed78a4a31e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74ddb79234cd6d9d4a28995c71f0ec216f4de22b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x798cdb3398b98b0796f826f7ab09f696dcb47a66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79dd206fffab9c82ef831b5d0f59c98ce535f8e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cc3a3992303fc78bacf8cbd711076f0ad2f1d27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f89114ce1c686ca9860347de5563ac2fccd336e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x862a53cc530616b836bbceaa6e7abc4171a7f3cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8803fdacc8c3fef09b41a7e22d7e3ecc12d0528b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b6c3492e50fadeeb3c890837264619ff327f914` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f7b4b02f01fb949bb0d6f9134e768aced774bfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9197b49c7aca8f09485854ac4ea622c9031966b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98d0a87f52a37bb214aec999d66b1c3a8b74e91d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e6331463834db76718296d40024c6851d1cc07c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9eb44147513597b836b19a86a7d56d45db5acb05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9fc8459be2492f80c5b0a9a9423ea882df361519` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa090d59f1a521c2ad2488cb01ab137b115e6a5f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa25293faac80b4fda0210bbfc6d7154de6aad624` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa44dcc4d76d036d280e8802bb0635d2ebd240079` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4b7fe7bb5dd0de9677661f195067ed03f7badf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac626667d43af1c1035357921592e70e27e8039c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4c8868d74174e6b24d9839e9b75bb9d25f0bdaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4ef823c7c63b60b2f1773eee4ac888f62e9862b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb75d95854e52d0fd1726ddc395e37d4537d3006b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb79eb85ba6ba3ebbc9b34ce19b152ec36ef04732` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb923c89728857a6e709370d8ed48fcc48f72e141` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc06904f10331c3b851f2bc2c00062da6876714fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1efb08245702bcea825bca44cb1c69768c65068` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc22c60e3200791b84cd045ee33334bee666b726c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2db63b30fcc54e23ab85671fca567fd788318a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6cbbabec85bddd3e5b0151bfce8c817b02d7151` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6f82a455c8e965d2b2f58df658f8a1faab67917` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8ff680c82ee1ad6b00baa344fdf8e0a889876f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9e0bb72fd32fbd136d5baa179a188279551dcc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbd1c9daeca1746c2173c9028a94ca97ad0d423c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc6a5297757d543de3d5c9826e7dcdb5c002ab08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2799a0a478173a442c3ba59bb20a98f86ddd224` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9c6b2e7fde014f28838e79c7b4237b7e9523804` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9d4ee656fae8b72f28c4547f4cfd9aa3dfc134c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda2fc73cb47ef951db5209a51991d7967dcafc1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc93e92867204a115c9ba6693fe5b564fb25c478` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf93b1d886e826a1af77519a37a4892630156f5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8d823e25d61928bfd8510fd17eeaa9421eca370` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb941ded97231616add8f0abb719671ab20a1211` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec899eaa528d349732706143d9e0d4f2b75eae18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeddadcca616ca7ae1e13966d470ca8a1c426de40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf086fa0e3adb499abe0bcde4933f0e8c323d1f4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7b002baf4c20ee4fe95e176db6510cf383ed425` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7f55883e833d67978eff75512f1c4d4c0682e43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9b3706996173e82a3dcf7063351101b267ec1db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc233618cdbf55a1d2e78e209c04fb5027489de5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffd19004e6324d639e0d04ef62575ece49a7377d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Locus Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Locus%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x50670b867aa20319fd8e3c685005576fdf40147f`](./contracts/ethereum-1/0x50670b867aa20319fd8e3c685005576fdf40147f/) | AuraTriPoolStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xca271d0dbd646d64423432de8d0aa6300c9cddf5`](./contracts/arbitrum-42161/0xca271d0dbd646d64423432de8d0aa6300c9cddf5/) | BeefyPendleStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c447230f098cddb62f6aeaeec25c27e8b90b25e`](./contracts/arbitrum-42161/0x6c447230f098cddb62f6aeaeec25c27e8b90b25e/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xecc5e0c19806cf47531f307140e8b042d5afb952`](./contracts/arbitrum-42161/0xecc5e0c19806cf47531f307140e8b042d5afb952/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a683b4db3c018817f8a79e0554049e23ad2c84f`](./contracts/arbitrum-42161/0x2a683b4db3c018817f8a79e0554049e23ad2c84f/) | GNSStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3cbad75284bd1a15c2c32b7cf7558e7235747541`](./contracts/arbitrum-42161/0x3cbad75284bd1a15c2c32b7cf7558e7235747541/) | GNSStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x68ee86f798f247fec4d33c224dad360dc919450a`](./contracts/arbitrum-42161/0x68ee86f798f247fec4d33c224dad360dc919450a/) | HopStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa93e1dff89dccca3c3cadfd0a28ad071c230ed84`](./contracts/arbitrum-42161/0xa93e1dff89dccca3c3cadfd0a28ad071c230ed84/) | HopStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24d6d6af23cd865b4dee7f169ca60bf07b4dd9ae`](./contracts/arbitrum-42161/0x24d6d6af23cd865b4dee7f169ca60bf07b4dd9ae/) | LSDepositaryForVaultTokensFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe1d3495717f9534db67a6a8d4940dd17435b6a9e`](./contracts/arbitrum-42161/0xe1d3495717f9534db67a6a8d4940dd17435b6a9e/) | LTERC20Facet | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05cd4b1e2d7acaeeb2d2f640a8d6f75791930c4e`](./contracts/ethereum-1/0x05cd4b1e2d7acaeeb2d2f640a8d6f75791930c4e/) | OnChainVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x387b7cb67c3c60d5441e6dce26663e8c6ceee552`](./contracts/ethereum-1/0x387b7cb67c3c60d5441e6dce26663e8c6ceee552/) | OnChainVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7057e7e6874a7b46096d6e59e6ef25dc7f9e5d3d`](./contracts/arbitrum-42161/0x7057e7e6874a7b46096d6e59e6ef25dc7f9e5d3d/) | OnChainVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0876c47cfc47e20d8b8220abdd925fee3081bca2`](./contracts/arbitrum-42161/0x0876c47cfc47e20d8b8220abdd925fee3081bca2/) | OnChainVaultPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x208e688a08ff4ebec4772957d3b1c2f682ea8694`](./contracts/arbitrum-42161/0x208e688a08ff4ebec4772957d3b1c2f682ea8694/) | OnChainVaultPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x269a26ab05c39cbd8ae1d887b2925556614389fa`](./contracts/arbitrum-42161/0x269a26ab05c39cbd8ae1d887b2925556614389fa/) | OnChainVaultPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2bc41c9eb8a7531aea2d4ddfdb03fb6a758b38a1`](./contracts/arbitrum-42161/0x2bc41c9eb8a7531aea2d4ddfdb03fb6a758b38a1/) | OnChainVaultPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x324450a9bb3814e0b8c88dc847ad81559b9968b2`](./contracts/arbitrum-42161/0x324450a9bb3814e0b8c88dc847ad81559b9968b2/) | OnChainVaultPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x515f3533a17e2eefb13313d9248f328c94dbe641`](./contracts/arbitrum-42161/0x515f3533a17e2eefb13313d9248f328c94dbe641/) | OnChainVaultPendle | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x84a896b7a0f34693cefb2480e44f9061c6b42368`](./contracts/arbitrum-42161/0x84a896b7a0f34693cefb2480e44f9061c6b42368/) | OnChainVaultPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x903ba028fa6b2aa7fece9fe02038c9795a055eb6`](./contracts/arbitrum-42161/0x903ba028fa6b2aa7fece9fe02038c9795a055eb6/) | OnChainVaultPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe77c02e778199221b005b84bd900b32de2369d6a`](./contracts/arbitrum-42161/0xe77c02e778199221b005b84bd900b32de2369d6a/) | OnChainVaultPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a82566bb321873701191878cebbc27ee984aa6b`](./contracts/ethereum-1/0x8a82566bb321873701191878cebbc27ee984aa6b/) | OriginEthStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05758130a5222e0bab6f7e9a2b7ae25fafd64183`](./contracts/arbitrum-42161/0x05758130a5222e0bab6f7e9a2b7ae25fafd64183/) | SaverStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c0c2133c9f2b74fb3522df0437d290f364f38a3`](./contracts/arbitrum-42161/0x1c0c2133c9f2b74fb3522df0437d290f364f38a3/) | SgBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x70f92c756285f8f3cf3a3cc67ef6b264b8bd78cf`](./contracts/arbitrum-42161/0x70f92c756285f8f3cf3a3cc67ef6b264b8bd78cf/) | SgBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a889e9ef10c7bd607473aadc8c806c4511eb26f`](./contracts/arbitrum-42161/0x2a889e9ef10c7bd607473aadc8c806c4511eb26f/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x395f4a621dd51b120ece2152f45c315bb14799a0`](./contracts/arbitrum-42161/0x395f4a621dd51b120ece2152f45c315bb14799a0/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x62ed3fb4c5798725aaa9dc020fd593b78a80b779`](./contracts/arbitrum-42161/0x62ed3fb4c5798725aaa9dc020fd593b78a80b779/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x000152c46e507dde65b65a817f95aef3e14ec553`](./contracts/arbitrum-42161/0x000152c46e507dde65b65a817f95aef3e14ec553/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1204c6c7ec2d60e1a12ca02473d25250767d30ce`](./contracts/arbitrum-42161/0x1204c6c7ec2d60e1a12ca02473d25250767d30ce/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e5cbf05856d11376e94df8246149db9a290f014`](./contracts/arbitrum-42161/0x2e5cbf05856d11376e94df8246149db9a290f014/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ff0850be310f32b826624bdf3d98804653982cf`](./contracts/arbitrum-42161/0x2ff0850be310f32b826624bdf3d98804653982cf/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x369b6dedac484100a6043cca825c5805a5732a18`](./contracts/arbitrum-42161/0x369b6dedac484100a6043cca825c5805a5732a18/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x55a0ebd4c4c121daed4afaac049b3dda7827feea`](./contracts/arbitrum-42161/0x55a0ebd4c4c121daed4afaac049b3dda7827feea/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6800d74e0c7da229459f75ec771e141272374ef8`](./contracts/arbitrum-42161/0x6800d74e0c7da229459f75ec771e141272374ef8/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x90ac1bdd88fb04dea485eca95350f14b11ea0fb5`](./contracts/arbitrum-42161/0x90ac1bdd88fb04dea485eca95350f14b11ea0fb5/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa66afe02047dd0c4c9f9554b2eaf16a74ed5456c`](./contracts/arbitrum-42161/0xa66afe02047dd0c4c9f9554b2eaf16a74ed5456c/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc8eb89d11264e9c8462a9623ca6239ee13819768`](./contracts/arbitrum-42161/0xc8eb89d11264e9c8462a9623ca6239ee13819768/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcaa70cc97165d8168e3da7a99f6430d64e2f09a1`](./contracts/ethereum-1/0xcaa70cc97165d8168e3da7a99f6430d64e2f09a1/) | YCRVStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 12 |
| standard_library | 10 |
| needs_review | 91 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=9

Fork inheritance lineage and inherited audits are included when available.
