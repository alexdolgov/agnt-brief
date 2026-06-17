# Agentic Audit Brief: DAO Maker

⚠️ Lifecycle status: DECLINING - TVL changed 0.2% over 90 days

## Project Overview

- Project: DAO Maker (`dao-maker`)
- Website: [https://daomaker.com/](https://daomaker.com/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:40.386Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $1,526,441.00
- On-chain TVL (included contracts): $9,341,771.08
- TVL by chain: Ethereum $9,341,771.08

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

DAO Maker is a launchpad, fundraising, and growth-platform ecosystem for crypto projects, with user-facing products that include token launches, airdrops, vesting, staking, farms, vaults, and DAO Swap. Vesting and token distribution are product components rather than the full scope of the protocol.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 1/7.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,341,771.08
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 7 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $9,341,771.08 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | ethereum | n/a | [`0x0f51bb...6b09ad`](./contracts/ethereum-1/0x0f51bb10119727a7e5ea3538074fb341f56b09ad/) | ⚠️ Unaudited |
| DAOFarm | unknown | bsc | n/a | [`0x598ca7...a22781`](./contracts/bsc-56/0x598ca79eee092a084b5f168c4196edb80ea22781/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xd07e86...d6a847`](./contracts/ethereum-1/0xd07e86f68c7b9f9b215a3ca3e79e74bf94d6a847/) | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/file/d/18Anm53T_BbcRQLWHMthkQgvtLC6CDGW0/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1LCgxsQCz7vCDKK1AFxsInpKkVt_1q3q1/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1OpTWnZmhKu04kKYgFx89Nrh2Y68mhlv_/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1v78FH681imjrnXzjc4Ci_F4bW8oI19q5/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/17qQwtqSe6uqLKfKYgLQHGc4GyImVx3iM/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/17AwrRDy7Fh8wEjOIAQr3R-oqLWeYC_DD/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://drive.google.com/file/d/1OPanooD8QD13kOx210QTz19RyS8yTj80/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0f51bb...6b09ad`](./contracts/ethereum-1/0x0f51bb10119727a7e5ea3538074fb341f56b09ad/) | Token | token | $9,341,771.08 | Verified native implementation with $9,341,771.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x598ca7...a22781`](./contracts/bsc-56/0x598ca79eee092a084b5f168c4196edb80ea22781/) | DAOFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd07e86...d6a847`](./contracts/ethereum-1/0xd07e86f68c7b9f9b215a3ca3e79e74bf94d6a847/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2919] DL audit link
- [2920] DL audit link
- [2921] DL audit link
- [2922] DL audit link
- [2923] DL audit link
- [2924] DL audit link
- [2925] DL audit link

Fork inheritance lineage and inherited audits are included when available.
