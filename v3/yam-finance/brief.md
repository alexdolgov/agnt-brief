# Agentic Audit Brief: Yam Finance

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

- Project: Yam Finance (`yam-finance`)
- Website: [https://yam.finance/](https://yam.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $192,590.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yam Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across ethereum. Structural roles: 9 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (9)
- Contract kinds: contract (9)
- Detected standards: erc20 (3), ownable (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Migrator (`0x72cfed9293cbfb2bfc7515c413048c697c6c811c`, chain 1)
- Timelock (`0x8b4f1616751117c38a0f84f9a146cca191ea3ec5`, chain 1)
- UniswapV2Pair (`0x0f82e57804d0b1f6fab2370a43dcfad3c7cb239c`, chain 1)
- YAMDelegate3 (`0x0aacfbec6a24756c20d41914f2caba817c0d8521`, chain 1)
- YAMRebaser2 (`0xd93f403b432d39aa0f736c2021be6051d85a1d55`, chain 1)
- YAMReserves2 (`0x97990b693835da58a281636296d2bf02787dea17`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (6 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 6 of 27 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DualGovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f95ceb85e22877cf0285059405c205ebdc9cc7` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62702387c2a26c903985e9d078d18c45acae0908` | ⚠️ Unaudited |
| IndexStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465a5ba960173386a08505d178b8ca3e24b4642d` | ⚠️ Unaudited |
| Migrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262586 | `0x72cfed9293cbfb2bfc7515c413048c697c6c811c` | ⚠️ Unaudited |
| OTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92ab5cce7af1605da2681458ae52a0bec4ecb74c` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262588 | `0x8b4f1616751117c38a0f84f9a146cca191ea3ec5` | ⚠️ Unaudited |
| UmbrellaMetaPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc92ec84423db017ee76354b786ac9c60bea35379` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262584 | `0x0f82e57804d0b1f6fab2370a43dcfad3c7cb239c` | ⚠️ Unaudited |
| YAMAMPLPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ebb67687fee2d265d7b824714df13622d90e663` | ⚠️ Unaudited |
| YAMCOMPPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8538e5910c6f80419cd3170c26073ff238048c9e` | ⚠️ Unaudited |
| YAMDelegate | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-262594 | `0x0e2298e3b3390e3b945a5456fbf59ecc3f55da16` | ⚠️ Unaudited |
| YAMDelegate2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209ddd6b50f748b6eaa25a2793341566492b2526` | ⚠️ Unaudited |
| YAMDelegate3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262593 | `0x0aacfbec6a24756c20d41914f2caba817c0d8521` | ⚠️ Unaudited |
| YAMETHPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587a07ce5c265a38dd6d42def1566ba73eeb06f5` | ⚠️ Unaudited |
| YAMIncentivizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0501f7041120d36bc8c6dc3faea0b74b32a0ed` | ⚠️ Unaudited |
| YAMIncentivizerWithVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebf85f830e7d5b3d01eb64e34a1003223942ead` | ⚠️ Unaudited |
| YAMLENDPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6009a344c7f993b16eba2c673fefd2e07f9be5fd` | ⚠️ Unaudited |
| YAMLINKPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf32f72ac09cb6c002d0954318bb548321ffd4e34` | ⚠️ Unaudited |
| YAMMKRPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a0846911e2c6edb06bea20e6fef9bbbf37e4119` | ⚠️ Unaudited |
| YAMRebaser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb361f274f316d383b94d761832ab68099a7b00` | ⚠️ Unaudited |
| YAMRebaser2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262592 | `0xd93f403b432d39aa0f736c2021be6051d85a1d55` | ⚠️ Unaudited |
| YAMReserves | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-262591 | `0xcf27ca116dd5c7b4201c75b46489d1c075362087` | ⚠️ Unaudited |
| YAMReserves2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262589 | `0x97990b693835da58a281636296d2bf02787dea17` | ⚠️ Unaudited |
| YAMSNXPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3fc1ffdb14d92394f40eec91d9ce8b807f132d` | ⚠️ Unaudited |
| YAMv2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-262590 | `0xaba8cac6866b83ae4eec97dd07ed254282f6ad8a` | ⚠️ Unaudited |
| YAMv2Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1d7c9e4c57a5c1902f4a4ae2630d2da78ffb1c1` | ⚠️ Unaudited |
| YAMYFIPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86ad8caa66c407d7485b05584b9ac9a7e2371275` | ⚠️ Unaudited |

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
| ethereum | `0x72cfed9293cbfb2bfc7515c413048c697c6c811c` | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b4f1616751117c38a0f84f9a146cca191ea3ec5` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0aacfbec6a24756c20d41914f2caba817c0d8521` | YAMDelegate3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd93f403b432d39aa0f736c2021be6051d85a1d55` | YAMRebaser2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x97990b693835da58a281636296d2bf02787dea17` | YAMReserves2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 1 |
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
