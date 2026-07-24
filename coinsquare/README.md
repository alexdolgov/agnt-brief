# Agentic Audit Brief: Coinsquare

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Coinsquare (`coinsquare`)
- Website: [https://coinsquare.com](https://coinsquare.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $10,315,028.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Coinsquare in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GeneScience | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-129666 | `0xf97e0a5b616dffc913e72455fde9ea8bbe946a2b` | ⚠️ Unaudited |
| KittyCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-129658 | `0x06012c8cf97bead5deae237070f9587f8e7a266d` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-129660 | `0x08ea78fb540fe5361afd39a6b421a0662e141751` | ⚠️ Unaudited |
| SaleClockAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-129664 | `0x7163cd869f445a0fe0c5049a979c9e27b589a9e5` | ⚠️ Unaudited |
| SiringClockAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-129663 | `0x6b5a1ed9e51448c1c76dc4ddf24e243d402c4aac` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091c7dec9cd4a0946f75bcc8f3c00e49afa1b9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129e0f1ea3afe3e132e980f377b6154f87464154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2ab86b39409ac6b812fe2c05b95b90baad795e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43354d2e52bd525ac5d1234caf93351a7ce0a26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5164310cbec85f13dd3df8d7ffe35f45a085d764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5296e8579adf7d11a7663996cd95d9dc14f4290d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x795275585f84a5a6426b58109b9fd5f011a36a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c73364878f50f0f8d54cb8795aef1786b8de419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84c902e127827a541a0e483aa4772ac77a576cf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86f6e550f86571841a9e7b53bf7973cb1c52409d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2c1eb5ca6e7983cfa27de94ba49661cb8f428e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2631610c7d301ec1d2017485172edab1a9b277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x984976f6aca045057cc2a9de3d86a6b6d8aea346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a46c20544791cce7551d159ec4e56e857183cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e3acbbe7b6145a758511bb2347791f165e5a1d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb12c6832c1d224ee9219260df38a8ffcd7b605d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1690c08e213a35ed9bab7b318de14420fb57d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7af99fe5513eb6710e6d5f44f9989da40f27f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c0a62a104fe7ad0f5c86530697840e2ecb5303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc147a1a8fa4414c6a2ce53a64dbf48964924319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed16dbd28cb25b79695624d6a54ecefdab3eb43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe56c34d4cbbc7ab18edbf7c514b9db2c2e1d883` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 22
- Live contracts: 0
- Unknown liveness contracts: 22
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=22

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x091c7dec9cd4a0946f75bcc8f3c00e49afa1b9a2` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x129e0f1ea3afe3e132e980f377b6154f87464154` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b2ab86b39409ac6b812fe2c05b95b90baad795e` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43354d2e52bd525ac5d1234caf93351a7ce0a26b` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5164310cbec85f13dd3df8d7ffe35f45a085d764` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5296e8579adf7d11a7663996cd95d9dc14f4290d` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x795275585f84a5a6426b58109b9fd5f011a36a86` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c73364878f50f0f8d54cb8795aef1786b8de419` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84c902e127827a541a0e483aa4772ac77a576cf8` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86f6e550f86571841a9e7b53bf7973cb1c52409d` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e2c1eb5ca6e7983cfa27de94ba49661cb8f428e` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f2631610c7d301ec1d2017485172edab1a9b277` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x984976f6aca045057cc2a9de3d86a6b6d8aea346` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98a46c20544791cce7551d159ec4e56e857183cf` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e3acbbe7b6145a758511bb2347791f165e5a1d8` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb12c6832c1d224ee9219260df38a8ffcd7b605d7` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1690c08e213a35ed9bab7b318de14420fb57d8c` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc7af99fe5513eb6710e6d5f44f9989da40f27f26` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8c0a62a104fe7ad0f5c86530697840e2ecb5303` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc147a1a8fa4414c6a2ce53a64dbf48964924319` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed16dbd28cb25b79695624d6a54ecefdab3eb43b` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe56c34d4cbbc7ab18edbf7c514b9db2c2e1d883` | non_address_book | unknown | unknown | unverified | n/a | `0xba52c75764d6f594735dc735be7f1830cdf58ddf` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
