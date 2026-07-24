# Agentic Audit Brief: InfinityPools

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: InfinityPools (`infinitypools`)
- Website: [https://infinitypools.finance/](https://infinitypools.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: 4/4 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $110,979.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for InfinityPools. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across base. Structural roles: 2 core, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), supporting (2)
- Contract kinds: abstract (2), contract (2)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin-upgradeable (4), openzeppelin (2)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x10b72ca6989d1d1c3ea5f6e3de0eeda75f73a90c`, chain 8453)
- UnnamedContract (`0x22814bc031f47255d52db7e0e88c6d91e3d1fcce`, chain 8453)
- UnnamedContract (`0x2626664c2603336e57b271c5c0b26f421741e481`, chain 8453)
- UnnamedContract (`0x3489968e96edf8fe592e083e9e31d798e233b63a`, chain 8453)
- UnnamedContract (`0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24`, chain 8453)
- UnnamedContract (`0x73624cbebd37ec1e1fd93eb5ef4fe26d9ff703a6`, chain 8453)
- UnnamedContract (`0xadaa772e1eec300c1bb62d8342b69e8c627172a6`, chain 8453)
- UnnamedContract (`0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5`, chain 8453)
- UnnamedContract (`0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43`, chain 8453)
- GeneralSwapForwarder (`0x567a06c6e4f77fcc64cf53183e0328a7f84a4354`, chain 8453)
- InfinityPoolsFactory (`0x86342d7bbe93cb640a6c57d4781f04d93a695f08`, chain 8453)
- InfinityPoolsPeriphery (`0xf8fad01b2902ff57460552c920233682c7c011a7`, chain 8453)
- UniV2SwapForwarder (`0xdc9be7d212536e8e23b0074678d0625499e61021`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/4 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 13 of 24 unique; 11 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/6
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 4 | 66.7% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GeneralSwapForwarder | unknown | project_anchor | own_supporting | 0 | base | unit-387408 | `0x567a06c6e4f77fcc64cf53183e0328a7f84a4354` | ✅ Audited |
| InfinityPoolsFactory | unknown | project_anchor | own_supporting | 1 | base | unit-387415 | `0x86342d7bbe93cb640a6c57d4781f04d93a695f08` | ✅ Audited |
| InfinityPoolsPeriphery | unknown | project_anchor | own_supporting | 1 | base | unit-387414 | `0xf8fad01b2902ff57460552c920233682c7c011a7` | ✅ Audited |
| UniV2SwapForwarder | unknown | project_anchor | own_supporting | 0 | base | unit-387413 | `0xdc9be7d212536e8e23b0074678d0625499e61021` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| InfinityPoolsQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9d8a51be17b79eb8fd22f87f6851c243855663c` | ⚠️ Unaudited |
| InfinityPoolsSwapForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x99a9c21053acccf6961f7f12cff0d9d155d4ebe7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03a520b32c04bf3beef7beb72e919cf822ed34f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387402 | `0x10b72ca6989d1d1c3ea5f6e3de0eeda75f73a90c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387403 | `0x22814bc031f47255d52db7e0e88c6d91e3d1fcce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387404 | `0x2626664c2603336e57b271c5c0b26f421741e481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387406 | `0x3489968e96edf8fe592e083e9e31d798e233b63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d4e44eb1374240ce5f1b871ab261cd16335b76a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387407 | `0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f225937edc33efd6109c4cef7b560b2d6401009` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387409 | `0x73624cbebd37ec1e1fd93eb5ef4fe26d9ff703a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387410 | `0xadaa772e1eec300c1bb62d8342b69e8c627172a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387411 | `0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-387412 | `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 9
- Live contracts: 0
- Unknown liveness contracts: 9
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=9

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x03a520b32c04bf3beef7beb72e919cf822ed34f1` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| unverified unclassified | UnnamedContract<br>`0x0cdee061c75d43c82520ed998c23ac2991c9ac6d` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| unverified unclassified | UnnamedContract<br>`0x23cf10b1ee3adfca73b0ef17c07f7577e7acd2d7` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| unverified unclassified | UnnamedContract<br>`0x31fafd4889fa1269f7a13a66ee0fb458f27d72a9` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| unverified unclassified | UnnamedContract<br>`0x3334d83e224af5ef9c2e7dda7c7c98efd9621fa9` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| unverified unclassified | UnnamedContract<br>`0x3d4e44eb1374240ce5f1b871ab261cd16335b76a` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| unverified unclassified | UnnamedContract<br>`0x4615c383f85d0a2bbed973d83ccecf5cb7121463` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| unverified unclassified | UnnamedContract<br>`0x4f225937edc33efd6109c4cef7b560b2d6401009` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |
| unverified unclassified | UnnamedContract<br>`0xf9d1077fd35670d4acbd27af82652a8d84577d9f` | non_address_book | unknown | unknown | unverified | n/a | `0x7ac7499f3754b65cf9089db328ef51151a78ec00` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Link](https://github.com/abdk-consulting/audits/blob/main/lemmalabs/ABDK_LemmaLabs_InfinityPools_v_2_0.pdf) | ABDK | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [Link](https://drive.google.com/file/d/1VsHVjXFc5YnFLWOi_iOUi9Tvr4i3B09m/view?usp=sharing) | ABDK | Audit | 2025-01 | aging | Direct | contract_name | matched | 4 | 2 | 0 | 19 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20584] Link — no match: All contracts and libraries listed in the 'Project scope' section (pages 13-14) are extracted. The audit date is from the title page: '5th September 2024'.
- [20585] Link — matched: No explicit scope section found; contract names extracted from findings and file paths mentioned in the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Link | Constants | unmatched — not counted | — | listed in scope | no |
| Link | InfinityPool | unmatched — not counted | — | listed in scope | no |
| Link | InfinityPoolDeployer | unmatched — not counted | — | listed in scope | no |
| Link | InfinityPoolFactory | unmatched — not counted | — | listed in scope | no |
| Link | InfinityPoolState | unmatched — not counted | — | listed in scope | no |
| Link | PoolReader | unmatched — not counted | — | listed in scope | no |
| Link | IInfinityPool | unmatched — not counted | — | listed in scope | no |
| Link | IInfinityPoolDeployer | unmatched — not counted | — | listed in scope | no |
| Link | IInfinityPoolFactory | unmatched — not counted | — | listed in scope | no |
| Link | IInfinityPoolLoanState | unmatched — not counted | — | listed in scope | no |
| Link | IInfinityPoolPaymentCallback | unmatched — not counted | — | listed in scope | no |
| Link | IInfinityPoolState | unmatched — not counted | — | listed in scope | no |
| Link | Advance | unmatched — not counted | — | listed in scope | no |
| Link | LP | unmatched — not counted | — | listed in scope | no |
| Link | NewLoan | unmatched — not counted | — | listed in scope | no |
| Link | Spot | unmatched — not counted | — | listed in scope | no |
| Link | Structs | unmatched — not counted | — | listed in scope | no |
| Link | Swapper | unmatched — not counted | — | listed in scope | no |
| Link | DeadlineHelper | unmatched — not counted | — | listed in scope | no |
| Link | PoolHelper | unmatched — not counted | — | listed in scope | no |
| Link | OptInt256 | unmatched — not counted | — | listed in scope | no |
| Link | BoxcarTubFrame | unmatched — not counted | — | listed in scope | no |
| Link | BucketRolling | unmatched — not counted | — | listed in scope | no |
| Link | BytesLib | unmatched — not counted | — | listed in scope | no |
| Link | Capper | unmatched — not counted | — | listed in scope | no |
| Link | DailyJumps | unmatched — not counted | — | listed in scope | no |
| Link | DeadlineFlag | unmatched — not counted | — | listed in scope | no |
| Link | DeadlineJumps | unmatched — not counted | — | listed in scope | no |
| Link | DropFaberTotals | unmatched — not counted | — | listed in scope | no |
| Link | EachPayoff | unmatched — not counted | — | listed in scope | no |
| Link | EraBoxcarMidSum | unmatched — not counted | — | listed in scope | no |
| Link | EraFaberTotals | unmatched — not counted | — | listed in scope | no |
| Link | Fees | unmatched — not counted | — | listed in scope | no |
| Link | GapStagedFrame | unmatched — not counted | — | listed in scope | no |
| Link | GrowthSplitFrame | unmatched — not counted | — | listed in scope | no |
| Link | JumpyAnchorFaber | unmatched — not counted | — | listed in scope | no |
| Link | JumpyFallback | unmatched — not counted | — | listed in scope | no |
| Link | Payoff | unmatched — not counted | — | listed in scope | no |
| Link | SparseFloat | unmatched — not counted | — | listed in scope | no |
| Link | UserPay | unmatched — not counted | — | listed in scope | no |
| Link | Utils | unmatched — not counted | — | listed in scope | no |
| Link | InfinityPoolsPeriphery | own proxy deployment | InfinityPoolsPeriphery (proxy) (selected) `0xf8fad01b2902ff57460552c920233682c7c011a7` — deployed 2025-01-11 06:35:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | GeneralSwapForwarder | own contract | GeneralSwapForwarder (selected) `0x567a06c6e4f77fcc64cf53183e0328a7f84a4354` — deployed 2025-01-11 06:35:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | UniV2SwapForwarder | own contract | UniV2SwapForwarder (selected) `0xdc9be7d212536e8e23b0074678d0625499e61021` — deployed 2025-01-11 06:35:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | InfinityPool | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| Link | InfinityPoolsFactory | own proxy deployment | InfinityPoolsFactory (proxy) (selected) `0x86342d7bbe93cb640a6c57d4781f04d93a695f08` — deployed 2025-01-11 06:35:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Link | InfinityPoolState | unmatched — not counted | — | Mentioned in findings | no |
| Link | JumpyFallback | unmatched — not counted | — | Mentioned in findings | no |
| Link | EraBoxcarMidSum | unmatched — not counted | — | Mentioned in findings | no |
| Link | JumpyAnchorFaber | unmatched — not counted | — | Mentioned in findings | no |
| Link | SubAdvance | unmatched — not counted | — | Mentioned in findings | no |
| Link | Advance | unmatched — not counted | — | Mentioned in findings | no |
| Link | Spot | unmatched — not counted | — | Mentioned in findings | no |
| Link | NewLoan | unmatched — not counted | — | Mentioned in findings | no |
| Link | PoolHelper | unmatched — not counted | — | Mentioned in findings | no |
| Link | PoolConstructor | unmatched — not counted | — | Mentioned in findings | no |
| Link | Structs | unmatched — not counted | — | Mentioned in findings | no |
| Link | EncodeIdHelper | unmatched — not counted | — | Mentioned in findings | no |
| Link | Token | unmatched — not counted | — | Mentioned in findings | no |
| Link | WETH9 | unmatched — not counted | — | Mentioned in findings | no |
| Link | IInfinityPool | unmatched — not counted | — | Mentioned in findings | no |
| Link | IInfinityPoolsPeriphery | unmatched — not counted | — | Mentioned in findings | no |
| Link | IPermit2 | unmatched — not counted | — | Mentioned in findings | no |
| Link | IWETH9 | unmatched — not counted | — | Mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 60 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=4

Zero-match audit list:

- [20584] Link

Fork inheritance lineage and inherited audits are included when available.
