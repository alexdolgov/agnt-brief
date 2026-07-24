# Agentic Audit Brief: Kine Finance

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

- Project: Kine Finance (`kine-finance`)
- Website: [https://kine.finance/](https://kine.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 105 unique implementations (178 raw deployments)
- Coverage basis: 0/48 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $916,821.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kine Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 66 contract row(s) across avalanche, bsc, ethereum, polygon. Structural roles: 47 unclassified, 16 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 66
- Structural roles: unclassified (47), core (16), supporting (3)
- Contract kinds: contract (66)
- Detected standards: ownable (12), erc20 (10), pausable (3)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 53 contracts are derived from known codebases. 53 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9636ea80329b4f0fc5af2506b12242c023a30cc7`, chain 1)
- UnnamedContract (`0x977746370145e1af4ff37a578454d57e2334a8a4`, chain 1)
- UnnamedContract (`0x01dcdb0272cff6702ee7b41fe0e2e76597eaf12d`, chain 56)
- Kaptain (`0xf8c7b7709dd106e70133474bdf05d9d5a87c871f`, chain 1)
- KaptainV2 (`0x1540e5821370ace8120ce48554d35276d86a9f0c`, chain 1)
- KaptainV2 (`0xd4c220ccac0335334d425a90f58de7c667896a06`, chain 56)
- KaptainV2 (`0x0544be6693763d64c02f49f16986ba1390a2fc39`, chain 137)
- KErc20Delegator (`0x1568a7f0bdf67d37dc963c345dbc4a598859eba3`, chain 1)
- KErc20Delegator (`0x377f100a7280dd992c6f2503330f893620f586ab`, chain 1)
- KErc20Delegator (`0x473ccdec83b7125a4f52aa6f8699026fcb878ee8`, chain 1)
- KErc20Delegator (`0x63b63b5f0ae8057cb8f704f65fd91c19badd5a73`, chain 1)
- KErc20Delegator (`0x3a8502fd810df171d327e080fb39c734c79b57c2`, chain 56)
- KErc20Delegator (`0x670076f14fb7bc9735af1bc9a1d1ad5266f54fa0`, chain 56)
- KErc20Delegator (`0xa58e822de1517aae7114714fb354ee853cd35780`, chain 56)
- KErc20Delegator (`0xd61867501b821befd5e4270a91836f8f7424b847`, chain 56)
- KErc20Delegator (`0xf8c7b7709dd106e70133474bdf05d9d5a87c871f`, chain 56)
- KErc20Delegator (`0x3770ebfaea8376e5f62397fdce0135d840f0b259`, chain 137)
- KErc20Delegator (`0x4f6a33b62017dc804866e6b564c32ed5a57c49cd`, chain 137)
- KErc20Delegator (`0x6c0ed47f567071db4207bdff4f241af67e972d91`, chain 137)
- KErc20Delegator (`0x96f4516a9d150574cb6d8ae3380f28f330e64ef7`, chain 137)
- KErc20Delegator (`0xc903e8a6811f5e4354ec530f34cc90bd820ac1b4`, chain 137)
- KEther (`0xa58e822de1517aae7114714fb354ee853cd35780`, chain 1)
- KEther (`0x5fbe4eb536dadbcee54d5b55ed6559e29c60b055`, chain 56)
- KEther (`0xf186a66c2bd0509beaafca2a16d6c39ba02425f9`, chain 137)
- Kine (`0xcbfef8fdd706cde6f208460f2bf39aa9c785f05d`, chain 1)
- Kine (`0xbfa9df9ed8805e657d0feab5d186c6a567752d7f`, chain 56)
- Kine (`0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87`, chain 137)
- KineMultiSigWallet (`0xa6e17ae4b683ed2ee7cb7414a92bd8316f330191`, chain 1)
- KineMultiSigWallet (`0x6534af0bb8cdc205be7f43fb29a602df26a0446c`, chain 56)
- KineMultiSigWallet (`0xa8c2a4d5048a6be51c2a55e7a2d6015a96757198`, chain 137)
- KineOracleV2 (`0xd546a5f08ed51b5ec1481fee51e8b659032f9494`, chain 137)
- KineRanch (`0xa8d7643324df0f38764f514eb1a99d8f379cc692`, chain 1)
- KineUSD (`0xd4c220ccac0335334d425a90f58de7c667896a06`, chain 1)
- KineUSD (`0xd819d96f9d28ea85c1dd78e66d7241134e8d4ab4`, chain 56)
- KineUSD (`0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2`, chain 137)
- KMCDDelegator (`0xaf2617aa6fd98581bb8cb099a16af74510b6555f`, chain 1)
- KMCDDelegator (`0x4f1ab95b798084e44d512b8b0fed3ef933177986`, chain 56)
- KMCDDelegator (`0xcd6b46443becad4996a70ee3d8665c0b86a0c54c`, chain 137)
- KUSDMinterDelegator (`0xcea2d0a0413b6bf052eb2eca9c256ee25ad7d128`, chain 1)
- KUSDMinterDelegator (`0x42fe8ec54db8ea76c45673723fbd69116fd28989`, chain 56)
- KUSDMinterDelegator (`0x1b80c2ae4927dcdb703782d01539168c98b774f9`, chain 137)
- KUSDVault (`0xd61867501b821befd5e4270a91836f8f7424b847`, chain 1)
- KUSDVault (`0xaf2617aa6fd98581bb8cb099a16af74510b6555f`, chain 56)
- KUSDVault (`0x68b9737ae74cf1a169890042f1aa359647aa3e47`, chain 137)
- LPStakingRewards (`0x80850db68db03792ca5650fbdaccebe1da5e52bf`, chain 1)
- LPStakingRewards (`0x834c3bb26bb1bf025dc6b66ad5d7f9003333606b`, chain 1)
- LPStakingRewards (`0xc75ba7e3a40e2293817b590e47beb01e52a0c9b6`, chain 1)
- StakingRewardsV2 (`0x308043a2a7c62b17906f9b074a349c43ccd919ad`, chain 56)
- StakingRewardsV2 (`0x6c2c7c5b5c0b60a13b981accfe1aa1616985d3d7`, chain 56)
- StakingRewardsV2 (`0x4d7242a89877eb044fccba6c49e96b4e032a8636`, chain 137)
- StakingRewardsV2 (`0x69c78c26f272405599382925689d0a54b8ceedf9`, chain 137)
- Timelock (`0x9e8e622e0ba0dee491fbc42d1bb12ab947e2d03b`, chain 1)
- Unitroller (`0xbb7d94a423f4978545ecf73161f0678e8afd1a92`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 66; live-surface rows included: 66 (52 live, 14 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/51 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/48 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 51 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 54 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 42
- Confirmed-live implementations: 51 of 105 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/95
- Verified + Unaudited implementations: 95
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 105
- Raw deployments: 178
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

### ⚠️ Verified + Unaudited (95)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 16 deployments: avalanche `0x0378fcb44f7f673b43ee172eb42014c51de86788`; avalanche `0x0dd1cdcf94e394822abc3400cf0a1398c076eaca`; avalanche `0x1e311efc937f975fcf194f112177574132147d41`; avalanche `0x3278b96f436f96356308a0f90e792c7de0e3407b`; avalanche `0x3c73b0f6ea9e0cd62014291a4472364903dcfa94`; avalanche `0x68ed1444202155d34b08b716743944e61d8036ed`; avalanche `0x70163dd4b3ed40a4fbd8efa16cae727d7e958765`; avalanche `0x7bdb2a4939076a497abab5c24c5fabd835cd3f00`; avalanche `0x8b8c72465f1e35f38f0548f999255763180796d0`; avalanche `0x95f6f7b5096a1462719c09d431428c23f50e604e`; avalanche `0x9e7a8da1b3c23af3bda232e5c70ce5de044311ea`; avalanche `0xa7e93556cf8baa4d8dd1654a8bae5639890ac10d`; avalanche `0xab5f4f962c5bc971f00e6d4bc425022821877661`; avalanche `0xb6579885964b65d34b05b0d7176e05bcd259608d`; avalanche `0xc23c5913d40adda7273544f685a6685389d9e8e9`; avalanche `0xc436692de82e1e7b97dbc9fe9cc4bfe6a630fb87` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xd819d96f9d28ea85c1dd78e66d7241134e8d4ab4`; bsc `0xc11c339a1b24b3a10f81a309a1d271de141908da` | ⚠️ Unaudited |
| ControllerV2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-388216 | `0xbb7d94a423f4978545ecf73161f0678e8afd1a92` | ⚠️ Unaudited |
| ControllerV2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-388232 | `0x3c2ddd486c07343b711a4415cdc9ab90ed32b571` | ⚠️ Unaudited |
| ControllerV2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-388222 | 2 deployments: polygon `0x171d5c31d196fae671e95594372f049bfd0d7f28`; polygon `0xdff18ac4146d67bf2ccbe98e7db1e4fa32b96881` | ⚠️ Unaudited |
| ControllerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0ec3126390c606be63a0fa6585e68075f06679c6`; avalanche `0xdff18ac4146d67bf2ccbe98e7db1e4fa32b96881` | ⚠️ Unaudited |
| DisperseTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52a6a05202aa158cc249093b8267fba4388d70f9` | ⚠️ Unaudited |
| Kaptain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388196 | `0xf8c7b7709dd106e70133474bdf05d9d5a87c871f` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388183 | `0x1540e5821370ace8120ce48554d35276d86a9f0c` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388213 | `0xd4c220ccac0335334d425a90f58de7c667896a06` | ⚠️ Unaudited |
| KaptainV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388198 | `0x0544be6693763d64c02f49f16986ba1390a2fc39` | ⚠️ Unaudited |
| KaptainV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa64c217239b4967a9f4b0d4cec7039f281aeece5` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388218 | 2 deployments: ethereum `0x1568a7f0bdf67d37dc963c345dbc4a598859eba3`; ethereum `0xad58bea532f8fe7b7d485230000cd3757d8ae948` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388215 | 2 deployments: ethereum `0x24ff636d8671cb8d35e63d6b36f26893818e57af`; ethereum `0x473ccdec83b7125a4f52aa6f8699026fcb878ee8` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388217 | 2 deployments: ethereum `0x377f100a7280dd992c6f2503330f893620f586ab`; ethereum `0x624c0042fdda26c67e919c8a2f19072e7fab4b8d` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37fb11963f05b3a0eef6c49a9e9ed9cac7650bed`; ethereum `0x4191eb251aea75c7b5c42e4bd84ff382f9735740` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388221 | 2 deployments: ethereum `0x63b63b5f0ae8057cb8f704f65fd91c19badd5a73`; ethereum `0xf9771bc908ffac67f05e8a69dd6b1eef9fbf755a` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbf5250ac655920b301ca34f4e46f0669b90a5bf5`; ethereum `0xeebf195ed8a4a3a4cf4fc74468dc850d48f0a139` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x33888cc997d6e4f0e7e6e2c88e32cf92ee35a875`; bsc `0xad58bea532f8fe7b7d485230000cd3757d8ae948`; bsc `0xea4c9c6249a05b6abd4aede99a185b03948909e9` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 5 | bsc | unit-388233 (5 proxies) | 6 deployments: bsc `0x3a8502fd810df171d327e080fb39c734c79b57c2`; bsc `0x670076f14fb7bc9735af1bc9a1d1ad5266f54fa0`; bsc `0xa58e822de1517aae7114714fb354ee853cd35780`; bsc `0xcea2d0a0413b6bf052eb2eca9c256ee25ad7d128`; bsc `0xd61867501b821befd5e4270a91836f8f7424b847`; bsc `0xf8c7b7709dd106e70133474bdf05d9d5a87c871f` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x0d7030deb61a06147df06fc44d8e1d1153707913`; avalanche `0x1d903b731b0173654afe612d12b4489c7b32a19f` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x108dbee7fbc3a774b97628356edbb606815f4e81`; polygon `0xb6ffea061614f21f2f6c7b36799d0ca47bb188ac` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388223 | 2 deployments: polygon `0x255d26b77e2dc86191e7ffac101bcdf9cc32ecd0`; polygon `0x4f6a33b62017dc804866e6b564c32ed5a57c49cd` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388228 | 2 deployments: polygon `0x3770ebfaea8376e5f62397fdce0135d840f0b259`; polygon `0xcba50a7870bd9427903a105ff41678fefab5c1c4` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388225 | 2 deployments: polygon `0x39d1c99a244aa02502defc109e6f2d88efd6b06f`; polygon `0x96f4516a9d150574cb6d8ae3380f28f330e64ef7` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x42dfed8060ff16d87f4a45fa5fe2d0a97b6b76b2`; polygon `0xfbb9ef8e9b6f4c04c0ab9737be717d238bc42c91` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388229 | 2 deployments: polygon `0x6c0ed47f567071db4207bdff4f241af67e972d91`; polygon `0xd9aa9bbaba8b69bc4a2e4959a5ad946b01d15432` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x75349ec21d97692c95cea9ff82a3bfb7465f47f3`; polygon `0xa2b89fee3ad62e35ff7b2dfe3f8242ed3c2df002` | ⚠️ Unaudited |
| KErc20Delegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388227 | 2 deployments: polygon `0xabdbd0461ba9ffb0a4ed5cb210866f50ce1785c8`; polygon `0xc903e8a6811f5e4354ec530f34cc90bd820ac1b4` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xada3bee0f99568467066245b1c2f3ab115cef876`; polygon `0xe972e2842d3cbb88a444b2a88b8a5a179f2e0216` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xcf6182fc807bfc8f912ef16d1d301ae0d605707f`; polygon `0xee5e0c4df92c2b454af2f3af24876439f7bced60` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0d7030deb61a06147df06fc44d8e1d1153707913`; avalanche `0xf186a66c2bd0509beaafca2a16d6c39ba02425f9` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3770ebfaea8376e5f62397fdce0135d840f0b259`; avalanche `0xcba50a7870bd9427903a105ff41678fefab5c1c4` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3d2a49f71d94d7f5739d003b9a2e87de99959cf4`; avalanche `0xdd895fd7448d0b0b7205956a36b4ebe918cefd62` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x66a782c9a077f5adc988cc0b5fb1cdcc9d7adeda`; avalanche `0x919faaa4fe6d38c7d08fafc3185419862464ba45` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6c0ed47f567071db4207bdff4f241af67e972d91`; avalanche `0xd9aa9bbaba8b69bc4a2e4959a5ad946b01d15432` | ⚠️ Unaudited |
| KErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xcb46bfb835a2e9c76ab935b1df627b0981c5db70`; avalanche `0xdedb4bfef7be350824f4c1c1f32580aa95e3bc64` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388189 | `0xa58e822de1517aae7114714fb354ee853cd35780` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | bsc | unit-388208 | `0x5fbe4eb536dadbcee54d5b55ed6559e29c60b055` | ⚠️ Unaudited |
| KEther | unknown | project_anchor | own_supporting | 0 | polygon | unit-388205 | `0xf186a66c2bd0509beaafca2a16d6c39ba02425f9` | ⚠️ Unaudited |
| KEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0544be6693763d64c02f49f16986ba1390a2fc39` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388193 | `0xcbfef8fdd706cde6f208460f2bf39aa9c785f05d` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | bsc | unit-388212 | `0xbfa9df9ed8805e657d0feab5d186c6a567752d7f` | ⚠️ Unaudited |
| Kine | unknown | project_anchor | own_supporting | 0 | polygon | unit-388203 | `0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87` | ⚠️ Unaudited |
| Kine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87` | ⚠️ Unaudited |
| KineBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5f17dbc86d60f1a34dc22408d263683c3d0e9526`; avalanche `0xcd96a1db804cb61ffc1dee0864064fe6f4d20a3c` | ⚠️ Unaudited |
| KineCard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77427a2e5904d7d59b96ba2e30b9f7a03996d923` | ⚠️ Unaudited |
| KineExchangeTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x545a25cbbcb63a5b6b65af7896172629ca763645`; bsc `0x1568a7f0bdf67d37dc963c345dbc4a598859eba3`; polygon `0x1d903b731b0173654afe612d12b4489c7b32a19f`; avalanche `0x6e81c77f89409d5db868cce7b67bb5de747cfa0e` | ⚠️ Unaudited |
| KineMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca13ea4111cd5c86721b657e666eede2e4f9bd8d` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388190 | `0xa6e17ae4b683ed2ee7cb7414a92bd8316f330191` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | bsc | unit-388209 | `0x6534af0bb8cdc205be7f43fb29a602df26a0446c` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | project_anchor | own_supporting | 0 | polygon | unit-388202 | `0xa8c2a4d5048a6be51c2a55e7a2d6015a96757198` | ⚠️ Unaudited |
| KineMultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: ethereum `0xbfa9df9ed8805e657d0feab5d186c6a567752d7f`; avalanche `0x21e9276be3aff3113196423659dc01c9f6cdfac1` | ⚠️ Unaudited |
| KineOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x606627b64d71bf9337c273e97803324cc7951e30`; avalanche `0xc903e8a6811f5e4354ec530f34cc90bd820ac1b4` | ⚠️ Unaudited |
| KineOracleV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388204 | `0xd546a5f08ed51b5ec1481fee51e8b659032f9494` | ⚠️ Unaudited |
| KineProtocolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: polygon `0xcb46bfb835a2e9c76ab935b1df627b0981c5db70`; avalanche `0x39d1c99a244aa02502defc109e6f2d88efd6b06f` | ⚠️ Unaudited |
| KineRanch | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388191 | `0xa8d7643324df0f38764f514eb1a99d8f379cc692` | ⚠️ Unaudited |
| KineRanch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: bsc `0x9e8e622e0ba0dee491fbc42d1bb12ab947e2d03b`; polygon `0x66a782c9a077f5adc988cc0b5fb1cdcc9d7adeda`; avalanche `0x68b9737ae74cf1a169890042f1aa359647aa3e47` | ⚠️ Unaudited |
| KineSimpleBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x80b91dede7d0d0891f46da75dbc25e976242f1d2`; bsc `0xcbfef8fdd706cde6f208460f2bf39aa9c785f05d`; polygon `0x3d2a49f71d94d7f5739d003b9a2e87de99959cf4`; avalanche `0x171d5c31d196fae671e95594372f049bfd0d7f28` | ⚠️ Unaudited |
| KineSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x06cb07eb43c40b17d9e8f55023fc5968f81c1f18`; avalanche `0xb5e41f496c82465fead139bd469d5295457b0b3f`; avalanche `0xf780a7146c7fe457e2a9eca7e025b7a567316e58` | ⚠️ Unaudited |
| KineTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcb64143c3b1643a310012125fb73a6b07d3bbb7` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388194 | `0xd4c220ccac0335334d425a90f58de7c667896a06` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-388214 | `0xd819d96f9d28ea85c1dd78e66d7241134e8d4ab4` | ⚠️ Unaudited |
| KineUSD | unknown | project_anchor | own_supporting | 0 | polygon | unit-388197 | `0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2` | ⚠️ Unaudited |
| KineUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2` | ⚠️ Unaudited |
| KMCDDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeacff9046951b043b283725842fc56313205179` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388220 | `0xaf2617aa6fd98581bb8cb099a16af74510b6555f` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | bsc | unit-388230 | 2 deployments: bsc `0x013a07efbafd343bd4ed2241f97579f4bb6e3c9e`; bsc `0x4f1ab95b798084e44d512b8b0fed3ef933177986` | ⚠️ Unaudited |
| KMCDDelegate | unknown | project_anchor | own_supporting | 1 | polygon | unit-388226 | 2 deployments: polygon `0x75f21389e6e3125996a6820eacc0c25fe5520de0`; polygon `0xcd6b46443becad4996a70ee3d8665c0b86a0c54c` | ⚠️ Unaudited |
| KMCDDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x75f21389e6e3125996a6820eacc0c25fe5520de0`; avalanche `0xcd6b46443becad4996a70ee3d8665c0b86a0c54c` | ⚠️ Unaudited |
| KUSDMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fbe4eb536dadbcee54d5b55ed6559e29c60b055` | ⚠️ Unaudited |
| KUSDMinterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb7d94a423f4978545ecf73161f0678e8afd1a92` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388219 | `0xcea2d0a0413b6bf052eb2eca9c256ee25ad7d128` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | bsc | unit-388231 | `0x42fe8ec54db8ea76c45673723fbd69116fd28989` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | project_anchor | own_supporting | 1 | polygon | unit-388224 | 2 deployments: polygon `0x1b80c2ae4927dcdb703782d01539168c98b774f9`; polygon `0x29085e521d5230eac8a2868855a84c31809e6460` | ⚠️ Unaudited |
| KUSDMinterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1b80c2ae4927dcdb703782d01539168c98b774f9`; avalanche `0x29085e521d5230eac8a2868855a84c31809e6460` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388195 | `0xd61867501b821befd5e4270a91836f8f7424b847` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | bsc | unit-388211 | `0xaf2617aa6fd98581bb8cb099a16af74510b6555f` | ⚠️ Unaudited |
| KUSDVault | unknown | project_anchor | own_supporting | 0 | polygon | unit-388200 | `0x68b9737ae74cf1a169890042f1aa359647aa3e47` | ⚠️ Unaudited |
| KUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcd7ac62ee0da57b170c7c034a17a12b8e19554d` | ⚠️ Unaudited |
| LiquidatorWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: polygon `0xc34f77189f81d460c0cf615cd8572a4126c7eb51`; avalanche `0x96f4516a9d150574cb6d8ae3380f28f330e64ef7` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388184 | `0x80850db68db03792ca5650fbdaccebe1da5e52bf` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388185 | `0x834c3bb26bb1bf025dc6b66ad5d7f9003333606b` | ⚠️ Unaudited |
| LPStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa457ac93bc522168a23f00ddc33f48aa1ac2793b` | ⚠️ Unaudited |
| LPStakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388192 | `0xc75ba7e3a40e2293817b590e47beb01e52a0c9b6` | ⚠️ Unaudited |
| OracleHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: polygon `0xdd895fd7448d0b0b7205956a36b4ebe918cefd62`; avalanche `0xabdbd0461ba9ffb0a4ed5cb210866f50ce1785c8` | ⚠️ Unaudited |
| RewardClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea4c9c6249a05b6abd4aede99a185b03948909e9` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388207 | `0x308043a2a7c62b17906f9b074a349c43ccd919ad` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-388210 | `0x6c2c7c5b5c0b60a13b981accfe1aa1616985d3d7` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388199 | `0x4d7242a89877eb044fccba6c49e96b4e032a8636` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-388201 | `0x69c78c26f272405599382925689d0a54b8ceedf9` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: ethereum `0x377f4ff24a4d9f17d99e7a4686567647e66e5393`; ethereum `0x67d920f8aff096f86cac47a0ccf9f37483c9258f`; ethereum `0xcea3ece81ac9c02322cadbd42a5c46153a1a9b33`; avalanche `0x108dbee7fbc3a774b97628356edbb606815f4e81`; avalanche `0x437309692bc441bf5757b1be513204e4c4522e80` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388188 | `0x9e8e622e0ba0dee491fbc42d1bb12ab947e2d03b` | ⚠️ Unaudited |
| TokenDispenserPrivateI25Y75 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d35222e8d238427e09c94a5aab491de6a0e0de4` | ⚠️ Unaudited |
| TokenDispenserSeedI10Y60Y30 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e650349fd52bc9d7fcd4fb1737e269d1e667ddf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01dcdb0272cff6702ee7b41fe0e2e76597eaf12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bdcc1760c92c57e73f5cdb1a82f170f85e3597f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388186 | `0x9636ea80329b4f0fc5af2506b12242c023a30cc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388187 | `0x977746370145e1af4ff37a578454d57e2334a8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d4205f22e9a70e6e9867e7b9c899c15e98643e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388206 | `0x01dcdb0272cff6702ee7b41fe0e2e76597eaf12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x977746370145e1af4ff37a578454d57e2334a8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7d4205f22e9a70e6e9867e7b9c899c15e98643e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a5c4bdab8213098cac594317e47fd154f8c5199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1641b4009f36ddb8871b7aef157c15b4d4200e5d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 160
- Live contracts: 41
- Unknown liveness contracts: 119
- Source-verified contracts: 153
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=6, contamination review=5, exact address book overlap=39, source verified unclassified=103, unverified unclassified=7

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | Controller<br>`0xd819d96f9d28ea85c1dd78e66d7241134e8d4ab4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| candidate review | Controller<br>`0xc11c339a1b24b3a10f81a309a1d271de141908da` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| candidate review | Unitroller<br>`0x3c2ddd486c07343b711a4415cdc9ab90ed32b571` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| candidate review | ControllerV2<br>`0x171d5c31d196fae671e95594372f049bfd0d7f28` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| candidate review | Unitroller<br>`0xdff18ac4146d67bf2ccbe98e7db1e4fa32b96881` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| candidate review | Unitroller<br>`0x0ec3126390c606be63a0fa6585e68075f06679c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| contamination review | KineTreasury<br>`0xbcb64143c3b1643a310012125fb73a6b07d3bbb7` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| contamination review | DisperseTest<br>`0x52a6a05202aa158cc249093b8267fba4388d70f9` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| contamination review | KineProtocolHelper<br>`0x39d1c99a244aa02502defc109e6f2d88efd6b06f` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| contamination review | KineSimpleBridge<br>`0x171d5c31d196fae671e95594372f049bfd0d7f28` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| contamination review | OracleHelper<br>`0xabdbd0461ba9ffb0a4ed5cb210866f50ce1785c8` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | Kaptain<br>`0xf8c7b7709dd106e70133474bdf05d9d5a87c871f` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KaptainV2<br>`0x1540e5821370ace8120ce48554d35276d86a9f0c` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0x1568a7f0bdf67d37dc963c345dbc4a598859eba3` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0x377f100a7280dd992c6f2503330f893620f586ab` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0x473ccdec83b7125a4f52aa6f8699026fcb878ee8` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0x63b63b5f0ae8057cb8f704f65fd91c19badd5a73` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KineMultiSigWallet<br>`0xa6e17ae4b683ed2ee7cb7414a92bd8316f330191` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KMCDDelegator<br>`0xaf2617aa6fd98581bb8cb099a16af74510b6555f` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KUSDVault<br>`0xd61867501b821befd5e4270a91836f8f7424b847` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | LPStakingRewards<br>`0x80850db68db03792ca5650fbdaccebe1da5e52bf` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | LPStakingRewards<br>`0x834c3bb26bb1bf025dc6b66ad5d7f9003333606b` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | LPStakingRewards<br>`0xc75ba7e3a40e2293817b590e47beb01e52a0c9b6` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | Timelock<br>`0x9e8e622e0ba0dee491fbc42d1bb12ab947e2d03b` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KaptainV2<br>`0xd4c220ccac0335334d425a90f58de7c667896a06` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0x3a8502fd810df171d327e080fb39c734c79b57c2` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0x670076f14fb7bc9735af1bc9a1d1ad5266f54fa0` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0xa58e822de1517aae7114714fb354ee853cd35780` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0xd61867501b821befd5e4270a91836f8f7424b847` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KErc20Delegator<br>`0xf8c7b7709dd106e70133474bdf05d9d5a87c871f` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KineMultiSigWallet<br>`0x6534af0bb8cdc205be7f43fb29a602df26a0446c` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KMCDDelegator<br>`0x4f1ab95b798084e44d512b8b0fed3ef933177986` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KUSDMinterDelegator<br>`0x42fe8ec54db8ea76c45673723fbd69116fd28989` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KUSDVault<br>`0xaf2617aa6fd98581bb8cb099a16af74510b6555f` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | StakingRewardsV2<br>`0x308043a2a7c62b17906f9b074a349c43ccd919ad` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | StakingRewardsV2<br>`0x6c2c7c5b5c0b60a13b981accfe1aa1616985d3d7` | project_anchor | unknown | live | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| exact address book overlap | KaptainV2<br>`0x0544be6693763d64c02f49f16986ba1390a2fc39` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KErc20Delegator<br>`0x3770ebfaea8376e5f62397fdce0135d840f0b259` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KErc20Delegator<br>`0x4f6a33b62017dc804866e6b564c32ed5a57c49cd` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KErc20Delegator<br>`0x6c0ed47f567071db4207bdff4f241af67e972d91` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KErc20Delegator<br>`0x96f4516a9d150574cb6d8ae3380f28f330e64ef7` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KErc20Delegator<br>`0xc903e8a6811f5e4354ec530f34cc90bd820ac1b4` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KineMultiSigWallet<br>`0xa8c2a4d5048a6be51c2a55e7a2d6015a96757198` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KineOracleV2<br>`0xd546a5f08ed51b5ec1481fee51e8b659032f9494` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KineUSD<br>`0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KMCDDelegator<br>`0xcd6b46443becad4996a70ee3d8665c0b86a0c54c` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KUSDMinterDelegator<br>`0x1b80c2ae4927dcdb703782d01539168c98b774f9` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | KUSDVault<br>`0x68b9737ae74cf1a169890042f1aa359647aa3e47` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | StakingRewardsV2<br>`0x4d7242a89877eb044fccba6c49e96b4e032a8636` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| exact address book overlap | StakingRewardsV2<br>`0x69c78c26f272405599382925689d0a54b8ceedf9` | project_anchor | unknown | live | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x24ff636d8671cb8d35e63d6b36f26893818e57af` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegate<br>`0x4191eb251aea75c7b5c42e4bd84ff382f9735740` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegate<br>`0x624c0042fdda26c67e919c8a2f19072e7fab4b8d` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegate<br>`0xad58bea532f8fe7b7d485230000cd3757d8ae948` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegate<br>`0xeebf195ed8a4a3a4cf4fc74468dc850d48f0a139` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegate<br>`0xf9771bc908ffac67f05e8a69dd6b1eef9fbf755a` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegator<br>`0x37fb11963f05b3a0eef6c49a9e9ed9cac7650bed` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegator<br>`0xbf5250ac655920b301ca34f4e46f0669b90a5bf5` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KineExchangeTreasury<br>`0x545a25cbbcb63a5b6b65af7896172629ca763645` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KineMultiSigWallet<br>`0xbfa9df9ed8805e657d0feab5d186c6a567752d7f` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KineSimpleBridge<br>`0x80b91dede7d0d0891f46da75dbc25e976242f1d2` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KMCDDelegate<br>`0xaeacff9046951b043b283725842fc56313205179` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KUSDMinter<br>`0x5fbe4eb536dadbcee54d5b55ed6559e29c60b055` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | LPStakingRewards<br>`0xa457ac93bc522168a23f00ddc33f48aa1ac2793b` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | RewardClaimer<br>`0xea4c9c6249a05b6abd4aede99a185b03948909e9` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | StakingRewardsV2<br>`0x377f4ff24a4d9f17d99e7a4686567647e66e5393` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | StakingRewardsV2<br>`0x67d920f8aff096f86cac47a0ccf9f37483c9258f` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | StakingRewardsV2<br>`0xcea3ece81ac9c02322cadbd42a5c46153a1a9b33` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | TokenDispenserPrivateI25Y75<br>`0x3d35222e8d238427e09c94a5aab491de6a0e0de4` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | TokenDispenserSeedI10Y60Y30<br>`0x3e650349fd52bc9d7fcd4fb1737e269d1e667ddf` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegate<br>`0xcea2d0a0413b6bf052eb2eca9c256ee25ad7d128` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegator<br>`0x33888cc997d6e4f0e7e6e2c88e32cf92ee35a875` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegator<br>`0xad58bea532f8fe7b7d485230000cd3757d8ae948` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegator<br>`0xea4c9c6249a05b6abd4aede99a185b03948909e9` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KineRanch<br>`0x9e8e622e0ba0dee491fbc42d1bb12ab947e2d03b` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KineSimpleBridge<br>`0xcbfef8fdd706cde6f208460f2bf39aa9c785f05d` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KMCDDelegate<br>`0x013a07efbafd343bd4ed2241f97579f4bb6e3c9e` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KUSDMinterV2<br>`0xbb7d94a423f4978545ecf73161f0678e8afd1a92` | non_address_book | unknown | unknown | verified | n/a | `0x17d04113a3651e79e7d40a40e47aae23046f7761` |
| source verified unclassified | KErc20Delegate<br>`0x0d7030deb61a06147df06fc44d8e1d1153707913` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x255d26b77e2dc86191e7ffac101bcdf9cc32ecd0` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x39d1c99a244aa02502defc109e6f2d88efd6b06f` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x42dfed8060ff16d87f4a45fa5fe2d0a97b6b76b2` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x75349ec21d97692c95cea9ff82a3bfb7465f47f3` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xabdbd0461ba9ffb0a4ed5cb210866f50ce1785c8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xb6ffea061614f21f2f6c7b36799d0ca47bb188ac` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xcba50a7870bd9427903a105ff41678fefab5c1c4` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xcf6182fc807bfc8f912ef16d1d301ae0d605707f` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xd9aa9bbaba8b69bc4a2e4959a5ad946b01d15432` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xe972e2842d3cbb88a444b2a88b8a5a179f2e0216` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0x108dbee7fbc3a774b97628356edbb606815f4e81` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0xa2b89fee3ad62e35ff7b2dfe3f8242ed3c2df002` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0xada3bee0f99568467066245b1c2f3ab115cef876` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0xee5e0c4df92c2b454af2f3af24876439f7bced60` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0xfbb9ef8e9b6f4c04c0ab9737be717d238bc42c91` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineOracleV2<br>`0x606627b64d71bf9337c273e97803324cc7951e30` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineProtocolHelper<br>`0xcb46bfb835a2e9c76ab935b1df627b0981c5db70` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineSimpleBridge<br>`0x3d2a49f71d94d7f5739d003b9a2e87de99959cf4` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KMCDDelegate<br>`0x75f21389e6e3125996a6820eacc0c25fe5520de0` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KUSDMinterV3<br>`0x29085e521d5230eac8a2868855a84c31809e6460` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | LiquidatorWhitelist<br>`0xc34f77189f81d460c0cf615cd8572a4126c7eb51` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | OracleHelper<br>`0xdd895fd7448d0b0b7205956a36b4ebe918cefd62` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x0378fcb44f7f673b43ee172eb42014c51de86788` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x0dd1cdcf94e394822abc3400cf0a1398c076eaca` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x1e311efc937f975fcf194f112177574132147d41` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x3278b96f436f96356308a0f90e792c7de0e3407b` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x3c73b0f6ea9e0cd62014291a4472364903dcfa94` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x68ed1444202155d34b08b716743944e61d8036ed` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x70163dd4b3ed40a4fbd8efa16cae727d7e958765` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x7bdb2a4939076a497abab5c24c5fabd835cd3f00` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x8b8c72465f1e35f38f0548f999255763180796d0` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x95f6f7b5096a1462719c09d431428c23f50e604e` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0x9e7a8da1b3c23af3bda232e5c70ce5de044311ea` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0xa7e93556cf8baa4d8dd1654a8bae5639890ac10d` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0xab5f4f962c5bc971f00e6d4bc425022821877661` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0xb6579885964b65d34b05b0d7176e05bcd259608d` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0xc23c5913d40adda7273544f685a6685389d9e8e9` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | BridgeToken<br>`0xc436692de82e1e7b97dbc9fe9cc4bfe6a630fb87` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | ControllerV2<br>`0xdff18ac4146d67bf2ccbe98e7db1e4fa32b96881` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KaptainV2<br>`0xa64c217239b4967a9f4b0d4cec7039f281aeece5` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x0d7030deb61a06147df06fc44d8e1d1153707913` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x1d903b731b0173654afe612d12b4489c7b32a19f` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x3d2a49f71d94d7f5739d003b9a2e87de99959cf4` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0x66a782c9a077f5adc988cc0b5fb1cdcc9d7adeda` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xcb46bfb835a2e9c76ab935b1df627b0981c5db70` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xcba50a7870bd9427903a105ff41678fefab5c1c4` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegate<br>`0xd9aa9bbaba8b69bc4a2e4959a5ad946b01d15432` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0x3770ebfaea8376e5f62397fdce0135d840f0b259` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0x6c0ed47f567071db4207bdff4f241af67e972d91` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0x919faaa4fe6d38c7d08fafc3185419862464ba45` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0xdd895fd7448d0b0b7205956a36b4ebe918cefd62` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0xdedb4bfef7be350824f4c1c1f32580aa95e3bc64` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KErc20Delegator<br>`0xf186a66c2bd0509beaafca2a16d6c39ba02425f9` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | Kine<br>`0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineBox<br>`0x5f17dbc86d60f1a34dc22408d263683c3d0e9526` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineBox<br>`0xcd96a1db804cb61ffc1dee0864064fe6f4d20a3c` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineCard<br>`0x77427a2e5904d7d59b96ba2e30b9f7a03996d923` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineExchangeTreasury<br>`0x6e81c77f89409d5db868cce7b67bb5de747cfa0e` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineMarket<br>`0xca13ea4111cd5c86721b657e666eede2e4f9bd8d` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineMultiSigWallet<br>`0x21e9276be3aff3113196423659dc01c9f6cdfac1` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineOracleV2<br>`0xc903e8a6811f5e4354ec530f34cc90bd820ac1b4` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineRanch<br>`0x68b9737ae74cf1a169890042f1aa359647aa3e47` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineSwap<br>`0x06cb07eb43c40b17d9e8f55023fc5968f81c1f18` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineSwap<br>`0xb5e41f496c82465fead139bd469d5295457b0b3f` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineSwap<br>`0xf780a7146c7fe457e2a9eca7e025b7a567316e58` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KineUSD<br>`0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KMCDDelegate<br>`0x75f21389e6e3125996a6820eacc0c25fe5520de0` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KMCDDelegator<br>`0xcd6b46443becad4996a70ee3d8665c0b86a0c54c` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KUSDMinterDelegator<br>`0x1b80c2ae4927dcdb703782d01539168c98b774f9` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KUSDMinterV3<br>`0x29085e521d5230eac8a2868855a84c31809e6460` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | KUSDVault<br>`0xfcd7ac62ee0da57b170c7c034a17a12b8e19554d` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | LiquidatorWhitelist<br>`0x96f4516a9d150574cb6d8ae3380f28f330e64ef7` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | StakingRewardsV2<br>`0x108dbee7fbc3a774b97628356edbb606815f4e81` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| source verified unclassified | StakingRewardsV2<br>`0x437309692bc441bf5757b1be513204e4c4522e80` | non_address_book | unknown | unknown | verified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| unverified unclassified | UnnamedContract<br>`0x01dcdb0272cff6702ee7b41fe0e2e76597eaf12d` | non_address_book | unknown | unknown | unverified | n/a | `0xdb098785a082e21b505670b2ebfe5bf2f6a701dd` |
| unverified unclassified | UnnamedContract<br>`0x2bdcc1760c92c57e73f5cdb1a82f170f85e3597f` | non_address_book | unknown | unknown | unverified | n/a | `0xdb098785a082e21b505670b2ebfe5bf2f6a701dd` |
| unverified unclassified | UnnamedContract<br>`0xf7d4205f22e9a70e6e9867e7b9c899c15e98643e` | non_address_book | unknown | unknown | unverified | n/a | `0xdb098785a082e21b505670b2ebfe5bf2f6a701dd` |
| unverified unclassified | UnnamedContract<br>`0x977746370145e1af4ff37a578454d57e2334a8a4` | non_address_book | unknown | unknown | unverified | n/a | `0xdb098785a082e21b505670b2ebfe5bf2f6a701dd` |
| unverified unclassified | UnnamedContract<br>`0xf7d4205f22e9a70e6e9867e7b9c899c15e98643e` | non_address_book | unknown | unknown | unverified | n/a | `0xdb098785a082e21b505670b2ebfe5bf2f6a701dd` |
| unverified unclassified | UnnamedContract<br>`0x9a5c4bdab8213098cac594317e47fd154f8c5199` | non_address_book | unknown | unknown | unverified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |
| unverified unclassified | UnnamedContract<br>`0x1641b4009f36ddb8871b7aef157c15b4d4200e5d` | non_address_book | unknown | unknown | unverified | n/a | `0x8c0e39d0b2e0d83dd4c52c25dd36294903fc5546` |

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
| ethereum | `0xbb7d94a423f4978545ecf73161f0678e8afd1a92` | ControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3c2ddd486c07343b711a4415cdc9ab90ed32b571` | ControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x171d5c31d196fae671e95594372f049bfd0d7f28` | ControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8c7b7709dd106e70133474bdf05d9d5a87c871f` | Kaptain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1540e5821370ace8120ce48554d35276d86a9f0c` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd4c220ccac0335334d425a90f58de7c667896a06` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0544be6693763d64c02f49f16986ba1390a2fc39` | KaptainV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1568a7f0bdf67d37dc963c345dbc4a598859eba3` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24ff636d8671cb8d35e63d6b36f26893818e57af` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x377f100a7280dd992c6f2503330f893620f586ab` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63b63b5f0ae8057cb8f704f65fd91c19badd5a73` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3a8502fd810df171d327e080fb39c734c79b57c2` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x255d26b77e2dc86191e7ffac101bcdf9cc32ecd0` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3770ebfaea8376e5f62397fdce0135d840f0b259` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x39d1c99a244aa02502defc109e6f2d88efd6b06f` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6c0ed47f567071db4207bdff4f241af67e972d91` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xabdbd0461ba9ffb0a4ed5cb210866f50ce1785c8` | KErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa58e822de1517aae7114714fb354ee853cd35780` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5fbe4eb536dadbcee54d5b55ed6559e29c60b055` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf186a66c2bd0509beaafca2a16d6c39ba02425f9` | KEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcbfef8fdd706cde6f208460f2bf39aa9c785f05d` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xbfa9df9ed8805e657d0feab5d186c6a567752d7f` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa9c1740fa56e4c0f6ce5a792fd27095c8b6ccd87` | Kine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6e17ae4b683ed2ee7cb7414a92bd8316f330191` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6534af0bb8cdc205be7f43fb29a602df26a0446c` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa8c2a4d5048a6be51c2a55e7a2d6015a96757198` | KineMultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd546a5f08ed51b5ec1481fee51e8b659032f9494` | KineOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa8d7643324df0f38764f514eb1a99d8f379cc692` | KineRanch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4c220ccac0335334d425a90f58de7c667896a06` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd819d96f9d28ea85c1dd78e66d7241134e8d4ab4` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x03324bbc860fbbfd452f6ac0b0b1d76deafc99a2` | KineUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf2617aa6fd98581bb8cb099a16af74510b6555f` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x013a07efbafd343bd4ed2241f97579f4bb6e3c9e` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x75f21389e6e3125996a6820eacc0c25fe5520de0` | KMCDDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcea2d0a0413b6bf052eb2eca9c256ee25ad7d128` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x42fe8ec54db8ea76c45673723fbd69116fd28989` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1b80c2ae4927dcdb703782d01539168c98b774f9` | KUSDMinterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61867501b821befd5e4270a91836f8f7424b847` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xaf2617aa6fd98581bb8cb099a16af74510b6555f` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x68b9737ae74cf1a169890042f1aa359647aa3e47` | KUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80850db68db03792ca5650fbdaccebe1da5e52bf` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x834c3bb26bb1bf025dc6b66ad5d7f9003333606b` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc75ba7e3a40e2293817b590e47beb01e52a0c9b6` | LPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x308043a2a7c62b17906f9b074a349c43ccd919ad` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6c2c7c5b5c0b60a13b981accfe1aa1616985d3d7` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4d7242a89877eb044fccba6c49e96b4e032a8636` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x69c78c26f272405599382925689d0a54b8ceedf9` | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9e8e622e0ba0dee491fbc42d1bb12ab947e2d03b` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 94 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 10 |

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
