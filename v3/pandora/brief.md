# Agentic Audit Brief: Pandora

## Project Overview

- Project: Pandora (`pandora`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.059Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 28 unique implementations (50 raw deployments)
- DeFi Llama TVL: $8,791.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 61 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 4 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (operator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 122; live-surface contracts included: 50 (45 live, 5 unknown).
- Excluded by liveness: 72 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/23 (21.7%)
- Deployed-live implementations: 23 of 28 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/23
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 28
- Raw deployments: 50
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 21.7% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Farming | unknown | bsc | n/a | 2 deployments: bsc [`0xb0df6d...b3ce54`](./contracts/bsc-56/0xb0df6deed5ad4f1567091f509425c4645fb3ce54/); bsc `0xc16369...3918a8` | ✅ Audited |
| NFTRouter | unknown | bsc | n/a | 2 deployments: bsc [`0x4f4b95...3a5e5d`](./contracts/bsc-56/0x4f4b9553217e15379dd66ccab1986ee1e73a5e5d/); bsc `0x7c2ded...3a7d58` | ✅ Audited |
| Referral | unknown | bsc | n/a | [`0xd8e04e...9e3d57`](./contracts/bsc-56/0xd8e04e8b7ba320f9fbcad3a5a969376bec9e3d57/) | ✅ Audited |
| TradingPool | unknown | bsc | n/a | 4 deployments: bsc [`0x2ec15c...6921d8`](./contracts/bsc-56/0x2ec15c533880dee580f1f6508d768fedcb6921d8/); bsc `0x36e6a6...608711`; bsc `0x69b3f2...1bbc58`; bsc `0xfd8ff9...ae5ac1` | ✅ Audited |
| Treasury | unknown | bsc | n/a | [`0xd5e2e3...81571c`](./contracts/bsc-56/0xd5e2e316d898e6b5139281e68e54e59ce381571c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorExecutor | unknown | bsc | n/a | [`0x56056a...fe6da8`](./contracts/bsc-56/0x56056a667a80a36d030806e3270a7b463efe6da8/) | ⚠️ Unaudited |
| DroidBot | unknown | bsc | n/a | 2 deployments: bsc [`0x1be7c1...b9376e`](./contracts/bsc-56/0x1be7c1c5a7e5e142053bf757599299f26fb9376e/); bsc `0xd72121...ed315a` | ⚠️ Unaudited |
| EnumerableSet | unknown | bsc | n/a | 2 deployments: bsc [`0x6affaf...793931`](./contracts/bsc-56/0x6affafe7758454a3d3214b8ec8958c57bc793931/); bsc `0xbbc842...58fd13` | ⚠️ Unaudited |
| IDOProjectFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x4704cc...77f5f0`](./contracts/bsc-56/0x4704cceb955eab8f268b25bbb1a1d1197977f5f0/); bsc `0x72a384...e2e0ec` | ⚠️ Unaudited |
| INOProjectFactory | unknown | bsc | n/a | 3 deployments: bsc [`0x4abf4f...1a8046`](./contracts/bsc-56/0x4abf4f3b0c8fc9d4e10f4f155511b578401a8046/); bsc `0x89813e...c42528`; bsc `0x91b808...8f0e2f` | ⚠️ Unaudited |
| LaunchpadFactory | unknown | bsc | n/a | 3 deployments: bsc [`0x766203...2a7238`](./contracts/bsc-56/0x76620371c3aa991817c814d93617ae3e062a7238/); bsc `0x8de92d...2d1200`; bsc `0xda9c10...dea457` | ⚠️ Unaudited |
| NFTLib | unknown | bsc | n/a | 2 deployments: bsc [`0x144d4f...4e98d8`](./contracts/bsc-56/0x144d4ff3154235e5c8111f1e5f4acc67754e98d8/); bsc `0x774491...fc7aca` | ⚠️ Unaudited |
| NFTLib | unknown | bsc | n/a | 2 deployments: bsc [`0x55b1b0...85987b`](./contracts/bsc-56/0x55b1b09b0d6e6eb76e7f93c43a85c2d06485987b/); bsc `0x91c74c...0385b0` | ⚠️ Unaudited |
| NFTRouterV2 | unknown | bsc | n/a | 5 deployments: bsc [`0x1c9134...f83125`](./contracts/bsc-56/0x1c913499fad44a5edb1bb069e185fca9fff83125/); bsc `0x88cb62...0726ac`; bsc `0xa17326...b8479f`; bsc `0xa2fe8f...4aedf6`; bsc `0xe28470...0d9c6c` | ⚠️ Unaudited |
| PandoAssembly | unknown | bsc | n/a | 2 deployments: bsc [`0x90e43d...8d354b`](./contracts/bsc-56/0x90e43d7ec62bf3ca982e4af0bcf82389148d354b/); bsc `0x9cfb77...598e66` | ⚠️ Unaudited |
| PandoBox | unknown | bsc | n/a | [`0xcb10af...ca9806`](./contracts/bsc-56/0xcb10afce094d08f8567195669c96e894dbca9806/) | ⚠️ Unaudited |
| PandoPotV3 | unknown | bsc | n/a | 3 deployments: bsc [`0x22f3c4...aee4a9`](./contracts/bsc-56/0x22f3c4a3025271f84ea84863510af4547aaee4a9/); bsc `0x6145ce...b40dfa`; bsc `0x8bea63...3cfa86` | ⚠️ Unaudited |
| PandoraSpirit | unknown | bsc | n/a | [`0xb72ba3...030fcb`](./contracts/bsc-56/0xb72ba371c900aa68bb9fa473e93cfbe212030fcb/) | ⚠️ Unaudited |
| Pandorium | unknown | bsc | n/a | [`0x72e3d5...e3120d`](./contracts/bsc-56/0x72e3d54293e2912fc66cf4a93625ac8305e3120d/) | ⚠️ Unaudited |
| PandoriumMock | unknown | bsc | n/a | [`0x914ae7...96f317`](./contracts/bsc-56/0x914ae72e47d4c38e112557832376161a7f96f317/) | ⚠️ Unaudited |
| PartnershipFactory | unknown | bsc | n/a | [`0x80ada0...55ecf6`](./contracts/bsc-56/0x80ada040f2e8ff0bd316875f999f8bbbf455ecf6/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | [`0xc2426f...7fafc5`](./contracts/bsc-56/0xc2426f2018f13fdc5b260bd0a88be753ee7fafc5/) | ⚠️ Unaudited |
| TradeMining | unknown | bsc | n/a | 2 deployments: bsc [`0x624ef3...25c19e`](./contracts/bsc-56/0x624ef36c66bc6962101e0d062553ffdda925c19e/); bsc `0xf3467b...eae937` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x036379...b4fadf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a11fa...c3f95e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5233c7...808f88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dd18d...9ba310` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76919c...62ad77` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Pandora-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Pandora-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 10 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=10

Fork inheritance lineage and inherited audits are included when available.
