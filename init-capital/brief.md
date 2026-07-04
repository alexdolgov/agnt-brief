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
| Api3OracleReader | unknown | mantle | n/a | [`0x5fd18f...0f6198`](./contracts/mantle-5000/0x5fd18fa97f96b546848c729201794456640f6198/) | ✅ Audited |
| Config | unknown | mantle | n/a | 2 deployments: mantle [`0x007f91...a553ac`](./contracts/mantle-5000/0x007f91636e0f986068ef27c950fa18734ba553ac/); mantle `0x1dbd1e...a334cb` | ✅ Audited |
| InitCore | unknown | mantle | n/a | 2 deployments: mantle [`0x972bcb...bcafc5`](./contracts/mantle-5000/0x972bcb0284cca0152527c4f70f8f689852bcafc5/); mantle `0xf8b855...dba05d` | ✅ Audited |
| InitCore | unknown | blast | n/a | [`0x815e63...85494b`](./contracts/blast-81457/0x815e63d6b5e1b8d74876fc9a2c08b79d4185494b/) | ✅ Audited |
| InitOracle | unknown | mantle | n/a | 2 deployments: mantle [`0x4e195a...2c0350`](./contracts/mantle-5000/0x4e195a32b2f6eba9c4565ba49bef34f23c2c0350/); mantle `0x792841...b14f81` | ✅ Audited |
| LendingPool | unknown | mantle | n/a | 9 deployments: mantle [`0x00a556...227d06`](./contracts/mantle-5000/0x00a55649e597d463fd212fbe48a3b40f0e227d06/); mantle `0x328243...581b1c`; mantle `0x423bb7...3329fd`; mantle `0x449496...4a2976`; mantle `0x5071c0...3a89df`; mantle `0x51ab74...11aec4`; mantle `0x9c9f28...afd552`; mantle `0xada66a...00ad09`; mantle `0xf08481...b3f63a` | ✅ Audited |
| LendingPool | unknown | blast | n/a | [`0x22eb74...b0de11`](./contracts/blast-81457/0x22eb74ab07ce90138f0fe4b2fdafee1738b0de11/) | ✅ Audited |
| MarginTradingHook | unknown | mantle | n/a | 7 deployments: mantle [`0x213754...9718b5`](./contracts/mantle-5000/0x2137546635595919a66468cf08cb9e9e879718b5/); mantle `0x497949...1c94bd`; mantle `0x8bc7df...4dfcbb`; mantle `0x956794...ae7d33`; mantle `0xe4fe22...1ad1ad`; mantle `0xebf3ed...8cdefd`; mantle `0xefb43e...000763` | ✅ Audited |
| MarginTradingHook | unknown | mantle | n/a | 2 deployments: mantle [`0x42aa4e...6aa7f9`](./contracts/mantle-5000/0x42aa4e76404ae974d825dde2128adab3716aa7f9/); mantle `0x917a9f...d3dc14` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BVM_ETH | unknown | mantle | n/a | [`0xdeadde...ad1111`](./contracts/mantle-5000/0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111/) | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | n/a | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| METHL2 | token | mantle | n/a | [`0xcda86a...b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | ⚠️ Unaudited |
| MoneyMarketHook | unknown | mantle | n/a | [`0xf82cbc...337346`](./contracts/mantle-5000/0xf82cbcab75c1138a8f1f20179613e7c0c8337346/) | ⚠️ Unaudited |
| PosManager | unknown | mantle | n/a | 2 deployments: mantle [`0x0e7401...8bba92`](./contracts/mantle-5000/0x0e7401707cd08c03cdb53daef3295ddfb68bba92/); mantle `0x995b3d...369dbf` | ⚠️ Unaudited |
| ProxyAdmin | unknown | mantle | n/a | [`0xa55a59...e26f7a`](./contracts/mantle-5000/0xa55a591f91103d84106ba79eda446ebdbfe26f7a/) | ⚠️ Unaudited |
| RiskManager | unknown | mantle | n/a | 2 deployments: mantle [`0x0c03cd...92f951`](./contracts/mantle-5000/0x0c03cd3e8b669680bf306fc72f1dc2cac592f951/); mantle `0xf34167...18002b` | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | mantle | n/a | [`0x211cc4...5fe5d2`](./contracts/mantle-5000/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x013d02...253285`](./contracts/mantle-5000/0x013d02a11779662164f945f477cff4abfd253285/); mantle `0xb45206...6f9d68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x089d92...9046b7`](./contracts/mantle-5000/0x089d92727b68c58a931d240dd99a8246019046b7/); mantle `0x580df5...60ac6e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x0b375d...ae6197`](./contracts/mantle-5000/0x0b375d3a58a58e72db7ce5d7ca0994c5c1ae6197/); mantle `0xf42c7b...40995f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x1fe6b7...2b5d14`](./contracts/mantle-5000/0x1fe6b7cab3df27058ba3a8f60acbf0a0322b5d14/); mantle `0xe576e4...866b33` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x3ab7de...664452`](./contracts/mantle-5000/0x3ab7de27aef7c235af6c835e44ec5e8f60664452/); mantle `0xb8020c...02ad72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x58fb83...7ae7ec`](./contracts/mantle-5000/0x58fb832cd2368ee14f31d6a18f9fca06697ae7ec/); mantle `0x6a905e...a0b27b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x66bdbf...0550ad`](./contracts/mantle-5000/0x66bdbf2eefc84f83b476db238574ca5cb00550ad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0xdc9311...b99a01`](./contracts/mantle-5000/0xdc9311f1ffd2cc42f3de7ec26e8cdda5a7b99a01/); mantle `0xe6239b...b2f092` | ⚠️ Unaudited |
| TransparentUpgradeableProxyReceiveETH | unknown | mantle | n/a | 2 deployments: mantle [`0x442d03...7c4bda`](./contracts/mantle-5000/0x442d034b4bc112a1194eef8544b2f98b467c4bda/); mantle `0x7fa704...408eaa` | ⚠️ Unaudited |
| USDeOFT | unknown | mantle | n/a | [`0x5d3a1f...52ef34`](./contracts/mantle-5000/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | ⚠️ Unaudited |
| USDYW | unknown | mantle | n/a | [`0x5be265...57c5a6`](./contracts/mantle-5000/0x5be26527e817998a7206475496fde1e68957c5a6/) | ⚠️ Unaudited |
| WMANTLE | unknown | mantle | n/a | [`0x78c1b0...7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | ⚠️ Unaudited |

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
| Proxy (impl: 0x2529c5e48ddcec4c235f7dba6cf3ce994899ddad) | unknown | blast | n/a | 2 deployments: blast `0x0bca18...4c9a02`; blast `0x2529c5...99ddad` | ❓ Unverified |
| Proxy (impl: 0xd9c0154a09f09988e8f4be6d1e8d8bc9bd805640) | unknown | blast | n/a | 3 deployments: blast `0x531342...13ff28`; blast `0x85baba...250f68`; blast `0xd9c015...805640` | ❓ Unverified |
| Proxy (impl: 0xfdb3cc1a63e6de98e7d9a36c683bd30a9b5237fa) | unknown | blast | n/a | 2 deployments: blast `0x5e51d9...8cac67`; blast `0xfdb3cc...5237fa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x101762...86838e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x134377...944283` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x196d4e...4367e9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2a81ff...d0bd7d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x32f533...618b62` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x338489...7746ef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6859b1...85df2e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7ae574...9f9915` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb5695d...d3520b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbe7d35...f518d3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xccadc0...ca7f33` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xee6194...c9eaf0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xeed8a0...d9be34` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf525f9...977a0c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0d87d1...365d32` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x126dcc...29a957` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1dac52...bb4257` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x265daa...560785` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x340b6c...d8d1f4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3816ed...ae697a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x47dc59...dfba3a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4a7ccb...5a011d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x546851...c834f2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5f1a7d...6248fc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x721ad8...577ce7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x72ee68...3b552a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x75d40b...ff1836` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7971ad...172df9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x812607...095afe` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8aa1cf...0cb288` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x92aa51...cee445` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x92e4af...15e542` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x95b864...2852d0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaf8512...dbfa47` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcd8175...dde280` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd23ec3...0b08e9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd501a5...d6bf39` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd9bb55...ea5cfa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdad140...dde412` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe1d36e...32b18d` | ❓ Unverified |

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
| mantle | [`0xdeadde...ad1111`](./contracts/mantle-5000/0xdeaddeaddeaddeaddeaddeaddeaddeaddead1111/) | BVM_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | L2cmETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xcda86a...b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | METHL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf82cbc...337346`](./contracts/mantle-5000/0xf82cbcab75c1138a8f1f20179613e7c0c8337346/) | MoneyMarketHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0e7401...8bba92`](./contracts/mantle-5000/0x0e7401707cd08c03cdb53daef3295ddfb68bba92/) | PosManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0c03cd...92f951`](./contracts/mantle-5000/0x0c03cd3e8b669680bf306fc72f1dc2cac592f951/) | RiskManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x211cc4...5fe5d2`](./contracts/mantle-5000/0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2/) | StakedUSDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5d3a1f...52ef34`](./contracts/mantle-5000/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34/) | USDeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5be265...57c5a6`](./contracts/mantle-5000/0x5be26527e817998a7206475496fde1e68957c5a6/) | USDYW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x78c1b0...7f4cb8`](./contracts/mantle-5000/0x78c1b0c915c4faa5fffa6cabf0219da63d7f4cb8/) | WMANTLE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
