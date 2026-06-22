# Agentic Audit Brief: Hectagon

⚠️ Lifecycle status: DEAD - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Hectagon (`hectagon`)
- Website: [https://www.hectagon.finance](https://www.hectagon.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T17:34:16.051Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $0.49
- On-chain TVL (included contracts): $112,925.24
- TVL by chain: Bsc $112,925.24

## Project Description

Hectagon is a DeFi protocol on BSC that provides a suite of tokens (HECTA, gHECTA, pHECTA, tHECTA) and a treasury, likely enabling staking, governance, and liquidity provision through a PancakeSwap pool.

### Architecture

The HECTA token is the core asset, with gHECTA used for governance, pHECTA and tHECTA as staking derivatives, and the Treasury managing protocol funds. The PancakeSwap pool provides liquidity for HECTA/BUSD trading, linking the token to the broader market.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 19 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/27.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $112,925.24
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $112,925.24 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HectagonERC20Token | token | bsc | n/a | [`0x343915...6f60ee`](./contracts/bsc-56/0x343915085b919fbd4414f7046f903d194c6f60ee/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | [`0xe9e7ce...087d56`](./contracts/bsc-56/0xe9e7cea3dedca5984780bafc599bd69add087d56/) | ⚠️ Unaudited |
| GovernanceHectagon | unknown | bsc | n/a | [`0x7d31ed...fa9b0d`](./contracts/bsc-56/0x7d31ed03c2442f9ffc4f22d90772ee1f32fa9b0d/) | ⚠️ Unaudited |
| HectagonBondDepository | unknown | bsc | n/a | [`0x9ae390...eeebcf`](./contracts/bsc-56/0x9ae390630eb2e60999e5065267b02f477beeebcf/) | ⚠️ Unaudited |
| HectagonTreasury | operational_periphery | bsc | n/a | [`0x4059c4...aba4fb`](./contracts/bsc-56/0x4059c4a0b8a2b528c4f2e101a3bb8fb169aba4fb/) | ⚠️ Unaudited |
| PHecta | unknown | bsc | n/a | [`0x332182...48bf15`](./contracts/bsc-56/0x33218297d315fc70e1520e292ca88348b648bf15/) | ⚠️ Unaudited |

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
| [audit_hectagon_20220803.pdf](https://github.com/DAudit/Smart-Contract-Audits/blob/main/audit_hectagon_20220803.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x343915...6f60ee`](./contracts/bsc-56/0x343915085b919fbd4414f7046f903d194c6f60ee/) | HectagonERC20Token | token | $112,925.24 | Verified native implementation with $112,925.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7d31ed...fa9b0d`](./contracts/bsc-56/0x7d31ed03c2442f9ffc4f22d90772ee1f32fa9b0d/) | GovernanceHectagon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9ae390...eeebcf`](./contracts/bsc-56/0x9ae390630eb2e60999e5065267b02f477beeebcf/) | HectagonBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4059c4...aba4fb`](./contracts/bsc-56/0x4059c4a0b8a2b528c4f2e101a3bb8fb169aba4fb/) | HectagonTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x332182...48bf15`](./contracts/bsc-56/0x33218297d315fc70e1520e292ca88348b648bf15/) | PHecta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13225] audit_hectagon_20220803.pdf

Fork inheritance lineage and inherited audits are included when available.
