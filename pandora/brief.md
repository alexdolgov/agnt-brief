# Agentic Audit Brief: Pandora

## Project Overview

- Project: Pandora (`pandora`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.917Z
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
| Farming | unknown | bsc | n/a | 2 deployments: bsc [`0xb0df6deed5ad4f1567091f509425c4645fb3ce54`](./contracts/bsc-56/0xb0df6deed5ad4f1567091f509425c4645fb3ce54/); bsc `0xc16369c5a2e794842ab56ba0257de0f5b73918a8` | ✅ Audited |
| NFTRouter | unknown | bsc | n/a | 2 deployments: bsc [`0x4f4b9553217e15379dd66ccab1986ee1e73a5e5d`](./contracts/bsc-56/0x4f4b9553217e15379dd66ccab1986ee1e73a5e5d/); bsc `0x7c2ded6d512af79156efd816403be766423a7d58` | ✅ Audited |
| Referral | unknown | bsc | n/a | [`0xd8e04e8b7ba320f9fbcad3a5a969376bec9e3d57`](./contracts/bsc-56/0xd8e04e8b7ba320f9fbcad3a5a969376bec9e3d57/) | ✅ Audited |
| TradingPool | unknown | bsc | n/a | 4 deployments: bsc [`0x2ec15c533880dee580f1f6508d768fedcb6921d8`](./contracts/bsc-56/0x2ec15c533880dee580f1f6508d768fedcb6921d8/); bsc `0x36e6a65eb4df90d7313cf6e7e974ad6743608711`; bsc `0x69b3f24724d3e87f0b75b6b07c9d424b0e1bbc58`; bsc `0xfd8ff92fe1193ef32f08fdcf27dcbf8f33ae5ac1` | ✅ Audited |
| Treasury | unknown | bsc | n/a | [`0xd5e2e316d898e6b5139281e68e54e59ce381571c`](./contracts/bsc-56/0xd5e2e316d898e6b5139281e68e54e59ce381571c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorExecutor | unknown | bsc | n/a | [`0x56056a667a80a36d030806e3270a7b463efe6da8`](./contracts/bsc-56/0x56056a667a80a36d030806e3270a7b463efe6da8/) | ⚠️ Unaudited |
| DroidBot | unknown | bsc | n/a | 2 deployments: bsc [`0x1be7c1c5a7e5e142053bf757599299f26fb9376e`](./contracts/bsc-56/0x1be7c1c5a7e5e142053bf757599299f26fb9376e/); bsc `0xd721214da2c92f927745bf7f23e8926a3fed315a` | ⚠️ Unaudited |
| EnumerableSet | unknown | bsc | n/a | 2 deployments: bsc [`0x6affafe7758454a3d3214b8ec8958c57bc793931`](./contracts/bsc-56/0x6affafe7758454a3d3214b8ec8958c57bc793931/); bsc `0xbbc842b21673a55036379fba692680e9f358fd13` | ⚠️ Unaudited |
| IDOProjectFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x4704cceb955eab8f268b25bbb1a1d1197977f5f0`](./contracts/bsc-56/0x4704cceb955eab8f268b25bbb1a1d1197977f5f0/); bsc `0x72a384cb2253cc9f9157fdabc9d167fb53e2e0ec` | ⚠️ Unaudited |
| INOProjectFactory | unknown | bsc | n/a | 3 deployments: bsc [`0x4abf4f3b0c8fc9d4e10f4f155511b578401a8046`](./contracts/bsc-56/0x4abf4f3b0c8fc9d4e10f4f155511b578401a8046/); bsc `0x89813e9db9d9314b2b218aa85827b326ddc42528`; bsc `0x91b808d8136198299f939c6ee7269bad098f0e2f` | ⚠️ Unaudited |
| LaunchpadFactory | unknown | bsc | n/a | 3 deployments: bsc [`0x76620371c3aa991817c814d93617ae3e062a7238`](./contracts/bsc-56/0x76620371c3aa991817c814d93617ae3e062a7238/); bsc `0x8de92d9d131c4889e12c9b440f7ab5508c2d1200`; bsc `0xda9c10a26bf75bfeec98e7de8875d52526dea457` | ⚠️ Unaudited |
| NFTLib | unknown | bsc | n/a | 2 deployments: bsc [`0x144d4ff3154235e5c8111f1e5f4acc67754e98d8`](./contracts/bsc-56/0x144d4ff3154235e5c8111f1e5f4acc67754e98d8/); bsc `0x7744918c8674e3eb7c1763d75c3477f3a1fc7aca` | ⚠️ Unaudited |
| NFTLib | unknown | bsc | n/a | 2 deployments: bsc [`0x55b1b09b0d6e6eb76e7f93c43a85c2d06485987b`](./contracts/bsc-56/0x55b1b09b0d6e6eb76e7f93c43a85c2d06485987b/); bsc `0x91c74c4ecd0ab8c2890906ba381c4f47930385b0` | ⚠️ Unaudited |
| NFTRouterV2 | unknown | bsc | n/a | 5 deployments: bsc [`0x1c913499fad44a5edb1bb069e185fca9fff83125`](./contracts/bsc-56/0x1c913499fad44a5edb1bb069e185fca9fff83125/); bsc `0x88cb62ef25e70b3859ffba7734a347b3fc0726ac`; bsc `0xa173268715d8486be799f06d64c35bad28b8479f`; bsc `0xa2fe8f3c27dece5da46300810d275449c84aedf6`; bsc `0xe284705043c803913dca28137e9e8cfe510d9c6c` | ⚠️ Unaudited |
| PandoAssembly | unknown | bsc | n/a | 2 deployments: bsc [`0x90e43d7ec62bf3ca982e4af0bcf82389148d354b`](./contracts/bsc-56/0x90e43d7ec62bf3ca982e4af0bcf82389148d354b/); bsc `0x9cfb7714527b58a04c2f78b4215e3e4fef598e66` | ⚠️ Unaudited |
| PandoBox | unknown | bsc | n/a | [`0xcb10afce094d08f8567195669c96e894dbca9806`](./contracts/bsc-56/0xcb10afce094d08f8567195669c96e894dbca9806/) | ⚠️ Unaudited |
| PandoPotV3 | unknown | bsc | n/a | 3 deployments: bsc [`0x22f3c4a3025271f84ea84863510af4547aaee4a9`](./contracts/bsc-56/0x22f3c4a3025271f84ea84863510af4547aaee4a9/); bsc `0x6145ce62c39afe4053e0e76925e9b1d0c1b40dfa`; bsc `0x8bea63331b309a9f306656fe991a9ee1633cfa86` | ⚠️ Unaudited |
| PandoraSpirit | unknown | bsc | n/a | [`0xb72ba371c900aa68bb9fa473e93cfbe212030fcb`](./contracts/bsc-56/0xb72ba371c900aa68bb9fa473e93cfbe212030fcb/) | ⚠️ Unaudited |
| Pandorium | unknown | bsc | n/a | [`0x72e3d54293e2912fc66cf4a93625ac8305e3120d`](./contracts/bsc-56/0x72e3d54293e2912fc66cf4a93625ac8305e3120d/) | ⚠️ Unaudited |
| PandoriumMock | unknown | bsc | n/a | [`0x914ae72e47d4c38e112557832376161a7f96f317`](./contracts/bsc-56/0x914ae72e47d4c38e112557832376161a7f96f317/) | ⚠️ Unaudited |
| PartnershipFactory | unknown | bsc | n/a | [`0x80ada040f2e8ff0bd316875f999f8bbbf455ecf6`](./contracts/bsc-56/0x80ada040f2e8ff0bd316875f999f8bbbf455ecf6/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | [`0xc2426f2018f13fdc5b260bd0a88be753ee7fafc5`](./contracts/bsc-56/0xc2426f2018f13fdc5b260bd0a88be753ee7fafc5/) | ⚠️ Unaudited |
| TradeMining | unknown | bsc | n/a | 2 deployments: bsc [`0x624ef36c66bc6962101e0d062553ffdda925c19e`](./contracts/bsc-56/0x624ef36c66bc6962101e0d062553ffdda925c19e/); bsc `0xf3467bfd772afad849ae4f58aa70297c51eae937` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x036379d6e08d1cf9306eb40064bc2e57ecb4fadf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a11fa8963da551d1cf9962b5cb6faa04cc3f95e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5233c7431adc65c44e341f228ab530be5a808f88` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dd18d1f51a26e0ce42d0016689c6e9e169ba310` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76919cfde248202a5bd3a784d133902a8962ad77` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Pandora-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Pandora-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 10 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x56056a667a80a36d030806e3270a7b463efe6da8`](./contracts/bsc-56/0x56056a667a80a36d030806e3270a7b463efe6da8/) | AggregatorExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1be7c1c5a7e5e142053bf757599299f26fb9376e`](./contracts/bsc-56/0x1be7c1c5a7e5e142053bf757599299f26fb9376e/) | DroidBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6affafe7758454a3d3214b8ec8958c57bc793931`](./contracts/bsc-56/0x6affafe7758454a3d3214b8ec8958c57bc793931/) | EnumerableSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4704cceb955eab8f268b25bbb1a1d1197977f5f0`](./contracts/bsc-56/0x4704cceb955eab8f268b25bbb1a1d1197977f5f0/) | IDOProjectFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4abf4f3b0c8fc9d4e10f4f155511b578401a8046`](./contracts/bsc-56/0x4abf4f3b0c8fc9d4e10f4f155511b578401a8046/) | INOProjectFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x76620371c3aa991817c814d93617ae3e062a7238`](./contracts/bsc-56/0x76620371c3aa991817c814d93617ae3e062a7238/) | LaunchpadFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x144d4ff3154235e5c8111f1e5f4acc67754e98d8`](./contracts/bsc-56/0x144d4ff3154235e5c8111f1e5f4acc67754e98d8/) | NFTLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55b1b09b0d6e6eb76e7f93c43a85c2d06485987b`](./contracts/bsc-56/0x55b1b09b0d6e6eb76e7f93c43a85c2d06485987b/) | NFTLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c913499fad44a5edb1bb069e185fca9fff83125`](./contracts/bsc-56/0x1c913499fad44a5edb1bb069e185fca9fff83125/) | NFTRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x90e43d7ec62bf3ca982e4af0bcf82389148d354b`](./contracts/bsc-56/0x90e43d7ec62bf3ca982e4af0bcf82389148d354b/) | PandoAssembly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb10afce094d08f8567195669c96e894dbca9806`](./contracts/bsc-56/0xcb10afce094d08f8567195669c96e894dbca9806/) | PandoBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22f3c4a3025271f84ea84863510af4547aaee4a9`](./contracts/bsc-56/0x22f3c4a3025271f84ea84863510af4547aaee4a9/) | PandoPotV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb72ba371c900aa68bb9fa473e93cfbe212030fcb`](./contracts/bsc-56/0xb72ba371c900aa68bb9fa473e93cfbe212030fcb/) | PandoraSpirit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72e3d54293e2912fc66cf4a93625ac8305e3120d`](./contracts/bsc-56/0x72e3d54293e2912fc66cf4a93625ac8305e3120d/) | Pandorium | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x914ae72e47d4c38e112557832376161a7f96f317`](./contracts/bsc-56/0x914ae72e47d4c38e112557832376161a7f96f317/) | PandoriumMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x80ada040f2e8ff0bd316875f999f8bbbf455ecf6`](./contracts/bsc-56/0x80ada040f2e8ff0bd316875f999f8bbbf455ecf6/) | PartnershipFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2426f2018f13fdc5b260bd0a88be753ee7fafc5`](./contracts/bsc-56/0xc2426f2018f13fdc5b260bd0a88be753ee7fafc5/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x624ef36c66bc6962101e0d062553ffdda925c19e`](./contracts/bsc-56/0x624ef36c66bc6962101e0d062553ffdda925c19e/) | TradeMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=10

Fork inheritance lineage and inherited audits are included when available.
