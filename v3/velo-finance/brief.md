# Agentic Audit Brief: Velo Finance

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

- Project: Velo Finance (`velo-finance`)
- Website: [https://velofinance.io](https://velofinance.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 35 unique implementations (42 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,406,611.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Velo Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Token (`0xf486ad071f3bee968384d2e39e2d8af0fcf6fd46`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 1 of 35 unique; 34 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 35
- Raw deployments: 42
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DMMPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d5b39b8ebac7f3404af73688f352b05c835ceea` | ⚠️ Unaudited |
| DMMRouter02DelegateCall | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x345617dd29a12e836aebc936ca0ca59ccd22fb69` | ⚠️ Unaudited |
| EarnOtherFixedAPRLockReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x2703e5d3709782e85957e40a9c834afd4d45caf9`; bsc `0x4191754ecb1c460b82818beaa5fb6ce7728bebe8`; bsc `0x7dd617eacd7fd35f69275f943ff82218213796b7`; bsc `0xba5640094e940b32159daf38ab8b86fe4d788a3c` | ⚠️ Unaudited |
| EVRY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2d4a3709e076a7a3487816362994a78ddaeabb6` | ⚠️ Unaudited |
| EvryPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x526357ef8304ce6cd46689aa0f9abf642a40b802`; bsc `0xfcd4bbdc95da7b749adab99133a846e9cc4226b8` | ⚠️ Unaudited |
| EvryRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x296b7c203e2c7306b132f2d5ad66106bb7665c46` | ⚠️ Unaudited |
| Farms | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x33472144eaa7540e7bada5a1ab7da372e48a9252` | ⚠️ Unaudited |
| Farms | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdd3e2da1d017a564b8225bc8e92f2970cfa61945` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x6c22422f4044dfba79f4ea6bbb9c09162c3bf912` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3c8ec1728c080f76dc83baa5d51a0cc367b4a35f`; bsc `0x3db4416970f5008f2af47d0ab6e1299ea707400e`; bsc `0x584ffcdaa98034e6448202067c4c9c2868485b5d`; bsc `0xaf6feb6b10c787a2ad280b73f7e26eae6662a5ab` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | bsc | unit-395632 | `0xf486ad071f3bee968384d2e39e2d8af0fcf6fd46` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00144d712bac23aaec0fd9465b09914e4c686da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x119e7227b840eec1556fb93b1ab1c65b5799341d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36a6139df9ed56f5bc2ddfdfa09342cf39a42506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x405fb1a3fdddb1d701fe07073d7d309d82b43f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d7c5e251eededa483d7487ac5bfac2fb54465e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f0625e47d81cd345974f67ea6876518414ab66e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6080b49941ff549c2a22fad98c5f49d31126706e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61d70545fa13f1919ee2d83f31c3bf6d349ac025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f001a1d04824a5ab2ebc41650f625fcfdb20218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x853fbde85f59d9c551f36547664bcd3883a6fad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x883be875a82fbdbb76a7293c23a922b97f778cfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x953f99d7831baa69a0e48badac1bbb6b688fb949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa82ee94a97da85b813867e82efb267ac790fa81d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb28b077f0574e3be95e5fb8fdc2ecda032565add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2de6652f863668b6a77f26e590d9890cb5e121c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3f903e7a789ece079f6fd2e86aa316d2799be6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5e5ac1fcd7d552ceb7e40272343fc77d4101176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9cfba0f3072603b5e8d04e0a5298f246354b83a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd9357d5b9fa57364fe657c2376b28b1eca94fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd67f778caa73a45bc07ab24f6f72d4821f9573aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdba5e553f96531cfd36ce3b07e3946fecc29483e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddace5addfc3c18a66a28e6827762f4d91a908d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde79be6f190f919ab975fa24d88514be29d542c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf39541c122234123a516470c52339e45afbd7b23` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 27
- Live contracts: 0
- Unknown liveness contracts: 27
- Source-verified contracts: 3
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=3, unverified unclassified=24

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | source verified unclassified | Token<br>`0x3db4416970f5008f2af47d0ab6e1299ea707400e` | non_address_book | unknown | unknown | verified | n/a | `0x40f5cea1d055a6fc56aac2add7b7c6ef1c8e1208` |
| bsc | source verified unclassified | Token<br>`0x584ffcdaa98034e6448202067c4c9c2868485b5d` | non_address_book | unknown | unknown | verified | n/a | `0x40f5cea1d055a6fc56aac2add7b7c6ef1c8e1208` |
| bsc | source verified unclassified | Token<br>`0xaf6feb6b10c787a2ad280b73f7e26eae6662a5ab` | non_address_book | unknown | unknown | verified | n/a | `0x40f5cea1d055a6fc56aac2add7b7c6ef1c8e1208` |
| bsc | unverified unclassified | UnnamedContract<br>`0x00144d712bac23aaec0fd9465b09914e4c686da4` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x119e7227b840eec1556fb93b1ab1c65b5799341d` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36a6139df9ed56f5bc2ddfdfa09342cf39a42506` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x405fb1a3fdddb1d701fe07073d7d309d82b43f7b` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d7c5e251eededa483d7487ac5bfac2fb54465e2` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f0625e47d81cd345974f67ea6876518414ab66e` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6080b49941ff549c2a22fad98c5f49d31126706e` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61d70545fa13f1919ee2d83f31c3bf6d349ac025` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f001a1d04824a5ab2ebc41650f625fcfdb20218` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x853fbde85f59d9c551f36547664bcd3883a6fad5` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x883be875a82fbdbb76a7293c23a922b97f778cfa` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x953f99d7831baa69a0e48badac1bbb6b688fb949` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa82ee94a97da85b813867e82efb267ac790fa81d` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb28b077f0574e3be95e5fb8fdc2ecda032565add` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb2de6652f863668b6a77f26e590d9890cb5e121c` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3f903e7a789ece079f6fd2e86aa316d2799be6f` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc5e5ac1fcd7d552ceb7e40272343fc77d4101176` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc9cfba0f3072603b5e8d04e0a5298f246354b83a` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcd9357d5b9fa57364fe657c2376b28b1eca94fa5` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd67f778caa73a45bc07ab24f6f72d4821f9573aa` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdba5e553f96531cfd36ce3b07e3946fecc29483e` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xddace5addfc3c18a66a28e6827762f4d91a908d1` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xde79be6f190f919ab975fa24d88514be29d542c7` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf39541c122234123a516470c52339e45afbd7b23` | non_address_book | unknown | unknown | unverified | n/a | `0xde64b899747eb80d78dd36b05f49e94267cd6dc2` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xf486ad071f3bee968384d2e39e2d8af0fcf6fd46` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 24 |

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
