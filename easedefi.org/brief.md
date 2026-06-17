# Agentic Audit Brief: Easedefi.org

## Project Overview

- Project: Easedefi.org (`easedefi.org`)
- Website: [https://easedefi.org](https://easedefi.org)
- Lifecycle: active (Tier 0, 71.8% below peak)
- Generated: 2026-06-17T07:00:52.834Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $3,607,399.18
- On-chain TVL (included contracts): $296,256.51
- TVL by chain: Ethereum $296,256.51

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

EaseDeFi is a DeFi coverage protocol on Ethereum offering multiple coverage and yield-related products, including stNXM underwriting, premium-free Uninsurance mutual coverage without traditional premium purchases, and in-development cross-asset yield vaults. The currently recorded contract surface covers only the OwnedUpgradeabilityProxy at 0x1337def1fc06783d4b03cb8c1bf3ebf7d0593fc4 with implementation 0xc38bfa29f70b3f0f40784d7861f1665e47f37f2e, and should not be treated as representing the entire current Ease protocol unless additional product contract addresses are verified.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 8 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: none
- Unverified dependencies: 2/11.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $296,256.51
- Latest audit: 2022-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GvToken | token | ethereum | unit-32021 | [`0xea5ede...ae1550`](./contracts/ethereum-1/0xea5edef1edb2f47b9637c029a6ac3b80a7ae1550/) | ⚠️ Unaudited |

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
| [Dedaub_RCA_Audit.pdf](https://github.com/EaseDeFi/Audits/blob/main/Dedaub_RCA_Audit.pdf) | Dedaub | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2584] Dedaub_RCA_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
