# Agentic Audit Brief: ether.fi Stake

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

- Project: ether.fi Stake (`ether-fi`)
- Website: [https://www.ether.fi/refer/04bb2542](https://www.ether.fi/refer/04bb2542)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, ethereum, hyperliquid, ink, katana, linea, mode, monad, optimism, scroll, sonic, swellchain, unichain, zksync-era
- Contract surface: 112 unique implementations (112 raw deployments)
- Coverage basis: 0/106 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ether.fi Stake. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, avalanche, base, berachain, blast, bsc, ethereum, hyperliquid, ink, katana, linea, mode, monad, optimism, scroll, sonic, swellchain, unichain, zksync-era. Structural roles: 4 supporting, 2 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: supporting (4), core (2)
- Contract kinds: contract (6)
- Detected standards: accesscontrol (1), erc165 (1), erc1967proxy (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 109 contracts are derived from known codebases. 109 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc1fa6e...df924a`, chain 324)
- UnnamedContract (`0xa6cb98...282b44`, chain 1923)
- UnnamedContract (`0xa3d68b...44914b`, chain 57073)
- AddressProvider (`0x8487c5...e4a848`, chain 1)
- AssetRecoveryModule (`0x431d27...563102`, chain 10)
- BeHYPEStakeModule (`0xd12efd...dbb9f3`, chain 10)
- BeHYPETimelock (`0xa24af7...4d2de4`, chain 999)
- BoringGovernance (`0x86b578...8c0161`, chain 1)
- BoringGovernance (`0x86b578...8c0161`, chain 8453)
- BoringGovernance (`0x86b578...8c0161`, chain 42161)
- BoringVault (`0x657e8c...88c642`, chain 1)
- BoringVault (`0x657e8c...88c642`, chain 8453)
- BoringVault (`0x657e8c...88c642`, chain 42161)
- BoringVault (`0x657e8c...88c642`, chain 80094)
- CashLiquidationHelper (`0x97ac36...ae033a`, chain 10)
- ClonableBeaconProxy (`0x357510...cf4dbe`, chain 42161)
- ERC1967Proxy (`0x0078c5...3a9553`, chain 10)
- ERC1967Proxy (`0x380b2e...881acb`, chain 10)
- ERC1967Proxy (`0x39161a...1ba539`, chain 10)
- ERC1967Proxy (`0x3a6a72...d66b87`, chain 10)
- ERC1967Proxy (`0x44dd23...85bacb`, chain 10)
- ERC1967Proxy (`0x50a233...7a501c`, chain 10)
- ERC1967Proxy (`0x5c1e3d...2c687b`, chain 10)
- ERC1967Proxy (`0x5d3c4f...4611b3`, chain 10)
- ERC1967Proxy (`0x7ca0b7...e445f0`, chain 10)
- ERC1967Proxy (`0x7da874...72f84e`, chain 10)
- ERC1967Proxy (`0x95aadd...2bf42d`, chain 10)
- ERC1967Proxy (`0x9623e8...861db2`, chain 10)
- ERC1967Proxy (`0xb14fdf...2f766a`, chain 10)
- ERC1967Proxy (`0xdc515c...a1a778`, chain 10)
- ERC1967Proxy (`0xef55ec...eea836`, chain 10)
- ERC1967Proxy (`0xf4e147...0cd8cf`, chain 10)
- ERC1967Proxy (`0x6c240d...ea2aa2`, chain 8453)
- ERC1967Proxy (`0x7189fb...8fdc27`, chain 42161)
- EtherFiGovernanceToken (`0xfe0c30...9cc0eb`, chain 1)
- EtherFiLiquidModule (`0x9008d1...91e7a5`, chain 10)
- EtherFiLiquidModuleWithReferrer (`0x80d4b3...2d8613`, chain 10)
- EtherFiStakeModule (`0xd90811...890a1b`, chain 10)
- EtherFiTimelock (`0x9f26d4...d20761`, chain 1)
- EtherFiTimelock (`0xcd425f...e45d7a`, chain 1)
- FraxModule (`0x6742af...167088`, chain 10)
- IncentiveDistributor (`0xf0164d...0f8780`, chain 1)
- MerkleDistributorWithDeadline (`0x0c1e1a...10cb39`, chain 1)
- MerkleDistributorWithDeadline (`0x1baa21...aacfe6`, chain 1)
- MerkleDistributorWithDeadline (`0x227dd7...b8365a`, chain 1)
- MerkleDistributorWithDeadline (`0x2882f9...1adc2c`, chain 1)
- MerkleDistributorWithDeadline (`0x2ec90e...9eece1`, chain 1)
- MerkleDistributorWithDeadline (`0x64776b...7ddcd7`, chain 1)
- MerkleDistributorWithDeadline (`0x7aec93...94c003`, chain 1)
- MerkleDistributorWithDeadline (`0x87eb1c...0754e9`, chain 1)
- MerkleDistributorWithDeadline (`0x93fff4...4e2f9f`, chain 1)
- MerkleDistributorWithDeadline (`0xa8037a...86e24b`, chain 1)
- MerkleDistributorWithDeadline (`0xbd4569...28ca3c`, chain 1)
- MerkleDistributorWithDeadline (`0xce6460...6d2b46`, chain 1)
- MerkleDistributorWithDeadline (`0xf5a6d0...b40506`, chain 1)
- MerkleDistributorWithDeadline (`0x7b6a67...1241fb`, chain 8453)
- MerkleDistributorWithDeadline (`0x2c999f...a8eeda`, chain 42161)
- MerkleDistributorWithDeadline (`0x390624...c8b984`, chain 42161)
- MerkleDistributorWithDeadline (`0x4dea12...a89a57`, chain 42161)
- MerkleDistributorWithDeadline (`0x637ee6...c10bd4`, chain 42161)
- MerkleDistributorWithDeadline (`0xc5fde6...672512`, chain 42161)
- MidasModule (`0x2d4340...9708aa`, chain 10)
- OpenOceanSwapModule (`0x576517...50c375`, chain 10)
- SafeProxy (`0x0c83ea...ff93ba`, chain 1)
- StargateModule (`0xee77de...e85c1c`, chain 10)
- TokenWrappedTransparentProxy (`0x989398...dc19a7`, chain 747474)
- TransparentUpgradeableProxy (`0x5a7fac...73cbff`, chain 10)
- TransparentUpgradeableProxy (`0x04c059...6c150a`, chain 56)
- TransparentUpgradeableProxy (`0x7dcc39...ef80f7`, chain 130)
- TransparentUpgradeableProxy (`0xa3d68b...44914b`, chain 143)
- TransparentUpgradeableProxy (`0xa3d68b...44914b`, chain 146)
- TransparentUpgradeableProxy (`0xa3d68b...44914b`, chain 999)
- TransparentUpgradeableProxy (`0x04c059...6c150a`, chain 8453)
- TransparentUpgradeableProxy (`0x04c059...6c150a`, chain 34443)
- TransparentUpgradeableProxy (`0xa3d68b...44914b`, chain 43114)
- TransparentUpgradeableProxy (`0x1bf74c...0b8aa6`, chain 59144)
- TransparentUpgradeableProxy (`0x7dcc39...ef80f7`, chain 80094)
- TransparentUpgradeableProxy (`0x04c059...6c150a`, chain 81457)
- TransparentUpgradeableProxy (`0x01f0a3...a1c506`, chain 534352)
- UpgradeableBeacon (`0x3c5598...b7c03f`, chain 1)
- UUPSProxy (`0x00c452...5c4cb9`, chain 1)
- UUPSProxy (`0x1b7a4c...736fff`, chain 1)
- UUPSProxy (`0x2093bb...a37a6a`, chain 1)
- UUPSProxy (`0x25e821...6b912d`, chain 1)
- UUPSProxy (`0x2ecd15...2fab81`, chain 1)
- UUPSProxy (`0x308861...daf216`, chain 1)
- UUPSProxy (`0x35e7d6...3345fa`, chain 1)
- UUPSProxy (`0x35fa16...118ac2`, chain 1)
- UUPSProxy (`0x3d3202...3e3000`, chain 1)
- UUPSProxy (`0x62247d...fc7ce9`, chain 1)
- UUPSProxy (`0x6c7c54...0a02f8`, chain 1)
- UUPSProxy (`0x6db24e...ba6b64`, chain 1)
- UUPSProxy (`0x73f7b1...51dd58`, chain 1)
- UUPSProxy (`0x7d5706...9d4e2c`, chain 1)
- UUPSProxy (`0x89e450...33a2c8`, chain 1)
- UUPSProxy (`0x8b7114...38916f`, chain 1)
- UUPSProxy (`0x9a8c50...484534`, chain 1)
- UUPSProxy (`0x9ffdf4...ef764f`, chain 1)
- UUPSProxy (`0xb49e44...27e479`, chain 1)
- UUPSProxy (`0xcd5fe2...59b7ee`, chain 1)
- UUPSProxy (`0xcfc6d9...b6a7a2`, chain 1)
- UUPSProxy (`0xd0ff89...fead1a`, chain 1)
- UUPSProxy (`0xd5edf7...54e35e`, chain 1)
- UUPSProxy (`0xdadef1...4e7ae0`, chain 1)
- UUPSProxy (`0xfbfe6b...0cbe38`, chain 1)
- UUPSProxy (`0x901024...294f76`, chain 999)
- UUPSProxy (`0x9d0b08...822538`, chain 999)
- UUPSProxy (`0xcead89...c38e0b`, chain 999)
- UUPSProxy (`0xd8fc8f...e5dda9`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 109/112 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/106 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 109 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 62
- Confirmed-live implementations: 109 of 112 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/106
- Verified + Unaudited implementations: 106
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 112
- Raw deployments: 112
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

### ⚠️ Verified + Unaudited (106)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385061 | `0x8487c5...e4a848` | ⚠️ Unaudited |
| AssetRecoveryModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385074 | `0x431d27...563102` | ⚠️ Unaudited |
| AuctionManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385113 | `0x00c452...5c4cb9` | ⚠️ Unaudited |
| AvsOperatorManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385124 | `0x2093bb...a37a6a` | ⚠️ Unaudited |
| BeHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385158 | `0xd8fc8f...e5dda9` | ⚠️ Unaudited |
| BeHYPEStakeModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385080 | `0xd12efd...dbb9f3` | ⚠️ Unaudited |
| BeHYPETimelock | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385099 | `0xa24af7...4d2de4` | ⚠️ Unaudited |
| BoringGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385062 | `0x86b578...8c0161` | ⚠️ Unaudited |
| BoringGovernance | unknown | project_anchor | own_supporting | 0 | base | unit-385098 | `0x86b578...8c0161` | ⚠️ Unaudited |
| BoringGovernance | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385091 | `0x86b578...8c0161` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385056 | `0x657e8c...88c642` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | base | unit-385096 | `0x657e8c...88c642` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385090 | `0x657e8c...88c642` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | berachain | unit-385095 | `0x657e8c...88c642` | ⚠️ Unaudited |
| CashbackDispatcher | unknown | project_anchor | own_supporting | 1 | optimism | unit-385134 | `0xef55ec...eea836` | ⚠️ Unaudited |
| CashEventEmitter | unknown | project_anchor | own_supporting | 1 | optimism | unit-385133 | `0x380b2e...881acb` | ⚠️ Unaudited |
| CashLens | unknown | project_anchor | own_supporting | 1 | optimism | unit-385130 | `0x7da874...72f84e` | ⚠️ Unaudited |
| CashLiquidationHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-385079 | `0x97ac36...ae033a` | ⚠️ Unaudited |
| CashModuleCore | unknown | project_anchor | own_supporting | 1 | optimism | unit-385142 | `0x7ca0b7...e445f0` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385112 | `0x6db24e...ba6b64` | ⚠️ Unaudited |
| CumulativeMerkleRewardsDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385122 | `0x9a8c50...484534` | ⚠️ Unaudited |
| DebtManagerCore | unknown | project_anchor | own_supporting | 1 | optimism | unit-385128 | `0x0078c5...3a9553` | ⚠️ Unaudited |
| DepositAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385125 | `0xcfc6d9...b6a7a2` | ⚠️ Unaudited |
| EETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385119 | `0x35fa16...118ac2` | ⚠️ Unaudited |
| EtherFiDataProvider | unknown | project_anchor | own_supporting | 1 | optimism | unit-385143 | `0xdc515c...a1a778` | ⚠️ Unaudited |
| EtherFiGovernanceToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385072 | `0xfe0c30...9cc0eb` | ⚠️ Unaudited |
| EtherFiHook | unknown | project_anchor | own_supporting | 1 | optimism | unit-385140 | `0x5d3c4f...4611b3` | ⚠️ Unaudited |
| EtherFiLiquidModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385078 | `0x9008d1...91e7a5` | ⚠️ Unaudited |
| EtherFiLiquidModuleWithReferrer | unknown | project_anchor | own_supporting | 0 | optimism | unit-385077 | `0x80d4b3...2d8613` | ⚠️ Unaudited |
| EtherFiNode | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385118 | `0x3c5598...b7c03f` | ⚠️ Unaudited |
| EtherFiNodesManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385115 | `0x8b7114...38916f` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | optimism | unit-385136 | `0x5a7fac...73cbff` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | bsc | unit-385150 | `0x04c059...6c150a` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | unichain | unit-385144 | `0x7dcc39...ef80f7` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | monad | unit-385145 | `0xa3d68b...44914b` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | sonic | unit-385146 | `0xa3d68b...44914b` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385157 | `0xa3d68b...44914b` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | base | unit-385156 | `0x04c059...6c150a` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | linea | unit-385151 | `0x1bf74c...0b8aa6` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | berachain | unit-385153 | `0x7dcc39...ef80f7` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | blast | unit-385154 | `0x04c059...6c150a` | ⚠️ Unaudited |
| EtherFiOperationParameters | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385123 | `0xd0ff89...fead1a` | ⚠️ Unaudited |
| EtherFiRateLimiter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385103 | `0x6c7c54...0a02f8` | ⚠️ Unaudited |
| EtherFiRedemptionManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385114 | `0xdadef1...4e7ae0` | ⚠️ Unaudited |
| EtherFiRestaker | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385117 | `0x1b7a4c...736fff` | ⚠️ Unaudited |
| EtherFiRewardsRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385109 | `0x73f7b1...51dd58` | ⚠️ Unaudited |
| EtherFiSafeFactory | unknown | project_anchor | own_supporting | 1 | optimism | unit-385139 | `0xf4e147...0cd8cf` | ⚠️ Unaudited |
| EtherFiStakeModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385081 | `0xd90811...890a1b` | ⚠️ Unaudited |
| EtherFiTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385065 | `0x9f26d4...d20761` | ⚠️ Unaudited |
| EtherFiTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385068 | `0xcd425f...e45d7a` | ⚠️ Unaudited |
| EtherFiViewer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385102 | `0x2ecd15...2fab81` | ⚠️ Unaudited |
| EthfiL2Token | unknown | project_anchor | own_supporting | 1 | base | unit-385155 | `0x6c240d...ea2aa2` | ⚠️ Unaudited |
| EthfiL2Token | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-385148 | `0x7189fb...8fdc27` | ⚠️ Unaudited |
| FraxModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385076 | `0x6742af...167088` | ⚠️ Unaudited |
| IncentiveDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385070 | `0xf0164d...0f8780` | ⚠️ Unaudited |
| LiquidityPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385116 | `0x308861...daf216` | ⚠️ Unaudited |
| LiquidUSDLiquifierOPModule | unknown | project_anchor | own_supporting | 1 | optimism | unit-385129 | `0x39161a...1ba539` | ⚠️ Unaudited |
| Liquifier | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385101 | `0x9ffdf4...ef764f` | ⚠️ Unaudited |
| MembershipManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385100 | `0x3d3202...3e3000` | ⚠️ Unaudited |
| MembershipNFT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385104 | `0xb49e44...27e479` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385050 | `0x0c1e1a...10cb39` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385051 | `0x1baa21...aacfe6` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385052 | `0x227dd7...b8365a` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385053 | `0x2882f9...1adc2c` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385054 | `0x2ec90e...9eece1` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385055 | `0x64776b...7ddcd7` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385059 | `0x7aec93...94c003` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385063 | `0x87eb1c...0754e9` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385064 | `0x93fff4...4e2f9f` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385066 | `0xa8037a...86e24b` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385067 | `0xbd4569...28ca3c` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385069 | `0xce6460...6d2b46` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385071 | `0xf5a6d0...b40506` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | base | unit-385097 | `0x7b6a67...1241fb` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385086 | `0x2c999f...a8eeda` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385087 | `0x390624...c8b984` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385088 | `0x4dea12...a89a57` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385089 | `0x637ee6...c10bd4` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385092 | `0xc5fde6...672512` | ⚠️ Unaudited |
| MidasModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385073 | `0x2d4340...9708aa` | ⚠️ Unaudited |
| NodeOperatorManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385126 | `0xd5edf7...54e35e` | ⚠️ Unaudited |
| OpenOceanSwapModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385075 | `0x576517...50c375` | ⚠️ Unaudited |
| PriceProviderV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385131 | `0x44dd23...85bacb` | ⚠️ Unaudited |
| PriorityWithdrawalQueue | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385111 | `0x35e7d6...3345fa` | ⚠️ Unaudited |
| RestakingRewardsRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385120 | `0x89e450...33a2c8` | ⚠️ Unaudited |
| RoleRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385107 | `0x62247d...fc7ce9` | ⚠️ Unaudited |
| RoleRegistry | unknown | project_anchor | own_supporting | 1 | optimism | unit-385141 | `0x5c1e3d...2c687b` | ⚠️ Unaudited |
| RoleRegistry | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385159 | `0x901024...294f76` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385110 | `0x0c83ea...ff93ba` | ⚠️ Unaudited |
| SettlementDispatcherV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385135 | `0x50a233...7a501c` | ⚠️ Unaudited |
| SettlementDispatcherV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385127 | `0x95aadd...2bf42d` | ⚠️ Unaudited |
| SettlementDispatcherV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385138 | `0x9623e8...861db2` | ⚠️ Unaudited |
| SettlementDispatcherV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385132 | `0xb14fdf...2f766a` | ⚠️ Unaudited |
| StakingCore | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385160 | `0xcead89...c38e0b` | ⚠️ Unaudited |
| StakingManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385121 | `0x25e821...6b912d` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-385147 | `0x357510...cf4dbe` | ⚠️ Unaudited |
| StargateModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385082 | `0xee77de...e85c1c` | ⚠️ Unaudited |
| TokenWrappedBridgeUpgradeable | unknown | project_anchor | own_supporting | 1 | katana | unit-385152 | `0x989398...dc19a7` | ⚠️ Unaudited |
| TopUpDest | unknown | project_anchor | own_supporting | 1 | optimism | unit-385137 | `0x3a6a72...d66b87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | mode | unit-385085 | `0x04c059...6c150a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-385149 | `0xa3d68b...44914b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-385093 | `0x01f0a3...a1c506` | ⚠️ Unaudited |
| WeETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385105 | `0xcd5fe2...59b7ee` | ⚠️ Unaudited |
| WeETHWithdrawAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385108 | `0xfbfe6b...0cbe38` | ⚠️ Unaudited |
| WithdrawManager | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385161 | `0x9d0b08...822538` | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385106 | `0x7d5706...9d4e2c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-385057 | `0x659986...d72c2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-385058 | `0x7623e9...78f8c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-385060 | `0x7b5ae0...e0ca5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-385084 | `0xc1fa6e...df924a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-385083 | `0xa6cb98...282b44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-385094 | `0xa3d68b...44914b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 112 |

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
