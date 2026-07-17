# Agentic Audit Brief: ether.fi Stake

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: ether.fi Stake (`ether-fi`)
- Website: [https://www.ether.fi/refer/04bb2542](https://www.ether.fi/refer/04bb2542)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, blast, bsc, ethereum, hyperliquid, ink, katana, linea, mode, monad, optimism, scroll, sonic, swellchain, unichain, zksync-era
- Contract surface: 114 unique implementations (114 raw deployments)
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

- UnnamedContract (`0xc1fa6e2e8667d9be0ca938a54c7e0285e9df924a`, chain 324)
- UnnamedContract (`0xa6cb988942610f6731e664379d15ffcfbf282b44`, chain 1923)
- UnnamedContract (`0xa3d68b74bf0528fdd07263c60d6488749044914b`, chain 57073)
- AddressProvider (`0x8487c5f8550e3c3e7734fe7dcf77db2b72e4a848`, chain 1)
- AssetRecoveryModule (`0x431d271d544ac67faffa8a9ffabaabcb14563102`, chain 10)
- BeHYPEStakeModule (`0xd12efd5067de109f9d00e1a31a34991d58dbb9f3`, chain 10)
- BeHYPETimelock (`0xa24af73eadd17997eeedbed36672e996544d2de4`, chain 999)
- BoringGovernance (`0x86b5780b606940eb59a062aa85a07959518c0161`, chain 1)
- BoringGovernance (`0x86b5780b606940eb59a062aa85a07959518c0161`, chain 8453)
- BoringGovernance (`0x86b5780b606940eb59a062aa85a07959518c0161`, chain 42161)
- BoringVault (`0x657e8c867d8b37dcc18fa4caead9c45eb088c642`, chain 1)
- BoringVault (`0x657e8c867d8b37dcc18fa4caead9c45eb088c642`, chain 8453)
- BoringVault (`0x657e8c867d8b37dcc18fa4caead9c45eb088c642`, chain 42161)
- BoringVault (`0x657e8c867d8b37dcc18fa4caead9c45eb088c642`, chain 80094)
- CashLiquidationHelper (`0x97ac360d9f08f755d59899e4e8a4076d18ae033a`, chain 10)
- ClonableBeaconProxy (`0x35751007a407ca6feffe80b3cb397736d2cf4dbe`, chain 42161)
- ERC1967Proxy (`0x0078c5a459132e279056b2371fe8a8ec973a9553`, chain 10)
- ERC1967Proxy (`0x380b2e96799405be6e3d965f4044099891881acb`, chain 10)
- ERC1967Proxy (`0x39161a44588ec2327a18d4707ea5216c721ba539`, chain 10)
- ERC1967Proxy (`0x3a6a724595184dda4be69db1ce726f2ac3d66b87`, chain 10)
- ERC1967Proxy (`0x44dd2372fe7b97c4b4d6a7d4decf72466485bacb`, chain 10)
- ERC1967Proxy (`0x50a233c4a0bb1d7124b0224880037d35767a501c`, chain 10)
- ERC1967Proxy (`0x5c1e3d653fcbc54ae25c2ad9d59548d2082c687b`, chain 10)
- ERC1967Proxy (`0x5d3c4f5cf2208bb54e8fd129730d01d82d4611b3`, chain 10)
- ERC1967Proxy (`0x7ca0b75e67e33c0014325b739a8d019c4fe445f0`, chain 10)
- ERC1967Proxy (`0x7da874f3baca1a8f0af27e5cee1b8c66a772f84e`, chain 10)
- ERC1967Proxy (`0x95aaddd43b6edf838ec486e9f9814787212bf42d`, chain 10)
- ERC1967Proxy (`0x9623e86df854ff3b48f7b4079a516a4f64861db2`, chain 10)
- ERC1967Proxy (`0xb14fdfd7d2cffb6cc6953c1b80f1b1d12c2f766a`, chain 10)
- ERC1967Proxy (`0xdc515cb479a64552c5a11a57109c314e40a1a778`, chain 10)
- ERC1967Proxy (`0xef55ec694b0b8273967f28627c5bc26f5deea836`, chain 10)
- ERC1967Proxy (`0xf4e147db314947fc1275a8cbb6cde48c510cd8cf`, chain 10)
- ERC1967Proxy (`0x6c240dda6b5c336df09a4d011139beaaa1ea2aa2`, chain 8453)
- ERC1967Proxy (`0x7189fb5b6504bbff6a852b13b7b82a3c118fdc27`, chain 42161)
- EtherFiGovernanceToken (`0xfe0c30065b384f05761f15d0cc899d4f9f9cc0eb`, chain 1)
- EtherFiLiquidModule (`0x9008d1987a6ae5d3ffd9109967f85e631191e7a5`, chain 10)
- EtherFiLiquidModuleWithReferrer (`0x80d4b367659bb925a3790c76bc4da0b4f02d8613`, chain 10)
- EtherFiStakeModule (`0xd908117461378323c68257d522dc2de5d7890a1b`, chain 10)
- EtherFiTimelock (`0x9f26d4c958fd811a1f59b01b86be7dffc9d20761`, chain 1)
- EtherFiTimelock (`0xcd425f44758a08baab3c4908f3e3de5776e45d7a`, chain 1)
- FraxModule (`0x6742af68e4f45715480e06b81775cdb5ba167088`, chain 10)
- IncentiveDistributor (`0xf0164d48b308c42ae028e3379b2fb620e70f8780`, chain 1)
- MerkleDistributorWithDeadline (`0x0c1e1a20566321de81841e61a75b2b949610cb39`, chain 1)
- MerkleDistributorWithDeadline (`0x1baa2146e5b258a2cc516166a095dbc22caacfe6`, chain 1)
- MerkleDistributorWithDeadline (`0x227dd729c7ca1eb91c22dac0c4b1abad75b8365a`, chain 1)
- MerkleDistributorWithDeadline (`0x2882f978460d1229f1d0414ce91d0061b81adc2c`, chain 1)
- MerkleDistributorWithDeadline (`0x2ec90ef34e312a855becf74762d198d8369eece1`, chain 1)
- MerkleDistributorWithDeadline (`0x64776b0907b839e759f91a5a328ea143067ddcd7`, chain 1)
- MerkleDistributorWithDeadline (`0x7aec93210fd857bfb1e7919cb9ef30731494c003`, chain 1)
- MerkleDistributorWithDeadline (`0x87eb1c0f3827cb91bef234f61e4a5594280754e9`, chain 1)
- MerkleDistributorWithDeadline (`0x93fff4028927f53f708534397ed349b9cd4e2f9f`, chain 1)
- MerkleDistributorWithDeadline (`0xa8037a13f5b0d6dc91a1c4c75b31a79a2986e24b`, chain 1)
- MerkleDistributorWithDeadline (`0xbd456973dfd5b00b07ce5307110c77e3f228ca3c`, chain 1)
- MerkleDistributorWithDeadline (`0xce6460b8e97d7be72a9f525fa5b49c62d06d2b46`, chain 1)
- MerkleDistributorWithDeadline (`0xf5a6d0642c7e02b250a5ada440f901d211b40506`, chain 1)
- MerkleDistributorWithDeadline (`0x7b6a67f1031c1d8c7bab1cf001bdaf83271241fb`, chain 8453)
- MerkleDistributorWithDeadline (`0x2c999fd1543dd5a228acd0173092af10e3a8eeda`, chain 42161)
- MerkleDistributorWithDeadline (`0x390624d61f03075d7e14d909d6c3f46ecac8b984`, chain 42161)
- MerkleDistributorWithDeadline (`0x4dea1271dfae80f4f3324b3a50c33abdbea89a57`, chain 42161)
- MerkleDistributorWithDeadline (`0x637ee65658cb8f6524c051f76677e791ddc10bd4`, chain 42161)
- MerkleDistributorWithDeadline (`0xc5fde679f52e9bd896ab1dee5265f9a80c672512`, chain 42161)
- MidasModule (`0x2d43400058ce6810916fd312fb38a7dcdf9708aa`, chain 10)
- OpenOceanSwapModule (`0x5765177e7a0226f6a9969770bd24cbd67950c375`, chain 10)
- SafeProxy (`0x0c83eae1fe72c390a02e426572854931eeff93ba`, chain 1)
- StargateModule (`0xee77deb6991f5d5ccae5a327deba32d292e85c1c`, chain 10)
- TokenWrappedTransparentProxy (`0x9893989433e7a383cb313953e4c2365107dc19a7`, chain 747474)
- TransparentUpgradeableProxy (`0x5a7facb970d094b6c7ff1df0ea68d99e6e73cbff`, chain 10)
- TransparentUpgradeableProxy (`0x04c0599ae5a44757c0af6f9ec3b93da8976c150a`, chain 56)
- TransparentUpgradeableProxy (`0x7dcc39b4d1c53cb31e1abc0e358b43987fef80f7`, chain 130)
- TransparentUpgradeableProxy (`0xa3d68b74bf0528fdd07263c60d6488749044914b`, chain 143)
- TransparentUpgradeableProxy (`0xa3d68b74bf0528fdd07263c60d6488749044914b`, chain 146)
- TransparentUpgradeableProxy (`0xa3d68b74bf0528fdd07263c60d6488749044914b`, chain 999)
- TransparentUpgradeableProxy (`0x04c0599ae5a44757c0af6f9ec3b93da8976c150a`, chain 8453)
- TransparentUpgradeableProxy (`0x04c0599ae5a44757c0af6f9ec3b93da8976c150a`, chain 34443)
- TransparentUpgradeableProxy (`0xa3d68b74bf0528fdd07263c60d6488749044914b`, chain 43114)
- TransparentUpgradeableProxy (`0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6`, chain 59144)
- TransparentUpgradeableProxy (`0x7dcc39b4d1c53cb31e1abc0e358b43987fef80f7`, chain 80094)
- TransparentUpgradeableProxy (`0x04c0599ae5a44757c0af6f9ec3b93da8976c150a`, chain 81457)
- TransparentUpgradeableProxy (`0x01f0a31698c4d065659b9bdc21b3610292a1c506`, chain 534352)
- UpgradeableBeacon (`0x3c55986cfee455e2533f4d29006634ecf9b7c03f`, chain 1)
- UUPSProxy (`0x00c452affee3a17d9cecc1bcd2b8d5c7635c4cb9`, chain 1)
- UUPSProxy (`0x1b7a4c3797236a1c37f8741c0be35c2c72736fff`, chain 1)
- UUPSProxy (`0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a`, chain 1)
- UUPSProxy (`0x25e821b7197b146f7713c3b89b6a4d83516b912d`, chain 1)
- UUPSProxy (`0x2ecd155405ca52a5ca0e552981ff44a8252fab81`, chain 1)
- UUPSProxy (`0x308861a430be4cce5502d0a12724771fc6daf216`, chain 1)
- UUPSProxy (`0x35e7d6fef6f72add3c3e39dec6d9ccc29e3345fa`, chain 1)
- UUPSProxy (`0x35fa164735182de50811e8e2e824cfb9b6118ac2`, chain 1)
- UUPSProxy (`0x3d320286e014c3e1ce99af6d6b00f0c1d63e3000`, chain 1)
- UUPSProxy (`0x62247d29b4b9becf4bb73e0c722cf6445cfc7ce9`, chain 1)
- UUPSProxy (`0x6c7c54cfc2225fa985cd25f04d923b93c60a02f8`, chain 1)
- UUPSProxy (`0x6db24ee656843e3fe03eb8762a54d86186ba6b64`, chain 1)
- UUPSProxy (`0x73f7b1184b5cd361cc0f7654998953e2a251dd58`, chain 1)
- UUPSProxy (`0x7d5706f6ef3f89b3951e23e557cdfbc3239d4e2c`, chain 1)
- UUPSProxy (`0x89e45081437c959a827d2027135bc201ab33a2c8`, chain 1)
- UUPSProxy (`0x8b71140ad2e5d1e7018d2a7f8a288bd3cd38916f`, chain 1)
- UUPSProxy (`0x9a8c5046a290664bf42d065d33512fe403484534`, chain 1)
- UUPSProxy (`0x9ffdf407cde9a93c47611799da23924af3ef764f`, chain 1)
- UUPSProxy (`0xb49e4420ea6e35f98060cd133842dbea9c27e479`, chain 1)
- UUPSProxy (`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee`, chain 1)
- UUPSProxy (`0xcfc6d9bd7411962bfe7145451a7ef71a24b6a7a2`, chain 1)
- UUPSProxy (`0xd0ff8996db4bdb46870b7e833b7532f484fead1a`, chain 1)
- UUPSProxy (`0xd5edf7730abad812247f6f54d7bd31a52554e35e`, chain 1)
- UUPSProxy (`0xdadef1ffbfeaab4f68a9fd181395f68b4e4e7ae0`, chain 1)
- UUPSProxy (`0xfbfe6b9cee0e555bad7e2e7309effc75200cbe38`, chain 1)
- UUPSProxy (`0x90102473a816a01a9fb0809f2289438b2e294f76`, chain 999)
- UUPSProxy (`0x9d0b0877b9f2204cf414ca7862e4f03506822538`, chain 999)
- UUPSProxy (`0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b`, chain 999)
- UUPSProxy (`0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 109/112 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/106 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 109 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 62
- Confirmed-live implementations: 109 of 114 unique; 5 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/106
- Verified + Unaudited implementations: 106
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 114
- Raw deployments: 114
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
| AddressProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385061 | `0x8487c5f8550e3c3e7734fe7dcf77db2b72e4a848` | ⚠️ Unaudited |
| AssetRecoveryModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385074 | `0x431d271d544ac67faffa8a9ffabaabcb14563102` | ⚠️ Unaudited |
| AuctionManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385113 | `0x00c452affee3a17d9cecc1bcd2b8d5c7635c4cb9` | ⚠️ Unaudited |
| AvsOperatorManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385124 | `0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a` | ⚠️ Unaudited |
| BeHYPE | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385158 | `0xd8fc8f0b03eba61f64d08b0bef69d80916e5dda9` | ⚠️ Unaudited |
| BeHYPEStakeModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385080 | `0xd12efd5067de109f9d00e1a31a34991d58dbb9f3` | ⚠️ Unaudited |
| BeHYPETimelock | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-385099 | `0xa24af73eadd17997eeedbed36672e996544d2de4` | ⚠️ Unaudited |
| BoringGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385062 | `0x86b5780b606940eb59a062aa85a07959518c0161` | ⚠️ Unaudited |
| BoringGovernance | unknown | project_anchor | own_supporting | 0 | base | unit-385098 | `0x86b5780b606940eb59a062aa85a07959518c0161` | ⚠️ Unaudited |
| BoringGovernance | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385091 | `0x86b5780b606940eb59a062aa85a07959518c0161` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385056 | `0x657e8c867d8b37dcc18fa4caead9c45eb088c642` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | base | unit-385096 | `0x657e8c867d8b37dcc18fa4caead9c45eb088c642` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385090 | `0x657e8c867d8b37dcc18fa4caead9c45eb088c642` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | berachain | unit-385095 | `0x657e8c867d8b37dcc18fa4caead9c45eb088c642` | ⚠️ Unaudited |
| CashbackDispatcher | unknown | project_anchor | own_supporting | 1 | optimism | unit-385134 | `0xef55ec694b0b8273967f28627c5bc26f5deea836` | ⚠️ Unaudited |
| CashEventEmitter | unknown | project_anchor | own_supporting | 1 | optimism | unit-385133 | `0x380b2e96799405be6e3d965f4044099891881acb` | ⚠️ Unaudited |
| CashLens | unknown | project_anchor | own_supporting | 1 | optimism | unit-385130 | `0x7da874f3baca1a8f0af27e5cee1b8c66a772f84e` | ⚠️ Unaudited |
| CashLiquidationHelper | unknown | project_anchor | own_supporting | 0 | optimism | unit-385079 | `0x97ac360d9f08f755d59899e4e8a4076d18ae033a` | ⚠️ Unaudited |
| CashModuleCore | unknown | project_anchor | own_supporting | 1 | optimism | unit-385142 | `0x7ca0b75e67e33c0014325b739a8d019c4fe445f0` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385112 | `0x6db24ee656843e3fe03eb8762a54d86186ba6b64` | ⚠️ Unaudited |
| CumulativeMerkleRewardsDistributor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385122 | `0x9a8c5046a290664bf42d065d33512fe403484534` | ⚠️ Unaudited |
| DebtManagerCore | unknown | project_anchor | own_supporting | 1 | optimism | unit-385128 | `0x0078c5a459132e279056b2371fe8a8ec973a9553` | ⚠️ Unaudited |
| DepositAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385125 | `0xcfc6d9bd7411962bfe7145451a7ef71a24b6a7a2` | ⚠️ Unaudited |
| EETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385119 | `0x35fa164735182de50811e8e2e824cfb9b6118ac2` | ⚠️ Unaudited |
| EtherFiDataProvider | unknown | project_anchor | own_supporting | 1 | optimism | unit-385143 | `0xdc515cb479a64552c5a11a57109c314e40a1a778` | ⚠️ Unaudited |
| EtherFiGovernanceToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385072 | `0xfe0c30065b384f05761f15d0cc899d4f9f9cc0eb` | ⚠️ Unaudited |
| EtherFiHook | unknown | project_anchor | own_supporting | 1 | optimism | unit-385140 | `0x5d3c4f5cf2208bb54e8fd129730d01d82d4611b3` | ⚠️ Unaudited |
| EtherFiLiquidModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385078 | `0x9008d1987a6ae5d3ffd9109967f85e631191e7a5` | ⚠️ Unaudited |
| EtherFiLiquidModuleWithReferrer | unknown | project_anchor | own_supporting | 0 | optimism | unit-385077 | `0x80d4b367659bb925a3790c76bc4da0b4f02d8613` | ⚠️ Unaudited |
| EtherFiNode | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385118 | `0x3c55986cfee455e2533f4d29006634ecf9b7c03f` | ⚠️ Unaudited |
| EtherFiNodesManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385115 | `0x8b71140ad2e5d1e7018d2a7f8a288bd3cd38916f` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | optimism | unit-385136 | `0x5a7facb970d094b6c7ff1df0ea68d99e6e73cbff` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | bsc | unit-385150 | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | unichain | unit-385144 | `0x7dcc39b4d1c53cb31e1abc0e358b43987fef80f7` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | monad | unit-385145 | `0xa3d68b74bf0528fdd07263c60d6488749044914b` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | sonic | unit-385146 | `0xa3d68b74bf0528fdd07263c60d6488749044914b` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385157 | `0xa3d68b74bf0528fdd07263c60d6488749044914b` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | base | unit-385156 | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | linea | unit-385151 | `0x1bf74c010e6320bab11e2e5a532b5ac15e0b8aa6` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | berachain | unit-385153 | `0x7dcc39b4d1c53cb31e1abc0e358b43987fef80f7` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | blast | unit-385154 | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ⚠️ Unaudited |
| EtherFiOperationParameters | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385123 | `0xd0ff8996db4bdb46870b7e833b7532f484fead1a` | ⚠️ Unaudited |
| EtherFiRateLimiter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385103 | `0x6c7c54cfc2225fa985cd25f04d923b93c60a02f8` | ⚠️ Unaudited |
| EtherFiRedemptionManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385114 | `0xdadef1ffbfeaab4f68a9fd181395f68b4e4e7ae0` | ⚠️ Unaudited |
| EtherFiRestaker | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385117 | `0x1b7a4c3797236a1c37f8741c0be35c2c72736fff` | ⚠️ Unaudited |
| EtherFiRewardsRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385109 | `0x73f7b1184b5cd361cc0f7654998953e2a251dd58` | ⚠️ Unaudited |
| EtherFiSafeFactory | unknown | project_anchor | own_supporting | 1 | optimism | unit-385139 | `0xf4e147db314947fc1275a8cbb6cde48c510cd8cf` | ⚠️ Unaudited |
| EtherFiStakeModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385081 | `0xd908117461378323c68257d522dc2de5d7890a1b` | ⚠️ Unaudited |
| EtherFiTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385065 | `0x9f26d4c958fd811a1f59b01b86be7dffc9d20761` | ⚠️ Unaudited |
| EtherFiTimelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385068 | `0xcd425f44758a08baab3c4908f3e3de5776e45d7a` | ⚠️ Unaudited |
| EtherFiViewer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385102 | `0x2ecd155405ca52a5ca0e552981ff44a8252fab81` | ⚠️ Unaudited |
| EthfiL2Token | unknown | project_anchor | own_supporting | 1 | base | unit-385155 | `0x6c240dda6b5c336df09a4d011139beaaa1ea2aa2` | ⚠️ Unaudited |
| EthfiL2Token | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-385148 | `0x7189fb5b6504bbff6a852b13b7b82a3c118fdc27` | ⚠️ Unaudited |
| FraxModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385076 | `0x6742af68e4f45715480e06b81775cdb5ba167088` | ⚠️ Unaudited |
| IncentiveDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385070 | `0xf0164d48b308c42ae028e3379b2fb620e70f8780` | ⚠️ Unaudited |
| LiquidityPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385116 | `0x308861a430be4cce5502d0a12724771fc6daf216` | ⚠️ Unaudited |
| LiquidUSDLiquifierOPModule | unknown | project_anchor | own_supporting | 1 | optimism | unit-385129 | `0x39161a44588ec2327a18d4707ea5216c721ba539` | ⚠️ Unaudited |
| Liquifier | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385101 | `0x9ffdf407cde9a93c47611799da23924af3ef764f` | ⚠️ Unaudited |
| MembershipManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385100 | `0x3d320286e014c3e1ce99af6d6b00f0c1d63e3000` | ⚠️ Unaudited |
| MembershipNFT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385104 | `0xb49e4420ea6e35f98060cd133842dbea9c27e479` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385050 | `0x0c1e1a20566321de81841e61a75b2b949610cb39` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385051 | `0x1baa2146e5b258a2cc516166a095dbc22caacfe6` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385052 | `0x227dd729c7ca1eb91c22dac0c4b1abad75b8365a` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385053 | `0x2882f978460d1229f1d0414ce91d0061b81adc2c` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385054 | `0x2ec90ef34e312a855becf74762d198d8369eece1` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385055 | `0x64776b0907b839e759f91a5a328ea143067ddcd7` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385059 | `0x7aec93210fd857bfb1e7919cb9ef30731494c003` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385063 | `0x87eb1c0f3827cb91bef234f61e4a5594280754e9` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385064 | `0x93fff4028927f53f708534397ed349b9cd4e2f9f` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385066 | `0xa8037a13f5b0d6dc91a1c4c75b31a79a2986e24b` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385067 | `0xbd456973dfd5b00b07ce5307110c77e3f228ca3c` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385069 | `0xce6460b8e97d7be72a9f525fa5b49c62d06d2b46` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385071 | `0xf5a6d0642c7e02b250a5ada440f901d211b40506` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | base | unit-385097 | `0x7b6a67f1031c1d8c7bab1cf001bdaf83271241fb` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385086 | `0x2c999fd1543dd5a228acd0173092af10e3a8eeda` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385087 | `0x390624d61f03075d7e14d909d6c3f46ecac8b984` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385088 | `0x4dea1271dfae80f4f3324b3a50c33abdbea89a57` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385089 | `0x637ee65658cb8f6524c051f76677e791ddc10bd4` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-385092 | `0xc5fde679f52e9bd896ab1dee5265f9a80c672512` | ⚠️ Unaudited |
| MidasModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385073 | `0x2d43400058ce6810916fd312fb38a7dcdf9708aa` | ⚠️ Unaudited |
| NodeOperatorManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385126 | `0xd5edf7730abad812247f6f54d7bd31a52554e35e` | ⚠️ Unaudited |
| OpenOceanSwapModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385075 | `0x5765177e7a0226f6a9969770bd24cbd67950c375` | ⚠️ Unaudited |
| PriceProviderV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385131 | `0x44dd2372fe7b97c4b4d6a7d4decf72466485bacb` | ⚠️ Unaudited |
| PriorityWithdrawalQueue | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385111 | `0x35e7d6fef6f72add3c3e39dec6d9ccc29e3345fa` | ⚠️ Unaudited |
| RestakingRewardsRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385120 | `0x89e45081437c959a827d2027135bc201ab33a2c8` | ⚠️ Unaudited |
| RoleRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385107 | `0x62247d29b4b9becf4bb73e0c722cf6445cfc7ce9` | ⚠️ Unaudited |
| RoleRegistry | unknown | project_anchor | own_supporting | 1 | optimism | unit-385141 | `0x5c1e3d653fcbc54ae25c2ad9d59548d2082c687b` | ⚠️ Unaudited |
| RoleRegistry | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385159 | `0x90102473a816a01a9fb0809f2289438b2e294f76` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385110 | `0x0c83eae1fe72c390a02e426572854931eeff93ba` | ⚠️ Unaudited |
| SettlementDispatcherV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385135 | `0x50a233c4a0bb1d7124b0224880037d35767a501c` | ⚠️ Unaudited |
| SettlementDispatcherV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385127 | `0x95aaddd43b6edf838ec486e9f9814787212bf42d` | ⚠️ Unaudited |
| SettlementDispatcherV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385138 | `0x9623e86df854ff3b48f7b4079a516a4f64861db2` | ⚠️ Unaudited |
| SettlementDispatcherV2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-385132 | `0xb14fdfd7d2cffb6cc6953c1b80f1b1d12c2f766a` | ⚠️ Unaudited |
| StakingCore | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385160 | `0xcead893b162d38e714d82d06a7fe0b0dc3c38e0b` | ⚠️ Unaudited |
| StakingManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385121 | `0x25e821b7197b146f7713c3b89b6a4d83516b912d` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-385147 | `0x35751007a407ca6feffe80b3cb397736d2cf4dbe` | ⚠️ Unaudited |
| StargateModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-385082 | `0xee77deb6991f5d5ccae5a327deba32d292e85c1c` | ⚠️ Unaudited |
| TokenWrappedBridgeUpgradeable | unknown | project_anchor | own_supporting | 1 | katana | unit-385152 | `0x9893989433e7a383cb313953e4c2365107dc19a7` | ⚠️ Unaudited |
| TopUpDest | unknown | project_anchor | own_supporting | 1 | optimism | unit-385137 | `0x3a6a724595184dda4be69db1ce726f2ac3d66b87` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | mode | unit-385085 | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-385149 | `0xa3d68b74bf0528fdd07263c60d6488749044914b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-385093 | `0x01f0a31698c4d065659b9bdc21b3610292a1c506` | ⚠️ Unaudited |
| WeETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385105 | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ⚠️ Unaudited |
| WeETHWithdrawAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385108 | `0xfbfe6b9cee0e555bad7e2e7309effc75200cbe38` | ⚠️ Unaudited |
| WithdrawManager | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-385161 | `0x9d0b0877b9f2204cf414ca7862e4f03506822538` | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | project_anchor | own_supporting | 1 | ethereum | unit-385106 | `0x7d5706f6ef3f89b3951e23e557cdfbc3239d4e2c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x57aaf0004c716388b21795431cd7d5f9d3bb6a41` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-385057 | `0x6599861e55abd28b91dd9d86a826ec0cc8d72c2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-385058 | `0x7623e9dc0da6ff821ddb9ebaba794054e078f8c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-385060 | `0x7b5ae07e2af1c861bcc4736d23f5f66a61e0ca5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-385084 | `0xc1fa6e2e8667d9be0ca938a54c7e0285e9df924a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-385083 | `0xa6cb988942610f6731e664379d15ffcfbf282b44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-385094 | `0xa3d68b74bf0528fdd07263c60d6488749044914b` | ❓ Unverified |

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
| needs_review | 114 |

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
