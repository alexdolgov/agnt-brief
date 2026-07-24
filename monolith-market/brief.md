# Agentic Audit Brief: Monolith Market

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 6 audit(s)
- Eligible audit results: 7 (6 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Monolith Market (`monolith-market`)
- Website: [https://monolith.market](https://monolith.market)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sepolia
- Contract surface: 43 unique implementations (43 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $223,963.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Monolith Market. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum, sepolia. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 3 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

**Metadata** (`0x2afb125bb848049b54d0903a1fd365e7518f581a`, chain 1)
Origin: inverse-finance (`0x2afb12...8f581a`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6d961c9dcf1ad73566822ba4b087892e3839b849`, chain 1)
- Lens (`0x8aab59675e123ceefe5e05b0bc1be8fe6101e60d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 43 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 50.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 1 | 25.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Lens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389171 | `0x8aab59675e123ceefe5e05b0bc1be8fe6101e60d` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c13d0f087c42644fcdeeb0f4d0a272c50618d83` | ⚠️ Unaudited |
| Metadata | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389169 | `0x2afb125bb848049b54d0903a1fd365e7518f581a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926df14a23be491164dcf93f4c468a50ef659d5b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62e71ec317a8bf6ae7c4d68ddd3b57b394ec8e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ab52d36a1c29b6a00e0dbf6806728548ff16d66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389170 | `0x6d961c9dcf1ad73566822ba4b087892e3839b849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x013653f4971ada69f820e7b3c833dbbe27683fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03953ee98be1ed93faad40887194d83ef5d42ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x215402a41297ecb60b85f8c97391a3ae3ab3a426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23a737acf8f15b369ddb385a7f93d24bafedbf33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x260ac708a95b10715d8bcd2f335196fd354534b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389172 | `0x365009fa2ddb17f386e20854e4b281827619e4d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x404e2bfc26cc0e9bcdd3902234b0b7e28d2c6a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42b8ac9a31e2d60c89a948e7e683090e8f0a066c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bea68cefb30b8346dcadf2422396a9829f85beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54aad859dcf307a4f3ba66330e00392f46d80d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a95a3cf2e6f06530ce0791fd06cac2ff2c25e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62993dd9f21a3119fa37fa9a35f0bb2f0c5e1ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6774b5111b3c78c1037626d4c253bf6f5b8a7e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6833ccf126801da9f45c35450879d7ae14e2fef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389173 | `0x82342771d91a4daa9947419d1e0f95fe7e3d2a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8805c8a08022a41fef736ea3af56dfdff282a9cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389174 | `0x8aab59675e123ceefe5e05b0bc1be8fe6101e60d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9671e8ec6741b1344ba6ad1414d903fc1c31364f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x96ad308cb4479fd2558d40a4abf420565fa80356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a434e5a89287ccc958b393f28845e38b0e4b1d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa429ab3a09010d00fd30d51d44729390d20cc9e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb0da19fce225e03f586e11bdd2461913168bd975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9073a6e2e60f645e475200896fa25a6a1a0b417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb669c4e6a2eb3d81a390eb52cba72fe25e6ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6479a77ecbd54893590d544c26eab6647e2a259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc66c3610f7b3b9e175a7d0ba1f6dbda2020330a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc678f146fd534d4a354401d701718e11a8659cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc943962614ab332a428f1b23af9180f023021136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce605b6f468fa3753d2a51cd796e5d679952ff49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd341cf59552eaf33f6cab00469d173e982dcd062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd7c9b0b32ac701728dbd40d74ff4c9387e6623fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd821bf7a49b50b2a5b5c4da391a7dcf1e1f260d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdaf0299b6c2bffd80d5df3629381d981bef77cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc91f11de8d294bd547d4f9009fa16466b2ca796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe58581631802b334e83e018014767a35e31e3141` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 35
- Live contracts: 0
- Unknown liveness contracts: 35
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=35

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x62e71ec317a8bf6ae7c4d68ddd3b57b394ec8e3c` | non_address_book | unknown | unknown | unverified | n/a | `0x5656ab2fae8522b8148478528dda4ff89075f6e7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ab52d36a1c29b6a00e0dbf6806728548ff16d66` | non_address_book | unknown | unknown | unverified | n/a | `0x5656ab2fae8522b8148478528dda4ff89075f6e7` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x013653f4971ada69f820e7b3c833dbbe27683fa7` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x03953ee98be1ed93faad40887194d83ef5d42ab8` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x215402a41297ecb60b85f8c97391a3ae3ab3a426` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x23a737acf8f15b369ddb385a7f93d24bafedbf33` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x260ac708a95b10715d8bcd2f335196fd354534b1` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x404e2bfc26cc0e9bcdd3902234b0b7e28d2c6a42` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x42b8ac9a31e2d60c89a948e7e683090e8f0a066c` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4bea68cefb30b8346dcadf2422396a9829f85beb` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x54aad859dcf307a4f3ba66330e00392f46d80d38` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5a95a3cf2e6f06530ce0791fd06cac2ff2c25e46` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x62993dd9f21a3119fa37fa9a35f0bb2f0c5e1ca6` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6774b5111b3c78c1037626d4c253bf6f5b8a7e4b` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6833ccf126801da9f45c35450879d7ae14e2fef9` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8805c8a08022a41fef736ea3af56dfdff282a9cb` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9671e8ec6741b1344ba6ad1414d903fc1c31364f` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x96ad308cb4479fd2558d40a4abf420565fa80356` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9a434e5a89287ccc958b393f28845e38b0e4b1d2` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xa429ab3a09010d00fd30d51d44729390d20cc9e2` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb0da19fce225e03f586e11bdd2461913168bd975` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb9073a6e2e60f645e475200896fa25a6a1a0b417` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xbb669c4e6a2eb3d81a390eb52cba72fe25e6ecbd` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc6479a77ecbd54893590d544c26eab6647e2a259` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc66c3610f7b3b9e175a7d0ba1f6dbda2020330a4` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc678f146fd534d4a354401d701718e11a8659cb6` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc943962614ab332a428f1b23af9180f023021136` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xce605b6f468fa3753d2a51cd796e5d679952ff49` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd341cf59552eaf33f6cab00469d173e982dcd062` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd7c9b0b32ac701728dbd40d74ff4c9387e6623fc` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xd821bf7a49b50b2a5b5c4da391a7dcf1e1f260d8` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdaf0299b6c2bffd80d5df3629381d981bef77cdb` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdc91f11de8d294bd547d4f9009fa16466b2ca796` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe58581631802b334e83e018014767a35e31e3141` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcb35a1cbfb6007f9bc638d388958bc4550cb28` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [yAudit-Monolith-Report-June-2025.pdf](https://monolith-public-files.vercel.app/audits/yAudit-Monolith-Report-June-2025.pdf) | Electisec (yAudit) | Audit | 2025-06 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [ChainSecurity-Monolith-Audit-Report-October-2025.pdf](https://monolith-public-files.vercel.app/audits/ChainSecurity-Monolith-Audit-Report-October-2025.pdf) | ChainSecurity | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf](https://monolith-public-files.vercel.app/audits/Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf](https://monolith-public-files.vercel.app/audits/ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf) | ChainSecurity | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Sherlock-AI-Monolith-Audit-Report-April-2026.pdf](https://monolith-public-files.vercel.app/audits/Sherlock-AI-Monolith-Audit-Report-April-2026.pdf) | Sherlock AI | Contest | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Nemesis-Monolith-Audit-Report-April-2026.md](https://monolith-public-files.vercel.app/audits/Nemesis-Monolith-Audit-Report-April-2026.md) | Nemesis | Audit | 2026-04 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [audits.sherlock.xyz/contests/1212](https://audits.sherlock.xyz/contests/1212) | Sherlock | Contest | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21402] yAudit-Monolith-Report-June-2025.pdf — matched: Scope section lists 5 contracts: Vault.sol, Lender.sol, InterestModel.sol, Factory.sol, Coin.sol. Audit completed between May 20-27, 2025, so end date is 2025-05-27.
- [21403] ChainSecurity-Monolith-Audit-Report-October-2025.pdf — matched: Scope section explicitly lists 5 Solidity files. Audit date from cover page: March 25, 2026.
- [21404] Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf — matched: Scope section lists 6 files: src/Coin.sol, src/Factory.sol, src/InterestModel.sol, src/Lender.sol, src/Lens.sol, src/Vault.sol. Audit date is December 8-14, 2025, so end date is 2025-12-14.
- [21405] ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf — matched: Scope table explicitly lists 5 Solidity files. Audit date from cover page: 'April 14, 2026'.
- [21406] Sherlock-AI-Monolith-Audit-Report-April-2026.pdf — matched: Scope section lists five contracts: Factory.sol, Coin.sol, Interest-Model.sol, Vault.sol, Lender.sol. Audit date is April 2026, mapped to last day of month.
- [21407] Nemesis-Monolith-Audit-Report-April-2026.md — matched: Scope explicitly listed as 'Modules analyzed: Lender.sol, Vault.sol, Coin.sol, InterestModel.sol, Factory.sol' at the top of the report.
- [21409] audits.sherlock.xyz/contests/1212 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, scope section, or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| yAudit-Monolith-Report-June-2025.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| yAudit-Monolith-Report-June-2025.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| yAudit-Monolith-Report-June-2025.pdf | InterestModel | unmatched — not counted | — | listed in scope | no |
| yAudit-Monolith-Report-June-2025.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c9dcf1ad73566822ba4b087892e3839b849` — deployed 2026-04-24 13:39:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| yAudit-Monolith-Report-June-2025.pdf | Coin | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c9dcf1ad73566822ba4b087892e3839b849` — deployed 2026-04-24 13:39:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | Coin | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | InterestModel | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Audit-Report-October-2025.pdf | Lender | unmatched — not counted | — | listed in scope table | no |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Coin | unmatched — not counted | — | listed in scope | no |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c9dcf1ad73566822ba4b087892e3839b849` — deployed 2026-04-24 13:39:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | InterestModel | unmatched — not counted | — | listed in scope | no |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Lens | own contract | Lens (selected) `0x8aab59675e123ceefe5e05b0bc1be8fe6101e60d` — deployed 2026-04-18 14:36:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock-Monolith-Public-Audit-Contest-Report-December-2025.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c9dcf1ad73566822ba4b087892e3839b849` — deployed 2026-04-24 13:39:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | Coin | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | InterestModel | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity-Monolith-Re-Audit-Report-March-2026.pdf | Lender | unmatched — not counted | — | listed in scope table | no |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | Factory | own contract | 0x6d961c… (selected) `0x6d961c9dcf1ad73566822ba4b087892e3839b849` — deployed 2026-04-24 13:39:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | Coin | unmatched — not counted | — | listed in scope | no |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | InterestModel | unmatched — not counted | — | listed in scope | no |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Sherlock-AI-Monolith-Audit-Report-April-2026.pdf | Lender | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | Lender | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | Vault | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | Coin | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | InterestModel | unmatched — not counted | — | listed in scope | no |
| Nemesis-Monolith-Audit-Report-April-2026.md | Factory | own contract | 0x6d961c… (selected) `0x6d961c9dcf1ad73566822ba4b087892e3839b849` — deployed 2026-04-24 13:39:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2afb125bb848049b54d0903a1fd365e7518f581a` | Metadata | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: unique_name=7

Zero-match audit list:

- [21409] audits.sherlock.xyz/contests/1212

Fork inheritance lineage and inherited audits are included when available.
