# Agentic Audit Brief: EtherFlip

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

- Project: EtherFlip (`etherflip`)
- Website: [https://www.etherflip.co/](https://www.etherflip.co/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,179,503.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EtherFlip. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc997d07b0bc607b6d1bcb6fb9d4a5579c466c3e5`, chain 1)
- UnnamedContract (`0xe5a04d98538231b0fab9aba60cd73ce4ff3039df`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 9 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 12 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 12
- Raw deployments: 12
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-385028 | `0xc997d07b0bc607b6d1bcb6fb9d4a5579c466c3e5` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-385029 | `0xe5a04d98538231b0fab9aba60cd73ce4ff3039df` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2948002e609e5b5e286b91f1d47bb924c4274b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3023d5ee05ebee74b61f940433b7783eac1f221e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-385027 | `0x37f014c64d186eaf879c0033846b51924ce42584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9680f1ef75693f22de279c1fb35067fc15e2fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d8f22d45e40f34cb7c10799f31246f134e9b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61968339a34c727c1887040a16fe7d715f4667ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72af5c4933a77866aaaf097433412ebb786c938d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8350ca1577f9e62d27a54ec59328548c4c1706fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5d894237a8af64812953b1aee9e34f70800ce94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc08dd84a66775e6236e0a80ee2f340e0042f8c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 9
- Live contracts: 0
- Unknown liveness contracts: 9
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=9

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x2948002e609e5b5e286b91f1d47bb924c4274b69` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3023d5ee05ebee74b61f940433b7783eac1f221e` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c9680f1ef75693f22de279c1fb35067fc15e2fa` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48d8f22d45e40f34cb7c10799f31246f134e9b7f` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61968339a34c727c1887040a16fe7d715f4667ac` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72af5c4933a77866aaaf097433412ebb786c938d` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8350ca1577f9e62d27a54ec59328548c4c1706fc` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5d894237a8af64812953b1aee9e34f70800ce94` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xffc08dd84a66775e6236e0a80ee2f340e0042f8c` | non_address_book | unknown | unknown | unverified | n/a | `0x165c74e3954817d007a2038bac8eaaed87c982fa` |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

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
