# Agentic Audit Brief: Flexa

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Flexa (`flexa`)
- Website: [https://amp.xyz/](https://amp.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 18 unique implementations (29 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $751,905.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Flexa. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

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

- Amp (`0xff20817765cb7f73d4bde2e66e067e58d11095c2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 17 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 1 of 18 unique; 17 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/17
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 18
- Raw deployments: 29
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ConsenSys Diligence, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys Diligence | Tier 1 | 1 | 5.9% | 2020-06 |
| Trail of Bits | Tier 1 | 1 | 5.9% | 2020-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Amp | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240012 | `0xff20817765cb7f73d4bde2e66e067e58d11095c2` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Anvil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2ca9242c1810029efed539f1c60d68b63ad01bfc`; ethereum `0xaeeaa594e7dc112d67b8547fe9767a02c15b5597` | ⚠️ Unaudited |
| AnvilGovernorDelegate | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9`; ethereum `0x123641b8a2063217a96ef88bf608931a43b49f49` | ⚠️ Unaudited |
| AnvilGovernorDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x081fe8bf28e07232d25b58811c4cad2ebdaed8d9`; ethereum `0x09c7ec11c51e61997274c5c445c9f4ccf6bc200f`; ethereum `0x33148ea4cc49fc351a2a9fa729f75134cd2a3ba1`; ethereum `0x65eed5a31d70d5eb0398dbe8e805ffeb6199f602`; ethereum `0xa57365263ff137c9e93818c0f04425b66ff2b5e4`; ethereum `0xbb1470b2a2dcce0cb91ac91d9d0a3ceec9187aa0`; ethereum `0xfd883f549ee20eb69067102fd93a0687744c5b8f`; ethereum `0xfe1118ce38818ea3c167929eacb6310cdc42a361` | ⚠️ Unaudited |
| AnvilTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eeb7c5bb75fc0dbea4826bf568fd577f62cad21` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefd194d4ff955e8958d132319f31d2ab9f7e29ac` | ⚠️ Unaudited |
| CollateralPoolPartitionValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x455a3b78cfe4b88268dbee2119eb06fb1d3f1f61` | ⚠️ Unaudited |
| CollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d2725fde4d7aa3388da4519ac0449cc031d675f` | ⚠️ Unaudited |
| Flexacoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a57e687b9126435a9b19e4a802113e266adebde` | ⚠️ Unaudited |
| FlexaCollateralManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x706d7f8b3445d8dfc790c524e3990ef014e7c578` | ⚠️ Unaudited |
| LetterOfCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14db9a91933ad9433e1a0db04d08e5d9ef7c4808` | ⚠️ Unaudited |
| LetterOfCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a3251d83b4ed97d8e1d8451613d7dd9b4f42961`; ethereum `0x750ab78b4fe51292d1f0053845aace3ea959d5ad` | ⚠️ Unaudited |
| PythPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f3405c861fa0dca04ec4ba59bc189d1d56ee05` | ⚠️ Unaudited |
| Reward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da` | ⚠️ Unaudited |
| TimeBasedCollateralPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f00d6f7c18a8edf4f8bb4ead8a898abdd9c9e14`; ethereum `0xcc437a7bb14f07de09b0f4438df007c8f64cf29f` | ⚠️ Unaudited |
| TimeBasedCollateralPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd042c267758eddf34b481e1f539d637e41db3e5a` | ⚠️ Unaudited |
| TokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d14c8bca5869749fbf181a3e65b8609657d78d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78f5f531a135e21ce2d1913d289595ab240f8483` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [diligence.security/audits/2020/06/amp](https://diligence.security/audits/2020/06/amp) | Consensys Diligence | Audit | 2020-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 20 | n/a |
| [amp.pdf](https://github.com/trailofbits/publications/blob/master/reviews/amp.pdf) | Trail of Bits | Audit | 2020-08 | stale | Direct | n/a | matched | 1 | 0 | 0 | 6 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3062] diligence.security/audits/2020/06/amp — matched: No reason recorded
- [3063] amp.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| diligence.security/audits/2020/06/amp | Amp | own contract | Amp (selected) `0xff20817765cb7f73d4bde2e66e067e58d11095c2` — deployed 2020-08-11 03:27:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2020/06/amp | AmpPartitionStrategyValidatorBase | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | CollateralPoolPartitionValidator | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | ERC1820Client | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | ERC1820Implementer | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | ErrorCodes | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | ExampleCollateralManager | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | FlexaCollateralManager | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | HolderCollateralPartitionValidator | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | IAmp | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | IAmpPartitionStrategyValidator | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | IAmpTokensRecipient | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | IAmpTokensSender | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | MockAmp | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | MockAmpTokensRecipient | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | MockAmpTokensSender | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | MockCollateralPool | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | MockERC20Interactor | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | MockFXC | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | MockPartitionBase | unmatched — not counted | — | — | no |
| diligence.security/audits/2020/06/amp | PartitionsBase | unmatched — not counted | — | — | no |
| amp.pdf | Amp | own contract | Amp (selected) `0xff20817765cb7f73d4bde2e66e067e58d11095c2` — deployed 2020-08-11 03:27:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| amp.pdf | CollateralPoolPartitionValidator | unmatched — not counted | — | — | no |
| amp.pdf | ExampleCollateralManager | unmatched — not counted | — | — | no |
| amp.pdf | FlexaCollateralManager | unmatched — not counted | — | — | no |
| amp.pdf | HolderCollateralPartitionValidator | unmatched — not counted | — | — | no |
| amp.pdf | IAmp | unmatched — not counted | — | — | no |
| amp.pdf | MockCollateralPool | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 26 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
