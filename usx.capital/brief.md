# Agentic Audit Brief: USX.Capital

⚠️ Lifecycle status: DECLINING - TVL dropped 79.5% over 90 days

## Project Overview

- Project: USX.Capital (`usx.capital`)
- Website: [https://www.usx.capital/home](https://www.usx.capital/home)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T12:18:09.850Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-d9fc
- Chains: scroll
- Contract surface: 3 unique implementations (6 raw deployments)
- DeFi Llama TVL: $763,328.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

USX.Capital is a fully collateralized neodollar/stablecoin wrapper on Scroll. Public materials position USX as private, gasless, spendable in real life, and supporting staking and rewards. Morpho or Blend references should be treated as possible infrastructure dependencies unless directly documented as the user-facing USX protocol flow.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | scroll | 4 deployments: scroll [`0x3b005f...a4cf03`](./contracts/scroll-534352/0x3b005fefc63ca7c8d25ee21fba3787229ba4cf03/); scroll `0x9f3d4b...0e4c35`; scroll `0xcb14bc...c7f922`; scroll `0xd16909...f0d300` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | scroll | [`0xd39df2...e8a8ad`](./contracts/scroll-534352/0xd39df22a3cd1c91b22d5e748cc62b03ed3e8a8ad/) | ⚠️ Unaudited |
| SafeProxy | unknown | scroll | [`0xd09e95...848f65`](./contracts/scroll-534352/0xd09e956353fc641792a0f1a7d748773358848f65/) | ⚠️ Unaudited |

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
| [Blend (the yield infrastructure layer used by USX) has undergone 8 independent security audits by leading blockchain security firms. Find their complete audit reports here: <>](https://docs.blend.money/resources/audits) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11712] Blend (the yield infrastructure layer used by USX) has undergone 8 independent security audits by leading blockchain security firms. Find their complete audit reports here: <>

Fork inheritance lineage and inherited audits are included when available.
