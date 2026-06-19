# Agentic Audit Brief: Tarot

⚠️ Lifecycle status: DEAD - TVL changed 3.3% over 90 days

## Project Overview

- Project: Tarot (`tarot`)
- Website: [https://www.tarot.to](https://www.tarot.to)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T06:14:48.767Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon
- Contract surface: 66 unique implementations (87 raw deployments)
- DeFi Llama TVL: $991,802.37
- On-chain TVL (included contracts): $154,407.65
- TVL by chain: Optimism $154,407.65

## Project Description

Tarot is a decentralized lending and borrowing protocol that enables users to supply assets into isolated lending pools and borrow against them. It also provides leveraged yield farming through its vault infrastructure, allowing users to amplify returns on liquidity provider tokens.

### Architecture

Lending pools and leveraged yield vaults share the same factory and router infrastructure for deployment and user interaction. Vaults borrow from lending pools to execute leveraged strategies, while supply vault tokens represent user deposits in lending pools, and protocol reserves manage fees and incentives across both families.

## Contract Surface Quality

- Indexed contracts: 284; live-surface contracts included: 87 (30 live, 57 unknown).
- Excluded by liveness: 197 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 57
- Unique implementations: 66
- Raw deployments: 87
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $154,407.65
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $154,407.65 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV6ERC20 | token | optimism | n/a | [`0x375488...e736bf`](./contracts/optimism-10/0x375488f097176507e39b9653b88fdc52cde736bf/) | ⚠️ Unaudited |
| SupplyVaultV2 | core_logic | optimism | n/a | 4 deployments: optimism [`0x4ac8af...8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/); optimism `0x550d17...a0465d`; optimism `0x811c27...cdd744`; optimism `0x8d3474...cd03f8` | ⚠️ Unaudited |
| ClaimAggregator | unknown | optimism | n/a | [`0xa782b2...7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ⚠️ Unaudited |
| Router02 | adapter | arbitrum | n/a | 4 deployments: optimism `0xa516b9...84405f`; bsc `0x1cafcb...54b653`; arbitrum [`0x002235...1d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/); arbitrum `0x19283d...92dc52` | ⚠️ Unaudited |
| Router03 | adapter | arbitrum | n/a | 7 deployments: ethereum `0x3b47f0...e29771`; optimism `0x9761d4...b9a91e`; bsc `0x8184fa...405990`; base `0xd7cabe...5fc83c`; arbitrum [`0x11876c...ebf1ac`](./contracts/arbitrum-42161/0x11876c56204b2e1e9763a802b7f15fc942ebf1ac/); avalanche `0x6108fe...121834`; linea `0x2217ae...8dba55` | ⚠️ Unaudited |
| SupplyVaultRouter01 | adapter | optimism | n/a | [`0x539fcd...2b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | ⚠️ Unaudited |
| TarotOFT | unknown | arbitrum | n/a | 7 deployments: ethereum `0xa10bf0...ea56e8`; optimism `0x1f514a...a737f7`; bsc `0x982e60...0690be`; polygon `0xb092e1...e36ac2`; base `0xf54425...952691`; arbitrum [`0x13278c...deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/); avalanche `0x5ecfec...160f18` | ⚠️ Unaudited |
| TowerLongPoolFactory | registry | optimism | n/a | [`0x8d92b5...c2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | ⚠️ Unaudited |
| TowerPoolFactory | registry | arbitrum | n/a | 4 deployments: optimism `0x8f5301...7dfe50`; base `0xb0d74d...f57bee`; arbitrum [`0x27eef1...ca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/); linea `0x46fcde...301f30` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (57)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0x04d04f...0c565a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x075b7f...96283a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0defef...5d968e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x17235b...121c35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1a8c7d...75dd4d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1f7a54...7420ed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1f8e60...c5cdb7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x20aa24...f9754d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2217ae...8dba55` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x26b21e...e94572` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x283e62...89ad98` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2f7134...b36558` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3303a5...d3622e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x35c052...3432ea` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x36df0a...e38a35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3e9d8f...3341a4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3e9f34...a10251` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x3f7e61...183a7c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x449ead...641561` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x44f768...e0d47d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x466ebd...a6e86b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x46fcde...301f30` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x4c0931...94ebef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x4f56f5...f8f897` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x51d49f...560ba7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5494b2...2a74df` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5b0390...721765` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x63d555...febee6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x68d211...dacdfb` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x6caa3e...1c33a8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x74d1d2...df92f4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x7e5f7d...febb9a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x80d741...cf014b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x80fe67...c81c7b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x87d057...b64a35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9189a6...c595ed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x93d014...35eaac` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa45776...c3d452` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xa90092...75d876` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb7c2dd...37a274` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbf76f8...cf7322` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc2218e...c902d1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xc5e2b0...8764cd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xcf8660...564889` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd204e3...c94d1e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xd4fcd1...0979ef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xdcaeee...c2eaed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe034c8...89f7d8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe1fe8b...e40e17` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe21ca4...1db6c7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe62745...83c275` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf62faf...9815a6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf6d943...dcd01b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x54950c...909f57` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | canto | n/a | `0xb6193d...bd1bf2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK - Tarot](https://skynet.certik.com/projects/tarot) | CertiK | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x4ac8af...8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/) | SupplyVaultV2 | core_logic | $16,499.94 | Verified native implementation with $16,499.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa782b2...7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ClaimAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x002235...1d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x539fcd...2b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | SupplyVaultRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13278c...deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/) | TarotOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8d92b5...c2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | TowerLongPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27eef1...ca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/) | TowerPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3202] CertiK - Tarot

Fork inheritance lineage and inherited audits are included when available.
