# Agentic Audit Brief: Nsure

## Project Overview

- Project: Nsure (`nsure`)
- Website: [https://nsure.network/](https://nsure.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.834Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $160,116.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 9 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 9 contract(s).

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/9 (77.8%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/9
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 7 | 77.8% | 2021-02 |
| Beijing ChainsGuard Technology (ChainsGuard / 北京链安) | Tier 2 | 4 | 44.4% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Buy | unknown | ethereum | n/a | [`0x702aff99b08e8891fc70811174701fb7407b4477`](./contracts/ethereum-1/0x702aff99b08e8891fc70811174701fb7407b4477/) | ✅ Audited |
| CapitalConverter | unknown | ethereum | n/a | [`0xa6b658ce4b1cdb4e7d8f97dffb549b8688cafb84`](./contracts/ethereum-1/0xa6b658ce4b1cdb4e7d8f97dffb549b8688cafb84/) | ✅ Audited |
| CapitalStake | unknown | ethereum | n/a | [`0xb98ed9800fcd2982d26cf0e4a6b53c96bbeff6a6`](./contracts/ethereum-1/0xb98ed9800fcd2982d26cf0e4a6b53c96bbeff6a6/) | ✅ Audited |
| ClaimPurchaseMint | unknown | ethereum | n/a | [`0x200db99fe5c0f39688853d4c4d8651648d995b26`](./contracts/ethereum-1/0x200db99fe5c0f39688853d4c4d8651648d995b26/) | ✅ Audited |
| Product | unknown | ethereum | n/a | [`0x06e76c5c53775681f0626600d6266901a03141a8`](./contracts/ethereum-1/0x06e76c5c53775681f0626600d6266901a03141a8/) | ✅ Audited |
| Surplus | unknown | ethereum | n/a | [`0x80e711b29e46d430ff1553eb2ada670e2a25593c`](./contracts/ethereum-1/0x80e711b29e46d430ff1553eb2ada670e2a25593c/) | ✅ Audited |
| Treasury | unknown | ethereum | n/a | [`0xfd0d28539aed12477dcba1575eb40fca53969440`](./contracts/ethereum-1/0xfd0d28539aed12477dcba1575eb40fca53969440/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Nsure | unknown | ethereum | n/a | [`0x20945ca1df56d237fd40036d47e866c7dccd2114`](./contracts/ethereum-1/0x20945ca1df56d237fd40036d47e866c7dccd2114/) | ⚠️ Unaudited |
| Underwriting | unknown | ethereum | n/a | [`0x1a66f065303299d78693f122c800ab3debe9c966`](./contracts/ethereum-1/0x1a66f065303299d78693f122c800ab3debe9c966/) | ⚠️ Unaudited |

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
| [CertiK-Final-Report-For-Nsure.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/nsure-tech/core-contracts/master/Audit%20Reports/CertiK-Final-Report-For-Nsure.pdf) | CertiK | Audit | 2021-02 | stale | Direct | contract_name | 7 | high |
| [Nsure Network-Smart-Contract-Audit-Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/nsure-tech/core-contracts/master/Audit%20Reports/Nsure%20Network-Smart-Contract-Audit-Report.pdf) | Beijing ChainsGuard Technology (ChainsGuard / 北京链安) | Audit | 2021-03 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x20945ca1df56d237fd40036d47e866c7dccd2114`](./contracts/ethereum-1/0x20945ca1df56d237fd40036d47e866c7dccd2114/) | Nsure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a66f065303299d78693f122c800ab3debe9c966`](./contracts/ethereum-1/0x1a66f065303299d78693f122c800ab3debe9c966/) | Underwriting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=22

Fork inheritance lineage and inherited audits are included when available.
