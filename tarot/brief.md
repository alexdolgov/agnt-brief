# Agentic Audit Brief: Tarot

## Project Overview

- Project: Tarot (`tarot`)
- Website: [https://www.tarot.to](https://www.tarot.to)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.790Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, avalanche, base, bsc, canto, ethereum, fantom, kava, linea, optimism, polygon
- Contract surface: 51 unique implementations (128 raw deployments)
- DeFi Llama TVL: $953,039.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 53 project-authored contract(s) across 8 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (distributor, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 269; live-surface contracts included: 128 (30 live, 98 unknown).
- Excluded by liveness: 141 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 9 of 51 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 51
- Raw deployments: 128
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV6ERC20 | token | optimism | n/a | [`0x375488...e736bf`](./contracts/optimism-10/0x375488f097176507e39b9653b88fdc52cde736bf/) | ⚠️ Unaudited |
| ClaimAggregator | unknown | optimism | n/a | [`0xa782b2...7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ⚠️ Unaudited |
| Router02 | adapter | arbitrum | n/a | 4 deployments: optimism `0xa516b9...84405f`; bsc `0x1cafcb...54b653`; arbitrum [`0x002235...1d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/); arbitrum `0x19283d...92dc52` | ⚠️ Unaudited |
| Router03 | adapter | arbitrum | n/a | 7 deployments: ethereum `0x3b47f0...e29771`; optimism `0x9761d4...b9a91e`; bsc `0x8184fa...405990`; base `0xd7cabe...5fc83c`; arbitrum [`0x11876c...ebf1ac`](./contracts/arbitrum-42161/0x11876c56204b2e1e9763a802b7f15fc942ebf1ac/); avalanche `0x6108fe...121834`; linea `0x2217ae...8dba55` | ⚠️ Unaudited |
| SupplyVaultRouter01 | adapter | optimism | n/a | [`0x539fcd...2b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | ⚠️ Unaudited |
| SupplyVaultV2 | core_logic | optimism | n/a | 4 deployments: optimism [`0x4ac8af...8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/); optimism `0x550d17...a0465d`; optimism `0x811c27...cdd744`; optimism `0x8d3474...cd03f8` | ⚠️ Unaudited |
| TarotOFT | unknown | arbitrum | n/a | 7 deployments: ethereum `0xa10bf0...ea56e8`; optimism `0x1f514a...a737f7`; bsc `0x982e60...0690be`; polygon `0xb092e1...e36ac2`; base `0xf54425...952691`; arbitrum [`0x13278c...deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/); avalanche `0x5ecfec...160f18` | ⚠️ Unaudited |
| TowerLongPoolFactory | registry | optimism | n/a | [`0x8d92b5...c2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | ⚠️ Unaudited |
| TowerPoolFactory | registry | arbitrum | n/a | 4 deployments: optimism `0x8f5301...7dfe50`; base `0xb0d74d...f57bee`; arbitrum [`0x27eef1...ca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/); linea `0x46fcde...301f30` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x0348e0...59b13c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0b9031...03b0b0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x16a0c2...1c2b0d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2217ae...8dba55` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x232e84...609a66` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3b47f0...e29771` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x40e625...f4deea` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x46fcde...301f30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4959f8...506ee9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5634c4...c7d061` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5ed664...2f08dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6237b5...7357ad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6e4c88...c08d9d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x76d553...d0cd01` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7c00da...a155e9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x82b341...37da11` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x875f4e...738bb6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8a5226...e97615` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8df7da...568ad7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9ec30a...516863` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc20099...406d3a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe03746...dea803` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfe9cc1...f49fa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2973c9...58d21c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e4c7b...92b2e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda0428...267a0e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 57 deployments: fantom `0x04d04f...0c565a`; fantom `0x075b7f...96283a`; fantom `0x0defef...5d968e`; fantom `0x17235b...121c35`; fantom `0x1a8c7d...75dd4d`; fantom `0x1f7a54...7420ed`; fantom `0x1f8e60...c5cdb7`; fantom `0x20aa24...f9754d`; fantom `0x2217ae...8dba55`; fantom `0x26b21e...e94572`; fantom `0x283e62...89ad98`; fantom `0x2f7134...b36558`; fantom `0x3303a5...d3622e`; fantom `0x35c052...3432ea`; fantom `0x36df0a...e38a35`; fantom `0x3e9d8f...3341a4`; fantom `0x3e9f34...a10251`; fantom `0x3f7e61...183a7c`; fantom `0x449ead...641561`; fantom `0x44f768...e0d47d`; fantom `0x466ebd...a6e86b`; fantom `0x46fcde...301f30`; fantom `0x4c0931...94ebef`; fantom `0x4f56f5...f8f897`; fantom `0x51d49f...560ba7`; fantom `0x5494b2...2a74df`; fantom `0x5b0390...721765`; fantom `0x63d555...febee6`; fantom `0x68d211...dacdfb`; fantom `0x6caa3e...1c33a8`; fantom `0x74d1d2...df92f4`; fantom `0x7e5f7d...febb9a`; fantom `0x80d741...cf014b`; fantom `0x80fe67...c81c7b`; fantom `0x87d057...b64a35`; fantom `0x9189a6...c595ed`; fantom `0x93d014...35eaac`; fantom `0xa45776...c3d452`; fantom `0xa90092...75d876`; fantom `0xb7c2dd...37a274`; fantom `0xbf76f8...cf7322`; fantom `0xc2218e...c902d1`; fantom `0xc5e2b0...8764cd`; fantom `0xcf8660...564889`; fantom `0xd204e3...c94d1e`; fantom `0xd4fcd1...0979ef`; fantom `0xdcaeee...c2eaed`; fantom `0xe034c8...89f7d8`; fantom `0xe1fe8b...e40e17`; fantom `0xe21ca4...1db6c7`; fantom `0xe62745...83c275`; fantom `0xf62faf...9815a6`; fantom `0xf6d943...dcd01b`; kava `0x54950c...909f57`; kava `0x82b341...37da11`; canto `0x82b341...37da11`; canto `0xb6193d...bd1bf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0998d0...3c94d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b47f0...e29771` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54950c...909f57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bcd6c...746916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bd75e...24e97f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63f2a1...ae8bbc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8184fa...405990` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x991b6b...a2354f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa70d7...a9ad89` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4b567...40b62e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6ed26...a97131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbecbd5...3d10a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc2587...d856bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd91a46...cad8c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x35c052...3432ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/tarot](https://skynet.certik.com/projects/tarot) | CertiK | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0xa782b2...7e6e1d`](./contracts/optimism-10/0xa782b2a4fb8b329f257e58122cda55310d7e6e1d/) | ClaimAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x002235...1d07b4`](./contracts/arbitrum-42161/0x0022358ebfd5261c325f8160c7c17bc8671d07b4/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x11876c...ebf1ac`](./contracts/arbitrum-42161/0x11876c56204b2e1e9763a802b7f15fc942ebf1ac/) | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x539fcd...2b36c9`](./contracts/optimism-10/0x539fcd9adbe7473768beb87bed88988b532b36c9/) | SupplyVaultRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4ac8af...8de471`](./contracts/optimism-10/0x4ac8af23f3ef7ededb3dc45c091406aeee8de471/) | SupplyVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13278c...deebf7`](./contracts/arbitrum-42161/0x13278cd824d33a7adb9f0a9a84aca7c0d2deebf7/) | TarotOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8d92b5...c2ff05`](./contracts/optimism-10/0x8d92b5f12c1beba3583861e9c3067d088bc2ff05/) | TowerLongPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27eef1...ca1b14`](./contracts/arbitrum-42161/0x27eef135dbc00e5c3cdf5658d690d4c05dca1b14/) | TowerPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3202] skynet.certik.com/projects/tarot

Fork inheritance lineage and inherited audits are included when available.
