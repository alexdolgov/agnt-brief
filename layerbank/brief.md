# Agentic Audit Brief: LayerBank

⚠️ Lifecycle status: DECLINING - TVL dropped 1.5% over 90 days

## Project Overview

- Project: LayerBank (`layerbank`)
- Website: [https://layerbank.finance](https://layerbank.finance)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T20:59:06.880Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: linea, manta, mode, scroll
- Contract surface: 91 unique implementations (216 raw deployments)
- DeFi Llama TVL: $23,190,417.69
- On-chain TVL (included contracts): $116,735.52
- TVL by chain: Linea $116,735.52

## Project Description

LayerBank is a decentralized lending and money-market protocol that allows users to supply and borrow crypto assets across multiple chains using pooled liquidity, interest-bearing deposits, and overcollateralized loans. Its deployment surface includes chain-specific contracts and LABToken deployments or representations rather than a single shared on-chain LABToken address across all networks.

### Architecture

The protocol consists of a single product family with multiple Core contract instances deployed across different chains, all sharing the same LABToken for governance or utility. No separate infrastructure contracts were identified.

## Audit Coverage Summary

- Verified implementations audited: 7/14 (50.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 1
- Unverified implementations: 77
- Unique implementations: 91
- Raw deployments: 216
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (fresh)
- Staleness: 1 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 7 | 50.0% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LToken | token | linea | 41 deployments: manta `0x472d43...c5e388`; manta `0x604ddc...6765ed`; manta `0x71384b...dced68`; manta `0x7479c7...07e0b6`; manta `0x7def25...feff45`; manta `0x9d8ecb...7e21a4`; manta `0xdf4b60...5fc1c2`; mode `0x59dd44...06c256`; mode `0x66a5e1...ed366e`; mode `0x6a0d95...895ddf`; mode `0xba6e89...bdbaec`; mode `0xc5b9cb...df4959`; mode `0xd97905...a15948`; mode `0xe855b8...12add5`; mode `0xfd160b...f16902`; linea [`0x0534e5...22e9ca`](./contracts/linea-59144/0x0534e5580a07d53e2f8c06368f0d3b8fb022e9ca/); linea `0x14abc6...eefd14`; linea `0x1dff58...20de2e`; linea `0x269878...851755`; linea `0x2ad69a...46c4b0`; linea `0x2c88a4...9409e2`; linea `0x445e31...a808ff`; linea `0x592411...ddde6b`; linea `0x5a7e47...dfe6cf`; linea `0x674927...f23e48`; linea `0x6fe395...08a855`; linea `0x8be587...29c277`; linea `0x8e98c7...c012c4`; linea `0x8fefab...ab2053`; linea `0x9e9aec...55d39a`; linea `0x9f8b5d...b46c19`; linea `0xa63047...82bc79`; linea `0xb01f9d...b7ce28`; linea `0xb81b1e...28d890`; linea `0xbeed47...467d37`; linea `0xc7d848...c9d231`; linea `0xccba9a...b84f14`; linea `0xcdfcfd...1d15f8`; linea `0xe33520...d564b9`; linea `0xea0f73...f9de5f`; linea `0xf46680...4dc751` | ✅ Audited |
| Leverager | unknown | linea | 5 deployments: manta `0x4054f4...bda9a6`; mode `0xf0dcba...9029e5`; linea [`0x06502d...75d7eb`](./contracts/linea-59144/0x06502df8986d53bb44444ba065e42f53f475d7eb/); linea `0xc98b93...eefff3`; linea `0xe10157...c8200a` | ✅ Audited |
| RebateDistributor | operational_periphery | mode | 4 deployments: manta `0xc85836...ce616d`; mode [`0x67d215...ce006f`](./contracts/mode-34443/0x67d21527b227ec286409c6dd28d4704424ce006f/); linea `0x87bec9...f855bf`; linea `0xea0165...9fbfc6` | ✅ Audited |
| RewardController | governance | linea | 5 deployments: manta `0x68b30d...68eb40`; mode `0xa2c4ff...0ba82a`; linea [`0x31bd8b...f0b92f`](./contracts/linea-59144/0x31bd8b6a5ff654bb79b484b549205f5173f0b92f/); linea `0x4caddf...4b80a5`; linea `0xc37e5c...c8ab6d` | ✅ Audited |
| SaleLabOverflowFarm | unknown | linea | [`0x6474df...373b51`](./contracts/linea-59144/0x6474df49abab65c0d06b5b4336fea2f1f9373b51/) | ✅ Audited |
| xLAB | unknown | manta | 3 deployments: manta [`0x69e38d...b74467`](./contracts/manta-169/0x69e38d781183a52de5e7506cd57bc6c55bb74467/); mode `0xd4ab47...2a9f8b`; linea `0x88da54...d7d09c` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Core | unknown | linea | 7 deployments: manta `0xb7a23f...748bbf`; mode `0x809808...c1ff50`; linea [`0x009a0b...943833`](./contracts/linea-59144/0x009a0b7c38b542208936f1179151cd08e2943833/); linea `0x43eac5...5de866`; linea `0x850515...0577fb`; linea `0x887d64...fec715`; scroll `0xec53c8...4289aa` | ⚠️ Unaudited |
| LABDistributor | operational_periphery | linea | 6 deployments: manta `0x67c10b...e483b0`; mode `0xe8c3ba...4c1aec`; linea [`0x10a266...c21202`](./contracts/linea-59144/0x10a26643340791e57920fc0cd519786d3ac21202/); linea `0x3df121...595605`; linea `0x5d0606...470957`; linea `0x928715...7c1e80` | ⚠️ Unaudited |
| LABToken | token | manta | 3 deployments: manta [`0x20a512...18c997`](./contracts/manta-169/0x20a512dbdc0d006f46e6ca11329034eb3d18c997/); mode `0xfe67e1...3e59ae`; linea `0xb97f21...1ff75d` | ⚠️ Unaudited |
| Locker | unknown | linea | [`0x14c5a2...b16494`](./contracts/linea-59144/0x14c5a2b562754ed412708a103fb9cb65b1b16494/) | ⚠️ Unaudited |
| PriceCalculator | operational_periphery | mode | 9 deployments: manta `0x38f438...0746d2`; manta `0x90286f...3e4cfd`; mode [`0x310e18...470172`](./contracts/mode-34443/0x310e183416d7f266c150e7244733d1dcb1470172/); mode `0xa6b253...62f7cf`; linea `0x35a8c6...766bd6`; linea `0x42e62f...b6d7fb`; linea `0x4f5f44...b4028f`; linea `0x979805...fd7936`; linea `0xd943a0...8ee56a` | ⚠️ Unaudited |
| Validator | unknown | mode | 16 deployments: manta `0x344727...71277e`; manta `0xca892a...ff157f`; manta `0xf2c1e2...d3a7fa`; mode [`0x0ccd70...e12769`](./contracts/mode-34443/0x0ccd703acfe6ce83377243c2dbf9d55a09e12769/); mode `0x5ae221...68030f`; mode `0x8acbbe...062cdb`; mode `0xec47eb...9be055`; linea `0x3cba42...2cb29c`; linea `0x3f0155...b297ff`; linea `0x57d831...51a391`; linea `0x720a99...5ca0e7`; linea `0x924c23...9daae8`; linea `0xcef9be...964e34`; linea `0xdd47e4...1dd6f1`; linea `0xe9e061...8d4ab9`; linea `0xf8886f...3c5573` | ⚠️ Unaudited |
| Vesting | operational_periphery | manta | 5 deployments: manta [`0x683049...a7b39a`](./contracts/manta-169/0x683049b66b55a202bfc9a60e954ff9b41ba7b39a/); manta `0x6d2833...c7781e`; manta `0x912554...043599`; manta `0x9fea17...d2c9d3`; manta `0xc44a20...16d9a4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RateModelSlope | operational_periphery | manta | 33 deployments: manta [`0x01be49...4c27c1`](./contracts/manta-169/0x01be49c7734673bd407fc54735c2ac02504c27c1/); manta `0x27f85b...1e660d`; manta `0x7e76a2...5733a6`; manta `0x7ebf48...65fb14`; manta `0x8d9651...ae4684`; manta `0x91ad6f...be0c07`; manta `0xbea407...d891d1`; manta `0xd30726...16a2f6`; manta `0xe8c8cf...96902a`; manta `0xf7e5d5...848acc`; manta `0xf9a2e1...15ef95`; mode `0x0442be...7ff62a`; mode `0x072cd6...c3bc62`; mode `0x16cd8d...f7b1af`; mode `0x2a0c7d...90e295`; mode `0x7187b3...e1dc71`; mode `0x83df63...fa7ff4`; mode `0xe71957...0f5967`; linea `0x2ad511...f678dd`; linea `0x33c610...fac4f9`; linea `0x44b68e...98b305`; linea `0x50a2d2...aa5148`; linea `0x527b83...941bae`; linea `0x5aa127...c607b4`; linea `0x6358da...c6ad74`; linea `0x709be0...7477fc`; linea `0x763033...4a2f3f`; linea `0x78f8bd...790859`; linea `0xc69054...38cad2`; linea `0xc6be5f...a1d208`; linea `0xd24e30...0a8321`; linea `0xe4297b...ff82b5`; linea `0xe7d667...1959c5` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | manta | `0x126eb7...d8d118` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x147967...14aba6` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x21a3d6...bb5069` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x4ad32c...0318d9` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x4be8c1...f8bb01` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x90bdfb...522a43` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x9cad14...1a5250` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xa28b3b...73d927` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xb8eecb...339d44` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xbdaf14...d48962` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc30808...b44b50` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xcd5f48...e32d6b` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xcec210...0fd2bc` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xcf2350...c2d7d8` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf04ec6...3b996a` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf3e070...1df5cf` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf90f48...994b0e` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x0f225d...04d150` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x2551ae...cc557f` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x273a36...679b8b` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x2a7efe...2f5fa1` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x2b8867...3ef169` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x2ba3ad...779e7b` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x3a0362...072977` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x4ac518...284959` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x72f7a8...6c3ea6` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x77cabf...eda971` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x7c57db...26cc4d` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x803a61...82c056` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x892d09...d5cba8` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xa91a04...2153aa` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xab3e7c...b97151` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xbd9edf...124aa8` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xf1e257...3c247f` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xfb31a0...f20b99` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x016aa4...6137b5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x048a6c...68d20a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0f5bb9...becaef` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1d51ef...1d7f51` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x232780...dda892` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2b46e8...3545d6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2c4cbd...f60999` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x2f96c9...9e3e00` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x52b470...ac6ae2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x57cb24...5c29d7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5e838a...0b1448` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x674990...08d2b1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6d1ca2...10d43d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6efb01...65fea5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7225e1...3d54ee` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa15f45...6ea816` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xad8d03...92a8f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xae5c55...69c552` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xae79f2...ee0bab` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xaeb4af...2a29f7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xafa621...682e78` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb05fe9...4ce076` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb5b25d...fe7112` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb9bf4a...7ebb8b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb9dd38...f58df1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbb5fe2...dc445d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc1d76a...b1ec4e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc44c04...5b151f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcc77ba...67472c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcd88ee...c0a620` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd4ac03...adb04b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd69fdd...99fdf8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd83855...13f0df` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe43976...845ed6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe937de...6a6102` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xea34ef...cc1d4c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf90e4e...a0ee9a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfbed17...ca085e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfc64ac...85cc32` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfd7f7a...0eafb9` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfde206...7a8051` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xff8030...790053` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield Audit Report – LineaBank v1.0](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LineaBank-v1.0.pdf) | PeckShield | Audit | 2023-07 | stale | Direct | contract_name | 5 | medium |
| [PeckShield Audit Report – LayerBank v2.0](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-LayerBank-v1.0.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 86 | high |
| [MoveBit Final Audit Report – 2025.01.23](https://movebit.xyz/reports/20250123-LayerBank-Final-Audit-Report.pdf) | MoveBit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fvi5sScuffF7lLX6pHEo5%2Fuploads%2FgSR9vUclew9CtwxZGIL4%2FAstraSec-AuditReport-Layerbank-V3%20(1).pdf?alt=media) | AstraSec | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x009a0b...943833`](./contracts/linea-59144/0x009a0b7c38b542208936f1179151cd08e2943833/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x10a266...c21202`](./contracts/linea-59144/0x10a26643340791e57920fc0cd519786d3ac21202/) | LABDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x20a512...18c997`](./contracts/manta-169/0x20a512dbdc0d006f46e6ca11329034eb3d18c997/) | LABToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x14c5a2...b16494`](./contracts/linea-59144/0x14c5a2b562754ed412708a103fb9cb65b1b16494/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x310e18...470172`](./contracts/mode-34443/0x310e183416d7f266c150e7244733d1dcb1470172/) | PriceCalculator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0ccd70...e12769`](./contracts/mode-34443/0x0ccd703acfe6ce83377243c2dbf9d55a09e12769/) | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x683049...a7b39a`](./contracts/manta-169/0x683049b66b55a202bfc9a60e954ff9b41ba7b39a/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=91

Zero-match audit list:

- [1858] MoveBit Final Audit Report – 2025.01.23
- [1859] spaces/vi5sScuffF7lLX6pHEo5/uploads/gSR9vUclew9CtwxZGIL4/AstraSec-AuditReport-Layerbank-V3 (1).pdf

Fork inheritance lineage and inherited audits are included when available.
