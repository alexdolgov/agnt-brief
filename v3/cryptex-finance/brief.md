# Agentic Audit Brief: Cryptex Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 9 (1 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Cryptex Finance (`cryptex-finance`)
- Website: [https://cryptex.finance/](https://cryptex.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism
- Contract surface: 117 unique implementations (323 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $493,739.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Cryptex Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, ethereum. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: erc165 (2), ownable (2), accesscontrol (1), erc20 (1), pausable (1)
- Frameworks: chainlink (2), openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ETHVaultHandler (`0x717170...ac1381`, chain 1)
- GovernorBeta (`0x874c5d...196d5b`, chain 1)
- TCAP (`0x16c52c...50afa4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 113 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 3 of 117 unique; 114 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/89
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 117
- Raw deployments: 323
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 2 | 2.2% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ETHVaultHandler | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-234520 | `0x717170...ac1381` | ✅ Audited |
| TCAP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234518 | `0x16c52c...50afa4` | ✅ Audited |

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Account | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca7fb0...a0e826` | ⚠️ Unaudited |
| AccountVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0e9d1d...8aaf5c`; arbitrum `0x5012e7...3c67b7` | ⚠️ Unaudited |
| BalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: arbitrum `0x08883b...5fe1e4`; arbitrum `0x477fb9...08385e`; arbitrum `0x485b46...4bd618`; arbitrum `0x566ade...5d517f`; arbitrum `0x68f680...f66535`; arbitrum `0x741fc0...bf8666`; arbitrum `0x7869fd...860938`; arbitrum `0x78c8b2...cd63c2`; arbitrum `0x973f2a...2c5a3a`; arbitrum `0xbca6d5...525c3a`; arbitrum `0xbd454f...445773`; arbitrum `0xc08428...f25656`; arbitrum `0xc5e9ef...f846b9`; arbitrum `0xda17b1...7d1cde`; arbitrum `0xdeeb41...d8fd31`; arbitrum `0xffe829...d65d27` | ⚠️ Unaudited |
| BatchKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x5a8557...b9f118`; arbitrum `0x8b4e6f...7b05b6`; arbitrum `0xb09249...ef12ff`; arbitrum `0xb5ae2b...c90ea6` | ⚠️ Unaudited |
| CentimilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33117f...116d1c` | ⚠️ Unaudited |
| ChainlinkFeedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3b9b02...170bc5`; arbitrum `0xdc5182...70a3b6` | ⚠️ Unaudited |
| CheckpointLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x609f98...93a1d2`; arbitrum `0x825b2f...2f212e`; arbitrum `0x960e20...d83bee`; arbitrum `0xedfc30...e667ca` | ⚠️ Unaudited |
| CheckpointStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x074fb1...9406d9`; arbitrum `0x154ae7...ea4403`; arbitrum `0x40ffe6...30bcf1`; arbitrum `0x67ae97...215ea6`; arbitrum `0x82853a...b2c794` | ⚠️ Unaudited |
| Collateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69a682...e4f2eb` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8b581...3237ee` | ⚠️ Unaudited |
| Controller_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x197de1...6ddd7c`; arbitrum `0x28046a...0d5410` | ⚠️ Unaudited |
| Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x0ecb01...edcc5e`; arbitrum `0x161cb5...0faac8`; arbitrum `0x86a2b5...128092`; arbitrum `0xdc1521...4edd14` | ⚠️ Unaudited |
| Ctx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x321c2f...38f98d` | ⚠️ Unaudited |
| DelegatorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70236b...472918` | ⚠️ Unaudited |
| DSU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52c64b...6b841b` | ⚠️ Unaudited |
| ERC20VaultHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x236453...76ee5c`; ethereum `0x443366...964771`; ethereum `0x56549e...011a00`; ethereum `0xa5b3bb...35fa03`; ethereum `0xa8cca3...9424d3`; ethereum `0xada39d...14d1d3`; ethereum `0xbeb44f...f369ba` | ⚠️ Unaudited |
| ETHVaultHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ba6b...f74833` | ⚠️ Unaudited |
| GasOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x038901...4a2bc7`; arbitrum `0xfd12a7...3b05e4` | ⚠️ Unaudited |
| Giga | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x234253...cab7dc`; arbitrum `0x7a98ef...730fcf` | ⚠️ Unaudited |
| GlobalStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0b18a9...291ed0`; arbitrum `0x3b4b4e...b9e479`; arbitrum `0xad4a7b...e8cac6`; arbitrum `0xcf1384...1f697d`; arbitrum `0xf864f0...1524fd` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271901...8c88f7` | ⚠️ Unaudited |
| GovernorBeta | governance | project_anchor | own_supporting | 0 | ethereum | unit-234521 | `0x874c5d...196d5b` | ⚠️ Unaudited |
| Incentivizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b495f...fa92b4` | ⚠️ Unaudited |
| InvariantLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x1451ba...c1a8c8`; arbitrum `0x581c68...a2ad34`; arbitrum `0x63f314...140c95`; arbitrum `0xaae7b0...fdeb0a`; arbitrum `0xf73368...34e35a` | ⚠️ Unaudited |
| Inverse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd166f9...30b5e9` | ⚠️ Unaudited |
| KeeperOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x1990fa...40f1d8`; arbitrum `0x2a9cd1...cba3de`; arbitrum `0x81e521...39a1c7`; arbitrum `0xebd02f...10135a`; arbitrum `0xf2f4d5...d1b676` | ⚠️ Unaudited |
| KeeperOracle_Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa3186b...12641b` | ⚠️ Unaudited |
| Kilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xde7e2d...49acab`; arbitrum `0xee590e...8a8d8c` | ⚠️ Unaudited |
| KiloPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x7aaf91...edf753`; arbitrum `0x8da96a...b09751` | ⚠️ Unaudited |
| KiloPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf94f18...16cbc9` | ⚠️ Unaudited |
| LiquidityReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xc8bb1c...3cf59a`; ethereum `0xdc4cdd...3a5f94`; arbitrum `0x938f14...0747ba`; arbitrum `0x944cfb...ba78ff` | ⚠️ Unaudited |
| MagicValueLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x28158d...9df48c`; arbitrum `0x40e52d...65f091`; arbitrum `0xe022bf...bdb1be` | ⚠️ Unaudited |
| Manager_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3af57c...ca4671` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x17ebca...a3b255`; arbitrum `0x8d3ff0...4b1e11`; arbitrum `0x937c6a...b8d8bc`; arbitrum `0x97b072...e17e8b`; arbitrum `0xa092f4...642b43`; arbitrum `0xb43e82...061efa`; arbitrum `0xb5aa1d...fcfc06`; arbitrum `0xbda0b3...b882d7`; arbitrum `0xd5fbf1...ae137d`; arbitrum `0xed4b25...01ff26`; arbitrum `0xfb4a12...0b0e3b` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x046d60...9b4cde`; arbitrum `0x0c698e...095176`; arbitrum `0x111cf6...c6fe10`; arbitrum `0x28876d...368599`; arbitrum `0x2dddd1...f353c8`; arbitrum `0x3dd09c...7ff937`; arbitrum `0x563d45...de30bf`; arbitrum `0x64bd54...17a4ef`; arbitrum `0x822900...d2dc71`; arbitrum `0xac8ab3...67430c`; arbitrum `0xad3353...f10dde`; arbitrum `0xba313a...9df207` | ⚠️ Unaudited |
| MarketParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x0d07e3...8f2e16`; arbitrum `0x1016b0...a1b47f`; arbitrum `0x592f46...07bfad`; arbitrum `0x7fdf29...7fe834`; arbitrum `0x8a159c...63c758`; arbitrum `0x9d9be6...602cf8`; arbitrum `0xa59413...e59020` | ⚠️ Unaudited |
| Mega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffb33f...5248e1` | ⚠️ Unaudited |
| MegaPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe833e9...f0f7d7` | ⚠️ Unaudited |
| MetaQuantsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x309ad3...5687f1` | ⚠️ Unaudited |
| MetaQuantsFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa7df5f...ca0b5c`; arbitrum `0xb744f7...79a230` | ⚠️ Unaudited |
| Micro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f7a6c...e74179` | ⚠️ Unaudited |
| MicroPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18ad45...8cd632` | ⚠️ Unaudited |
| MigrationReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d49c4...3a0c27`; arbitrum `0xaff9b2...97e1dc` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfec741...fb6d84` | ⚠️ Unaudited |
| Milli | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae794c...68bd62` | ⚠️ Unaudited |
| MilliPowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca65c...5f4e0e` | ⚠️ Unaudited |
| MilliPowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x443cef...a43166` | ⚠️ Unaudited |
| Multicall4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b12ff...8fe607` | ⚠️ Unaudited |
| MultiInvoker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x14c444...44c26a`; arbitrum `0x18d1e8...8dd2d3`; arbitrum `0x2b9922...a2a15b`; arbitrum `0x9553e2...b98653`; arbitrum `0xf56f08...7c9b4e`; arbitrum `0xf94719...cfe9ae` | ⚠️ Unaudited |
| MultiInvoker_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x0092f3...fdd873`; arbitrum `0x05075e...636967`; arbitrum `0x1da92f...579ea1`; arbitrum `0x31e1d5...69c189`; arbitrum `0x56ccf5...3dca04`; arbitrum `0x58d8da...958102`; arbitrum `0x8c8326...b82a1b`; arbitrum `0x9d2725...1d8542`; arbitrum `0xa910e3...7b1443`; arbitrum `0xc1c168...b1ba8b`; arbitrum `0xf8b26c...e5fd43` | ⚠️ Unaudited |
| Nano | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc0e7...0645e7` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x0a47bb...246bb7`; arbitrum `0x462a32...ae0d79`; arbitrum `0x5cb826...14f650`; arbitrum `0x93834c...ed1d97`; arbitrum `0xa7e49f...2feffe`; arbitrum `0xd16882...2a5514`; arbitrum `0xde46f8...b53749` | ⚠️ Unaudited |
| OracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x19a401...be4b22`; arbitrum `0x62fb1d...4fc2de`; arbitrum `0x8747a9...e05d3d`; arbitrum `0x89cbd5...991b83`; arbitrum `0xe299ac...41c7bd` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373c74...f2c18e` | ⚠️ Unaudited |
| OrderVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x886e59...908581` | ⚠️ Unaudited |
| PayoffFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf81752...27805d` | ⚠️ Unaudited |
| PerennialLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x159331...a74c3d` | ⚠️ Unaudited |
| PositionStorageGlobalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x3f96f8...a3ab6d`; arbitrum `0x5f52a2...0e0b92`; arbitrum `0xa9e35c...dfb76d`; arbitrum `0xb1c72d...39ad0c`; arbitrum `0xd4ccf6...8b2541` | ⚠️ Unaudited |
| PositionStorageLocalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x3d43c9...745a4c`; arbitrum `0x864a9a...813712`; arbitrum `0xb5cb0b...28b334`; arbitrum `0xdd379e...ef57c1`; arbitrum `0xfe8fa9...c9ea25` | ⚠️ Unaudited |
| PowerHalf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x07b891...c8af9c`; arbitrum `0xf2accb...3d7a3d` | ⚠️ Unaudited |
| PowerTwo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6b1c49...ed696c`; arbitrum `0x865707...deb367` | ⚠️ Unaudited |
| Product | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x427bc8...922250`; arbitrum `0x9df509...4d51b3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x130aa8...3015db`; arbitrum `0x16b383...3f3535`; arbitrum `0x4f75cf...be169b`; arbitrum `0x5bea99...aeb747`; arbitrum `0x920cd4...9d120a`; arbitrum `0xe8497a...f5d2ab` | ⚠️ Unaudited |
| PythFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x63dd40...687bb6`; arbitrum `0x709e67...fde10d`; arbitrum `0xa19621...89b43e`; arbitrum `0xc67c13...671219` | ⚠️ Unaudited |
| PythFactory_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x143c5e...74c1ad`; arbitrum `0x17bf3d...06b46a`; arbitrum `0x1b0d2f...991d1c`; arbitrum `0x76ad42...ef767e`; arbitrum `0xaad878...37026d`; arbitrum `0xec67a2...ac7290` | ⚠️ Unaudited |
| PythOracle_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x7a18a5...395ca7`; arbitrum `0xa0f11b...98e94b` | ⚠️ Unaudited |
| RebateHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x33a8a8...fd1d33`; arbitrum `0x798d98...ae580b` | ⚠️ Unaudited |
| ReferralHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xedbbcb...7cdade` | ⚠️ Unaudited |
| RewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1a14f9...4b7157`; ethereum `0x5b5775...236ef1`; ethereum `0xe0c99c...355fdd` | ⚠️ Unaudited |
| RiskParameterStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x02608d...aa0ca7`; arbitrum `0x099285...d09aed`; arbitrum `0x2071ff...20a996`; arbitrum `0x7627f6...3f2cd8`; arbitrum `0x9e5345...adbcf2`; arbitrum `0xc24fef...f850bd`; arbitrum `0xd6c002...6a8c03`; arbitrum `0xe02bad...961d20` | ⚠️ Unaudited |
| SeasonalMerkleClaim | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4fc1cc...301f30`; arbitrum `0xcdca57...a314b3` | ⚠️ Unaudited |
| SimpleReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58e0c5...196bfe` | ⚠️ Unaudited |
| SingleBalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x196062...8f016f`; arbitrum `0x9ba046...9ec17a` | ⚠️ Unaudited |
| SingleBalancedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x1ad520...87cd1f`; arbitrum `0x61fcc5...0361d1`; arbitrum `0xb93ac2...0b65be` | ⚠️ Unaudited |
| TcapPayoffProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa31594...de3832` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa54074...ac0da8` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x37fa20...554ebc`; arbitrum `0x4aa8b4...f3ad22`; arbitrum `0xda381a...cc105b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 25 deployments: arbitrum `0x2b87c5...a27cbc`; arbitrum `0x431603...658832`; arbitrum `0x4d6357...c2a75c`; arbitrum `0x5a572b...ef24a6`; arbitrum `0x663b38...d1c9e4`; arbitrum `0x6b60e7...ef4e6e`; arbitrum `0x70d803...c96e71`; arbitrum `0x7c65ab...c7edd3`; arbitrum `0x8bf8a4...f31da9`; arbitrum `0x8cda59...eef413`; arbitrum `0x9f35b7...a577b4`; arbitrum `0xa59ef0...63167b`; arbitrum `0xad3565...be5ad0`; arbitrum `0xaf8ced...aeeec2`; arbitrum `0xb84b9d...b0c6ee`; arbitrum `0xbbf8a9...af2261`; arbitrum `0xcb3b6a...5ef048`; arbitrum `0xdad8a1...e26ec7`; arbitrum `0xe72e82...cbca92`; arbitrum `0xea281a...a3a75a`; arbitrum `0xeea68d...848c3d`; arbitrum `0xf12a4a...5e0437`; arbitrum `0xf40e1f...17e0c2`; arbitrum `0xfc20bc...3ab37e`; arbitrum `0xfeb35f...873b7c` | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2121b3...a4f1c5`; ethereum `0x47aaec...f187b4`; ethereum `0x705992...fe38c0`; ethereum `0xa62a08...f1c07e`; ethereum `0xa729da...8bd53f`; ethereum `0xbda4e4...4a8049` | ⚠️ Unaudited |
| UCrossChainOwner_Arbitrum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x4a0f50...4d9314`; arbitrum `0x7b4adf...562a84`; arbitrum `0xc5432d...95ec1f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a9316...6089d0`; ethereum `0xa87e2c...8dd2f5` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc12b0f...c77bc6` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x03557b...61a0d7`; arbitrum `0x4a8282...9b7b16`; arbitrum `0x58f04f...c9f3eb`; arbitrum `0x819622...81894e`; arbitrum `0x96626b...967ab6`; arbitrum `0xd51013...138d5c`; arbitrum `0xd6300b...010528`; arbitrum `0xdac72d...189bea` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x1d6a63...9e0067`; arbitrum `0x4e933d...9bcff6`; arbitrum `0x672a82...fb26af`; arbitrum `0xa24ee2...a79415`; arbitrum `0xbfda7c...78b018`; arbitrum `0xd6bf5e...31a9b5`; arbitrum `0xdae2f1...4857a3`; arbitrum `0xdecec7...3b4a8f` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x492bf4...babd73` | ⚠️ Unaudited |
| VersionLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x6fd2b0...3b45be`; arbitrum `0x8af5dc...fed9b7`; arbitrum `0xcf64b7...f1bc43`; arbitrum `0xe5fa0e...493d7d` | ⚠️ Unaudited |
| VersionStorageLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x107507...ead05b`; arbitrum `0x73ff98...783594`; arbitrum `0xa25a2e...949970`; arbitrum `0xb87e6d...41cbeb`; arbitrum `0xdba147...49df4a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06fc26...31bf41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09d060...da5d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21d8b5...9e102f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25f7ee...d43a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32761c...969561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x346ada...a7afd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x394858...9f72c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bd11e...089151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d3761...8fd819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e3294...581016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x548574...f0ff5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x581765...dbd04a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x613824...d60d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c5b8e...0522b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x747fb5...c72533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x783e7c...e109c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x789201...e2648a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x922c70...98d8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x991069...425c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa70eb2...b2d660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4bd01...72e556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfe123...1d0ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc034ad...86c751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2c50f...55b461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5764c...9d38e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5b029...33463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1afdc...1cd5a3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf](https://docs.cryptex.finance/assets/files/tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf](https://docs.cryptex.finance/assets/files/tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [www.cryptex.finance/security](https://www.cryptex.finance/security) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf](https://www.cryptex.finance/audits/Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Cryptex_-_Final_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Final_Report.pdf) | Unknown | Audit | 2021-04 | stale | Direct | n/a | matched | 2 | 0 | 0 | 12 | n/a |
| [Cryptex_-_Staking_Report.pdf](https://www.cryptex.finance/audits/Cryptex_-_Staking_Report.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Cryptex-security-review.md](https://github.com/pashov/audits/blob/master/team/md/Cryptex-security-review.md) | Pashov Audit Group | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Cryptex-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Cryptex-security-review.pdf) | Pashov Audit Group | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12956] tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf — no match: Extracted contract names from finding contexts and explicit mention of TokenExchangeSetIssuer as part of scope. Audit date from cover page: September 27, 2024.
- [12957] tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date is the end date of the engagement period (September 30th - October 4th).
- [12958] www.cryptex.finance/security — no match: The provided text is a marketing page for Cryptex Finance's security section, listing audit firms (CCantina, Pashov Audit Group, Quantstamp) and audit names (TCAP v2 Audit, System Audit, Core Audit, Staking Audit) but does not contain specific contract names, file paths, or a scope section. No contracts in scope are identifiable.
- [12959] Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf — no match: Extracted contract names from finding contexts and explicit mention of TokenExchangeSetIssuer as part of scope. Audit date from cover page: September 27, 2024.
- [12960] Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date is the end date of the engagement: October 4th.
- [12961] Cryptex_-_Final_Report.pdf — matched: No reason recorded
- [12962] Cryptex_-_Staking_Report.pdf — no match: No reason recorded
- [12963] Cryptex-security-review.md — no match: Scope section explicitly lists 11 smart contracts. No audit date found in the provided text.
- [12964] Cryptex-security-review.pdf — no match: Scope section explicitly lists 11 smart contracts. Audit date from header: September 30th - October 4th, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | LiquidationLib | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | BasePocket | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | Vault | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | AaveV3Pocket | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TCAPV2 | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | Multicall | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | FeeCalculatorLib | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | IOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TokenExchangeSetIssuer | unmatched — not counted | — | explicitly mentioned as part of scope | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | DeployTCAP | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf | TCAPTargetOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | LiquidationLib | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | BasePocket | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | Vault | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | AaveV3Pocket | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TCAPV2 | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | Multicall | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | FeeCalculatorLib | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | IOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TokenExchangeSetIssuer | unmatched — not counted | — | explicitly mentioned as part of scope in section 4.5.4 | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | DeployTCAP | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf | TCAPTargetOracle | unmatched — not counted | — | mentioned in finding contexts | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex_-_Final_Report.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | Ctx | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | ERC20VaultHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | ETHVaultHandler | own contract | ETHVaultHandler (selected) `0x717170...ac1381` — deployed 2021-04-06 07:47:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cryptex_-_Final_Report.pdf | GovernorAlpha | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | IVaultHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | IWETH | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | LiquidityReward | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | Orchestrator | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | RewardHandler | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | SafeMath | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | TCAP | own contract | TCAP (selected) `0x16c52c...50afa4` — deployed 2021-04-06 07:42:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cryptex_-_Final_Report.pdf | Timelock | unmatched — not counted | — | — | no |
| Cryptex_-_Final_Report.pdf | TreasuryVester | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | Delegator | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | DelegatorFactory | unmatched — not counted | — | — | no |
| Cryptex_-_Staking_Report.pdf | IGovernanceToken | unmatched — not counted | — | — | no |
| Cryptex-security-review.md | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.md | BasePocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | TCAPV2 | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | FeeCalculatorLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | LiquidationLib | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | AggregatedChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | BaseOracleUSD | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | TCAPTargetOracle | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | AaveV3Pocket | unmatched — not counted | — | listed in scope | no |
| Cryptex-security-review.pdf | BasePocket | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x874c5d...196d5b` | GovernorBeta | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [12956] tcapV2.0-cantina-audit-report-8b521e4a64b470f078f86e763b203de9.pdf
- [12957] tcapV2.0-pashov-group-audit-report-2d233212e5c3d77879da3c9e1a202632.pdf
- [12958] www.cryptex.finance/security
- [12959] Cryptex_Finance-tcapV2.0-cantina-audit-report.pdf
- [12960] Cryptex_Finance-tcapV2.0-pashov-group-audit-report.pdf
- [12962] Cryptex_-_Staking_Report.pdf
- [12963] Cryptex-security-review.md
- [12964] Cryptex-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
