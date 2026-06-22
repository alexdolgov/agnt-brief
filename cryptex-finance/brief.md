# Agentic Audit Brief: Cryptex Finance

⚠️ Lifecycle status: DEAD - TVL dropped 9.4% over 90 days

## Project Overview

- Project: Cryptex Finance (`cryptex-finance`)
- Website: [https://cryptex.finance/](https://cryptex.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T15:16:56.377Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, ethereum
- Contract surface: 13 unique implementations (20 raw deployments)
- DeFi Llama TVL: $631,358.00
- On-chain TVL (included contracts): $139,038.48
- TVL by chain: Ethereum $139,038.48

## Project Description

Cryptex Finance is a decentralized protocol that creates and manages synthetic assets and indexes, primarily the Total Crypto Market Cap Token (TCAP), which tracks the total market capitalization of the cryptocurrency market. It allows users to mint and redeem these synthetic assets by depositing collateral into vaults, providing exposure to broad market movements without holding the underlying assets.

### Architecture

The Core contracts provide the TCAP token and ETH vault, which are extended by Cryptex V1 with additional vault types and reward mechanisms. Cryptex V2 upgrades the vault infrastructure with proxy patterns, while Governance contracts oversee protocol parameters across all families.

## Contract Surface Quality

- Indexed contracts: 324; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 296 inactive, 8 singleton, 0 uninitialized.
- Deployment units: 0/4 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 15; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 7/13 (53.8%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 20
- Audits discovered: 9
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 5 aging, 2 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 7 | 53.8% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ETHVaultHandler | core_logic | ethereum | n/a | [`0x717170...ac1381`](./contracts/ethereum-1/0x717170b66654292dfbd89c39f5ae6753d2ac1381/) | ✅ Audited |
| ERC20VaultHandler | core_logic | ethereum | n/a | [`0x443366...964771`](./contracts/ethereum-1/0x443366a7a5821619d8d57405511e4fadd9964771/) | ✅ Audited |
| Ctx | unknown | ethereum | n/a | [`0x321c2f...38f98d`](./contracts/ethereum-1/0x321c2fe4446c7c963dc41dd58879af648838f98d/) | ✅ Audited |
| DelegatorFactory | registry | ethereum | n/a | [`0x70236b...472918`](./contracts/ethereum-1/0x70236b36f86ab4bd557fe9934e1246537b472918/) | ✅ Audited |
| LiquidityReward | unknown | arbitrum | n/a | [`0x938f14...0747ba`](./contracts/arbitrum-42161/0x938f145d5f3abf681618dcc5c71f095b870747ba/) | ✅ Audited |
| TCAP | unknown | ethereum | n/a | [`0x16c52c...50afa4`](./contracts/ethereum-1/0x16c52ceece2ed57dad87319d91b5e3637d50afa4/) | ✅ Audited |
| TreasuryVester | operational_periphery | ethereum | n/a | [`0x2121b3...a4f1c5`](./contracts/ethereum-1/0x2121b3f1719a90e4ded5918cf24a2cc9fca4f1c5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DSU | unknown | arbitrum | n/a | [`0x52c64b...6b841b`](./contracts/arbitrum-42161/0x52c64b8998eb7c80b6f526e99e29abdcc86b841b/) | ⚠️ Unaudited |
| GovernorBeta | governance | ethereum | n/a | [`0x874c5d...196d5b`](./contracts/ethereum-1/0x874c5d592afc6803c3dd60d6442357879f196d5b/) | ⚠️ Unaudited |
| SeasonalMerkleClaim | operational_periphery | arbitrum | n/a | [`0x4fc1cc...301f30`](./contracts/arbitrum-42161/0x4fc1cc62e5d0b12f5a9e3213b4177d2edb301f30/) | ⚠️ Unaudited |
| TimelockController | governance | arbitrum | n/a | [`0xda381a...cc105b`](./contracts/arbitrum-42161/0xda381aed086f544bac66e73c071e158374cc105b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | 7 deployments: arbitrum [`0x431603...658832`](./contracts/arbitrum-42161/0x431603567ecbb4aa1ce5a4fdbe5554caea658832/); arbitrum `0x5a572b...ef24a6`; arbitrum `0xa59ef0...63167b`; arbitrum `0xaf8ced...aeeec2`; arbitrum `0xdad8a1...e26ec7`; arbitrum `0xe72e82...cbca92`; arbitrum `0xea281a...a3a75a` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a9316...6089d0`](./contracts/ethereum-1/0x2a93167ed63a31f35ca4788e2eb9fbd9fa6089d0/); ethereum `0xa87e2c...8dd2f5` | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://docs.cryptex.finance/assets/files/tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://docs.cryptex.finance/assets/files/tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |
| [SecurityAudits and protocol security.](https://www.cryptex.finance/security) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TCAP v2 Audit](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | 0 | n/a |
| [Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |
| [Core Audit](https://www.cryptex.finance/audits/Cryptex_-_Final_Report.pdf) | Unknown | Audit | 2021-04 | stale | Direct | contract_name | 6 | high |
| [Cryptex_-_Staking_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Staking_Report.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [Cryptex-security-review.md](https://github.com/pashov/audits/blob/master/team/md/Cryptex-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | 0 | n/a |
| [Cryptex-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Cryptex-security-review.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x52c64b...6b841b`](./contracts/arbitrum-42161/0x52c64b8998eb7c80b6f526e99e29abdcc86b841b/) | DSU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x874c5d...196d5b`](./contracts/ethereum-1/0x874c5d592afc6803c3dd60d6442357879f196d5b/) | GovernorBeta | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4fc1cc...301f30`](./contracts/arbitrum-42161/0x4fc1cc62e5d0b12f5a9e3213b4177d2edb301f30/) | SeasonalMerkleClaim | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=76

Zero-match audit list:

- [12956] Rendered PDF capture
- [12957] Rendered PDF capture
- [12958] SecurityAudits and protocol security.
- [12959] TCAP v2 Audit
- [12960] Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf
- [12963] Cryptex-security-review.md
- [12964] Cryptex-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
