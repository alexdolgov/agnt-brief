# Agentic Audit Brief: Fuel Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Fuel Bridge (`fuel-bridge`)
- Website: [https://app.fuel.network/bridge](https://app.fuel.network/bridge)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 48 unique implementations (48 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,030,064.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Fuel Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x481aeeb9bdfe08f050d22f0b352356691c4b0b59`, chain 1)
- UnnamedContract (`0x50ed39b58f66338b84e67e6ff9a2bf00725edfe8`, chain 1)
- UnnamedContract (`0xa4ca04d02bfdc3a2df56b9b6994520e69df43f67`, chain 1)
- UnnamedContract (`0xaeb0c00d0125a8a788956ade4f4f12ead9f65ddf`, chain 1)
- UnnamedContract (`0xba0e6bf94580d49b5aaaa54279198d424b23ecc3`, chain 1)
- UnnamedContract (`0xc20c2ea5fc5f26200f3339512f336c2ece41fc18`, chain 1)
- UnnamedContract (`0xca0c6b264f0f9958ec186eb2eaa208966187d866`, chain 1)
- UnnamedContract (`0xd57d30d06969e5a98516e9f8d009c6f39ec169ee`, chain 1)
- UnnamedContract (`0xde8a1c2d142bc8f3bf3181a2e301a37471508fe1`, chain 1)
- UnnamedContract (`0xf3d20db1d16a4d0ad2f280a5e594ff3c7790f130`, chain 1)
- ERC1967Proxy (`0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 11 of 48 unique; 37 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 48
- Raw deployments: 48
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MoorToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc280b8e8c2e574b99d63e29c75872737575c594` | ⚠️ Unaudited |
| Rig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c4505e8cfdf91045d2d8e4247d7b11e776d100c` | ⚠️ Unaudited |
| Rig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240515 | `0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05f886ddee0fe07496f6e38b0e140f8ef4655b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eb53e434854af3d8d24283fe803242e989f027c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b5cc75846bf6286d599ec116536a333c4c2c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ada12341fb2fbcbcf38f56e8b8df73eb07d8f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd61731ce62e5691de2e547fa740bcd0663b1a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ee61849f38bb8122ce40f11620d9ff6504df94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2972ebb62e95d639d4282f78633f2cd05e5b3714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c4df10a82cf077122ed99573aca6dacd76f2e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33d3b4b66ae89e640d048e10f857ef0e20ed52cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fa1d4f525850794463d9bb47fc5a48295a9e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b9f8edb46c032643dcf25f227c23f21f04a5c8e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240499 | `0x481aeeb9bdfe08f050d22f0b352356691c4b0b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ced0596344b58dd3b11ffc621da85f7f57a5972` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240500 | `0x50ed39b58f66338b84e67e6ff9a2bf00725edfe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5450ff2ea044a2ab16a4e7c4f6e58f9bdece0da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x574051bb22adee7841131da52537d36f9b2c2ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5865cc20c4ad480ff537c89ae797f26ca6b7f96c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a725f508659f9846e5877e8625f9ea32b57d577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x675b68aa4d9c2d3bb3f0397048e62e6b7192079c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c1d9710b04a903fcfd61aef43632fd22fc25e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c644cf9b3ca2afb11f2218ec4a9f2a561c99626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d5e306825ea6193ca57f3df754adf36a6a260a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d67857224f66d7a677f063b861b6bacafb10639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x725b2b1a15d818e1f25c68be77816802e6036559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788d6f99bad2ffec53cbb8ea3929b14f6aa6a9c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851bfd7ac2df61a50e16a4406cd50a89a6a63ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa02f60b7f7b736e130ab97890110dea8bf03bf9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240504 | `0xa4ca04d02bfdc3a2df56b9b6994520e69df43f67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240505 | `0xaeb0c00d0125a8a788956ade4f4f12ead9f65ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b005feaeacef201937612e2d7ac8e656c61d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3109036813ff48e523cef3818438e64ee04069d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a8b7a17a669c55e6e74868076d79f759ad7349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb73a8187654baaf7f58ff7866a72d04a5b0395bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240506 | `0xba0e6bf94580d49b5aaaa54279198d424b23ecc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240507 | `0xc20c2ea5fc5f26200f3339512f336c2ece41fc18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240508 | `0xca0c6b264f0f9958ec186eb2eaa208966187d866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2f5cc4a954fe75c736af92c2974c746f0229ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd31f45fb6c2011d41e489cb24b45810d578a3279` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240510 | `0xd57d30d06969e5a98516e9f8d009c6f39ec169ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde2d792ca3c4d02de3ce1cd1456d8d0990cc3fab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240512 | `0xde8a1c2d142bc8f3bf3181a2e301a37471508fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2c3af17f2bfb1b891051e0c072d6654ab6c0cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe384ca20326981cdfe697338f9c141ec41f5ee03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240514 | `0xf3d20db1d16a4d0ad2f280a5e594ff3c7790f130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf52f8305c7b61800899dd36d140f6518614ea155` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 37
- Live contracts: 0
- Unknown liveness contracts: 37
- Source-verified contracts: 2
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=2, unverified unclassified=35

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | MoorToken<br>`0xfc280b8e8c2e574b99d63e29c75872737575c594` | non_address_book | unknown | unknown | verified | n/a | `0x97db25c707eb2136fb3fddb57bc945b8bad0df1f` |
| source verified unclassified | Rig<br>`0x2c4505e8cfdf91045d2d8e4247d7b11e776d100c` | non_address_book | unknown | unknown | verified | n/a | `0x97db25c707eb2136fb3fddb57bc945b8bad0df1f` |
| unverified unclassified | UnnamedContract<br>`0x05f886ddee0fe07496f6e38b0e140f8ef4655b16` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x0eb53e434854af3d8d24283fe803242e989f027c` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x19b5cc75846bf6286d599ec116536a333c4c2c14` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x1ada12341fb2fbcbcf38f56e8b8df73eb07d8f56` | non_address_book | unknown | unknown | unverified | n/a | `0x9de125ac3c9bf282478b381507767d2d15632708` |
| unverified unclassified | UnnamedContract<br>`0x1cd61731ce62e5691de2e547fa740bcd0663b1a8` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x27ee61849f38bb8122ce40f11620d9ff6504df94` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x2972ebb62e95d639d4282f78633f2cd05e5b3714` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x2c4df10a82cf077122ed99573aca6dacd76f2e67` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x33d3b4b66ae89e640d048e10f857ef0e20ed52cb` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x36fa1d4f525850794463d9bb47fc5a48295a9e45` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x3b9f8edb46c032643dcf25f227c23f21f04a5c8e` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x4ced0596344b58dd3b11ffc621da85f7f57a5972` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x5450ff2ea044a2ab16a4e7c4f6e58f9bdece0da9` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x574051bb22adee7841131da52537d36f9b2c2ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x9de125ac3c9bf282478b381507767d2d15632708` |
| unverified unclassified | UnnamedContract<br>`0x5865cc20c4ad480ff537c89ae797f26ca6b7f96c` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x5a725f508659f9846e5877e8625f9ea32b57d577` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x675b68aa4d9c2d3bb3f0397048e62e6b7192079c` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x6c1d9710b04a903fcfd61aef43632fd22fc25e71` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x6c644cf9b3ca2afb11f2218ec4a9f2a561c99626` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x6d5e306825ea6193ca57f3df754adf36a6a260a6` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x6d67857224f66d7a677f063b861b6bacafb10639` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x725b2b1a15d818e1f25c68be77816802e6036559` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0x788d6f99bad2ffec53cbb8ea3929b14f6aa6a9c5` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0x851bfd7ac2df61a50e16a4406cd50a89a6a63ec5` | non_address_book | unknown | unknown | unverified | n/a | `0x9de125ac3c9bf282478b381507767d2d15632708` |
| unverified unclassified | UnnamedContract<br>`0xa02f60b7f7b736e130ab97890110dea8bf03bf9e` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0xb0b005feaeacef201937612e2d7ac8e656c61d7b` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0xb3109036813ff48e523cef3818438e64ee04069d` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0xb3a8b7a17a669c55e6e74868076d79f759ad7349` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0xb73a8187654baaf7f58ff7866a72d04a5b0395bf` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0xd2f5cc4a954fe75c736af92c2974c746f0229ddf` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0xd31f45fb6c2011d41e489cb24b45810d578a3279` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0xde2d792ca3c4d02de3ce1cd1456d8d0990cc3fab` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0xe2c3af17f2bfb1b891051e0c072d6654ab6c0cdd` | non_address_book | unknown | unknown | unverified | n/a | `0xe7dcfe1b21d4b9899a80dc67847e03830a88585e` |
| unverified unclassified | UnnamedContract<br>`0xe384ca20326981cdfe697338f9c141ec41f5ee03` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |
| unverified unclassified | UnnamedContract<br>`0xf52f8305c7b61800899dd36d140f6518614ea155` | non_address_book | unknown | unknown | unverified | n/a | `0x65fa16715cc709b85f4f7c74e241ea65350a6cc0` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Fuel-Bridge-apr24(Public) (including Diffs).pdf](https://github.com/FuelLabs/audits/blob/master/Fuel-Bridge-apr24(Public)%20(including%20Diffs).pdf) | Unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [fuel-audit-september-2024(Connectors Predicates)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Connectors%20Predicates)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [fuel-audit-september-2024(Points Migration Function)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Points%20Migration%20Function)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [fuel_fast_bridge_audit_final.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_fast_bridge_audit_final.pdf) | Unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [audits (GitHub directory)](https://github.com/FuelLabs/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ChainSecurity_Fuel_Sway_Optimizations_audit.pdf](https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Optimizations_audit.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf](https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | high |
| [fuel-rollup-audit-may-2024.pdf](https://github.com/FuelLabs/audits/blob/master/fuel-rollup-audit-may-2024.pdf) | Unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [fuel-sway-standard-audit-july24(Public) (3).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-sway-standard-audit-july24(Public)%20(3).pdf) | Unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [fuel_core_audit_report.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_core_audit_report.pdf) | Unknown | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [fuel_vm_audit_report.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_vm_audit_report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2056] Fuel-Bridge-apr24(Public) (including Diffs).pdf — no match: Extracted contract names from scope section and findings. Audit date from 'delivered 15.04.2024'.
- [2057] fuel-audit-september-2024(Connectors Predicates)(Public).pdf — no match: Scope section lists two repositories: evm-predicates and solana-predicates. Findings reference specific files within these packages.
- [2058] fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'delivered 17.09.2024'.
- [2059] fuel-audit-september-2024(Points Migration Function)(Public).pdf — no match: Only PreDeposits.sol is in scope; other contracts like FuelERC20Gateway and FuelMessagePortal are mentioned as dependencies.
- [2062] fuel_fast_bridge_audit_final.pdf — no match: Extracted contract names from scope description and findings. The scope section describes the fuel-fast-bridge program but does not list individual files; however, findings reference specific contracts and files.
- [15177] audits (GitHub directory) — no match: The provided text is a GitHub repository page listing audit report PDFs, not the actual audit report content. No contract names or scope details are present.
- [15178] ChainSecurity_Fuel_Sway_Optimizations_audit.pdf — no match: Scope lists 9 Rust source files under sway-ir/src/optimize/. The audit date is June 24, 2024 from the cover page.
- [15179] ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf — no match: The audit is a code review of the Sway compiler's semantic analysis, not a smart contract audit. No smart contracts are in scope; only compiler source files under sway/sway-core/src/semantic_analysis/ and sway/sway-core/src/type_system/ are listed.
- [15183] fuel-rollup-audit-may-2024.pdf — no match: Extracted contracts from scope section and findings paths. Audit date from 'delivered 27.05.2024'.
- [15184] fuel-sway-standard-audit-july24(Public) (3).pdf — no match: The scope section only mentions a GitHub repository URL without listing specific contracts or files. The only contract reference is 'owned_proxy' from a file path in a finding, but it is not explicitly stated as in scope.
- [15185] fuel_core_audit_report.pdf — no match: Scope section lists executor, upgradeable-executor, importer, storage, consensus, relayer, proxy loader, and predicate and script blob. Audit date from cover page.
- [15187] fuel_vm_audit_report.pdf — no match: The audit scope is a single Rust program (fuel-vm), not individual smart contracts. The date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelERC20GatewayV4 | unmatched — not counted | — | listed in scope and findings | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelERC721Gateway | unmatched — not counted | — | mentioned in finding FUEL1-5 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelMessagePortal | unmatched — not counted | — | mentioned in findings FUEL1-10, FUEL1-6 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelMessagePortalV2 | unmatched — not counted | — | mentioned in finding FUEL1-10 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelMessagePortalV3 | unmatched — not counted | — | mentioned in finding FUEL1-7 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelChainState | unmatched — not counted | — | mentioned in finding FUEL1-6 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | CryptographyLib | unmatched — not counted | — | mentioned in finding FUEL1-14 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | bridge-fungible-token | unmatched — not counted | — | listed in scope and findings | no |
| fuel-audit-september-2024(Connectors Predicates)(Public).pdf | evm-predicates | unmatched — not counted | — | listed in scope and findings | no |
| fuel-audit-september-2024(Connectors Predicates)(Public).pdf | solana-predicates | unmatched — not counted | — | listed in scope and findings | no |
| fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf | FuelERC20GatewayV4 | unmatched — not counted | — | Listed in scope and findings paths | no |
| fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf | FuelMessagePortalV3 | unmatched — not counted | — | Listed in scope and findings paths | no |
| fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf | FuelChainState | unmatched — not counted | — | Listed in finding FUEL7-3 path | no |
| fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf | proxy | unmatched — not counted | — | Listed in finding FUEL7-10 path | no |
| fuel-audit-september-2024(Points Migration Function)(Public).pdf | PreDeposits | unmatched — not counted | — | listed in scope and findings | no |
| fuel_fast_bridge_audit_final.pdf | FastBridge | unmatched — not counted | — | mentioned in findings OS-FFB-ADV-04, OS-FFB-ADV-07, OS-FFB-SUG-04 | no |
| fuel_fast_bridge_audit_final.pdf | Outpost | unmatched — not counted | — | mentioned in findings OS-FFB-SUG-02, OS-FFB-SUG-05 | no |
| fuel_fast_bridge_audit_final.pdf | Messenger | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-03 | no |
| fuel_fast_bridge_audit_final.pdf | AssetRegistry | unmatched — not counted | — | mentioned in findings OS-FFB-ADV-10, OS-FFB-SUG-01, OS-FFB-SUG-05 | no |
| fuel_fast_bridge_audit_final.pdf | SRC20 | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-10 | no |
| fuel_fast_bridge_audit_final.pdf | WrappedAssetMinter | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-03 | no |
| fuel_fast_bridge_audit_final.pdf | OPStackGasPriceOracle | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-05 | no |
| fuel_fast_bridge_audit_final.pdf | EVMGasMonitor | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-05 | no |
| fuel_fast_bridge_audit_final.pdf | EnvioService | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-02 | no |
| fuel_fast_bridge_audit_final.pdf | EVMTransactionService | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-04 | no |
| fuel_fast_bridge_audit_final.pdf | DatabaseService | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-04 | no |
| fuel_fast_bridge_audit_final.pdf | GasPublisherTask | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-07 | no |
| fuel_fast_bridge_audit_final.pdf | ChainManager | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-01 | no |
| fuel_fast_bridge_audit_final.pdf | FuelTransactionService | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-09 | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | constants | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | dce | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | inline | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | fn_dedup | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | simplify_cfg | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | arg_demotion | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | ret_demotion | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | const_demotion | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | mem2reg | unmatched — not counted | — | listed in scope section | no |
| fuel-rollup-audit-may-2024.pdf | ProtoEncoding | unmatched — not counted | — | listed in scope and findings | no |
| fuel-rollup-audit-may-2024.pdf | SequencerProxy | unmatched — not counted | — | listed in scope and findings | no |
| fuel-rollup-audit-may-2024.pdf | TokenMigrator | unmatched — not counted | — | listed in scope and findings | no |
| fuel-rollup-audit-may-2024.pdf | SequencerInterface | unmatched — not counted | — | listed in scope and findings | no |
| fuel-rollup-audit-may-2024.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| fuel_core_audit_report.pdf | executor | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | upgradeable-executor | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | importer | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | storage | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | consensus | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | relayer | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | proxy loader | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | predicate and script blob | unmatched — not counted | — | listed in scope | no |
| fuel_vm_audit_report.pdf | fuel-vm | unmatched — not counted | — | Scope section: 'fuel-vm - A Rust interpreter for the Fuel Virtual Machine' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9ba9d8781ac7ce5adb8b8ec48aab521d0db5cd7e` | Rig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 52 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=2
- Match method counts: n/a

Zero-match audit list:

- [2056] Fuel-Bridge-apr24(Public) (including Diffs).pdf
- [2057] fuel-audit-september-2024(Connectors Predicates)(Public).pdf
- [2058] fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf
- [2059] fuel-audit-september-2024(Points Migration Function)(Public).pdf
- [2062] fuel_fast_bridge_audit_final.pdf
- [15177] audits (GitHub directory)
- [15178] ChainSecurity_Fuel_Sway_Optimizations_audit.pdf
- [15179] ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf
- [15183] fuel-rollup-audit-may-2024.pdf
- [15184] fuel-sway-standard-audit-july24(Public) (3).pdf
- [15185] fuel_core_audit_report.pdf
- [15187] fuel_vm_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
