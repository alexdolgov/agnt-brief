# Agentic Audit Brief: Impermax Finance

## Project Overview

- Project: Impermax Finance (`impermax-finance`)
- Website: [https://impermax.finance/](https://impermax.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.909Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, avalanche, base, blast, canto, ethereum, fantom, linea, moonriver, optimism, polygon, scroll, sonic, unichain, zksync-era
- Contract surface: 458 unique implementations (508 raw deployments)
- DeFi Llama TVL: $730,737.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 31 project-authored contract(s) across 11 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 4 common project-authored base contract(s) (proxy, ifactory, pooltoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 508; live-surface contracts included: 508 (78 live, 430 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/34 (14.7%)
- Deployed-live implementations: 35 of 458 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/36
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 422
- Unique implementations: 458
- Raw deployments: 508
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 4 | 11.1% | 2024-04 |
| unknown | Tier 2 | 3 | 8.3% | 2024-01 |
| Guardian | Tier 2 | 1 | 2.8% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BDeployer | unknown | unichain | n/a | [`0x5ed5b9...90f133`](./contracts/unichain-130/0x5ed5b923e84eb005b48463ae07f3b1c84f90f133/) | ✅ Audited |
| CDeployer | unknown | unichain | n/a | [`0x8921c4...bf5ba9`](./contracts/unichain-130/0x8921c45382698295c4f7a6c753ef2799d0bf5ba9/) | ✅ Audited |
| Factory | registry | sonic | n/a | 5 deployments: polygon `0x7f7ad5...febcd3`; sonic [`0x26fca5...112b91`](./contracts/sonic-146/0x26fca5916c20d252feef7a58e39886d3d3112b91/); base `0x66ca66...7c2d9f`; avalanche `0xc7f24f...492739`; linea `0x7a9212...8ee746` | ✅ Audited |
| ImpermaxV3Factory | registry | unichain | n/a | 2 deployments: unichain [`0x50e711...c15e14`](./contracts/unichain-130/0x50e7116c4a9624a2d562ee0ab5209f3834c15e14/); base `0x870fd2...9fc120` | ✅ Audited |
| InitializedDistributor | operational_periphery | ethereum | n/a | [`0xaf82ee...8a87ab`](./contracts/ethereum-1/0xaf82ee9246a608484e8567fadbef64ac1b8a87ab/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgedToken | operational_periphery | linea | n/a | [`0xcf0f95...7c3841`](./contracts/linea-59144/0xcf0f95e34f25d1bb3d9cad3cbb2eb40dab7c3841/) | ⚠️ Unaudited |
| FactoryStable | registry | linea | n/a | 2 deployments: sonic `0x6e1e98...062564`; linea [`0x0d5433...130675`](./contracts/linea-59144/0x0d5433fee91fb2db9dd6a74267dd900ec2130675/) | ⚠️ Unaudited |
| IBEX | unknown | blast | n/a | 2 deployments: ethereum `0xf655c8...161dc6`; blast [`0x9f04b6...188e6a`](./contracts/blast-81457/0x9f04b6cefd5bcd67d76ab708f17553ce40188e6a/) | ⚠️ Unaudited |
| ImpermaxChef | unknown | moonriver | n/a | [`0xd299d5...4a7caa`](./contracts/moonriver-1285/0xd299d53fc3b09038765af2091a0647e2304a7caa/) | ⚠️ Unaudited |
| ImpermaxConfigManager | governance | sonic | n/a | 3 deployments: sonic [`0x1a3e33...73b37e`](./contracts/sonic-146/0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e/); base `0x9acafc...5dce7c`; linea `0x3a65e7...f1796a` | ⚠️ Unaudited |
| ImpermaxV2SolidlyRouter01 | adapter | blast | n/a | 4 deployments: sonic `0xb3b140...129331`; base `0x98b55c...8b78cd`; linea `0x6e658a...5caf31`; blast [`0x4891a7...5732fb`](./contracts/blast-81457/0x4891a732098084dc4bc7290775ffdd23ec5732fb/) | ⚠️ Unaudited |
| ImpermaxV2UniV2Router01 | adapter | base | n/a | 3 deployments: base [`0x46b9b1...b699df`](./contracts/base-8453/0x46b9b1a483f5e64a20bbbeecbf54224167b699df/); arbitrum `0x8f4065...0970fb`; arbitrum `0xf09d8f...1c2232` | ⚠️ Unaudited |
| ImpermaxV3UniV3Router01 | adapter | unichain | n/a | 2 deployments: unichain [`0x58c5ca...c822c5`](./contracts/unichain-130/0x58c5ca4ba713a9bbd2a95accbc9f545718c822c5/); arbitrum `0xe8cd0d...ac8459` | ⚠️ Unaudited |
| LendingVaultV2Factory | registry | base | n/a | 2 deployments: unichain `0xb0771d...59377c`; base [`0x77fb0f...dd9c8d`](./contracts/base-8453/0x77fb0ff573da1ec6ec0cadb31a8cf69a4bdd9c8d/) | ⚠️ Unaudited |
| LendingVaultWatcher01 | core_logic | unichain | n/a | [`0x638855...70d1ed`](./contracts/unichain-130/0x638855078c2190118cc8228e62ec4781e970d1ed/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | polygon | n/a | [`0x9c7213...984aba`](./contracts/polygon-137/0x9c7213207b5f8726164c96a76a4b9c0fbf984aba/) | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | avalanche | n/a | [`0x089d3d...f0c824`](./contracts/avalanche-43114/0x089d3daf549f99553c2182db24bc4336a4f0c824/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xb8a9a9...dec24f`](./contracts/base-8453/0xb8a9a92dfe1303728394dd0f8362a09962dec24f/) | ⚠️ Unaudited |
| PoolTokenRouter01 | adapter | linea | n/a | 4 deployments: unichain `0xe3fe59...34e4ec`; arbitrum `0x544dac...690cd8`; linea [`0x1c44fd...30aad0`](./contracts/linea-59144/0x1c44fd7514525e1669f6e316d66dcbb42930aad0/); blast `0xe0ea1c...27a9ff` | ⚠️ Unaudited |
| Router01 | adapter | ethereum | n/a | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | ⚠️ Unaudited |
| Router02 | adapter | avalanche | n/a | 3 deployments: polygon `0x7c79a1...a83ba0`; moonriver `0x3271cc...fa05d5`; avalanche [`0x3039c2...9f461f`](./contracts/avalanche-43114/0x3039c26f9126833baca8edbf61c761cd909f461f/) | ⚠️ Unaudited |
| Router03 | adapter | base | n/a | 14 deployments: ethereum `0x6271c6...d44e4f`; optimism `0x6c2198...3b776a`; polygon `0x697673...a06333`; polygon `0xf117a3...40a9c2`; sonic `0xac72b4...cc87c8`; sonic `0xcbdf79...f09654`; base [`0x21d9d4...281ebf`](./contracts/base-8453/0x21d9d4d17255d427a5f77d23fb9eb3c5cd281ebf/); base `0xc5d6cb...bc58f7`; arbitrum `0x58d966...f076d3`; arbitrum `0x9655c5...8b60b7`; avalanche `0xa8567d...11e4cf`; linea `0xc8bbc4...b468bc`; linea `0xeb81da...58926f`; blast `0x447b4e...713a02` | ⚠️ Unaudited |
| Router03Solidly | adapter | base | n/a | 4 deployments: polygon `0xd7f63a...956ac9`; base [`0x1ebc3b...bdb49f`](./contracts/base-8453/0x1ebc3b5911b99adde07944c75d9e03958abdb49f/); arbitrum `0x3b0368...97dd56`; avalanche `0xd18d2b...f5b8b8` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | scroll | n/a | [`0x78ab77...1ead5b`](./contracts/scroll-534352/0x78ab77f7d590fb101aa18affc238cbfea31ead5b/) | ⚠️ Unaudited |
| SimpleUniswapOracle | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x3271cc...fa05d5`](./contracts/polygon-137/0x3271cc175577465691e48196955e09d638fa05d5/); avalanche `0xc12e00...47fb6c` | ⚠️ Unaudited |
| StakedLPToken0212 | token | avalanche | n/a | 2 deployments: avalanche [`0x677dce...4821a6`](./contracts/avalanche-43114/0x677dce0683e6db30325cd97e8d04d138f34821a6/); avalanche `0xc532a2...bad1b1` | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase1 | registry | base | n/a | [`0x2a3221...0b62e8`](./contracts/base-8453/0x2a32215ba106039f5a96b6366338bdb9fb0b62e8/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase4 | registry | base | n/a | [`0x5b0694...00e86b`](./contracts/base-8453/0x5b06941953f97c13465f6b6e76e4f5b9f800e86b/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase5 | registry | sonic | n/a | [`0x543cc9...355d83`](./contracts/sonic-146/0x543cc9542314e0bec710eccd03586006df355d83/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase7 | registry | sonic | n/a | [`0x032bea...e1c92e`](./contracts/sonic-146/0x032bea464973692fe7d9b016232166356de1c92e/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyStable5 | registry | sonic | n/a | [`0x0e5f23...3fe70f`](./contracts/sonic-146/0x0e5f23675abab707d9f17da2ee883a77e13fe70f/) | ⚠️ Unaudited |
| StakedLPTokenSolidlyBase1 | token | avalanche | n/a | [`0x96f1f1...440ec1`](./contracts/avalanche-43114/0x96f1f13865f11e2ec0e15051415f420dac440ec1/) | ⚠️ Unaudited |
| StakingRouter | adapter | arbitrum | n/a | [`0xb323c5...0679b0`](./contracts/arbitrum-42161/0xb323c5bcb066ea69d90ac21d74b714b52f0679b0/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x566592...a2d57b`](./contracts/arbitrum-42161/0x56659245931cb6920e39c189d2a0e7dd0da2d57b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xf972da...b298f6`](./contracts/polygon-137/0xf972daced7c6b03223710c11413036d17eb298f6/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08650b...5b3293`](./contracts/ethereum-1/0x08650bb9dc722c9c8c62e79c2bafa2d3fc5b3293/); ethereum `0x8dcba0...79dd13`; ethereum `0xa00d47...847c91`; polygon `0x5f819f...26f8f5`; arbitrum `0xb7e5e7...6cc6c5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (422)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x03f75e...17e3c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x064aa6...d17fc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06eecf...adbf77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x073271...72214e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a5a31...dac31d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e1a3b...1323d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e60b6...d5b67e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f528f...fec29e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x113414...7c0e4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18011c...5a2aec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18cb23...7b55ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c813c...16e9c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e4cf6...498dc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2011b5...9e3c1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29d5ce...f1ddea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31864b...6de9eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3271cc...fa05d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34c8f7...99de59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x352527...343a16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363b2d...96bf59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x434547...b7686c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44121f...91e83d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5287ca...264b69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58fde5...93dce2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59af72...3ba8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b87c4...fa839f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ce1a9...f4f84d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6032e0...ed0bfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6418bd...e3ab5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69cc62...61a8ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69de2d...01f24e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x718cd1...9a0c98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72fe32...6c6a47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75218d...f59b3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aff0b...72ee9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b35ce...764a00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8485e1...85e420` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87da8b...c2a845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a966c...336335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ce9fd...c51d53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99cf05...3451f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b2ab7...d6c297` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6d3da...fa6fd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6f3c2...fb3160` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb10ae9...8506e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2a139...9029bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5c04c...11596c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc12e00...47fb6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc65d78...e40bec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccb284...9376c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccddd7...0d12a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf6d10...44db79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf8a53...21363c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd13fbc...932da9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc4baf...296f60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde1439...88440f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde182e...c86266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeac319...b88ec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf14f98...269cff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa3eb9...0fc2ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcdf28...6e145c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x481684...b1a80c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7c87fa...eb1fa2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x81a77a...4c3c0a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa8f216...72dc44` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xaea67e...407055` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x367c0f...5d5694` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3ee621...9e684f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x732113...fc0448` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xdaa6ea...671f0c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf0b166...9e334d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x06607c...605ec5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08db22...2deba1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a3001...c03565` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c4aed...318f92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x113414...7c0e4f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x142304...ff1bbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14f11f...51422f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x163816...b6ed02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x174e4d...73ccdd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18011c...5a2aec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19d8a5...b7e3b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a645b...155fe4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c813c...16e9c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d0d87...82639b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e4cf6...498dc7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2011b5...9e3c1d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23d197...202c60` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2585d1...cc8053` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25a7ee...fac9bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x285a9f...e557c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x30d508...8b6790` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x385338...6fe25f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a9067...d9316a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3fdb0c...ff5c0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x40aa8c...0d194b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x42f325...e02cf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45e0ee...65531c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x462bce...ed23ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ae11d...6ca85e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e25d9...4388d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e69cf...434736` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50d6b3...a4fc3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x528e02...c5c02c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57efd4...481187` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5dd327...44dd65` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eaa5d...0cae95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x60f57c...8966c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61522e...f96fbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x616993...c6a826` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62c8a8...67e738` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6659a9...b4dcd2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x66cda0...b009e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67c270...b0af39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6cff38...6478a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x718cd1...9a0c98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x748a6e...ae80e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x750d0c...8c52ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ce2f6...d05a62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ed6ef...9c7ac2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x846019...6a38c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8485e1...85e420` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89703c...8c6f7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d17eb...11b74b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e4562...7b5899` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x963432...bccad3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x963add...b146e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9993fc...141992` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99cf05...3451f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b2ab7...d6c297` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b4ae9...7a945b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c18ad...05aa2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9cd422...de7874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9cef7f...fea685` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d2d08...104bb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ee87b...a79974` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6d3da...fa6fd8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa876f9...168252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae8dcd...946161` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf82ee...8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb07c75...4ba78e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb116e5...0d8eb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2a139...9029bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb440b6...e02b61` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb44dc3...c9ab17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5a0d8...afa3c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb843a5...4b7d3a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9de27...f35fae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb65e4...f4e858` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfd646...cca6e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc12e00...47fb6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc35d2e...c30743` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4505c...9259a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6e017...fa0f77` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc75094...c40937` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc81327...3a9174` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc8474d...96f080` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcaf3fb...bee209` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb30a6...8bb6cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb779e...e7f7e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf16ff...8db126` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd129cc...5b9e31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd13fbc...932da9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1cf8a...e82458` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4bc18...f75af3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd7219c...e5ba68` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb7631...03a4e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbdf5c...346c6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdc57f7...7364e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe17bd9...140c4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2d46b...b55820` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe564d3...a186aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe63fd1...210484` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0f25a...f86c30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf1e302...d442df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4298f...0274e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf47b65...af04f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf61d89...a9bc9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf683dc...066173` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf88a7f...5a7534` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9221c...58862e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa3378...07f829` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa3eb9...0fc2ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb1f0f...8c4872` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb8bd4...4932e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbd9e5...c7157b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff5d1a...c1face` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0680ad...da3b2f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1d3258...748cc5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x26c37d...760dd8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x323f07...8e9cfe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x34dcf5...1843b8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55d1d7...fd3920` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x58fe05...920907` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66ae73...dc79aa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ad28b...08ad57` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6f9d1f...05d2ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a9212...8ee746` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa39d28...0a4b19` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa40312...8a24d0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb84bba...0cde2b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe770c8...03c6a9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8d69d...99dfb7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeb81da...58926f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf8be0f...f94787` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfe7ca6...80ab9c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 8 deployments: fantom `0x60ae5f...624556`; fantom `0x877a33...73eb1c`; fantom `0x958876...211256`; fantom `0x9b4ae9...7a945b`; fantom `0xb97b6e...e6c696`; fantom `0xb9f341...cf94fc`; canto `0x6ce1a2...b46e36`; canto `0x9708e0...d898e6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbe9f8c...47991d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x31864b...6de9eb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x352527...343a16` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x772a82...bda66e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8ab356...ded78d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x958876...211256` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb9f341...cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc12e00...47fb6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02d059...c22789` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x053ed4...732284` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x098783...4b8da5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x099b4b...01f3f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09f651...4daca4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c77aa...ab01bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0dc6f1...d02ef6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x125b0f...0b03f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x158ce1...2d8cb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x168ed1...03c743` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x175712...a47685` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c379e...be748f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c7910...b2beda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1cf6c3...847286` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x207075...cf60fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22c69f...40b65f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25308e...0fd7a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c9b43...2aa2d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x336820...cd3f5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33d9c3...795b40` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3406bb...dc7a07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d461d...a3ff19` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d90e9...3f55e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e9323...5d2693` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3fecf5...fe0fd4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4189ea...6a2294` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43632c...fd2001` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47183b...67cd00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47d568...afb198` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4fa795...39a83c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52915e...aa8829` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x536475...41c8b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x562398...6be460` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57ef32...aa9ff4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x585886...1c4288` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e2bb3...dc7957` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6851fc...771b4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6878c4...d4c4ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69b906...c6b4ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x731318...f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73c222...54f31f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83146a...bc0f5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88d363...06c45c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8adc5f...8b9d86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e7aab...d8eace` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8f50a6...eebafb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9111b8...4c52c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a80a0...fe368c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa20ba6...d92cf7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2a97a...3e17a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa33366...5fbc63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4a488...6dc0b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa57537...866f9c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa78bcf...063587` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa83a38...8a76dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaea22d...ae24fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf4723...af87fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0b8c9...09c9da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb2d7e9...f0a854` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb93cef...4fc137` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd218d...a4808e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0e036...878efc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc10d01...138458` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc197e1...936fba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc123c...0f1fc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccaf24...6e33d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd29fcf...d89b56` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3a261...740b1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4173e...296062` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5e448...76ef00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd971c3...a91cbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9b43f...808042` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdad9a6...b1e624` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdeb4f0...dabff6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf07d0...73b1aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdfe624...c289e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6eaf2...2fe574` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb2739...5250a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec982e...a7a8cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecec58...83a6d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed204b...b65ed3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf00850...78f1e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf14e7f...8e897c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf60f5d...b5f0f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfa13d3...fddf6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfa9487...c854b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02f5cc...badfef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09d5b2...9f1510` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b13be...6ff623` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x111eee...46e5d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cb9db...8d322a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x268bb0...6b0b2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x272056...4ea78f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b1adf...59437b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30d7ef...116bb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3373fa...e4af20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3415c5...c8d678` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3be7b5...d47b37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4073f6...b16ecd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ae11d...6ca85e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ae891...053466` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4dc48b...2ec1df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ff326...bf7eb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63be5e...f27ccd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e6a0c...978869` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x716dbb...4fd7cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78a225...894708` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7972d5...620408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ce2f6...d05a62` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9708e0...d898e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97bc7f...8771c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x990144...c3c40f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4a8d7...93912f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf82ee...8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb09aad...eb0be2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8b6f1...28e774` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc1bb9...2a0cac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbce93e...ece45f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf16ff...8db126` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0543e...154bd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9aca9...ede063` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbea7c...290653` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd7ac6...59da0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1b9cd...78d86e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe668a9...1d2021` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8d14b...208f42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf540e9...bf86ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf655c8...161dc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6d20b...ee207c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf82e30...a6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb8bd4...4932e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc637e...d3b9f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ad3e5...766fd3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16ed59...461282` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21a7ec...376bba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2514a2...a37043` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x31864b...6de9eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3271cc...fa05d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x462bce...ed23ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5475ae...eb086f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5671b2...12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58fde5...93dce2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e1690...43127d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7ce2f6...d05a62` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7eb705...bc619c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87da8b...c2a845` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8b07b0...864d0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c3736...5b767b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9141b3...03a201` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x958876...211256` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9708e0...d898e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad5871...5d8f0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf82ee...8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb9f341...cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb9227...4064d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc1bb9...2a0cac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc596f6...91e295` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xca45c0...8d0f49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe611a9...46c4e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf655c8...161dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfb48b6...88ad63` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x121f8c...f15d80` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1a3e33...73b37e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x39d0b5...b07a84` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50bd4c...8cf0b6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x543cc9...355d83` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6180cf...055205` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x67a76a...d8e4d9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9a7299...ffd10b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb03787...036ca7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc3a05f...778bc4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcbdf79...f09654` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd2a146...d57e64` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe589c9...96c19b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfe7ca6...80ab9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x078288...05005e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0ec372...676849` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x143688...6296cc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x18548c...cd85f8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x264bf8...eaafb6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29c714...41d62f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d0b5a...c32c4b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x53e326...e8fa0c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x57f928...45fd20` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5833c2...f5b288` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5de4c7...e30cb6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6b39b9...63390d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x77ab0b...3ba42f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7b816c...f6ef87` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87b339...b32577` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8c95c1...7aa31b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xab2c17...d4f99b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb33f0f...d4a2f3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb3c80c...d89f6c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd02db9...9da3d1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe16f15...6ed236` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xebb23f...ea3a40` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0354f...42692d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf33e32...1cac45` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfff3c0...b97be1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-02-08_Impermax.pdf](https://github.com/GuardianAudits/Audits/blob/main/Impermax/2025-02-08_Impermax.pdf) | Guardian | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [Bailsec - Impermax - V3 Core - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Impermax%20-%20V3%20Core%20-%20Final%20Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 3 | n/a |
| [CertiK Audit Report for impermax-x-uniswapv2-core.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-core/blob/main/audit/CertiK%20Audit%20Report%20for%20impermax-x-uniswapv2-core.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | 3 | n/a |
| [SC_impermax_core.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-core/blob/main/audit/SC_impermax_core.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZSqnl0TPTc6pWBHLuHur%2Fuploads%2FQLbxcYMLJhQNoWJKXQo6%2FImpermax%20Tokenized%20Aerodrome%20Report.pdf?alt=media) | Guardian | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZSqnl0TPTc6pWBHLuHur%2Fuploads%2Fc5KfXIpov0BrQvrkHSFU%2FImpermax-Report.pdf?alt=media) | Guardian, Bailsec, Cantina | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [CertiK Audit Report for IMX.pdf](https://github.com/Impermax-Finance/IMX/blob/main/audit/CertiK%20Audit%20Report%20for%20IMX.pdf) | CertiK | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [SC_impermax_periphery.pdf](https://github.com/Impermax-Finance/impermax-x-uniswapv2-periphery/blob/main/audit/SC_impermax_periphery.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SC_impermax_oracle.pdf](https://github.com/Impermax-Finance/simple-uniswap-oracle/blob/main/audit/SC_impermax_oracle.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0xcf0f95...7c3841`](./contracts/linea-59144/0xcf0f95e34f25d1bb3d9cad3cbb2eb40dab7c3841/) | BridgedToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0d5433...130675`](./contracts/linea-59144/0x0d5433fee91fb2db9dd6a74267dd900ec2130675/) | FactoryStable | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x9f04b6...188e6a`](./contracts/blast-81457/0x9f04b6cefd5bcd67d76ab708f17553ce40188e6a/) | IBEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xd299d5...4a7caa`](./contracts/moonriver-1285/0xd299d53fc3b09038765af2091a0647e2304a7caa/) | ImpermaxChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1a3e33...73b37e`](./contracts/sonic-146/0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e/) | ImpermaxConfigManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4891a7...5732fb`](./contracts/blast-81457/0x4891a732098084dc4bc7290775ffdd23ec5732fb/) | ImpermaxV2SolidlyRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46b9b1...b699df`](./contracts/base-8453/0x46b9b1a483f5e64a20bbbeecbf54224167b699df/) | ImpermaxV2UniV2Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x58c5ca...c822c5`](./contracts/unichain-130/0x58c5ca4ba713a9bbd2a95accbc9f545718c822c5/) | ImpermaxV3UniV3Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77fb0f...dd9c8d`](./contracts/base-8453/0x77fb0ff573da1ec6ec0cadb31a8cf69a4bdd9c8d/) | LendingVaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x638855...70d1ed`](./contracts/unichain-130/0x638855078c2190118cc8228e62ec4781e970d1ed/) | LendingVaultWatcher01 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9c7213...984aba`](./contracts/polygon-137/0x9c7213207b5f8726164c96a76a4b9c0fbf984aba/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x089d3d...f0c824`](./contracts/avalanche-43114/0x089d3daf549f99553c2182db24bc4336a4f0c824/) | MultiBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb8a9a9...dec24f`](./contracts/base-8453/0xb8a9a92dfe1303728394dd0f8362a09962dec24f/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1c44fd...30aad0`](./contracts/linea-59144/0x1c44fd7514525e1669f6e316d66dcbb42930aad0/) | PoolTokenRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e1690...43127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3039c2...9f461f`](./contracts/avalanche-43114/0x3039c26f9126833baca8edbf61c761cd909f461f/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21d9d4...281ebf`](./contracts/base-8453/0x21d9d4d17255d427a5f77d23fb9eb3c5cd281ebf/) | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ebc3b...bdb49f`](./contracts/base-8453/0x1ebc3b5911b99adde07944c75d9e03958abdb49f/) | Router03Solidly | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3271cc...fa05d5`](./contracts/polygon-137/0x3271cc175577465691e48196955e09d638fa05d5/) | SimpleUniswapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x677dce...4821a6`](./contracts/avalanche-43114/0x677dce0683e6db30325cd97e8d04d138f34821a6/) | StakedLPToken0212 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2a3221...0b62e8`](./contracts/base-8453/0x2a32215ba106039f5a96b6366338bdb9fb0b62e8/) | StakedLPTokenFactorySolidlyBase1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b0694...00e86b`](./contracts/base-8453/0x5b06941953f97c13465f6b6e76e4f5b9f800e86b/) | StakedLPTokenFactorySolidlyBase4 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x543cc9...355d83`](./contracts/sonic-146/0x543cc9542314e0bec710eccd03586006df355d83/) | StakedLPTokenFactorySolidlyBase5 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x032bea...e1c92e`](./contracts/sonic-146/0x032bea464973692fe7d9b016232166356de1c92e/) | StakedLPTokenFactorySolidlyBase7 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0e5f23...3fe70f`](./contracts/sonic-146/0x0e5f23675abab707d9f17da2ee883a77e13fe70f/) | StakedLPTokenFactorySolidlyStable5 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x96f1f1...440ec1`](./contracts/avalanche-43114/0x96f1f13865f11e2ec0e15051415f420dac440ec1/) | StakedLPTokenSolidlyBase1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb323c5...0679b0`](./contracts/arbitrum-42161/0xb323c5bcb066ea69d90ac21d74b714b52f0679b0/) | StakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x566592...a2d57b`](./contracts/arbitrum-42161/0x56659245931cb6920e39c189d2a0e7dd0da2d57b/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf972da...b298f6`](./contracts/polygon-137/0xf972daced7c6b03223710c11413036d17eb298f6/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 422 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=8

Zero-match audit list:

- [16480] SC_impermax_core.pdf
- [16483] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/QLbxcYMLJhQNoWJKXQo6/Impermax Tokenized Aerodrome Report.pdf
- [16484] spaces/ZSqnl0TPTc6pWBHLuHur/uploads/c5KfXIpov0BrQvrkHSFU/Impermax-Report.pdf
- [16486] SC_impermax_periphery.pdf
- [16487] SC_impermax_oracle.pdf

Fork inheritance lineage and inherited audits are included when available.
