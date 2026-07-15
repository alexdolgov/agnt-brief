# Agentic Audit Brief: Sushi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sushi (`sushi`)
- Website: [https://sushi.com/](https://sushi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-nova, avalanche, base, blast, boba, bsc, celo, ethereum, fantom, gnosis, harmony, heco, kava, linea, mantle, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, scroll, sonic
- Contract surface: 263 unique implementations (530 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $84,599,022.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sushi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, arbitrum-nova, avalanche, base, blast, bsc, ethereum, fantom, gnosis, harmony, heco, kava, linea, mantle, metis, moonriver, optimism, polygon, polygon-zkevm, scroll, sonic. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x12bb16...3195d7`, chain 1)
- UnnamedContract (`0x44d097...47c54f`, chain 1)
- UnnamedContract (`0x51b0ef...81ce73`, chain 1)
- UnnamedContract (`0x53954a...2ac516`, chain 1)
- UnnamedContract (`0x655edc...ee4b77`, chain 1)
- UnnamedContract (`0x6e3fb8...0c2449`, chain 1)
- UnnamedContract (`0x84f462...9ae1b9`, chain 1)
- UnnamedContract (`0xcc1253...9218a7`, chain 1)
- UnnamedContract (`0xd04544...27436e`, chain 1)
- UnnamedContract (`0xe7b0ce...9d216c`, chain 1)
- UnnamedContract (`0x5130f6...20ed40`, chain 10)
- UnnamedContract (`0x55f7c1...7fcfad`, chain 10)
- UnnamedContract (`0xac2b3f...cc74cb`, chain 10)
- UnnamedContract (`0xdbd4ff...2db7db`, chain 10)
- UnnamedContract (`0xf33141...2af3eb`, chain 10)
- UnnamedContract (`0x4715cc...c9e561`, chain 137)
- UnnamedContract (`0x681107...e3d521`, chain 137)
- UnnamedContract (`0x6bfce6...3ae3b8`, chain 137)
- UnnamedContract (`0xd01e35...de8eed`, chain 137)
- UnnamedContract (`0xf33141...2af3eb`, chain 137)
- UnnamedContract (`0x769728...f590c5`, chain 5000)
- UnnamedContract (`0x41c536...c1f834`, chain 8453)
- UnnamedContract (`0xb32d85...41247c`, chain 8453)
- UnnamedContract (`0x4c16dd...9bb08a`, chain 42161)
- UnnamedContract (`0x769728...f590c5`, chain 42161)
- UnnamedContract (`0x93a594...d4eb98`, chain 42161)
- UnnamedContract (`0x9e233d...cc106e`, chain 42161)
- UnnamedContract (`0xb87392...7873df`, chain 42161)
- UnnamedContract (`0xe7b0ce...9d216c`, chain 42161)
- SushiBar (`0x879824...ff4272`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 30 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 233 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 30 of 263 unique; 233 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/81
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 182
- Unique implementations: 263
- Raw deployments: 530
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 1.2% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SushiBar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257535 | `0x879824...ff4272` | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV5ERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: arbitrum `0xfea7a6...7d6c2a`; avalanche `0x130966...b8c18d` | ⚠️ Unaudited |
| AuctionCreation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7603a3...62c8ce`; polygon `0xc040f8...6ef4be` | ⚠️ Unaudited |
| BatchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x258f7e...38b788`; polygon `0x7af717...125113`; arbitrum `0x7603a3...62c8ce` | ⚠️ Unaudited |
| BentoBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc35dad...bc74c4` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf5bce5...643966` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: bsc `0xf5bce5...643966`; gnosis `0xe2d7f5...bdb324`; gnosis `0xed1a5b...e30859`; polygon `0x031900...2c3367`; metis `0xc35dad...bc74c4`; moonriver `0x145d82...522e6f`; arbitrum `0x74c764...46894a`; avalanche `0x0711b6...48e026` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x11ca53...7996e6`; bsc `0x11ca53...7996e6`; polygon `0x2dd1ab...135a5e`; polygon `0xb23804...72f821`; arbitrum `0x37b328...e924f8`; avalanche `0xd18ca0...660748` | ⚠️ Unaudited |
| ChainlinkOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f2cc3...bfd812` | ⚠️ Unaudited |
| ChainlinkOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43198b...de5a59` | ⚠️ Unaudited |
| ComplexRewarderTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 3 deployments: gnosis `0x486498...dd16e4`; gnosis `0x84562c...fd2665`; polygon `0xa3378c...1163ae` | ⚠️ Unaudited |
| ConstantProductPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: optimism `0x0769fd...b2841f`; optimism `0x933951...0ff328`; polygon `0x05689f...a4e288`; polygon `0x1be211...7b1d6c`; polygon `0x28890e...2abfab`; polygon `0x7603a3...62c8ce`; polygon `0xefacaf...f78953`; metis `0x0769fd...b2841f`; arbitrum `0xc79ae8...872787`; avalanche `0xb84a04...df929f` | ⚠️ Unaudited |
| ConstantProductPoolFactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: optimism `0xf4d733...bd62c3`; polygon `0x1c5771...0eb194`; polygon `0x9b3ff7...a9b51c`; polygon `0xdcd6a4...1232d3`; metis `0xf4d733...bd62c3`; arbitrum `0x827179...866976` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xf60e5f...d8d9af`; polygon `0xf70c08...2ef914`; arbitrum `0x120140...e55afe`; avalanche `0x8dacff...225d38` | ⚠️ Unaudited |
| DegenBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd96f48...fc2cce` | ⚠️ Unaudited |
| DutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0x1c5771...0eb194`; polygon `0x10c193...8e5baa`; arbitrum `0x438a2b...8b8d43` | ⚠️ Unaudited |
| FeeOnTransferDetector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91934e...7d9885` | ⚠️ Unaudited |
| FixedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0x80c7dd...a314de`; polygon `0x2f255d...6e3ce6`; arbitrum `0xcaabdd...fe66f5` | ⚠️ Unaudited |
| GasEstimator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x630be2...31e7b1` | ⚠️ Unaudited |
| HyperbolicAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8dacff...225d38`; polygon `0xd75f53...d96550` | ⚠️ Unaudited |
| InchSpellSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe1a5...a52111` | ⚠️ Unaudited |
| KashiPairMediumRiskV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: ethereum `0x74a81c...e51e65`; bsc `0x74a81c...e51e65`; gnosis `0x7a6da9...c0407e`; polygon `0xb527c5...2075a7`; arbitrum `0xa010ee...1f5d3e`; avalanche `0x513037...42fadb` | ⚠️ Unaudited |
| ListFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2f6867...050066`; polygon `0xa4c036...9607d3` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| MasterDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 12 deployments: optimism `0x1b02da...997506`; optimism `0xcaabdd...fe66f5`; polygon `0x0be808...93d904`; polygon `0x145d82...522e6f`; polygon `0x2f2867...a63c97`; polygon `0x351447...0b0187`; polygon `0x752dc0...afe633`; polygon `0xdb0d6e...0c1ef7`; polygon `0xf4d733...bd62c3`; polygon `0xf78031...cf9bef`; metis `0x1b02da...997506`; arbitrum `0xf0e1f9...8fe48d` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: gnosis `0xddcbf7...45e0f3`; polygon `0x0769fd...b2841f`; arbitrum `0xf4d733...bd62c3` | ⚠️ Unaudited |
| MintableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xf4d733...bd62c3`; polygon `0xbbde1d...728e65` | ⚠️ Unaudited |
| MISOAccessControls | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0xc35dad...bc74c4`; polygon `0x6b2a3f...a506a2` | ⚠️ Unaudited |
| MISOFarmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0x438a2b...8b8d43`; polygon `0xddc1b5...819776`; avalanche `0x351447...0b0187` | ⚠️ Unaudited |
| MISOHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x05689f...a4e288`; polygon `0xd36990...b51e44` | ⚠️ Unaudited |
| MISOLauncher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaa2677...0bf5bd`; polygon `0xb84a04...df929f` | ⚠️ Unaudited |
| MISOMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x281bd3...c5b0fe`; polygon `0x3e603c...bec715`; avalanche `0x7603a3...62c8ce` | ⚠️ Unaudited |
| MISOMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x120140...e55afe`; polygon `0x18350b...6016f3` | ⚠️ Unaudited |
| MISOTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1be211...7b1d6c`; polygon `0xd045d2...e0f2be`; avalanche `0x9b3ff7...a9b51c` | ⚠️ Unaudited |
| mSpellStaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd2fba...5e6797` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: gnosis `0x67da5f...d84287`; arbitrum `0x0769fd...b2841f`; arbitrum `0x80c7dd...a314de` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa10d3d...75b8eb` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x67468e...f70792`; optimism `0xb3115b...1e9053`; bsc `0x777097...c9ddcb`; gnosis `0x2f6867...050066`; polygon `0x5a2b5d...6812c7`; sonic `0xcdbcd5...f71959`; metis `0xd5607d...6010d9`; moonriver `0xbbde1d...728e65`; arbitrum `0x0367a6...d7f2c6`; avalanche `0x7d222c...75f463`; blast `0x1f2fcf...256bbe` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2214a4...b6a432` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf70c08...2ef914` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xb7402e...f89a40` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: optimism `0x1af415...82231e`; gnosis `0xab235d...774a65`; sonic `0x038987...edee4f`; metis `0x630be2...31e7b1`; moonriver `0xd045d2...e0f2be`; avalanche `0x18350b...6016f3`; blast `0x51edb3...709051`; blast `0xbda8a8...875991`; blast `0xe0646d...2f6ace`; blast `0xeabce3...615791` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x80c7dd...a314de` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf0cbce...63ef49` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x1c4369...b18abb`; optimism `0x54ea63...5ed402`; bsc `0x7af717...125113`; gnosis `0xbe811a...6430e6`; polygon `0x8c990a...bffecc`; sonic `0x57bffa...b0c459`; metis `0x90dab1...7dc134`; moonriver `0x7a4af1...6d923f`; arbitrum `0x96e045...c19385`; avalanche `0xc040f8...6ef4be`; blast `0x734583...e8c55a`; blast `0xb46e31...79da94` | ⚠️ Unaudited |
| OwlswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x126555...c34abb` | ⚠️ Unaudited |
| PeggedOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6cbfbb...001564`; bsc `0x6cbfbb...001564` | ⚠️ Unaudited |
| PointList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: ethereum `0xf78031...cf9bef`; polygon `0x2c8c98...5a4a4a`; avalanche `0xbe811a...6430e6` | ⚠️ Unaudited |
| PostAuctionLauncher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: ethereum `0xab235d...774a65`; polygon `0x97a32b...2e610a`; avalanche `0x1e9b24...fdc77a` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 6 deployments: sonic `0xe43ca1...1a59f5`; metis `0xfbc129...8b303c`; blast `0x2e10e8...9a1e74`; blast `0xc53125...c1cf25`; blast `0xca6fe7...d3d320`; blast `0xd93a91...fff33f` | ⚠️ Unaudited |
| RouteProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 17 deployments: ethereum `0x7af717...125113`; ethereum `0xf70c08...2ef914`; optimism `0x96e045...c19385`; optimism `0xd9988b...8e0523`; bsc `0x7cf167...3e243d`; gnosis `0x0769fd...b2841f`; gnosis `0x1e9b24...fdc77a`; polygon `0x0dc8e4...a52f4b`; polygon `0x1a52af...ae47fd`; polygon `0x7cd291...161741`; metis `0x1e9b24...fdc77a`; moonriver `0x9e4791...c95847`; moonriver `0xbd87be...1736d9`; arbitrum `0x9c6522...e7dbe0`; arbitrum `0x9f1865...c6c12f`; avalanche `0x400d75...6c1804`; avalanche `0xd75f53...d96550` | ⚠️ Unaudited |
| RouteProcessor2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x044b75...2d7357`; optimism `0xf0cbce...63ef49`; bsc `0xd75f53...d96550`; gnosis `0x145d82...522e6f`; polygon `0x5097cb...36649a`; avalanche `0xbaceb8...c29c4f` | ⚠️ Unaudited |
| RouteProcessor3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 12 deployments: ethereum `0x429532...bd366a`; ethereum `0x827179...866976`; ethereum `0xf0e1f9...8fe48d`; optimism `0x4c5d52...e4bfab`; bsc `0x400d75...6c1804`; gnosis `0xbbde1d...728e65`; polygon `0x0a6e51...c217a6`; metis `0x258f7e...38b788`; moonriver `0x7af717...125113`; base `0x0be808...93d904`; arbitrum `0xfc506a...52d674`; avalanche `0x717b79...46da3e` | ⚠️ Unaudited |
| RouteProcessor3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x851694...016c9e`; ethereum `0xf0cbce...63ef49`; bsc `0xbaceb8...c29c4f`; polygon `0x9cfead...4dd8a1`; base `0x9b7703...e6d176`; arbitrum `0x3c1fba...852c82` | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: ethereum `0x5550d1...6e747d`; optimism `0xeb94ec...75a52b`; bsc `0xd36990...b51e44`; gnosis `0x7a4af1...6d923f`; polygon `0xe7eb31...68a5d2`; moonriver `0xf70c08...2ef914`; base `0x83ec81...0751d1`; base `0xb40539...f2ccd6`; arbitrum `0x09bd2a...4a8e8c`; avalanche `0x8f5430...5dbe9e` | ⚠️ Unaudited |
| RouteProcessor4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x46b3fd...22202e`; polygon `0xb45e53...7f1763`; metis `0xb45e53...7f1763`; metis `0xd408a2...8bf269`; blast `0xcdbcd5...f71959` | ⚠️ Unaudited |
| SimpleSLPTWAP0OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x66f03b...236065`; bsc `0x66f03b...236065` | ⚠️ Unaudited |
| SimpleSLPTWAP1OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0d51b5...89266f`; bsc `0x0d51b5...89266f` | ⚠️ Unaudited |
| SquidAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xbf3b71...56f5f0`; linea `0xbf3b71...56f5f0` | ⚠️ Unaudited |
| sSpellV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fa3f...a106a9` | ⚠️ Unaudited |
| StablePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 9 deployments: optimism `0xc79ae8...872787`; polygon `0x53b08d...d27262`; polygon `0xe52180...3ab70a`; polygon `0xf96149...bc91d4`; metis `0x2f6867...050066`; metis `0x933951...0ff328`; metis `0x9b3ff7...a9b51c`; arbitrum `0xc2fb25...9a0288`; avalanche `0x777097...c9ddcb` | ⚠️ Unaudited |
| StargateAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdf1cfe...02e195` | ⚠️ Unaudited |
| SubscribeToJunionOnYoutube | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b02da...997506` | ⚠️ Unaudited |
| SushiRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x005395...e8936a` | ⚠️ Unaudited |
| SushiSwapMultiSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73be09...215415` | ⚠️ Unaudited |
| SushiSwapSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: ethereum `0x176673...203084`; bsc `0x176673...203084`; polygon `0xe95893...d2701d`; avalanche `0x062eee...e63785` | ⚠️ Unaudited |
| SushiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0be808...93d904`; polygon `0x7a4af1...6d923f` | ⚠️ Unaudited |
| SushiXSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 31 deployments: ethereum `0x011e52...e2e581`; optimism `0x044b75...2d7357`; optimism `0x1838b0...f27480`; optimism `0x2214a4...b6a432`; optimism `0x2c8c98...5a4a4a`; optimism `0x3d2f8a...c0844f`; optimism `0x67468e...f70792`; optimism `0x6c5a9e...110c2a`; optimism `0x7a4af1...6d923f`; optimism `0x7cf167...3e243d`; optimism `0x843d0a...9000e4`; optimism `0x8b396d...0d920f`; optimism `0x8f5430...5dbe9e`; optimism `0x97a32b...2e610a`; optimism `0xd045d2...e0f2be`; optimism `0xd08b5f...41e77c`; bsc `0x7a4af1...6d923f`; polygon `0x2214a4...b6a432`; polygon `0xd08b5f...41e77c`; arbitrum `0x1c4369...b18abb`; arbitrum `0x2f255d...6e3ce6`; arbitrum `0x3d2f8a...c0844f`; arbitrum `0x53b08d...d27262`; arbitrum `0x7a4af1...6d923f`; arbitrum `0x843d0a...9000e4`; arbitrum `0x8fcad5...5075cf`; arbitrum `0xd08b5f...41e77c`; avalanche `0x2c8c98...5a4a4a`; avalanche `0x5629ce...d851d9`; avalanche `0x9e4791...c95847`; avalanche `0xbbde1d...728e65` | ⚠️ Unaudited |
| SushiXSwapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 8 deployments: ethereum `0x54ea63...5ed402`; ethereum `0xb3115b...1e9053`; ethereum `0xd9988b...8e0523`; optimism `0x804b52...70f8ee`; metis `0x804b52...70f8ee`; arbitrum `0xa105d0...43dffa`; linea `0x02a480...adcd3a`; linea `0x804b52...70f8ee` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: metis `0x2abf46...2625b1`; blast `0x1b7b94...e34709`; blast `0x544ba5...3c135f`; blast `0x5d0aa5...c304ca` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: ethereum `0xfb70ad...a6b68c`; optimism `0x0367a6...d7f2c6`; bsc `0x10c193...8e5baa`; gnosis `0xaa2677...0bf5bd`; polygon `0x9fdea1...fdf7da`; sonic `0x33d911...ebfcdd`; metis `0x078047...4b1b9c`; moonriver `0x6e9aed...a1bc56`; base `0xf4d733...bd62c3`; arbitrum `0x851694...016c9e`; avalanche `0xddc1b5...819776`; blast `0x039e87...da4a20` | ⚠️ Unaudited |
| TridentRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x0be808...93d904`; optimism `0xbe811a...6430e6`; bsc `0x97a32b...2e610a`; polygon `0x438a2b...8b8d43`; polygon `0x67896a...bfe08a`; polygon `0xcaabdd...fe66f5`; metis `0x0be808...93d904`; metis `0xab235d...774a65`; arbitrum `0xd9988b...8e0523`; avalanche `0xf70c08...2ef914` | ⚠️ Unaudited |
| TridentRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xe52180...3ab70a` | ⚠️ Unaudited |
| TridentRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x7a250c...6eed67` | ⚠️ Unaudited |
| TridentRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc5017b...62668e` | ⚠️ Unaudited |
| TridentSushiRollCP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x1be211...7b1d6c`; polygon `0x5629ce...d851d9`; polygon `0x933951...0ff328`; polygon `0xeae23c...c130ca`; metis `0x1be211...7b1d6c`; arbitrum `0xf96149...bc91d4` | ⚠️ Unaudited |
| UniswapV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: optimism `0xfbc129...8b303c`; gnosis `0xc35dad...bc74c4`; polygon `0xc35dad...bc74c4`; metis `0x580ed4...1f7483`; base `0x71524b...622859`; linea `0xfbc129...8b303c` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9b3336...e061ee` | ⚠️ Unaudited |
| UniswapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 7 deployments: optimism `0x9c6522...e7dbe0`; gnosis `0xf78031...cf9bef`; polygon `0x917933...8ff0e2`; sonic `0x46b3fd...22202e`; metis `0x145d82...522e6f`; arbitrum `0x1af415...82231e`; scroll `0x46b3fd...22202e` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 5 deployments: sonic `0x1f2fcf...256bbe`; metis `0x454714...8a4ff6`; blast `0x09feac...c3413f`; blast `0x93c31c...407733`; blast `0xaa33ad...6b079e` | ⚠️ Unaudited |
| WethMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1b7b94...e34709`; metis `0xb46e31...79da94`; blast `0x253826...81a119` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (182)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10c193...8e5baa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257528 | `0x12bb16...3195d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19dba5...f9ff7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db923...7cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400d75...6c1804` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257529 | `0x44d097...47c54f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257530 | `0x51b0ef...81ce73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257531 | `0x53954a...2ac516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257532 | `0x655edc...ee4b77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257533 | `0x6e3fb8...0c2449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d222c...75f463` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257534 | `0x84f462...9ae1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc040f8...6ef4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5017b...62668e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257536 | `0xcc1253...9218a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257537 | `0xd04544...27436e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75f53...d96550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc1b5...819776` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257538 | `0xe7b0ce...9d216c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x011e52...e2e581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05689f...a4e288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c5771...0eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x258f7e...38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f255d...6e3ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f6867...050066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3db923...7cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x438a2b...8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257539 | `0x5130f6...20ed40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257540 | `0x55f7c1...7fcfad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5629ce...d851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6b2a3f...a506a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x827179...866976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8dacff...225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaa2677...0bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xab235d...774a65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257541 | `0xac2b3f...cc74cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd87be...1736d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257542 | `0xdbd4ff...2db7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-257543 | `0xf33141...2af3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf60e5f...d8d9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0769fd...b2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0be808...93d904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x145d82...522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b9d17...500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1be211...7b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c5771...0eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e9b24...fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x281bd3...c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c8c98...5a4a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x351447...0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d2f8a...c0844f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x438a2b...8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5629ce...d851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b2a3f...a506a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x752dc0...afe633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7603a3...62c8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dacff...225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b3ff7...a9b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e4791...c95847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4c036...9607d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab235d...774a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb84a04...df929f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd87be...1736d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe811a...6430e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5017b...62668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcd6a4...1232d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x07b6e3...98967e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b9d17...500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1be211...7b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3ca338...d4c29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x48a824...8b6036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x735f0f...be2b93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x80c7dd...a314de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x933951...0ff328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x97e4a0...e4cf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcaabdd...fe66f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe02bdb...7371b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf4d733...bd62c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfdc8f1...74009d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e9b24...fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x232def...c59e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x258f7e...38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x281bd3...c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a0caa...de70f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f6867...050066` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257546 | `0x4715cc...c9e561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67468e...f70792` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257547 | `0x681107...e3d521` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257548 | `0x6bfce6...3ae3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8dacff...225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fcad5...5075cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa2677...0bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab235d...774a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4dcbc...149d59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257549 | `0xd01e35...de8eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb6c4e...8886f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe05af9...f7e222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe5e38d...c6d429` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-257550 | `0xf33141...2af3eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf33c6d...3b1aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa3d4e...d97de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1400fe...7dc82c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x1b9d17...500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x33d911...ebfcdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x9b3336...e061ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xbbde1d...728e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | 9 deployments: heco `0x879824...ff4272`; fantom `0x1b9d17...500eaa`; fantom `0x777097...c9ddcb`; fantom `0xf5bce5...643966`; polygon-zkevm `0x1b02da...997506`; kava `0x1e9b24...fdc77a`; kava `0xd408a2...8bf269`; arbitrum-nova `0xaa2677...0bf5bd`; harmony `0xa28cff...08a2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x05689f...a4e288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0769fd...b2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0be808...93d904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x120140...e55afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1b9d17...500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1be211...7b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1e9b24...fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x258f7e...38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x281bd3...c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x351447...0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3d2f8a...c0844f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5629ce...d851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6b2a3f...a506a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x752dc0...afe633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7603a3...62c8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8dacff...225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9b3ff7...a9b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xab235d...774a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbe811a...6430e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc5017b...62668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257557 | `0x769728...f590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0769fd...b2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b02da...997506` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257559 | `0x41c536...c1f834` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-257560 | `0xb32d85...41247c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x011e52...e2e581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bfcd5...5745eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145d82...522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1be211...7b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c5771...0eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x258f7e...38b788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f6867...050066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x351447...0b0187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3db923...7cb9ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257551 | `0x4c16dd...9bb08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5629ce...d851d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67468e...f70792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e9aed...a1bc56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257552 | `0x769728...f590c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x860d84...7dc7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dacff...225d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x933951...0ff328` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257553 | `0x93a594...d4eb98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257554 | `0x9e233d...cc106e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257555 | `0xb87392...7873df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd87be...1736d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe7d59...0922ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdcd6a4...1232d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-257556 | `0xe7b0ce...9d216c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf78031...cf9bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0769fd...b2841f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0be808...93d904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10c193...8e5baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x126555...c34abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x145d82...522e6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b9d17...500eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1be211...7b1d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c5771...0eb194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x281bd3...c5b0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x438a2b...8b8d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x752dc0...afe633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97a32b...2e610a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab235d...774a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5017b...62668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcd6a4...1232d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x15a636...2e769d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x52e20a...8e2eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x57bffa...b0c459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb45e53...7f1763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe43ca1...1a59f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-SushiSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SushiSwap-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 8 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13952] PeckShield-Audit-Report-SushiSwap-v1.0.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Address | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | MasterChef | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Migrator | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiBar | own contract | SushiBar (selected) `0x879824...ff4272` — deployed 2020-09-05 16:05:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiMaker | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | SushiToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | Timelock | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-SushiSwap-v1.0.pdf | UniswapV2Pair | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 6 |
| standard_library | 1 |
| needs_review | 182 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
