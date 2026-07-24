# Agentic Audit Brief: Sovryn Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 17 (0 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Sovryn Bridge (`sovryn-bridge`)
- Website: [https://alpha.sovryn.app](https://alpha.sovryn.app)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, rootstock
- Contract surface: 167 unique implementations (169 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,420,653.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sovryn Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across bsc, ethereum, rootstock. Structural roles: 10 unclassified, 1 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (10), core (1), supporting (1)
- Contract kinds: contract (12)
- Detected standards: erc1967proxy (1)
- Frameworks: none
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AdminUpgradeabilityProxy (`0x33c0d33a0d4312562ad622f91d12b0ac47366ee1`, chain 1)
- AllowTokens (`0x05b68e70168e876b2025f837bc8e0b2312d5327d`, chain 56)
- BNBbs (`0xd2a826b78200c8434b957913ce4067e6e3169385`, chain 30)
- Bridge (`0xdfc7127593c8af1a17146893f10e08528f4c2aa7`, chain 56)
- BSC-RSK AllowTokens (`0xa2f50a2c699c1aa3b9089f6b565d4999d45d8983`, chain 30)
- BSC-RSK Bridge (`0x971b97c8cc82e7d27bc467c2dc3f219c6ee2e350`, chain 30)
- BSC-RSK Federation (`0xd1e45f51c8f09b139218fc75d26409096316971c`, chain 30)
- bSOV (`0x8753ede1b3a36358e4d7780f384f3f7a2d9e4359`, chain 56)
- eDLLR (`0xbdbb63f938c8961af31ead3deba5c96e6a323dd1`, chain 1)
- eSOV (`0xbdab72602e9ad40fc6a6852caf43258113b8f7a5`, chain 1)
- ETH-RSK AllowTokens (`0xd2090fe759613c3a3e2962c6bb2ad046f62d32ff`, chain 30)
- ETH-RSK Bridge (`0x1ccad820b6d031b41c54f1f3da11c0d48b399581`, chain 30)
- ETH-RSK Federation (`0x32593e4f7a4991c2fe17459dae9920fd612855b4`, chain 30)
- ETHbs (`0x30d1b36924c2c0cd1c03ec257d7fff31bd8c3007`, chain 30)
- ETHes (`0xfe878227c8f334038dab20a99fc3b373ffe0a755`, chain 30)
- Federation (`0xd77b76a65a19715bdcb5ee223928af2919836a3e`, chain 1)
- Federation (`0x502fbce27973d4be1e69a4099046762251d005b4`, chain 56)
- WBNB bridge internal (`0xb6c313a427fa911a4c9a119e80feea0fe20e69f0`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (11 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 143 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 20 of 167 unique; 147 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 152
- Unique implementations: 167
- Raw deployments: 169
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392878 | `0x33c0d33a0d4312562ad622f91d12b0ac47366ee1` | ⚠️ Unaudited |
| AllowTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1486e225ee099f7ea491e32cd2a69e8264f70fe0`; ethereum `0x9d772ca9dd5b7025acc23ed4bb2da9819f9789fd` | ⚠️ Unaudited |
| AllowTokens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392856 | `0x8df20c2c85bee0c3da250da96d892598c70aa1be` | ⚠️ Unaudited |
| AllowTokens | unknown | project_anchor | own_supporting | 0 | bsc | unit-392872 | `0x05b68e70168e876b2025f837bc8e0b2312d5327d` | ⚠️ Unaudited |
| Bridge | unknown | project_anchor | own_supporting | 0 | bsc | unit-392876 | `0xdfc7127593c8af1a17146893f10e08528f4c2aa7` | ⚠️ Unaudited |
| BSC-RSK Bridge | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392864 | `0x971b97c8cc82e7d27bc467c2dc3f219c6ee2e350` | ⚠️ Unaudited |
| eDLLR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392858 | `0xbdbb63f938c8961af31ead3deba5c96e6a323dd1` | ⚠️ Unaudited |
| eSOV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392857 | `0xbdab72602e9ad40fc6a6852caf43258113b8f7a5` | ⚠️ Unaudited |
| ETH-RSK Bridge | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392861 | `0x1ccad820b6d031b41c54f1f3da11c0d48b399581` | ⚠️ Unaudited |
| Federation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2493b92b3b958c8d1e93899cae00bfc4854cbd18`; ethereum `0xa38e6a92495a58a05969846a21d5cbb41dc4df24` | ⚠️ Unaudited |
| Federation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392860 | `0xd77b76a65a19715bdcb5ee223928af2919836a3e` | ⚠️ Unaudited |
| Federation | unknown | project_anchor | own_supporting | 0 | bsc | unit-392873 | `0x502fbce27973d4be1e69a4099046762251d005b4` | ⚠️ Unaudited |
| MultiSigWallet | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-392855 | `0x062c74f9d27b1178bb76186c1756128ccb3ccd2e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6001073ef1ba973e53719766780b95667512c07` | ⚠️ Unaudited |
| WBNB bridge internal | unknown | project_anchor | own_supporting | 0 | bsc | unit-392875 | `0xb6c313a427fa911a4c9a119e80feea0fe20e69f0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (152)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BNBbs | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392869 | `0xd2a826b78200c8434b957913ce4067e6e3169385` | ❓ Unverified |
| BSC-RSK AllowTokens | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392865 | `0xa2f50a2c699c1aa3b9089f6b565d4999d45d8983` | ❓ Unverified |
| BSC-RSK Federation | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392867 | `0xd1e45f51c8f09b139218fc75d26409096316971c` | ❓ Unverified |
| bSOV | unknown | project_anchor | own_supporting | 0 | bsc | unit-392874 | `0x8753ede1b3a36358e4d7780f384f3f7a2d9e4359` | ❓ Unverified |
| ETH-RSK AllowTokens | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392868 | `0xd2090fe759613c3a3e2962c6bb2ad046f62d32ff` | ❓ Unverified |
| ETH-RSK Federation | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392863 | `0x32593e4f7a4991c2fe17459dae9920fd612855b4` | ❓ Unverified |
| ETHbs | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392862 | `0x30d1b36924c2c0cd1c03ec257d7fff31bd8c3007` | ❓ Unverified |
| ETHes | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392871 | `0xfe878227c8f334038dab20a99fc3b373ffe0a755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05b68e70168e876b2025f837bc8e0b2312d5327d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e3ba4e69762a1ee02bf34a3353756c0086438e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d3c70ea390437ac520123260b5a915d9c0b0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9edea53a1d4681f42a21ee846b22095d699c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d937dbadbe6aa80b954d2aa1164f8ae9ca99914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d952407478407a0f461c3341f735bdb3248fade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249ea34234f469a91f8fec130320cdb205744faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29cdad148c715b853f64d0d917358b88c5633b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32593e4f7a4991c2fe17459dae9920fd612855b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x347ac5da69c1eb1a0b141063ee4a936b9d1554ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49eef28c3fc0504ef5974a524e343cf26fecf420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603e8247012516b01c6279fffe2879c2fbd24d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657595ae6082f451b11a0103b8126f5c9465bea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67bb746ecc46eb3cf80b69191c18d0d098477880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72efb4b0932aea334b51c60046c8093f5fe0e0d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74aa9b461cad174ca066fc80af2151c96bd4d45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752fa1171dd6f07ad818ea5e6dc2c9afda928537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8027e05761045704f8237ebdbb72bae56a05a500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x882619af8aa0f1946d9f375e64994e1246f9b52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8908c967ffe8620eef74068ccddab0d9cfc8eba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8be5c4268c5921446bb779d28e19fc8c440dc148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97d761d49a137e8bc140e5db95bc148c529e37bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa908bc57fbf079729f10017580a6bdf31e9ca92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad95d2857f6a657b0b3ff538df028b0e2e806453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed21f39d3df35dc6795b1e90a1f13151ee3c391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14b356ef1dcd94905b77f1827331c989f469379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4ba8c260e09926523d8ffdb3fd9194c3fc79156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c313a427fa911a4c9a119e80feea0fe20e69f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7405c2b015b476e9bfb1a7e46e1e78ec00a7e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b0370dfbb0c94add416001f50d90beac4d8868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b2a9e31f69e4f0bc24584c678c582714a4fa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc51579e62354a6e07e3706cabe180b7c26148959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc81a826b34bbe9bb7b951dfb0cbc130189c16ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0ee3652c83d8b7347e0ae083d50f3778c6971d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd53ea4399c4cc21a6c750b413e4a17aff6000fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5ab753662879441c295fade0f27222ee4d57cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b220491bf398fbe593b79844e8ba6866ae8ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd913f2dde72f8565d05c3faeeab37e6bb4be216c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0a8251162f820f81976e133cfaa9a0a536378d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b1ad78291dd6866a646a351ae0ab6228836747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8d817d2cc9185743076c405c905f7b24342eb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29fd896a43287a2b6f1b260c8263d7372c7c374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9a59a649859a27d664c8bdb51fa53bcb268545c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc8957fdd44499f0e223a26b66d6ef0d1e06196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4e2a5d646e4398b34ec5b24a340ddb26509d6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rootstock | unit-392866 | `0xb64322e10b5ae1be121b8bb0dead560c53d9dbc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rootstock | unit-392870 | `0xee9ea57555d9533d71f6f77e0e480961f068a6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x062c74f9d27b1178bb76186c1756128ccb3ccd2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e1f2faa9f93ddcc31aea330aba319b435e82234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e317b1011fa8725245c5893a66c57ad8022edb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x103799e510180e0bd59ce5473e336f02d9430011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1486e225ee099f7ea491e32cd2a69e8264f70fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18e9bf235baa3a7cbfd65b40465d25788b6e208c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19d3c70ea390437ac520123260b5a915d9c0b0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a523675931c1005af3284d511af9de806c49d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a98f4e6df0dd48c519179d4289feb7c1700dd59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b5fe0cdd01fa7278244b4b2d7b434fe83d88db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cbab65c784a311674d2636705fe1d01b13e5632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d88c935d7e3f4591486e0b1bc909a38ae76e1db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21f99888197c7d8239682122a41220c2903bba85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x249ea34234f469a91f8fec130320cdb205744faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2591c762e8c9fe28a03b035b380110dd599ae987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26703d882fa0a47feaa3becadd8142390820d605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29430a47a260c4ca0af4991a70627005b358a5b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29b419796ba884e2a83971640413bbbb7b9f1504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e7f19087b61cb1278471a5c9686e3b08fe55ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33f8743d5afa519dd373a75e7aa5c255e2c82468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x363f7d60ea0adf33e210dc00d6d31830a7c4e77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3abc4fc0059765fab5b9d2fbfc25e7e962c3720a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ba08fed194041aac519d68f64e63c14fec7e2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d898513795325a36b47bbc84c831e5bec424a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41513315daab5ca4e7cd3ecc9d34c7f514ca782d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4535ba49262bf2d7681a833134a7bd83e9079838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4736e384991ea267483d42524e61738295495752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d07103c341aa562c2ddf8545556a9a569136111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5504b3205583f77d8be487fc399db2e91366946f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x556a2a1c14d291657fb192aac7e060ff89ee391c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58239c76da901dbbe5289d9e8cf4814af891180a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5862f876fb8babd8163adf72758a745f10772d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b25abb1395443b48a27f018b5ab54e46ab01b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ba15827402880d205b2f88c94faac411893267f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e6db8dbed3286c4fbe53ac8b0e203e93029bed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x613dc321a6907ef70ed351cf81e34d8a8c772bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62905e247ca3dfea41fe2620143f36469a17424f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68558a6cd89b4e93c9a01d7519a2d6c6568a3700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68fcb99641a3f88d3b7d63ba625ba0b1765c5a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b1a0c09eb28ce2649383032c85bab9cb1fc34b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d212bb9059a1761592ed199be9955f0dfbf141e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e5f68f38269ea558805bc1c70cd7cdd536f557f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x769c0b52c83d335705fb10b7b78b0c7637c3a6e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cac48a646b931b08bccfa9715f95d25f425cd1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d4a85c8d823bb027eb61de5cf80c9115fb77532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e1d65e22a6e05f3b4253c4ef29e6b96ca3121a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8087656f9e64e494963ed55c74f526304c7e9950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81fc19bd8fe7ebae5f691213846cdf3da33db1c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88ec954f5818d7c5caaef65e8c982e69062ec3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c69e30e4a2cba4e2a287ef7a9f6624330505aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8df20c2c85bee0c3da250da96d892598c70aa1be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fd86a2270cd5a2c2e0d6848993cfa1c732a7fcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93360c8f5cba00826d701f38a0eb35f77ccac672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9691cd28b385b0158c57941e1b71403aac926c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99896b7e917ff9c130bb86cde0d778be37e3464c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b989525b5836cbabf1017980d974c352a39f94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d46b33171ea7124aee472bfe61b5b7084b55069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d772ca9dd5b7025acc23ed4bb2da9819f9789fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa24f4649449df57e84f36ae707d5414361de0b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa28299ca22e4711023b3924f9af1465110731f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa56de6add4b9ae9a669785e7b2a1f8ef4127bb91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa73b33711a7e2f92a335f777a50983c1147a2486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad9015e33bc2cf1bdb49d312476c18208d91c6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae485ca5af1a976110a93ca4a23804361207a337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaed21f39d3df35dc6795b1e90a1f13151ee3c391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3bb4f0a79a993b37e63671c234e07a1eeae8f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4ba8c260e09926523d8ffdb3fd9194c3fc79156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb56cddaf6355c39ee97d6a2ccc1651863e1a7f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb995be2d86af2ffa05796f0059a4467f007f4c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaa1c0b21452b6808e63764a580e20ecc4234a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4b5178cc086e764568adfb2daccbb0d973e8132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc51579e62354a6e07e3706cabe180b7c26148959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6e039d90d76cfcbb55d8324585dc3a2d9c045b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc81a826b34bbe9bb7b951dfb0cbc130189c16ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc882283499534a2e539f8426cd2bce29df6deb6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd02990a07d0f5a6255b6ec874aac3c98cae4dd6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6001073ef1ba973e53719766780b95667512c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd77b76a65a19715bdcb5ee223928af2919836a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd913f2dde72f8565d05c3faeeab37e6bb4be216c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd4943110dfebd61fbc87fa091c750cdd1a1d7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd6ce8081dbdd991219096cce91ea5723b68e61a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde1adb8e656c06ec92b2a1dc2b930f81332f7f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdfb87727c6c03bed73a9cb34c3120f4777f88c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0a8251162f820f81976e133cfaa9a0a536378d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe46008de703e976e2c073a773378b5172c455460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8d817d2cc9185743076c405c905f7b24342eb4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-392877 | `0xec3fabc3517e64e07669dd1d2d673f466f93a328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0dce22c2fe5d97a19e4cf3d621bc1845924db27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2c88e96f7b15cbd47c4fac849897f5c7089c03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf300e09958cee25453da4d7405045c43bfec602f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3b3532c68571f8c7fbdb97d2468f423bf79b5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3fa3fe72efad000febd5f7460c505224a08012f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb6e227b60c082bfb4bb66b30be98ea38d3c4976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc321356bb2ca3d68fafe9515c24c9b23b63a6a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfced26ee93d39b208b69e09ecd1437b8028e7679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe4e2a5d646e4398b34ec5b24a340ddb26509d6b` | ❓ Unverified |
| WETH bridge internal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392859 | `0xd412acd34a832a09c80c8a4895ff46d733f09538` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 148
- Live contracts: 3
- Unknown liveness contracts: 145
- Source-verified contracts: 7
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=6, exact address book overlap=1, source verified unclassified=1, unverified unclassified=140

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AllowTokens<br>`0x1486e225ee099f7ea491e32cd2a69e8264f70fe0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| candidate review | AllowTokens<br>`0x8df20c2c85bee0c3da250da96d892598c70aa1be` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| candidate review | AllowTokens<br>`0x9d772ca9dd5b7025acc23ed4bb2da9819f9789fd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| candidate review | Federation<br>`0x2493b92b3b958c8d1e93899cae00bfc4854cbd18` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| candidate review | Federation<br>`0xa38e6a92495a58a05969846a21d5cbb41dc4df24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| candidate review | WETH bridge internal<br>`0xd412acd34a832a09c80c8a4895ff46d733f09538` | project_anchor | unknown | live | unverified | review: missing_fingerprint | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| exact address book overlap | AdminUpgradeabilityProxy<br>`0x33c0d33a0d4312562ad622f91d12b0ac47366ee1` | project_anchor | unknown | live | verified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| source verified unclassified | ProxyAdmin<br>`0xd6001073ef1ba973e53719766780b95667512c07` | non_address_book | unknown | unknown | verified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x05b68e70168e876b2025f837bc8e0b2312d5327d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x09e3ba4e69762a1ee02bf34a3353756c0086438e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x19d3c70ea390437ac520123260b5a915d9c0b0f1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x1c9edea53a1d4681f42a21ee846b22095d699c8f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x1d937dbadbe6aa80b954d2aa1164f8ae9ca99914` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x1d952407478407a0f461c3341f735bdb3248fade` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x249ea34234f469a91f8fec130320cdb205744faf` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x29cdad148c715b853f64d0d917358b88c5633b71` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x32593e4f7a4991c2fe17459dae9920fd612855b4` | non_address_book | unknown | unknown | unverified | n/a | `0xca11aad3083323ea3af263e3a598aa8b9a9a2f52` |
| unverified unclassified | UnnamedContract<br>`0x347ac5da69c1eb1a0b141063ee4a936b9d1554ae` | non_address_book | unknown | unknown | unverified | n/a | `0xca11aad3083323ea3af263e3a598aa8b9a9a2f52` |
| unverified unclassified | UnnamedContract<br>`0x49eef28c3fc0504ef5974a524e343cf26fecf420` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x603e8247012516b01c6279fffe2879c2fbd24d5e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x657595ae6082f451b11a0103b8126f5c9465bea9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x67bb746ecc46eb3cf80b69191c18d0d098477880` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x72efb4b0932aea334b51c60046c8093f5fe0e0d8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x74aa9b461cad174ca066fc80af2151c96bd4d45f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x752fa1171dd6f07ad818ea5e6dc2c9afda928537` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x8027e05761045704f8237ebdbb72bae56a05a500` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x882619af8aa0f1946d9f375e64994e1246f9b52f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x8908c967ffe8620eef74068ccddab0d9cfc8eba9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x8be5c4268c5921446bb779d28e19fc8c440dc148` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x97d761d49a137e8bc140e5db95bc148c529e37bc` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xa908bc57fbf079729f10017580a6bdf31e9ca92a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xad95d2857f6a657b0b3ff538df028b0e2e806453` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xaed21f39d3df35dc6795b1e90a1f13151ee3c391` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb14b356ef1dcd94905b77f1827331c989f469379` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb4ba8c260e09926523d8ffdb3fd9194c3fc79156` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb6c313a427fa911a4c9a119e80feea0fe20e69f0` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb7405c2b015b476e9bfb1a7e46e1e78ec00a7e41` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb8b0370dfbb0c94add416001f50d90beac4d8868` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xc0b2a9e31f69e4f0bc24584c678c582714a4fa1b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xc51579e62354a6e07e3706cabe180b7c26148959` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xc81a826b34bbe9bb7b951dfb0cbc130189c16ed5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xcf0ee3652c83d8b7347e0ae083d50f3778c6971d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xd53ea4399c4cc21a6c750b413e4a17aff6000fa8` | non_address_book | unknown | unknown | unverified | n/a | `0xca11aad3083323ea3af263e3a598aa8b9a9a2f52` |
| unverified unclassified | UnnamedContract<br>`0xd5ab753662879441c295fade0f27222ee4d57cad` | non_address_book | unknown | unknown | unverified | n/a | `0xca11aad3083323ea3af263e3a598aa8b9a9a2f52` |
| unverified unclassified | UnnamedContract<br>`0xd6b220491bf398fbe593b79844e8ba6866ae8ec2` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xd913f2dde72f8565d05c3faeeab37e6bb4be216c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xe0a8251162f820f81976e133cfaa9a0a536378d8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xe1b1ad78291dd6866a646a351ae0ab6228836747` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xe8d817d2cc9185743076c405c905f7b24342eb4e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xf29fd896a43287a2b6f1b260c8263d7372c7c374` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xf9a59a649859a27d664c8bdb51fa53bcb268545c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xfcc8957fdd44499f0e223a26b66d6ef0d1e06196` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xfe4e2a5d646e4398b34ec5b24a340ddb26509d6b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x062c74f9d27b1178bb76186c1756128ccb3ccd2e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x0e1f2faa9f93ddcc31aea330aba319b435e82234` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x0e317b1011fa8725245c5893a66c57ad8022edb1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x103799e510180e0bd59ce5473e336f02d9430011` | non_address_book | unknown | unknown | unverified | n/a | `0xca11aad3083323ea3af263e3a598aa8b9a9a2f52` |
| unverified unclassified | UnnamedContract<br>`0x1486e225ee099f7ea491e32cd2a69e8264f70fe0` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x18e9bf235baa3a7cbfd65b40465d25788b6e208c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x19d3c70ea390437ac520123260b5a915d9c0b0f1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x1a523675931c1005af3284d511af9de806c49d84` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x1a98f4e6df0dd48c519179d4289feb7c1700dd59` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x1b5fe0cdd01fa7278244b4b2d7b434fe83d88db4` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x1cbab65c784a311674d2636705fe1d01b13e5632` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x1d88c935d7e3f4591486e0b1bc909a38ae76e1db` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x21f99888197c7d8239682122a41220c2903bba85` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x249ea34234f469a91f8fec130320cdb205744faf` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x2591c762e8c9fe28a03b035b380110dd599ae987` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x26703d882fa0a47feaa3becadd8142390820d605` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x29430a47a260c4ca0af4991a70627005b358a5b9` | non_address_book | unknown | unknown | unverified | n/a | `0xca11aad3083323ea3af263e3a598aa8b9a9a2f52` |
| unverified unclassified | UnnamedContract<br>`0x29b419796ba884e2a83971640413bbbb7b9f1504` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x2e7f19087b61cb1278471a5c9686e3b08fe55ffb` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x33f8743d5afa519dd373a75e7aa5c255e2c82468` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x363f7d60ea0adf33e210dc00d6d31830a7c4e77c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x3abc4fc0059765fab5b9d2fbfc25e7e962c3720a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x3ba08fed194041aac519d68f64e63c14fec7e2ef` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x3d898513795325a36b47bbc84c831e5bec424a77` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x41513315daab5ca4e7cd3ecc9d34c7f514ca782d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x4535ba49262bf2d7681a833134a7bd83e9079838` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x4736e384991ea267483d42524e61738295495752` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x4d07103c341aa562c2ddf8545556a9a569136111` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x5504b3205583f77d8be487fc399db2e91366946f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x556a2a1c14d291657fb192aac7e060ff89ee391c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x58239c76da901dbbe5289d9e8cf4814af891180a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x5862f876fb8babd8163adf72758a745f10772d3b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x5b25abb1395443b48a27f018b5ab54e46ab01b68` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x5ba15827402880d205b2f88c94faac411893267f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x5e6db8dbed3286c4fbe53ac8b0e203e93029bed6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x613dc321a6907ef70ed351cf81e34d8a8c772bb5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x62905e247ca3dfea41fe2620143f36469a17424f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x68558a6cd89b4e93c9a01d7519a2d6c6568a3700` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x68fcb99641a3f88d3b7d63ba625ba0b1765c5a9a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x6b1a0c09eb28ce2649383032c85bab9cb1fc34b1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x6d212bb9059a1761592ed199be9955f0dfbf141e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x6e5f68f38269ea558805bc1c70cd7cdd536f557f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x769c0b52c83d335705fb10b7b78b0c7637c3a6e0` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x7cac48a646b931b08bccfa9715f95d25f425cd1d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x7d4a85c8d823bb027eb61de5cf80c9115fb77532` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x7e1d65e22a6e05f3b4253c4ef29e6b96ca3121a4` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x8087656f9e64e494963ed55c74f526304c7e9950` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x81fc19bd8fe7ebae5f691213846cdf3da33db1c4` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x88ec954f5818d7c5caaef65e8c982e69062ec3c3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x8c69e30e4a2cba4e2a287ef7a9f6624330505aff` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x8df20c2c85bee0c3da250da96d892598c70aa1be` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x8fd86a2270cd5a2c2e0d6848993cfa1c732a7fcd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x93360c8f5cba00826d701f38a0eb35f77ccac672` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x9691cd28b385b0158c57941e1b71403aac926c30` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x99896b7e917ff9c130bb86cde0d778be37e3464c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x9b989525b5836cbabf1017980d974c352a39f94e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x9d46b33171ea7124aee472bfe61b5b7084b55069` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0x9d772ca9dd5b7025acc23ed4bb2da9819f9789fd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xa24f4649449df57e84f36ae707d5414361de0b2c` | non_address_book | unknown | unknown | unverified | n/a | `0xca11aad3083323ea3af263e3a598aa8b9a9a2f52` |
| unverified unclassified | UnnamedContract<br>`0xa28299ca22e4711023b3924f9af1465110731f88` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xa56de6add4b9ae9a669785e7b2a1f8ef4127bb91` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xa73b33711a7e2f92a335f777a50983c1147a2486` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xad9015e33bc2cf1bdb49d312476c18208d91c6d7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xae485ca5af1a976110a93ca4a23804361207a337` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xaed21f39d3df35dc6795b1e90a1f13151ee3c391` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb3bb4f0a79a993b37e63671c234e07a1eeae8f17` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb4ba8c260e09926523d8ffdb3fd9194c3fc79156` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb56cddaf6355c39ee97d6a2ccc1651863e1a7f84` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xb995be2d86af2ffa05796f0059a4467f007f4c1b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xbaa1c0b21452b6808e63764a580e20ecc4234a39` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xc4b5178cc086e764568adfb2daccbb0d973e8132` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xc51579e62354a6e07e3706cabe180b7c26148959` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xc6e039d90d76cfcbb55d8324585dc3a2d9c045b1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xc81a826b34bbe9bb7b951dfb0cbc130189c16ed5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xc882283499534a2e539f8426cd2bce29df6deb6e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xd02990a07d0f5a6255b6ec874aac3c98cae4dd6b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xd6001073ef1ba973e53719766780b95667512c07` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xd77b76a65a19715bdcb5ee223928af2919836a3e` | non_address_book | unknown | unknown | unverified | n/a | `0xca11aad3083323ea3af263e3a598aa8b9a9a2f52` |
| unverified unclassified | UnnamedContract<br>`0xd913f2dde72f8565d05c3faeeab37e6bb4be216c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xdd4943110dfebd61fbc87fa091c750cdd1a1d7d3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xdd6ce8081dbdd991219096cce91ea5723b68e61a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xde1adb8e656c06ec92b2a1dc2b930f81332f7f9a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xdfb87727c6c03bed73a9cb34c3120f4777f88c3f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xe0a8251162f820f81976e133cfaa9a0a536378d8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xe46008de703e976e2c073a773378b5172c455460` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xe8d817d2cc9185743076c405c905f7b24342eb4e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xf0dce22c2fe5d97a19e4cf3d621bc1845924db27` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xf2c88e96f7b15cbd47c4fac849897f5c7089c03a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xf300e09958cee25453da4d7405045c43bfec602f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xf3b3532c68571f8c7fbdb97d2468f423bf79b5e0` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xf3fa3fe72efad000febd5f7460c505224a08012f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xfb6e227b60c082bfb4bb66b30be98ea38d3c4976` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xfc321356bb2ca3d68fafe9515c24c9b23b63a6a6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xfced26ee93d39b208b69e09ecd1437b8028e7679` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |
| unverified unclassified | UnnamedContract<br>`0xfe4e2a5d646e4398b34ec5b24a340ddb26509d6b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc83580abf622ec75f69b56ddf945dd6cdbf53d2` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [omniscia.io/reports/sovryn-bridge-implementation-v4](https://omniscia.io/reports/sovryn-bridge-implementation-v4) | Omniscia | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/DistributedCollective/sovryn-audits/main/Least%20Authority%20-%20Sovryn%20Bi-directional%20FastBTC%20Final%20Audit%20Report.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Manual audit seed](https://wiki.sovryn.com/en/technical-documents/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [System-wide Sovryn Smart Contract Audit by CertiK, October 2021 (also discovered via alternate URL)](https://raw.githubusercontent.com/DistributedCollective/sovryn-audits/main/certik-pre-sovryn-2021-10-11.pdf) | CertiK | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Smart%20Contract%20Audit_%20Zero.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 60 | high |
| [Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Smart%20Contract%20Audit_Origins.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |
| [BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021](https://omniscia.io/reports/sovryn-babelfish-protocol-v1) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Staking Contract Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Staking_Smart_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Genesis Sale Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Genesis_Sale_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [cSOV Token Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_CSOV_Token_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Sovryn Governance Security Audit v210115.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Governance%20Security%20Audit%20v210115.pdf) | yAudit | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Governance Audit by Franklin Richards, December 2020](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Governance_Smart_Contract_Audit.pdf) | Franklin Richards | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Smart Contract Source Code Audit, December 2020](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Security%20Audit%20Smart%20Contracts%20v201218.pdf) | yAudit | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Audit by Pessimistic, October 7, 2020](https://sovryn.app/images/pdf/SovrynAudit2020.pdf) | Pessimistic | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Sovryn Security Recheck.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Security%20Recheck.pdf) | Unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21319] omniscia.io/reports/sovryn-bridge-implementation-v4 — no match: Extracted 9 contract names from the 'Files in Scope' section. No audit date found in the provided text.
- [21320] Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf — no match: The report mentions a 'smart contract suite' but does not list specific contract names or file paths. The scope section only references a GitHub repository and commit hash, not individual contracts.
- [24484] Manual audit seed — no match: The provided text is a list of audit reports and references, not an actual audit report with a scope section. No specific contracts in scope are mentioned.
- [24485] System-wide Sovryn Smart Contract Audit by CertiK, October 2021 — no match: No reason recorded
- [24486] Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 — no match: All contracts listed in the 'Tested Contract Files' section (pages 9-11) and 'Source Unites in Scope' table (pages 15-21) are included. The audit date is from the final document version 1.0 on page 3.
- [24487] Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 — no match: All contracts listed in the 'Tested Contract Files' section (pages 9-10) and 'Source Unites in Scope' table (pages 14-17) are included. The audit date is from the cover page and final document version.
- [24488] BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 — no match: Extracted 10 contract names from the 'Files in Scope' table. No audit date found in the provided text.
- [24490] Staking Contract Audit by Franklin Richards, January 2021 — no match: All contracts listed in the introduction section with full GitHub URLs.
- [24491] Genesis Sale Audit by Franklin Richards, January 2021 — no match: Only one contract, CrowdSale, is explicitly mentioned as the audited contract.
- [24492] cSOV Token Audit by Franklin Richards, January 2021 — no match: Only one contract, CSOVToken, is explicitly mentioned as the audited contract.
- [24493] Sovryn Governance Security Audit v210115.pdf — no match: Extracted 17 contract names from the scope section listing Solidity source files with sha256sum hashes. Audit date inferred from 'January 2021' on cover page, using last day of month.
- [24494] Governance Audit by Franklin Richards, December 2020 — no match: Only one contract in scope: GovernorAlpha
- [24495] Smart Contract Source Code Audit, December 2020 — no match: Extracted contract names from Phase 1 and Phase 3 descriptions, findings, and file paths. Audit date inferred from 'December 2020' in executive summary and remediation section.
- [24496] Audit by Pessimistic, October 7, 2020 — no match: The report does not have a clear scope section listing contracts; contracts are inferred from pull requests and issues. The audit date is from the publication date.
- [24498] Sovryn Security Recheck.pdf — no match: The report explicitly lists 4 pull requests as scope, but only three contract names are mentioned in findings: ConverterRegisry, LoanClosings, SwapsUser. The report does not list all contracts in the repositories; only those with issues are named.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| omniscia.io/reports/sovryn-bridge-implementation-v4 | AllowTokens | ambiguous — not counted | AllowTokens (alternative) `0x05b68e70168e876b2025f837bc8e0b2312d5327d` — deployed 2021-06-01 11:46:38+03 — liveness: live (current_address_book_code)<br>AllowTokens (alternative) `0x8df20c2c85bee0c3da250da96d892598c70aa1be` — deployed 2021-05-22 18:22:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | Bridge | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x33c0d33a0d4312562ad622f91d12b0ac47366ee1` — deployed 2021-03-25 22:36:33+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xdfc7127593c8af1a17146893f10e08528f4c2aa7` — deployed 2021-06-01 11:38:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | Federation | ambiguous — not counted | Federation (alternative) `0x502fbce27973d4be1e69a4099046762251d005b4` — deployed 2022-09-07 10:55:28+03 — liveness: live (current_address_book_code)<br>Federation (alternative) `0xd77b76a65a19715bdcb5ee223928af2919836a3e` — deployed 2022-09-07 11:03:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | IErc777Receiver | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | MultiSigWallet | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | SideToken | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | SideTokenFactory | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | Utils | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | erc777Converter | unmatched — not counted | — | listed in scope | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZUSDToken | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | LiquityBaseParams | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | HintHelpers | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | SortedTrovesStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | SortedTroves | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | MultiTrovesGetter | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | DefaultPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CollSurplusPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | UpgradableProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | StabilityPoolStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | PriceFeedStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ActivePoolStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | PriceFeed | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | BorrowerOperationsStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | TroveManager | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | BorrowerOperations | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | TroveManagerStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ETHTransferScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | BorrowerWrappersScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | Proxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ActivePool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROStakingScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | TokenScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | TroveManagerScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | StabilityPoolScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | BorrowerOperationsScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ISortedTroves | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IBorrowerOperations | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | MultiTroveGetterStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | StabilityPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | GasPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | HintHelpersStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | DefaultPoolStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZUSDTokenStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CollSurplusPoolStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IStabilityPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IDefaultPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ITroveManager | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CommunityIssuance | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | LockupContractFactory | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IZEROToken | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CommunityIssuanceBase | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ILiquityBaseParams | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IPriceFeed | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CommunityIssuanceStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | LockupContract | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ICommunityIssuance | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROToken | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IActivePool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROStakingStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | LockupContractFactoryStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IZUSDToken | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ILockupContractFactory | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROStaking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IZEROStaking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ICollSurplusPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | SovStakersIssuance | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROTokenStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ILiquityBase | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | ErrorDecoder | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | SafeMath96 | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | RSKAddrValidator | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | FeeSharingProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Staking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | StakingProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | StakingStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Checkpoints | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | WeightedStaking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | VestingRegistry3 | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | VestingFactory | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Vesting | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | VestingStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | TeamVesting | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | VestingLogic | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | UpgradableProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Proxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | ApprovalReceiver | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Token | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IVesting | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IVestingFactory | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IVestingRegistry | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | ILockedFund | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IFeeSharingProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IStaking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IOrigins | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IApproveAndCall | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IVestingLogic | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IERC20 | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | ITeamVesting | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | OriginsEvents | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | OriginsAdmin | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | OriginsStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | OriginsBase | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | LockedFund | unmatched — not counted | — | listed in scope table | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | BasketManager | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | IBridge | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | IOwnable | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | InitializableOwnable | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | InitializableReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | Masset | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | MassetProxy | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | Ownable | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | Token | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | ThresholdProxyAdmin | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | Checkpoints | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | IStaking | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | SafeMath96 | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | Staking | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | StakingProxy | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | StakingStorage | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | WeightedStaking | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | IVesting | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | IFeeSharingProxy | unmatched — not counted | — | listed in scope | no |
| Genesis Sale Audit by Franklin Richards, January 2021 | CrowdSale | unmatched — not counted | — | listed in scope | no |
| cSOV Token Audit by Franklin Richards, January 2021 | CSOVToken | unmatched — not counted | — | listed in scope | no |
| Sovryn Governance Security Audit v210115.pdf | IVesting | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Vesting | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | TeamVesting | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | RSOV | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | DevelopmentVesting | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | IFeeSharingProxy | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | StakingStorage | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | SafeMath96 | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | WeightedStaking | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Checkpoints | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | IStaking | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | StakingProxy | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Staking | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Timelock | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | FeeSharingProxy | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | GovernorAlpha | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Proxy | unmatched — not counted | — | listed in scope with sha256sum | no |
| Governance Audit by Franklin Richards, December 2020 | GovernorAlpha | unmatched — not counted | — | listed in scope | no |
| Smart Contract Source Code Audit, December 2020 | SwapsImplSovrynSwap | unmatched — not counted | — | mentioned in Phase 1 section 1 and findings SVN-003, SVN-004, SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | PriceFeedsMoC | unmatched — not counted | — | mentioned in Phase 1 section 2 | no |
| Smart Contract Source Code Audit, December 2020 | LoanClosings | unmatched — not counted | — | mentioned in Phase 1 section 1 and Phase 3 entry points | no |
| Smart Contract Source Code Audit, December 2020 | PriceFeeds | unmatched — not counted | — | mentioned in Phase 1 section 1 and Phase 3 | no |
| Smart Contract Source Code Audit, December 2020 | RewardHelper | unmatched — not counted | — | mentioned in Phase 1 section 6 | no |
| Smart Contract Source Code Audit, December 2020 | RBTCWrapperProxy | unmatched — not counted | — | mentioned in Phase 1 section 11 | no |
| Smart Contract Source Code Audit, December 2020 | WRBTC | unmatched — not counted | — | mentioned in Phase 1 section 11 and finding SVN-002 | no |
| Smart Contract Source Code Audit, December 2020 | LoanTokenLogicStandard | unmatched — not counted | — | mentioned in Phase 3 entry points and findings SVN-010, SVN-012, SVN-013 | no |
| Smart Contract Source Code Audit, December 2020 | LoanTokenLogicWrbtc | unmatched — not counted | — | mentioned in Phase 3 entry points | no |
| Smart Contract Source Code Audit, December 2020 | SwapsExternal | unmatched — not counted | — | mentioned in finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | SwapsUser | unmatched — not counted | — | mentioned in finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | LoanMaintenance | unmatched — not counted | — | mentioned in finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | LoanOpenings | unmatched — not counted | — | mentioned in finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | MoCBTCToUSDOracle | unmatched — not counted | — | mentioned in finding SVN-001 | no |
| Smart Contract Source Code Audit, December 2020 | PriceOracle | unmatched — not counted | — | mentioned in finding SVN-001 | no |
| Smart Contract Source Code Audit, December 2020 | ConverterRegistry | unmatched — not counted | — | mentioned in Phase 1 section 9 | no |
| Smart Contract Source Code Audit, December 2020 | State | unmatched — not counted | — | mentioned in Phase 1 section 5 and finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | Constants | unmatched — not counted | — | mentioned in Phase 1 section 5 | no |
| Audit by Pessimistic, October 7, 2020 | ConverterRegisry | unmatched — not counted | — | mentioned in critical issue: new contract setup in ConverterRegisry contract | no |
| Audit by Pessimistic, October 7, 2020 | LoanClosings | unmatched — not counted | — | mentioned in low severity issue: code style in modules/LoanClosings.sol | no |
| Audit by Pessimistic, October 7, 2020 | SwapsUser | unmatched — not counted | — | mentioned in low severity issue: out of scope but included in report | no |
| Sovryn Security Recheck.pdf | ConverterRegisry | unmatched — not counted | — | mentioned in critical issue: 'newConverter() function that performs the deployment. setupConverter() function that performs the setup newly deployed contract.' | no |
| Sovryn Security Recheck.pdf | LoanClosings | unmatched — not counted | — | mentioned in low severity issue: 'code style issues in modules/LoanClosings.sol' | no |
| Sovryn Security Recheck.pdf | SwapsUser | unmatched — not counted | — | mentioned in low severity issue: 'In contracts/swaps/SwapsUser.sol of Sovryn-smart-contracts repository' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x8df20c2c85bee0c3da250da96d892598c70aa1be` | AllowTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 161 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 164 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21319] omniscia.io/reports/sovryn-bridge-implementation-v4
- [21320] Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf
- [24484] Manual audit seed
- [24485] System-wide Sovryn Smart Contract Audit by CertiK, October 2021
- [24486] Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021
- [24487] Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021
- [24488] BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021
- [24490] Staking Contract Audit by Franklin Richards, January 2021
- [24491] Genesis Sale Audit by Franklin Richards, January 2021
- [24492] cSOV Token Audit by Franklin Richards, January 2021
- [24493] Sovryn Governance Security Audit v210115.pdf
- [24494] Governance Audit by Franklin Richards, December 2020
- [24495] Smart Contract Source Code Audit, December 2020
- [24496] Audit by Pessimistic, October 7, 2020
- [24498] Sovryn Security Recheck.pdf

Fork inheritance lineage and inherited audits are included when available.
