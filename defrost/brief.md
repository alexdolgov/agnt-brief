# Agentic Audit Brief: Defrost

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Defrost (`defrost`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-21T07:59:40.323Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: avalanche
- Contract surface: 5 unique implementations (6 raw deployments)
- DeFi Llama TVL: $81,452.57
- On-chain TVL (included contracts): $193,494.12
- TVL by chain: Avalanche $193,494.12

## Project Description

Defrost is a CDP (Collateralized Debt Position) protocol on Avalanche that allows users to deposit collateral and mint a stablecoin. It also includes a savings contract for earning yield on the stablecoin.

### Architecture

The leverageFactory likely manages the creation and configuration of CDP positions, while DefrostToken is the stablecoin minted against collateral. smeltSavings provides a yield-bearing savings account for the stablecoin, integrating with the core CDP system.

## Contract Surface Quality

- Indexed contracts: 232; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 226 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/96.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $193,494.12
- Latest audit: 2021-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $193,494.12 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| superQiErc20 | token | avalanche | n/a | 2 deployments: avalanche [`0x9ecf78...39b3e7`](./contracts/avalanche-43114/0x9ecf784db7ac647255259ed713bb971f9439b3e7/); avalanche `0xa4562e...aa49b3` | ⚠️ Unaudited |
| DefrostToken | token | avalanche | n/a | [`0x47eb6f...b1241d`](./contracts/avalanche-43114/0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d/) | ⚠️ Unaudited |
| lendingSwitchAVAX | core_logic | avalanche | n/a | [`0xeaf085...a666b4`](./contracts/avalanche-43114/0xeaf08577952177c13b739475a02fb48eb4a666b4/) | ⚠️ Unaudited |
| superPangolinPairV2 | unknown | avalanche | n/a | [`0x85489a...a91751`](./contracts/avalanche-43114/0x85489a5b2ea0149d31a20c0b482da68023a91751/) | ⚠️ Unaudited |
| superStakeDaoV2 | unknown | avalanche | n/a | [`0xae413e...9faa61`](./contracts/avalanche-43114/0xae413e7ea4aefbee3b97be3bd5611b2c709faa61/) | ⚠️ Unaudited |

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
| [REP-Defrost-Finance-2021-11-10.pdf](https://github.com/DefrostFinance/Audit-Reports/blob/main/REP-Defrost-Finance-2021-11-10.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x9ecf78...39b3e7`](./contracts/avalanche-43114/0x9ecf784db7ac647255259ed713bb971f9439b3e7/) | superQiErc20 | token | $174,969.07 | Verified native implementation with $174,969.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x47eb6f...b1241d`](./contracts/avalanche-43114/0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d/) | DefrostToken | token | $18,525.00 | Verified native implementation with $18,525.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xeaf085...a666b4`](./contracts/avalanche-43114/0xeaf08577952177c13b739475a02fb48eb4a666b4/) | lendingSwitchAVAX | core_logic | $0.05 | Verified native implementation with $0.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [13005] REP-Defrost-Finance-2021-11-10.pdf

Fork inheritance lineage and inherited audits are included when available.
