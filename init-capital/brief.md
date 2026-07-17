# Agentic Audit Brief: INIT Capital

## Project Overview

- Project: INIT Capital (`init-capital`)
- Website: [https://app.init.capital](https://app.init.capital)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:22.056Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: blast, mantle
- Contract surface: 72 unique implementations (104 raw deployments)
- DeFi Llama TVL: $1,971,814.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 31 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 12 common project-authored base contract(s) (proxy, erc1967upgrade, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 120; live-surface contracts included: 102 (47 live, 55 unknown).
- Excluded by liveness: 18 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/27 (33.3%)
- Deployed-live implementations: 29 of 72 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/29
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 72
- Raw deployments: 104
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trust | Tier 2 | 7 | 24.1% | 2023-11 |
| PeckShield | Tier 2 | 5 | 17.2% | 2024-01 |
| Sparkware | Tier 2 | 2 | 6.9% | n/a |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Api3OracleReader | unknown | mantle | n/a | [`0x5fd18fa97f96b546848c729201794456640f6198`](./contracts/mantle-5000/0x5fd18fa97f96b546848c729201794456640f6198/) | ✅ Audited |
| Config | unknown | mantle | n/a | 2 deployments: mantle [`0x007f91636e0f986068ef27c950fa18734ba553ac`](./contracts/mantle-5000/0x007f91636e0f986068ef27c950fa18734ba553ac/); mantle `0x1dbd1e94373b3163f4376d6ae1a39db9fda334cb` | ✅ Audited |
| InitCore | unknown | mantle | n/a | 2 deployments: mantle [`0x972bcb0284cca0152527c4f70f8f689852bcafc5`](./contracts/mantle-5000/0x972bcb0284cca0152527c4f70f8f689852bcafc5/); mantle `0xf8b8552d52986f06ffaf14bc88bfcf6dcbdba05d` | ✅ Audited |
| InitCore | unknown | blast | n/a | [`0x815e63d6b5e1b8d74876fc9a2c08b79d4185494b`](./contracts/blast-81457/0x815e63d6b5e1b8d74876fc9a2c08b79d4185494b/) | ✅ Audited |
| InitOracle | unknown | mantle | n/a | 2 deployments: mantle [`0x4e195a32b2f6eba9c4565ba49bef34f23c2c0350`](./contracts/mantle-5000/0x4e195a32b2f6eba9c4565ba49bef34f23c2c0350/); mantle `0x7928419135ce5427858f0f5c0cba3151b9b14f81` | ✅ Audited |
| LendingPool | unknown | mantle | n/a | 9 deployments: mantle [`0x00a55649e597d463fd212fbe48a3b40f0e227d06`](./contracts/mantle-5000/0x00a55649e597d463fd212fbe48a3b40f0e227d06/); mantle `0x3282437c436ee6aa9861a6a46ab0822d82581b1c`; mantle `0x423bb7577bcf594df986d9646b44d3144b3329fd`; mantle `0x44949636f778fad2b139e665aee11a2dc84a2976`; mantle `0x5071c003bb45e49110a905c1915ebdd2383a89df`; mantle `0x51ab74f8b03f0305d8dce936b473ab587911aec4`; mantle `0x9c9f28672c4a8ad5fb2c9aca6d8d68b02eafd552`; mantle `0xada66a8722b5cdfe3bc504007a5d793e7100ad09`; mantle `0xf084813f1be067d980a0171f067f084f27b3f63a` | ✅ Audited |
| LendingPool | unknown | blast | n/a | [`0x22eb74ab07ce90138f0fe4b2fdafee1738b0de11`](./contracts/blast-81457/0x22eb74ab07ce90138f0fe4b2fdafee1738b0de11/) | ✅ Audited |
| MarginTradingHook | unknown | mantle | n/a | 7 deployments: mantle [`0x2137546635595919a66468cf08cb9e9e879718b5`](./contracts/mantle-5000/0x2137546635595919a66468cf08cb9e9e879718b5/); mantle `0x497949e7a3cd1352980a1b2c27da27b5a71c94bd`; mantle `0x8bc7dfca30717ae4303afe93b22c3add334dfcbb`; mantle `0x9567940746fda24aa98160ae3dacdbd51dae7d33`; mantle `0xe4fe22f64f37ba62bddfed3b05dabcc1f01ad1ad`; mantle `0xebf3edf5db89777f6ade33c27fbce94c4a8cdefd`; mantle `0xefb43e833058cd3464497e57428efb00db000763` | ✅ Audited |
| MarginTradingHook | unknown | mantle | n/a | 2 deployments: mantle [`0x42aa4e76404ae974d825dde2128adab3716aa7f9`](./contracts/mantle-5000/0x42aa4e76404ae974d825dde2128adab3716aa7f9/); mantle `0x917a9fa5606e7bb6a9bf7eb0abb00fe152d3dc14` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BVM_ETH | unknown | mantle | n/a | [`0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111`](./contracts/mantle-5000/0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | n/a | [`0xe6829d9a7ee3040e1276fa75293bde931859e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| METHL2 | token | mantle | n/a | [`0xcda86a272531e8640cd7f1a92c01839911b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | ⚠️ Unaudited |
| MoneyMarketHook | unknown | mantle | n/a | [`0xf82cbcab75c1138a8f1f20179613e7c0c8337346`](./contracts/mantle-5000/0xf82cbcab75c1138a8f1f20179613e7c0c8337346/) | ⚠️ Unaudited |
| PosManager | unknown | mantle | n/a | 2 deployments: mantle [`0x0e7401707cd08c03cdb53daef3295ddfb68bba92`](./contracts/mantle-5000/0x0e7401707cd08c03cdb53daef3295ddfb68bba92/); mantle `0x995b3d3cf83d5a0040b56b0201d3d2db6e369dbf` | ⚠️ Unaudited |
| ProxyAdmin | unknown | mantle | n/a | [`0xa55a591f91103d84106ba79eda446ebdbfe26f7a`](./contracts/mantle-5000/0xa55a591f91103d84106ba79eda446ebdbfe26f7a/) | ⚠️ Unaudited |
| RiskManager | unknown | mantle | n/a | 2 deployments: mantle [`0x0c03cd3e8b669680bf306fc72f1dc2cac592f951`](./contracts/mantle-5000/0x0c03cd3e8b669680bf306fc72f1dc2cac592f951/); mantle `0xf3416748553ea93643aa8b5a7879f2c40018002b` | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | mantle | n/a | [`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2`](./contracts/mantle-5000/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x013d02a11779662164f945f477cff4abfd253285`](./contracts/mantle-5000/0x013d02a11779662164f945f477cff4abfd253285/); mantle `0xb45206cbb8913495ea08cf418de3a9d2076f9d68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x089d92727b68c58a931d240dd99a8246019046b7`](./contracts/mantle-5000/0x089d92727b68c58a931d240dd99a8246019046b7/); mantle `0x580df5483aae4761b82808654ad3c88ed960ac6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x0b375d3a58a58e72db7ce5d7ca0994c5c1ae6197`](./contracts/mantle-5000/0x0b375d3a58a58e72db7ce5d7ca0994c5c1ae6197/); mantle `0xf42c7ba5e3f555b56b7765269fa8f2605e40995f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x1fe6b7cab3df27058ba3a8f60acbf0a0322b5d14`](./contracts/mantle-5000/0x1fe6b7cab3df27058ba3a8f60acbf0a0322b5d14/); mantle `0xe576e46b1a0403bf0ecf05d7e414a6efae866b33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x3ab7de27aef7c235af6c835e44ec5e8f60664452`](./contracts/mantle-5000/0x3ab7de27aef7c235af6c835e44ec5e8f60664452/); mantle `0xb8020c1ff28faf21cde1096ae792fcb5ae02ad72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x58fb832cd2368ee14f31d6a18f9fca06697ae7ec`](./contracts/mantle-5000/0x58fb832cd2368ee14f31d6a18f9fca06697ae7ec/); mantle `0x6a905e427ad41cb8acd4aabaa69efbd6c5a0b27b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x66bdbf2eefc84f83b476db238574ca5cb00550ad`](./contracts/mantle-5000/0x66bdbf2eefc84f83b476db238574ca5cb00550ad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0xdc9311f1ffd2cc42f3de7ec26e8cdda5a7b99a01`](./contracts/mantle-5000/0xdc9311f1ffd2cc42f3de7ec26e8cdda5a7b99a01/); mantle `0xe6239b9eaeaec464098911c15700e4e0ccb2f092` | ⚠️ Unaudited |
| TransparentUpgradeableProxyReceiveETH | unknown | mantle | n/a | 2 deployments: mantle [`0x442d034b4bc112a1194eef8544b2f98b467c4bda`](./contracts/mantle-5000/0x442d034b4bc112a1194eef8544b2f98b467c4bda/); mantle `0x7fa704e73262e5a9f48382087f69c6aba0408eaa` | ⚠️ Unaudited |
| USDeOFT | unknown | mantle | n/a | [`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`](./contracts/mantle-5000/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| USDYW | unknown | mantle | n/a | [`0x5be26527e817998a7206475496fde1e68957c5a6`](./contracts/mantle-5000/0x5be26527e817998a7206475496fde1e68957c5a6/) | ⚠️ Unaudited |
| WMANTLE | unknown | mantle | n/a | [`0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x2529c5e48ddcec4c235f7dba6cf3ce994899ddad) | unknown | blast | n/a | 2 deployments: blast `0x0bca18a2dd966a22d15a649301ef2753ea4c9a02`; blast `0x2529c5e48ddcec4c235f7dba6cf3ce994899ddad` | ❓ Unverified |
| Proxy (impl: 0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640) | unknown | blast | n/a | 3 deployments: blast `0x5313428df205273dcd4100b2fbc0803aba13ff28`; blast `0x85babafa73c3499247d937f7abb877e0e6250f68`; blast `0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640` | ❓ Unverified |
| Proxy (impl: 0xfdb3cc1a63e6de98e7d9a36c683bd30a9b5237fa) | unknown | blast | n/a | 2 deployments: blast `0x5e51d998989a521a61c7177d9afccd6ab28cac67`; blast `0xfdb3cc1a63e6de98e7d9a36c683bd30a9b5237fa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1017627ea8191531c4d07419fb49cff1c986838e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x13437755bb87ce61810d25a2e16b1cfd37944283` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x196d4e073687e8a61810725c1a299584494367e9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2a81ff6d7c962dda30cf943619d087750ed0bd7d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x32f533eabd0b128e7ebe391dcc3f012701618b62` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3384894ce52161f806cd52e3cf1fa8ef137746ef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6859b1b4921f69e6fd92f0d346b9b0807d85df2e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7ae5741ee60064d934297b4eb0031cefb49f9915` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb5695d6b72a8afc6384a2a9251cc539727d3520b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbe7d352805feb1bdb3d48769d5957c5446f518d3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xccadc0fc7060b7b94327fb07e8976454e6ca7f33` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xee619435de204914c71df9ac7bbb4becd3c9eaf0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xeed8a04876ceee12ddaf4fd1eb59663a62d9be34` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf525f9a23db5fa9bea0f64e5427a103752977a0c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0d87d19004ef1a20085f37108ab0f05398365d32` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x126dcccf3d49c9cd1ab94fb52f0302128c29a957` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1dac52bd9ccc0283c71a2a06ef9d0b1f8cbb4257` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x265daa697489968aebd650c665f4fb241b560785` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x340b6c30e012ec9903ebb6b8d468576e60d8d1f4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3816edcf24f0717db08e50725e55bdf084ae697a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x47dc5921527a6f8138ec7ef8945f09b182dfba3a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4a7ccbe0b4f01e3d30b203c087e67b72065a011d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5468516592b98f60f5416cc4544932656ac834f2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5f1a7dbd31f0ded2f8a1ca3fc79919f9866248fc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x721ad8f7ef913c7b9775f9f90d35321b23577ce7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x72ee68fc1d6650b32314188321e92a8b4f3b552a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x75d40bec66182a989d4b5e40fd76680aacff1836` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7971ad62c585ff0fe042792ffd7005a3c2172df9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x812607160c85139e67031486b60309525e095afe` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8aa1cff97dd5746529eddd19519c76deed0cb288` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x92aa51001f0bcc060e3b3d1824a79f4b5bcee445` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x92e4af57bafe3f94569a729dd0be3abe4615e542` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x95b8640e5a9a496427d089b14f6736de212852d0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaf8512b4dd03c06678cb7fc9d9cbf80a58dbfa47` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcd8175f1e567ccae4543fd1af192a3ecf9dde280` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd23ec372a82d199872dd45fe4e3241cee30b08e9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd501a57d404a4bedb2c911512d79b9087ad6bf39` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd9bb55f09cccaf68cde12a7a999c71d0e9ea5cfa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdad14045abb80b78c2882bb61716e6fcd7dde412` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe1d36e2790dd75ab34e789192e146e8a3a32b18d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Code4rena_Audit_Report_1.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_1.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Code4rena_Audit_Report_2.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_2.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/PeckShield_Audit_Report_v1.pdf) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | 15 | high |
| [Sparkware_Security_Audit_Report_1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_1.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |
| [Sparkware_Security_Audit_Report_2.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_2.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | 9 | medium |
| [Sparkware_Security_Audit_Report_3.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_3.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | 9 | high |
| [Trust_Security_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Trust_Security_Audit_Report_v1.pdf) | Trust | Audit | 2023-11 | stale | Direct | contract_name | 18 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111`](./contracts/mantle-5000/0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111/) | BVM_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xe6829d9a7ee3040e1276fa75293bde931859e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | L2cmETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xcda86a272531e8640cd7f1a92c01839911b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | METHL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf82cbcab75c1138a8f1f20179613e7c0c8337346`](./contracts/mantle-5000/0xf82cbcab75c1138a8f1f20179613e7c0c8337346/) | MoneyMarketHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0e7401707cd08c03cdb53daef3295ddfb68bba92`](./contracts/mantle-5000/0x0e7401707cd08c03cdb53daef3295ddfb68bba92/) | PosManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0c03cd3e8b669680bf306fc72f1dc2cac592f951`](./contracts/mantle-5000/0x0c03cd3e8b669680bf306fc72f1dc2cac592f951/) | RiskManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2`](./contracts/mantle-5000/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | StakedUSDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`](./contracts/mantle-5000/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | USDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5be26527e817998a7206475496fde1e68957c5a6`](./contracts/mantle-5000/0x5be26527e817998a7206475496fde1e68957c5a6/) | USDYW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | WMANTLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=53

Zero-match audit list:

- [15096] Code4rena_Audit_Report_1.md
- [15097] Code4rena_Audit_Report_2.md
- [15099] Sparkware_Security_Audit_Report_1.pdf

Fork inheritance lineage and inherited audits are included when available.
