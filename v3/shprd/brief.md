# Agentic Audit Brief: SHPRD

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SHPRD (`shprd`)
- Website: [https://shprd.finance](https://shprd.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $329,748.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SHPRD. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x36ce89c9ed0ec401305cf34b590dc2a24978fa68`, chain 56)
- UnnamedContract (`0x59e6d8eb72235fc964534e0e6283d93cd73e1f22`, chain 56)
- UnnamedContract (`0x939818efe9c0ddc6f9e4fadcea46fe0670a04c3a`, chain 56)
- UnnamedContract (`0xb7fcced2aae943f478ccf570c3c10872f4eb9f6d`, chain 56)
- UnnamedContract (`0xf0ee0b31aae29f0bea8ff806c101377fc92e4ffa`, chain 56)
- UnnamedContract (`0x04ee4821beea5073c519d443d2afc69a0202495d`, chain 42161)
- UnnamedContract (`0x36ce89c9ed0ec401305cf34b590dc2a24978fa68`, chain 42161)
- UnnamedContract (`0x59e6d8eb72235fc964534e0e6283d93cd73e1f22`, chain 42161)
- UnnamedContract (`0x939818efe9c0ddc6f9e4fadcea46fe0670a04c3a`, chain 42161)
- UnnamedContract (`0xb7fcced2aae943f478ccf570c3c10872f4eb9f6d`, chain 42161)
- UnnamedContract (`0xf0ee0b31aae29f0bea8ff806c101377fc92e4ffa`, chain 42161)
- ERC1967Proxy (`0x04ee4821beea5073c519d443d2afc69a0202495d`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 12 of 37 unique; 25 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 37
- Raw deployments: 37
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-392540 | `0x04ee4821beea5073c519d443d2afc69a0202495d` | ⚠️ Unaudited |
| ParseParaswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e6d8eb72235fc964534e0e6283d93cd73e1f22` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x551a3a68026c4ac28e69f12377ee079494ce1bc7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f79da0a14b4c13970c69db2dc961195d04891bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389ad765fd1c84f91de19ba88c9f3dd7182973a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e2dceed9ed476f01bb9a4703eb9f77d445d84cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75bcaa072f5d002ec7d125d7141c7db113ef707f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x939818efe9c0ddc6f9e4fadcea46fe0670a04c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7be177752a19014180dbea503f0ad48ac38dfaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7fcced2aae943f478ccf570c3c10872f4eb9f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ee0b31aae29f0bea8ff806c101377fc92e4ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14c4b935054b8d1017ad96c9a265eb7f8ecf13c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdf47eb815354412c11206c7faeca0f97a79f84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb7e0d7a6f60988aa2eb6861d32fddc90a94c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392535 | `0x36ce89c9ed0ec401305cf34b590dc2a24978fa68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ef3fbdeee3ef38e948b16393ab78efd7c12bec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a6f3ee1850ffc4f504facfb6aca67c8db5a3379` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392536 | `0x59e6d8eb72235fc964534e0e6283d93cd73e1f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73192dc47669f63c9bcebfb02a37e60be68ac20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75bcaa072f5d002ec7d125d7141c7db113ef707f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392537 | `0x939818efe9c0ddc6f9e4fadcea46fe0670a04c3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392538 | `0xb7fcced2aae943f478ccf570c3c10872f4eb9f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc23602364e565a85fd0640c5b4f0f95cc39eb0fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6bb55270b06160fad9ecc262ed3446ecedf1cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfdbfc6e07cbc4703f943d69b5a78f43d4392fe0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-392539 | `0xf0ee0b31aae29f0bea8ff806c101377fc92e4ffa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392529 | `0x04ee4821beea5073c519d443d2afc69a0202495d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cb7e0d7a6f60988aa2eb6861d32fddc90a94c1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392530 | `0x36ce89c9ed0ec401305cf34b590dc2a24978fa68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ef3fbdeee3ef38e948b16393ab78efd7c12bec3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392531 | `0x59e6d8eb72235fc964534e0e6283d93cd73e1f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75bcaa072f5d002ec7d125d7141c7db113ef707f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89241e8f00b431e7c6201240bccb147f80242f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392532 | `0x939818efe9c0ddc6f9e4fadcea46fe0670a04c3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392533 | `0xb7fcced2aae943f478ccf570c3c10872f4eb9f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6bb55270b06160fad9ecc262ed3446ecedf1cef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392534 | `0xf0ee0b31aae29f0bea8ff806c101377fc92e4ffa` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 23
- Live contracts: 0
- Unknown liveness contracts: 23
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=23

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x1f79da0a14b4c13970c69db2dc961195d04891bb` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x389ad765fd1c84f91de19ba88c9f3dd7182973a7` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x3e2dceed9ed476f01bb9a4703eb9f77d445d84cc` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x75bcaa072f5d002ec7d125d7141c7db113ef707f` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x939818efe9c0ddc6f9e4fadcea46fe0670a04c3a` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xb7be177752a19014180dbea503f0ad48ac38dfaa` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xb7fcced2aae943f478ccf570c3c10872f4eb9f6d` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xf0ee0b31aae29f0bea8ff806c101377fc92e4ffa` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xf14c4b935054b8d1017ad96c9a265eb7f8ecf13c` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xfdf47eb815354412c11206c7faeca0f97a79f84c` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x1cb7e0d7a6f60988aa2eb6861d32fddc90a94c1f` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x3ef3fbdeee3ef38e948b16393ab78efd7c12bec3` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x4a6f3ee1850ffc4f504facfb6aca67c8db5a3379` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x73192dc47669f63c9bcebfb02a37e60be68ac20b` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x75bcaa072f5d002ec7d125d7141c7db113ef707f` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xc23602364e565a85fd0640c5b4f0f95cc39eb0fd` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xd6bb55270b06160fad9ecc262ed3446ecedf1cef` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xdfdbfc6e07cbc4703f943d69b5a78f43d4392fe0` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x1cb7e0d7a6f60988aa2eb6861d32fddc90a94c1f` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x3ef3fbdeee3ef38e948b16393ab78efd7c12bec3` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x75bcaa072f5d002ec7d125d7141c7db113ef707f` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0x89241e8f00b431e7c6201240bccb147f80242f03` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |
| unverified unclassified | UnnamedContract<br>`0xd6bb55270b06160fad9ecc262ed3446ecedf1cef` | non_address_book | unknown | unknown | unverified | n/a | `0x768187bc1b378aef2cc43e87c6f1e15a6da3a7fe` |

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
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 34 |

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
