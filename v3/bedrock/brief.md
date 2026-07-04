# Agentic Audit Brief: Bedrock

## Project Overview

- Project: Bedrock (`bedrock`)
- Website: [https://www.bedrock.technology](https://www.bedrock.technology)
- Lifecycle: active (Tier 0, 58.9% below peak)
- Generated: 2026-07-03T21:05:33.465Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, ink, linea, mantle, mode, optimism, scroll, sonic, unichain
- Contract surface: 88 unique implementations (182 raw deployments)
- DeFi Llama TVL: $264,222,055.00
- On-chain TVL (included contracts): $16,703,965.28
- TVL by chain: Ethereum $16,513,805.19 | Bsc $189,294.49 | Optimism $865.59

## Project Description

Anchor BTC. Structurally: 133 project-authored contract(s) across 11 chain(s); 16 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 12 common project-authored base contract(s) (proxy, erc1967upgrade, accesscontrolupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 235; live-surface contracts included: 153 (136 live, 17 unknown).
- Excluded by liveness: 82 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 31/75 (41.3%)
- Deployed-live implementations: 76 of 88 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 31/76
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 1
- Unverified implementations: 12
- Unique implementations: 88
- Raw deployments: 182
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $110,486.82
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 19 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 31 | 40.8% | 2024-12 |
| BlockSec | Tier 2 | 10 | 13.2% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RockXETH | token | ethereum | n/a | 2 deployments: ethereum [`0x8a9486...98e590`](./contracts/ethereum-1/0x8a94866df557bb7fce88eff9917237286098e590/); ethereum `0xf1376b...df51f4` | ✅ Audited |
| brVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x1df46e...90ad93`](./contracts/bsc-56/0x1df46ec5e86fec4589b3fa7d60b6dc7ef890ad93/); bsc `0x6518b4...1dba0f` | ✅ Audited |
| brVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/); ethereum `0xc7d81a...8334c7` | ✅ Audited |
| brBTC | unknown | ethereum | n/a | [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ✅ Audited |
| brBTC | unknown | bsc | n/a | [`0x733a6c...f01df3`](./contracts/bsc-56/0x733a6c29eda4a58931ae81b8d91e29f2eaf01df3/) | ✅ Audited |
| brBTC | unknown | base | n/a | 2 deployments: base [`0x3376eb...61514a`](./contracts/base-8453/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); base `0x89b2c7...740aeb` | ✅ Audited |
| brBTC | unknown | berachain | n/a | [`0x939197...2b593e`](./contracts/berachain-80094/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| brVault | unknown | berachain | n/a | 2 deployments: berachain [`0xd3c8da...b1d58d`](./contracts/berachain-80094/0xd3c8da379d71a33bfee8875f87ac2748beb1d58d/); berachain `0xf97750...31ab18` | ✅ Audited |
| CCIPPeer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x17ea3d...908ee1`](./contracts/ethereum-1/0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1/); bsc `0x3774af...4ba818`; sonic `0xd8b81b...a6649c` | ✅ Audited |
| CCIPPeer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55a67c...b60edc`](./contracts/ethereum-1/0x55a67cf07b8a9a09fb6d565279287cfe4ab60edc/); ethereum `0xd498e4...acc656` | ✅ Audited |
| CCIPPeer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xab3630...defa83`](./contracts/ethereum-1/0xab3630cef046e2dfafd327eb8b7b96d627defa83/); ethereum `0xdf1925...756e59` | ✅ Audited |
| CCIPPeer | unknown | bsc | n/a | [`0x5e3787...58d2f9`](./contracts/bsc-56/0x5e3787fd0bf2178eb15dc03eef893dac0258d2f9/) | ✅ Audited |
| CCIPPeer | unknown | sonic | n/a | 2 deployments: sonic [`0xab3630...defa83`](./contracts/sonic-146/0xab3630cef046e2dfafd327eb8b7b96d627defa83/); sonic `0xbefc7d...d6633d` | ✅ Audited |
| DelayRedeemRouter | unknown | ethereum | n/a | [`0x3c4c2f...8faeae`](./contracts/ethereum-1/0x3c4c2f4d6e45c23df2b02b94168a5f0d378faeae/) | ✅ Audited |
| DelayRedeemRouter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/); ethereum `0xaa732c...f89246` | ✅ Audited |
| DirectBTCMinter | unknown | ethereum | n/a | [`0x704a2f...9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/) | ✅ Audited |
| DirectBTCMinter | unknown | ethereum | n/a | [`0x91fd8c...d64500`](./contracts/ethereum-1/0x91fd8c7a5fda7d52ab41bbe423eedd3a65d64500/) | ✅ Audited |
| RockXETH | token | ethereum | n/a | 2 deployments: ethereum [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); ethereum `0x58cb26...9d187d` | ✅ Audited |
| RockXStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02e3e2...af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/); ethereum `0x11b380...66be7b` | ✅ Audited |
| RockXStaking | unknown | ethereum | n/a | 20 deployments: ethereum [`0x0bd74c...2d97bd`](./contracts/ethereum-1/0x0bd74cae2812599004c500b0330e8116112d97bd/); ethereum `0x10f91a...7723dc`; ethereum `0x1df46e...90ad93`; ethereum `0x3e904a...33eab5`; ethereum `0x3f924b...e5791b`; ethereum `0x413c36...4d1247`; ethereum `0x56adf8...c334db`; ethereum `0x5c9b33...02cfd7`; ethereum `0x5e8fd0...618ae0`; ethereum `0x62cea4...f1ca61`; ethereum `0x680d9f...40f565`; ethereum `0x774c97...f2070d`; ethereum `0x90687a...2fc487`; ethereum `0x9a74f7...630560`; ethereum `0x9ba573...f7c757`; ethereum `0x9c3749...88d6b2`; ethereum `0xc2cba4...221923`; ethereum `0xc92a22...cd0bde`; ethereum `0xd4408c...c779e8`; ethereum `0xf35df2...28a09d` | ✅ Audited |
| uniBTC | unknown | ethereum | n/a | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ✅ Audited |
| uniBTC | unknown | optimism | n/a | [`0x939197...2b593e`](./contracts/optimism-10/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| uniBTC | unknown | bsc | n/a | [`0x6b2a01...bd726a`](./contracts/bsc-56/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/) | ✅ Audited |
| uniBTC | unknown | sonic | n/a | [`0xc3827a...db6e90`](./contracts/sonic-146/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | ✅ Audited |
| uniBTC | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x939197...2b593e`](./contracts/hyperliquid-999/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/); hyperliquid `0xd3c8da...b1d58d`; hyperliquid `0xf97750...31ab18` | ✅ Audited |
| uniBTC | unknown | mantle | n/a | [`0x939197...2b593e`](./contracts/mantle-5000/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| uniBTC | unknown | base | n/a | 2 deployments: base [`0x552b0c...42fa05`](./contracts/base-8453/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); base `0x939197...2b593e` | ✅ Audited |
| uniBTC | unknown | arbitrum | n/a | [`0x6b2a01...bd726a`](./contracts/arbitrum-42161/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/) | ✅ Audited |
| uniBTC | unknown | berachain | n/a | [`0xc3827a...db6e90`](./contracts/berachain-80094/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | ✅ Audited |
| Vault | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/); ethereum `0x285afd...77b458`; ethereum `0x317b8e...876ef6`; ethereum `0x472372...108e45`; optimism `0xd3c8da...b1d58d`; bsc `0x08cb45...46775d`; bsc `0x8891c1...c9c533`; mantle `0xd3c8da...b1d58d`; mode `0x08cb45...46775d`; mode `0xfa8c3e...f41e5f`; arbitrum `0x08cb45...46775d`; arbitrum `0xfa8c3e...f41e5f` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultWithoutNative | core_logic | ethereum | n/a | [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/) | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | bsc | n/a | 2 deployments: bsc [`0x84e5c8...c26800`](./contracts/bsc-56/0x84e5c854a7ff9f49c888d69deca578d406c26800/); bsc `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | optimism | n/a | 2 deployments: optimism [`0x3376eb...61514a`](./contracts/optimism-10/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); optimism `0xf97750...31ab18` | ⚠️ Unaudited |
| EigenPod | core_logic | ethereum | n/a | [`0x926720...d01cce`](./contracts/ethereum-1/0x926720ae39114d0e2043b79570a1e08f00d01cce/) | ⚠️ Unaudited |
| RewardPool | core_logic | ethereum | n/a | [`0xb7019c...732064`](./contracts/ethereum-1/0xb7019c9184580b2e1f66fcdc3eb6c62621732064/) | ⚠️ Unaudited |
| Airdrop | unknown | ethereum | n/a | [`0x109228...19bda9`](./contracts/ethereum-1/0x109228348113fe837207e033fdbce3bb5f19bda9/) | ⚠️ Unaudited |
| Bedrock | unknown | bsc | n/a | [`0xff7d6a...f56b41`](./contracts/bsc-56/0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41/) | ⚠️ Unaudited |
| brBTC | unknown | base | n/a | 2 deployments: base [`0xa16113...2059be`](./contracts/base-8453/0xa161132371c94299d215915d4cbc3b629e2059be/); base `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| brBTC | unknown | base | n/a | 2 deployments: base [`0xd3c8da...b1d58d`](./contracts/base-8453/0xd3c8da379d71a33bfee8875f87ac2748beb1d58d/); base `0xf97750...31ab18` | ⚠️ Unaudited |
| brBTCOFTAdapter | adapter | ethereum | n/a | [`0xbefc7d...d6633d`](./contracts/ethereum-1/0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d/) | ⚠️ Unaudited |
| cuniBTC | unknown | ethereum | n/a | [`0x247918...af43f3`](./contracts/ethereum-1/0x2479185e254d5efea735fc6ff7fd921ff0af43f3/) | ⚠️ Unaudited |
| directBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/); ethereum `0xa70099...c0b090` | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | n/a | [`0xe8239b...5c4572`](./contracts/ethereum-1/0xe8239b17034c372cdf8a5f8d3ccb7cf1795c4572/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6f10dc...601370`](./contracts/ethereum-1/0x6f10dc7dc5ff3cbb7c18b324abdc05fade601370/); ethereum `0x79cf1c...e7c53d` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | linea | n/a | 3 deployments: arbitrum `0x3d15fd...e2c3a0`; linea [`0x15eefe...ef4d25`](./contracts/linea-59144/0x15eefe5b297136b8712291b632404b66a8ef4d25/); scroll [`0x15eefe...ef4d25`](./contracts/scroll-534352/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | ⚠️ Unaudited |
| Payment | unknown | ethereum | n/a | 2 deployments: ethereum [`0x552b0c...42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); ethereum `0x9203ce...718031` | ⚠️ Unaudited |
| PodOwner | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/); ethereum `0x7e8e03...288f20` | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | n/a | 9 deployments: ethereum `0x9f6326...e7f002`; ethereum `0xc3827a...db6e90`; bsc `0x79f2c3...449597`; sonic [`0x17c3b6...d551ab`](./contracts/sonic-146/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/); hyperliquid `0x9203ce...718031`; base `0x321c67...b42ef7`; base `0x886eaf...3616bf`; berachain [`0x17c3b6...d551ab`](./contracts/berachain-80094/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/); berachain `0x9203ce...718031` | ⚠️ Unaudited |
| Redeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x981692...1d3b8d`](./contracts/ethereum-1/0x98169228cb99ed26c1043ed8ca53a5cb371d3b8d/); ethereum `0x9ca778...3c5f8c` | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | 6 deployments: ethereum [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/); ethereum `0x4d6c23...7a9f04`; ethereum `0x595994...a0fa96`; ethereum `0x9c8725...a5f412`; ethereum `0x9cfbf2...d665d6`; ethereum `0xad8bd6...62b96a` | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e4d0a...c4e518`](./contracts/ethereum-1/0x1e4d0a963953e7c08fc7602b01e683547fc4e518/); ethereum `0x3f4eac...6e9850` | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x563a27...731fe5`](./contracts/ethereum-1/0x563a27728d298f21738ab694e95f344a42731fe5/); ethereum `0xb290be...69ec47` | ⚠️ Unaudited |
| RockXETH | token | ethereum | n/a | 2 deployments: ethereum [`0x79f2c3...449597`](./contracts/ethereum-1/0x79f2c32204e997d4d49de3d45a6130d627449597/); ethereum `0xd48d3e...905e11` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/); ethereum `0x5e3787...58d2f9` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89b2c7...740aeb`](./contracts/ethereum-1/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/); ethereum `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| Sigma | unknown | bsc | n/a | 2 deployments: bsc [`0x89b2c7...740aeb`](./contracts/bsc-56/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/); bsc `0x8cc6d6...853915` | ⚠️ Unaudited |
| Sigma | unknown | base | n/a | 2 deployments: base [`0x169185...9fb932`](./contracts/base-8453/0x16918506c3a1217328b507898aff58d62c9fb932/); base `0x4519c8...5f0caf` | ⚠️ Unaudited |
| Sigma | unknown | mode | n/a | [`0x1f6c2e...257b5a`](./contracts/mode-34443/0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a/) | ⚠️ Unaudited |
| Sigma | unknown | arbitrum | n/a | [`0x8cc6d6...853915`](./contracts/arbitrum-42161/0x8cc6d6135c7088fdb3ebfb39b11e7cb2f9853915/) | ⚠️ Unaudited |
| Sigma | unknown | berachain | n/a | 2 deployments: berachain [`0x563a27...731fe5`](./contracts/berachain-80094/0x563a27728d298f21738ab694e95f344a42731fe5/); berachain `0xb290be...69ec47` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4befa2...269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/); ethereum `0xf047d1...9df110` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c74e7...c51d6f`](./contracts/ethereum-1/0x5c74e737dad608f21b90e1d155f5571541c51d6f/); ethereum `0xe0240d...88dea3` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xa93322...4ffadd`](./contracts/ethereum-1/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0xf4954a...755024`](./contracts/ethereum-1/0xf4954ae0f18b236b643a4bf126e743f23f755024/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | 3 deployments: mode [`0x6b2a01...bd726a`](./contracts/mode-34443/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/); mode `0x84e5c8...c26800`; mode `0x8cc6d6...853915` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x20d702...634510`](./contracts/ethereum-1/0x20d70277afc6e1304b89fc1a30d84130f1634510/); ethereum `0xd8b81b...a6649c` | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51a7f8...db6c5e`](./contracts/ethereum-1/0x51a7f889480c57cbeea81614f7d0be2b70db6c5e/); mode `0x94c7f8...cce2b3` | ⚠️ Unaudited |
| uniBTCOFTAdapter | adapter | ethereum | n/a | [`0x50fa14...1b8190`](./contracts/ethereum-1/0x50fa1411201e2ac0361fb893e903b80f141b8190/) | ⚠️ Unaudited |
| uniBTCRate | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe54291...abc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/); ethereum `0xf50dba...bcdae9` | ⚠️ Unaudited |
| uniBTCRate | unknown | base | n/a | 2 deployments: base [`0x02643a...870c5e`](./contracts/base-8453/0x02643a61f03783b8897c11fbd7b255dc0e870c5e/); base `0xc651dd...c11680` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | sonic | n/a | 2 deployments: sonic [`0x20d702...634510`](./contracts/sonic-146/0x20d70277afc6e1304b89fc1a30d84130f1634510/); sonic `0xe1061f...838a8c` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | mantle | n/a | 2 deployments: mantle [`0x89b2c7...740aeb`](./contracts/mantle-5000/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/); mantle `0xf97750...31ab18` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | base | n/a | 2 deployments: base [`0x9f283b...dcfefb`](./contracts/base-8453/0x9f283b0401d9698e86097fdc44820bcbe5dcfefb/); base `0xd4b6b3...4a7509` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | arbitrum | n/a | [`0x84e5c8...c26800`](./contracts/arbitrum-42161/0x84e5c854a7ff9f49c888d69deca578d406c26800/) | ⚠️ Unaudited |
| VaultWithoutNative | unknown | berachain | n/a | 2 deployments: berachain [`0xa93322...4ffadd`](./contracts/berachain-80094/0xa93322a98335b791df87f20bb939fbe4d84ffadd/); berachain `0xe0240d...88dea3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| brBTC | proxy | unichain | n/a | 3 deployments: unichain [`0xa16113...2059be`](./contracts/unichain-130/0xa161132371c94299d215915d4cbc3b629e2059be/); hyperliquid [`0xa16113...2059be`](./contracts/hyperliquid-999/0xa161132371c94299d215915d4cbc3b629e2059be/); hyperliquid `0xdfc7d2...2b511e` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0fe418...dc12f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c914b...4c7e5f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69fd3e...21bbdb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x11b380...66be7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11b380...66be7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58cb26...9d187d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9203ce...718031` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | 2 deployments: unichain `0x939197...2b593e`; unichain `0xd3c8da...b1d58d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf97750...31ab18` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 2 deployments: ink `0xa16113...2059be`; ink `0xd3c8da...b1d58d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xdf1925...756e59` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe1061f...838a8c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-RockXStaking-v1.0.pdf](https://github.com/RockX-SG/stake/blob/main/PeckShield-Audit-Report-RockXStaking-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |
| [blocksec_bedrock_br_v1.0-signed.pdf](https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 8 | n/a |
| [blocksec_bedrock_unibtc_v1.0-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 27 | high |
| [PeckShield-Audit-Report-uniBTC-v1.0.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 15 | high |
| [code audit blocksec.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 9 | n/a |
| [PeckShield-Audit-Report-Bedrock-v1.0.pdf](https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf](https://github.com/RockX-SG/uniiotx/blob/main/docs/PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [blocksec_bedrock_unibtc_v1.1-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.1-signed.pdf) | BlockSec | Audit | 2024-11 | aging | Direct | contract_name | 27 | high |
| [PeckShield Audit Report RockX Eth Staking.pdf](https://github.com/Bedrock-Technology/docs/blob/main/PeckShield%20Audit%20Report%20RockX%20Eth%20Staking.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | 22 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xff7d6a...f56b41`](./contracts/bsc-56/0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41/) | Bedrock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbefc7d...d6633d`](./contracts/ethereum-1/0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d/) | brBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/) | directBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/) | PodOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/) | Restaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e4d0a...c4e518`](./contracts/ethereum-1/0x1e4d0a963953e7c08fc7602b01e683547fc4e518/) | Restaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa93322...4ffadd`](./contracts/ethereum-1/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51a7f8...db6c5e`](./contracts/ethereum-1/0x51a7f889480c57cbeea81614f7d0be2b70db6c5e/) | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50fa14...1b8190`](./contracts/ethereum-1/0x50fa1411201e2ac0361fb893e903b80f141b8190/) | uniBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02643a...870c5e`](./contracts/base-8453/0x02643a61f03783b8897c11fbd7b255dc0e870c5e/) | uniBTCRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 2 |
| standard_library | 31 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: contract_name=21, extraction_exact=91

Zero-match audit list:

- [12772] PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
