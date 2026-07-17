# Agentic Audit Brief: Hercules

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hercules (`hercules`)
- Website: [https://app.hercules.exchange](https://app.hercules.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: metis
- Contract surface: 22 unique implementations (22 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $196,762.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hercules. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across metis. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 1 contracts are derived from known codebases. 0 contracts have no detected origin.

### Forked Contracts

**AlgebraPool** (`0x6eeac91f1bd77e1ad9a25c12c6a9577b4c185d94`, chain 1088)
Origin: swapbased (`0x3ce99e3b6e4207dfbaccfe42132e763834eae8c9`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- None

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
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 22 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
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

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraPool | unknown | project_anchor | own_supporting | 0 | metis | unit-387247 | `0x6eeac91f1bd77e1ad9a25c12c6a9577b4c185d94` | ⚠️ Unaudited |
| AlgebraStaticQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa07430772ec1ec032dc9dcb88fcaac5611df84ab` | ⚠️ Unaudited |
| CamelotMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x438718e30b6395c4a0b5622490cc3dc9b1b8ba3d` | ⚠️ Unaudited |
| CamelotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x14679d1da243b8c7d1a4c6d0523a2ce614ef027c` | ⚠️ Unaudited |
| CamelotYakRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf9a6d89dccb139e26da4b9df00796c980b5975d2` | ⚠️ Unaudited |
| ConvertablePUMPKIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9395dd0b6de5ee28f83b3fdfd03e4db72443c06f` | ⚠️ Unaudited |
| DividendsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x20b81a68512d649d48aaae8bdb13b9142707bd7c` | ⚠️ Unaudited |
| FairAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x07e94ab61f8b3f59b6695ba66e0a5de367117f56` | ⚠️ Unaudited |
| GammaUniProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xd882a7ad21a6432b806622ba5323716fba5241a8` | ⚠️ Unaudited |
| GrailTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x7db501b11e07564f24fec6ac4273a0f84f1dadff` | ⚠️ Unaudited |
| Launchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x320356e697bc36414ebc46e5067b2a07195970db` | ⚠️ Unaudited |
| LimitOrder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x578bb6acacf821005aca8b0d92c8ee1ada7f22c2` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x24318244b4ddc2bf93fd95925060bb92ac2cb45a` | ⚠️ Unaudited |
| NFTPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1e9ed0c5fcd27f38db47cfa35036fa1db409786d` | ⚠️ Unaudited |
| NFTRewardClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2c88534bf4a2cbbfa91783510d76195e1e669c3f` | ⚠️ Unaudited |
| NitroPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x929cf42e62fd2142a1b853bc6fd15d4765b78989` | ⚠️ Unaudited |
| PositionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa76416a93d0d32838857f1ef28bbfcb16c98b92f` | ⚠️ Unaudited |
| SteerProxyHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6d28bb02948e1d1ec579a4f20b9437df6494eb6f` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1e651964df1d932f6b1f96497bc7e27a9c35edf0` | ⚠️ Unaudited |
| XGrailToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xce65043bd6df95263f80a3185ff4b99b94347d0c` | ⚠️ Unaudited |
| xMetisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xca042ea7e9aa901c85d5afa5247a79e935db4996` | ⚠️ Unaudited |
| YieldBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xa4defaf0904529a1ffe04cc8a1ef3bc7d7f7b121` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | `0x6eeac91f1bd77e1ad9a25c12c6a9577b4c185d94` | AlgebraPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
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
