# Agentic Audit Brief: OPEN Ticketing Ecosystem

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

- Project: OPEN Ticketing Ecosystem (`open-ticketing-ecosystem`)
- Website: [https://onopen.xyz](https://onopen.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, polygon
- Contract surface: 90 unique implementations (93 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $917,477.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for OPEN Ticketing Ecosystem. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base, ethereum, polygon. Structural roles: 2 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc20 (2), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1), solmate (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x27b50ca961480b35005d452e288600f6e4534ec6`, chain 137)
- UnnamedContract (`0x3f2fba6028f833e17c8087c385a4ef4fc52f62bf`, chain 137)
- UnnamedContract (`0x56ebd904aa2cc5696f9cb05fa2d2587db501a8f3`, chain 137)
- UnnamedContract (`0x748df336e5d1c6387e3fad5dec86fb9b1d4c3eda`, chain 137)
- UnnamedContract (`0x79fb70d8e1ade9608f7f7f7ba62821f8ca9f4e08`, chain 137)
- UnnamedContract (`0x821bacd7aac670ab7d80bcf74e517620d1a24700`, chain 137)
- UnnamedContract (`0xac1ffeea39e3db60599bdf6697988aa5f0ed26f4`, chain 137)
- UnnamedContract (`0xbf705239c90211bff2e4cf513c01209cda228af9`, chain 137)
- UnnamedContract (`0xe93ef19446c4e80207add5fa2cd3e0116e8959f4`, chain 137)
- OPNToken (`0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509`, chain 1)
- OptimismMintableERC20 (`0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe`, chain 8453)
- UChildERC20Proxy (`0x7844f79fc841e4f92d974c417031c76f8578c2d5`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 78 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 12 of 90 unique; 78 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 84
- Unique implementations: 90
- Raw deployments: 93
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| getNFT_ERC721V3 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2055244a719229d669488e389388f2d653a452f4` | ⚠️ Unaudited |
| GovernanceLockedRevenueDistributionToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04`; ethereum `0x686e8500b6be8812eb198aabbbfa14c95c03fc88`; polygon `0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04`; polygon `0x686e8500b6be8812eb198aabbbfa14c95c03fc88` | ⚠️ Unaudited |
| OPNMigration | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4cfd748b23c103f73c10259171ecc5ef1dd31da` | ⚠️ Unaudited |
| OPNToken | token | project_anchor | own_supporting | 0 | ethereum | unit-250316 | `0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-250326 | `0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe` | ⚠️ Unaudited |
| UChildERC20 | token | project_anchor | own_supporting | 1 | polygon | unit-250327 | `0x7844f79fc841e4f92d974c417031c76f8578c2d5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (84)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5cbf4ce042d65a1af0e1b4fd65123f94ebfe97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb85ef7cba61ea534c058e930aa5a4cab6d91484f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe11201bd3cd4934885f1dd050501a7160dc9c992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07bb757a118646956058514f08d4ca1d32ad6c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bd6ece2a69c9fb2a823697479678b98fc99d5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x141600519a1503c51ae15351bd640eee45f253a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a9c84db7311d67a78c571d1694758819f7e9465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f5f806ce7d699f6588678de591247196182d467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fb3721f8f4fdb97c717c404b9eb9fbf9b4e9aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20d5ac6e6223455cec10753d76590f39458f6007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250317 | `0x27b50ca961480b35005d452e288600f6e4534ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d2d60864ac782a45cf6f53b03bbf7a29dfede44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x308e44ca2153c61103b0dc67fd038de650912b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3184cfd66bf92aa53cebcb0f43a9ddd95f500f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33f73fe4a9c3ae7bb5f7b1dd29ce8d4b03fe1d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33fea4895d38ed10f46028adb4fcd0b52872337c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a91aeded517b45fcef1a11d2415131e71790817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b4edae1f2e1971c716a07fdaf65afb144141b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c61b9160e0d3c4bb3d35496ff61d41e34be8ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d0a65bb3f1f4ecab81e2dec8a7176b6e568ffb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3daa282179acf78448898c461b951e85785e4fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f0e867cd8d82c420517ca2f2d3d036cdf04b496` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250318 | `0x3f2fba6028f833e17c8087c385a4ef4fc52f62bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40309165fd78650dc82a58e160b3252a4529c9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x41e0d1701badd8f876df8c35c5d450cfeea0ab6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43ca6448c55d0475e6ee1a4afa9eb56906018058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4436c1340b17eaa39edae4a34a048230ad475e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bd6a50ef217256989ca6a732f706487cf99bb54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54621a56291736dbc4c8d0554b695c1582122443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x562ed85eaa78898584b1e3cea358f13dd0fa070e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250319 | `0x56ebd904aa2cc5696f9cb05fa2d2587db501a8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5793e6474dc291c3a5874491098dfd8e73920558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b4b8557161698a7ec343326c64bd378d7297c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d78104f576250d8d031dee865935359778fd19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62d0e96fd9b4e22f71cf2d2b930ecd142527c5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63556c96bdcd8c080be3f3e9fc934033fda4ee6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x635ce1e651531e52ebb76dcb94e779294b1fbb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66bd488cab7e2b4290eebd43b46906f1232f03af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6803d75fe3a536a28c1d014918b6d870cc5f89a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250320 | `0x748df336e5d1c6387e3fad5dec86fb9b1d4c3eda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250321 | `0x79fb70d8e1ade9608f7f7f7ba62821f8ca9f4e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a9b2f09add558742723abf38f95469e72ca8059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d25ea705a30dd1a7f449a3540869bd102de1a37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81f5638486c6e7da6b0452ed4f3f029750fb3ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250322 | `0x821bacd7aac670ab7d80bcf74e517620d1a24700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x899a9c0b1e299fef747279df99863d8da9c0acad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b50f6c49428ddcb0ba68ed152f189c094335ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e794383270792c2ab30632e152c4685f882ab27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x906b04af9c6dd8bb38ae8ad74986db656d2c87cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0419456c83d93c29bb7da1c0b3a42af79f5a848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa725f3c6fce3cc5fc0559490e46d031a8032305f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250323 | `0xac1ffeea39e3db60599bdf6697988aa5f0ed26f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5fb86e2316a5940082e7566834d0f55c0d3c3c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb26e7dad497aef90d68c00ca80ecb0eaf122c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb80c19a09309438b0b4a3a52775199e62d43dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd0a1d995aa3b8462542ab00941b9230dc1d381c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250324 | `0xbf705239c90211bff2e4cf513c01209cda228af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfa831771136917b580999b77776cd06732bc903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc280fe93c08997f2653baf32c11bc47972b0cec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc15f1f559c7e8a73640412c89e7e124475027a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd6d4ec724629c15c8beae96c0eb8b7977205882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcda348ff8c175f305ed8682003ec6f8743067f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce5c2e8080fb3d90f2ae227ead720d84cd6883e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf465b1fecdd38afa82ba5dd7e041f9d2bb8e65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd049c8e753eb8bf0346a7c761b952364397a9f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd39969c590d2556fce9e6779dacb3bcce16b1d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3f3171f33d5e7a90739868ee9142f59f99975f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd7f73b87040b106f699dcac62461c82d29c7b9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbddc6a436d26150b13173ab0a3c343449d0bf7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf14a9844659fb20b52794656e3ed4be0955d234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf5bda33e5ca96897aad08cfb501a38cc6b9bcb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe05db46a0a9fe18bcf140e37133ec4d65b917d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe16563b5c5ca5f990eea197efe55b9314e973f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe226cd24f85d6b22b4da37ee98f7641c438ad1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe35357e513f0ea7fa344de35bf13ec0c06eccaa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7defdd3765efab38aae261b1c0d1f65d936c229` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250325 | `0xe93ef19446c4e80207add5fa2cd3e0116e8959f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec73a3bc69973ffddbccdaf3a44a4170fcd8a5f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed343a86515f600118450c461ab37bebd99dcc17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedd5ed4f87bca83962abbaa1adab9b84096a07b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef7c53957f5fbb2226f9b96f701f700b785c0ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5258f3669c22979984a1f433c0870f8ae7aa1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8e13b3b62e41da402f892e6346deb646cb2a9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb69712a3837ac68b1212c5ab686c0e0d3969899` | ❓ Unverified |

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
| ethereum | `0xc28eb2250d1ae32c7e74cfb6d6b86afc9beb6509` | OPNToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9a6d24c02ec35ad970287ee8296d4d6552a31dbe` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7844f79fc841e4f92d974c417031c76f8578c2d5` | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 84 |

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
