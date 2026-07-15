# Agentic Audit Brief: Lisk Bridge

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

- Project: Lisk Bridge (`lisk-bridge`)
- Website: [https://lisk.com](https://lisk.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, sepolia
- Contract surface: 214 unique implementations (283 raw deployments)
- Coverage basis: 0/26 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $27,476,028.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lisk Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across base, ethereum, sepolia. Structural roles: 11 core, 10 unclassified, 7 supporting. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: core (11), unclassified (10), supporting (7)
- Contract kinds: contract (28)
- Detected standards: erc1967proxy (9), erc20 (7), ownable (3), accesscontrol (2), erc165 (2), erc20permit (2), ownable2step (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (7), solmate (6)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xac4853...2d1a24`, chain 8453)
- ERC1967Proxy (`0xe36224...6995e6`, chain 1)
- ERC1967Proxy (`0xeb99c8...89f677`, chain 1)
- FiatTokenProxy (`0x1abaea...1bc33c`, chain 1)
- FiatTokenProxy (`0xa0b869...06eb48`, chain 1)
- L1ChugSplashProxy (`0x265872...d25d08`, chain 1)
- L1ERC20TokenBridge (`0xc7315f...6327ac`, chain 1)
- L1LiskToken (`0x6033f7...90ae3f`, chain 1)
- L1VestingWallet (`0xd590c2...cf5fb7`, chain 1)
- OptimismMintableERC20Factory (`0xd00e38...a5b3ad`, chain 1)
- Proxy (`0x0cf7d3...8c282c`, chain 1)
- Proxy (`0x113cb9...1aa7d6`, chain 1)
- Proxy (`0x26db93...53f9a7`, chain 1)
- Proxy (`0x31efc2...7c168e`, chain 1)
- Proxy (`0x7ad0d1...1d9c1e`, chain 1)
- SwarmMarketsToken (`0xb17548...247173`, chain 1)
- TellorMaster (`0x88df59...3778a0`, chain 1)
- TetherToken (`0xdac17f...831ec7`, chain 1)
- UTUToken (`0xa58a4f...94189b`, chain 1)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WstETH (`0x7f39c5...5e2ca0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/26 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 17 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 170 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 47
- Confirmed-live implementations: 27 of 214 unique; 187 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/104
- Verified + Unaudited implementations: 104
- Verified by bytecode match: 0
- Unverified implementations: 110
- Unique implementations: 214
- Raw deployments: 283
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

### ⚠️ Verified + Unaudited (104)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7005e1...68c820`; ethereum `0xbda574...dfe5f4` | ⚠️ Unaudited |
| ActionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9835fa...56c477` | ⚠️ Unaudited |
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x03bbc1...9c1576`; ethereum `0x089df6...5c00ab`; ethereum `0x192066...c0b7bc`; ethereum `0x90d1d2...88b3d7`; ethereum `0x91ccfc...9902c2`; ethereum `0x9eb974...35c49c`; ethereum `0xb49505...cde441`; ethereum `0xccb5dd...42c8db`; ethereum `0xe9a057...a0318a` | ⚠️ Unaudited |
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245023 | `0x2df705...ea423f` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-245051 | `0x7ad0d1...1d9c1e` | ⚠️ Unaudited |
| AssetHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0969c4...cdd2ee`; ethereum `0x41b9ea...b682b2`; ethereum `0xad6e7a...1acddc` | ⚠️ Unaudited |
| AssetTokenData | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a5d3f...c2c159` | ⚠️ Unaudited |
| AssetTokenFactoryCCIPCompatible | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef24a5...6c7bd5` | ⚠️ Unaudited |
| AssetTokenMinimalProxyCCIPFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf1a3de...cd99e1` | ⚠️ Unaudited |
| Authorization | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9c9aa8...ffbae1`; ethereum `0xefbcbd...2aca82` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x918650...38c296` | ⚠️ Unaudited |
| BPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5fada...3a960a` | ⚠️ Unaudited |
| BPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x532164...402c56` | ⚠️ Unaudited |
| BRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8133ee...263c04` | ⚠️ Unaudited |
| BundleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d84b9...287ab7`; ethereum `0x775373...91450d` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0a3467...f700fa`; ethereum `0x23afd2...32f7fe`; ethereum `0x281a83...6e0400`; ethereum `0x286213...25b27c`; ethereum `0x55585f...781c5d`; ethereum `0x5f5d43...ffe9cf`; ethereum `0x6eb579...e50fae`; ethereum `0x8192d6...990728`; ethereum `0xab235c...499f23`; ethereum `0xad0624...8fcc09`; ethereum `0xb05963...00fac9`; ethereum `0xb85e3e...e9c248`; ethereum `0xe199e1...629b59` | ⚠️ Unaudited |
| Caller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x53fbfe...e4e337` | ⚠️ Unaudited |
| ConfigurableOracleMockFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa9f3c...3d478e` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b0d8...e9bef2` | ⚠️ Unaudited |
| DelayedWETH | token | project_anchor | own_supporting | 1 | ethereum | unit-245055 | `0x31efc2...7c168e` | ⚠️ Unaudited |
| DisputeGameFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-245060 | `0x0cf7d3...8c282c` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3c4b07...6232c7`; ethereum `0xad89ee...fbb215`; ethereum `0xccdbeb...7ef7f6` | ⚠️ Unaudited |
| Dotc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19708f...a03acc`; ethereum `0x632f2f...b1cf25` | ⚠️ Unaudited |
| Dotc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x820758...bf35c5` | ⚠️ Unaudited |
| DotcEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb8adad...965f7d`; ethereum `0xf9ff7c...288ba3` | ⚠️ Unaudited |
| DotcEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b418d...babbc6`; ethereum `0x4877d1...15a53a` | ⚠️ Unaudited |
| DotcManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x429737...52b4c3` | ⚠️ Unaudited |
| DotcManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a4010...be2073`; ethereum `0x1f58f1...8395ad` | ⚠️ Unaudited |
| DotcOfferHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8808...d52a0d` | ⚠️ Unaudited |
| DotcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a103e...ed3dae`; ethereum `0xca4b2d...4b5500` | ⚠️ Unaudited |
| DotcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1d0d05...287d4a`; ethereum `0x282950...110b89` | ⚠️ Unaudited |
| DotcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9add...e668f4` | ⚠️ Unaudited |
| DotcV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x423126...9ed3e5` | ⚠️ Unaudited |
| EthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf70cee...51fca5` | ⚠️ Unaudited |
| EurPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc1b06d...638514`; ethereum `0xd0fbc3...b7c978` | ⚠️ Unaudited |
| Extension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6227e...6a9ed8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 2 | ethereum | unit-245052 (2 proxies) | 2 deployments: ethereum `0x1abaea...1bc33c`; ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| GoldKiloPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe79f8...ecbde8` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245050 | `0x31b72d...bb7edb` | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245061 | 2 deployments: ethereum `0x9348af...d69fcf`; ethereum `0xc7315f...6327ac` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245059 | `0x3a44a3...11a81f` | ⚠️ Unaudited |
| L1LiskToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245024 | `0x6033f7...90ae3f` | ⚠️ Unaudited |
| L1OpEURCBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-245056 | `0xeb99c8...89f677` | ⚠️ Unaudited |
| L1OpEURCFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9a9a...cb2c67` | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-245053 | `0xe36224...6995e6` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-245054 | `0x265872...d25d08` | ⚠️ Unaudited |
| L1VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 5 deployments: ethereum `0x114cb3...42ee23`; ethereum `0x18a0b8...71618e`; ethereum `0x2294a7...1bcead`; ethereum `0x58a61b...a48568`; ethereum `0xe09899...65dc55` | ⚠️ Unaudited |
| L1VestingWallet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245029 | `0xd590c2...cf5fb7` | ⚠️ Unaudited |
| L1VestingWalletPaused | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b0cf...4cd087` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-245065 | `0x113cb9...1aa7d6` | ⚠️ Unaudited |
| Main | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5405dd...59c194` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023987...27a72c` | ⚠️ Unaudited |
| OfferHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61ed4...d40719` | ⚠️ Unaudited |
| OperationsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd641ae...2a49b9` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245063 | `0xc1da06...39252d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-245028 | `0xd00e38...a5b3ad` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245064 | `0x26db93...53f9a7` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095102...6b64f6` | ⚠️ Unaudited |
| PermissionItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb44141...080daa`; ethereum `0xf96e9a...43a0fe` | ⚠️ Unaudited |
| PermissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991fd1...df6191` | ⚠️ Unaudited |
| PermissionManagerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe214d9...013d91` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c065e...1be277` | ⚠️ Unaudited |
| ProtocolFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9516ca...4ba072`; ethereum `0xabc210...aed6c1` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbaa108...cbf425` | ⚠️ Unaudited |
| ProtocolVersions | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245057 | `0xdd9c27...6f1079` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0479e6...2f38be`; ethereum `0x7df140...c7106f`; ethereum `0x83fc9d...d26fdb`; ethereum `0x86a6f5...8490b1`; ethereum `0x899de1...78d7b6`; ethereum `0xa4d9ef...7f6fcd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x055860...593072`; ethereum `0x0a4477...37b61b`; ethereum `0x121b48...6533c6`; ethereum `0x35e59b...714244`; ethereum `0x3d24fa...4d03b7`; ethereum `0x7a3d18...dffad1`; ethereum `0x88f3cb...13dfd5`; ethereum `0x92d73c...0bdc0c`; ethereum `0xce36f0...dcb5fa`; ethereum `0xe44cb9...4ebd46`; ethereum `0xf25146...ce354c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245031 | `0xec432c...979b2d` | ⚠️ Unaudited |
| Sale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd25c...b0fdfd` | ⚠️ Unaudited |
| SmtDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b0f85...8031ac` | ⚠️ Unaudited |
| SmtPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0b2a66...e9674d`; ethereum `0x4afe7d...10a368`; ethereum `0x6da68d...713ff7`; ethereum `0x803492...eb497c`; ethereum `0x9221c6...82c298` | ⚠️ Unaudited |
| SmtVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c033b...a1cec9`; ethereum `0x9a3017...eac56b` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x26c7bf...555de7` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6738c9...e34bf2` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6e5ff0...187824` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8f1131...d3a24c` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e...f04a4c` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98ce58...17b4e9` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9e24f5...dcd0d0` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf7a2e4...4e8675` | ⚠️ Unaudited |
| SwarmBuyerBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1a2356...00494e`; ethereum `0x1f8e90...48aeac`; ethereum `0x2fcab6...017888` | ⚠️ Unaudited |
| SwarmMarketsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245027 | `0xb17548...247173` | ⚠️ Unaudited |
| SwarmMarketsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc63b1...216b33` | ⚠️ Unaudited |
| SX1155NFTFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab7aa6...bc8b14` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245058 | `0x05f232...843750` | ⚠️ Unaudited |
| Tellor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x04b512...506a95`; ethereum `0x81beb4...b4c038` | ⚠️ Unaudited |
| Tellor360 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245062 | `0x88df59...3778a0` | ⚠️ Unaudited |
| TellorGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e34d...fbb038` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245030 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TokenTransferor | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa75d8a...cee84c`; ethereum `0xcd465d...b6ad12` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x964183...5bb7b0`; ethereum `0xa5e175...79f6fd` | ⚠️ Unaudited |
| UTUToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804dd5...150993` | ⚠️ Unaudited |
| UTUToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245026 | `0xa58a4f...94189b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707f91...963fc8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa2f987...b72bdf` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-245022 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb9d793...7e293f` | ⚠️ Unaudited |
| WstETH | token | project_anchor | own_supporting | 0 | ethereum | unit-245025 | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| XERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1217bf...b6e189` | ⚠️ Unaudited |
| xGold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9438...4b5244` | ⚠️ Unaudited |
| xGoldBundle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e75a1...1bbdee` | ⚠️ Unaudited |
| xGoldBundleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b498b...344456` | ⚠️ Unaudited |
| XTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x20bf44...4e82a6`; ethereum `0x247d08...b55c14`; ethereum `0xe1532d...8f33b5` | ⚠️ Unaudited |
| XTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b9dc6...da0cce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (110)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c705...70cfa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f125...ad8b6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d032...c117b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e82fd...bf3c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff2d8...654ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1220cd...8e4930` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x13da43...1a53cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b840...ec29d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18bc5b...bd3c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb17e...9b1f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c7d4b...9c7238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d96f2...861d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb30e...70faf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269d63...c779b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27bb4a...b3d5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ee6ec...57d404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328809...afdac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f2ef...7db211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x398697...4b07a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1ac6...e40d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...00000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...00001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f237...36eb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c010...1904b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b82a3...166875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4db1c9...b0c281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db9f0...6c6330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60790d...4d0c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x665060...6e1d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad85c...403671` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6b7ab4...dab3b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cdf5a...5e7891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70bd96...48cf5e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x731f33...8b41b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d8de...52c415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f1cd...b9a04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77f4ed...acf68d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x841e82...583a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8454ea...f40279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857824...1a3a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a21cf...c9ff6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f58fe...c98022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973bac...cdc296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99137f...3d58ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bfa17...2ef727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e35f...663348` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa1eba9...378a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52ba2...3dc0c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82138...fb858e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4853...2d1a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae4a95...832710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15075...731aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45f10...5e0989` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb4e6a7...602184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e988...7faa01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82381...40067b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20e0e...ebd533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc35865...7d253d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc39f0c...c77ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca498e...f15f68` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd2176d...dbd3ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd35ca9...f0ab1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3f64e...ac2def` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd50f47...e0f5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5760d...063fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5d466...b40d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd63029...681661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde199...75048a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2363...8db211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe12cef...778c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d90f...787264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9fa20...794b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf24227...09cc71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf50fff...47429e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf54791...1d0ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9181a...51b467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd322b...8837f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5e32...b26625` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245049 | `0xac4853...2d1a24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245032 | `0x16b840...ec29d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245033 | `0x1bb17e...9b1f48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245034 | `0x1c7d4b...9c7238` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245035 | `0x1fb30e...70faf5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245036 | `0x269d63...c779b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245037 | `0x27bb4a...b3d5d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245038 | `0x5db9f0...6c6330` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245039 | `0x76f1cd...b9a04b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245040 | `0x8454ea...f40279` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245041 | `0x857824...1a3a2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245042 | `0xa0e35f...663348` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245043 | `0xb4e988...7faa01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245044 | `0xb82381...40067b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245045 | `0xc35865...7d253d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245046 | `0xd3f64e...ac2def` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245047 | `0xe3d90f...787264` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245048 | `0xf54791...1d0ac0` | ❓ Unverified |

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
| ethereum | `0x2df705...ea423f` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ad0d1...1d9c1e` | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31efc2...7c168e` | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cf7d3...8c282c` | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1abaea...1bc33c` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31b72d...bb7edb` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9348af...d69fcf` | L1ERC20TokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a44a3...11a81f` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6033f7...90ae3f` | L1LiskToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb99c8...89f677` | L1OpEURCBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe36224...6995e6` | L1OpUSDCBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x265872...d25d08` | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd590c2...cf5fb7` | L1VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x113cb9...1aa7d6` | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc1da06...39252d` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd00e38...a5b3ad` | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26db93...53f9a7` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdd9c27...6f1079` | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb17548...247173` | SwarmMarketsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05f232...843750` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88df59...3778a0` | Tellor360 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f...831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa58a4f...94189b` | UTUToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c5...5e2ca0` | WstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 99 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 110 |

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
