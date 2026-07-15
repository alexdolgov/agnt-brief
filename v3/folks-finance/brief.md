# Agentic Audit Brief: Folks Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 21 (1 matched; 20 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Folks Finance (`folks-finance`)
- Website: [https://folks.finance/](https://folks.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, monad, polygon, sei
- Contract surface: 384 unique implementations (513 raw deployments)
- Coverage basis: 1/61 confirmed own live verified implementations (1.6%); conservative 1.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $84,214,549.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Folks Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, monad, polygon, sei. Structural roles: 50 core, 9 unclassified, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: core (50), unclassified (9), supporting (2)
- Contract kinds: contract (61)
- Detected standards: accesscontrol (44), erc165 (44), erc20 (5), erc20permit (3), erc1967proxy (2), ownable (2), erc4626 (1)
- Frameworks: openzeppelin (50), openzeppelin-upgradeable (2), chainlink (1), layerzero (1), permit2 (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 131 contracts are derived from known codebases. 131 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00db81...9ec0ce`, chain 1)
- UnnamedContract (`0x2260fa...c2c599`, chain 1)
- UnnamedContract (`0x7a56e1...652f97`, chain 1)
- UnnamedContract (`0x7f39c5...5e2ca0`, chain 1)
- UnnamedContract (`0x911d86...c803da`, chain 1)
- UnnamedContract (`0x95ad61...64c4ce`, chain 1)
- UnnamedContract (`0xa0b869...06eb48`, chain 1)
- UnnamedContract (`0xcd5fe2...59b7ee`, chain 1)
- UnnamedContract (`0xcda755...2a77ad`, chain 1)
- UnnamedContract (`0xd11c45...6d5ed8`, chain 1)
- UnnamedContract (`0xd97af2...9d4ae3`, chain 1)
- UnnamedContract (`0xdac17f...831ec7`, chain 1)
- UnnamedContract (`0xf854ac...753cc5`, chain 1)
- UnnamedContract (`0x2170ed...f933f8`, chain 56)
- UnnamedContract (`0x37d761...393cdd`, chain 56)
- UnnamedContract (`0x4aae82...8cbcf7`, chain 56)
- UnnamedContract (`0x7130d2...3ead9c`, chain 56)
- UnnamedContract (`0xec59de...3447cc`, chain 56)
- UnnamedContract (`0x03b54a...b3bccd`, chain 137)
- UnnamedContract (`0x1bfd67...d9bfd6`, chain 137)
- UnnamedContract (`0x3c499c...5c3359`, chain 137)
- UnnamedContract (`0x53e0bc...abad39`, chain 137)
- UnnamedContract (`0x7ceb23...b9f619`, chain 137)
- UnnamedContract (`0xc2132d...b58e8f`, chain 137)
- UnnamedContract (`0xc271a1...c20a9c`, chain 137)
- UnnamedContract (`0xfa68fb...45efb6`, chain 137)
- UnnamedContract (`0x1b6862...2de19c`, chain 143)
- UnnamedContract (`0x849831...f55081`, chain 143)
- UnnamedContract (`0x9105ce...036c36`, chain 143)
- UnnamedContract (`0xa3227c...ed81b9`, chain 143)
- UnnamedContract (`0xb1e293...1774ee`, chain 143)
- UnnamedContract (`0xc30107...ea3356`, chain 143)
- UnnamedContract (`0xe7cd86...0fc82d`, chain 143)
- UnnamedContract (`0xee8c0e...481242`, chain 143)
- UnnamedContract (`0x0555e3...0d2b9c`, chain 1329)
- UnnamedContract (`0x915143...60ecc5`, chain 1329)
- UnnamedContract (`0x04c059...6c150a`, chain 8453)
- UnnamedContract (`0x0b3e32...4e7e1b`, chain 8453)
- UnnamedContract (`0x2ae3f1...0dec22`, chain 8453)
- UnnamedContract (`0x3b86ad...ee931f`, chain 8453)
- UnnamedContract (`0x833589...a02913`, chain 8453)
- UnnamedContract (`0x98d0ba...537553`, chain 8453)
- UnnamedContract (`0x9ded28...d014f8`, chain 8453)
- UnnamedContract (`0xc1cba3...0ee452`, chain 8453)
- UnnamedContract (`0xcbb7c0...ed33bf`, chain 8453)
- UnnamedContract (`0x048e47...41a9ec`, chain 42161)
- UnnamedContract (`0x2f2a25...fc5b0f`, chain 42161)
- UnnamedContract (`0x3106e2...4972fb`, chain 42161)
- UnnamedContract (`0x357510...cf4dbe`, chain 42161)
- UnnamedContract (`0x3647c5...dbbdc0`, chain 42161)
- UnnamedContract (`0x4186bf...56b41f`, chain 42161)
- UnnamedContract (`0x5979d7...800529`, chain 42161)
- UnnamedContract (`0x6c84a8...d0de40`, chain 42161)
- UnnamedContract (`0x912ce5...9e6548`, chain 42161)
- UnnamedContract (`0xaf88d0...8e5831`, chain 42161)
- UnnamedContract (`0xb35915...c88acc`, chain 42161)
- UnnamedContract (`0xfd086b...9fcbb9`, chain 42161)
- UnnamedContract (`0x000000...a9012a`, chain 43114)
- UnnamedContract (`0x14a84f...bc1646`, chain 43114)
- UnnamedContract (`0x152b9d...943e50`, chain 43114)
- UnnamedContract (`0x211cc4...5fe5d2`, chain 43114)
- UnnamedContract (`0x2b2c81...0ea4be`, chain 43114)
- UnnamedContract (`0x2f643d...650204`, chain 43114)
- UnnamedContract (`0x49d5c2...c10bab`, chain 43114)
- UnnamedContract (`0x5d3a1f...52ef34`, chain 43114)
- UnnamedContract (`0x601486...6a38b9`, chain 43114)
- UnnamedContract (`0x6e84a6...bc0fdd`, chain 43114)
- UnnamedContract (`0x970223...f4a8c7`, chain 43114)
- UnnamedContract (`0xa25eaf...b703e3`, chain 43114)
- UnnamedContract (`0xb97ef9...c48a6e`, chain 43114)
- UnnamedContract (`0xbc78d8...81a777`, chain 43114)
- UnnamedContract (`0xc891eb...5c2acd`, chain 43114)
- UnnamedContract (`0xd09acb...167003`, chain 43114)
- AdminUpgradeabilityProxy (`0x6c3ea9...23a0e8`, chain 1)
- Aero (`0x940181...d98631`, chain 8453)
- AethirToken (`0xbe0ed4...c5226b`, chain 1)
- BridgeRouterSpoke (`0x4701fd...f4d48f`, chain 1)
- BridgeRouterSpoke (`0xfc828c...4ce695`, chain 1)
- BridgeRouterSpoke (`0x57d77f...f074a4`, chain 56)
- BridgeRouterSpoke (`0xdf34f4...708af3`, chain 42161)
- CCIPDataAdapter (`0x0b8c6e...467572`, chain 1)
- CCIPDataAdapter (`0xeb48a1...de69c9`, chain 1)
- CCIPDataAdapter (`0x1b2a8d...def8df`, chain 56)
- CCIPDataAdapter (`0xf14535...749cdc`, chain 42161)
- ERC1967Proxy (`0x2cd3cd...3d7335`, chain 43114)
- NativeSeiTokensERC20 (`0x5cf682...df9423`, chain 1329)
- OFTTokenERC20 (`0x160345...9342d8`, chain 1329)
- SpokeCircleToken (`0x21c624...e7ecc2`, chain 1)
- SpokeCircleToken (`0x5162ac...bf8cfa`, chain 1)
- SpokeCircleToken (`0x61c80b...3a69dd`, chain 1)
- SpokeCircleToken (`0xb7ab35...4d7884`, chain 1)
- SpokeCircleToken (`0xd4f7fa...7a3a38`, chain 1)
- SpokeCircleToken (`0xf4c542...2f847e`, chain 1)
- SpokeCircleToken (`0x0700b2...20779c`, chain 56)
- SpokeCircleToken (`0x7218bd...6aee81`, chain 56)
- SpokeCircleToken (`0xcd7ee4...5108bf`, chain 56)
- SpokeCircleToken (`0x59a6e7...fb5361`, chain 137)
- SpokeCircleToken (`0xa95cf7...bfcbf0`, chain 137)
- SpokeCircleToken (`0x23a96d...6a87f6`, chain 42161)
- SpokeCircleToken (`0x2e6e46...9b7a98`, chain 42161)
- SpokeCommon (`0xc7bc4a...a4c3cd`, chain 1)
- SpokeErc20Token (`0x12d4fe...5a5a90`, chain 1)
- SpokeErc20Token (`0x3aea5e...4219e4`, chain 1)
- SpokeErc20Token (`0x63bcb6...ee7eea`, chain 1)
- SpokeErc20Token (`0x7967b0...cc8f92`, chain 1)
- SpokeErc20Token (`0x91461b...644bb2`, chain 1)
- SpokeErc20Token (`0xb39c03...934449`, chain 1)
- SpokeErc20Token (`0xb3abd8...aa7cda`, chain 1)
- SpokeErc20Token (`0xff785f...211723`, chain 1)
- SpokeErc20Token (`0x12db97...54156f`, chain 56)
- SpokeErc20Token (`0x4db12f...3380a5`, chain 56)
- SpokeErc20Token (`0x1a4020...3179e9`, chain 137)
- SpokeErc20Token (`0x63ad90...c982b8`, chain 137)
- SpokeErc20Token (`0xa526f9...c84000`, chain 137)
- SpokeErc20Token (`0xab07af...626322`, chain 137)
- SpokeErc20Token (`0xcb6656...16a75a`, chain 137)
- SpokeErc20Token (`0xf2ee68...94abf0`, chain 137)
- SpokeErc20Token (`0x2d1c07...d541a5`, chain 42161)
- SpokeErc20Token (`0x624363...af091c`, chain 42161)
- SpokeErc20Token (`0x74416b...6ee097`, chain 42161)
- SpokeErc20Token (`0xc0a353...0c7590`, chain 42161)
- SpokeErc20Token (`0xdf2da9...b19111`, chain 42161)
- SpokeErc20Token (`0xe69e06...4cbd2c`, chain 42161)
- SpokeGasToken (`0xe3b0e4...d05883`, chain 1)
- SpokeGasToken (`0x5f2f47...7ecab0`, chain 56)
- SpokeRewardsV2Common (`0xc6c682...6c38cc`, chain 1)
- SpokeRewardsV2Common (`0x531490...5d14d4`, chain 56)
- SpokeRewardsV2Common (`0x6bc143...1ed352`, chain 42161)
- SpokeRewardsV2Erc20Token (`0x025961...b3f228`, chain 42161)
- StablecoinProxy (`0x8292bb...6317ed`, chain 1)
- StakedAvUSDV2 (`0x06d47f...72219e`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 134/158 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/61 (1.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 134 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 250 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 134 of 384 unique; 250 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/136
- Verified + Unaudited implementations: 135
- Verified by bytecode match: 0
- Unverified implementations: 248
- Unique implementations: 384
- Raw deployments: 513
- Audits discovered: 21 (21 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/folksfinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 15 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 1.6% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 1 | 0.7% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240294 | `0xb39c03...934449` | ✅ Audited |

### ⚠️ Verified + Unaudited (135)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12db97...54156f` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeffdcb...230e3e` | ⚠️ Unaudited |
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x89245a...6bed7b`; avalanche `0x99f183...af1d0f` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xfac98f...8b1674`; ethereum `0xfee08d...c317b3` | ⚠️ Unaudited |
| Aero | token | project_anchor | own_supporting | 0 | base | unit-240418 | `0x940181...d98631` | ⚠️ Unaudited |
| AethirToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240298 | `0xbe0ed4...c5226b` | ⚠️ Unaudited |
| AlwaysEligibleAddressOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0b2ef2...a1d5e0`; bsc `0x0b2ef2...a1d5e0`; polygon `0x85aa8d...76293d`; sei `0x85aa8d...76293d`; base `0x0b2ef2...a1d5e0`; arbitrum `0x5c60f1...9dd04e` | ⚠️ Unaudited |
| AvantCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd2c2a...289053` | ⚠️ Unaudited |
| AvantMintingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x58c32c...76cc04`; avalanche `0xcb4313...62a49c` | ⚠️ Unaudited |
| AvantOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x352460...a1bd85` | ⚠️ Unaudited |
| AvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24de87...a0e346` | ⚠️ Unaudited |
| AvUSDMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1499cb...e0ed51` | ⚠️ Unaudited |
| BridgedYBTCB | operational_periphery | project_anchor | own_supporting | 1 | avalanche | unit-240429 | `0x2cd3cd...3d7335` | ⚠️ Unaudited |
| BridgeRouterSpoke | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240280 | `0x4701fd...f4d48f` | ⚠️ Unaudited |
| BridgeRouterSpoke | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240315 | `0xfc828c...4ce695` | ⚠️ Unaudited |
| BridgeRouterSpoke | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-240401 | `0x57d77f...f074a4` | ⚠️ Unaudited |
| BridgeRouterSpoke | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 9 deployments: bsc `0xcda755...2a77ad`; polygon `0x7218bd...6aee81`; polygon `0x9105ce...036c36`; polygon `0xdf34f4...708af3`; polygon `0xf854ac...753cc5`; sei `0x0700b2...20779c`; base `0x271141...ee06df`; base `0xfc828c...4ce695`; arbitrum `0x4db12f...3380a5` | ⚠️ Unaudited |
| BridgeRouterSpoke | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240371 | `0xdf34f4...708af3` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240273 | `0x0b8c6e...467572` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240311 | `0xeb48a1...de69c9` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | project_anchor | own_supporting | 0 | bsc | unit-240395 | `0x1b2a8d...def8df` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x5c60f1...9dd04e`; polygon `0x5c60f1...9dd04e`; polygon `0xf14535...749cdc`; sei `0xeb48a1...de69c9`; base `0xd0652f...1d6e3f`; base `0xeb48a1...de69c9`; arbitrum `0x7218bd...6aee81` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240373 | `0xf14535...749cdc` | ⚠️ Unaudited |
| CCIPTokenAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240283 | `0x5c60f1...9dd04e` | ⚠️ Unaudited |
| CCIPTokenAdapter | unknown | project_anchor | own_supporting | 0 | bsc | unit-240405 | `0x802063...90b03b` | ⚠️ Unaudited |
| CCIPTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: polygon `0xc7bc4a...a4c3cd`; sei `0x5c60f1...9dd04e`; base `0x5c60f1...9dd04e`; arbitrum `0x0700b2...20779c` | ⚠️ Unaudited |
| CreditMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x13379b...0d75e1` | ⚠️ Unaudited |
| DummyERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556f50...aa9e6d` | ⚠️ Unaudited |
| DummyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f3bd...2be82a` | ⚠️ Unaudited |
| DummyERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b821...085978` | ⚠️ Unaudited |
| DummyMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578360...11ed5f` | ⚠️ Unaudited |
| EnumerableSet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7c2fc1...5cf28c` | ⚠️ Unaudited |
| ERC1155Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b9020...6eb88f` | ⚠️ Unaudited |
| ERC1155Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46ca15...ec1871`; ethereum `0x62d7e8...5eb2a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4d4dac...d4d29d`; avalanche `0xf99b9e...68d1f2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6ed8c6...992952`; avalanche `0xf76e6d...0e67b4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xff7f8f...e8009b` | ⚠️ Unaudited |
| ERC20Predicate | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x40ec5b...5bbbdf` | ⚠️ Unaudited |
| ERC20Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x608669...8cbde5`; ethereum `0xc760de...6d7345` | ⚠️ Unaudited |
| ERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9aaae2...931dbb`; ethereum `0xe6fc6c...4de7ce`; ethereum `0xf3f08b...d5e4cd` | ⚠️ Unaudited |
| ERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6f453...80f7ad` | ⚠️ Unaudited |
| EtherPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x499a86...b85ab4`; ethereum `0xb6a508...5c1326` | ⚠️ Unaudited |
| EtherPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8484ef...922b30` | ⚠️ Unaudited |
| FeeLibV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x711b5a...830d8e`; sei `0xcd4302...423311`; sei `0xde4860...abaeb2` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35f35c...5bbcb5` | ⚠️ Unaudited |
| Hub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb39c03...934449` | ⚠️ Unaudited |
| LoanManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4c542...2f847e` | ⚠️ Unaudited |
| MapleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x643c4e...f52d66`; ethereum `0x6ed767...767aec` | ⚠️ Unaudited |
| MapleTokenInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4a4f...4b30fc` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195fe6...5dfa0b` | ⚠️ Unaudited |
| MerklePatriciaProof | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6fa4f...d1c0aa` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9499...ad8f2c` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3bf44a...c6e0b6`; ethereum `0x9b02a2...4a89c2` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x932532...15f2b7` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb0183...a33fe5` | ⚠️ Unaudited |
| MplUserActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x59371c...b6c183`; ethereum `0x75b7b4...e8f461` | ⚠️ Unaudited |
| MultiSign | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 34 deployments: ethereum `0x1073d5...6ede78`; ethereum `0x2147bd...bbc5fd`; ethereum `0x2591c2...461d8c`; ethereum `0x2b930c...bdcfe1`; ethereum `0x315bab...0b6f25`; ethereum `0x3ecbf8...a3d566`; ethereum `0x46f057...4eaa53`; ethereum `0x492184...58ea19`; ethereum `0x5c1e4c...18608b`; ethereum `0x66fc2d...ac6a0e`; ethereum `0x6e36e3...9fe3e6`; ethereum `0x7272b2...9f2cec`; ethereum `0x7f9922...c6de44`; ethereum `0x83f7f1...541fa9`; ethereum `0x860a80...ff898e`; ethereum `0x863c87...55ce6c`; ethereum `0x866eb2...96918c`; ethereum `0x97e9d0...428591`; ethereum `0x9ab2ce...6f8165`; ethereum `0x9b8a83...847a34`; ethereum `0xa2eea1...d9c367`; ethereum `0xb385d2...b21b20`; ethereum `0xb4f89c...b699c5`; ethereum `0xb60fa2...6aca2a`; ethereum `0xb723d5...d155ea`; ethereum `0xd4707b...0385d1`; ethereum `0xd48ede...fedd68`; ethereum `0xd9334d...272761`; ethereum `0xe23090...9df5ae`; ethereum `0xf1dcb5...30056f`; ethereum `0xf26b8b...72a71f`; ethereum `0xf7db20...945b3a`; ethereum `0xfbca8b...600bb6`; ethereum `0xff72e1...209ecb` | ⚠️ Unaudited |
| NativeSeiTokensERC20 | token | project_anchor | own_supporting | 0 | sei | unit-240321 | `0x5cf682...df9423` | ⚠️ Unaudited |
| OFTTokenERC20 | token | project_anchor | own_supporting | 0 | sei | unit-240318 | `0x160345...9342d8` | ⚠️ Unaudited |
| OFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x77c716...492a0f` | ⚠️ Unaudited |
| PriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0c66fc...9272af`; avalanche `0x40b418...6f2166` | ⚠️ Unaudited |
| PriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0ef7be...357923`; avalanche `0x7b4e81...ba9777` | ⚠️ Unaudited |
| PYUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240427 | `0x6c3ea9...23a0e8` | ⚠️ Unaudited |
| RecapitalizationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dfe04...b3f69d` | ⚠️ Unaudited |
| RequestsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4c129d...6fc887`; avalanche `0x5f0aef...9e2972` | ⚠️ Unaudited |
| RewardLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x090194...ba8c01` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x227f65...964c7d` | ⚠️ Unaudited |
| RLPReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbefe61...b1bc47` | ⚠️ Unaudited |
| RootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0bff34...3421cb`; ethereum `0xd4888f...25b653` | ⚠️ Unaudited |
| RootChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0c68c...c77c77` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf77a3...874e43` | ⚠️ Unaudited |
| SafeMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebeac...a93aab` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa7c10c...dc760c`; avalanche `0xf7cf10...f7dfc7` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xaefa3f...92b29a`; avalanche `0xdd1cdf...b6b3b9` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240275 | `0x21c624...e7ecc2` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240282 | `0x5162ac...bf8cfa` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240284 | `0x61c80b...3a69dd` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240297 | `0xb7ab35...4d7884` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240305 | `0xd4f7fa...7a3a38` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240312 | `0xf4c542...2f847e` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | bsc | unit-240392 | `0x0700b2...20779c` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | bsc | unit-240404 | `0x7218bd...6aee81` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | bsc | unit-240407 | `0xcd7ee4...5108bf` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | polygon | unit-240331 | `0x59a6e7...fb5361` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | polygon | unit-240335 | `0xa95cf7...bfcbf0` | ⚠️ Unaudited |
| SpokeCircleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: polygon `0xfd2bc1...7377c7`; base `0x3ef10e...f9acd7`; base `0xbf142d...3c62df`; base `0xe0c45a...3d0d8f`; base `0xf4c542...2f847e`; arbitrum `0x531490...5d14d4`; arbitrum `0xf4c542...2f847e` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-240352 | `0x23a96d...6a87f6` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-240354 | `0x2e6e46...9b7a98` | ⚠️ Unaudited |
| SpokeCommon | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240300 | `0xc7bc4a...a4c3cd` | ⚠️ Unaudited |
| SpokeCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: bsc `0xc7bc4a...a4c3cd`; polygon `0x5f2f47...7ecab0`; sei `0xc7bc4a...a4c3cd`; base `0xc7bc4a...a4c3cd`; arbitrum `0x57d77f...f074a4`; avalanche `0xc03094...cf2ac6` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240274 | `0x12d4fe...5a5a90` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240279 | `0x3aea5e...4219e4` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240285 | `0x63bcb6...ee7eea` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240287 | `0x7967b0...cc8f92` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240291 | `0x91461b...644bb2` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240295 | `0xb3abd8...aa7cda` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240316 | `0xff785f...211723` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | bsc | unit-240393 | `0x12db97...54156f` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | bsc | unit-240399 | `0x4db12f...3380a5` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240327 | `0x1a4020...3179e9` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240332 | `0x63ad90...c982b8` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240334 | `0xa526f9...c84000` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240336 | `0xab07af...626322` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240339 | `0xcb6656...16a75a` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240340 | `0xf2ee68...94abf0` | ⚠️ Unaudited |
| SpokeErc20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 25 deployments: ethereum `0xac3a01...565714`; polygon `0x2e6e46...9b7a98`; polygon `0x531490...5d14d4`; polygon `0x57d77f...f074a4`; polygon `0x69f312...694cd1`; polygon `0xb1e293...1774ee`; polygon `0xb39c03...934449`; polygon `0xc03094...cf2ac6`; polygon `0xc30107...ea3356`; polygon `0xe3b0e4...d05883`; polygon `0xf4c542...2f847e`; sei `0x12db97...54156f`; sei `0x4db12f...3380a5`; sei `0x7218bd...6aee81`; sei `0x802063...90b03b`; base `0x123f83...da9bfd`; base `0x31a324...42606c`; base `0x50d5bb...8567ea`; base `0x7ace2b...ac12bb`; base `0x7c7961...b605fb`; base `0x8d9aad...b4c51c`; base `0x9009c9...6e6e35`; arbitrum `0x1b2a8d...def8df`; arbitrum `0xcd6801...44fddf`; avalanche `0xe53189...8db073` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240353 | `0x2d1c07...d541a5` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240361 | `0x624363...af091c` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240364 | `0x74416b...6ee097` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240369 | `0xc0a353...0c7590` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240370 | `0xdf2da9...b19111` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240372 | `0xe69e06...4cbd2c` | ⚠️ Unaudited |
| SpokeGasToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240309 | `0xe3b0e4...d05883` | ⚠️ Unaudited |
| SpokeGasToken | token | project_anchor | own_supporting | 0 | bsc | unit-240402 | `0x5f2f47...7ecab0` | ⚠️ Unaudited |
| SpokeGasToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: polygon `0x0700b2...20779c`; polygon `0x12db97...54156f`; polygon `0x1b2a8d...def8df`; polygon `0x37d761...393cdd`; polygon `0x4db12f...3380a5`; polygon `0x802063...90b03b`; sei `0x5f2f47...7ecab0`; base `0xe3b0e4...d05883`; arbitrum `0x37d761...393cdd` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240299 | `0xc6c682...6c38cc` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | project_anchor | own_supporting | 0 | bsc | unit-240400 | `0x531490...5d14d4` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: polygon `0x6bc143...1ed352`; sei `0x1b2a8d...def8df`; base `0xd97af2...9d4ae3` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240362 | `0x6bc143...1ed352` | ⚠️ Unaudited |
| SpokeRewardsV2Erc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240350 | `0x025961...b3f228` | ⚠️ Unaudited |
| SpokeRewardsV2Erc20Token | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240365 | `0x88f15e...efded2` | ⚠️ Unaudited |
| SpokeRewardsV2GasToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd7ee4...5108bf` | ⚠️ Unaudited |
| StablecoinUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfd748...f7f2ec` | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | project_anchor | own_supporting | 1 | ethereum | unit-240428 | `0x8292bb...6317ed` | ⚠️ Unaudited |
| StakedAvantCoinV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x649342...deba84` | ⚠️ Unaudited |
| StakedAvUSDV2 | token | project_anchor | own_supporting | 0 | avalanche | unit-240376 | `0x06d47f...72219e` | ⚠️ Unaudited |
| SyrupDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x509712...e986ea`; ethereum `0xfc0a49...edb1cf` | ⚠️ Unaudited |
| TokenMessaging | token | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x1502fa...275d3d` | ⚠️ Unaudited |
| Treasurer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x873cfb...dced22` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x02daef...057966`; ethereum `0x2791bc...a84174`; ethereum `0x5adf17...2e0a58`; ethereum `0x9d0f82...ec93ae`; ethereum `0xcf97bc...1ab6bd`; ethereum `0xd24289...937a22`; ethereum `0xdd9185...812226` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe99924...54643e` | ⚠️ Unaudited |
| VestingWallet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9d9f4...6336b6` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x166135...c480a5` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebf418...67e6b4` | ⚠️ Unaudited |
| xMPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5458a2...f78ab7`; ethereum `0xc7e8b3...260b45` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (248)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240272 | `0x00db81...9ec0ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240276 | `0x2260fa...c2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e0bc...abad39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7463f8...f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240288 | `0x7a56e1...652f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad369...b63769` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240289 | `0x7f39c5...5e2ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84267a...5c8df7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240290 | `0x911d86...c803da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240292 | `0x95ad61...64c4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9718a2...5efe77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240293 | `0xa0b869...06eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a261...fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240301 | `0xcd5fe2...59b7ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240302 | `0xcda755...2a77ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240304 | `0xd11c45...6d5ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38cbf...2c5b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd65556...7202fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240307 | `0xd97af2...9d4ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab5b2...d5f821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240308 | `0xdac17f...831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240314 | `0xf854ac...753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a1c5...e69b83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240396 | `0x2170ed...f933f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240397 | `0x37d761...393cdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240398 | `0x4aae82...8cbcf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69f312...694cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240403 | `0x7130d2...3ead9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab07af...626322` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240408 | `0xec59de...3447cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf854ac...753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc828c...4ce695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240326 | `0x03b54a...b3bccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b2ef2...a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11e732...53bee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a8fed...0eb9c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240328 | `0x1bfd67...d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2110de...8b24b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240329 | `0x3c499c...5c3359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240330 | `0x53e0bc...abad39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240333 | `0x7ceb23...b9f619` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240337 | `0xc2132d...b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240338 | `0xc271a1...c20a9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240341 | `0xfa68fb...45efb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc828c...4ce695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240342 | `0x1b6862...2de19c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240343 | `0x849831...f55081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240344 | `0x9105ce...036c36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240345 | `0xa3227c...ed81b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240346 | `0xb1e293...1774ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240347 | `0xc30107...ea3356` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240348 | `0xe7cd86...0fc82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240349 | `0xee8c0e...481242` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-240317 | `0x0555e3...0d2b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x0b2ef2...a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x37d761...393cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x531490...5d14d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x57d77f...f074a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x8e8539...c58746` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-240324 | `0x915143...60ecc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9c2dc7...4945bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe3b0e4...d05883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf4c542...2f847e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf854ac...753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xfc828c...4ce695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240409 | `0x04c059...6c150a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240412 | `0x0b3e32...4e7e1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240413 | `0x2ae3f1...0dec22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240415 | `0x3b86ad...ee931f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48ba8a...550e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ff936...29fbc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240417 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91461b...644bb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240419 | `0x98d0ba...537553` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240420 | `0x9ded28...d014f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240423 | `0xc1cba3...0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240425 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce9afc...ffee67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240351 | `0x048e47...41a9ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240355 | `0x2f2a25...fc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240356 | `0x3106e2...4972fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240357 | `0x357510...cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240358 | `0x3647c5...dbbdc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240359 | `0x4186bf...56b41f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240360 | `0x5979d7...800529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f2f47...7ecab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240363 | `0x6c84a8...d0de40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x703310...c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240366 | `0x912ce5...9e6548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240367 | `0xaf88d0...8e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240368 | `0xb35915...c88acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6df89...da3c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7bc4a...a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240374 | `0xfd086b...9fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240375 | `0x000000...a9012a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x012482...156153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x025961...b3f228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043e63...262ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04a3d4...5b34aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04c8b9...8eba5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0700b2...20779c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07c911...134a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0aee2b...f3cdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b09e1...d0e41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b2ef2...a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b4e69...acd79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e563b...0d78dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1072ec...5c1156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10a448...912dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1177a3...40bcf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11f82b...57a1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13a21b...a90737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x145a0e...65bdd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240377 | `0x14a84f...bc1646` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240378 | `0x152b9d...943e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18031b...cd5258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b2a8d...def8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b5a1d...536465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c51aa...51aba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c7ec7...f9a9d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240379 | `0x211cc4...5fe5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x213299...86bb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23a96d...6a87f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24db05...6bc86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27389a...0788a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x279b3e...b32fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa8fe...843915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240380 | `0x2b2c81...0ea4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b7995...b16168` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240381 | `0x2f643d...650204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x307bce...b0eb2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3291fc...755d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x331a19...95202a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x344505...aca109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x347d34...ed1431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34f1ba...6f4860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37d761...393cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x391201...e3c363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x398715...5d4aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b1c2e...7aa812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e85a5...a46d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f63a6...222b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f87f3...72ddca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4161d7...641fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42bb92...d8b387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44e0d0...6346a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45060a...11a084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x481cf0...ffb40e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240382 | `0x49d5c2...c10bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4db12f...3380a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e6dd5...920e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fb4c3...417fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51958e...da7125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x531490...5d14d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5431e7...eadefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5562d8...5fcedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56046f...4e88e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57d77f...f074a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57d849...00da88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59023e...10e5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c60f1...9dd04e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240383 | `0x5d3a1f...52ef34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e5a20...75e6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f2f47...7ecab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f8a1d...77e948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fe123...8c816a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240384 | `0x601486...6a38b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60f268...e731db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63efda...dd46df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x666aea...a48e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66dd1c...323d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a3560...9883ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240385 | `0x6e84a6...bc0fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f6f56...d4e2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x703310...c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x705425...cdb570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7178bf...8840f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7218bd...6aee81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72fa22...19cf99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x750db2...3ba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x78b4e5...d2a9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7902db...be55b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x795ccf...19389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c532a...362c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c5fbb...8ee2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cd4af...e0b6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fd218...031aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x802063...90b03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84c420...2ed5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88ae56...d65ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88f15e...efded2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x897ce2...757560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89970d...824fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a8b93...0f0111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c3b4e...62f054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c893d...5bc015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x932406...e03739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93fd59...527d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94307e...f20adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x953345...1411e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240386 | `0x970223...f4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97592d...77eeff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x993681...9b3aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a1020...5c68ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e4456...3e1a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ed81f...576ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f0c0a...45c8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f5964...b1b573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1e102...e697c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240387 | `0xa25eaf...b703e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa54482...57651a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xada5be...d008dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb14f25...040604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3782d...c8b252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5327c...e5584a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6df89...da3c75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240388 | `0xb97ef9...c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240389 | `0xbc78d8...81a777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0108c...4456ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc02ada...02b29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2fd40...09e131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7bc4a...a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7ddb4...fc769c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240390 | `0xc891eb...5c2acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc96820...8432cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd6801...44fddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcda755...2a77ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240391 | `0xd09acb...167003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4f87e...d0010c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd77b92...4328fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ff49...8358d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9d50d...1139dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc887a...37431a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd9efb...d545a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe396e1...61f80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3b0e4...d05883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe47285...3294c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe69e06...4cbd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6b771...f8609d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe78970...e5709c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb48a1...de69c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec0ca5...d604fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef7a6e...5d57dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf51a72...b9c50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf727ec...8d24b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf854ac...753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc828c...4ce695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf0bf...09ff58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Coinspect - Smart Contract Audit - Folks Finance v220314.pdf](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Folks%20Finance%20v220314.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Folks-Finance-Design-Review.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Folks-Finance-Design-Review.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [OtterSec - Audit of XChain Lending - May 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/OtterSec%20-%20Audit%20of%20XChain%20Lending%20-%20May%202024.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20of%20xChain%20Liquid%20Governance%20-%20June%202023.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [audits (GitHub directory)](https://github.com/Folks-Finance/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [immunefi.com/bug-bounty/folksfinance/information](https://immunefi.com/bug-bounty/folksfinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Adevar - Algorand Wormhole NTT - October 2025.pdf](https://github.com/Folks-Finance/audits/blob/main/Adevar%20-%20Algorand%20Wormhole%20NTT%20-%20October%202025.pdf) | Adevar | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Certik - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Certik%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | CertiK | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Coinspect - Audit of Liquid Staking - August 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Audit%20of%20Liquid%20Staking%20-%20August%202024.pdf) | Coinspect | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Coinspect - Smart Contract Audit - March 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Smart%20Contract%20Audit%20-%20March%202022.pdf) | Coinspect | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Runtime Verification - Design Review.pdf](https://github.com/Folks-Finance/audits/blob/main/Runtime%20Verification%20-%20Design%20Review.pdf) | Runtime Verification | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Runtime Verification - Smart Contract Audit - February 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Runtime%20Verification%20-%20Smart%20Contract%20Audit%20-%20February%202022.pdf) | Runtime Verification | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Trail of Bits - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Trail%20of%20Bits%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Trail of Bits | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V2%20-%20June%202022.pdf) | Vantage Point | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20March%202023.pdf) | Vantage Point | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20September%202022.pdf) | Vantage Point | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Token%20Pair%20and%20Oracle%20Adapter%20-%20May%202022.pdf) | Vantage Point | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Vantage Point - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Vantage Point | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Vantage Point - Smart Contract Audit - February 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20February%202022.pdf) | Vantage Point | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md](https://github.com/immunefi-team/Bounty_Boosts/blob/main/Mitigation%20Audit%20%7C%20Folks%20Finance/Mitigation%20Audit%20_%20Folks%20Finance%2034929%20-%20%5BSmart%20Contract%20-%20Critical%5D%20Accounting%20Discrepancy%20in%20Fee%20Retention%20Leads%20to%20Protocol%20Insolvency%20and%20Fund%20Freezing.md) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md](https://github.com/immunefi-team/Bounty_Boosts/blob/main/Mitigation%20Audit%20%7C%20Folks%20Finance/Mitigation%20Audit%20_%20Folks%20Finance%2035089%20-%20%5BSmart%20Contract%20-%20Insight%5D%20Malicious%20actor%20can%20control%20interest%20rates%20by%20DoSing%20borrowings%20and%20manipulate%20utilization%20ratio%20at%20his%20will.md) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13144] Coinspect - Smart Contract Audit - Folks Finance v220314.pdf — no match: Extracted contract names from the 'Assessment and Scope' section which lists all files with their SHA256 hashes. The audit date is March 2022, so using last day of month.
- [13145] Folks-Finance-Design-Review.pdf — no match: The audit is a design review of the Folks.Finance protocol based on a whitepaper, not specific smart contracts. No contract names or file paths were provided in the scope.
- [13146] OtterSec - Audit of XChain Lending - May 2024.pdf — no match: Scope section describes the XChain-Contracts program but does not list individual contract files. Contract names extracted from findings that reference specific files.
- [13149] Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf — no match: Extracted contracts from scope section and affected files. inner_txn.py is a dependency but referenced in findings.
- [13150] audits (GitHub directory) — no match: The provided text is a GitHub repository listing of audit report PDFs, not the content of any specific audit report. No contract names or audit dates can be extracted.
- [13151] immunefi.com/bug-bounty/folksfinance/information — no match: The document is a bug bounty program page, not an audit report. No contracts in scope are listed; only general program information and reward details are provided.
- [13152] Adevar - Algorand Wormhole NTT - October 2025.pdf — no match: Scope section lists 'ntt_contracts/' as the directory; all four contracts are explicitly referenced in findings and are part of the repository.
- [13153] Certik - Smart Contract Audit - December 2022.pdf — no match: Extracted 7 files from audit scope table; also found __init__.py in common/helpers but it's empty, so not included. Date from cover page.
- [13154] Coinspect - Audit of Liquid Staking - August 2024.pdf — no match: Scope section explicitly lists three files. Audit date is August 2024, mapped to last day of month.
- [13155] Coinspect - Smart Contract Audit - March 2022.pdf — no match: All files listed in the Assessment and Scope section with sha256 hashes are considered in scope. The audit date is March 2022, so using last day of month.
- [13156] Runtime Verification - Design Review.pdf — no match: The audit is a design review of the Folks.Finance protocol based on a whitepaper, not specific smart contracts. No contract names or file paths were provided in the scope.
- [13157] Runtime Verification - Smart Contract Audit - February 2022.pdf — no match: Scope section lists four smart contracts in PyTeal: Dispenser, TokenPair, OracleAdapter, Oracle. Audit date is February 1, 2022 from the report header.
- [13158] Trail of Bits - Smart Contract Audit - December 2022.pdf — no match: Extracted contract names from Project Targets section and findings. Audit date from cover page.
- [13159] Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf — no match: Extracted contract names from scope section file paths. The audit report date is 2022-06-27 from the cover page.
- [13160] Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf — no match: Scope section lists three Python files: distributor.py, distributor_state.py, distributor_escrow.py. Audit date from cover page: 30 Mar 2023.
- [13161] Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf — no match: Scope section lists 'Application Name: Folks Finance Liquid Governance V3' and items include 'assets/algo_governance_distributor_approval_program.py'. Also 'assets/algo_governance/state.py' is listed but not a contract; it's a state file. Only the distributor approval program is a contract. The audit date is 28th September 2022 from the cover page and version history.
- [13162] Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf — no match: Scope section lists three PyTeal files. Audit date is 13th May 2022 (final version).
- [13163] Vantage Point - Smart Contract Audit - December 2022.pdf — no match: Extracted 17 contract names from scope table and findings. Audit date from cover page: 8Dec2022.
- [13164] Vantage Point - Smart Contract Audit - February 2022.pdf — no match: Extracted 16 contract/module names from the scope section (page 6) and file paths. Audit date from version history final version date.
- [16527] Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md — matched: No reason recorded
- [16528] Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md — no match: The report is a single finding submission, not a full audit report. No explicit scope section or audit date found. Only two contracts are referenced.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | staking_clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | rewards_aggregator_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | liquidity_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | token_pair_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | oracle_adapter_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | oracle_adapter/shared | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | oracle_adapter/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | dispenser_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | oracle_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | common/math | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | common/formulae | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | common/inner_txn | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | common/transactions | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | staking_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | dispenser/shared | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | dispenser/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance/transactions | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance_contract_account | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance_clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | staking/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| OtterSec - Audit of XChain Lending - May 2024.pdf | BridgeRouter | unmatched — not counted | — | mentioned in findings OS-FFX-SUG-00 and OS-FFX-SUG-01 | no |
| OtterSec - Audit of XChain Lending - May 2024.pdf | SpokeBridgeRouter | unmatched — not counted | — | mentioned in finding OS-FFX-SUG-01 | no |
| OtterSec - Audit of XChain Lending - May 2024.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in finding OS-FFX-ADV-01 | no |
| Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf | governance | unmatched — not counted | — | listed in scope and affected files | no |
| Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf | governance_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf | inner_txn | unmatched — not counted | — | referenced in findings as imported module | no |
| Adevar - Algorand Wormhole NTT - October 2025.pdf | TransceiverManager | unmatched — not counted | — | Listed in scope and mentioned in findings M01, L02, E01 | no |
| Adevar - Algorand Wormhole NTT - October 2025.pdf | NttManager | unmatched — not counted | — | Listed in scope and mentioned in findings L01, E06, E07 | no |
| Adevar - Algorand Wormhole NTT - October 2025.pdf | WormholeTransceiver | unmatched — not counted | — | Listed in scope and mentioned in findings E02, E04, E05 | no |
| Adevar - Algorand Wormhole NTT - October 2025.pdf | MessageHandler | unmatched — not counted | — | Listed in scope and mentioned in finding E03 | no |
| Certik - Smart Contract Audit - December 2022.pdf | f_staking | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | __init__ | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | f_staking_state | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | array | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | inner_txn | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | checks | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | math_lib | unmatched — not counted | — | listed in audit scope table | no |
| Coinspect - Audit of Liquid Staking - August 2024.pdf | consensus | unmatched — not counted | — | listed in scope section | no |
| Coinspect - Audit of Liquid Staking - August 2024.pdf | consensus_state | unmatched — not counted | — | listed in scope section | no |
| Coinspect - Audit of Liquid Staking - August 2024.pdf | clear_program | unmatched — not counted | — | listed in scope section | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | staking_clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | rewards_aggregator_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | liquidity_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | token_pair_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | oracle_adapter_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | oracle_adapter/shared | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | oracle_adapter/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | dispenser_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | oracle_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | common/math | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | common/formulae | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | common/inner_txn | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | common/transactions | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | staking_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | dispenser/shared | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | dispenser/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance/transactions | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance_contract_account | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance_clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | staking/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Runtime Verification - Smart Contract Audit - February 2022.pdf | Dispenser | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Smart Contract Audit - February 2022.pdf | TokenPair | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Smart Contract Audit - February 2022.pdf | OracleAdapter | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Smart Contract Audit - February 2022.pdf | Oracle | unmatched — not counted | — | listed in scope section | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | pool_manager | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | pool | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | loan | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | lp_token_oracle | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | oracle_adapter | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | deposits | unmatched — not counted | — | referenced in Code Quality Recommendations | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | formulae | unmatched — not counted | — | referenced in finding TOB-FOLKS-6 | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | loan_state | unmatched — not counted | — | referenced in finding TOB-FOLKS-7 | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | math_lib | unmatched — not counted | — | referenced in Code Quality Recommendations | no |
| Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf | AlgoGovernanceDispenser | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf | AlgoGovernanceDistributor | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf | AlgoGovernanceDistributorClearProgram | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf | ClearProgram6 | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf | distributor | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf | distributor_state | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf | distributor_escrow | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf | Folks Finance Liquid Governance V3 | unmatched — not counted | — | Listed in scope section as 'Application Name' | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf | algo_governance_distributor_approval_program | unmatched — not counted | — | Listed in scope items and affected file in findings | no |
| Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf | oracle_adapter_2_approval_program | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf | oracle_adapter_2_clear_program | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf | token_pair_approval_program | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | loan | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | loan_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool_inner_txns | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | lp_token_oracle | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | lp_token_oracle_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | oracle_adapter | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | oracle_adapter_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | refresh_prices_inner_txn | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | deposits | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | deposits_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool_manager | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool_manager_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | withdraw_inner_txn | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | formulae | unmatched — not counted | — | mentioned in findings as affected file | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | checks | unmatched — not counted | — | mentioned in findings as introduced subroutine | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | token_pair_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | staking_clear_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | staking_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | oracle_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | oracle_adapter_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | liquidity_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | dispenser_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | clear_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | oracle_adapter/shared | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | oracle_adapter/state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | dispenser/shared | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | dispenser/state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | common/formulae | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | common/inner_txn | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | common/math | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | common/transactions | unmatched — not counted | — | listed in scope | no |
| Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md | Hub | own contract | SpokeErc20Token (selected) `0xb39c03...934449` — deployed 2024-09-16 01:19:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md | HubPool | unmatched — not counted | — | — | no |
| Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md | HubPoolLogic | unmatched — not counted | — | — | no |
| Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md | HubPoolLogic | unmatched — not counted | — | mentioned in vulnerability details and referenced file path | no |
| Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md | HubPool | unmatched — not counted | — | mentioned in test fixture and contract interactions | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x940181...d98631` | Aero | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe0ed4...c5226b` | AethirToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2cd3cd...3d7335` | BridgedYBTCB | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4701fd...f4d48f` | BridgeRouterSpoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfc828c...4ce695` | BridgeRouterSpoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x57d77f...f074a4` | BridgeRouterSpoke | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdf34f4...708af3` | BridgeRouterSpoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b8c6e...467572` | CCIPDataAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb48a1...de69c9` | CCIPDataAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1b2a8d...def8df` | CCIPDataAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf14535...749cdc` | CCIPDataAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c60f1...9dd04e` | CCIPTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x802063...90b03b` | CCIPTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x5cf682...df9423` | NativeSeiTokensERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x160345...9342d8` | OFTTokenERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c3ea9...23a0e8` | PYUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x21c624...e7ecc2` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5162ac...bf8cfa` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x61c80b...3a69dd` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7ab35...4d7884` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4f7fa...7a3a38` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4c542...2f847e` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0700b2...20779c` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7218bd...6aee81` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcd7ee4...5108bf` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x59a6e7...fb5361` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa95cf7...bfcbf0` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x23a96d...6a87f6` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2e6e46...9b7a98` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7bc4a...a4c3cd` | SpokeCommon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12d4fe...5a5a90` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3aea5e...4219e4` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63bcb6...ee7eea` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7967b0...cc8f92` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x91461b...644bb2` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb3abd8...aa7cda` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff785f...211723` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x12db97...54156f` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4db12f...3380a5` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1a4020...3179e9` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x63ad90...c982b8` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa526f9...c84000` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xab07af...626322` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcb6656...16a75a` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf2ee68...94abf0` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2d1c07...d541a5` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x624363...af091c` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x74416b...6ee097` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc0a353...0c7590` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdf2da9...b19111` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe69e06...4cbd2c` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe3b0e4...d05883` | SpokeGasToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5f2f47...7ecab0` | SpokeGasToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc6c682...6c38cc` | SpokeRewardsV2Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x531490...5d14d4` | SpokeRewardsV2Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6bc143...1ed352` | SpokeRewardsV2Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x025961...b3f228` | SpokeRewardsV2Erc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x88f15e...efded2` | SpokeRewardsV2Erc20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8292bb...6317ed` | StablecoinUpgradeableV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x06d47f...72219e` | StakedAvUSDV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 132 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 250 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 128 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=5, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [13144] Coinspect - Smart Contract Audit - Folks Finance v220314.pdf
- [13145] Folks-Finance-Design-Review.pdf
- [13146] OtterSec - Audit of XChain Lending - May 2024.pdf
- [13149] Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf
- [13150] audits (GitHub directory)
- [13152] Adevar - Algorand Wormhole NTT - October 2025.pdf
- [13153] Certik - Smart Contract Audit - December 2022.pdf
- [13154] Coinspect - Audit of Liquid Staking - August 2024.pdf
- [13155] Coinspect - Smart Contract Audit - March 2022.pdf
- [13156] Runtime Verification - Design Review.pdf
- [13157] Runtime Verification - Smart Contract Audit - February 2022.pdf
- [13158] Trail of Bits - Smart Contract Audit - December 2022.pdf
- [13159] Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf
- [13160] Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf
- [13161] Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf
- [13162] Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf
- [13163] Vantage Point - Smart Contract Audit - December 2022.pdf
- [13164] Vantage Point - Smart Contract Audit - February 2022.pdf

Fork inheritance lineage and inherited audits are included when available.
