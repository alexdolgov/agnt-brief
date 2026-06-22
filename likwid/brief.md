# Agentic Audit Brief: Likwid

⚠️ Lifecycle status: UNKNOWN - TVL changed 625.7% over 90 days

## Project Overview

- Project: Likwid (`likwid`)
- Website: [https://likwid.fi](https://likwid.fi)
- Lifecycle: unknown (Tier 0, 21.9% below peak)
- Generated: 2026-06-21T06:52:15.119Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $52,661.52
- On-chain TVL (included contracts): $3,117.75
- TVL by chain: Bsc $3,117.75

## Project Description

Likwid is a DeFi derivatives protocol on BSC that enables users to manage leveraged positions, lending, and liquidity provision through a vault-based system. It offers structured products for margin trading, pair positions, and lending, all orchestrated by a central vault contract.

### Architecture

The LikwidVault serves as the core logic contract, coordinating user deposits and managing risk across the three position contracts (Margin, Pair, Lend). The LikwidHelper provides peripheral support functions, likely for calculations or data formatting, to assist the vault and position contracts.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/5 (80.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 80.0% (Sherlock)
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 4 | 80.0% | 2026-01 |
| unknown | Tier 2 | 4 | 80.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LikwidVault | core_logic | bsc | n/a | [`0x065d44...30e4ba`](./contracts/bsc-56/0x065d449ec9d139740343990b7e1cf05fa830e4ba/) | ✅ Audited |
| LikwidLendPosition | unknown | bsc | n/a | [`0xce91db...06618e`](./contracts/bsc-56/0xce91db5947228bba595c3cac49eb24053a06618e/) | ✅ Audited |
| LikwidMarginPosition | unknown | bsc | n/a | [`0x6bec0c...d7abe8`](./contracts/bsc-56/0x6bec0c1dc4898484b7f094566ddf8bc82ed7abe8/) | ✅ Audited |
| LikwidPairPosition | unknown | bsc | n/a | [`0xb397fe...e07bcd`](./contracts/bsc-56/0xb397fe16be79b082f17f1cd96e6489df19e07bcd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LikwidHelper | periphery | bsc | n/a | [`0x16a963...38d510`](./contracts/bsc-56/0x16a9633f8a777ca733073ea2526705cd8338d510/) | ⚠️ Unaudited |

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
| [2025_11_13_Zenith_Likwid_V2_2_Audit_Report.pdf](https://github.com/likwid-fi/likwid-margin/blob/main/audits/2025_11_13_Zenith_Likwid_V2_2_Audit_Report.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 4 | high |
| [2026_02_05_Sherlock_Likwid_V2_2_Audit_Report.pdf](https://github.com/likwid-fi/likwid-margin/blob/main/audits/2026_02_05_Sherlock_Likwid_V2_2_Audit_Report.pdf) | Sherlock | Contest | 2026-01 | fresh | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x16a963...38d510`](./contracts/bsc-56/0x16a9633f8a777ca733073ea2526705cd8338d510/) | LikwidHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
