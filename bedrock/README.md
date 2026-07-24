# Agentic Audit Brief: Bedrock

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 6 audit(s)
- Eligible audit results: 9 (6 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Bedrock (`bedrock`)
- Website: [https://www.bedrock.technology](https://www.bedrock.technology)
- Lifecycle: active (Tier 0, 58.9% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, ink, linea, mantle, merlin, mode, optimism, scroll, sei, sonic, unichain
- Contract surface: 81 unique implementations (150 raw deployments)
- Coverage basis: 2/33 confirmed own live verified implementations (6.1%); conservative 6.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $264,222,055.00
- On-chain TVL (included contracts): $16,703,965.28
- TVL by chain: Ethereum $16,513,805.19 | Bsc $189,294.49 | Optimism $865.59

## Project Description

This brief describes the observed EVM deployment and audit surface for Bedrock. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 47 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, ink, linea, mantle, mode, optimism, scroll, sei, sonic, unichain. Structural roles: 20 supporting, 15 unclassified, 12 core. 29 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 47
- Structural roles: supporting (20), unclassified (15), core (12)
- Contract kinds: contract (46), abstract (1)
- Detected standards: erc1967proxy (27), accesscontrol (2), erc165 (2), erc20 (2), ownable (2), pausable (1)
- Frameworks: openzeppelin (31), openzeppelin-upgradeable (29)
- Upgradeable-pattern rows: 29

## Fork Analysis

0 of 52 contracts are derived from known codebases. 52 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9609af0490b96d7add7eea3554b1a944ee440262`, chain 1)
- UnnamedContract (`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`, chain 130)
- UnnamedContract (`0xa161132371c94299d215915d4cbc3b629e2059be`, chain 130)
- UnnamedContract (`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`, chain 130)
- UnnamedContract (`0xf9775085d726e782e83585033b58606f7731ab18`, chain 130)
- UnnamedContract (`0xdfc7d2d003a053b2e0490531e9317a59962b511e`, chain 1329)
- BeaconProxy (`0x926720ae39114d0e2043b79570a1e08f00d01cce`, chain 1)
- brBTC (`0xa161132371c94299d215915d4cbc3b629e2059be`, chain 999)
- brBTC (`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`, chain 8453)
- brVault (`0x6518b4c7fa1502246649106e69857e3b7d1dba0f`, chain 56)
- brVault (`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`, chain 80094)
- MultiBridgeToken (`0x3d15fd46ce9e551498328b1c83071d9509e2c3a0`, chain 42161)
- MultiBridgeToken (`0x15eefe5b297136b8712291b632404b66a8ef4d25`, chain 59144)
- MultiBridgeToken (`0x15eefe5b297136b8712291b632404b66a8ef4d25`, chain 534352)
- Staking (`0xf047d19d064c541bb96f03a99620256b749df110`, chain 1)
- TransparentUpgradeableProxy (`0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568`, chain 1)
- TransparentUpgradeableProxy (`0x047d41f2544b7f63a8e991af2068a363d210d6da`, chain 1)
- TransparentUpgradeableProxy (`0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386`, chain 1)
- TransparentUpgradeableProxy (`0x2ec37d45fcae65d9787ecf71dc85a444968f6646`, chain 1)
- TransparentUpgradeableProxy (`0x3f4eaceb930b0edfa78a1dfcbae5c5494e6e9850`, chain 1)
- TransparentUpgradeableProxy (`0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d`, chain 1)
- TransparentUpgradeableProxy (`0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4`, chain 1)
- TransparentUpgradeableProxy (`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`, chain 10)
- TransparentUpgradeableProxy (`0xf9775085d726e782e83585033b58606f7731ab18`, chain 10)
- TransparentUpgradeableProxy (`0x1df46ec5e86fec4589b3fa7d60b6dc7ef890ad93`, chain 56)
- TransparentUpgradeableProxy (`0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a`, chain 56)
- TransparentUpgradeableProxy (`0x733a6c29eda4a58931ae81b8d91e29f2eaf01df3`, chain 56)
- TransparentUpgradeableProxy (`0x84e5c854a7ff9f49c888d69deca578d406c26800`, chain 56)
- TransparentUpgradeableProxy (`0xc3827a4bc8224ee2d116637023b124ced6db6e90`, chain 146)
- TransparentUpgradeableProxy (`0xdfc7d2d003a053b2e0490531e9317a59962b511e`, chain 999)
- TransparentUpgradeableProxy (`0xf9775085d726e782e83585033b58606f7731ab18`, chain 999)
- TransparentUpgradeableProxy (`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`, chain 5000)
- TransparentUpgradeableProxy (`0xf9775085d726e782e83585033b58606f7731ab18`, chain 5000)
- TransparentUpgradeableProxy (`0x3376ebca0a85fc8d791b1001a571c41fdd61514a`, chain 8453)
- TransparentUpgradeableProxy (`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`, chain 8453)
- TransparentUpgradeableProxy (`0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a`, chain 34443)
- TransparentUpgradeableProxy (`0x84e5c854a7ff9f49c888d69deca578d406c26800`, chain 34443)
- TransparentUpgradeableProxy (`0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a`, chain 42161)
- TransparentUpgradeableProxy (`0x84e5c854a7ff9f49c888d69deca578d406c26800`, chain 42161)
- TransparentUpgradeableProxy (`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`, chain 80094)
- TransparentUpgradeableProxy (`0xc3827a4bc8224ee2d116637023b124ced6db6e90`, chain 80094)
- TransparentUpgradeableProxy (`0xf9775085d726e782e83585033b58606f7731ab18`, chain 80094)
- uniBTC (`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`, chain 999)
- uniBTC (`0x552b0c6688fcae5cf0164f27fd129b882a42fa05`, chain 8453)
- UnnamedContract (`0xa161132371c94299d215915d4cbc3b629e2059be`, chain 57073)
- UnnamedContract (`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`, chain 57073)
- VaultWithoutNative (`0x3376ebca0a85fc8d791b1001a571c41fdd61514a`, chain 10)
- VaultWithoutNative (`0xdfc7d2d003a053b2e0490531e9317a59962b511e`, chain 56)
- VaultWithoutNative (`0xe1061f0d0a2aaf273dc9e2077e8545417b838a8c`, chain 146)
- VaultWithoutNative (`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`, chain 5000)
- VaultWithoutNative (`0xd4b6b3a3d0ec23de1f0674a7bd7d667f224a7509`, chain 8453)
- VaultWithoutNative (`0xa93322a98335b791df87f20bb939fbe4d84ffadd`, chain 80094)

## Contract Surface Quality

- Logic-topography rows: 47; live-surface rows included: 47 (47 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/33 (6.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 45
- Confirmed-live implementations: 39 of 81 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/66
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 81
- Raw deployments: 150
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $309,230.01
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 3.0% | 2024-12 |
| BlockSec | Tier 2 | 1 | 1.5% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RockXETH | token | project_anchor | own_supporting | 1 | ethereum | unit-229230 | `0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4` | ✅ Audited |
| brVault | unknown | project_anchor | own_supporting | 1 | berachain | unit-229254 | 2 deployments: berachain `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`; berachain `0xf9775085d726e782e83585033b58606f7731ab18` | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| brVault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229244 | 2 deployments: bsc `0x1df46ec5e86fec4589b3fa7d60b6dc7ef890ad93`; bsc `0x6518b4c7fa1502246649106e69857e3b7d1dba0f` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-229226 | `0x047d41f2544b7f63a8e991af2068a363d210d6da` | ⚠️ Unaudited |
| brVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-229231 | `0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | project_anchor | own_supporting | 1 | bsc | unit-229246 | 2 deployments: bsc `0x84e5c854a7ff9f49c888d69deca578d406c26800`; bsc `0xdfc7d2d003a053b2e0490531e9317a59962b511e` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | optimism | unit-229234 | 2 deployments: optimism `0x3376ebca0a85fc8d791b1001a571c41fdd61514a`; optimism `0xf9775085d726e782e83585033b58606f7731ab18` | ⚠️ Unaudited |
| EigenPod | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-229228 | `0x926720ae39114d0e2043b79570a1e08f00d01cce` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x109228348113fe837207e033fdbce3bb5f19bda9` | ⚠️ Unaudited |
| Bedrock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229229 | `0x2ec37d45fcae65d9787ecf71dc85a444968f6646` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | bsc | unit-229245 | `0x733a6c29eda4a58931ae81b8d91e29f2eaf01df3` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-229266 | 2 deployments: hyperliquid `0xa161132371c94299d215915d4cbc3b629e2059be`; hyperliquid `0xdfc7d2d003a053b2e0490531e9317a59962b511e` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | base | unit-229260 | 2 deployments: base `0x3376ebca0a85fc8d791b1001a571c41fdd61514a`; base `0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xa161132371c94299d215915d4cbc3b629e2059be`; base `0xdfc7d2d003a053b2e0490531e9317a59962b511e` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`; base `0xf9775085d726e782e83585033b58606f7731ab18` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: bsc `0x5e8fd0f3273407643a5c55d343f1afa5d7618ae0`; berachain `0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | ⚠️ Unaudited |
| brBTC | unknown | project_anchor | own_supporting | 1 | berachain | unit-229249 | `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | ⚠️ Unaudited |
| brBTCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xab3630cef046e2dfafd327eb8b7b96d627defa83`; ethereum `0xdf1925b7a0f56a3ed7f74be2a813ae8bba756e59` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xd498e4aee5585ff8099158e641c025a761acc656`; bsc `0x3774af7bb6e792963167588ae85b5ab8664ba818`; sonic `0xd8b81b8950981efba4c00eed567f903580a6649c` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x5e3787fd0bf2178eb15dc03eef893dac0258d2f9` | ⚠️ Unaudited |
| CCIPPeer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xab3630cef046e2dfafd327eb8b7b96d627defa83`; sonic `0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d` | ⚠️ Unaudited |
| cuniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2479185e254d5efea735fc6ff7fd921ff0af43f3` | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c4c2f4d6e45c23df2b02b94168a5f0d378faeae` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6f10dc7dc5ff3cbb7c18b324abdc05fade601370`; ethereum `0x79cf1cf70b4aef73e15a7b14efb314d2fde7c53d` | ⚠️ Unaudited |
| FBTCProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: bsc `0x3376ebca0a85fc8d791b1001a571c41fdd61514a`; mantle `0x02e3e2c644601b18ad67a6f09155fe5581af25ea`; mantle `0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-229225 | 2 deployments: arbitrum `0x3d15fd46ce9e551498328b1c83071d9509e2c3a0`; linea `0x15eefe5b297136b8712291b632404b66a8ef4d25` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-229222 | `0x15eefe5b297136b8712291b632404b66a8ef4d25` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: ethereum `0xc3827a4bc8224ee2d116637023b124ced6db6e90`; bsc `0x79f2c32204e997d4d49de3d45a6130d627449597`; sonic `0x17c3b688badd6dd11244096a9fbc4ae0add551ab`; hyperliquid `0x9203ce1bcded1a20f697e1780bc47d5b6d718031`; base `0x321c67ff4c3d313565131f67568bb6c12fb42ef7`; base `0x886eaf3d2b9dfd0a1dd24b82d56a2f487e3616bf`; berachain `0x17c3b688badd6dd11244096a9fbc4ae0add551ab`; berachain `0x9203ce1bcded1a20f697e1780bc47d5b6d718031` | ⚠️ Unaudited |
| Restaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229227 | `0x3f4eaceb930b0edfa78a1dfcbae5c5494e6e9850` | ⚠️ Unaudited |
| Restaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x563a27728d298f21738ab694e95f344a42731fe5`; ethereum `0xb290bedd4302dc7160467c59692387073b69ec47` | ⚠️ Unaudited |
| RockXETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3376ebca0a85fc8d791b1001a571c41fdd61514a` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: optimism `0x58cb2637deca008a7e9aebbe9843fa7e4d9d187d`; bsc `0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a`; mantle `0x3376ebca0a85fc8d791b1001a571c41fdd61514a`; mantle `0x58cb2637deca008a7e9aebbe9843fa7e4d9d187d`; mode `0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a`; arbitrum `0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`; bsc `0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x16918506c3a1217328b507898aff58d62c9fb932`; base `0x4519c8e32b080a778f2ae188d5fdcd98175f0caf` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915` | ⚠️ Unaudited |
| Sigma | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x563a27728d298f21738ab694e95f344a42731fe5`; berachain `0xb290bedd4302dc7160467c59692387073b69ec47` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229233 | 2 deployments: ethereum `0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d`; ethereum `0xf047d19d064c541bb96f03a99620256b749df110` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c74e737dad608f21b90e1d155f5571541c51d6f`; ethereum `0xe0240d05ae9ef703e2b71f3f4eb326ea1888dea3` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa93322a98335b791df87f20bb939fbe4d84ffadd` | ⚠️ Unaudited |
| TransferProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: optimism `0xbc48e8bb4e270e0c59cc1bc8885571b7bc33d03d`; bsc `0x98169228cb99ed26c1043ed8ca53a5cb371d3b8d`; bsc `0xbc48e8bb4e270e0c59cc1bc8885571b7bc33d03d`; mantle `0x3e904af0cf56b304d0d286c8fb6ea5a84e33eab5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-229219 | `0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-229220 | `0x84e5c854a7ff9f49c888d69deca578d406c26800` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-229232 | `0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x20d70277afc6e1304b89fc1a30d84130f1634510`; ethereum `0xd8b81b8950981efba4c00eed567f903580a6649c` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | optimism | unit-229235 | `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | bsc | unit-229247 | `0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: optimism `0x552b0c6688fcae5cf0164f27fd129b882a42fa05`; optimism `0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`; optimism `0xdfc7d2d003a053b2e0490531e9317a59962b511e`; bsc `0x9203ce1bcded1a20f697e1780bc47d5b6d718031`; bsc `0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3`; sonic `0x50fa1411201e2ac0361fb893e903b80f141b8190`; mantle `0x552b0c6688fcae5cf0164f27fd129b882a42fa05`; mantle `0xdfc7d2d003a053b2e0490531e9317a59962b511e`; mode `0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3`; arbitrum `0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3`; berachain `0x50fa1411201e2ac0361fb893e903b80f141b8190` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | sonic | unit-229238 | `0xc3827a4bc8224ee2d116637023b124ced6db6e90` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-229265 | 2 deployments: hyperliquid `0x93919784c523f39cacaa98ee0a9d96c3f32b593e`; hyperliquid `0xf9775085d726e782e83585033b58606f7731ab18` | ⚠️ Unaudited |
| uniBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | mantle | unit-229243 | `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | base | unit-229258 | 2 deployments: base `0x552b0c6688fcae5cf0164f27fd129b882a42fa05`; base `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-229241 | `0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | berachain | unit-229256 | `0xc3827a4bc8224ee2d116637023b124ced6db6e90` | ⚠️ Unaudited |
| uniBTCOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x17c3b688badd6dd11244096a9fbc4ae0add551ab`; ethereum `0x50fa1411201e2ac0361fb893e903b80f141b8190` | ⚠️ Unaudited |
| uniBTCRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x02643a61f03783b8897c11fbd7b255dc0e870c5e`; base `0xc651dd42f634126ecd1f605d1173601e6fc11680` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: ethereum `0x285afd3688a20aa854b9aed89e538cf85177b458`; optimism `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`; bsc `0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d`; bsc `0x8891c147041390efa5177f0a77d12cbdc4c9c533`; mantle `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`; mode `0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d`; mode `0xfa8c3e48d8ad82b3eaf640163310927e85f41e5f`; arbitrum `0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d`; arbitrum `0xfa8c3e48d8ad82b3eaf640163310927e85f41e5f` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x552b0c6688fcae5cf0164f27fd129b882a42fa05`; bsc `0xa161132371c94299d215915d4cbc3b629e2059be`; bsc `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | sonic | unit-229239 | 2 deployments: sonic `0x20d70277afc6e1304b89fc1a30d84130f1634510`; sonic `0xe1061f0d0a2aaf273dc9e2077e8545417b838a8c` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | mantle | unit-229242 | 2 deployments: mantle `0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`; mantle `0xf9775085d726e782e83585033b58606f7731ab18` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | base | unit-229262 | 2 deployments: base `0x9f283b0401d9698e86097fdc44820bcbe5dcfefb`; base `0xd4b6b3a3d0ec23de1f0674a7bd7d667f224a7509` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-229240 | `0x84e5c854a7ff9f49c888d69deca578d406c26800` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | project_anchor | own_supporting | 1 | berachain | unit-229251 | 2 deployments: berachain `0xa93322a98335b791df87f20bb939fbe4d84ffadd`; berachain `0xe0240d05ae9ef703e2b71f3f4eb326ea1888dea3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xf9775085d726e782e83585033b58606f7731ab18) | proxy | project_anchor | own_supporting | 1 | unichain | unit-229237 | 2 deployments: unichain `0xa161132371c94299d215915d4cbc3b629e2059be`; unichain `0xf9775085d726e782e83585033b58606f7731ab18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029e4fbdaa31de075dd74b2238222a08233978f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c914ba874d94090ba0e6f56790bb8eb6d4c7e5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-229217 | `0x9609af0490b96d7add7eea3554b1a944ee440262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f2b6ab5b38b88ba221741b3a189999b4c889c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58cb2637deca008a7e9aebbe9843fa7e4d9d187d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9203ce1bcded1a20f697e1780bc47d5b6d718031` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | unichain | unit-229236 | 2 deployments: unichain `0x93919784c523f39cacaa98ee0a9d96c3f32b593e`; unichain `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-229218 | `0xdfc7d2d003a053b2e0490531e9317a59962b511e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-229223 | `0xa161132371c94299d215915d4cbc3b629e2059be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-229224 | `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdf1925b7a0f56a3ed7f74be2a813ae8bba756e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe1061f0d0a2aaf273dc9e2077e8545417b838a8c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 104
- Live contracts: 19
- Unknown liveness contracts: 85
- Source-verified contracts: 93
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=36, candidate hard block=9, exact address book overlap=1, source verified unclassified=48, unverified unclassified=10

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | TransparentUpgradeableProxy<br>`0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| arbitrum | candidate review | Vault<br>`0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| arbitrum | candidate review | Vault<br>`0xfa8c3e48d8ad82b3eaf640163310927e85f41e5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| arbitrum | source verified unclassified | Sigma<br>`0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a` | non_address_book | unknown | unknown | verified | n/a | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| arbitrum | source verified unclassified | uniBTC<br>`0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3` | non_address_book | unknown | unknown | verified | n/a | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| base | candidate review | ProxyAdmin<br>`0x321c67ff4c3d313565131f67568bb6c12fb42ef7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x111127eeb9d04d7be92d443443da535c8fd15576` |
| base | candidate review | ProxyAdmin<br>`0x886eaf3d2b9dfd0a1dd24b82d56a2f487e3616bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x111127eeb9d04d7be92d443443da535c8fd15576` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x16918506c3a1217328b507898aff58d62c9fb932` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x111127eeb9d04d7be92d443443da535c8fd15576` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x9f283b0401d9698e86097fdc44820bcbe5dcfefb` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x111127eeb9d04d7be92d443443da535c8fd15576` |
| base | source verified unclassified | Sigma<br>`0x4519c8e32b080a778f2ae188d5fdcd98175f0caf` | non_address_book | unknown | unknown | verified | n/a | `0x111127eeb9d04d7be92d443443da535c8fd15576` |
| base | source verified unclassified | VaultWithoutNative<br>`0xd4b6b3a3d0ec23de1f0674a7bd7d667f224a7509` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x111127eeb9d04d7be92d443443da535c8fd15576` |
| base | candidate hard block | TransparentUpgradeableProxy<br>`0xdfc7d2d003a053b2e0490531e9317a59962b511e` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| base | candidate hard block | TransparentUpgradeableProxy<br>`0xf9775085d726e782e83585033b58606f7731ab18` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| base | source verified unclassified | brBTC<br>`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| base | source verified unclassified | brBTC<br>`0xa161132371c94299d215915d4cbc3b629e2059be` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| base | source verified unclassified | brBTC<br>`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| base | source verified unclassified | uniBTC<br>`0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| berachain | candidate review | ProxyAdmin<br>`0x9203ce1bcded1a20f697e1780bc47d5b6d718031` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| berachain | source verified unclassified | brBTC<br>`0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| berachain | source verified unclassified | brVault<br>`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| berachain | candidate review | TransparentUpgradeableProxy<br>`0xb290bedd4302dc7160467c59692387073b69ec47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| berachain | candidate review | TransparentUpgradeableProxy<br>`0xe0240d05ae9ef703e2b71f3f4eb326ea1888dea3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| berachain | source verified unclassified | Sigma<br>`0x563a27728d298f21738ab694e95f344a42731fe5` | non_address_book | unknown | unknown | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| berachain | source verified unclassified | uniBTC<br>`0x50fa1411201e2ac0361fb893e903b80f141b8190` | non_address_book | unknown | unknown | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| berachain | source verified unclassified | VaultWithoutNative<br>`0xa93322a98335b791df87f20bb939fbe4d84ffadd` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| berachain | unverified unclassified | UnnamedContract<br>`0xdf1925b7a0f56a3ed7f74be2a813ae8bba756e59` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| berachain | unverified unclassified | UnnamedContract<br>`0xe1061f0d0a2aaf273dc9e2077e8545417b838a8c` | non_address_book | unknown | unknown | unverified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| bsc | candidate review | TransparentUpgradeableProxy<br>`0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| bsc | candidate review | Vault<br>`0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| bsc | candidate review | Vault<br>`0x8891c147041390efa5177f0a77d12cbdc4c9c533` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| bsc | source verified unclassified | Sigma<br>`0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a` | non_address_book | unknown | unknown | verified | n/a | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| bsc | source verified unclassified | uniBTC<br>`0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3` | non_address_book | unknown | unknown | verified | n/a | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| bsc | candidate hard block | CCIPPeer<br>`0x3774af7bb6e792963167588ae85b5ab8664ba818` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | candidate hard block | ProxyAdmin<br>`0x79f2c32204e997d4d49de3d45a6130d627449597` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | candidate hard block | TransparentUpgradeableProxy<br>`0x5e3787fd0bf2178eb15dc03eef893dac0258d2f9` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | brBTC<br>`0x5e8fd0f3273407643a5c55d343f1afa5d7618ae0` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | brVault<br>`0x6518b4c7fa1502246649106e69857e3b7d1dba0f` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | FBTCProxy<br>`0x3376ebca0a85fc8d791b1001a571c41fdd61514a` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | Sigma<br>`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | TransferProxy<br>`0x98169228cb99ed26c1043ed8ca53a5cb371d3b8d` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | TransferProxy<br>`0xbc48e8bb4e270e0c59cc1bc8885571b7bc33d03d` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | uniBTC<br>`0x9203ce1bcded1a20f697e1780bc47d5b6d718031` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | VaultWithoutNative<br>`0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | VaultWithoutNative<br>`0xa161132371c94299d215915d4cbc3b629e2059be` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | VaultWithoutNative<br>`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | source verified unclassified | VaultWithoutNative<br>`0xdfc7d2d003a053b2e0490531e9317a59962b511e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b` | non_address_book | unknown | unknown | unverified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x58cb2637deca008a7e9aebbe9843fa7e4d9d187d` | non_address_book | unknown | unknown | unverified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| ethereum | candidate review | Airdrop<br>`0x109228348113fe837207e033fdbce3bb5f19bda9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | CCIPPeer<br>`0xab3630cef046e2dfafd327eb8b7b96d627defa83` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | CCIPPeer<br>`0xd498e4aee5585ff8099158e641c025a761acc656` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | cuniBTC<br>`0x2479185e254d5efea735fc6ff7fd921ff0af43f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | DelayRedeemRouter<br>`0x3c4c2f4d6e45c23df2b02b94168a5f0d378faeae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | Factory<br>`0x79cf1cf70b4aef73e15a7b14efb314d2fde7c53d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | ProxyAdmin<br>`0xc3827a4bc8224ee2d116637023b124ced6db6e90` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | Restaking<br>`0x563a27728d298f21738ab694e95f344a42731fe5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x6f10dc7dc5ff3cbb7c18b324abdc05fade601370` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xb290bedd4302dc7160467c59692387073b69ec47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xd8b81b8950981efba4c00eed567f903580a6649c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xdf1925b7a0f56a3ed7f74be2a813ae8bba756e59` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xe0240d05ae9ef703e2b71f3f4eb326ea1888dea3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | candidate review | Vault<br>`0x285afd3688a20aa854b9aed89e538cf85177b458` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | source verified unclassified | Staking<br>`0x5c74e737dad608f21b90e1d155f5571541c51d6f` | non_address_book | unknown | unknown | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | source verified unclassified | Staking<br>`0xf047d19d064c541bb96f03a99620256b749df110` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | source verified unclassified | uniBTC<br>`0x20d70277afc6e1304b89fc1a30d84130f1634510` | non_address_book | unknown | unknown | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | source verified unclassified | uniBTCOFTAdapter<br>`0x17c3b688badd6dd11244096a9fbc4ae0add551ab` | non_address_book | unknown | unknown | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x029e4fbdaa31de075dd74b2238222a08233978f6` | non_address_book | unknown | unknown | unverified | n/a | `0x9251fd3d79522bb2243a58fff1db43e25a495aab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5f2b6ab5b38b88ba221741b3a189999b4c889c6` | non_address_book | unknown | unknown | unverified | n/a | `0x9251fd3d79522bb2243a58fff1db43e25a495aab` |
| hyperliquid | candidate hard block | ProxyAdmin<br>`0x9203ce1bcded1a20f697e1780bc47d5b6d718031` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| hyperliquid | candidate hard block | TransparentUpgradeableProxy<br>`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| hyperliquid | source verified unclassified | brBTC<br>`0xa161132371c94299d215915d4cbc3b629e2059be` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| hyperliquid | source verified unclassified | uniBTC<br>`0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | candidate hard block | Vault<br>`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | source verified unclassified | FBTCProxy<br>`0x02e3e2c644601b18ad67a6f09155fe5581af25ea` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | source verified unclassified | FBTCProxy<br>`0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | source verified unclassified | Sigma<br>`0x3376ebca0a85fc8d791b1001a571c41fdd61514a` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | source verified unclassified | Sigma<br>`0x58cb2637deca008a7e9aebbe9843fa7e4d9d187d` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | source verified unclassified | TransferProxy<br>`0x3e904af0cf56b304d0d286c8fb6ea5a84e33eab5` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | source verified unclassified | uniBTC<br>`0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | source verified unclassified | uniBTC<br>`0xdfc7d2d003a053b2e0490531e9317a59962b511e` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mantle | source verified unclassified | VaultWithoutNative<br>`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| mode | candidate review | Sigma<br>`0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| mode | candidate review | TransparentUpgradeableProxy<br>`0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| mode | candidate review | uniBTC<br>`0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| mode | candidate review | Vault<br>`0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| mode | candidate review | Vault<br>`0xfa8c3e48d8ad82b3eaf640163310927e85f41e5f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4c262baa7c09a0234e67a1ff39d7c02a02f003f6` |
| optimism | candidate hard block | Vault<br>`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| optimism | source verified unclassified | Sigma<br>`0x58cb2637deca008a7e9aebbe9843fa7e4d9d187d` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| optimism | source verified unclassified | TransferProxy<br>`0xbc48e8bb4e270e0c59cc1bc8885571b7bc33d03d` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| optimism | source verified unclassified | uniBTC<br>`0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| optimism | source verified unclassified | uniBTC<br>`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| optimism | source verified unclassified | uniBTC<br>`0xdfc7d2d003a053b2e0490531e9317a59962b511e` | non_address_book | unknown | unknown | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| optimism | source verified unclassified | VaultWithoutNative<br>`0x3376ebca0a85fc8d791b1001a571c41fdd61514a` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b` | non_address_book | unknown | unknown | unverified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| sonic | candidate review | CCIPPeer<br>`0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| sonic | candidate review | CCIPPeer<br>`0xd8b81b8950981efba4c00eed567f903580a6649c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| sonic | candidate review | TransparentUpgradeableProxy<br>`0x20d70277afc6e1304b89fc1a30d84130f1634510` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| sonic | candidate review | TransparentUpgradeableProxy<br>`0xab3630cef046e2dfafd327eb8b7b96d627defa83` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| sonic | source verified unclassified | uniBTC<br>`0x50fa1411201e2ac0361fb893e903b80f141b8190` | non_address_book | unknown | unknown | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| sonic | source verified unclassified | VaultWithoutNative<br>`0xe1061f0d0a2aaf273dc9e2077e8545417b838a8c` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x8cb37518330014e027396e3ed59a231fbe3b011a` |
| unichain | exact address book overlap | 0x93919784c523f39cacaa98ee0a9d96c3f32b593e<br>`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | project_anchor | unknown | live | unverified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| unichain | unverified unclassified | UnnamedContract<br>`0x9203ce1bcded1a20f697e1780bc47d5b6d718031` | non_address_book | unknown | unknown | unverified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| unichain | unverified unclassified | UnnamedContract<br>`0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |
| unichain | unverified unclassified | UnnamedContract<br>`0xf9775085d726e782e83585033b58606f7731ab18` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x899c284a89e113056a72dc9ade5b60e80dd3c94f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-RockXStaking-v1.0.pdf](https://github.com/RockX-SG/stake/blob/main/PeckShield-Audit-Report-RockXStaking-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | n/a | matched | 1 | 1 | 0 | 1 | n/a |
| [blocksec_bedrock_br_v1.0-signed.pdf](https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_bedrock_unibtc_v1.0-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 8 | high |
| [PeckShield-Audit-Report-uniBTC-v1.0.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [code audit blocksec.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [PeckShield-Audit-Report-Bedrock-v1.0.pdf](https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | n/a | matched | 1 | 1 | 0 | 1 | n/a |
| [PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf](https://github.com/RockX-SG/uniiotx/blob/main/docs/PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_bedrock_unibtc_v1.1-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.1-signed.pdf) | BlockSec | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [PeckShield Audit Report RockX Eth Staking.pdf](https://github.com/Bedrock-Technology/docs/blob/main/PeckShield%20Audit%20Report%20RockX%20Eth%20Staking.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12765] PeckShield-Audit-Report-RockXStaking-v1.0.pdf — matched: No reason recorded
- [12767] blocksec_bedrock_br_v1.0-signed.pdf — no match: Scope explicitly lists contracts/brBTC.sol and contracts/brVault.sol. Audit date is December 16, 2024 from the report header.
- [12768] blocksec_bedrock_unibtc_v1.0-signed.pdf — matched: Scope explicitly states only source code files in folders contracts/contracts/ and ccip/ are in scope. All contracts mentioned in findings are from these folders.
- [12769] PeckShield-Audit-Report-uniBTC-v1.0.pdf — matched: The report explicitly lists 'Target: uniBTC' and mentions 'Vault' and 'DelayRedeemRouter' as audited contracts in findings. No file paths provided.
- [12770] code audit blocksec.pdf — matched: Scope explicitly lists three source files: uniBTC.sol, Peer.sol, Vault.sol. Audit date from cover page.
- [12771] PeckShield-Audit-Report-Bedrock-v1.0.pdf — matched: No reason recorded
- [12772] PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf — no match: Scope section states 'all files under the contracts/ directory' and findings target IOTXClear and IOTXStaking. No other contract names explicitly mentioned.
- [12773] blocksec_bedrock_unibtc_v1.1-signed.pdf — matched: Scope explicitly mentions two folders: contracts/contracts/ and ccip/. All contracts referenced in findings from these folders are included.
- [12774] PeckShield Audit Report RockX Eth Staking.pdf — no match: The report does not have a dedicated scope section or table listing contracts. However, the findings consistently target 'RockXStaking' as the audited contract. No other contract names are explicitly mentioned as in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-RockXStaking-v1.0.pdf | RockXETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4` — deployed 2022-09-29 07:19:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-RockXStaking-v1.0.pdf | RockXStaking | unmatched — not counted | — | — | no |
| blocksec_bedrock_br_v1.0-signed.pdf | brBTC | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x2ec37d45fcae65d9787ecf71dc85a444968f6646` — deployed 2024-12-19 09:07:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x733a6c29eda4a58931ae81b8d91e29f2eaf01df3` — deployed 2024-12-19 09:21:45+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` — deployed 2025-02-06 08:36:50+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3376ebca0a85fc8d791b1001a571c41fdd61514a` — deployed 2025-06-13 10:36:19+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdfc7d2d003a053b2e0490531e9317a59962b511e` — deployed 2025-08-12 10:36:25+03 — liveness: live (current_address_book_code)<br>0xa16113… (proxy) (alternative) `0xa161132371c94299d215915d4cbc3b629e2059be` — deployed 2025-08-08 06:33:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_bedrock_br_v1.0-signed.pdf | brVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1df46ec5e86fec4589b3fa7d60b6dc7ef890ad93` — deployed 2024-12-19 09:22:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf9775085d726e782e83585033b58606f7731ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386` — deployed 2024-12-19 09:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | ccipPeer | unmatched — not counted | — | Listed in scope folder ccip/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | DelayRedeemRouter | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | BitLayerNativeProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf9775085d726e782e83585033b58606f7731ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | BR | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | Bedrock | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings (contract name is Bedrock) | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | DirectBTCMinter | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | MBTCProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| blocksec_bedrock_unibtc_v1.0-signed.pdf | SwapProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and mentioned in findings | no |
| PeckShield-Audit-Report-uniBTC-v1.0.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf9775085d726e782e83585033b58606f7731ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-uniBTC-v1.0.pdf | DelayRedeemRouter | unmatched — not counted | — | Listed in findings target DelayRedeemRouter | no |
| code audit blocksec.pdf | uniBTC | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` — deployed 2025-06-13 10:29:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` — deployed 2024-07-08 06:29:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a` — deployed 2024-09-10 13:25:26+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a` — deployed 2024-09-02 12:27:34+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf9775085d726e782e83585033b58606f7731ab18` — deployed 2025-08-12 10:33:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc3827a4bc8224ee2d116637023b124ced6db6e90` — deployed 2025-01-23 07:10:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` — deployed 2024-07-12 11:31:06+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc3827a4bc8224ee2d116637023b124ced6db6e90` — deployed 2025-02-17 11:53:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568` — deployed 2024-04-13 11:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code audit blocksec.pdf | Peer | unmatched — not counted | — | listed in scope | no |
| code audit blocksec.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf9775085d726e782e83585033b58606f7731ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Bedrock-v1.0.pdf | RockXETH | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4` — deployed 2022-09-29 07:19:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Bedrock-v1.0.pdf | RockXStaking | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf | IOTXClear | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf | IOTXStaking | unmatched — not counted | — | Target in finding PVE-002 and PVE-003 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | ccipPeer | unmatched — not counted | — | Listed in scope folder ccip/ and referenced in findings | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | DelayRedeemRouter | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in findings | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | BitLayerNativeProxy | unmatched — not counted | — | Referenced in finding 2.1.2 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf9775085d726e782e83585033b58606f7731ab18` — deployed 2025-02-06 08:38:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | BR | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in finding 2.3.1 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | DirectBTCMinter | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in finding 2.3.2 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | MBTCProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in finding 2.3.4 | no |
| blocksec_bedrock_unibtc_v1.1-signed.pdf | SwapProxy | unmatched — not counted | — | Listed in scope folder contracts/contracts/ and referenced in finding 2.4.3 | no |
| PeckShield Audit Report RockX Eth Staking.pdf | RockXStaking | unmatched — not counted | — | Listed as target in findings (PVE-001, PVE-002, PVE-003, PVE-004) and mentioned as the main contract in scope. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x3376ebca0a85fc8d791b1001a571c41fdd61514a` | VaultWithoutNative | unknown | $865.59 | Verified native implementation with $865.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xa161132371c94299d215915d4cbc3b629e2059be` | brBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x552b0c6688fcae5cf0164f27fd129b882a42fa05` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x20d70277afc6e1304b89fc1a30d84130f1634510` | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb` | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9f283b0401d9698e86097fdc44820bcbe5dcfefb` | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xa93322a98335b791df87f20bb939fbe4d84ffadd` | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 24 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 22 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: unique_name=6

Zero-match audit list:

- [12767] blocksec_bedrock_br_v1.0-signed.pdf
- [12772] PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf
- [12774] PeckShield Audit Report RockX Eth Staking.pdf

Fork inheritance lineage and inherited audits are included when available.
