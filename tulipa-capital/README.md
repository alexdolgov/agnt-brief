# Agentic Audit Brief: Tulipa Capital

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

- Project: Tulipa Capital (`tulipa-capital`)
- Website: [https://www.tulipa.capital](https://www.tulipa.capital)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, base, berachain, bsc, ethereum
- Contract surface: 10 unique implementations (22 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $39,008,576.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Tulipa Capital in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 22
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x699e04f98de2fc395a7dcbf36b48ec837a976490`; ethereum `0x6bf340db729d82af1f6443a0ea0d79647b1c3ddf` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3b028b4b6c567ef5f8ca1144da4fbaa0d973f228` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xe932da5a4d00536c224f8153f299cdcd8054c444` | ⚠️ Unaudited |
| LendingVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61a8606e04d350dfa1d1aaa68b37260746ae47d4` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x7895a046b26cc07272b022a0c9bafc046e6f6396`; ethereum `0x7a12d4b719f5aa479ecd60defed909fb2a37e428`; ethereum `0x936facdf10c8c36294e7b9d28345255539d81bc7`; ethereum `0xce0b790ae0d8cf91e01f3fb69025e14569b574f3` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x097c94fbf0afa1b994af7ea13ecb5ab609602976`; base `0x71652d4898de9a7dd35e472a5fe4577ec69d82f2` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 4 deployments: base `0x16648324d68b86e341051767e749f9f074714228`; base `0x45b6969152a186bafc524048f36a160fac096d50`; base `0xb09f761cb13baca8ec087ac476647361b6314f98`; base `0xfce2064b4221c54651b21c868064a23695e78f09` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x652716fad571f04d26a3c8ffd9e593f17123ab20`; base `0xab4ac28d10a4bc279ad073b1d74bfa0e385c010c`; base `0xd51a0523699c6f415ca6f9ebacb7e9d6c5471404` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | base | n/a | 3 deployments: base `0x8092ca384d44260ea4feaf7457b629b8dc6f88f0`; base `0xbc29b6c682c447ddc3143b3d8ba781163fc8a6f2`; base `0xee6a60be216058afd7a0643795b4f1e197c8b150` | ⚠️ Unaudited |
| Vault0_2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a5ea384e394083149ce39db29d5787a658aa98a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 12
- Live contracts: 0
- Unknown liveness contracts: 12
- Source-verified contracts: 12
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=12

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | BeaconProxy<br>`0x8092ca384d44260ea4feaf7457b629b8dc6f88f0` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | BeaconProxy<br>`0xab4ac28d10a4bc279ad073b1d74bfa0e385c010c` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | BeaconProxy<br>`0xb09f761cb13baca8ec087ac476647361b6314f98` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | BeaconProxy<br>`0xbc29b6c682c447ddc3143b3d8ba781163fc8a6f2` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | BeaconProxy<br>`0xfce2064b4221c54651b21c868064a23695e78f09` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | UpgradeableBeacon<br>`0x16648324d68b86e341051767e749f9f074714228` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | UpgradeableBeacon<br>`0x652716fad571f04d26a3c8ffd9e593f17123ab20` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | Vault<br>`0x097c94fbf0afa1b994af7ea13ecb5ab609602976` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | Vault<br>`0x45b6969152a186bafc524048f36a160fac096d50` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | Vault<br>`0x71652d4898de9a7dd35e472a5fe4577ec69d82f2` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | Vault<br>`0xd51a0523699c6f415ca6f9ebacb7e9d6c5471404` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |
| source verified unclassified | Vault0_2_1<br>`0x6a5ea384e394083149ce39db29d5787a658aa98a` | non_address_book | unknown | unknown | verified | n/a | `0x8846189a4e46997dd30fd9e8be48c1fa1b846920` |

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
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

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
