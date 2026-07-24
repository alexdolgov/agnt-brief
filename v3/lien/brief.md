# Agentic Audit Brief: Lien

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

- Project: Lien (`lien`)
- Website: [https://lien.finance/](https://lien.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 28 unique implementations (28 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $132,464.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Lien in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 28
- Raw deployments: 28
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149687 | `0x075e0a8623d42e8a3b99409b4e18a1bd82c6e5c4` | ⚠️ Unaudited |
| BondMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149697 | `0xacdc94b9f187fa7ee3c5cf0969c2faccab4e37a3` | ⚠️ Unaudited |
| BondTokenName | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149688 | `0x0b06dada89d0df1c9162c97009af56509caeed72` | ⚠️ Unaudited |
| DecentralizedOTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149694 | `0x858dbdff0dee9dfc21d3413245cc0f349ec1b0c7` | ⚠️ Unaudited |
| FlattenStableCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149699 | `0xdb4f5bc7d37816537e8af48c885ef28f366ad782` | ⚠️ Unaudited |
| IDOLvsETHBoxExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149695 | `0x8e0ae5254dc4c6f89ef9a4079096958f787c7d5d` | ⚠️ Unaudited |
| LBTExchangeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149693 | `0x662dd92acb050e677fdd1d458ccace9f8d847749` | ⚠️ Unaudited |
| LBTPricing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149690 | `0x1f760ad8fef7843f5e5e3d085b71ceaa6f60772b` | ⚠️ Unaudited |
| LienBoxExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149692 | `0x31dcf50fa6c21f189a7953ce84387f50b77cf690` | ⚠️ Unaudited |
| LienToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149696 | `0xab37e1358b639fd877f015027bb62d3ddaa7557e` | ⚠️ Unaudited |
| MarketOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149689 | `0x120a078fdc516a1a98bbecb9e961f8741ac7ac82` | ⚠️ Unaudited |
| PriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149700 | `0xe9aa04b8d955fd291d44c9fdb8eb1227850b3e2d` | ⚠️ Unaudited |
| SpreadCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149698 | `0xc05cb1999ab97a9ae5337fbdc4cb0e1458bc5cbf` | ⚠️ Unaudited |
| TrustedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-149691 | `0x27bb7c9c06c8e5c886685df31da4b094756e9d39` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0541302b14b923c3c5f6e1377a4181790b3e6076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23604be26047cf57ef37e5b3a4f5c6f5c5c057b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e823df11e1b031469d4927de04d0f050a64d696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32e85c00caf25f8217315d711e026f4dbaa45e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4600fa6bbb6561d2e27f43ffcb6fbe9715a262a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a248d3cc5ec909a38960382a649cf98a80d881a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7783759eb985e88927c2a100636a0596351efd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4b79a7567de997da10f66e340b00a80177e66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c5d55418586d1ad5aed77978631d952e6e589d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9efc7e873a21705d8696a243ef58d360f077b52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd0c1a873bb3553a674afa935c941836c35ef5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfcb98f28f80b6f9daaa4e44eb0e689f26675135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1202b0732a04b33c6c37ae853f1929ca3221915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeff3d60b57165f19922effbd6227fb8a2f27714e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 14
- Live contracts: 0
- Unknown liveness contracts: 14
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=14

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0541302b14b923c3c5f6e1377a4181790b3e6076` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x23604be26047cf57ef37e5b3a4f5c6f5c5c057b1` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x2e823df11e1b031469d4927de04d0f050a64d696` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x32e85c00caf25f8217315d711e026f4dbaa45e31` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x4600fa6bbb6561d2e27f43ffcb6fbe9715a262a0` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x6a248d3cc5ec909a38960382a649cf98a80d881a` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x7783759eb985e88927c2a100636a0596351efd86` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x8f4b79a7567de997da10f66e340b00a80177e66c` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x9c5d55418586d1ad5aed77978631d952e6e589d5` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0x9efc7e873a21705d8696a243ef58d360f077b52a` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0xbd0c1a873bb3553a674afa935c941836c35ef5bf` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0xdfcb98f28f80b6f9daaa4e44eb0e689f26675135` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0xe1202b0732a04b33c6c37ae853f1929ca3221915` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |
| unverified unclassified | UnnamedContract<br>`0xeff3d60b57165f19922effbd6227fb8a2f27714e` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb13a8271efa096b407ec8a20aa14c01e74c427` |

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
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

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
