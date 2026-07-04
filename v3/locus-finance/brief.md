# Agentic Audit Brief: Locus Finance

## Project Overview

- Project: Locus Finance (`locus-finance`)
- Website: [https://www.locus.finance](https://www.locus.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.668Z
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

- Coverage of deployed-live implementations: 4/74 (5.4%)
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
| AuraBALStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b4c9a...e6f891`](./contracts/ethereum-1/0x1b4c9a314117e037461fbdc980c9debefee6f891/); ethereum `0x2b14e1...1f36a5` | ✅ Audited |
| AuraWETHStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x395f4a...4799a0`](./contracts/ethereum-1/0x395f4a621dd51b120ece2152f45c315bb14799a0/); ethereum `0xbcfa15...dcae9c` | ✅ Audited |
| CVXStrategy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x10b42d...1b06dc`](./contracts/ethereum-1/0x10b42ddeb9571445c8bf5fa83c834313c51b06dc/); ethereum `0x8cc29e...785edc`; ethereum `0xf99302...d5f547` | ✅ Audited |
| FXSStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0de43f...2046a8`](./contracts/ethereum-1/0x0de43faa33a21273867b390dc02152c2872046a8/); ethereum `0x854f17...a47b40` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuraTriPoolStrategy | unknown | ethereum | n/a | [`0x50670b...40147f`](./contracts/ethereum-1/0x50670b867aa20319fd8e3c685005576fdf40147f/) | ⚠️ Unaudited |
| BeefyPendleStrategy | unknown | arbitrum | n/a | [`0xca271d...9cddf5`](./contracts/arbitrum-42161/0xca271d0dbd646d64423432de8d0aa6300c9cddf5/) | ⚠️ Unaudited |
| Diamond | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6c4472...90b25e`](./contracts/arbitrum-42161/0x6c447230f098cddb62f6aeaeec25c27e8b90b25e/); arbitrum `0xfce625...012684` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | n/a | [`0xecc5e0...afb952`](./contracts/arbitrum-42161/0xecc5e0c19806cf47531f307140e8b042d5afb952/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x08909f...347fe2`](./contracts/arbitrum-42161/0x08909fc5d2e322692870231f1a979eb104347fe2/); arbitrum `0x44a565...c48dc2`; arbitrum `0xe40076...04355b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0da285...e4d0d1`](./contracts/arbitrum-42161/0x0da285586c03301b9d09f26b7df6386cc3e4d0d1/); arbitrum `0x0f0911...21a75d`; arbitrum `0x294c57...bedda2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x17f2f4...e3b0e8`](./contracts/arbitrum-42161/0x17f2f455ccfc37ff7cebb24a56347e1c11e3b0e8/); arbitrum `0x5b5a2a...1e460f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2e5331...fad542`](./contracts/arbitrum-42161/0x2e5331ff35801e834a7e085724611ced30fad542/); arbitrum `0x568bc5...15aa24` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3a2349...7eb3a8`](./contracts/arbitrum-42161/0x3a2349b990ddf19119180434bbcb7722737eb3a8/); arbitrum `0xafc702...9c7f8f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x3cf0dd...9d4992`](./contracts/arbitrum-42161/0x3cf0dd05fc591f6e41022c0add62b15e789d4992/); arbitrum `0x773dc3...7dc8c5`; arbitrum `0xa6a16a...921e7c`; arbitrum `0xec6ebc...fa1320` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x405bea...91e0e4`](./contracts/arbitrum-42161/0x405beada362a9d2d32bda45f2ae1ed8bc891e0e4/); arbitrum `0x51d616...3fca82` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x4bd64e...98ec10`](./contracts/arbitrum-42161/0x4bd64eb32d05c488cb2aa3f7c1c41f90c598ec10/); arbitrum `0x95a742...348e9b`; arbitrum `0xaa17a4...37a37b`; arbitrum `0xd13481...0b5870`; arbitrum `0xd3823b...e0cb61`; arbitrum `0xd53c63...0de838` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0x57c817...67c23f`](./contracts/arbitrum-42161/0x57c817253e0ee2b260468e81628bc6ccdd67c23f/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6ce65f...b02518`](./contracts/arbitrum-42161/0x6ce65fd4e0136c46a66304b005f26ad99ab02518/); arbitrum `0xac92eb...01ccf9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8a11cb...af4618`](./contracts/arbitrum-42161/0x8a11cb417f0785cbea249f6ea5326e85d5af4618/); arbitrum `0xfbbd6e...8ea068` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x929764...473eab`](./contracts/arbitrum-42161/0x9297641d2e4074ccece9a7f2e75add871e473eab/); arbitrum `0xfcd816...96d98d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa9c734...b759d1`](./contracts/arbitrum-42161/0xa9c734e8735c158f86b99fb80e280d6530b759d1/); arbitrum `0xebb8b0...11f6b4` | ⚠️ Unaudited |
| GNSStrategy | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x2a683b...d2c84f`](./contracts/arbitrum-42161/0x2a683b4db3c018817f8a79e0554049e23ad2c84f/); arbitrum `0x381d91...c977f5`; arbitrum `0x4488b6...595e3f`; arbitrum `0x9c0732...47dabd`; arbitrum `0xa504b0...2bb14d` | ⚠️ Unaudited |
| GNSStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3cbad7...747541`](./contracts/arbitrum-42161/0x3cbad75284bd1a15c2c32b7cf7558e7235747541/); arbitrum `0x6b1c7a...dd4061` | ⚠️ Unaudited |
| HopStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x68ee86...19450a`](./contracts/arbitrum-42161/0x68ee86f798f247fec4d33c224dad360dc919450a/); arbitrum `0xbaf7bc...c099f8` | ⚠️ Unaudited |
| HopStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa93e1d...30ed84`](./contracts/arbitrum-42161/0xa93e1dff89dccca3c3cadfd0a28ad071c230ed84/); arbitrum `0xc268d7...b2b796` | ⚠️ Unaudited |
| LSDepositaryForVaultTokensFacet | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x24d6d6...4dd9ae`](./contracts/arbitrum-42161/0x24d6d6af23cd865b4dee7f169ca60bf07b4dd9ae/); arbitrum `0x639074...d885c2` | ⚠️ Unaudited |
| LTERC20Facet | token | arbitrum | n/a | [`0xe1d349...5b6a9e`](./contracts/arbitrum-42161/0xe1d3495717f9534db67a6a8d4940dd17435b6a9e/) | ⚠️ Unaudited |
| OnChainVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x05cd4b...930c4e`](./contracts/ethereum-1/0x05cd4b1e2d7acaeeb2d2f640a8d6f75791930c4e/); ethereum `0x0cd5cd...9882c2` | ⚠️ Unaudited |
| OnChainVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x387b7c...eee552`](./contracts/ethereum-1/0x387b7cb67c3c60d5441e6dce26663e8c6ceee552/); ethereum `0xb0a66d...464649` | ⚠️ Unaudited |
| OnChainVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7057e7...9e5d3d`](./contracts/arbitrum-42161/0x7057e7e6874a7b46096d6e59e6ef25dc7f9e5d3d/); arbitrum `0xf8f045...89a9ef` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x0876c4...81bca2`](./contracts/arbitrum-42161/0x0876c47cfc47e20d8b8220abdd925fee3081bca2/); arbitrum `0x114de5...ca7faa`; arbitrum `0x529d10...2dff9e`; arbitrum `0x942044...c40f4c`; arbitrum `0x9f1e5f...171828`; arbitrum `0xa2d8de...21de7f`; arbitrum `0xb818f3...08d2d6`; arbitrum `0xff4965...6501f7` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x208e68...ea8694`](./contracts/arbitrum-42161/0x208e688a08ff4ebec4772957d3b1c2f682ea8694/); arbitrum `0x2912f1...f210ba`; arbitrum `0x43c73c...12bc80`; arbitrum `0x4bb316...e8a066`; arbitrum `0x5bb916...89eb28`; arbitrum `0x69c103...020a93`; arbitrum `0x6c2b7a...703cce`; arbitrum `0x6ef5d0...2e23ef`; arbitrum `0xa052e2...b7bc18`; arbitrum `0xb1e59f...ea193d`; arbitrum `0xbce096...e08482` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x269a26...4389fa`](./contracts/arbitrum-42161/0x269a26ab05c39cbd8ae1d887b2925556614389fa/); arbitrum `0x31f615...63043b` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x2bc41c...8b38a1`](./contracts/arbitrum-42161/0x2bc41c9eb8a7531aea2d4ddfdb03fb6a758b38a1/); arbitrum `0x49565d...7de833`; arbitrum `0x785b28...ef7be1`; arbitrum `0x950e46...08e507`; arbitrum `0x9ba15d...83bbe6`; arbitrum `0xc1f3c1...44ac38`; arbitrum `0xdc8483...10f582`; arbitrum `0xf5768c...7d7073` | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | [`0x324450...9968b2`](./contracts/arbitrum-42161/0x324450a9bb3814e0b8c88dc847ad81559b9968b2/) | ⚠️ Unaudited |
| OnChainVaultPendle | core_logic | arbitrum | n/a | [`0x515f35...dbe641`](./contracts/arbitrum-42161/0x515f3533a17e2eefb13313d9248f328c94dbe641/) | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | [`0x84a896...b42368`](./contracts/arbitrum-42161/0x84a896b7a0f34693cefb2480e44f9061c6b42368/) | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | [`0x903ba0...055eb6`](./contracts/arbitrum-42161/0x903ba028fa6b2aa7fece9fe02038c9795a055eb6/) | ⚠️ Unaudited |
| OnChainVaultPendle | unknown | arbitrum | n/a | [`0xe77c02...369d6a`](./contracts/arbitrum-42161/0xe77c02e778199221b005b84bd900b32de2369d6a/) | ⚠️ Unaudited |
| OriginEthStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a8256...84aa6b`](./contracts/ethereum-1/0x8a82566bb321873701191878cebbc27ee984aa6b/); ethereum `0xa93e1d...30ed84` | ⚠️ Unaudited |
| PendleEtherFi | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x64e57a...baa0e3`](./contracts/arbitrum-42161/0x64e57ade661ffd9dc9f97732fc34adad0dbaa0e3/); arbitrum `0xc3ad42...ade012` | ⚠️ Unaudited |
| PendleEzEth | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x152fb6...fe7640`](./contracts/arbitrum-42161/0x152fb6f9250fa041f9d4ee375325b1abf5fe7640/); arbitrum `0x1bd045...f5bc37`; arbitrum `0x6a899b...59be35` | ⚠️ Unaudited |
| PendleEzEth | unknown | arbitrum | n/a | [`0x24f6b6...ee4d2e`](./contracts/arbitrum-42161/0x24f6b690c4cd84966069a4b62515d1bca1ee4d2e/) | ⚠️ Unaudited |
| PendleEzEth | unknown | arbitrum | n/a | [`0x25fc7f...007b71`](./contracts/arbitrum-42161/0x25fc7ffa425a63f6ced2d974bbd276c443007b71/) | ⚠️ Unaudited |
| PendleEzEth | unknown | arbitrum | n/a | [`0x342754...ab94aa`](./contracts/arbitrum-42161/0x342754cd76c5a6213a5975472720782abbab94aa/) | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0f6c31...8c4592`](./contracts/arbitrum-42161/0x0f6c31d923175b58c14fc436a08257774b8c4592/); arbitrum `0x35d8ea...ff560e`; arbitrum `0x7f29df...ca90d7` | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x42189c...554456`](./contracts/arbitrum-42161/0x42189c0588bf73a449d619794c2eb409c2554456/); arbitrum `0xd8b10c...7691d8`; arbitrum `0xe10d82...88147c` | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x438a4a...1a0c64`](./contracts/arbitrum-42161/0x438a4a1b64acdc80fb75f26af85848dcfe1a0c64/); arbitrum `0x9d2c42...ee374b` | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5f06bc...86b7f9`](./contracts/arbitrum-42161/0x5f06bc1d58286011b33de636d4ab5df49c86b7f9/); arbitrum `0x89b9e8...b5a0d9` | ⚠️ Unaudited |
| PendleRsEth | unknown | arbitrum | n/a | [`0xac36ce...c34788`](./contracts/arbitrum-42161/0xac36cef3acb969812adaaf1ca09810f998c34788/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 3 deployments: ethereum [`0x0b4cf3...0d0f87`](./contracts/ethereum-1/0x0b4cf39b345aafe16957794636e5b0e7c90d0f87/); arbitrum [`0x0b4cf3...0d0f87`](./contracts/arbitrum-42161/0x0b4cf39b345aafe16957794636e5b0e7c90d0f87/); arbitrum `0x1b4c9a...e6f891` | ⚠️ Unaudited |
| RocketAuraStrategy | unknown | ethereum | n/a | [`0xf12c92...2177fe`](./contracts/ethereum-1/0xf12c92cbe97f16cfb8dc007545c29a55912177fe/) | ⚠️ Unaudited |
| SaverStrategy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x057581...d64183`](./contracts/arbitrum-42161/0x05758130a5222e0bab6f7e9a2b7ae25fafd64183/); arbitrum `0x10d59e...ac0336` | ⚠️ Unaudited |
| SgBridge | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1c0c21...4f38a3`](./contracts/arbitrum-42161/0x1c0c2133c9f2b74fb3522df0437d290f364f38a3/); arbitrum `0x2b14e1...1f36a5` | ⚠️ Unaudited |
| SgBridge | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x70f92c...bd78cf`](./contracts/arbitrum-42161/0x70f92c756285f8f3cf3a3cc67ef6b264b8bd78cf/); arbitrum `0x9f5bdc...15e517`; arbitrum `0xc66534...4cfe14` | ⚠️ Unaudited |
| StargateV2SynthChef | unknown | arbitrum | n/a | [`0x28ee1b...8116a2`](./contracts/arbitrum-42161/0x28ee1b1db52b23a539792effe2b2fa69648116a2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0x4a8a75...d0ee97`](./contracts/ethereum-1/0x4a8a7539ad59c277c1915c3938d2b0c15cd0ee97/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6a7f42...a54aef`](./contracts/arbitrum-42161/0x6a7f42c6f1a51316378d5fabf95ac25e72a54aef/); arbitrum `0xa7eb4e...b42d37` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0xb0a66d...464649`](./contracts/arbitrum-42161/0xb0a66dd3b92293e5dc946b47922c6ca9de464649/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0xbf8181...58c60f`](./contracts/arbitrum-42161/0xbf8181f3b5e71fa0cbbe1e067f408a9a0558c60f/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2a889e...1eb26f`](./contracts/arbitrum-42161/0x2a889e9ef10c7bd607473aadc8c806c4511eb26f/); arbitrum `0xd1e874...ac1a49` | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x395f4a...4799a0`](./contracts/arbitrum-42161/0x395f4a621dd51b120ece2152f45c315bb14799a0/); arbitrum `0xbcfa15...dcae9c` | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x62ed3f...80b779`](./contracts/arbitrum-42161/0x62ed3fb4c5798725aaa9dc020fd593b78a80b779/); arbitrum `0x631893...7987d8` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x000152...4ec553`](./contracts/arbitrum-42161/0x000152c46e507dde65b65a817f95aef3e14ec553/); arbitrum `0x95611d...8b7f32` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x1204c6...7d30ce`](./contracts/arbitrum-42161/0x1204c6c7ec2d60e1a12ca02473d25250767d30ce/); arbitrum `0x3ffa46...592b37`; arbitrum `0x5205d1...714cdd`; arbitrum `0x63dbaf...c0f8c7`; arbitrum `0x63dc38...c3f1f1`; arbitrum `0x790fb5...f47559`; arbitrum `0x7c7b84...812a6b`; arbitrum `0x92a8f3...c8c3a0`; arbitrum `0xa8ade2...69b0b9`; arbitrum `0xbe3f9f...a92852`; arbitrum `0xde5f9e...e0e470` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x2e5cbf...90f014`](./contracts/arbitrum-42161/0x2e5cbf05856d11376e94df8246149db9a290f014/); arbitrum `0x677684...f46803`; arbitrum `0x6cd7eb...5aab83`; arbitrum `0xe074ff...1f3abb`; arbitrum `0xfcf07f...64e0c3` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x2ff085...3982cf`](./contracts/arbitrum-42161/0x2ff0850be310f32b826624bdf3d98804653982cf/); arbitrum `0x43ea03...e80292`; arbitrum `0x659993...6d8401`; arbitrum `0x6f1d51...e1c843`; arbitrum `0xf2ea41...3b98ff`; arbitrum `0xf7d1c5...6f9705` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x369b6d...732a18`](./contracts/arbitrum-42161/0x369b6dedac484100a6043cca825c5805a5732a18/); arbitrum `0xa37558...24ebc3`; arbitrum `0xa74f54...c0d296`; arbitrum `0xb42099...3f8833`; arbitrum `0xfb92f3...b3b241` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x55a0eb...27feea`](./contracts/arbitrum-42161/0x55a0ebd4c4c121daed4afaac049b3dda7827feea/); arbitrum `0xac4b6e...c2a49d` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6800d7...374ef8`](./contracts/arbitrum-42161/0x6800d74e0c7da229459f75ec771e141272374ef8/); arbitrum `0xa31ec4...377090` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x90ac1b...ea0fb5`](./contracts/arbitrum-42161/0x90ac1bdd88fb04dea485eca95350f14b11ea0fb5/); arbitrum `0xa9d581...3abe35`; arbitrum `0xfb0e59...cb845e` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa66afe...d5456c`](./contracts/arbitrum-42161/0xa66afe02047dd0c4c9f9554b2eaf16a74ed5456c/); arbitrum `0xf8253b...61894c` | ⚠️ Unaudited |
| VaultToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc8eb89...819768`](./contracts/arbitrum-42161/0xc8eb89d11264e9c8462a9623ca6239ee13819768/); arbitrum `0xd8781a...a05b59` | ⚠️ Unaudited |
| YCRVStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcaa70c...2f09a1`](./contracts/ethereum-1/0xcaa70cc97165d8168e3da7a99f6430d64e2f09a1/); ethereum `0xe4fb84...c2f859` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xcd1bc2...3aff92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08a2e3...d736c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b85a5...8e0bce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c58de...e75631` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0cdb15...fc0143` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0dfdc1...922a0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e639d...ce4bbd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x117ba3...e7d6c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ee8a3...6763b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f38d0...25150e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x259580...60ed9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2be6cb...337739` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x334a84...186b19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34a992...3bc602` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x357326...99b3ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x360ab7...8d6239` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b6f4a...cb1852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x402e3e...dad80a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41424b...5d16d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42c21c...5ec8e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x45e3fd...e0e9b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x483a4b...0c5f04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48bbe9...742a29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x495f31...7e0552` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e89eb...374f9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x52dfbd...c8dd0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54aa7a...7898a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61e9ce...226aff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x672527...bc8132` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x687869...b96695` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b6892...a3e263` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ca8c6...955935` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x703a97...4a31e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74ddb7...4de22b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x798cdb...b47a66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79dd20...35f8e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cc3a3...2f1d27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f8911...cd336e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x862a53...a7f3cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8803fd...d0528b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b6c34...27f914` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f7b4b...774bfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9197b4...1966b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98d0a8...74e91d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e6331...1cc07c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9eb441...5acb05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9fc845...361519` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa090d5...e6a5f7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa25293...aad624` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa44dcc...240079` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4b7fe...7badf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac6266...e8039c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4c886...f0bdaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4ef82...e9862b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb75d95...d3006b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb79eb8...f04732` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb923c8...72e141` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc06904...6714fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1efb0...c65068` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc22c60...6b726c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc2db63...8318a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6cbba...2d7151` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6f82a...b67917` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8ff68...9876f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9e0bb...51dcc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbd1c9...0d423c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc6a52...02ab08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2799a...ddd224` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9c6b2...523804` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9d4ee...fc134c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda2fc7...cafc1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc93e9...25c478` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf93b1...156f5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8d823...eca370` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb941d...0a1211` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec899e...5eae18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeddadc...26de40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf086fa...3d1f4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7b002...3ed425` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7f558...682e43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9b370...7ec1db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc2336...489de5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffd190...a7377d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Locus Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Locus%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 157 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=9

Fork inheritance lineage and inherited audits are included when available.
