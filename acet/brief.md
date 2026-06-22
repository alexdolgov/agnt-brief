# Agentic Audit Brief: ACET

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: ACET (`acet`)
- Website: [https://acet.finance/](https://acet.finance/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T22:47:26.879Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc
- Contract surface: 8 unique implementations (11 raw deployments)
- DeFi Llama TVL: $12,019.32
- On-chain TVL (included contracts): $2,535,477.19
- TVL by chain: Bsc $2,535,477.19

## Project Description

ACET is a yield farming protocol on BSC that allows users to stake liquidity pool tokens and earn ACET token rewards. It provides farming pools for various LP tokens and a native ACET token for rewards.

### Architecture

The ACET family of farm contracts distributes rewards in the AcetToken from the FINAL FARM family. The Pool contracts likely represent the staking pools, while the FarmV4 and FarmV2Transition contracts manage reward distribution and migration.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 15; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/8 (37.5%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 11
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 37.5% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcetToken | token | bsc | n/a | [`0x9f3bcb...6ac31d`](./contracts/bsc-56/0x9f3bcbe48e8b754f331dfc694a894e8e686ac31d/) | ✅ Audited |
| Pool | core_logic | bsc | n/a | 3 deployments: bsc [`0x38506a...0907d7`](./contracts/bsc-56/0x38506a479e8959150466ce9253c19089fd0907d7/); bsc `0x64d2c3...215c0b`; bsc `0x76c058...61435b` | ✅ Audited |
| AcetAdaptor | unknown | bsc | n/a | [`0x263044...3d0b5c`](./contracts/bsc-56/0x26304442cd46cb3cee1a83a48f400ef43a3d0b5c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FarmLPV4 | unknown | bsc | n/a | 2 deployments: bsc [`0xdf30ec...7d7afc`](./contracts/bsc-56/0xdf30ecf05819f3012ced359dc8295a4e157d7afc/); bsc `0xfd7f86...c672e9` | ⚠️ Unaudited |
| FarmV2Transition | unknown | bsc | n/a | [`0xffa1e8...2a5183`](./contracts/bsc-56/0xffa1e8053b4572aebdeae4d81c0d4a312e2a5183/) | ⚠️ Unaudited |
| FarmV4Primary | unknown | bsc | n/a | [`0x7a5974...c58d47`](./contracts/bsc-56/0x7a59746105bb10736926a0042a629a5163c58d47/) | ⚠️ Unaudited |
| MintReserve | unknown | bsc | n/a | [`0x588148...3907d6`](./contracts/bsc-56/0x5881480b48d993c729f9975cb250669dac3907d6/) | ⚠️ Unaudited |
| SwapToFarm | unknown | bsc | n/a | [`0x207af2...bdb1cb`](./contracts/bsc-56/0x207af22bee1ae437574b201433d6389554bdb1cb/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Acet-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Acet-v1.0.pdf) | PeckShield | Audit | 2021-10 | stale | Direct | contract_name | 5 | high |
| [www.certik.com/projects/acet-finance](https://skynet.certik.com/projects/acet-finance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xdf30ec...7d7afc`](./contracts/bsc-56/0xdf30ecf05819f3012ced359dc8295a4e157d7afc/) | FarmLPV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xffa1e8...2a5183`](./contracts/bsc-56/0xffa1e8053b4572aebdeae4d81c0d4a312e2a5183/) | FarmV2Transition | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a5974...c58d47`](./contracts/bsc-56/0x7a59746105bb10736926a0042a629a5163c58d47/) | FarmV4Primary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x588148...3907d6`](./contracts/bsc-56/0x5881480b48d993c729f9975cb250669dac3907d6/) | MintReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x207af2...bdb1cb`](./contracts/bsc-56/0x207af22bee1ae437574b201433d6389554bdb1cb/) | SwapToFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=6

Zero-match audit list:

- [12620] www.certik.com/projects/acet-finance

Fork inheritance lineage and inherited audits are included when available.
