# Agentic Audit Brief: HLP0

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: HLP0 (`hlp0`)
- Website: [https://www.hlp0.to/](https://www.hlp0.to/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 54 unique implementations (54 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $387,769.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for HLP0. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: abstract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3d75f2bb8abcdbd1e27443cb5cbce8a668046c81`, chain 42161)

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
- Outside the address book: 53 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 54 unique; 53 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 54
- Raw deployments: 54
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HLP0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0522f36aed206fa9055715c1e7d28114b45c8718` | ⚠️ Unaudited |
| HLPAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1425dbef278e3ce3c6a1cf9f75bad8f4cb3efdd2` | ⚠️ Unaudited |
| HLPSHARES | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ca13681dfb071de2c6461adb7a29a950743afdf` | ⚠️ Unaudited |
| HLPUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x91bd968a8bd27c08b9fc7173d0f475411a6214c5` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | arbitrum | unit-387249 | `0x3d75f2bb8abcdbd1e27443cb5cbce8a668046c81` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x052d8023b82a3e6bb93170803c0e5d7e1cfecd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x084692600bf1233c93537e8ab53f42d5721e9663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c4910d9a21e6f4a9ea60c24b321ad4b76874585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ed57fa6864ccc2015323d4cf973fc97bbcafac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13781a03dfaaa94fceed812121ef40651ccd0d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19787caacec1906ea56586deeb3abaa2cc7f37c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d312f58482923ddeabee072c939ad57175ca5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20914d39c8d83b1a067f1e8f0cb41e1348eac44c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x272ceac7deb762d8a063cc23c5def359dfbf6f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27760c65517a2cd56b56d0b7021a8facbd67ab59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3559593b6c9ad648e24447da365984bcdb764f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f674786bd931c485b5910d4175d514c5d91837c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42a32463f9ef5b40e6b2e34f44be5f95efac237e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42ace8104bcebfcd56e4ff0ec72e97e38e5d2727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47bc75aa02f6a763c3066de0bebc04f82487faeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57d084eff67bbbae1688df2d4b063aac178c00f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a3c4b488a11c1173776f2ccbc8bd92bf268db91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f6bdc20a3a5715dba4ad6e15815f92a76c693eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ff026a42ea04dd0b86e65bdb39fd1b3f8616dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d71a38013c5d88fabb1b5d8534a2d8aac9dd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e30a42f636ddaf6754a10792d85f2aa8d5123fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e5711f576a5e100028ebb04d427df3902527959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77f3a4a8ed6ab92bd83180c478691b9e53386859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78413ca9347a44e1a49ff54d17d1ee60d1ef82e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d4e978e3b281ea0cf11b9baf185d17438593d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dfde6ab231768d81a267bee9621d397bb381393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82c9dc2bf1ab6a8dcf814f56d13b4caced0ffaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83277e9fa4cdab01eedf8239dffac4a7e339aa11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x893c1546288e35182aaa0f5108ab57184d355ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e4212875d8c0f11a2035f8fcb30ad2cd90bf50f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x942adf81ef1c7ee821b1af6784e274e245adccdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cd5af75deae17ace672636ac2201f7f1f133fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4f357467effa2a18e2282cd4de4e0ddf31ce7fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9077afba8781094d0e17a0a1ffe42e10bc118c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab894addd59a1656d486cc6963fa5288ec831f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb22866011a4b9df451f005ce61806aaaa8cf935c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7848ed5424cd1ff1be27eecd5bc4b805ce301e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbeae7524b8193ef70942ed78a69c31a21cccd83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb29141fb7f01943b664ae3f19ec9f2dc440c23e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd42039807cfb50c8a8a8d6089531c0c464b2245d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd59887d984b2b775a11da5dbd19bb87a0200e5da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8aa810b9c23c7a80e1d5e67cf534dcf956b1e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0436bd21c8980b5390831283355709223fd259c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe33c4f8d61db59f28b84e77b32783766ad4c041e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeccc8255339e91645abe68d99d4b1d2e7e40eac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5ade7f5a92089065faf4a21090cbabf2879fe16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6c1779d5cbf5c446509e906cb1cbd99d6ae315c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9541f0f92cd11d7319f8f8adf249fe0426ddc40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb943101899fa1edea75aeb68ff7efeab511222a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 49
- Live contracts: 0
- Unknown liveness contracts: 49
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=49

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x052d8023b82a3e6bb93170803c0e5d7e1cfecd97` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x084692600bf1233c93537e8ab53f42d5721e9663` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x0c4910d9a21e6f4a9ea60c24b321ad4b76874585` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x0ed57fa6864ccc2015323d4cf973fc97bbcafac4` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x13781a03dfaaa94fceed812121ef40651ccd0d33` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x19787caacec1906ea56586deeb3abaa2cc7f37c3` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x1d312f58482923ddeabee072c939ad57175ca5bf` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x20914d39c8d83b1a067f1e8f0cb41e1348eac44c` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x272ceac7deb762d8a063cc23c5def359dfbf6f9a` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x27760c65517a2cd56b56d0b7021a8facbd67ab59` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x3559593b6c9ad648e24447da365984bcdb764f21` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x3f674786bd931c485b5910d4175d514c5d91837c` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x42a32463f9ef5b40e6b2e34f44be5f95efac237e` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x42ace8104bcebfcd56e4ff0ec72e97e38e5d2727` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x47bc75aa02f6a763c3066de0bebc04f82487faeb` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x57d084eff67bbbae1688df2d4b063aac178c00f3` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x5a3c4b488a11c1173776f2ccbc8bd92bf268db91` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x5f6bdc20a3a5715dba4ad6e15815f92a76c693eb` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x5ff026a42ea04dd0b86e65bdb39fd1b3f8616dac` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x60d71a38013c5d88fabb1b5d8534a2d8aac9dd97` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x6e30a42f636ddaf6754a10792d85f2aa8d5123fa` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x6e5711f576a5e100028ebb04d427df3902527959` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x77f3a4a8ed6ab92bd83180c478691b9e53386859` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x78413ca9347a44e1a49ff54d17d1ee60d1ef82e7` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x7d4e978e3b281ea0cf11b9baf185d17438593d81` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x7dfde6ab231768d81a267bee9621d397bb381393` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x82c9dc2bf1ab6a8dcf814f56d13b4caced0ffaaf` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x83277e9fa4cdab01eedf8239dffac4a7e339aa11` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x893c1546288e35182aaa0f5108ab57184d355ac5` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x8e4212875d8c0f11a2035f8fcb30ad2cd90bf50f` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x942adf81ef1c7ee821b1af6784e274e245adccdc` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0x9cd5af75deae17ace672636ac2201f7f1f133fc3` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xa4f357467effa2a18e2282cd4de4e0ddf31ce7fe` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xa9077afba8781094d0e17a0a1ffe42e10bc118c4` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xab894addd59a1656d486cc6963fa5288ec831f78` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xb22866011a4b9df451f005ce61806aaaa8cf935c` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xb7848ed5424cd1ff1be27eecd5bc4b805ce301e5` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xbeae7524b8193ef70942ed78a69c31a21cccd83f` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xcb29141fb7f01943b664ae3f19ec9f2dc440c23e` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xd42039807cfb50c8a8a8d6089531c0c464b2245d` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xd59887d984b2b775a11da5dbd19bb87a0200e5da` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xd8aa810b9c23c7a80e1d5e67cf534dcf956b1e5d` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xe0436bd21c8980b5390831283355709223fd259c` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xe33c4f8d61db59f28b84e77b32783766ad4c041e` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xeccc8255339e91645abe68d99d4b1d2e7e40eac7` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xf5ade7f5a92089065faf4a21090cbabf2879fe16` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xf6c1779d5cbf5c446509e906cb1cbd99d6ae315c` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xf9541f0f92cd11d7319f8f8adf249fe0426ddc40` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |
| unverified unclassified | UnnamedContract<br>`0xfb943101899fa1edea75aeb68ff7efeab511222a` | non_address_book | unknown | unknown | unverified | n/a | `0xd73e844755b3d09db80a277adca00f9b4b2833e5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

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
