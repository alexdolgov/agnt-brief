# Agentic Audit Brief: Bedrock

## Project Overview

- Project: Bedrock (`bedrock`)
- Website: [https://www.bedrock.technology](https://www.bedrock.technology)
- Lifecycle: active (Tier 0, 58.9% below peak)
- Generated: 2026-07-04T14:53:05.398Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, ink, linea, mantle, mode, optimism, scroll, sonic, unichain
- Contract surface: 68 unique implementations (118 raw deployments)
- DeFi Llama TVL: $264,222,055.00
- On-chain TVL (included contracts): $16,703,965.28
- TVL by chain: Ethereum $16,513,805.19 | Bsc $189,294.49 | Optimism $865.59

## Project Description

Anchor BTC. Structurally: 133 project-authored contract(s) across 11 chain(s); 16 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 12 common project-authored base contract(s) (proxy, erc1967upgrade, accesscontrolupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 146; live-surface contracts included: 98 (83 live, 15 unknown).
- Excluded by liveness: 48 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/37 (32.4%)
- Deployed-live implementations: 57 of 68 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 25/58
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 1
- Unverified implementations: 10
- Unique implementations: 68
- Raw deployments: 118
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $110,486.82
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 19 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 25 | 43.1% | 2024-12 |
| BlockSec | Tier 2 | 6 | 10.3% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RockXETH | token | ethereum | n/a | [`0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | ✅ Audited |
| brVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x1df46ec5e86fec4589b3fa7d60b6dc7ef890ad93`](./contracts/bsc-56/0x1df46ec5e86fec4589b3fa7d60b6dc7ef890ad93/); bsc `0x6518b4c7fa1502246649106e69857e3b7d1dba0f` | ✅ Audited |
| brVault | core_logic | ethereum | n/a | [`0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/) | ✅ Audited |
| brBTC | unknown | ethereum | n/a | [`0x2ec37d45fcae65d9787ecf71dc85a444968f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ✅ Audited |
| brBTC | unknown | bsc | n/a | [`0x733a6c29eda4a58931ae81b8d91e29f2eaf01df3`](./contracts/bsc-56/0x733a6c29eda4a58931ae81b8d91e29f2eaf01df3/) | ✅ Audited |
| brBTC | unknown | base | n/a | 2 deployments: base [`0x3376ebca0a85fc8d791b1001a571c41fdd61514a`](./contracts/base-8453/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); base `0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb` | ✅ Audited |
| brBTC | unknown | berachain | n/a | [`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`](./contracts/berachain-80094/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| brVault | unknown | berachain | n/a | 2 deployments: berachain [`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`](./contracts/berachain-80094/0xd3c8da379d71a33bfee8875f87ac2748beb1d58d/); berachain `0xf9775085d726e782e83585033b58606f7731ab18` | ✅ Audited |
| CCIPPeer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xab3630cef046e2dfafd327eb8b7b96d627defa83`](./contracts/ethereum-1/0xab3630cef046e2dfafd327eb8b7b96d627defa83/); ethereum `0xdf1925b7a0f56a3ed7f74be2a813ae8bba756e59` | ✅ Audited |
| CCIPPeer | unknown | bsc | n/a | 3 deployments: ethereum `0xd498e4aee5585ff8099158e641c025a761acc656`; bsc [`0x3774af7bb6e792963167588ae85b5ab8664ba818`](./contracts/bsc-56/0x3774af7bb6e792963167588ae85b5ab8664ba818/); sonic `0xd8b81b8950981efba4c00eed567f903580a6649c` | ✅ Audited |
| CCIPPeer | unknown | bsc | n/a | [`0x5e3787fd0bf2178eb15dc03eef893dac0258d2f9`](./contracts/bsc-56/0x5e3787fd0bf2178eb15dc03eef893dac0258d2f9/) | ✅ Audited |
| CCIPPeer | unknown | sonic | n/a | 2 deployments: sonic [`0xab3630cef046e2dfafd327eb8b7b96d627defa83`](./contracts/sonic-146/0xab3630cef046e2dfafd327eb8b7b96d627defa83/); sonic `0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d` | ✅ Audited |
| DelayRedeemRouter | unknown | ethereum | n/a | [`0x3c4c2f4d6e45c23df2b02b94168a5f0d378faeae`](./contracts/ethereum-1/0x3c4c2f4d6e45c23df2b02b94168a5f0d378faeae/) | ✅ Audited |
| RockXETH | token | ethereum | n/a | [`0x3376ebca0a85fc8d791b1001a571c41fdd61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | ✅ Audited |
| uniBTC | unknown | ethereum | n/a | [`0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ✅ Audited |
| uniBTC | unknown | optimism | n/a | [`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`](./contracts/optimism-10/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| uniBTC | unknown | bsc | n/a | [`0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a`](./contracts/bsc-56/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/) | ✅ Audited |
| uniBTC | unknown | sonic | n/a | [`0xc3827a4bc8224ee2d116637023b124ced6db6e90`](./contracts/sonic-146/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | ✅ Audited |
| uniBTC | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`](./contracts/hyperliquid-999/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/); hyperliquid `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`; hyperliquid `0xf9775085d726e782e83585033b58606f7731ab18` | ✅ Audited |
| uniBTC | unknown | mantle | n/a | [`0x93919784c523f39cacaa98ee0a9d96c3f32b593e`](./contracts/mantle-5000/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| uniBTC | unknown | base | n/a | 2 deployments: base [`0x552b0c6688fcae5cf0164f27fd129b882a42fa05`](./contracts/base-8453/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); base `0x93919784c523f39cacaa98ee0a9d96c3f32b593e` | ✅ Audited |
| uniBTC | unknown | arbitrum | n/a | [`0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a`](./contracts/arbitrum-42161/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/) | ✅ Audited |
| uniBTC | unknown | berachain | n/a | [`0xc3827a4bc8224ee2d116637023b124ced6db6e90`](./contracts/berachain-80094/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | ✅ Audited |
| Vault | unknown | bsc | n/a | 9 deployments: ethereum `0x285afd3688a20aa854b9aed89e538cf85177b458`; optimism `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`; bsc [`0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d`](./contracts/bsc-56/0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d/); bsc `0x8891c147041390efa5177f0a77d12cbdc4c9c533`; mantle `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`; mode [`0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d`](./contracts/mode-34443/0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d/); mode `0xfa8c3e48d8ad82b3eaf640163310927e85f41e5f`; arbitrum [`0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d`](./contracts/arbitrum-42161/0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d/); arbitrum `0xfa8c3e48d8ad82b3eaf640163310927e85f41e5f` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultWithoutNative | core_logic | ethereum | n/a | [`0x047d41f2544b7f63a8e991af2068a363d210d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/) | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | bsc | n/a | 2 deployments: bsc [`0x84e5c854a7ff9f49c888d69deca578d406c26800`](./contracts/bsc-56/0x84e5c854a7ff9f49c888d69deca578d406c26800/); bsc `0xdfc7d2d003a053b2e0490531e9317a59962b511e` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | optimism | n/a | 2 deployments: optimism [`0x3376ebca0a85fc8d791b1001a571c41fdd61514a`](./contracts/optimism-10/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); optimism `0xf9775085d726e782e83585033b58606f7731ab18` | ⚠️ Unaudited |
| EigenPod | core_logic | ethereum | n/a | [`0x926720ae39114d0e2043b79570a1e08f00d01cce`](./contracts/ethereum-1/0x926720ae39114d0e2043b79570a1e08f00d01cce/) | ⚠️ Unaudited |
| Airdrop | unknown | ethereum | n/a | [`0x109228348113fe837207e033fdbce3bb5f19bda9`](./contracts/ethereum-1/0x109228348113fe837207e033fdbce3bb5f19bda9/) | ⚠️ Unaudited |
| Bedrock | unknown | bsc | n/a | [`0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41`](./contracts/bsc-56/0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41/) | ⚠️ Unaudited |
| brBTC | unknown | base | n/a | 2 deployments: base [`0xa161132371c94299d215915d4cbc3b629e2059be`](./contracts/base-8453/0xa161132371c94299d215915d4cbc3b629e2059be/); base `0xdfc7d2d003a053b2e0490531e9317a59962b511e` | ⚠️ Unaudited |
| brBTC | unknown | base | n/a | 2 deployments: base [`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`](./contracts/base-8453/0xd3c8da379d71a33bfee8875f87ac2748beb1d58d/); base `0xf9775085d726e782e83585033b58606f7731ab18` | ⚠️ Unaudited |
| brBTCOFTAdapter | adapter | ethereum | n/a | [`0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d`](./contracts/ethereum-1/0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d/) | ⚠️ Unaudited |
| cuniBTC | unknown | ethereum | n/a | [`0x2479185e254d5efea735fc6ff7fd921ff0af43f3`](./contracts/ethereum-1/0x2479185e254d5efea735fc6ff7fd921ff0af43f3/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6f10dc7dc5ff3cbb7c18b324abdc05fade601370`](./contracts/ethereum-1/0x6f10dc7dc5ff3cbb7c18b324abdc05fade601370/); ethereum `0x79cf1cf70b4aef73e15a7b14efb314d2fde7c53d` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | linea | n/a | 3 deployments: arbitrum `0x3d15fd46ce9e551498328b1c83071d9509e2c3a0`; linea [`0x15eefe5b297136b8712291b632404b66a8ef4d25`](./contracts/linea-59144/0x15eefe5b297136b8712291b632404b66a8ef4d25/); scroll [`0x15eefe5b297136b8712291b632404b66a8ef4d25`](./contracts/scroll-534352/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | n/a | 8 deployments: ethereum `0xc3827a4bc8224ee2d116637023b124ced6db6e90`; bsc `0x79f2c32204e997d4d49de3d45a6130d627449597`; sonic [`0x17c3b688badd6dd11244096a9fbc4ae0add551ab`](./contracts/sonic-146/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/); hyperliquid `0x9203ce1bcded1a20f697e1780bc47d5b6d718031`; base `0x321c67ff4c3d313565131f67568bb6c12fb42ef7`; base `0x886eaf3d2b9dfd0a1dd24b82d56a2f487e3616bf`; berachain [`0x17c3b688badd6dd11244096a9fbc4ae0add551ab`](./contracts/berachain-80094/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/); berachain `0x9203ce1bcded1a20f697e1780bc47d5b6d718031` | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | [`0x3f4eaceb930b0edfa78a1dfcbae5c5494e6e9850`](./contracts/ethereum-1/0x3f4eaceb930b0edfa78a1dfcbae5c5494e6e9850/) | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x563a27728d298f21738ab694e95f344a42731fe5`](./contracts/ethereum-1/0x563a27728d298f21738ab694e95f344a42731fe5/); ethereum `0xb290bedd4302dc7160467c59692387073b69ec47` | ⚠️ Unaudited |
| Sigma | unknown | bsc | n/a | 2 deployments: bsc [`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`](./contracts/bsc-56/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/); bsc `0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915` | ⚠️ Unaudited |
| Sigma | unknown | base | n/a | 2 deployments: base [`0x16918506c3a1217328b507898aff58d62c9fb932`](./contracts/base-8453/0x16918506c3a1217328b507898aff58d62c9fb932/); base `0x4519c8e32b080a778f2ae188d5fdcd98175f0caf` | ⚠️ Unaudited |
| Sigma | unknown | mode | n/a | [`0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a`](./contracts/mode-34443/0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a/) | ⚠️ Unaudited |
| Sigma | unknown | arbitrum | n/a | [`0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915`](./contracts/arbitrum-42161/0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915/) | ⚠️ Unaudited |
| Sigma | unknown | berachain | n/a | 2 deployments: berachain [`0x563a27728d298f21738ab694e95f344a42731fe5`](./contracts/berachain-80094/0x563a27728d298f21738ab694e95f344a42731fe5/); berachain `0xb290bedd4302dc7160467c59692387073b69ec47` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/); ethereum `0xf047d19d064c541bb96f03a99620256b749df110` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c74e737dad608f21b90e1d155f5571541c51d6f`](./contracts/ethereum-1/0x5c74e737dad608f21b90e1d155f5571541c51d6f/); ethereum `0xe0240d05ae9ef703e2b71f3f4eb326ea1888dea3` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xa93322a98335b791df87f20bb939fbe4d84ffadd`](./contracts/ethereum-1/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | 3 deployments: mode [`0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a`](./contracts/mode-34443/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/); mode `0x84e5c854a7ff9f49c888d69deca578d406c26800`; mode `0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x20d70277afc6e1304b89fc1a30d84130f1634510`](./contracts/ethereum-1/0x20d70277afc6e1304b89fc1a30d84130f1634510/); ethereum `0xd8b81b8950981efba4c00eed567f903580a6649c` | ⚠️ Unaudited |
| uniBTC | unknown | mode | n/a | [`0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3`](./contracts/mode-34443/0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3/) | ⚠️ Unaudited |
| uniBTCOFTAdapter | adapter | ethereum | n/a | [`0x50fa1411201e2ac0361fb893e903b80f141b8190`](./contracts/ethereum-1/0x50fa1411201e2ac0361fb893e903b80f141b8190/) | ⚠️ Unaudited |
| uniBTCRate | unknown | base | n/a | 2 deployments: base [`0x02643a61f03783b8897c11fbd7b255dc0e870c5e`](./contracts/base-8453/0x02643a61f03783b8897c11fbd7b255dc0e870c5e/); base `0xc651dd42f634126ecd1f605d1173601e6fc11680` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | sonic | n/a | 2 deployments: sonic [`0x20d70277afc6e1304b89fc1a30d84130f1634510`](./contracts/sonic-146/0x20d70277afc6e1304b89fc1a30d84130f1634510/); sonic `0xe1061f0d0a2aaf273dc9e2077e8545417b838a8c` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | mantle | n/a | 2 deployments: mantle [`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`](./contracts/mantle-5000/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/); mantle `0xf9775085d726e782e83585033b58606f7731ab18` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | base | n/a | 2 deployments: base [`0x9f283b0401d9698e86097fdc44820bcbe5dcfefb`](./contracts/base-8453/0x9f283b0401d9698e86097fdc44820bcbe5dcfefb/); base `0xd4b6b3a3d0ec23de1f0674a7bd7d667f224a7509` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | arbitrum | n/a | [`0x84e5c854a7ff9f49c888d69deca578d406c26800`](./contracts/arbitrum-42161/0x84e5c854a7ff9f49c888d69deca578d406c26800/) | ⚠️ Unaudited |
| VaultWithoutNative | unknown | berachain | n/a | 2 deployments: berachain [`0xa93322a98335b791df87f20bb939fbe4d84ffadd`](./contracts/berachain-80094/0xa93322a98335b791df87f20bb939fbe4d84ffadd/); berachain `0xe0240d05ae9ef703e2b71f3f4eb326ea1888dea3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| brBTC | proxy | unichain | n/a | 3 deployments: unichain [`0xa161132371c94299d215915d4cbc3b629e2059be`](./contracts/unichain-130/0xa161132371c94299d215915d4cbc3b629e2059be/); hyperliquid [`0xa161132371c94299d215915d4cbc3b629e2059be`](./contracts/hyperliquid-999/0xa161132371c94299d215915d4cbc3b629e2059be/); hyperliquid `0xdfc7d2d003a053b2e0490531e9317a59962b511e` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2c914ba874d94090ba0e6f56790bb8eb6d4c7e5f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11b3808a5c0b612bc284ef7c2c6034c77a66be7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58cb2637deca008a7e9aebbe9843fa7e4d9d187d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9203ce1bcded1a20f697e1780bc47d5b6d718031` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | 2 deployments: unichain `0x93919784c523f39cacaa98ee0a9d96c3f32b593e`; unichain `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf9775085d726e782e83585033b58606f7731ab18` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 2 deployments: ink `0xa161132371c94299d215915d4cbc3b629e2059be`; ink `0xd3c8da379d71a33bfee8875f87ac2748beb1d58d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdf1925b7a0f56a3ed7f74be2a813ae8bba756e59` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe1061f0d0a2aaf273dc9e2077e8545417b838a8c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-RockXStaking-v1.0.pdf](https://github.com/RockX-SG/stake/blob/main/PeckShield-Audit-Report-RockXStaking-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |
| [blocksec_bedrock_br_v1.0-signed.pdf](https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 8 | n/a |
| [blocksec_bedrock_unibtc_v1.0-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 18 | high |
| [PeckShield-Audit-Report-uniBTC-v1.0.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 10 | high |
| [code audit blocksec.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 9 | n/a |
| [PeckShield-Audit-Report-Bedrock-v1.0.pdf](https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf](https://github.com/RockX-SG/uniiotx/blob/main/docs/PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [blocksec_bedrock_unibtc_v1.1-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.1-signed.pdf) | BlockSec | Audit | 2024-11 | aging | Direct | contract_name | 18 | high |
| [PeckShield Audit Report RockX Eth Staking.pdf](https://github.com/Bedrock-Technology/docs/blob/main/PeckShield%20Audit%20Report%20RockX%20Eth%20Staking.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x3376ebca0a85fc8d791b1001a571c41fdd61514a`](./contracts/optimism-10/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | VaultWithoutNative | unknown | $865.59 | Verified native implementation with $865.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x109228348113fe837207e033fdbce3bb5f19bda9`](./contracts/ethereum-1/0x109228348113fe837207e033fdbce3bb5f19bda9/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41`](./contracts/bsc-56/0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41/) | Bedrock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa161132371c94299d215915d4cbc3b629e2059be`](./contracts/base-8453/0xa161132371c94299d215915d4cbc3b629e2059be/) | brBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd3c8da379d71a33bfee8875f87ac2748beb1d58d`](./contracts/base-8453/0xd3c8da379d71a33bfee8875f87ac2748beb1d58d/) | brBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d`](./contracts/ethereum-1/0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d/) | brBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2479185e254d5efea735fc6ff7fd921ff0af43f3`](./contracts/ethereum-1/0x2479185e254d5efea735fc6ff7fd921ff0af43f3/) | cuniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f10dc7dc5ff3cbb7c18b324abdc05fade601370`](./contracts/ethereum-1/0x6f10dc7dc5ff3cbb7c18b324abdc05fade601370/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x563a27728d298f21738ab694e95f344a42731fe5`](./contracts/ethereum-1/0x563a27728d298f21738ab694e95f344a42731fe5/) | Restaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`](./contracts/bsc-56/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16918506c3a1217328b507898aff58d62c9fb932`](./contracts/base-8453/0x16918506c3a1217328b507898aff58d62c9fb932/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a`](./contracts/mode-34443/0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915`](./contracts/arbitrum-42161/0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x563a27728d298f21738ab694e95f344a42731fe5`](./contracts/berachain-80094/0x563a27728d298f21738ab694e95f344a42731fe5/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c74e737dad608f21b90e1d155f5571541c51d6f`](./contracts/ethereum-1/0x5c74e737dad608f21b90e1d155f5571541c51d6f/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa93322a98335b791df87f20bb939fbe4d84ffadd`](./contracts/ethereum-1/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20d70277afc6e1304b89fc1a30d84130f1634510`](./contracts/ethereum-1/0x20d70277afc6e1304b89fc1a30d84130f1634510/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3`](./contracts/mode-34443/0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50fa1411201e2ac0361fb893e903b80f141b8190`](./contracts/ethereum-1/0x50fa1411201e2ac0361fb893e903b80f141b8190/) | uniBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02643a61f03783b8897c11fbd7b255dc0e870c5e`](./contracts/base-8453/0x02643a61f03783b8897c11fbd7b255dc0e870c5e/) | uniBTCRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x20d70277afc6e1304b89fc1a30d84130f1634510`](./contracts/sonic-146/0x20d70277afc6e1304b89fc1a30d84130f1634510/) | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb`](./contracts/mantle-5000/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/) | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9f283b0401d9698e86097fdc44820bcbe5dcfefb`](./contracts/base-8453/0x9f283b0401d9698e86097fdc44820bcbe5dcfefb/) | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa93322a98335b791df87f20bb939fbe4d84ffadd`](./contracts/berachain-80094/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | VaultWithoutNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 1 |
| standard_library | 22 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=21, extraction_exact=91

Zero-match audit list:

- [12772] PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf
- [12774] PeckShield Audit Report RockX Eth Staking.pdf

Fork inheritance lineage and inherited audits are included when available.
