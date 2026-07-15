# Agentic Audit Brief: Topaz

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Topaz (`topaz`)
- Website: [https://www.topazdex.com](https://www.topazdex.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, optimism
- Contract surface: 49 unique implementations (50 raw deployments)
- Coverage basis: 2/27 confirmed own live verified implementations (7.4%); conservative 7.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $920,262.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Topaz. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across bsc, ethereum, optimism. Structural roles: 18 supporting, 9 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: supporting (18), core (9), unclassified (1)
- Contract kinds: contract (28)
- Detected standards: erc165 (5), erc721 (2), multicall (2), ownable (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (20), foundry (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

8 of 27 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

**CLFactory** (`0x73dc98...f82ed9`, chain 56)
Origin: arrakis-finance (`0x5e7bb1...06809a`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLGauge** (`0xc2f777...958b97`, chain 56)
Origin: overnight-finance (`0xd030df...8ea104`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CLPool** (`0x18e680...577af7`, chain 56)
Origin: peapods-finance (`0xd53398...98c37e`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DynamicSwapFeeModule** (`0x656cf5...7b0541`, chain 56)
Origin: arcadia-finance (`0x87d8f9...38e8cb`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- configureDynamicFees(address[],uint24[],uint64[])

Removals (removed from original):
- disableInitialFee(address)
- setInitialFee(address,uint24)

**Minter** (`0x606794...77f8ae`, chain 56)
Origin: 40-acres (`0xeb0183...a33fe5`)
Containment: 96.6% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- topaz()

Removals (removed from original):
- aero()

**Router** (`0x1e98c8...21c6c3`, chain 56)
Origin: 40-acres (`0xcf77a3...874e43`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

**Voter** (`0x2f80f8...5dad67`, chain 56)
Origin: arcadia-finance (`0x166135...c480a5`)
Containment: 100.0% - 33 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

**VotingEscrow** (`0xe951ac...0c5eb3`, chain 56)
Origin: iaero-protocol (`0xebf418...67e6b4`)
Containment: 100.0% - 49 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- isTrustedForwarder(address)

### Original Contracts (no fork detected - full audit scope)

- AirdropDistributor (`0x7b1d87...ab5348`, chain 56)
- CLGaugeFactory (`0xed2ed4...675839`, chain 56)
- CustomSwapFeeModule (`0xa0462a...6bcce2`, chain 56)
- CustomUnstakedFeeModule (`0x3bad7f...a78582`, chain 56)
- EpochGovernor (`0xbae558...749084`, chain 56)
- FactoryRegistry (`0x268d1c...13d6a4`, chain 56)
- Forwarder (`0xe79eb7...7c731b`, chain 56)
- GaugeFactory (`0xfc080d...d4cb08`, chain 56)
- ManagedRewardsFactory (`0xe4b23f...aa9480`, chain 56)
- MixedRouteQuoterV1 (`0x47c357...1a9ee2`, chain 56)
- NonfungiblePositionManager (`0xf8c30c...982f63`, chain 56)
- Pool (`0xdc942d...8f3678`, chain 56)
- ProtocolGovernor (`0xbbcdcd...a4c401`, chain 56)
- QuoterV2 (`0x7ccb89...9759f1`, chain 56)
- RewardsDistributor (`0x85e15e...f683db`, chain 56)
- SwapRouter (`0x9b63ca...6e0cae`, chain 56)
- Topaz (`0xdf0022...998abd`, chain 56)
- VeArtProxy (`0x961230...026601`, chain 56)
- VotingRewardsFactory (`0x4c303f...13716c`, chain 56)

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/27 (7.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 27 of 49 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/27
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 49
- Raw deployments: 50
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 7.4% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DynamicSwapFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394106 | `0x656cf5...7b0541` | ✅ Audited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394105 | `0x606794...77f8ae` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AirdropDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394108 | `0x7b1d87...ab5348` | ⚠️ Unaudited |
| CLFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394107 | `0x73dc98...f82ed9` | ⚠️ Unaudited |
| CLGauge | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394116 | `0xc2f777...958b97` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394121 | `0xed2ed4...675839` | ⚠️ Unaudited |
| CLPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-394098 | `0x18e680...577af7` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394113 | `0xa0462a...6bcce2` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | project_anchor | own_supporting | 0 | bsc | unit-394102 | `0x3bad7f...a78582` | ⚠️ Unaudited |
| EpochGovernor | governance | project_anchor | own_supporting | 0 | bsc | unit-394114 | `0xbae558...749084` | ⚠️ Unaudited |
| FactoryRegistry | registry | project_anchor | own_supporting | 0 | bsc | unit-394100 | `0x268d1c...13d6a4` | ⚠️ Unaudited |
| Forwarder | unknown | project_anchor | own_supporting | 0 | bsc | unit-394119 | `0xe79eb7...7c731b` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394123 | `0xfc080d...d4cb08` | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394118 | `0xe4b23f...aa9480` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | project_anchor | own_supporting | 0 | bsc | unit-394103 | `0x47c357...1a9ee2` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | bsc | unit-394122 | `0xf8c30c...982f63` | ⚠️ Unaudited |
| Pool | unknown | project_anchor | own_supporting | 1 | bsc | unit-394124 | 2 deployments: bsc `0x65e6cd...0b5784`; bsc `0xdc942d...8f3678` | ⚠️ Unaudited |
| ProtocolGovernor | governance | project_anchor | own_supporting | 0 | bsc | unit-394115 | `0xbbcdcd...a4c401` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | bsc | unit-394109 | `0x7ccb89...9759f1` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394110 | `0x85e15e...f683db` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | bsc | unit-394099 | `0x1e98c8...21c6c3` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-394112 | `0x9b63ca...6e0cae` | ⚠️ Unaudited |
| Topaz | unknown | project_anchor | own_supporting | 0 | bsc | unit-394117 | `0xdf0022...998abd` | ⚠️ Unaudited |
| VeArtProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-394111 | `0x961230...026601` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 0 | bsc | unit-394101 | `0x2f80f8...5dad67` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-394120 | `0xe951ac...0c5eb3` | ⚠️ Unaudited |
| VotingRewardsFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-394104 | `0x4c303f...13716c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e98c8...21c6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f80f8...5dad67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x606794...77f8ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e6cd...0b5784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85e15e...f683db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x961230...026601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae558...749084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbcdcd...a4c401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc942d...8f3678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf0022...998abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe951ac...0c5eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18e680...577af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3bad7f...a78582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47c357...1a9ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x656cf5...7b0541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73dc98...f82ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ccb89...9759f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9b63ca...6e0cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0462a...6bcce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2f777...958b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed2ed4...675839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf8c30c...982f63` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Topaz-Dex-Security-Review.pdf](https://github.com/shieldify-security/audits-portfolio/blob/main/reports/Topaz-Dex-Security-Review.pdf) | unknown | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14018] Topaz-Dex-Security-Review.pdf — matched: Scope table lists two files; additional contracts referenced in findings are included as they are part of the audited codebase.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Topaz-Dex-Security-Review.pdf | DynamicSwapFeeModule | own contract | DynamicSwapFeeModule (selected) `0x656cf5...7b0541` — deployed 2026-05-17 08:25:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Topaz-Dex-Security-Review.pdf | IDynamicFeeModule | unmatched — not counted | — | listed in scope table | no |
| Topaz-Dex-Security-Review.pdf | ICLPool | unmatched — not counted | — | referenced in findings as interface used in DynamicSwapFeeModule | no |
| Topaz-Dex-Security-Review.pdf | IMinter | unmatched — not counted | — | mentioned in finding I-01 | no |
| Topaz-Dex-Security-Review.pdf | Minter | own contract | Minter (selected) `0x606794...77f8ae` — deployed 2026-05-17 06:25:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Topaz-Dex-Security-Review.pdf | Pool | ambiguous — not counted | PoolFactory (proxy) (alternative) `0x65e6cd...0b5784` — deployed 2026-05-17 06:24:59+03 — liveness: live (code_present_context)<br>Pool (alternative) `0xdc942d...8f3678` — deployed 2026-05-17 06:24:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x7b1d87...ab5348` | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x73dc98...f82ed9` | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc2f777...958b97` | CLGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xed2ed4...675839` | CLGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x18e680...577af7` | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa0462a...6bcce2` | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3bad7f...a78582` | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbae558...749084` | EpochGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x268d1c...13d6a4` | FactoryRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe79eb7...7c731b` | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfc080d...d4cb08` | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe4b23f...aa9480` | ManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x47c357...1a9ee2` | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf8c30c...982f63` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x65e6cd...0b5784` | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbbcdcd...a4c401` | ProtocolGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7ccb89...9759f1` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x85e15e...f683db` | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1e98c8...21c6c3` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9b63ca...6e0cae` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdf0022...998abd` | Topaz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x961230...026601` | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2f80f8...5dad67` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe951ac...0c5eb3` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4c303f...13716c` | VotingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 3 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
