# Agentic Audit Brief: YieldFlow

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: YieldFlow (`yieldflow`)
- Website: [https://yieldflow.com](https://yieldflow.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 61 unique implementations (61 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $321,615.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for YieldFlow. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum, fantom, polygon. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 40 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x004375dff511095cc5a197a54140a24efef3a416`, chain 1)
- UnnamedContract (`0x0a4a169a6b2ac75c86e2f0e42822fdea13fb1cc8`, chain 1)
- UnnamedContract (`0x0d4a11d5eeaac28ec3f61d100daf4d40471f1852`, chain 1)
- UnnamedContract (`0x11b1f53204d03e5529f09eb3091939e4fd8c9cf3`, chain 1)
- UnnamedContract (`0x3dd49f67e9d5bc4c5e6634b3f70bfd9dc1b6bd74`, chain 1)
- UnnamedContract (`0x47dd57dfe9e01616e4adc28015243ea6a2c09cec`, chain 1)
- UnnamedContract (`0x55d5c232d921b9eaa6b37b5845e439acd04b4dba`, chain 1)
- UnnamedContract (`0x65d1788f9d9a800c5fc9b9cb8e49a1b488c736c7`, chain 1)
- UnnamedContract (`0x811beed0119b4afce20d2583eb608c6f7af1954f`, chain 1)
- UnnamedContract (`0x819f3450da6f110ba6ea52195b3beafa246062de`, chain 1)
- UnnamedContract (`0x857679d69fe50e7b722f94acd2629d80c355163d`, chain 1)
- UnnamedContract (`0x9b7dad79fc16106b47a3dab791f389c167e15eb0`, chain 1)
- UnnamedContract (`0xa0fdf5dc858ea552d51b4fa304e72ceb34e736fb`, chain 1)
- UnnamedContract (`0xa2107fa5b38d9bbd2c461d6edf11b11a50f6b974`, chain 1)
- UnnamedContract (`0xa43fe16908251ee70ef74718545e4fe6c5ccec9f`, chain 1)
- UnnamedContract (`0xac36a41da8f069c4874dda60e073b5dcf889b56e`, chain 1)
- UnnamedContract (`0xaffa16b152232dad8bf3aadf6bb6f895a836f917`, chain 1)
- UnnamedContract (`0xb6909b960dbbe7392d405429eb2b3649752b4838`, chain 1)
- UnnamedContract (`0xbb2b8038a1640196fbe3e38816f3e67cba72d940`, chain 1)
- UnnamedContract (`0xc0a6bb3d31bb63033176edba7c48542d6b4e406d`, chain 1)
- UnnamedContract (`0xd3d2e2692501a5c9ca623199d38826e513033a17`, chain 1)
- UnnamedContract (`0xdfc14d2af169b0d36c4eff567ada9b2e0cae044f`, chain 1)
- UnnamedContract (`0xeffc18fc3b7eb8e676dac549e0c693ad50d1ce31`, chain 1)
- UnnamedContract (`0xfb04d48e4ce9c042188ef933ff4cf58921ab59b8`, chain 1)
- UnnamedContract (`0xa6e383bda26e4c52a3a3a3463552c42494669abd`, chain 137)
- UnnamedContract (`0xfc00face00000000000000000000000000000000`, chain 250)
- UnnamedContract (`0x0fe1853aaa799f6f84222f0a2ca49dc78f52e6b8`, chain 42161)
- UnnamedContract (`0x12e98519d2cdb6cc97f0f4ce2af4de031f01135d`, chain 42161)
- UnnamedContract (`0x2785dde5665aaeb2c585d37cc2cf30041fd2813d`, chain 42161)
- UnnamedContract (`0x49dcf2807a5e4336f25ddc8f7369f70317470173`, chain 42161)
- UnnamedContract (`0x5e12b9bd41a18fb96eb8d03c08523057647e0cbd`, chain 42161)
- UnnamedContract (`0x6c33409bf2fe5ce2f862013cece54ad9ad7acae6`, chain 42161)
- UnnamedContract (`0xa1607f9d2c8d1e32d6c57b5c060b37b38caa85e0`, chain 42161)
- UnnamedContract (`0xab9072143d34d864a8401eaac9138c654d845876`, chain 42161)
- UnnamedContract (`0xb962f0bda748967563ebba13943306f36ae1cc91`, chain 42161)
- UnnamedContract (`0xca5f3403a2c26700873197c838f73d8b1157a7ee`, chain 42161)
- UnnamedContract (`0xe2e7068442788d5523337a3ac8dd873c6954276f`, chain 42161)
- UnnamedContract (`0xeda3cf04de48caaaeb926a4dfeb660ea1cba35a7`, chain 42161)
- RangePositionManager (`0x01af749e58c076c301b1f57d0bcbbf2d49b503bd`, chain 1)
- Yieldflow (`0x113a05170273e9087f5d0e0cdee0388478a1546d`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/40 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 40 of 61 unique; 21 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 61
- Raw deployments: 61
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f8c952fd41cb14d58fbdf7f459483bafbd2644` | ⚠️ Unaudited |
| FeeSplitterManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd51790106e815f086e9f25d89cad27d85c43fea` | ⚠️ Unaudited |
| MassTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb75b8315fa796f35783e584ef9ed39d8fc26f700` | ⚠️ Unaudited |
| PolygonStakingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159599ece3979c6b78ea472385687a93dfd5ec7e` | ⚠️ Unaudited |
| PolygonStakingImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x635f0804a103c7db279888f183cfe02e46de21c9` | ⚠️ Unaudited |
| RangeMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x080901169acae16f0cd17dbca18a2fee4d0a3672` | ⚠️ Unaudited |
| RangePositionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397564 | `0x01af749e58c076c301b1f57d0bcbbf2d49b503bd` | ⚠️ Unaudited |
| RefSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ede9700eb9fa2134d5848c17525e700fb0aa89c` | ⚠️ Unaudited |
| RewardNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b2fa8042a1273cc708be575b92cfd4caf6d5d73` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5940da70f68afca24b38f6595e5d556da7fed88` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c166a17263e5e6ee0211023538c626edd0974a` | ⚠️ Unaudited |
| StakingRewardsLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd47e2621cb5493017cfc849d9811c3394dcd1140` | ⚠️ Unaudited |
| SwapManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06cef69e7df2de1bb8bc4cf416142f1ea6494829` | ⚠️ Unaudited |
| UniV2LPETHFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b1ae9fb6407252fe26886c652463b6d9e4eb21` | ⚠️ Unaudited |
| UniV2LPETHImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b662070b00796e65169affa654fea43d096743a` | ⚠️ Unaudited |
| UniV2LPFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x940337f748ef8a72a33f77200ed726829085961e` | ⚠️ Unaudited |
| UniV2LPImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51bee60fd420aee238f541685f8dc4250e66bada` | ⚠️ Unaudited |
| VestingStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a2c4e0f066697946d22aac2cb97f47fb0247c85` | ⚠️ Unaudited |
| VestingStakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7913c623f523acad1939dd799440a3b1bef592` | ⚠️ Unaudited |
| YFLOW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d21351469a6728043cacf89ecb4d1e8ec20a70c` | ⚠️ Unaudited |
| Yieldflow | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397591 | `0x113a05170273e9087f5d0e0cdee0388478a1546d` | ⚠️ Unaudited |
| YieldManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4b8dfd20cbe437c0efe144284f7411d839b8694` | ⚠️ Unaudited |
| YieldManagerOutpostV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d8bcdf374e64b47a71d69cd7587b012d4955d85` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397563 | `0x004375dff511095cc5a197a54140a24efef3a416` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397565 | `0x0a4a169a6b2ac75c86e2f0e42822fdea13fb1cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397566 | `0x0d4a11d5eeaac28ec3f61d100daf4d40471f1852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397567 | `0x11b1f53204d03e5529f09eb3091939e4fd8c9cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397568 | `0x3dd49f67e9d5bc4c5e6634b3f70bfd9dc1b6bd74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397569 | `0x47dd57dfe9e01616e4adc28015243ea6a2c09cec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397570 | `0x55d5c232d921b9eaa6b37b5845e439acd04b4dba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397571 | `0x65d1788f9d9a800c5fc9b9cb8e49a1b488c736c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397572 | `0x811beed0119b4afce20d2583eb608c6f7af1954f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397573 | `0x819f3450da6f110ba6ea52195b3beafa246062de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397574 | `0x857679d69fe50e7b722f94acd2629d80c355163d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397575 | `0x9b7dad79fc16106b47a3dab791f389c167e15eb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397576 | `0xa0fdf5dc858ea552d51b4fa304e72ceb34e736fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397577 | `0xa2107fa5b38d9bbd2c461d6edf11b11a50f6b974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397578 | `0xa43fe16908251ee70ef74718545e4fe6c5ccec9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397579 | `0xac36a41da8f069c4874dda60e073b5dcf889b56e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397580 | `0xaffa16b152232dad8bf3aadf6bb6f895a836f917` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397581 | `0xb6909b960dbbe7392d405429eb2b3649752b4838` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397582 | `0xbb2b8038a1640196fbe3e38816f3e67cba72d940` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397583 | `0xc0a6bb3d31bb63033176edba7c48542d6b4e406d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397584 | `0xd3d2e2692501a5c9ca623199d38826e513033a17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397585 | `0xdfc14d2af169b0d36c4eff567ada9b2e0cae044f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397586 | `0xeffc18fc3b7eb8e676dac549e0c693ad50d1ce31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397587 | `0xfb04d48e4ce9c042188ef933ff4cf58921ab59b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-397588 | `0xa6e383bda26e4c52a3a3a3463552c42494669abd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-397589 | `0xfc00face00000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397590 | `0x0fe1853aaa799f6f84222f0a2ca49dc78f52e6b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397592 | `0x12e98519d2cdb6cc97f0f4ce2af4de031f01135d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397593 | `0x2785dde5665aaeb2c585d37cc2cf30041fd2813d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397594 | `0x49dcf2807a5e4336f25ddc8f7369f70317470173` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397595 | `0x5e12b9bd41a18fb96eb8d03c08523057647e0cbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397596 | `0x6c33409bf2fe5ce2f862013cece54ad9ad7acae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397597 | `0xa1607f9d2c8d1e32d6c57b5c060b37b38caa85e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397598 | `0xab9072143d34d864a8401eaac9138c654d845876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397599 | `0xb962f0bda748967563ebba13943306f36ae1cc91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397600 | `0xca5f3403a2c26700873197c838f73d8b1157a7ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397601 | `0xe2e7068442788d5523337a3ac8dd873c6954276f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397602 | `0xeda3cf04de48caaaeb926a4dfeb660ea1cba35a7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/yieldflow](https://skynet.certik.com/projects/yieldflow) | CertiK | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21098] skynet.certik.com/projects/yieldflow — no match: Extracted from CertiK Skynet page for YieldFlow. Audited files listed include CallbackHandler.sol, GMXAdapter.sol, and 38 others (not individually named). Assessed contracts section shows ProtocolConfig.sol. Audit date from 'Last Audit was delivered on 6/26/2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/yieldflow | CallbackHandler | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/yieldflow | GMXAdapter | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/yieldflow | ProtocolConfig | unmatched — not counted | — | listed in assessed contracts | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x01af749e58c076c301b1f57d0bcbbf2d49b503bd` | RangePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x113a05170273e9087f5d0e0cdee0388478a1546d` | Yieldflow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [21098] skynet.certik.com/projects/yieldflow

Fork inheritance lineage and inherited audits are included when available.
