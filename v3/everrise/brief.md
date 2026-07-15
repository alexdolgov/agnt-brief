# Agentic Audit Brief: EverRise

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: EverRise (`everrise`)
- Website: [https://www.everrise.com](https://www.everrise.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 202 unique implementations (447 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $596,676.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for EverRise. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across avalanche, bsc, ethereum, fantom, polygon. Structural roles: 2 unclassified, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: unclassified (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbbd7b8...6475f1`, chain 1)
- UnnamedContract (`0xdba7b2...072f1b`, chain 1)
- EverRise (`0xc17c30...810ca3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 198 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 4 of 202 unique; 198 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/83
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 119
- Unique implementations: 202
- Raw deployments: 447
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| chainsulting | Tier 2 | 2 | 2.4% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EverRiseLib | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385048 | 2 deployments: ethereum `0x99fe7b...ff7bc1`; ethereum `0xc17c30...810ca3` | ✅ Audited |
| nftEverRise | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385045 | `0x23cd2e...11807e` | ✅ Audited |

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d1e2e...ac6a42` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x217945...8266e9`; avalanche `0x846a4c...bfff23`; avalanche `0xbb28e0...0a7ad0` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x1dd4d8...ab5741`; avalanche `0xce63ec...412c5e`; avalanche `0xdc0730...4a7c62`; avalanche `0xe35e9c...9a386f` | ⚠️ Unaudited |
| CellToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x871848...c18df3`; bsc `0xf3e144...934346` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xaff905...2d4f34`; avalanche `0xc13b1c...7f6796` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadaf18...e6e398` | ⚠️ Unaudited |
| DeFido | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xf32122...c1cd91`; bsc `0x199f78...db33de` | ⚠️ Unaudited |
| DexUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x4883bd...131f12`; bsc `0xa6c460...44f093`; bsc `0xa8edf1...9b7269`; bsc `0xb3a7f4...f8df80`; bsc `0xe6c891...b70fb4` | ⚠️ Unaudited |
| DiamondQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd573d...4d24e3` | ⚠️ Unaudited |
| EFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb72962...b187e6` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x72281a...106587`; avalanche `0x9e6cab...c05b09` | ⚠️ Unaudited |
| ERC721Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ffdb9...f16e54` | ⚠️ Unaudited |
| EverOwn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x78ab99...d3a69d`; bsc `0x89dd30...abe0f4`; polygon `0x7dd45e...62fdef` | ⚠️ Unaudited |
| EverRise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xc17c30...810ca3`; polygon `0xc17c30...810ca3` | ⚠️ Unaudited |
| EverRiseAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc17c30...810ca3` | ⚠️ Unaudited |
| EverRiseLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x99fe7b...ff7bc1`; polygon `0x99fe7b...ff7bc1` | ⚠️ Unaudited |
| EverRiseLibAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99fe7b...ff7bc1` | ⚠️ Unaudited |
| IterableMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4013e...2e77b1` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 36 deployments: avalanche `0x125cf8...84b4d2`; avalanche `0x1adbde...330024`; avalanche `0x28adbb...a7a0a3`; avalanche `0x296731...f9bd20`; avalanche `0x2e3a35...7975e2`; avalanche `0x2ed5cd...ff11bd`; avalanche `0x320448...6cccee`; avalanche `0x3ac928...16b974`; avalanche `0x3b34e1...185ecc`; avalanche `0x4a586d...a4d271`; avalanche `0x564780...bbacd0`; avalanche `0x5f2a43...083ae6`; avalanche `0x647da9...92cf2b`; avalanche `0x6b5a37...93a86b`; avalanche `0x6caf40...9d51c5`; avalanche `0x737fdf...fddf34`; avalanche `0x7a17fb...bf3421`; avalanche `0x81516e...23f592`; avalanche `0x838549...aa34cd`; avalanche `0x83c672...c6ea8a`; avalanche `0x8cc49b...d8a98a`; avalanche `0x97e3a6...213612`; avalanche `0x9c1e13...da9e8e`; avalanche `0xb2bb1e...7e5e8b`; avalanche `0xbb95aa...d7b337`; avalanche `0xc17f99...f9a47a`; avalanche `0xcd85fe...7348ad`; avalanche `0xcf62b6...94429b`; avalanche `0xd1bb83...9fbe3f`; avalanche `0xd7c246...8c3ed5`; avalanche `0xea5e11...cbbf51`; avalanche `0xeb41c9...1b1df8`; avalanche `0xebea85...60e62e`; avalanche `0xeed14f...54847c`; avalanche `0xf65a08...503d42`; avalanche `0xf88d8e...50317c` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 9 | avalanche | n/a | 9 deployments: avalanche `0x29472d...328db2`; avalanche `0x3fe38b...a9eb1f`; avalanche `0x585e7b...b96c15`; avalanche `0x8b650e...1e4448`; avalanche `0x929f5c...4633fa`; avalanche `0xbfdbe3...3c76e0`; avalanche `0xc14678...8da696`; avalanche `0xc988c1...a7ca19`; avalanche `0xed6aaf...f637ac` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xce095a...6a75ea` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x102011...ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57319d...fd4f33` | ⚠️ Unaudited |
| JoeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9ad6c3...0cfa10`; avalanche `0xe2ecc2...e75eb8` | ⚠️ Unaudited |
| JoeHatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82fe03...62077c` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf50f...8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4247c5...bcdcfe`; avalanche `0x861726...b65856` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb5b4c...a475d3` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacff0f...0bcb58` | ⚠️ Unaudited |
| JoeRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60ae61...0933d4` | ⚠️ Unaudited |
| JoeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e84a6...bc0fdd` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x1ed836...92cfcb`; avalanche `0x8b33e8...3d99b7` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xdc1368...a1edac` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x267a45...149df5`; avalanche `0x81b539...3d9136`; avalanche `0xd915fd...015531` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xc22f01...4ec29e` | ⚠️ Unaudited |
| KetherNFTLoaner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d0274...b9dbed` | ⚠️ Unaudited |
| KingFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x838e37...d79cf8` | ⚠️ Unaudited |
| KINGSHIBA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84f4f7...22316c` | ⚠️ Unaudited |
| KishuForever | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5990a2...2931cd` | ⚠️ Unaudited |
| Landarno | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xd5641a...a5afb2`; bsc `0x3dbfc6...556321` | ⚠️ Unaudited |
| LiquidityGeneratorToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc46fe5...7bca67` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a4f1...f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x188bed...c18f00`; avalanche `0x3eb4ec...6e8945` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5cdda...7ab7e7` | ⚠️ Unaudited |
| Momento | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0ae8b7...b76a37`; bsc `0x1b9a8c...0c67ee` | ⚠️ Unaudited |
| MRC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000000...001010` | ⚠️ Unaudited |
| MTGY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x025c9f...c8ca23`; bsc `0x025c9f...c8ca23` | ⚠️ Unaudited |
| MTGYAirdropper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x87db34...fc8a97`; ethereum `0x9e2618...f93902`; bsc `0x9c171a...0e0b01`; bsc `0xc3f2a5...017272` | ⚠️ Unaudited |
| MTGYAtomicSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xa6c81e...95d919`; bsc `0x5b88b0...03627e` | ⚠️ Unaudited |
| MTGYFaaS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x207b1a...1d3c39`; ethereum `0x306996...d4aab7`; ethereum `0x5cfc47...3534e1`; ethereum `0x7c20db...c0c51d`; ethereum `0xf99693...89b32a`; bsc `0x1e07f7...48a878`; bsc `0xaa0c28...5fe7e7` | ⚠️ Unaudited |
| MTGYOKLGSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x55e1d9...91bd55`; bsc `0xed5bb0...7839c5` | ⚠️ Unaudited |
| MTGYPasswordManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8dd32...6619e2` | ⚠️ Unaudited |
| MTGYRaffle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0424f9...3bd1b7`; bsc `0xbd3f48...ca1024` | ⚠️ Unaudited |
| MTGYSpend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a31f7...c573a5` | ⚠️ Unaudited |
| MTGYTrustedTimestamping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266bff...d49eb6` | ⚠️ Unaudited |
| MUSO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x204a77...45c292`; bsc `0x746bad...51ae2b`; bsc `0xc08e10...3a2dd1` | ⚠️ Unaudited |
| MyContractOwn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x21e9d9...8d75e0`; bsc `0x75a6bf...e037be`; bsc `0xa8b978...919139` | ⚠️ Unaudited |
| nftEverRise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x23cd2e...11807e`; polygon `0x23cd2e...11807e`; avalanche `0x23cd2e...11807e` | ⚠️ Unaudited |
| OKLGRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bc6f...d668c4` | ⚠️ Unaudited |
| Ownable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0720d...dda0c9` | ⚠️ Unaudited |
| PabloEscoMars | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa03c49...fa91c8` | ⚠️ Unaudited |
| PancakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca143c...350c73` | ⚠️ Unaudited |
| PigToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92446b...fe820e` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x107b31...b8555a`; avalanche `0x99f873...ec2bd3`; avalanche `0xd7ae65...10bc2e`; avalanche `0xe34309...114482` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1035b0...c3d784` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x227449...a14885`; avalanche `0x45b2c4...420324`; avalanche `0x7dcdb8...ec03b6`; avalanche `0xe72438...4d3f99` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x05d06a...5a3388`; avalanche `0x0babed...ab3689`; avalanche `0x692782...8e8551`; avalanche `0x88e026...5dda60`; avalanche `0x89ecdd...033f00`; avalanche `0x9f509a...5b896c`; avalanche `0xd0c23f...0c2fa1`; avalanche `0xe73477...628cd3`; avalanche `0xeb1f56...6e0b55` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xaa9b83...06f569`; bsc `0xc3ae8d...02fa20` | ⚠️ Unaudited |
| SplitBuysAndSells | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4925cb...ef6d28` | ⚠️ Unaudited |
| Spooky | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x016484...71e011`; bsc `0x3f4cdb...16a647`; bsc `0x5c2723...b9ebe4`; bsc `0x612e35...8ddc93`; bsc `0x6c19e8...76ce70`; bsc `0x7818bd...eed948` | ⚠️ Unaudited |
| SpookyShiba | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x68e858...90314c`; bsc `0xad1bb8...9c597d`; bsc `0xe3a551...7783f7`; bsc `0xed74bc...4334a4` | ⚠️ Unaudited |
| SpookyShiba_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x7ea299...24ce21`; bsc `0x9c2b1b...1bf25a` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 126 deployments: avalanche `0x0147c0...0ef296`; avalanche `0x01b269...2145e3`; avalanche `0x02d632...cab641`; avalanche `0x0473f2...2465a9`; avalanche `0x0584e6...2fd302`; avalanche `0x072c47...6f97f6`; avalanche `0x076917...72cd75`; avalanche `0x089ec7...c22dcc`; avalanche `0x0a3b77...972c0e`; avalanche `0x0a64e8...3b0d7b`; avalanche `0x0cc47a...66a557`; avalanche `0x0f9e96...06e27b`; avalanche `0x0fb72b...faf162`; avalanche `0x0fefca...fb54b0`; avalanche `0x10f672...cb5029`; avalanche `0x123780...dfb337`; avalanche `0x132492...ce10d3`; avalanche `0x14d458...664301`; avalanche `0x14f28f...36e08a`; avalanche `0x156539...0feae4`; avalanche `0x16f419...8ed79e`; avalanche `0x1771ba...dba954`; avalanche `0x1a7727...4c30a9`; avalanche `0x1b2d91...9b440c`; avalanche `0x1fcfde...5501ad`; avalanche `0x23eb41...18f628`; avalanche `0x25dd4a...29d7cc`; avalanche `0x2a834d...086401`; avalanche `0x2aa5ee...75d2da`; avalanche `0x2cd215...1de38b`; avalanche `0x2d92ee...e048eb`; avalanche `0x31ba32...d859ce`; avalanche `0x357211...f67b1c`; avalanche `0x386fbf...122329`; avalanche `0x3c3246...0354ec`; avalanche `0x3c9211...d7b5d9`; avalanche `0x3cb560...eaad04`; avalanche `0x3ccfc1...2f8e24`; avalanche `0x3dca53...a60a63`; avalanche `0x3e6125...01acd1`; avalanche `0x3e9263...ff864d`; avalanche `0x43feff...682414`; avalanche `0x444d68...6890fe`; avalanche `0x45acb6...587d87`; avalanche `0x4d0b73...377313`; avalanche `0x4e931f...112538`; avalanche `0x52d69a...5ea435`; avalanche `0x5410c2...e4c118`; avalanche `0x5caaf1...006e22`; avalanche `0x5d57f6...899c7c`; avalanche `0x5da155...5405ca`; avalanche `0x5f0902...865095`; avalanche `0x5fe9ad...5ec7ec`; avalanche `0x61ecdb...ff90e2`; avalanche `0x627237...7e9f80`; avalanche `0x650967...76f430`; avalanche `0x66b145...f3142d`; avalanche `0x66fa31...7efb63`; avalanche `0x670968...198eec`; avalanche `0x68b28f...264bff`; avalanche `0x6af7e2...eec3a5`; avalanche `0x6baa88...3a4db8`; avalanche `0x6d3431...368edb`; avalanche `0x6ee70b...031ec7`; avalanche `0x703473...b96460`; avalanche `0x70466e...ad27cc`; avalanche `0x70a5e4...be307b`; avalanche `0x70f7d4...5ac7da`; avalanche `0x73cd07...6e9ca0`; avalanche `0x763dc8...e64864`; avalanche `0x76eaa1...f63008`; avalanche `0x770b6e...b264f3`; avalanche `0x7a609a...dc490e`; avalanche `0x7d0a30...311326`; avalanche `0x7e4d8a...31c1d4`; avalanche `0x7e9499...22063f`; avalanche `0x7ef4e0...b975e0`; avalanche `0x7fa453...bcb6fe`; avalanche `0x810998...cbf66d`; avalanche `0x815cbe...a2c9ee`; avalanche `0x81a003...98237e`; avalanche `0x8637eb...08636d`; avalanche `0x868848...43cc3b`; avalanche `0x872f15...f8030f`; avalanche `0x895a53...1c02e7`; avalanche `0x8b58a5...662afc`; avalanche `0x90bbc3...1f6fce`; avalanche `0x927be1...50848b`; avalanche `0x948cf2...566e8f`; avalanche `0x952d82...56d57e`; avalanche `0x96a6b2...c20718`; avalanche `0x971156...997c50`; avalanche `0x99727c...f4e01e`; avalanche `0x9b711b...f3bc5c`; avalanche `0x9c5b9e...0e135d`; avalanche `0x9eb54a...793200`; avalanche `0x9f8c00...b7c983`; avalanche `0x9fcb6b...63fa1c`; avalanche `0xa526c8...419d97`; avalanche `0xafb2aa...c7fe8b`; avalanche `0xb2d98a...191cf1`; avalanche `0xb31a19...0dfec0`; avalanche `0xb3d05b...b8a30e`; avalanche `0xb7b46f...693e26`; avalanche `0xb864ba...3d274e`; avalanche `0xc3e997...2b3429`; avalanche `0xc6001b...669249`; avalanche `0xc698d4...74673c`; avalanche `0xcbaf30...c15965`; avalanche `0xcdac33...30fbeb`; avalanche `0xd60366...fa5360`; avalanche `0xdc0d42...a187a7`; avalanche `0xddf06d...a4fd9d`; avalanche `0xde8cb3...79d652`; avalanche `0xdf1339...ef8fe7`; avalanche `0xdf781b...242aa4`; avalanche `0xe5ba4d...cd298b`; avalanche `0xea347e...d6d0c3`; avalanche `0xec8184...dd7d1a`; avalanche `0xf19c35...ecb452`; avalanche `0xf2eb59...734279`; avalanche `0xfa4329...6abf9b`; avalanche `0xfa4ceb...0a1846`; avalanche `0xfb0586...1a3fe9`; avalanche `0xfc22e8...d56a25`; avalanche `0xfc2f38...747bbb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2f4391...bb5140`; avalanche `0x592f70...419f37` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3c5486...f73682`; avalanche `0x82ea6f...08038e`; avalanche `0xe6ffd9...f3ba6e` | ⚠️ Unaudited |
| UniswapV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x5c69be...c5aa6f`; polygon `0x575737...d3ab32` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3c62d...c224e2` | ⚠️ Unaudited |
| Uptrend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4ed75...552d23` | ⚠️ Unaudited |
| VeJoeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4b4e08...7fbc17`; avalanche `0xdefdbe...e4e933` | ⚠️ Unaudited |
| veRise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xdba7b2...072f1b`; avalanche `0xdba7b2...072f1b` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c7b8e...d02027` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (119)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478c18...0523d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d6f1...51713d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x598deb...3ee498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f7051...786b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c1f6...d99125` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385046 | `0xbbd7b8...6475f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd93c68...eb8983` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385047 | `0xdba7b2...072f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f230a...55116f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x117247...20c94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b4349...cbdba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e0110...a3fda4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2de069...94c578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f74df...86b28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30f401...43d35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x319652...e357eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d2c8a...c0556d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47a576...23d629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ce46b...8bdafb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dcc38...24b4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51807e...2a73dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x519cb8...e48a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x598deb...3ee498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cfc47...3534e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x650582...350fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d0274...b9dbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e7373...52122d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79cde6...154b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ae49b...9ffeaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f7051...786b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98c1f6...d99125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9adaff...f9ca97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9dcc41...8f2bb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5b65a...5eabce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac2f4e...426d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2be0d...83f7fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc00d97...6d6eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8ae5e...37450d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb6308...fb69a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc5233...397808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd736f8...2636d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbd8e0...dea723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde761a...b22d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe06eca...03d2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4fa55...1fd386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefd47d...07c2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf51576...95d61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf67f6a...a04524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdac84...28ae89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x194528...ba4701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x598deb...3ee498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ffe1a...4f295c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66b51b...25dba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a9a00...77d739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98c1f6...d99125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf0200...887dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 3 deployments: fantom `0x152ee6...e61be3`; fantom `0x595036...f4d32b`; fantom `0xde62a6...299383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05300c...4d6df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07dfe5...25a922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b94d3...de5864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1ec3...18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160bb4...c9b38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16c553...a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18ce97...5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x195759...1298a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a6708...8f0849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1af353...2d232c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c4b41...62c452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22a8e3...b6477d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x250a0a...a109b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33fa3d...eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a0fa8...cef572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bcda0...54f1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47d99d...044f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4acc99...ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54fe8e...c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x587b32...1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x598deb...3ee498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b4dfd...fef862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bbfa5...13fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cfca5...4c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e1e12...a424ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x623877...c2f037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65f17e...5d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b516b...5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6f89...ee6459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77b995...6403e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aca03...0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d9d90...e87740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8165aa...aec225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x884d2e...9d0861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x931b5d...5989ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x98c1f6...d99125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997fba...2bb073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1246c...5f83fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2008a...a840d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa49fac...a38f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4e65d...7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa60ef5...28b9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa71a7c...2959fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeee31...aaf61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb06b46...16bce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5a917...27f800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaf1a2...8cb510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb09ac...9bfec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb83b6...72d204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc05fb...ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf7023...d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc35660...2350bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc63085...9158e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7d35c...395be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd12cf5...1e3075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd19dac...9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdad1d7...881ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc3b37...8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59bb0...04d0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8a191...529707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf47b8c...d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf975aa...68ecbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/everrise](https://skynet.certik.com/projects/everrise) | CertiK | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/EverRise/02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf) | chainsulting | Audit | 2022-04 | stale | Direct | address | matched | 2 | 1 | 0 | 0 | high |
| [audit.md](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/EverRise/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3046] skynet.certik.com/projects/everrise — no match: Extracted from the 'Audited Files/SHA256' section. The audit date is from 'Last Audit was delivered on 7/27/2023'.
- [14288] 02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf — matched: Two flattened contracts in scope: EverRise_flat.sol (token) and nftEverRise_flat.sol (staking NFT). Audit date from cover page: 03.04.2022.
- [14289] audit.md — no match: The provided text is a GitHub page with no actual audit report content; only navigation and file metadata are visible.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/everrise | DAppSocialPoolController | unmatched — not counted | — | Listed under 'Audited Files/SHA256' | no |
| skynet.certik.com/projects/everrise | DAppSocialPoolModel_Ethereum | unmatched — not counted | — | Listed under 'Audited Files/SHA256' | no |
| 02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf | EverRise_flat | own proxy deployment | EverRise (proxy) (selected) `0xc17c30...810ca3` — deployed 2022-04-01 20:32:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf | nftEverRise_flat | own contract | nftEverRise (selected) `0x23cd2e...11807e` — deployed 2022-04-01 20:32:38+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 119 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: address=2

Zero-match audit list:

- [3046] skynet.certik.com/projects/everrise
- [14289] audit.md

Fork inheritance lineage and inherited audits are included when available.
