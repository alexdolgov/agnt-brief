# Agentic Audit Brief: Lynex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Lynex (`lynex`)
- Website: [https://app.lynex.fi](https://app.lynex.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: linea
- Contract surface: 87 unique implementations (149 raw deployments)
- Coverage basis: 0/17 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $769,065.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lynex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across linea. Structural roles: 8 supporting, 7 unclassified, 5 core, 2 infra. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: supporting (8), unclassified (7), core (5), infra (2)
- Contract kinds: contract (22)
- Detected standards: ownable (5), ownable2step (5), erc1967proxy (3), erc20 (2), accesscontrol (1), erc165 (1), erc20permit (1), multicall (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (4), chainlink (2)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AlgebraFactory (`0x622b2c...a08d0f`, chain 59144)
- BribeOptionToken (`0xe8a4c9...ce557b`, chain 59144)
- DistributeFees (`0xf7fff8...8454ad`, chain 59144)
- EpochController (`0x62fc3b...6f0822`, chain 59144)
- GaugeFactoryV2 (`0x8418f2...1454b6`, chain 59144)
- GaugeFactoryV2_CL (`0x7b555a...ee1f2e`, chain 59144)
- Lynex (`0x1a51b1...71e9af`, chain 59144)
- MinterUpgradeableV2 (`0xa996de...903826`, chain 59144)
- PairFactory (`0xbc7695...99f9ee`, chain 59144)
- QuoterV2 (`0xce8296...3a0640`, chain 59144)
- RewardsDistributorV2 (`0x2222c5...910ee4`, chain 59144)
- RouterV2 (`0x610d2f...c34e74`, chain 59144)
- SwapRouter (`0x3921e8...583390`, chain 59144)
- TransparentUpgradeableProxy (`0x0b2c83...3b63c5`, chain 59144)
- TransparentUpgradeableProxy (`0x8d95f5...9b4c0c`, chain 59144)
- TransparentUpgradeableProxy (`0xfa638e...45c469`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 22; live-surface rows included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/17 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 70 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Confirmed-live implementations: 17 of 87 unique; 70 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/82
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 87
- Raw deployments: 149
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControls | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9d9459...89c7dc` | ⚠️ Unaudited |
| AirdropClaimKey | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x142665...4e31e4` | ⚠️ Unaudited |
| AirdropClaimV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x5d4614...a6cce6`; linea `0x6fbee8...318308` | ⚠️ Unaudited |
| AirdropClaimV2Strategic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x61fc82...1557da`; linea `0xdec9fc...37664b` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | linea | unit-388629 | `0x622b2c...a08d0f` | ⚠️ Unaudited |
| AlgebraPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x3cb104...e3f587`; linea `0x8e8001...e58ada`; linea `0xe24b4a...5ddb29` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9a8949...6a2c48` | ⚠️ Unaudited |
| AlgebraV1Twap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb28d2...4c21fd` | ⚠️ Unaudited |
| AlgebraV2Twap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x887f8d...94c608` | ⚠️ Unaudited |
| BatchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5b8865...1566dd` | ⚠️ Unaudited |
| BribeFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x795998...ef0886` | ⚠️ Unaudited |
| BribeFactoryV4 | unknown | project_anchor | own_supporting | 1 | linea | unit-388637 | `0xca79b7...b325b0` | ⚠️ Unaudited |
| BribeOptionToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-388633 | `0xe8a4c9...ce557b` | ⚠️ Unaudited |
| BribeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb03c9d...3f8aed` | ⚠️ Unaudited |
| CLFeesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x10ae74...664a84`; linea `0x2c40ea...88a361`; linea `0x4569f2...15f5e7` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x08283a...a92140`; linea `0x3223aa...9f0ccb`; linea `0xa5cd27...bf985f` | ⚠️ Unaudited |
| DistributeFees | unknown | project_anchor | own_supporting | 1 | linea | unit-388641 | 2 deployments: linea `0xf7fff8...8454ad`; linea `0xfa638e...45c469` | ⚠️ Unaudited |
| DutchAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6c13a3...3d6632` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x344530...042d80`; linea `0xf1e2e5...93136c` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x39871f...71871d`; linea `0xb2306f...2e0f89` | ⚠️ Unaudited |
| EpochController | unknown | project_anchor | own_supporting | 1 | linea | unit-388635 | 2 deployments: linea `0x62fc3b...6f0822`; linea `0xd8a570...f8a9b9` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x9dfa7d...bd8df5`; linea `0xc2eaf6...495933` | ⚠️ Unaudited |
| EpochController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xd2a6b3...1f2773`; linea `0xd405a3...d84d3a` | ⚠️ Unaudited |
| EscrowDelegateCheckpoints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x17a785...9d43d9`; linea `0x5310a5...541e27`; linea `0x73aebf...429bcf`; linea `0xa61538...f0c249` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | project_anchor | own_supporting | 1 | linea | unit-388638 | 2 deployments: linea `0x8418f2...1454b6`; linea `0xb94404...41948e` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | project_anchor | own_supporting | 1 | linea | unit-388636 | 2 deployments: linea `0x7b555a...ee1f2e`; linea `0xc04d35...2783ee` | ⚠️ Unaudited |
| GaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7a34d6...5d49de` | ⚠️ Unaudited |
| GaugeV2_CL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88f8b3...37daf9` | ⚠️ Unaudited |
| HyperbolicAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4fb4b4...4d3ae5` | ⚠️ Unaudited |
| Launcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3b7191...7022ac` | ⚠️ Unaudited |
| ListFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7fb2aa...f937e5` | ⚠️ Unaudited |
| Lynex | unknown | project_anchor | own_supporting | 0 | linea | unit-388625 | `0x1a51b1...71e9af` | ⚠️ Unaudited |
| Lynex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6758be...bee6aa` | ⚠️ Unaudited |
| LynexKeys | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86751c...d3d7ed` | ⚠️ Unaudited |
| LynxClaimToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x036559...f89059`; linea `0xf86381...ac645a` | ⚠️ Unaudited |
| LynxClaimV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0xb2bed0...2418ba`; linea `0xd8cee4...23e6c6` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4d6ee0...faa881` | ⚠️ Unaudited |
| MerkleTree | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x08a846...7ebcf8`; linea `0x46ff46...3635f1`; linea `0x6ccc6b...66272f`; linea `0xd89351...ad398b` | ⚠️ Unaudited |
| MerkleTreeKey | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa1ea0e...71a3bc` | ⚠️ Unaudited |
| MinterUpgradeableV2 | unknown | project_anchor | own_supporting | 1 | linea | unit-388639 | 2 deployments: linea `0x9030ae...eb19d4`; linea `0xa996de...903826` | ⚠️ Unaudited |
| MultiSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc535ee...5ffd8c` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x5d3d9e...249e4b` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa29b3f...d7098b` | ⚠️ Unaudited |
| OptionFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x9190f0...d475e4`; linea `0x9cf90f...828b38` | ⚠️ Unaudited |
| OptionTokenV3 | unknown | project_anchor | own_supporting | 0 | linea | unit-388630 | `0x63349b...400b60` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x0da12f...72584d`; linea `0x0e23d5...eeb762` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x17f3b0...1efa9d`; linea `0x775765...bbc0b8` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6c8432...7c3665`; linea `0xef599b...16f2cc` | ⚠️ Unaudited |
| PairAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x8a8bb2...e6eea6`; linea `0xeb7eab...2fa017` | ⚠️ Unaudited |
| PairAPISimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x067c77...5e3af0`; linea `0xba5d01...138743` | ⚠️ Unaudited |
| PairAPISimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x85965d...c1a541`; linea `0xa5df3b...591342` | ⚠️ Unaudited |
| PairAPISimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xb27a0d...4cfe78`; linea `0xef5f19...7f264d` | ⚠️ Unaudited |
| PairAPIV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6f4005...e08cd7`; linea `0x8398fe...a702c8` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6ed7b9...b3336c` | ⚠️ Unaudited |
| PairFactory | registry | project_anchor | own_supporting | 0 | linea | unit-388631 | `0xbc7695...99f9ee` | ⚠️ Unaudited |
| PermissionsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc68a70...c45cb8` | ⚠️ Unaudited |
| PointList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7be8f0...a1eaf4` | ⚠️ Unaudited |
| PostAuctionLauncher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd85a5e...834a2e` | ⚠️ Unaudited |
| PreMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x0b3a25...67c72a`; linea `0x224b20...430c0e`; linea `0xbf05db...d20452` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 14 deployments: linea `0x04cbfc...34a3fc`; linea `0x1d7355...76c5b9`; linea `0x37d28b...62ac57`; linea `0x464481...0fe816`; linea `0x4b6f63...4b5645`; linea `0x59ce7d...925c79`; linea `0x6e0673...64251f`; linea `0x7a7d96...be363d`; linea `0x7ebd70...f6bf0f`; linea `0xa82e62...d68685`; linea `0xb15242...407889`; linea `0xb3f6ed...6f1de2`; linea `0xc9453e...0e8c13`; linea `0xf3f5be...523c27` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x851d97...cac83e` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-388632 | `0xce8296...3a0640` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x1f43bd...8965e4`; linea `0x5be4bd...231edf` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x436244...05c743`; linea `0xa8dcc9...6cb274` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x51487f...30acc3`; linea `0x968a4b...679d97` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x6dc1df...4f8b41`; linea `0xcd9df6...f6408d` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-388626 | `0x2222c5...910ee4` | ⚠️ Unaudited |
| RouterV2 | adapter | project_anchor | own_supporting | 0 | linea | unit-388628 | `0x610d2f...c34e74` | ⚠️ Unaudited |
| RouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc51d74...e4a840` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | linea | unit-388627 | `0x3921e8...583390` | ⚠️ Unaudited |
| TimelockControllerEnumerable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: linea `0x7d496d...cc3229`; linea `0xeb1215...5ec953` | ⚠️ Unaudited |
| TradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c0bfb...ed1095` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0xaf1b70...1324ee`; linea `0xb224f3...f37c1d` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x15020d...105f1b`; linea `0x18e526...41ee93` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x255e81...a1892f`; linea `0x29468b...da79a8` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x32777d...327236`; linea `0x86453c...b86e59` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x8297f1...796672`; linea `0x8a63c3...fb582c` | ⚠️ Unaudited |
| VoterV5 | unknown | project_anchor | own_supporting | 1 | linea | unit-388634 | `0x0b2c83...3b63c5` | ⚠️ Unaudited |
| VoterV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2a9142...2a2ff1` | ⚠️ Unaudited |
| VoterV5_GaugeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf09634...7d7893` | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: linea `0x2df7fb...35d1bd`; linea `0x77dfab...d6e1fc`; linea `0xd658aa...a1ed3c`; linea `0xfcc338...973a3b` | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-388640 | `0x8d95f5...9b4c0c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x234064...80bcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x98e5cd...5ca474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd57c80...51646d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeb2118...c43acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xebd5d7...17c58c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://lynex.gitbook.io/lynex-docs/info-and-security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [26396] audits.md — no match: The document is a general security overview page, not an audit report. It mentions audits by Secure3, OpenZeppelin, PeckShield, ABDK Consulting, Hexens, and Hacken, but does not list specific contracts in scope. No contract names or audit dates are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0x622b2c...a08d0f` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xca79b7...b325b0` | BribeFactoryV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe8a4c9...ce557b` | BribeOptionToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xf7fff8...8454ad` | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x62fc3b...6f0822` | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8418f2...1454b6` | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7b555a...ee1f2e` | GaugeFactoryV2_CL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x1a51b1...71e9af` | Lynex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9030ae...eb19d4` | MinterUpgradeableV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x63349b...400b60` | OptionTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xbc7695...99f9ee` | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xce8296...3a0640` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2222c5...910ee4` | RewardsDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x610d2f...c34e74` | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3921e8...583390` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x0b2c83...3b63c5` | VoterV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8d95f5...9b4c0c` | VotingEscrowV2Upgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [26396] audits.md

Fork inheritance lineage and inherited audits are included when available.
