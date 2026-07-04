# Agentic Audit Brief: HOPE Money

## Project Overview

- Project: HOPE Money (`hope-money`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.618Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 21 unique implementations (33 raw deployments)
- DeFi Llama TVL: $1,307,534.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 120 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 13 common project-authored base contract(s) (proxy, erc1967upgrade, accesscontrolupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 31 (31 live, 0 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/19 (73.7%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/21
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 33
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 15 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 52.6% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 11 | 52.4% | 2023-03 |
| PeckShield | Tier 2 | 7 | 33.3% | 2023-04 |
| CertiK | Tier 2 | 6 | 28.6% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ApprovedTokenManager | unknown | ethereum | n/a | [`0x2ca1f5...173c78`](./contracts/ethereum-1/0x2ca1f5e429d423701052222e598e036016173c78/) | ✅ Audited |
| BurnerManager | unknown | ethereum | n/a | [`0x0d80a7...966066`](./contracts/ethereum-1/0x0d80a72c9f98e5b1c7fb3e3dc4d58aeca5966066/) | ✅ Audited |
| FeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x60498d...7285bb`](./contracts/ethereum-1/0x60498d57c18737f0a37e43f9bc20a3ce937285bb/); ethereum `0x99040c...2bb697` | ✅ Audited |
| GaugeController | unknown | ethereum | n/a | [`0xa8b270...b4dd7e`](./contracts/ethereum-1/0xa8b2706b45eb95e5d14f8c29a3c5cf0cd5b4dd7e/) | ✅ Audited |
| GaugeFeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0xdedd17...3c48ed`](./contracts/ethereum-1/0xdedd17f3f3d6af647b94b77fa0d97983003c48ed/); ethereum `0xe0530d...898a84` | ✅ Audited |
| HOPE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f9bd4...03c61e`](./contracts/ethereum-1/0x8f9bd4f6b88c46657aab889f1150b0521203c61e/); ethereum `0xc353bf...68f98e` | ✅ Audited |
| HOPE | unknown | ethereum | n/a | [`0xe4a14f...848e84`](./contracts/ethereum-1/0xe4a14f5a293274ee3fae3958895a22e6fc848e84/) | ✅ Audited |
| HopeSwapBurner | unknown | ethereum | n/a | [`0xd32864...acea42`](./contracts/ethereum-1/0xd32864ff55aa1ceabace9d3e57bb113461acea42/) | ✅ Audited |
| LT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9ed143...9a735b`](./contracts/ethereum-1/0x9ed1439d328647bdb148c20316ea024c719a735b/); ethereum `0xd708e5...8ed019` | ✅ Audited |
| PoolGauge | unknown | ethereum | n/a | [`0x3f954d...7908aa`](./contracts/ethereum-1/0x3f954d5db340578773218388d8327035db7908aa/) | ✅ Audited |
| StakingHOPE | unknown | ethereum | n/a | [`0xf5c6d9...9fd4d8`](./contracts/ethereum-1/0xf5c6d9fc73991f687f158fe30d4a77691a9fd4d8/) | ✅ Audited |
| SwapFeeToVault | unknown | ethereum | n/a | [`0xda9c43...f42f23`](./contracts/ethereum-1/0xda9c43a13a82b0d0292cf38e18fa71a0a9f42f23/) | ✅ Audited |
| UnderlyingBurner | unknown | ethereum | n/a | [`0xd61fd6...cadc97`](./contracts/ethereum-1/0xd61fd63a466dee970eea49ef109283a57acadc97/) | ✅ Audited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0x219bd2...5051e9`](./contracts/ethereum-1/0x219bd2d1449f3813c01204ee455d11b41d5051e9/) | ✅ Audited |
| VotingEscrow | unknown | ethereum | n/a | [`0xe909f3...b67400`](./contracts/ethereum-1/0xe909f37f3003fa37aad83c1baf2a98e5a7b67400/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HToken | token | ethereum | n/a | 7 deployments: ethereum [`0x1fc2dd...2c9386`](./contracts/ethereum-1/0x1fc2dd0dcb64e0159b0474cfe6e45985522c9386/); ethereum `0x25126f...403907`; ethereum `0x396856...a4323e`; ethereum `0x58792e...f74d90`; ethereum `0x5dd30e...303572`; ethereum `0x6090f3...51b749`; ethereum `0xb3cc0a...334e62` | ⚠️ Unaudited |
| LightTeamVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a1207...9d82c3`](./contracts/ethereum-1/0x6a120782dc421ef28f148ee1fee8a09bc59d82c3/); ethereum `0xdd42df...e54513` | ⚠️ Unaudited |
| LightTeamVaultManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x045087...a20a91`](./contracts/ethereum-1/0x045087cbb64b35a31845b6e720c17f443ea20a91/); ethereum `0xedb47d...b3c0bc` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xcc0f98...a3bd39`](./contracts/ethereum-1/0xcc0f986021010d4a3345cca903bf5487aea3bd39/) | ⚠️ Unaudited |
| RockXETH | token | ethereum | n/a | [`0xf1376b...df51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | ⚠️ Unaudited |
| UnderlyingBurnerV2 | unknown | ethereum | n/a | [`0x77b3cf...ee5f29`](./contracts/ethereum-1/0x77b3cfcd79f8030fac267da519a1d8e4f6ee5f29/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK-Audit-for-LightDAO-II-v1.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/CertiK-Audit-for-LightDAO-II-v1.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-HOPE-v1.2.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/PeckShield-Audit-Report-HOPE-v1.2.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 9 | high |
| [SlowMist Audit Report - LightDAO Phase1_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase1_en-us.pdf) | SlowMist | Audit | 2023-02 | stale | Direct | contract_name | 7 | high |
| [SlowMist Audit Report - LightDAO Phase2_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase2_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | 7 | high |
| [- [Audits]()](https://docs.hope.money/appendix/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1fc2dd...2c9386`](./contracts/ethereum-1/0x1fc2dd0dcb64e0159b0474cfe6e45985522c9386/) | HToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a1207...9d82c3`](./contracts/ethereum-1/0x6a120782dc421ef28f148ee1fee8a09bc59d82c3/) | LightTeamVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x045087...a20a91`](./contracts/ethereum-1/0x045087cbb64b35a31845b6e720c17f443ea20a91/) | LightTeamVaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1376b...df51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | RockXETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77b3cf...ee5f29`](./contracts/ethereum-1/0x77b3cfcd79f8030fac267da519a1d8e4f6ee5f29/) | UnderlyingBurnerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=30

Zero-match audit list:

- [17440] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
