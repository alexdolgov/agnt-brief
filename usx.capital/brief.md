# Agentic Audit Brief: USX.Capital

⚠️ Lifecycle status: DECLINING - TVL dropped 79.5% over 90 days

## Project Overview

- Project: USX.Capital (`usx.capital`)
- Website: [https://www.usx.capital/home](https://www.usx.capital/home)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-31T11:29:10.256Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: scroll
- Contract surface: 4 unique implementations (7 raw deployments)
- DeFi Llama TVL: $1,311,040.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

USX.Capital is a stablecoin wrapper protocol on Scroll that integrates with Morpho lending markets. It likely enables users to deposit assets into Morpho vaults and receive a wrapped stablecoin representation, enhancing capital efficiency and composability.

### Architecture

The USX.Capital family relies on the Morpho and MetaMorpho contracts for underlying lending market interactions, while the SafeProxy provides governance control. The singleton proxy in the Smart Contract Addresses family likely acts as a central address lookup for the protocol's contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 7
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | scroll | 4 deployments: scroll [`0x3b005f...a4cf03`](./contracts/scroll-534352/0x3b005fefc63ca7c8d25ee21fba3787229ba4cf03/); scroll `0x9f3d4b...0e4c35`; scroll `0xcb14bc...c7f922`; scroll `0xd16909...f0d300` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | scroll | [`0xd39df2...e8a8ad`](./contracts/scroll-534352/0xd39df22a3cd1c91b22d5e748cc62b03ed3e8a8ad/) | ⚠️ Unaudited |
| Morpho | unknown | scroll | [`0x2d012e...df5a55`](./contracts/scroll-534352/0x2d012edbadc37edc2bc62791b666f9193fdf5a55/) | ⚠️ Unaudited |
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
| upstream | 2 |
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

- [2981] Blend (the yield infrastructure layer used by USX) has undergone 8 independent security audits by leading blockchain security firms. Find their complete audit reports here: <>

Fork inheritance lineage and inherited audits are included when available.
