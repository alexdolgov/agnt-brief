# Agentic Audit Brief: PureSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: PureSwap (`pureswap`)
- Website: [https://app.pureswap.xyz/](https://app.pureswap.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 84 unique implementations (84 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $220,801.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PureSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x009cf7bc57584b7998236eff51b98a168dcea9b0`, chain 56)
- UnnamedContract (`0x1ee38d535d541c55c9dae27b12edf090c608e6fb`, chain 56)
- UnnamedContract (`0x2170ed0880ac9a755fd29b2688956bd959f933f8`, chain 56)
- UnnamedContract (`0x23396cf899ca06c4472205fc903bdb4de249d6fc`, chain 56)
- UnnamedContract (`0x3c3f2049cc17c136a604be23cf7e42745edf3b91`, chain 56)
- UnnamedContract (`0x3c6919b132462c1fec572c6300e83191f4f0012a`, chain 56)
- UnnamedContract (`0x55d398326f99059ff775485246999027b3197955`, chain 56)
- UnnamedContract (`0x5e74094cd416f55179dbd0e45b1a8ed030e396a1`, chain 56)
- UnnamedContract (`0x94b4188d143b9dd6bd7083ae38a461fcc6aad07e`, chain 56)
- UnnamedContract (`0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c`, chain 56)
- UnnamedContract (`0xdf4dbf6536201370f95e06a0f8a7a70fe40e388a`, chain 56)
- UnnamedContract (`0xdf7952b35f24acf7fc0487d01c8d5690a60dba07`, chain 56)
- UnnamedContract (`0xe7e53a7e9e3cf6b840f167ef69519175c497e149`, chain 56)
- UnnamedContract (`0xe9e7cea3dedca5984780bafc599bd69add087d56`, chain 56)
- UnnamedContract (`0xfee8a195570a18461146f401d6033f5ab3380849`, chain 56)
- PureChef (`0xb8692d7768cc70c8309b669c1f5a3d856909adb8`, chain 56)
- PureToken (`0x481f0557fb3bb5ee461fd47f287b1ca944ad89bc`, chain 56)
- SingleChef (`0x63621a878f6eae37dc5bdedb2b828d9e3747b0f4`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/36 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 66 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 18 of 84 unique; 66 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 78
- Unique implementations: 84
- Raw deployments: 84
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| PureChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-391250 | `0xb8692d7768cc70c8309b669c1f5a3d856909adb8` | ⚠️ Unaudited |
| PureMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7d7c06928a6a255a8e7083433f3fcea08082698` | ⚠️ Unaudited |
| PureSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x208382f44c3042a4d788fd185133a76154395958` | ⚠️ Unaudited |
| PureSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e8743b5453a348606111ab0a4dee7f70a87f305` | ⚠️ Unaudited |
| PureToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-391235 | `0x481f0557fb3bb5ee461fd47f287b1ca944ad89bc` | ⚠️ Unaudited |
| SingleChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-391240 | `0x63621a878f6eae37dc5bdedb2b828d9e3747b0f4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (78)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391228 | `0x009cf7bc57584b7998236eff51b98a168dcea9b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05d27b7aef7fc313f6e139e8785beb0a7550717f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a8901b0e25deb55a87524f0cc164e9644020eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ab06caa3ca5d6299925efaa752a2d2154ece929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fdd82987b724ec32c6f1add369ec8dfe3c77e0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1658aed6c7dbab2ddbd8f5d898b0e9eab0305813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17539cca21c7933df5c980172d22659b8c345c5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1afb32b76696cdf05593ca3f3957aefb23a220fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c99222f857c1d72234703ec5b9ed88089bd7091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb4183ac708e07511ac57a2e45a835f048d7c56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391229 | `0x1ee38d535d541c55c9dae27b12edf090c608e6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x211e763d0b9311c08ec92d72ddc20ab024b6572a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391230 | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391231 | `0x23396cf899ca06c4472205fc903bdb4de249d6fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23c41d28a239ddcaabd1bb1def8d057189510066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24ed31d31c5868e5a96aa77fdcb890f3511fa0b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x286b6ee382e583817251ffe9ec3fa12c60752452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29fe7148636b7ae0b1e53777b28dfbaa9327af8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x327d76160d24935879992b54bb2d22c69507893b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x342c99e9ac24157657095ec69cb04b73257e7a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x375171ddd3b5af292078341e8fab8ab55580196c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3947b992dc0147d2d89df0392213781b04b25075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391232 | `0x3c3f2049cc17c136a604be23cf7e42745edf3b91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391233 | `0x3c6919b132462c1fec572c6300e83191f4f0012a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41d74991509318517226755e508695c4d1ce43a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x516ffd7d1e0ca40b1879935b2de87cb20fc1124b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52831833a6eba16c180fc4cb1a3cc467f466321b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5501f4713020cf299c3c5929da549aab3592e451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55072d8f0e1ed45dbf37b64115def59985244120` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391237 | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5661dbc43f098e58d6388641ba0b2f9f27fc829e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5981f557d8bd176976e3b1fbb12dbff15d028314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5af6d33de2ccec94efb1bdf8f92bd58085432d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b4a770abe7eafb2601ca4df9d73ea99363e60a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b6dcf557e2abe2323c48445e8cc948910d8c2c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391238 | `0x5e74094cd416f55179dbd0e45b1a8ed030e396a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6137b571f7f1e44839ae10310a08be86d1a4d03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62d71b23bf15218c7d2d7e48dbbd9e9c650b173f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x704a9cc899d2c84d2c1f8296a5068d7909824258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7426ab52a0e057691e2544fae9c8222e958b2cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x787980da5491118c3cb33b21ab50c8c379d2c552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78c2d17edb8a34fa00dd602994f16964d3fb4bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d5f9f8cf59986743f34bc137fc197e2e22b7b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83e1fc623cd20d7bda70c18cbc7044c44a8e762a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c6375aab6e5b26a30bf241ebbf29ad6e6c503c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x900aeb8c40b26a8f8dfaf283f884b03ee7abb3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x927158be21fe3d4da7e96931bb27fd5059a8cbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92e744307694ece235cd02e82680ec37c657d23e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93afe45f00c8a4971acdf7e1404ca7bc18a9621c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391245 | `0x94b4188d143b9dd6bd7083ae38a461fcc6aad07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cddf33466ce007676c827c76e799f5109f1843c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa04f060077d90fe2647b61e4da4ad1f97d6649dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5465248b3a8986d86aca968c0c076250263409f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa80240eb5d7e05d3f250cf000eec0891d00b51cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa2a87c49ffa4892aab5dd33ee39915b88a56e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1cc7661b99ee1874dc45dc34cd8403683167cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb20113f5cf32134142714587b6cfa06a15c9a033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb664cdbe385656f8c54031c0cb12cea55b584b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6958d19b60e5fc85908c67c37a5b954e9d60d99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391251 | `0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca2f75930912b85d8b2914ad06166483c0992945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbe421fea9e2fde1864ddabe542bd4da0f5c64a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc93fbbfae96d2fdc562afce89f466f2996b4c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd718baa0b1f4f70dcc8458154042120ffe0deffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7777960494528dd7f042e2ac3bc84669e7ebec4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391255 | `0xdf4dbf6536201370f95e06a0f8a7a70fe40e388a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391256 | `0xdf7952b35f24acf7fc0487d01c8d5690a60dba07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391257 | `0xe7e53a7e9e3cf6b840f167ef69519175c497e149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe85ce59bb997100e78b411e3f04f1448fb55ff83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391258 | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec3c4f71bc5e444cba026cb3f837ccf0fb1fee8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeccf35f941ab67ffcaa9a1265c2ff88865caa005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf215a127a196e3988c09d052e16bcfd365cd7aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa249caa1d16f75fa159f7dfbac0cc5eab48ceff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391260 | `0xfee8a195570a18461146f401d6033f5ab3380849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffbdb9bdcae97a962535479bb96cc2778d65f4dd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 63
- Live contracts: 0
- Unknown liveness contracts: 63
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=63

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x286b6ee382e583817251ffe9ec3fa12c60752452` | non_address_book | unknown | unknown | unverified | n/a | `0x7ff253a610caac7835d5989e294ad2abc40810c2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcc93fbbfae96d2fdc562afce89f466f2996b4c95` | non_address_book | unknown | unknown | unverified | n/a | `0x94d112712d024f0453f036050bad0e2869be62ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xec3c4f71bc5e444cba026cb3f837ccf0fb1fee8f` | non_address_book | unknown | unknown | unverified | n/a | `0x94d112712d024f0453f036050bad0e2869be62ca` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | non_address_book | unknown | unknown | unverified | n/a | `0x970609ba2c160a1b491b90867681918bdc9773af` |
| bsc | unverified unclassified | UnnamedContract<br>`0x05d27b7aef7fc313f6e139e8785beb0a7550717f` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0a8901b0e25deb55a87524f0cc164e9644020eba` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0fdd82987b724ec32c6f1add369ec8dfe3c77e0a` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x17539cca21c7933df5c980172d22659b8c345c5a` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1afb32b76696cdf05593ca3f3957aefb23a220fb` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1c99222f857c1d72234703ec5b9ed88089bd7091` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x23c41d28a239ddcaabd1bb1def8d057189510066` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x24ed31d31c5868e5a96aa77fdcb890f3511fa0b2` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x29fe7148636b7ae0b1e53777b28dfbaa9327af8e` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x327d76160d24935879992b54bb2d22c69507893b` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x342c99e9ac24157657095ec69cb04b73257e7a9c` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x375171ddd3b5af292078341e8fab8ab55580196c` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x516ffd7d1e0ca40b1879935b2de87cb20fc1124b` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x52831833a6eba16c180fc4cb1a3cc467f466321b` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x55072d8f0e1ed45dbf37b64115def59985244120` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5661dbc43f098e58d6388641ba0b2f9f27fc829e` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5981f557d8bd176976e3b1fbb12dbff15d028314` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5af6d33de2ccec94efb1bdf8f92bd58085432d2c` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b4a770abe7eafb2601ca4df9d73ea99363e60a4` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6137b571f7f1e44839ae10310a08be86d1a4d03b` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x704a9cc899d2c84d2c1f8296a5068d7909824258` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x787980da5491118c3cb33b21ab50c8c379d2c552` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x78c2d17edb8a34fa00dd602994f16964d3fb4bab` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x83e1fc623cd20d7bda70c18cbc7044c44a8e762a` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8c6375aab6e5b26a30bf241ebbf29ad6e6c503c2` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x927158be21fe3d4da7e96931bb27fd5059a8cbc2` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa5465248b3a8986d86aca968c0c076250263409f` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa80240eb5d7e05d3f250cf000eec0891d00b51cc` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaa2a87c49ffa4892aab5dd33ee39915b88a56e32` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb664cdbe385656f8c54031c0cb12cea55b584b63` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb6958d19b60e5fc85908c67c37a5b954e9d60d99` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcbe421fea9e2fde1864ddabe542bd4da0f5c64a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd718baa0b1f4f70dcc8458154042120ffe0deffa` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd7777960494528dd7f042e2ac3bc84669e7ebec4` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe85ce59bb997100e78b411e3f04f1448fb55ff83` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfa249caa1d16f75fa159f7dfbac0cc5eab48ceff` | non_address_book | unknown | unknown | unverified | n/a | `0xb24b9adda1d791d1675697a2d3e676632d99dbd6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x93afe45f00c8a4971acdf7e1404ca7bc18a9621c` | non_address_book | unknown | unknown | unverified | n/a | `0xb9fa21a62fc96cb2ac635a051061e2e50d964051` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb1cc7661b99ee1874dc45dc34cd8403683167cc3` | non_address_book | unknown | unknown | unverified | n/a | `0xb9fa21a62fc96cb2ac635a051061e2e50d964051` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | non_address_book | unknown | unknown | unverified | n/a | `0xf07c30e4cd6cfff525791b4b601bd345bded7f47` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ab06caa3ca5d6299925efaa752a2d2154ece929` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1658aed6c7dbab2ddbd8f5d898b0e9eab0305813` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1cb4183ac708e07511ac57a2e45a835f048d7c56` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x211e763d0b9311c08ec92d72ddc20ab024b6572a` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3947b992dc0147d2d89df0392213781b04b25075` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x41d74991509318517226755e508695c4d1ce43a6` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5501f4713020cf299c3c5929da549aab3592e451` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b6dcf557e2abe2323c48445e8cc948910d8c2c9` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x62d71b23bf15218c7d2d7e48dbbd9e9c650b173f` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7426ab52a0e057691e2544fae9c8222e958b2cfb` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7d5f9f8cf59986743f34bc137fc197e2e22b7b05` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x900aeb8c40b26a8f8dfaf283f884b03ee7abb3ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x92e744307694ece235cd02e82680ec37c657d23e` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9cddf33466ce007676c827c76e799f5109f1843c` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa04f060077d90fe2647b61e4da4ad1f97d6649dc` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb20113f5cf32134142714587b6cfa06a15c9a033` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca2f75930912b85d8b2914ad06166483c0992945` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xeccf35f941ab67ffcaa9a1265c2ff88865caa005` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf215a127a196e3988c09d052e16bcfd365cd7aa3` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xffbdb9bdcae97a962535479bb96cc2778d65f4dd` | non_address_book | unknown | unknown | unverified | n/a | `0xf47b30084ae23e28a08509010cd640a68aca7ea1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CertiK Audit Report for Pureswap.pdf](https://github.com/PureSwap2020/pureswap-contracts/blob/main/CertiK%20Audit%20Report%20for%20Pureswap.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21437] CertiK Audit Report for Pureswap.pdf — no match: Extracted all contracts from the audit scope table. The audit date is derived from 'Delivery Date Apr 30, 2023' in the summary.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CertiK Audit Report for Pureswap.pdf | MPSMigrator | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | MTPMockToken | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | MULMulticall | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | OPSOwnable | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PBPPureBar | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PCPPureChef | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PMPPureMaker | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PRPPureRoll | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PTPPureToken | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | SCPSingleChef | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | TPSGovernanceTimelock | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IERIERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | ISMISwapMining | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | SERSafeERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | SMPSafeMath | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | LICENSE | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PSFPureSwapERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PSFPureSwapFactory | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PSPPureSwapPair | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | PSRPureSwapRouter | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | README | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IECIERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUVUniswapV2Callee | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUEUniswapV2ERC20 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUFUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUPUniswapV2Pair | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IURUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IUSUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | IWEIWETH | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | MATMath | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | SMSSafeMath | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | THPTransferHelper | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | UQPUQ112x112 | unmatched — not counted | — | listed in scope table | no |
| CertiK Audit Report for Pureswap.pdf | UVLUniswapV2Library | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xb8692d7768cc70c8309b669c1f5a3d856909adb8` | PureChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x481f0557fb3bb5ee461fd47f287b1ca944ad89bc` | PureToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x63621a878f6eae37dc5bdedb2b828d9e3747b0f4` | SingleChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 78 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21437] CertiK Audit Report for Pureswap.pdf

Fork inheritance lineage and inherited audits are included when available.
