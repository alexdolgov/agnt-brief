# Agentic Audit Brief: INIT Capital

⚠️ Lifecycle status: DECLINING - TVL dropped 36.4% over 90 days

## Project Overview

- Project: INIT Capital (`init-capital`)
- Website: [https://app.init.capital](https://app.init.capital)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T00:07:25.235Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-08cb
- Chains: blast, mantle
- Contract surface: 99 unique implementations (164 raw deployments)
- DeFi Llama TVL: $4,285,355.62
- On-chain TVL (included contracts): $66,515,699.03
- TVL by chain: Mantle $66,512,508.56 | Blast $3,190.47

## Project Description

INIT Capital is a decentralized lending and money-market protocol with native pool, hook, oracle, configuration, risk, position, and periphery contracts. External assets such as USDC, USDT, WBTC, METH, cmETH, FBTC, and similar token contracts should be treated as underlying assets, not INIT-owned protocol/product contracts.

### Architecture

Lending Pools rely on Core Contracts for governance (Config, RiskManager), position tracking (PosManager), and price feeds (InitOracle). Hooks like MoneyMarketHook and MarginTradingHook extend pool behavior, while tokens from the INIT Capital family serve as the assets within these pools.

## Audit Coverage Summary

- Verified implementations audited: 6/25 (24.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 2
- Unverified implementations: 74
- Unique implementations: 99
- Raw deployments: 164
- Audits discovered: 7
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $66,152,699.74
- Latest audit: 2024-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $66,152,699.74 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trust Security | Tier 2 | 5 | 20.0% | 2023-12 |
| PeckShield | Tier 2 | 3 | 12.0% | 2024-01 |
| Sparkware | Tier 2 | 1 | 4.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Api3OracleReader | operational_periphery | mantle | 2 deployments: mantle [`0x1450e7...41b4ae`](./contracts/mantle-5000/0x1450e76f4e969778d1ffb5b700b416fa9c41b4ae/); mantle `0x5fd18f...0f6198` | ✅ Audited |
| Config | governance | mantle | 2 deployments: mantle [`0x007f91...a553ac`](./contracts/mantle-5000/0x007f91636e0f986068ef27c950fa18734ba553ac/); mantle `0x1dbd1e...a334cb` | ✅ Audited |
| InitCore | unknown | blast | 4 deployments: mantle `0x972bcb...bcafc5`; mantle `0xf8b855...dba05d`; blast [`0x815e63...85494b`](./contracts/blast-81457/0x815e63d6b5e1b8d74876fc9a2c08b79d4185494b/); blast `0xa7d36f...113a10` | ✅ Audited |
| InitOracle | operational_periphery | mantle | 2 deployments: mantle [`0x4e195a...2c0350`](./contracts/mantle-5000/0x4e195a32b2f6eba9c4565ba49bef34f23c2c0350/); mantle `0x792841...b14f81` | ✅ Audited |
| MarginTradingHook | unknown | mantle | 10 deployments: mantle [`0x213754...9718b5`](./contracts/mantle-5000/0x2137546635595919a66468cf08cb9e9e879718b5/); mantle `0x42aa4e...6aa7f9`; mantle `0x497949...1c94bd`; mantle `0x8bc7df...4dfcbb`; mantle `0x917a9f...d3dc14`; mantle `0x956794...ae7d33`; mantle `0xe4fe22...1ad1ad`; mantle `0xebf3ed...8cdefd`; mantle `0xefb43e...000763`; mantle `0xfd5c7d...b21aa7` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| METHL2 | token | mantle | [`0xcda86a...b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | ⚠️ Unaudited |
| AccessControlManager | governance | mantle | [`0xce3292...30675a`](./contracts/mantle-5000/0xce3292ca5abbdfa1db02142a67cffc708530675a/) | ⚠️ Unaudited |
| BVM_ETH | unknown | mantle | [`0xdeadde...ad1111`](./contracts/mantle-5000/0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111/) | ⚠️ Unaudited |
| DoubleSlopeIRM | unknown | mantle | 7 deployments: mantle [`0x00fa41...4748ec`](./contracts/mantle-5000/0x00fa41248f6c3a26863ec56634fe78ad4e4748ec/); mantle `0x0959a6...1ae7e4`; mantle `0x204e80...712255`; mantle `0x594485...d1fdbf`; mantle `0x71e0b2...8b2cf6`; mantle `0xb4d787...bb640b`; mantle `0xf25e43...18398e` | ⚠️ Unaudited |
| FiatTokenV2_1_1 | token | mantle | [`0x09bc4e...0d0df9`](./contracts/mantle-5000/0x09bc4e0d864854c6afb6eb9a9cdf58ac190d0df9/) | ⚠️ Unaudited |
| InitLens | periphery | blast | 2 deployments: mantle `0x7d2b27...456042`; blast [`0x56fba2...b2860e`](./contracts/blast-81457/0x56fba2cc045c02d7adae5a9dfdce795900b2860e/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| LiqIncentiveCalculator | unknown | mantle | [`0xddc99a...0dacf3`](./contracts/mantle-5000/0xddc99aeef7d5f87118a3a2636f7d0fb6c60dacf3/) | ⚠️ Unaudited |
| MoneyMarketHook | unknown | mantle | 4 deployments: mantle [`0x06cab8...24da84`](./contracts/mantle-5000/0x06cab8cbd9bb02db40eba963a8c38d4c5924da84/); mantle `0xf82cbc...337346`; blast `0x214d40...8e4e4a`; blast `0xc02819...424dd4` | ⚠️ Unaudited |
| PosManager | governance | mantle | 4 deployments: mantle [`0x0e7401...8bba92`](./contracts/mantle-5000/0x0e7401707cd08c03cdb53daef3295ddfb68bba92/); mantle `0x995b3d...369dbf`; blast `0x65d8d9...99f232`; blast `0xa0e172...2633fe` | ⚠️ Unaudited |
| RiskManager | governance | mantle | 2 deployments: mantle [`0x0c03cd...92f951`](./contracts/mantle-5000/0x0c03cd3e8b669680bf306fc72f1dc2cac592f951/); mantle `0xf34167...18002b` | ⚠️ Unaudited |
| TimelockController | governance | mantle | [`0x91a194...ec65e5`](./contracts/mantle-5000/0x91a19402818ec3da51ead9db15a4776827ec65e5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mantle | 8 deployments: mantle [`0x013d02...253285`](./contracts/mantle-5000/0x013d02a11779662164f945f477cff4abfd253285/); mantle `0x0b375d...ae6197`; mantle `0x3ab7de...664452`; mantle `0x580df5...60ac6e`; mantle `0x66bdbf...0550ad`; mantle `0x6a905e...a0b27b`; mantle `0xe576e4...866b33`; mantle `0xe6239b...b2f092` | ⚠️ Unaudited |
| TransparentUpgradeableProxyBlast | proxy | blast | 7 deployments: blast [`0x0c2da1...96fc06`](./contracts/blast-81457/0x0c2da1659c2351d504c80e60c6077d971b96fc06/); blast `0x4b246c...f0993a`; blast `0x57200d...cea2f7`; blast `0xd97bb3...4c68c1`; blast `0xe31686...75e2ef`; blast `0xed9d7e...11904b`; blast `0xf683ce...f33d21` | ⚠️ Unaudited |
| TransparentUpgradeableProxyReceiveETH | proxy | mantle | 4 deployments: mantle [`0x0bddc3...9a22f3`](./contracts/mantle-5000/0x0bddc3c0669aeb9dc00a9f4c8e2e8c38f59a22f3/); mantle `0x49a69a...e883c5`; mantle `0x7dac40...534a09`; mantle `0x7fa704...408eaa` | ⚠️ Unaudited |
| USDeOFT | unknown | mantle | [`0x5d3a1f...52ef34`](./contracts/mantle-5000/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| USDYW | unknown | mantle | [`0x5be265...57c5a6`](./contracts/mantle-5000/0x5be26527e817998a7206475496fde1e68957c5a6/) | ⚠️ Unaudited |
| WMANTLE | unknown | mantle | [`0x78c1b0...7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LendingPool | core_logic | mantle | 20 deployments: mantle [`0x00a556...227d06`](./contracts/mantle-5000/0x00a55649e597d463fd212fbe48a3b40f0e227d06/); mantle `0x233493...82c0c3`; mantle `0x328243...581b1c`; mantle `0x423bb7...3329fd`; mantle `0x449496...4a2976`; mantle `0x5071c0...3a89df`; mantle `0x51ab74...11aec4`; mantle `0x592c91...cd0c92`; mantle `0x6cc103...2ae243`; mantle `0x9c9f28...afd552`; mantle `0xada66a...00ad09`; mantle `0xf08481...b3f63a`; blast `0x027296...b28b40`; blast `0x0bca18...4c9a02`; blast `0x17f187...a3b85c`; blast `0x22eb74...b0de11`; blast `0x5e51d9...8cac67`; blast `0xc5eac9...ab430f`; blast `0xcd5fc1...22012e`; blast `0xd20989...0c09f3` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | unknown | blast | 2 deployments: mantle `0xa55a59...e26f7a`; blast [`0x340b6c...d8d1f4`](./contracts/blast-81457/0x340b6c30e012ec9903ebb6b8d468576e60d8d1f4/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (74)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640) | proxy | blast | `0x531342...13ff28` | ❓ Unverified |
| Proxy (impl: 0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640) | proxy | blast | `0x85baba...250f68` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x089d92...9046b7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0988b5...a00777` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x101762...86838e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x134377...944283` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x137f43...b31634` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x196d4e...4367e9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x197109...be1a3b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1fe6b7...2b5d14` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2a81ff...d0bd7d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x32f533...618b62` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x338489...7746ef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4403f4...8800c5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x442d03...7c4bda` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4725e2...3dea78` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x573f4e...0380cb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x574341...083432` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x58fb83...7ae7ec` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x607c87...4bf23f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6859b1...85df2e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x73e29d...1bc979` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7ae574...9f9915` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7bda6e...8e08a0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7f610e...7a5012` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x84bfa4...e08375` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x90772c...274ef8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa757cd...ad02a0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa912a2...4a5c41` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xac5e09...a3ce81` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb21f3b...45048f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb3b7b6...58efe5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb45206...6f9d68` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb5695d...d3520b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb8020c...02ad72` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbab731...4e5d0e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbe7d35...f518d3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc01c99...2ae25b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xccadc0...ca7f33` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xdc9311...b99a01` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xdc9fd5...9193fb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe73955...2a0cf5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xee6194...c9eaf0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xeed8a0...d9be34` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf42c7b...40995f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf525f9...977a0c` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x0d87d1...365d32` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x126dcc...29a957` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1dac52...bb4257` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x2529c5...99ddad` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x265daa...560785` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x3816ed...ae697a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x47dc59...dfba3a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x4a7ccb...5a011d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x546851...c834f2` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5f1a7d...6248fc` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x721ad8...577ce7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x72ee68...3b552a` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x75d40b...ff1836` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7971ad...172df9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x812607...095afe` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x8aa1cf...0cb288` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x92aa51...cee445` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x92e4af...15e542` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x95b864...2852d0` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xaf8512...dbfa47` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xcd8175...dde280` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd23ec3...0b08e9` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd501a5...d6bf39` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd9bb55...ea5cfa` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xd9c015...805640` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xdad140...dde412` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xe1d36e...32b18d` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0xfdb3cc...5237fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Code4rena_Audit_Report_1.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_1.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Code4rena_Audit_Report_2.md](https://github.com/init-capital/init-core-public/blob/master/audits/Code4rena_Audit_Report_2.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/PeckShield_Audit_Report_v1.pdf) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | 24 | high |
| [Sparkware_Security_Audit_Report_1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_1.pdf) | Sparkware | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sparkware_Security_Audit_Report_2.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_2.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | 10 | medium |
| [Sparkware_Security_Audit_Report_3.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Sparkware_Security_Audit_Report_3.pdf) | Sparkware | Audit | n/a | unknown | Direct | contract_name | 10 | high |
| [Trust_Security_Audit_Report_v1.pdf](https://github.com/init-capital/init-core-public/blob/master/audits/Trust_Security_Audit_Report_v1.pdf) | Trust Security | Audit | 2023-12 | stale | Direct | contract_name | 28 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | [`0xce3292...30675a`](./contracts/mantle-5000/0xce3292ca5abbdfa1db02142a67cffc708530675a/) | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x00fa41...4748ec`](./contracts/mantle-5000/0x00fa41248f6c3a26863ec56634fe78ad4e4748ec/) | DoubleSlopeIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x56fba2...b2860e`](./contracts/blast-81457/0x56fba2cc045c02d7adae5a9dfdce795900b2860e/) | InitLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xddc99a...0dacf3`](./contracts/mantle-5000/0xddc99aeef7d5f87118a3a2636f7d0fb6c60dacf3/) | LiqIncentiveCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x06cab8...24da84`](./contracts/mantle-5000/0x06cab8cbd9bb02db40eba963a8c38d4c5924da84/) | MoneyMarketHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 4 |
| standard_library | 12 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=72

Zero-match audit list:

- [3587] Code4rena_Audit_Report_1.md
- [3588] Code4rena_Audit_Report_2.md
- [3590] Sparkware_Security_Audit_Report_1.pdf

Fork inheritance lineage and inherited audits are included when available.
