# Agentic Audit Brief: Nexus Mutual

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Nexus Mutual (`nexus-mutual`)
- Website: [https://nexusmutual.io/](https://nexusmutual.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 64 unique implementations (67 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $76,712,645.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Nexus Mutual. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across ethereum. Structural roles: 10 core, 3 supporting. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (10), supporting (3)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (9), erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01bfd82675dbcc7762c84019ca518e701c0cd07e`, chain 1)
- UnnamedContract (`0x1776651f58a17a50098d31ba3c3cd259c1903f7a`, chain 1)
- UnnamedContract (`0xcafea2c575550512582090aa06d0a069e7236b9e`, chain 1)
- UnnamedContract (`0xcafea501b78175f178b899625f06bc618ef06eb8`, chain 1)
- UnnamedContract (`0xcafea508a477d94c502c253a58239fb8f948e97f`, chain 1)
- UnnamedContract (`0xcafea55ae10fb1bf21f7af7a285488c42b59a24a`, chain 1)
- UnnamedContract (`0xcafea5c7d25a192ba70eca0e2db62f835c1cf81f`, chain 1)
- UnnamedContract (`0xcafea6063d4ec6b045d9676e58897c1f0882ca32`, chain 1)
- UnnamedContract (`0xcafeac11196a5cc352938aeed545b32d5b9646fa`, chain 1)
- UnnamedContract (`0xcafeac90410f069c24a876c208eb2b3e53424ea5`, chain 1)
- UnnamedContract (`0xcafeaca76be547f14d0220482667b42d8e7bc3eb`, chain 1)
- UnnamedContract (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 1)
- UnnamedContract (`0xd7c49cee7e9188cca6ad8ff264c1da2e69d4cf3b`, chain 1)
- UnnamedContract (`0xdc2d359f59f6a26162972c3bd0cfbfd8c9ef43af`, chain 1)
- CoverBroker (`0xcb2b736652d2dbf7d72e4db880cf6b7d99507814`, chain 1)
- CoverViewer (`0xcafea53a6c1774030f4b1c06b4a5743d5afff8b9`, chain 1)
- OwnedUpgradeabilityProxy (`0x4a5c681ddc32acc6cca51ac17e9d461e6be87900`, chain 1)
- OwnedUpgradeabilityProxy (`0x5407381b6c251cfd498ccd4a1d877739cb7960b8`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafea53852e9f719c424ec2fe1e7add27304210f`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafea54f03e1cc036653444e581a10a43b2487cd`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafea573fbd815b5f59e8049e71e554bde3477e4`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafeab8b01c74c2239ea9b2b0f6ab2dd409c6c13`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafeac0ff5da0a2777d915531bfa6b29d282ee62`, chain 1)
- OwnedUpgradeabilityProxy (`0xcafead81a2c2508e7344155eb0da67a3a487aa8d`, chain 1)
- StakingPoolFactory (`0xcafeafb97bf8831d95c0fc659b8eb3946b101cb3`, chain 1)
- UpgradeableProxy (`0xcafea91714e55756c125b509274ede9bc91697cb`, chain 1)
- wNXM (`0x0d438f3b5175bebc262bf23753c1e53d03432bde`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 27 of 64 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 64
- Raw deployments: 67
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/nexusmutual/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| AssessmentViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafeaa6660019915ec109052825ee7121480f0cd` | ⚠️ Unaudited |
| Cover | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389898 | `0xcafeac0ff5da0a2777d915531bfa6b29d282ee62` | ⚠️ Unaudited |
| CoverBroker | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389886 | `0xcb2b736652d2dbf7d72e4db880cf6b7d99507814` | ⚠️ Unaudited |
| CoverProducts | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389891 | `0xcafead81a2c2508e7344155eb0da67a3a487aa8d` | ⚠️ Unaudited |
| CoverViewer | periphery | project_anchor | own_supporting | 0 | ethereum | unit-389878 | `0xcafea53a6c1774030f4b1c06b4a5743d5afff8b9` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 4 | ethereum | n/a | 4 deployments: ethereum `0x09abbe423fedee2332caea4117093d7d9b017cf5`; ethereum `0x57d2d86d32497bc4aed3b603a391db50c10d7fa1`; ethereum `0x8e53d04644e9ab0412a8c6bd228c84da7664cfe3`; ethereum `0xfa7e852ceb3f7d0f1ac02f3b8afca95e6dcbdb3c` | ⚠️ Unaudited |
| IndividualClaims | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcafeac12fee6b65a710fa9299a98d65b4fde7a62` | ⚠️ Unaudited |
| LegacyAssessment | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcafeaa5f9c401b7295890f309168bbb8173690a3` | ⚠️ Unaudited |
| LegacyMemberRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x055cc48f7968fd8640ef140610dd4038e1b03926` | ⚠️ Unaudited |
| LimitOrders | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389894 | `0xcafea53852e9f719c424ec2fe1e7add27304210f` | ⚠️ Unaudited |
| NexusViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafeab03f219b7a8bcb92a5d61508a0ae16302b6` | ⚠️ Unaudited |
| Pool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-389895 | `0xcafea91714e55756c125b509274ede9bc91697cb` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafeaf6ea90cb931ae43a8cf4b25a73a24cf6158` | ⚠️ Unaudited |
| PriceFeedOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafea905b417ac7778843aae1a0b3848ca97a592` | ⚠️ Unaudited |
| Ramm | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389893 | `0xcafea54f03e1cc036653444e581a10a43b2487cd` | ⚠️ Unaudited |
| SafeTracker | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389890 | `0xcafeab8b01c74c2239ea9b2b0f6ab2dd409c6c13` | ⚠️ Unaudited |
| StakingPoolFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-389885 | `0xcafeafb97bf8831d95c0fc659b8eb3946b101cb3` | ⚠️ Unaudited |
| StakingProducts | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389896 | `0xcafea573fbd815b5f59e8049e71e554bde3477e4` | ⚠️ Unaudited |
| StakingViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafea5e8a7a54dd14bb225b66c7a016dfd7f236b` | ⚠️ Unaudited |
| SwapOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcafeaed98d7fce8f355c03c9f3507b90a974f37e` | ⚠️ Unaudited |
| TemporaryGovernance | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389897 | `0x4a5c681ddc32acc6cca51ac17e9d461e6be87900` | ⚠️ Unaudited |
| TokenController | governance | project_anchor | own_supporting | 1 | ethereum | unit-389892 | `0x5407381b6c251cfd498ccd4a1d877739cb7960b8` | ⚠️ Unaudited |
| wNXM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389871 | `0x0d438f3b5175bebc262bf23753c1e53d03432bde` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389870 | `0x01bfd82675dbcc7762c84019ca518e701c0cd07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08c3a887865684f30351a0ba6d683aa9b539829a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389872 | `0x1776651f58a17a50098d31ba3c3cd259c1903f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc712e2a9f77149c2eb3a4051b6dd63d71dbc4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25916c331797ba10601e1f05a1da0b425302f5a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2896258b620fdc0c1aab9cb4fd0317f37a9fefe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ec5d566bd104e01790b13de33fd51876d57c495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b8246a462f66efab5cd7bd301cd0b9e7b470e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x504a7dff5eb2854be0b436da0ac2d3e0b789fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x548bf2610c1f15ec6bb78914aa7f90c59a82f492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58676340f458b36997608672be6548c92ce50714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a313ff2a3e66db968ee3984bff178973e589322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cbe5682be6b648cc1100c76d4f6c96997f753d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80b72ce39b3d73c46b2b8b9ef3acbf300a0077e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9399a16f15e35f0d1cd6001f20566290f113dd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b4825997d2634c4c68c6283ea30cfcabe8bda0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dae0663f252d05314b7352403fa9c16f16f25ee` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-389873 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa94c7e87e212669baee95d5d45305d05e6b8a28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2df6cc4524d1505a195f38dbe0280450fea5e2c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-389874 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc628050cc70d761fa62b8af7d1ef4ca883c2fd3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc72a7b022f95570399bc1fd3956ecd863b391c4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389875 | `0xcafea2c575550512582090aa06d0a069e7236b9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389876 | `0xcafea501b78175f178b899625f06bc618ef06eb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389877 | `0xcafea508a477d94c502c253a58239fb8f948e97f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389879 | `0xcafea55ae10fb1bf21f7af7a285488c42b59a24a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389880 | `0xcafea5c7d25a192ba70eca0e2db62f835c1cf81f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389881 | `0xcafea6063d4ec6b045d9676e58897c1f0882ca32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389882 | `0xcafeac11196a5cc352938aeed545b32d5b9646fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389883 | `0xcafeac90410f069c24a876c208eb2b3e53424ea5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389884 | `0xcafeaca76be547f14d0220482667b42d8e7bc3eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389887 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccb40a11aa8c5dfafaa9de9311fe7bd47d0bade7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389888 | `0xd7c49cee7e9188cca6ad8ff264c1da2e69d4cf3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389889 | `0xdc2d359f59f6a26162972c3bd0cfbfd8c9ef43af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf50a17bf58dea5039b73683a51c4026f3c7224e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe20b3ae826cdb43676e418f7c3b84b75b5697a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe80f4d88288bd71df7bd36dd1b53e5df4b7d413c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdd9752be578c03491ff1083c0f738aa8687d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd61352232157815cf7b71045557192bf0ce1884` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 25
- Live contracts: 0
- Unknown liveness contracts: 25
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=25

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x08c3a887865684f30351a0ba6d683aa9b539829a` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x1cc712e2a9f77149c2eb3a4051b6dd63d71dbc4f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1b2259f55f5dbdea166d3a5b0267444517f764b` |
| unverified unclassified | UnnamedContract<br>`0x25916c331797ba10601e1f05a1da0b425302f5a2` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x2896258b620fdc0c1aab9cb4fd0317f37a9fefe2` | non_address_book | unknown | unknown | unverified | n/a | `0xa1b2259f55f5dbdea166d3a5b0267444517f764b` |
| unverified unclassified | UnnamedContract<br>`0x2ec5d566bd104e01790b13de33fd51876d57c495` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x4b8246a462f66efab5cd7bd301cd0b9e7b470e41` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x504a7dff5eb2854be0b436da0ac2d3e0b789fe20` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x548bf2610c1f15ec6bb78914aa7f90c59a82f492` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x58676340f458b36997608672be6548c92ce50714` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x6a313ff2a3e66db968ee3984bff178973e589322` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x7cbe5682be6b648cc1100c76d4f6c96997f753d6` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x80b72ce39b3d73c46b2b8b9ef3acbf300a0077e7` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x9399a16f15e35f0d1cd6001f20566290f113dd6b` | non_address_book | unknown | unknown | unverified | n/a | `0xa1b2259f55f5dbdea166d3a5b0267444517f764b` |
| unverified unclassified | UnnamedContract<br>`0x9b4825997d2634c4c68c6283ea30cfcabe8bda0a` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0x9dae0663f252d05314b7352403fa9c16f16f25ee` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0xa94c7e87e212669baee95d5d45305d05e6b8a28f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1b2259f55f5dbdea166d3a5b0267444517f764b` |
| unverified unclassified | UnnamedContract<br>`0xb2df6cc4524d1505a195f38dbe0280450fea5e2c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1b2259f55f5dbdea166d3a5b0267444517f764b` |
| unverified unclassified | UnnamedContract<br>`0xc628050cc70d761fa62b8af7d1ef4ca883c2fd3b` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0xc72a7b022f95570399bc1fd3956ecd863b391c4e` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0xccb40a11aa8c5dfafaa9de9311fe7bd47d0bade7` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0xdf50a17bf58dea5039b73683a51c4026f3c7224e` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0xe20b3ae826cdb43676e418f7c3b84b75b5697a40` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0xe80f4d88288bd71df7bd36dd1b53e5df4b7d413c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1b2259f55f5dbdea166d3a5b0267444517f764b` |
| unverified unclassified | UnnamedContract<br>`0xebdd9752be578c03491ff1083c0f738aa8687d48` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |
| unverified unclassified | UnnamedContract<br>`0xfd61352232157815cf7b71045557192bf0ce1884` | non_address_book | unknown | unknown | unverified | n/a | `0x1b541c2dc0653fd060e8320d2f763733ba8cffe3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [immunefi.com/bug-bounty/nexusmutual/information](https://immunefi.com/bug-bounty/nexusmutual/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [audits-and-security.md](https://github.com/NexusMutual/docs/blob/master/docs/resources/audits-and-security.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4594] immunefi.com/bug-bounty/nexusmutual/information — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only the protocol name 'Nexus Mutual' is mentioned. No audit date is present.
- [10354] audits-and-security.md — no match: The document is a summary page listing multiple audits with links to external reports, but does not contain the actual audit scope details or contract names. No specific contracts are named in the text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xcafeac0ff5da0a2777d915531bfa6b29d282ee62` | Cover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb2b736652d2dbf7d72e4db880cf6b7d99507814` | CoverBroker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafead81a2c2508e7344155eb0da67a3a487aa8d` | CoverProducts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea53a6c1774030f4b1c06b4a5743d5afff8b9` | CoverViewer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea53852e9f719c424ec2fe1e7add27304210f` | LimitOrders | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea91714e55756c125b509274ede9bc91697cb` | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea54f03e1cc036653444e581a10a43b2487cd` | Ramm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafeab8b01c74c2239ea9b2b0f6ab2dd409c6c13` | SafeTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafeafb97bf8831d95c0fc659b8eb3946b101cb3` | StakingPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcafea573fbd815b5f59e8049e71e554bde3477e4` | StakingProducts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a5c681ddc32acc6cca51ac17e9d461e6be87900` | TemporaryGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5407381b6c251cfd498ccd4a1d877739cb7960b8` | TokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d438f3b5175bebc262bf23753c1e53d03432bde` | wNXM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [10354] audits-and-security.md

Fork inheritance lineage and inherited audits are included when available.
