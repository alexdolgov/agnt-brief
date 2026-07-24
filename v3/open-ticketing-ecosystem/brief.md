# Agentic Audit Brief: OPEN Ticketing Ecosystem

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

- Project: OPEN Ticketing Ecosystem (`open-ticketing-ecosystem`)
- Website: [https://onopen.xyz](https://onopen.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, polygon
- Contract surface: 228 unique implementations (231 raw deployments)
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
- Outside the address book: 216 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 12 of 228 unique; 216 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 222
- Unique implementations: 228
- Raw deployments: 231
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

### ❓ Unverified (222)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5cbf4ce042d65a1af0e1b4fd65123f94ebfe97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb85ef7cba61ea534c058e930aa5a4cab6d91484f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe11201bd3cd4934885f1dd050501a7160dc9c992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000ebb6a25aa2f2f18bc1155f0c5701e343ccab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00b8c99a85c222745863740ee2413ef366898595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01148c46174e282a6c0cc65d5a5842dbefdc0313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03114bc4c9ed962a28ee3880c31e6d01ad48bbab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x052d14568a232a5b8117adac8154bb246d06fab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07185e8683ff7e4112b7d13d7584712809a9ca25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07bb757a118646956058514f08d4ca1d32ad6c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09dca7e82f0d287ff11d0c3a1c25dae207be02ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x09de05d57a137acab8d1b8c9d041989048f6eeb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ad880f3c7e143b7d20d85054b5f6e4c6028f8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bd6ece2a69c9fb2a823697479678b98fc99d5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x105e33a29b63d15a32916e5394dd38976ad01563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x110aa1e9a081470c5d418aa914e8b8b7fa673e22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1166f06b5194ef319442fca2cf72ed36abdd05a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x122bd087625ea5d9317921b760d84b20207de330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1325483a6d3e539c3b81b174b8eec78b00d7a476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x141600519a1503c51ae15351bd640eee45f253a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x149b0298c0ef29d1f013f50af758dc0426869d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x182c9e1f79a9a3753b98132c8acb45139f7d9708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x187217e09e3f686679bf3b6a89bce60c2bc06052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a9c84db7311d67a78c571d1694758819f7e9465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cc11c16c2977cd9d934721b8e22801ae62a5634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e30e06f3a53c59c37489614b50f0f6ed7c2fd7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1eab8778d492a8eb5b51eb1cf1f8612ffe54278c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f191a050427cf389a737f7cd2dc82a84664cf63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f5f806ce7d699f6588678de591247196182d467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fb3721f8f4fdb97c717c404b9eb9fbf9b4e9aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20d5ac6e6223455cec10753d76590f39458f6007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x238ceb268ed500363f0d6c2033e71506f62d6829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x276afa478fd7461c0aec13c3583f310abab1450d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250317 | `0x27b50ca961480b35005d452e288600f6e4534ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28ebda846c8c380543189bcb87fafc5beef7839a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x29aae8981d17939c69fab8bc0634f18b1608fa92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d2d60864ac782a45cf6f53b03bbf7a29dfede44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f5d4babd19272be989a2eca7779c941088d9826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x308e44ca2153c61103b0dc67fd038de650912b73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30e744566c6e374f5f8ec039f825cf6082cd1ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3184cfd66bf92aa53cebcb0f43a9ddd95f500f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33f73fe4a9c3ae7bb5f7b1dd29ce8d4b03fe1d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x33fea4895d38ed10f46028adb4fcd0b52872337c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35127104a3e50dd91c07f9529f7b125d50ba6783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a91aeded517b45fcef1a11d2415131e71790817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b4edae1f2e1971c716a07fdaf65afb144141b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c61b9160e0d3c4bb3d35496ff61d41e34be8ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d0a65bb3f1f4ecab81e2dec8a7176b6e568ffb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3da76ef75a7ebdb101afc7ec47b13f5c8cbf9f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3daa282179acf78448898c461b951e85785e4fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3dd580fc4f3557cf185094ef8f8c6ae61a593315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f0e867cd8d82c420517ca2f2d3d036cdf04b496` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250318 | `0x3f2fba6028f833e17c8087c385a4ef4fc52f62bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f69cfced2a3a06d974ce67441b0f2f43738c54e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40309165fd78650dc82a58e160b3252a4529c9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x404231e5f84ebfc98df49cd0b09a13f530362b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x41e0d1701badd8f876df8c35c5d450cfeea0ab6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43ca6448c55d0475e6ee1a4afa9eb56906018058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4436c1340b17eaa39edae4a34a048230ad475e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44a868b1b13bad6acc40078e51414f226b48b144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46566ee1826dc36a5701c7afdbe33e08b5b74dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47ce4a8d5affbd6195284497338ab2b6c0f935ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x483f492006e3bf241f7a16ff861ee166b30f4dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49afd70a28ca430d26848dcde815be3bd154c0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a395ff7a3b39df44fbaab0b06ef5146c77db2fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b05d1f3e28f0052e6d6b4126360be9d8a07f685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b657a4c554feb249172841f58a0fdee923a7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bd6a50ef217256989ca6a732f706487cf99bb54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c3ad9df5ccd946f659fff231aba9914c495d558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ce38733d235e39fa68c833c18e33bdee341f76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x502263290cffc8679ed2afa3cf9aeef09786a2dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52b1d9a13d85e62768bdae3447c5e329549dd6fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54621a56291736dbc4c8d0554b695c1582122443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x548385c13f8bfba72fa23ceee68a5173fcf36715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x562ed85eaa78898584b1e3cea358f13dd0fa070e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5664130e80b68731ddd7f72018027e2b22e327bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56df845c8a25ba8359dec165503a3e3ef9f8ec12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250319 | `0x56ebd904aa2cc5696f9cb05fa2d2587db501a8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56ee544c6a51bd1e70390484b9dc3ddca0051507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5793e6474dc291c3a5874491098dfd8e73920558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x587eed9401f93bf2582c9f2640a2ea233a2fd5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b4b8557161698a7ec343326c64bd378d7297c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b77d9968d7ea9bdcabf81eb08f9f8f9a4913d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b8856496fed2c175bff9fcedaeae83f5bc9daad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c12eecdbb345a758e1d182e0c369be4b2e6812a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d78104f576250d8d031dee865935359778fd19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6116d98c3893161430b4b009f80509e68530259d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x628af60840651ccb5888138359fc3bf1318fa455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x62d0e96fd9b4e22f71cf2d2b930ecd142527c5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63556c96bdcd8c080be3f3e9fc934033fda4ee6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x635ce1e651531e52ebb76dcb94e779294b1fbb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63f67700ce60bfa2445bf73f78f0cec31799371b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x641216fcbb74d1fbfdacdfc6169281b8b95c9531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x65076e3e3b0cfef59f5f51c13621e729e99c1eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x665f19635a26fa02f3f3046993bff4b48e17b10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66bd488cab7e2b4290eebd43b46906f1232f03af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x677519aa676225728df56d503cc8d21394be7da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6789fbe5642006765bb469916b33b1c6deae755b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67dbf2cf0300af3110d650c3940cc25c2c5a2fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6803d75fe3a536a28c1d014918b6d870cc5f89a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c73f73c9f289a8b45e6b5d7cdb518550a852708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e877752485f78076dae8e7d18a2d51f6deca788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6eafb68719fa74d3328193c39e11ecf9582602cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f75b38fbc3a5a71eea607e6dc476312245148dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72267ad3619a375382477d6b949d96f84396d9f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x727c7ebb01825cd8069d86d4da43c0a1c05e14b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7282f952a6ed2e37bf412c547c5be961c1364b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72d9fd908bfeece61f4671a63c931b49f9985d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72e5692c32ffacd0c816b39cbebfe12f8f00afb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7366a9e889d59562d351109a1991ef1c19ec36ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250320 | `0x748df336e5d1c6387e3fad5dec86fb9b1d4c3eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75099a54f72ef1ae33f89e57157de8c205b72b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x752bf48a1ff05f08d7d6345a2fcdd603cae7f5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7810a68d7c6caad6e813f077844884c8bdfe69fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x793b2600a41d5e397085881a45b491b532e38760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250321 | `0x79fb70d8e1ade9608f7f7f7ba62821f8ca9f4e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a9b2f09add558742723abf38f95469e72ca8059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b73beec87a037c576f800a634c0132d8cebe120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c48a64d0af7769d0a8cd4b1f113c2cb36b5d690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d16d88608f9ca2469f5d5d80c040def274c56e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7d25ea705a30dd1a7f449a3540869bd102de1a37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ecbc22910981017936728d0372f8d78db23b8be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f7e75ff4caaf07a7b1f00a8ad5859d56aec4404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f83913c5d5aecd28cbddde3052f498e05fbb08b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f9a79547aaea2bdb6fa0821bcc5eb64fc26ca4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8095195cf293c1a5ae30adbf9647f3a4b20679e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81f5638486c6e7da6b0452ed4f3f029750fb3ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250322 | `0x821bacd7aac670ab7d80bcf74e517620d1a24700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x845350fa9374a2e83db8a74d24f9164ec0f65301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x853d5fa55015a98b9ed0ed096bf51cd335ab5aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x86c987896b91774ce9c40f2a7a0cb25f86ed6e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88421bba0da61fe73fd36ad6402a13cc78e7dcfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x899a9c0b1e299fef747279df99863d8da9c0acad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b50f6c49428ddcb0ba68ed152f189c094335ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b76a92f0eaf97209ba617f42ccd7734fec208c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e794383270792c2ab30632e152c4685f882ab27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fc7457fbd051fdb92d75ca730ca4805a83b45d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x906b04af9c6dd8bb38ae8ad74986db656d2c87cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90fe3fbbbd71f4204d0bd91264d80216bd1082f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93da4da4170fb4248ca5ae6e3daa948be2ad0163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x940f86999436368ed568be861dc82432d914b3cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95b751d269509d6538b53d55f97d2b40937a18e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98053141e8007a4ad970b4a39f2fe95ccdc1b680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98e66a66ae88753002796c7fe174d956249d9dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b74dc6e0b567ed554ce9510bcae232b29a38580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e0710c9c5e0c5fdd0c249d5dc3d7b65c0634ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa039ce9061780c390b78d3088ac62ff7af721ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0419456c83d93c29bb7da1c0b3a42af79f5a848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa358a2f61e6da44a467f6e6396179ac895f28c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4f1da7cb9aca5f02db54b06a5b7b54b7ac6c4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5cbf4ce042d65a1af0e1b4fd65123f94ebfe97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa725f3c6fce3cc5fc0559490e46d031a8032305f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250323 | `0xac1ffeea39e3db60599bdf6697988aa5f0ed26f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae2767cca5973e54e721031165a11207748b8582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafef8a62ba01a1d87f63edad2d3e06171c9da1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb046b2335b3663ec17cab3413f8d4d2bb4e5fe41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4cfd748b23c103f73c10259171ecc5ef1dd31da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb52ad6d977f9122f97cc1988366d487bb825840a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5fb86e2316a5940082e7566834d0f55c0d3c3c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb72f87c4c5cdff0aba6db7f9b183b2ae7e8b442a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba241cd4f7c0e2419fe25fb0a5b50d122c1a0c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbaf02f486726c2d2e63d7b567e74325337722bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb26e7dad497aef90d68c00ca80ecb0eaf122c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb80c19a09309438b0b4a3a52775199e62d43dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd0a1d995aa3b8462542ab00941b9230dc1d381c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe9d1eaffecffdf8acd0805d1f482787bc273a21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250324 | `0xbf705239c90211bff2e4cf513c01209cda228af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbfa831771136917b580999b77776cd06732bc903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc280fe93c08997f2653baf32c11bc47972b0cec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4e175447d88c48ace52cbb7cdb98d0d5a0864e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4f9e483e286edc6d8a9a3606a36dc178cbefa06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc533c7e1aa0a9b649ab206612d00f8f00164791b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb60b562ab636606ae84eb3ab711c72b8f2ae197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbec390cc86724a8d8cc4da3a44be9fa78e46a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc15f1f559c7e8a73640412c89e7e124475027a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd6d4ec724629c15c8beae96c0eb8b7977205882` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcda348ff8c175f305ed8682003ec6f8743067f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce5c2e8080fb3d90f2ae227ead720d84cd6883e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf465b1fecdd38afa82ba5dd7e041f9d2bb8e65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd049c8e753eb8bf0346a7c761b952364397a9f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd39969c590d2556fce9e6779dacb3bcce16b1d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3f3171f33d5e7a90739868ee9142f59f99975f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd48bbccb5b6db4e8cc4712d3a592b5425ac0812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd7f73b87040b106f699dcac62461c82d29c7b9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9e49ea9c08497a747b9b0a3828cdd014d5fded0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb4c08402cbe027a446515bebf2bd3e3d3cd6fc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbddc6a436d26150b13173ab0a3c343449d0bf7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcbc8b0a5463de926440e2792f966b3c59f85184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf14a9844659fb20b52794656e3ed4be0955d234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf5bda33e5ca96897aad08cfb501a38cc6b9bcb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe05db46a0a9fe18bcf140e37133ec4d65b917d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe16563b5c5ca5f990eea197efe55b9314e973f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe226cd24f85d6b22b4da37ee98f7641c438ad1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe25c3e067d3d32b97dbbf0d40626bbe06dbc87b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe35357e513f0ea7fa344de35bf13ec0c06eccaa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4c8208acb4c7ef135ea219a7b899522be6baaa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe600c38b2e196712856b405e7c3f5ea02b951fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe68e9584bcd6d85e59542486d8140b8b5d65e470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6a40529503b154cf00f5c39138466bff63ba92e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7defdd3765efab38aae261b1c0d1f65d936c229` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-250325 | `0xe93ef19446c4e80207add5fa2cd3e0116e8959f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebe14320dbccf8699e2a16a5b3394c4b2d27f17a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec73a3bc69973ffddbccdaf3a44a4170fcd8a5f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec75789069b1e829b1fa2b02a7b4e4670fc7472e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecb8f9787574943d5d6ba34fbb81d65e8f2a62d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed343a86515f600118450c461ab37bebd99dcc17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedbdfe07af988906cc031a4fbfcbf6a23c7bc222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedd5ed4f87bca83962abbaa1adab9b84096a07b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee3ddd8d655fbbeebc0ccd8c079fe3327e278bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef7c53957f5fbb2226f9b96f701f700b785c0ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf13f64f528510a7742ef4c0837e0af074fb0a62f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf253b0f9c94c332b6807a106b7f0f3be7094b452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4256491895377142c38249cca09f8d7c5465fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5258f3669c22979984a1f433c0870f8ae7aa1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf63203775a19fc23680b7167d60085b2776ada76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf654f9a9940dbcc9ff591bb5e89e7cc00c045264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6b1b1c4b9dd0fe85b771123359eda54d8bd9c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8226e5dda20ee8e43c6e1c781b458525f9fc2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8e13b3b62e41da402f892e6346deb646cb2a9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8e40826bfaaf83e9da059f5c1e3faa15038ccbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb69712a3837ac68b1212c5ab686c0e0d3969899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe56255a8b3d8fdb66fea321b24b8e274d6c4fc0` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 213
- Live contracts: 0
- Unknown liveness contracts: 213
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=213

Showing first 200 of 213 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0xa5cbf4ce042d65a1af0e1b4fd65123f94ebfe97d` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xb85ef7cba61ea534c058e930aa5a4cab6d91484f` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xe11201bd3cd4934885f1dd050501a7160dc9c992` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x000ebb6a25aa2f2f18bc1155f0c5701e343ccab8` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x00b8c99a85c222745863740ee2413ef366898595` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x01148c46174e282a6c0cc65d5a5842dbefdc0313` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x03114bc4c9ed962a28ee3880c31e6d01ad48bbab` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x052d14568a232a5b8117adac8154bb246d06fab3` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x07185e8683ff7e4112b7d13d7584712809a9ca25` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x07bb757a118646956058514f08d4ca1d32ad6c00` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x09dca7e82f0d287ff11d0c3a1c25dae207be02ae` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x09de05d57a137acab8d1b8c9d041989048f6eeb8` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x0ad880f3c7e143b7d20d85054b5f6e4c6028f8c0` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x0bd6ece2a69c9fb2a823697479678b98fc99d5bc` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x105e33a29b63d15a32916e5394dd38976ad01563` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x110aa1e9a081470c5d418aa914e8b8b7fa673e22` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x1166f06b5194ef319442fca2cf72ed36abdd05a3` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x122bd087625ea5d9317921b760d84b20207de330` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x1325483a6d3e539c3b81b174b8eec78b00d7a476` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x141600519a1503c51ae15351bd640eee45f253a9` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x149b0298c0ef29d1f013f50af758dc0426869d71` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x182c9e1f79a9a3753b98132c8acb45139f7d9708` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x187217e09e3f686679bf3b6a89bce60c2bc06052` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x1a9c84db7311d67a78c571d1694758819f7e9465` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x1cc11c16c2977cd9d934721b8e22801ae62a5634` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x1e30e06f3a53c59c37489614b50f0f6ed7c2fd7d` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x1eab8778d492a8eb5b51eb1cf1f8612ffe54278c` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x1f191a050427cf389a737f7cd2dc82a84664cf63` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x1f5f806ce7d699f6588678de591247196182d467` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x1fb3721f8f4fdb97c717c404b9eb9fbf9b4e9aed` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x20d5ac6e6223455cec10753d76590f39458f6007` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x238ceb268ed500363f0d6c2033e71506f62d6829` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x276afa478fd7461c0aec13c3583f310abab1450d` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x28ebda846c8c380543189bcb87fafc5beef7839a` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x29aae8981d17939c69fab8bc0634f18b1608fa92` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x2d2d60864ac782a45cf6f53b03bbf7a29dfede44` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x2f5d4babd19272be989a2eca7779c941088d9826` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x308e44ca2153c61103b0dc67fd038de650912b73` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x30e744566c6e374f5f8ec039f825cf6082cd1ca8` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x3184cfd66bf92aa53cebcb0f43a9ddd95f500f5a` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x33f73fe4a9c3ae7bb5f7b1dd29ce8d4b03fe1d32` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x33fea4895d38ed10f46028adb4fcd0b52872337c` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x35127104a3e50dd91c07f9529f7b125d50ba6783` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x3a91aeded517b45fcef1a11d2415131e71790817` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x3b4edae1f2e1971c716a07fdaf65afb144141b51` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x3c61b9160e0d3c4bb3d35496ff61d41e34be8ced` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x3d0a65bb3f1f4ecab81e2dec8a7176b6e568ffb5` | non_address_book | unknown | unknown | unverified | n/a | `0x66665f5838298152a1db4cfb4fce20ad2fe0fd63` |
| unverified unclassified | UnnamedContract<br>`0x3da76ef75a7ebdb101afc7ec47b13f5c8cbf9f53` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x3daa282179acf78448898c461b951e85785e4fa3` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x3dd580fc4f3557cf185094ef8f8c6ae61a593315` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x3f0e867cd8d82c420517ca2f2d3d036cdf04b496` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x3f69cfced2a3a06d974ce67441b0f2f43738c54e` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x40309165fd78650dc82a58e160b3252a4529c9a5` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x404231e5f84ebfc98df49cd0b09a13f530362b11` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x41e0d1701badd8f876df8c35c5d450cfeea0ab6d` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x43ca6448c55d0475e6ee1a4afa9eb56906018058` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x4436c1340b17eaa39edae4a34a048230ad475e54` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x44a868b1b13bad6acc40078e51414f226b48b144` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x46566ee1826dc36a5701c7afdbe33e08b5b74dfe` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x47ce4a8d5affbd6195284497338ab2b6c0f935ff` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x483f492006e3bf241f7a16ff861ee166b30f4dbe` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x49afd70a28ca430d26848dcde815be3bd154c0bf` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x4a395ff7a3b39df44fbaab0b06ef5146c77db2fd` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x4b05d1f3e28f0052e6d6b4126360be9d8a07f685` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x4b657a4c554feb249172841f58a0fdee923a7667` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x4bd6a50ef217256989ca6a732f706487cf99bb54` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x4c3ad9df5ccd946f659fff231aba9914c495d558` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x4ce38733d235e39fa68c833c18e33bdee341f76d` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x502263290cffc8679ed2afa3cf9aeef09786a2dc` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x52b1d9a13d85e62768bdae3447c5e329549dd6fc` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x54621a56291736dbc4c8d0554b695c1582122443` | non_address_book | unknown | unknown | unverified | n/a | `0x66665f5838298152a1db4cfb4fce20ad2fe0fd63` |
| unverified unclassified | UnnamedContract<br>`0x548385c13f8bfba72fa23ceee68a5173fcf36715` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x562ed85eaa78898584b1e3cea358f13dd0fa070e` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x5664130e80b68731ddd7f72018027e2b22e327bd` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x56df845c8a25ba8359dec165503a3e3ef9f8ec12` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x56ee544c6a51bd1e70390484b9dc3ddca0051507` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x5793e6474dc291c3a5874491098dfd8e73920558` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x587eed9401f93bf2582c9f2640a2ea233a2fd5a0` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x5b4b8557161698a7ec343326c64bd378d7297c25` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x5b77d9968d7ea9bdcabf81eb08f9f8f9a4913d95` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x5b8856496fed2c175bff9fcedaeae83f5bc9daad` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x5c12eecdbb345a758e1d182e0c369be4b2e6812a` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x5d78104f576250d8d031dee865935359778fd19b` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x6116d98c3893161430b4b009f80509e68530259d` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x628af60840651ccb5888138359fc3bf1318fa455` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x62d0e96fd9b4e22f71cf2d2b930ecd142527c5ee` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x63556c96bdcd8c080be3f3e9fc934033fda4ee6d` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x635ce1e651531e52ebb76dcb94e779294b1fbb37` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x63f67700ce60bfa2445bf73f78f0cec31799371b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x641216fcbb74d1fbfdacdfc6169281b8b95c9531` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x65076e3e3b0cfef59f5f51c13621e729e99c1eee` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x665f19635a26fa02f3f3046993bff4b48e17b10b` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x66bd488cab7e2b4290eebd43b46906f1232f03af` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x677519aa676225728df56d503cc8d21394be7da7` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x6789fbe5642006765bb469916b33b1c6deae755b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x67dbf2cf0300af3110d650c3940cc25c2c5a2fe1` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x6803d75fe3a536a28c1d014918b6d870cc5f89a6` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x6c73f73c9f289a8b45e6b5d7cdb518550a852708` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x6e877752485f78076dae8e7d18a2d51f6deca788` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x6eafb68719fa74d3328193c39e11ecf9582602cb` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x6f75b38fbc3a5a71eea607e6dc476312245148dc` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x72267ad3619a375382477d6b949d96f84396d9f0` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x727c7ebb01825cd8069d86d4da43c0a1c05e14b7` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x7282f952a6ed2e37bf412c547c5be961c1364b03` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x72d9fd908bfeece61f4671a63c931b49f9985d74` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x72e5692c32ffacd0c816b39cbebfe12f8f00afb3` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x7366a9e889d59562d351109a1991ef1c19ec36ef` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x75099a54f72ef1ae33f89e57157de8c205b72b54` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x752bf48a1ff05f08d7d6345a2fcdd603cae7f5ab` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x7810a68d7c6caad6e813f077844884c8bdfe69fc` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x793b2600a41d5e397085881a45b491b532e38760` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x7a9b2f09add558742723abf38f95469e72ca8059` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x7b73beec87a037c576f800a634c0132d8cebe120` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x7c48a64d0af7769d0a8cd4b1f113c2cb36b5d690` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x7d16d88608f9ca2469f5d5d80c040def274c56e9` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x7d25ea705a30dd1a7f449a3540869bd102de1a37` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x7ecbc22910981017936728d0372f8d78db23b8be` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x7f7e75ff4caaf07a7b1f00a8ad5859d56aec4404` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x7f83913c5d5aecd28cbddde3052f498e05fbb08b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x7f9a79547aaea2bdb6fa0821bcc5eb64fc26ca4e` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x8095195cf293c1a5ae30adbf9647f3a4b20679e4` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x81f5638486c6e7da6b0452ed4f3f029750fb3ccd` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x845350fa9374a2e83db8a74d24f9164ec0f65301` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x853d5fa55015a98b9ed0ed096bf51cd335ab5aef` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x86c987896b91774ce9c40f2a7a0cb25f86ed6e7e` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x88421bba0da61fe73fd36ad6402a13cc78e7dcfb` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x899a9c0b1e299fef747279df99863d8da9c0acad` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x8b50f6c49428ddcb0ba68ed152f189c094335ce4` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x8b76a92f0eaf97209ba617f42ccd7734fec208c1` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x8e794383270792c2ab30632e152c4685f882ab27` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x8fc7457fbd051fdb92d75ca730ca4805a83b45d3` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x906b04af9c6dd8bb38ae8ad74986db656d2c87cc` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0x90fe3fbbbd71f4204d0bd91264d80216bd1082f3` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x93da4da4170fb4248ca5ae6e3daa948be2ad0163` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x940f86999436368ed568be861dc82432d914b3cb` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x95b751d269509d6538b53d55f97d2b40937a18e1` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x98053141e8007a4ad970b4a39f2fe95ccdc1b680` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0x98e66a66ae88753002796c7fe174d956249d9dfe` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x9b74dc6e0b567ed554ce9510bcae232b29a38580` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0x9e0710c9c5e0c5fdd0c249d5dc3d7b65c0634ecc` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xa039ce9061780c390b78d3088ac62ff7af721ed9` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xa0419456c83d93c29bb7da1c0b3a42af79f5a848` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xa358a2f61e6da44a467f6e6396179ac895f28c0e` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xa4f1da7cb9aca5f02db54b06a5b7b54b7ac6c4ac` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xa5cbf4ce042d65a1af0e1b4fd65123f94ebfe97d` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xa725f3c6fce3cc5fc0559490e46d031a8032305f` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xae2767cca5973e54e721031165a11207748b8582` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xafef8a62ba01a1d87f63edad2d3e06171c9da1ef` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xb046b2335b3663ec17cab3413f8d4d2bb4e5fe41` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xb4cfd748b23c103f73c10259171ecc5ef1dd31da` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xb52ad6d977f9122f97cc1988366d487bb825840a` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xb5fb86e2316a5940082e7566834d0f55c0d3c3c7` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xb72f87c4c5cdff0aba6db7f9b183b2ae7e8b442a` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xba241cd4f7c0e2419fe25fb0a5b50d122c1a0c1b` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xbaf02f486726c2d2e63d7b567e74325337722bb0` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xbb26e7dad497aef90d68c00ca80ecb0eaf122c46` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xbb80c19a09309438b0b4a3a52775199e62d43dff` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xbd0a1d995aa3b8462542ab00941b9230dc1d381c` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xbe9d1eaffecffdf8acd0805d1f482787bc273a21` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xbfa831771136917b580999b77776cd06732bc903` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xc280fe93c08997f2653baf32c11bc47972b0cec5` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xc4e175447d88c48ace52cbb7cdb98d0d5a0864e0` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xc4f9e483e286edc6d8a9a3606a36dc178cbefa06` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xc533c7e1aa0a9b649ab206612d00f8f00164791b` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xcb60b562ab636606ae84eb3ab711c72b8f2ae197` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xcbec390cc86724a8d8cc4da3a44be9fa78e46a67` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xcc15f1f559c7e8a73640412c89e7e124475027a0` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xcd6d4ec724629c15c8beae96c0eb8b7977205882` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xcda348ff8c175f305ed8682003ec6f8743067f79` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xce5c2e8080fb3d90f2ae227ead720d84cd6883e3` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xcf465b1fecdd38afa82ba5dd7e041f9d2bb8e65b` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xd049c8e753eb8bf0346a7c761b952364397a9f76` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xd39969c590d2556fce9e6779dacb3bcce16b1d43` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xd3f3171f33d5e7a90739868ee9142f59f99975f5` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xd48bbccb5b6db4e8cc4712d3a592b5425ac0812b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xd7f73b87040b106f699dcac62461c82d29c7b9a9` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xd9e49ea9c08497a747b9b0a3828cdd014d5fded0` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xdb4c08402cbe027a446515bebf2bd3e3d3cd6fc6` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xdbddc6a436d26150b13173ab0a3c343449d0bf7b` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xdcbc8b0a5463de926440e2792f966b3c59f85184` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xdf14a9844659fb20b52794656e3ed4be0955d234` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xdf5bda33e5ca96897aad08cfb501a38cc6b9bcb2` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xe05db46a0a9fe18bcf140e37133ec4d65b917d01` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xe16563b5c5ca5f990eea197efe55b9314e973f04` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xe226cd24f85d6b22b4da37ee98f7641c438ad1b6` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xe25c3e067d3d32b97dbbf0d40626bbe06dbc87b6` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xe35357e513f0ea7fa344de35bf13ec0c06eccaa5` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xe4c8208acb4c7ef135ea219a7b899522be6baaa7` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xe600c38b2e196712856b405e7c3f5ea02b951fe9` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xe68e9584bcd6d85e59542486d8140b8b5d65e470` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xe6a40529503b154cf00f5c39138466bff63ba92e` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xe7defdd3765efab38aae261b1c0d1f65d936c229` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xebe14320dbccf8699e2a16a5b3394c4b2d27f17a` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |
| unverified unclassified | UnnamedContract<br>`0xec73a3bc69973ffddbccdaf3a44a4170fcd8a5f7` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xec75789069b1e829b1fa2b02a7b4e4670fc7472e` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xecb8f9787574943d5d6ba34fbb81d65e8f2a62d7` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xed343a86515f600118450c461ab37bebd99dcc17` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xedbdfe07af988906cc031a4fbfcbf6a23c7bc222` | non_address_book | unknown | unknown | unverified | n/a | `0x24b14c86e3ccb24ee16590e750f18bccf63a4413` |
| unverified unclassified | UnnamedContract<br>`0xedd5ed4f87bca83962abbaa1adab9b84096a07b8` | non_address_book | unknown | unknown | unverified | n/a | `0x4afdae9cca053e3d456a9cb697081bf083a3340b` |
| unverified unclassified | UnnamedContract<br>`0xee3ddd8d655fbbeebc0ccd8c079fe3327e278bb5` | non_address_book | unknown | unknown | unverified | n/a | `0xcc4496a836b89d670e72b25d2c7b0acba33667ea` |

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
| needs_review | 222 |

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
