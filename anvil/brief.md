# Agentic Audit Brief: Anvil

⚠️ Lifecycle status: DECLINING - TVL dropped 52.6% over 90 days

## Project Overview

- Project: Anvil (`anvil`)
- Website: [https://anvil.xyz/](https://anvil.xyz/)
- Lifecycle: declining (Tier 0, 83.3% below peak)
- Generated: 2026-06-17T07:00:49.007Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $11,196,966.19
- On-chain TVL (included contracts): $672,999.95
- TVL by chain: Ethereum $672,999.95

## Project Description

Anvil is a collateral-management protocol for fully backed credit and letter-of-credit guarantees. It enables users to deposit collateral into vaults and issue letters of credit or credit guarantees backed by that collateral, rather than operating primarily as an overcollateralized lending market.

### Architecture

The CollateralVault holds user deposits and interacts with TimeBasedCollateralPool for time-locked collateral management, while the LetterOfCredit contract issues credit instruments backed by the vault's collateral.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 3 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 2 aging, 1 stale, 0 unknown
- Tier 1 coverage: 100.0% (OpenZeppelin, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 2 | 100.0% | 2025-10 |
| Trail of Bits | Tier 1 | 1 | 50.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralVault | core_logic | ethereum | n/a | [`0x5d2725...1d675f`](./contracts/ethereum-1/0x5d2725fde4d7aa3388da4519ac0449cc031d675f/) | ✅ Audited |
| LetterOfCredit | unknown | ethereum | unit-18768 | [`0x14db9a...7c4808`](./contracts/ethereum-1/0x14db9a91933ad9433e1a0db04d08e5d9ef7c4808/) | ✅ Audited |

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
| [<>\](https://www.openzeppelin.com/news/anvil-protocol-diff-audit) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [<>](https://www.openzeppelin.com/news/anvil-protocol-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [<>](https://github.com/trailofbits/publications/blob/master/reviews/2023-12-acronym-foundation-securityreview.pdf) | Trail of Bits | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [[](< https://blog.openzeppelin.com/anvil-audit>)](https://www.openzeppelin.com/news/anvil-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=10

Zero-match audit list:

- [1947] <>\

Fork inheritance lineage and inherited audits are included when available.
