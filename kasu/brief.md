# Agentic Audit Brief: Kasu

## Project Overview

- Project: Kasu (`kasu`)
- Website: [https://kasu.finance/](https://kasu.finance/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:45.325Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base
- Contract surface: 4 unique implementations (6 raw deployments)
- DeFi Llama TVL: $10,553,837.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Kasu is a multi-chain real-world asset (RWA) and private-credit lending protocol with TVL on Base and XDC. It enables users to deposit funds into lending pools and earn yield from off-chain credit facilities, with loan origination, clearing, and rewards managed through upgradeable smart contracts. The currently captured contract surface appears to cover Base deployments only; XDC and any other chain deployments should be treated as out of scope unless separately indexed.

### Architecture

All contracts belong to a single product family and share infrastructure through the KasuController, which likely governs access and configuration. The LendingPoolFactory deploys LendingPool and LendingPoolTranche instances, while the ClearingCoordinator and AcceptedRequestsCalculation handle loan settlement, and the KSU token with its locking and bonus contracts manages incentives.

## Contract Surface Quality

- Indexed contracts: 61; live-surface contracts included: 6 (2 live, 4 unknown).
- Excluded by liveness: 28 inactive, 27 singleton, 0 uninitialized.
- Deployment units: 2/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/4 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 6
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 4 | 100.0% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeManager | governance | base | unit-27450 | [`0xef956c...39b6b9`](./contracts/base-8453/0xef956c2193e032609da84bec5e5251b28939b6b9/) | ✅ Audited |
| LendingPoolTranche | core_logic | base | unit-27442 (2 proxies) | 2 deployments: base [`0x94a699...00f3f9`](./contracts/base-8453/0x94a699a93519bef708b5be69914436363100f3f9/); base `0xa2e999...4fb1d0` | ✅ Audited |
| PendingPool | core_logic | base | unit-27432 (2 proxies) | 2 deployments: base [`0x080238...e05e1d`](./contracts/base-8453/0x08023888ffb36f007679d1ec64a4f22f54e05e1d/); base `0x6ecd74...c8e2e0` | ✅ Audited |
| UserManager | governance | base | unit-27437 | [`0x5dc8d3...3c93f3`](./contracts/base-8453/0x5dc8d315a80fd99abef0f327b9a52a3fbc3c93f3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Kasu_0xCommit.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_0xCommit.pdf) | 0xCommit | Audit | 2024-06 | stale | Direct | contract_name | 0 | n/a |
| [Kasu_ChainSecurity.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_ChainSecurity.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=56

Zero-match audit list:

- [12482] Kasu_0xCommit.pdf

Fork inheritance lineage and inherited audits are included when available.
