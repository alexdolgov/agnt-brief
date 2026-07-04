# Agentic Audit Brief: eggs-finance

## Project Overview

- Project: eggs-finance (`eggs-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.348Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: sonic
- Contract surface: 4 unique implementations (4 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 25.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 25.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EGGS | unknown | sonic | n/a | [`0xf26ff7...f019bc`](./contracts/sonic-146/0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeDistributor | unknown | sonic | n/a | [`0x91f2dd...2d6f58`](./contracts/sonic-146/0x91f2dd4370759161b19e5299cace0b135f2d6f58/) | ⚠️ Unaudited |
| FeeFix | unknown | sonic | n/a | [`0xec44aa...da0e8b`](./contracts/sonic-146/0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b/) | ⚠️ Unaudited |
| FixOwnerEggs | unknown | sonic | n/a | [`0xfb8e17...52695a`](./contracts/sonic-146/0xfb8e178b8b606da5de7417f476472c695a52695a/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://3389746960-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F6XOTuBliZWmYNBrB0hJ2%2Fuploads%2FPn7K6x03sBCWbvFGuZsN%2Freport-cantinacode-eggs-0130-2.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 1 | medium |
| [Rendered PDF capture](https://3389746960-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F6XOTuBliZWmYNBrB0hJ2%2Fuploads%2FmanYR0GHiWA6R2yR6bku%2Freport-cantinacode-eggs-0716.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [- [Audits]()](https://eggs-finance.gitbook.io/docs/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x91f2dd...2d6f58`](./contracts/sonic-146/0x91f2dd4370759161b19e5299cace0b135f2d6f58/) | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xec44aa...da0e8b`](./contracts/sonic-146/0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b/) | FeeFix | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfb8e17...52695a`](./contracts/sonic-146/0xfb8e178b8b606da5de7417f476472c695a52695a/) | FixOwnerEggs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: medium=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [19721] Rendered PDF capture
- [19724] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
