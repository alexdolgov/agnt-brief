# Agentic Audit Brief: Accountable

## Project Overview

- Project: Accountable (`accountable`)
- Website: [https://accountable.capital/](https://accountable.capital/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:57.981Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- DeFi Llama TVL: $404,307,089.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Uncollateralized Lending. Structurally: 17 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (reentrancyguardupgradeable, accountablestrategy, pausableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/17 (82.4%)
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/18
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 5 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 14 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 82.4% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 14 | 77.8% | 2026-01 |
| Quantstamp | Tier 2 | 9 | 50.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountableFixedTerm | unknown | ethereum | n/a | [`0x00e8fe8dc7e96dbc021b843ee8411f95c0890e4c`](./contracts/ethereum-1/0x00e8fe8dc7e96dbc021b843ee8411f95c0890e4c/) | ✅ Audited |
| AccountableOpenTerm | unknown | ethereum | n/a | [`0x616eca2310eb1a0bd620afbf916314f3702dd3b6`](./contracts/ethereum-1/0x616eca2310eb1a0bd620afbf916314f3702dd3b6/) | ✅ Audited |
| AccountableYield | unknown | ethereum | n/a | [`0x1e05bedb3ea09a145bae551ec93b49385ba689da`](./contracts/ethereum-1/0x1e05bedb3ea09a145bae551ec93b49385ba689da/) | ✅ Audited |
| AsyncVaultFactory | unknown | ethereum | n/a | [`0x859a15b7c2b4fd0641424342130f2b073a115dc4`](./contracts/ethereum-1/0x859a15b7c2b4fd0641424342130f2b073a115dc4/) | ✅ Audited |
| AtomicBatcher | unknown | ethereum | n/a | [`0x35c7171db2bd8164a36c3ae93ef9d4fb4cc08777`](./contracts/ethereum-1/0x35c7171db2bd8164a36c3ae93ef9d4fb4cc08777/) | ✅ Audited |
| DVNPublisherFactory | unknown | ethereum | n/a | [`0x0a2a9ecf70e6fec00a53d3ec000ac97f260d9f86`](./contracts/ethereum-1/0x0a2a9ecf70e6fec00a53d3ec000ac97f260d9f86/) | ✅ Audited |
| DVNPublisherFactory | unknown | ethereum | n/a | [`0x24c27ea8965c70670857e9ec9f18e9eab7607c42`](./contracts/ethereum-1/0x24c27ea8965c70670857e9ec9f18e9eab7607c42/) | ✅ Audited |
| EarlyExitOpenTerm | unknown | ethereum | n/a | [`0x66d6c3f32676a31f1b2e14f6bf6da9fc8d8e819c`](./contracts/ethereum-1/0x66d6c3f32676a31f1b2e14f6bf6da9fc8d8e819c/) | ✅ Audited |
| FeeManager | unknown | ethereum | n/a | [`0x0d2c8f073c354e5b1306be1a31c36158bbfc225b`](./contracts/ethereum-1/0x0d2c8f073c354e5b1306be1a31c36158bbfc225b/) | ✅ Audited |
| FixedTermFactory | unknown | ethereum | n/a | [`0x2a7f22f81a3d301b8f0eaf4f09a78558c91fc69a`](./contracts/ethereum-1/0x2a7f22f81a3d301b8f0eaf4f09a78558c91fc69a/) | ✅ Audited |
| GlobalRegistry | unknown | ethereum | n/a | [`0x6436e1f2edc981b69a3b0f396924cec01dc617af`](./contracts/ethereum-1/0x6436e1f2edc981b69a3b0f396924cec01dc617af/) | ✅ Audited |
| OpenTermFactory | unknown | ethereum | n/a | [`0x4927ce3402035b801a1beddc498b7fb2fe9ea181`](./contracts/ethereum-1/0x4927ce3402035b801a1beddc498b7fb2fe9ea181/) | ✅ Audited |
| RewardsFactory | unknown | ethereum | n/a | [`0xa0ae7ec6f93e55160f3f79840068549e8ca031ef`](./contracts/ethereum-1/0xa0ae7ec6f93e55160f3f79840068549e8ca031ef/) | ✅ Audited |
| YieldStrategyFactory | unknown | ethereum | n/a | [`0x9f1eb2be7b6a7e611c270bbdb0a3358786769518`](./contracts/ethereum-1/0x9f1eb2be7b6a7e611c270bbdb0a3358786769518/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EarlyExitModule | unknown | ethereum | n/a | [`0xc778f3a8bcdf9f8daee9d0e8508af83e90e9b1f9`](./contracts/ethereum-1/0xc778f3a8bcdf9f8daee9d0e8508af83e90e9b1f9/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x59b0b84371bb3261fad538c512efffc414cc1725`](./contracts/ethereum-1/0x59b0b84371bb3261fad538c512efffc414cc1725/) | ⚠️ Unaudited |
| HelloAccountable | unknown | ethereum | n/a | [`0x9e224e411ee0d7f30d3643d2cc8bf05198d7b3b9`](./contracts/ethereum-1/0x9e224e411ee0d7f30d3643d2cc8bf05198d7b3b9/) | ⚠️ Unaudited |
| HypernativePauseModule | unknown | ethereum | n/a | [`0x4e22a922002494e0f016e96289e946b9f32dcc07`](./contracts/ethereum-1/0x4e22a922002494e0f016e96289e946b9f32dcc07/) | ⚠️ Unaudited |

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
| [Accountable_Cyfrin_2025-10-16.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FN3QdwjHBJzlR6pAaE0Df%2FAccountable_Cyfrin_2025-10-16.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | 9 | high |
| [Accountable_Cyfrin_FV_2025-10-16.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2Fyfhc5ZX1wP4SN63N3RNG%2FAccountable_Cyfrin_FV_2025-10-16.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Accountable_Quantstamp_2025-10-28.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FI1lzu3fVUD8alRDbl00g%2FAccountable_Quantstamp_2025-10-28.pdf) | Quantstamp | Audit | 2025-10 | fresh | Direct | contract_name | 9 | high |
| [Accountable_Cyfrin_2026-01-23.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FJH8JekBJPbpro4UZLYy8%2FAccountable_Cyfrin_2026-01-23.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | 8 | high |
| [Accountable_Cyfrin_pr50_2026-01-30.pdf](https://3032054753-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3cULuVMEbQOmkynE1mju%2Fuploads%2FXRzqYVrIbUsdL6pomQzE%2FAccountable_Cyfrin_pr50_2026-01-30.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc778f3a8bcdf9f8daee9d0e8508af83e90e9b1f9`](./contracts/ethereum-1/0xc778f3a8bcdf9f8daee9d0e8508af83e90e9b1f9/) | EarlyExitModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e224e411ee0d7f30d3643d2cc8bf05198d7b3b9`](./contracts/ethereum-1/0x9e224e411ee0d7f30d3643d2cc8bf05198d7b3b9/) | HelloAccountable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e22a922002494e0f016e96289e946b9f32dcc07`](./contracts/ethereum-1/0x4e22a922002494e0f016e96289e946b9f32dcc07/) | HypernativePauseModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=35

Zero-match audit list:

- [19393] Accountable_Cyfrin_FV_2025-10-16.pdf

Fork inheritance lineage and inherited audits are included when available.
