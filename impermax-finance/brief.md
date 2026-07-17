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
| BDeployer | unknown | unichain | n/a | [`0x5ed5b923e84eb005b48463ae07f3b1c84f90f133`](./contracts/unichain-130/0x5ed5b923e84eb005b48463ae07f3b1c84f90f133/) | ✅ Audited |
| CDeployer | unknown | unichain | n/a | [`0x8921c45382698295c4f7a6c753ef2799d0bf5ba9`](./contracts/unichain-130/0x8921c45382698295c4f7a6c753ef2799d0bf5ba9/) | ✅ Audited |
| Factory | registry | sonic | n/a | 5 deployments: polygon `0x7f7ad5b16c97aa9c2b0447c2676ce7d5cefebcd3`; sonic [`0x26fca5916c20d252feef7a58e39886d3d3112b91`](./contracts/sonic-146/0x26fca5916c20d252feef7a58e39886d3d3112b91/); base `0x66ca66e002a9cee8defe25db6f0c6225117c2d9f`; avalanche `0xc7f24fd6329738320883ba429c6c8133e6492739`; linea `0x7a9212d34dd283e952f8f15f084832e9b48ee746` | ✅ Audited |
| ImpermaxV3Factory | registry | unichain | n/a | 2 deployments: unichain [`0x50e7116c4a9624a2d562ee0ab5209f3834c15e14`](./contracts/unichain-130/0x50e7116c4a9624a2d562ee0ab5209f3834c15e14/); base `0x870fd2c2b502db53d3c9e19ab99725c1129fc120` | ✅ Audited |
| InitializedDistributor | operational_periphery | ethereum | n/a | [`0xaf82ee9246a608484e8567fadbef64ac1b8a87ab`](./contracts/ethereum-1/0xaf82ee9246a608484e8567fadbef64ac1b8a87ab/) | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgedToken | operational_periphery | linea | n/a | [`0xcf0f95e34f25d1bb3d9cad3cbb2eb40dab7c3841`](./contracts/linea-59144/0xcf0f95e34f25d1bb3d9cad3cbb2eb40dab7c3841/) | ⚠️ Unaudited |
| FactoryStable | registry | linea | n/a | 2 deployments: sonic `0x6e1e988d828d0102bf93434774cd1a2246062564`; linea [`0x0d5433fee91fb2db9dd6a74267dd900ec2130675`](./contracts/linea-59144/0x0d5433fee91fb2db9dd6a74267dd900ec2130675/) | ⚠️ Unaudited |
| IBEX | unknown | blast | n/a | 2 deployments: ethereum `0xf655c8567e0f213e6c634cd2a68d992152161dc6`; blast [`0x9f04b6cefd5bcd67d76ab708f17553ce40188e6a`](./contracts/blast-81457/0x9f04b6cefd5bcd67d76ab708f17553ce40188e6a/) | ⚠️ Unaudited |
| ImpermaxChef | unknown | moonriver | n/a | [`0xd299d53fc3b09038765af2091a0647e2304a7caa`](./contracts/moonriver-1285/0xd299d53fc3b09038765af2091a0647e2304a7caa/) | ⚠️ Unaudited |
| ImpermaxConfigManager | governance | sonic | n/a | 3 deployments: sonic [`0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e`](./contracts/sonic-146/0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e/); base `0x9acafcb281e94eab771d0cf6508c92a4b75dce7c`; linea `0x3a65e736b534b3a3703eb081b93118852bf1796a` | ⚠️ Unaudited |
| ImpermaxV2SolidlyRouter01 | adapter | blast | n/a | 4 deployments: sonic `0xb3b140dbcbc649eceac74f30487a338e9d129331`; base `0x98b55cd14450f56355cdefa74d9443d9c48b78cd`; linea `0x6e658ac2f3c061719c52fb1e56b064ce165caf31`; blast [`0x4891a732098084dc4bc7290775ffdd23ec5732fb`](./contracts/blast-81457/0x4891a732098084dc4bc7290775ffdd23ec5732fb/) | ⚠️ Unaudited |
| ImpermaxV2UniV2Router01 | adapter | base | n/a | 3 deployments: base [`0x46b9b1a483f5e64a20bbbeecbf54224167b699df`](./contracts/base-8453/0x46b9b1a483f5e64a20bbbeecbf54224167b699df/); arbitrum `0x8f4065d7cf393e1e82cc6141dc638431c70970fb`; arbitrum `0xf09d8f374bab880d7abdd6ebe34e3e62eb1c2232` | ⚠️ Unaudited |
| ImpermaxV3UniV3Router01 | adapter | unichain | n/a | 2 deployments: unichain [`0x58c5ca4ba713a9bbd2a95accbc9f545718c822c5`](./contracts/unichain-130/0x58c5ca4ba713a9bbd2a95accbc9f545718c822c5/); arbitrum `0xe8cd0de416e98df926ff318d96e5049d4dac8459` | ⚠️ Unaudited |
| LendingVaultV2Factory | registry | base | n/a | 2 deployments: unichain `0xb0771d3eda8f100669c906af751612f54959377c`; base [`0x77fb0ff573da1ec6ec0cadb31a8cf69a4bdd9c8d`](./contracts/base-8453/0x77fb0ff573da1ec6ec0cadb31a8cf69a4bdd9c8d/) | ⚠️ Unaudited |
| LendingVaultWatcher01 | core_logic | unichain | n/a | [`0x638855078c2190118cc8228e62ec4781e970d1ed`](./contracts/unichain-130/0x638855078c2190118cc8228e62ec4781e970d1ed/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | polygon | n/a | [`0x9c7213207b5f8726164c96a76a4b9c0fbf984aba`](./contracts/polygon-137/0x9c7213207b5f8726164c96a76a4b9c0fbf984aba/) | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | avalanche | n/a | [`0x089d3daf549f99553c2182db24bc4336a4f0c824`](./contracts/avalanche-43114/0x089d3daf549f99553c2182db24bc4336a4f0c824/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xb8a9a92dfe1303728394dd0f8362a09962dec24f`](./contracts/base-8453/0xb8a9a92dfe1303728394dd0f8362a09962dec24f/) | ⚠️ Unaudited |
| PoolTokenRouter01 | adapter | linea | n/a | 4 deployments: unichain `0xe3fe59fb4237a1d49c721e517b3c6cfc7f34e4ec`; arbitrum `0x544dac9eb8f2d0bfeb9637180f7a751be1690cd8`; linea [`0x1c44fd7514525e1669f6e316d66dcbb42930aad0`](./contracts/linea-59144/0x1c44fd7514525e1669f6e316d66dcbb42930aad0/); blast `0xe0ea1c8b37ab5ed7715f708930afab27d727a9ff` | ⚠️ Unaudited |
| Router01 | adapter | ethereum | n/a | [`0x5e169082fff23cee6766062b96051a78c543127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | ⚠️ Unaudited |
| Router02 | adapter | avalanche | n/a | 3 deployments: polygon `0x7c79a1c2152665273ebd50e9e88d92a887a83ba0`; moonriver `0x3271cc175577465691e48196955e09d638fa05d5`; avalanche [`0x3039c26f9126833baca8edbf61c761cd909f461f`](./contracts/avalanche-43114/0x3039c26f9126833baca8edbf61c761cd909f461f/) | ⚠️ Unaudited |
| Router03 | adapter | base | n/a | 14 deployments: ethereum `0x6271c6d2cf5072d769a16ed99c8d5f3272d44e4f`; optimism `0x6c21983b79d97d7789872cdc08dc90e0153b776a`; polygon `0x69767394c72240275a7a6cced1f1a7960aa06333`; polygon `0xf117a35038cdcffaaea6f953438e048d9440a9c2`; sonic `0xac72b40a14375c4b11fa469a0616af9bb2cc87c8`; sonic `0xcbdf792456367a91708c0036e0678ecfb1f09654`; base [`0x21d9d4d17255d427a5f77d23fb9eb3c5cd281ebf`](./contracts/base-8453/0x21d9d4d17255d427a5f77d23fb9eb3c5cd281ebf/); base `0xc5d6cb2205349cc94684e7acf012751344bc58f7`; arbitrum `0x58d966725ee8fcd93caf7c98c0c8f9b34ef076d3`; arbitrum `0x9655c5a1adb30ec5a3a7ad5d06abede8468b60b7`; avalanche `0xa8567d1229ccab63e3a834cd29066a063911e4cf`; linea `0xc8bbc42b546d25c411b9bd42cddda12c00b468bc`; linea `0xeb81da0cac9d3efc4bf3270080936c6a5758926f`; blast `0x447b4e5c469b76a1f7175ce7b224629091713a02` | ⚠️ Unaudited |
| Router03Solidly | adapter | base | n/a | 4 deployments: polygon `0xd7f63a4f2d317b51e84e64cb0d1edb9f70956ac9`; base [`0x1ebc3b5911b99adde07944c75d9e03958abdb49f`](./contracts/base-8453/0x1ebc3b5911b99adde07944c75d9e03958abdb49f/); arbitrum `0x3b03681d1a46b473f0074cd2c4d27f086497dd56`; avalanche `0xd18d2b8baad0078593a3c020cc3c6c5cd2f5b8b8` | ⚠️ Unaudited |
| ScrollStandardERC20 | token | scroll | n/a | [`0x78ab77f7d590fb101aa18affc238cbfea31ead5b`](./contracts/scroll-534352/0x78ab77f7d590fb101aa18affc238cbfea31ead5b/) | ⚠️ Unaudited |
| SimpleUniswapOracle | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x3271cc175577465691e48196955e09d638fa05d5`](./contracts/polygon-137/0x3271cc175577465691e48196955e09d638fa05d5/); avalanche `0xc12e00de204d58ead5b5ce9054e94aee7747fb6c` | ⚠️ Unaudited |
| StakedLPToken0212 | token | avalanche | n/a | 2 deployments: avalanche [`0x677dce0683e6db30325cd97e8d04d138f34821a6`](./contracts/avalanche-43114/0x677dce0683e6db30325cd97e8d04d138f34821a6/); avalanche `0xc532a2885027677c4be61f710f7d41941dbad1b1` | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase1 | registry | base | n/a | [`0x2a32215ba106039f5a96b6366338bdb9fb0b62e8`](./contracts/base-8453/0x2a32215ba106039f5a96b6366338bdb9fb0b62e8/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase4 | registry | base | n/a | [`0x5b06941953f97c13465f6b6e76e4f5b9f800e86b`](./contracts/base-8453/0x5b06941953f97c13465f6b6e76e4f5b9f800e86b/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase5 | registry | sonic | n/a | [`0x543cc9542314e0bec710eccd03586006df355d83`](./contracts/sonic-146/0x543cc9542314e0bec710eccd03586006df355d83/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyBase7 | registry | sonic | n/a | [`0x032bea464973692fe7d9b016232166356de1c92e`](./contracts/sonic-146/0x032bea464973692fe7d9b016232166356de1c92e/) | ⚠️ Unaudited |
| StakedLPTokenFactorySolidlyStable5 | registry | sonic | n/a | [`0x0e5f23675abab707d9f17da2ee883a77e13fe70f`](./contracts/sonic-146/0x0e5f23675abab707d9f17da2ee883a77e13fe70f/) | ⚠️ Unaudited |
| StakedLPTokenSolidlyBase1 | token | avalanche | n/a | [`0x96f1f13865f11e2ec0e15051415f420dac440ec1`](./contracts/avalanche-43114/0x96f1f13865f11e2ec0e15051415f420dac440ec1/) | ⚠️ Unaudited |
| StakingRouter | adapter | arbitrum | n/a | [`0xb323c5bcb066ea69d90ac21d74b714b52f0679b0`](./contracts/arbitrum-42161/0xb323c5bcb066ea69d90ac21d74b714b52f0679b0/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x56659245931cb6920e39c189d2a0e7dd0da2d57b`](./contracts/arbitrum-42161/0x56659245931cb6920e39c189d2a0e7dd0da2d57b/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xf972daced7c6b03223710c11413036d17eb298f6`](./contracts/polygon-137/0xf972daced7c6b03223710c11413036d17eb298f6/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08650bb9dc722c9c8c62e79c2bafa2d3fc5b3293`](./contracts/ethereum-1/0x08650bb9dc722c9c8c62e79c2bafa2d3fc5b3293/); ethereum `0x8dcba0b75c1038c4babbdc0ff3bd9a8f6979dd13`; ethereum `0xa00d47b4b304792eb07b09233467b690db847c91`; polygon `0x5f819f510ca9b1469e6a3ffe4ecd7f0c1126f8f5`; arbitrum `0xb7e5e74b52b9ada1042594cfd8abbdee506cc6c5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x03f75e626cacb190e0f6072cf5ec5b304517e3c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x064aa6fd8d407da9a4e39d09aaa74a445fd17fc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06eecfc49e35805b1098e341c8fbe22c5fadbf77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x073271a5da4e9ee4afde9ff08801feb2c672214e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a5a31c86d077b71e10fe47687b1d242dadac31d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e1a3b46cbf4f2e900405359863642e7011323d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e60b6d3acc3e0318cff6d035182d1224dd5b67e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f528f19521fde0140668b9eb14025054bfec29e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11341455ff53af5fb1194680f20d932c287c0e4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18011c2a97fad6c3652570846ee39525f55a2aec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18cb23d90b21acd0592c8dd1319c4c9c847b55ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c813cdd6daece2cb83c52f0798504e42816e9c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e4cf69d3bdefe1ddec9fb6773c8a661f6498dc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2011b5d4d5287cc9d3462b4e8af0e4daf29e3c1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29d5ce86f42d7671b5be9da9108cc92c9ef1ddea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31864bc58a47a4fc8782b4135873788e876de9eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3271cc175577465691e48196955e09d638fa05d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34c8f7a53e10c17fddf7ee5048c097569d99de59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x352527924ffcd71ec88ab0817b97595ece343a16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363b2deac84f0100d63c7427335f8350f596bf59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x434547433e383c505e76f22f4174d7ba68b7686c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44121f2ea4935c0badf87f11ffaf14f62a91e83d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5287cac629be59997602b4177cb4420165264b69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58fde5bdb2c6bd828bc41c12a68189c7cd93dce2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59af721901db65eccf8f3b98ac4516d2f83ba8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b87c4a5c02a42ddc5a90af48ab279881ffa839f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ce1a91cdba3b69d3e280c0eac9ea49659f4f84d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6032e07e5117907af8b8d24426c4a99647ed0bfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6418bdfea0051ee01880b50b1bb7c50b1de3ab5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69cc62d02449826075ca9f9601b400c97e61a8ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69de2d1ab39491f08f421b0f74c977f1df01f24e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x718cd1d06094b53de74de745c4ead3ac629a0c98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72fe3214b28f73011ac4d8469f8a69057e6c6a47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75218df31092a42e1b4ff2586a102002d4f59b3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aff0b7846a5a8aede720d902e7c8e401172ee9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b35ce522cb72e4077baeb96cb923a5529764a00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8485e1327de53ead0842697ab669f45c8e85e420` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87da8bab9fbd09593f2368dc2f6fac3f80c2a845` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a966ce90ee5d49ca78c0f1bb9ee4e34be336335` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c3736e2fe63cc2cd89ee228d9dbcab6ce5b767b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ce9fda9ccdba7a85f894937a4c7eb9f0dc51d53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99cf05461dd5f94761d4fae6a2abda47a93451f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b2ab75118185761ff95b9cad8124b622ad6c297` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6d3da5ef0057542e151d8aab9ef818008fa6fd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6f3c27f1b503221f3a3c9d34f587252ecfb3160` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb10ae97fc2ab688b624217812de04756b58506e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2a1397360831a20bca454a9bd582682e19029bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5c04ca0fc3c74f7b82de6f8f2072ac32411596c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb92270716c8c424849f17ccc12f4f24ad4064d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc12e00de204d58ead5b5ce9054e94aee7747fb6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc65d78707b1fbb8f3d65fc4b3e41b29efce40bec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccb284c85c595912c87e51a36637830d929376c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccddd7ded876860d1848e93a58f2f44e0e0d12a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf6d10214554de53bd791a2e70bdd95e4844db79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf8a533d12bdb051cfbb3f41a08a090b3021363c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd13fbc8f753d59d6fd945c3562c14d2044932da9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc4baf3b4b1df79083eedf3e46ec2c4ec1296f60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde14396dddd1e261eab39bc6350a3ca0f088440f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde182ecd28ab3486c51b499296832baf1ec86266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeac319b32c332c233b9abc96ac648fbae0b88ec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf14f98e6f34c12bd74fceac1668af749fc269cff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa3eb94c41e432e563dc2666b8ea8deaee0fc2ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcdf28f887a6dbfe2b2baa650c726343456e145c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x48168439ca4ef9e95975e3e2488bfcbd8fb1a80c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7c87fa01a06d71e02e2412532088ccf9d0eb1fa2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x81a77ad04ccc6c2d93a8c3e02925ea5e234c3c0a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa8f216da6d8f8619e9daffedbae8cee85272dc44` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xaea67e5ccc89d69cbabbe9d7811c3c6b36407055` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x367c0f7effffc550ae8c8727dacac85f195d5694` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3ee621b9cdf4068a0e3dd4107a9140625d9e684f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x732113815f1ecf7be18360c25b3d84328cfc0448` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xdaa6eac9f48cdeab06325f684da6ec4ca4671f0c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf0b166373d2deb3e5696d268d31ab4cb719e334d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x06607c6ddb07fa4294fa1fe0fd9a1e8e8e605ec5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08db22a5bd982ac85350cc67ef65c9820d2deba1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a300183a98b845d847cab08a2a591fc45c03565` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c4aeddf997f4db81d0507a449d089f140318f92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11341455ff53af5fb1194680f20d932c287c0e4f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x142304244b7b4765f7cf869dbca33d32daff1bbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14f11f263f8a9539b19e6a705d2c35d3d451422f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16381697282c2c92a75a71c5424a3cf5cfb6ed02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x174e4dc4558371ff919781e2543397fb5773ccdd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x18011c2a97fad6c3652570846ee39525f55a2aec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19d8a5abbd08e8cf6aa9b2df46a04d13ccb7e3b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a645bfb46b00bb2dce6a1a517d7de2999155fe4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c813cdd6daece2cb83c52f0798504e42816e9c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d0d87f98c6fe9015f4d3be58a0958f05a82639b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e4cf69d3bdefe1ddec9fb6773c8a661f6498dc7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2011b5d4d5287cc9d3462b4e8af0e4daf29e3c1d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23d197a3bb595b9f4973d14d7910a72ba1202c60` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2585d1bc2bec442c78abbcc123dedf2c81cc8053` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25a7eeef4e17d881d4b1e283527595c13cfac9bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x285a9f6ec0a310845cc0e2e576c4483b5be557c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x30d508871c8b3edf07dc906c5693aa574a8b6790` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x38533889c9a2bb32ecff6a1c4b1e2854256fe25f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a906745cd78fd40ee4d8217070a774fb6d9316a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3fdb0c33a86249ed689e497219ace3b80aff5c0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x40aa8c72bc3725566310e9ede210c13e9b0d194b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x42f3254fd0cc44e84aae03e444fb41cf9be02cf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45e0ee141faeb7bc5cffc81171ac7c9fd465531c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x462bcebb3743e5c0b126985d82782025bded23ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ae11dc7d7e70ee16d7eae32851302e55f6ca85e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e25d906f60b2483cfadbe1ee29e27005e4388d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e69cf49ff3af82efe304a3c723556efb7434736` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50d6b3e84d915ed195b5f53716797a15fea4fc3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x528e025302094b3a35a35ca48ceb5cd948c5c02c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5671b249391ca5e6a8fe28ceb1e85dc41c12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57efd446a8611109f4a4e7cbf55c2d5540481187` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5dd3277f535cdf4bca8ecefd0b2a11bb4744dd65` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eaa5d59b88170efc2467ef27b0f0ec5520cae95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x60f57cf15a34fa0aa25ef37eb827e1a0948966c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x61522e93c257402f3a5a289f604e3c05b4f96fbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x616993b329d1811fb878f7ee89504aa5acc6a826` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62c8a8881c94700ead201646b74675d9d067e738` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6659a9c5cd313974343e30b4fdffd95bd4b4dcd2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x66cda04cefb135d2394e8d769439c15f2cb009e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67c270b9de6dd4e2bb041de38557531893b0af39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6cff38857cf6045b96dc80189427416f8a6478a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x718cd1d06094b53de74de745c4ead3ac629a0c98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x748a6e62825399e8bd164f0df980a16feeae80e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x750d0cbf47c69ca09547ebd8c6b18ac1158c52ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ce2f634f0698ecdca051ef1dc4be96ef3d05a62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ed6ef7419cd9c00693d7a4f81c2a151f49c7ac2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x846019fb6f136fc98b80e527c3d34f39d16a38c4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8485e1327de53ead0842697ab669f45c8e85e420` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89703ca5c6c3bd35f9d288ff9710becbfa8c6f7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c3736e2fe63cc2cd89ee228d9dbcab6ce5b767b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d17eb174b1e42978e7e656c58914f1bbb11b74b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e45622663bb01dc285b4f51eb8f9fe4fa7b5899` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x963432fec65ec9b9892cc2e42f8b385ad3bccad3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x963addd799b2f940a2f3463b3374b8934eb146e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9993fce4149fdb9c2c2dc6df73358333ca141992` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99cf05461dd5f94761d4fae6a2abda47a93451f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b2ab75118185761ff95b9cad8124b622ad6c297` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b4ae930255cb8695a9f525da414f80c4c7a945b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c18ad7a63cd5d3d312741e529c9ba601905aa2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9cd422800bde19f7beceb479b1c84942ebde7874` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9cef7f96b4c621f0dd1197990f760ff8a4fea685` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d2d087279d917f9b4efd40659c1fdc45f104bb3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ee87b68a15d2a3c39caf844eef163e71ea79974` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6d3da5ef0057542e151d8aab9ef818008fa6fd8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa876f9b2ee9dfa8ab14a268d900b72461c168252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae8dcd2bba9de3a696c7b8685f84fb4e81946161` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf82ee9246a608484e8567fadbef64ac1b8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb07c75e3db03eb69f047b92274019912014ba78e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb116e5141f0e1e677971072d69a6cae99e0d8eb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2a1397360831a20bca454a9bd582682e19029bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb440b66d9e2c967d8d4e8eed46d89d7cdbe02b61` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb44dc3cd07803c18c4eca2e12ccfb20c75c9ab17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5a0d8b014adc9dc6dedb7cfa48abce043afa3c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb843a5aba48f40d225ba387de8a2372e174b7d3a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9de2730f6165ac6353565d388bbd1ec62f35fae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb65e4567fcaf9c963e9e61b4e0f1ff8a3f4e858` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb92270716c8c424849f17ccc12f4f24ad4064d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfd646592a9ed890776a972ee428b81adccca6e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc12e00de204d58ead5b5ce9054e94aee7747fb6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc35d2ea4a50a5fe8ea6476425bf0cd7421c30743` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4505cc6125d61e2a352ce5cf2129f2fb19259a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6e0172cff6d427a438336f4363c593a6cfa0f77` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc75094b5ce53c050816a446701b0d69101c40937` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc81327710efa9f70e8d945fa63afd402e43a9174` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc8474d03618c57c39b2cec85b42dff96ff96f080` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcaf3fb1b03f1d71a110167327f5106be82bee209` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb30a66e72ed90d1b34f78fc0655895fc28bb6cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb779ecd9e1ee0fa165870ad1b45cde5c5e7f7e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf16ff305eab2e44b568d3148e2ebbbfd48db126` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd129cc3a352289ec73ab4a64d630121aad5b9e31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd13fbc8f753d59d6fd945c3562c14d2044932da9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1cf8a3b86c6a3d281a2ebf560335db774e82458` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4bc189630eb4acf7d0e47ef3a3c38d65df75af3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd7219ca7899ad1a2d763994e9fc8b7c2ece5ba68` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb76318c5c5151a4578e2aafa11a2a2e0b03a4e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbdf5c8a6a2b97b23768acee94ae90c239346c6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdc57f71c912025892a3343551f03392c0e7364e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe17bd96715066302bacb6800f66a1df537140c4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2d46b461837448cbb82d2c8b80a7e1c38b55820` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe564d3d09863d81aca176abe58de027389a186aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe63fd1e5784f8c736ee2a48904e73b225d210484` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0f25ae3f2b11b0b3e416eae268b559876f86c30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf1e302a01b8e9aedd85c0656b72aeef3ced442df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4298ff879f6d21d46348ebb097ddc10720274e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf47b652cde9b30d6add0b13027bb7ad2f7af04f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf61d8925fdbbfe999c321f78acd0182a08a9bc9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf683dc10df46c3be5a2c81f91181961442066173` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf88a7f7b1111cc387e6eacdaf8c8bcab8f5a7534` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9221c5edc736d26ffc4ddccddfa15a4b958862e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa33784613de04b165953715b24417fb8b07f829` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa3eb94c41e432e563dc2666b8ea8deaee0fc2ff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb1f0ffe5e46eb3e817473eeeaa05aa46e8c4872` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfb8bd40c0a13d141b26ee190ca87991ec54932e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbd9e539d642cc45b5f765e1f6b0efbd40c7157b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff5d1a1095aa2633ff94fcd40877ee4c63c1face` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0680ad510475844a0555914fd38979b31fda3b2f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1d3258b9c35198454c1f44e89003de5851748cc5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x26c37dacd046975230ba8c3658e6c5cdaf760dd8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x323f07a4be1bd856c500861e5bbd3d0e638e9cfe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x34dcf55e29d5f679a4985c1f09d386a17c1843b8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55d1d7edbc417dce5efa0df53d9445176efd3920` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x58fe056eff8729a1d42f99d8ce83a9fe81920907` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66ae73d473f225a691f8b8c158d500b11cdc79aa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ad28becda5d1a4cc962dae4a4f089dc8808ad57` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6f9d1f7a4ad183e8317417ea6a2616e11b05d2ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a9212d34dd283e952f8f15f084832e9b48ee746` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa39d28cb4e1506edafdccb214e335df8800a4b19` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa403128dd76566a6fc1c3328d204ad6ef38a24d0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb84bba16a3a332ac2e66aa4508db1efd300cde2b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe770c8b97b3e2e053471ddb96ea7b6b05303c6a9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8d69d773cb712320f8945dab24167702699dfb7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeb81da0cac9d3efc4bf3270080936c6a5758926f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf8be0f9b331dca86761b12ef54d90ae0c1f94787` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfe7ca60f68be7fdfcd4367ec1e9a59b24180ab9c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 8 deployments: fantom `0x60ae5f446ae1575534a5f234d6ec743215624556`; fantom `0x877a330af63094d88792b9ca28ac36c71673eb1c`; fantom `0x95887654d8646c26fab33f344576e2e74b211256`; fantom `0x9b4ae930255cb8695a9f525da414f80c4c7a945b`; fantom `0xb97b6ed451480fe6466a558e9c54eaac32e6c696`; fantom `0xb9f3413e206f1d658d4dafb233873dde56cf94fc`; canto `0x6ce1a2c079871e4d4b91ff29e7d2acbd42b46e36`; canto `0x9708e0b216a88d38d469b255ce78c1369ad898e6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbe9f8c0d6f0fd7e46cdacca340747ea2f247991d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x31864bc58a47a4fc8782b4135873788e876de9eb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x352527924ffcd71ec88ab0817b97595ece343a16` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x772a82d27b1024e9072ae33dced3c0df1fbda66e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8ab3567aba5151a3ab4c1aff2fc9192178ded78d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8c3736e2fe63cc2cd89ee228d9dbcab6ce5b767b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x95887654d8646c26fab33f344576e2e74b211256` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb9f3413e206f1d658d4dafb233873dde56cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbb92270716c8c424849f17ccc12f4f24ad4064d6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc12e00de204d58ead5b5ce9054e94aee7747fb6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02d0594dfd87064d56acc7c85f26263cfec22789` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x053ed4ddba56de7a27b1a780ee6f7740b3732284` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0987839d66bcaab57cc8e4b69f2e956e2a4b8da5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x099b4b143e51a1a3f3ecbb8e0f3d76aab201f3f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09f6511a1b07d8db4824a4b243e451ccad4daca4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c77aac7f81378f307a13df31550995839ab01bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0dc6f14ccb930060ba61d5cbc6075e1e00d02ef6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x125b0fe43139e9797e4d618dd919005da40b03f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x158ce199588b22b474e5574477261545812d8cb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x168ed1145e7210c42c89ce60b04c9e7fd903c743` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x175712cd666fbcfe8b69866a3088d7bf17a47685` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c379ec43ce7084bd50791f1bd1c472f89be748f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c79103cec595b8af673cd41271861ffa3b2beda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1cf6c3f8649382df6c59378926dab8c4cc847286` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x207075d738673e63b8bddeb456d2dc43e4cf60fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22c69f51e57815a79483d014bac7b6bc5240b65f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25308e231c7e6678a86845bb40e06238f30fd7a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c9b436de567f295250908aa89fe2006f42aa2d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x336820032f435074d1e4ebd61aab46f894cd3f5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33d9c305fc48f887e00683a4032d0a1083795b40` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3406bbcaefb926685c0c9e0f94f8b3712bdc7a07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d461d8e40a19ad5a0e9b8e21875275f06a3ff19` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d90e9fac00e4892be5818a9d020b22d233f55e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e93231e40c9143842249939c13ccdb9865d2693` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3fecf5c6b193e9ccf83110b8bc0fd7bc5dfe0fd4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4189ea31ce49b7b30fdc787e4c93bdc45b6a2294` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43632c8e8c5e3f195a471fdadb71068bfffd2001` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47183bb55ad0f891887e099cec3570d3c667cd00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47d568ae36aaf9aac43dd82367ba3acb32afb198` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4fa79583caf657decf586250eb6489b02239a83c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52915e43e01daf7584ff39c3ab9f7e2eafaa8829` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5364754bad6e1956eed8c114987533e62841c8b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x562398dac13bda12c75016dedb59063cf16be460` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57ef328283d36afc63c5942a579cc55142aa9ff4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x58588680d23c04c47c3f398c1bfac247021c4288` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e2bb3e7443f7dd81d78fa6cec9d26cba5dc7957` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6851fc3a10a9334974e506ab10b8d955f7771b4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6878c4054b0e204f6df471105402bee8d5d4c4ee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69b906d1373f5bcedcf57861fa2955d701c6b4ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x731318364f4aeada922bc2636198e56912f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73c2220735a8ec0d271f3c55b08b30d32654f31f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83146a50c8962b839c79bbf5b60adb7d6fbc0f5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88d363839d33711cd80802d56de995162f06c45c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8adc5f73e63b3af3fd0648281fe451738d8b9d86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e7aab28d2963fa26cea233131398091cad8eace` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8f50a6d5ea6715f878e2984569975e8875eebafb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9111b8d7cc1a676a70015bea3a3a9968a44c52c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9a80a00607d8a254522a69df337428c172fe368c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa20ba6504b384cab349f6faa5a0e263259d92cf7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2a97a231fe49523ff4a249974abaed65d3e17a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa33366eeb5850535ed7cb52d4f631b19315fbc63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4a4881ee2da50a564a8a8e824b083fa626dc0b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa57537a78200ba0ffb6296ddc162a7246c866f9c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa78bcf23a91b7776b848a79aef1dd20cd1063587` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa83a38d9dc50cb146ba87fe3fe429ec3de8a76dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaea22da48d4c15ab10b8b7ad529c189ec9ae24fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf4723b3ea2fc746b5f8f0871c193219c5af87fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0b8c977020f23d0a274c75ad3b9e4c48209c9da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb2d7e93b530eedf659fb09a4515ad92d6cf0a854` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb93cef5affefbf5ea6c3150a858d9ffd004fc137` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd218d03cc29d472b6fef03c4d1a428685a4808e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc0e0368e54f087450aa21e8f172cec8811878efc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc10d01d40b61e14e6118e1474f52f01d0c138458` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc197e17363fcd0ef62bd28f3d916c9c2ba936fba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc123ca0a1e6626d05f86fe7bc86d460450f1fc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xccaf24b406a1733f626e3848aa794cf79f6e33d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd29fcf9b6a6638057a88825243f2ca6f0ad89b56` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3a261a94950d2376fe93dfa9bdc7b4a11740b1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4173edd8ce34097179c53740ca7ef3ed9296062` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5e44852a0cbef81f5e9dde8ccddcd959476ef00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd971c3ff8aa4fef0e12c58a700a7a94184a91cbc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9b43f8001642d57101b6b080e3d8ef0cf808042` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdad9a679200d81b845ea52712fb7af3b89b1e624` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdeb4f03a1cd793c534eb4b58c77e7ba195dabff6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf07d0f57986bfdc7461e694c441c36aff73b1aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdfe6243f63518bbc8540d32e7f9ffda32cc289e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6eaf22fa69cca2dafc77531646c88d2c22fe574` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb27392385fd47b36fd33f309cb4733c3d5250a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec982eb966d4c0a75b5da402f937b08fb0a7a8cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecec5817fec41b7ecc53fd18879e19b0d283a6d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed204bdc73c409378d6e0560caf004e78eb65ed3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf008502acf2a51a165f63184269df6a46a78f1e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf14e7f78611873dff6100076419685c0718e897c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf60f5de69fb13fc9f8b9e3e2c6f95b0115b5f0f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfa13d3fda783824949bef75f5e95bb546cfddf6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfa9487209dd80900a02471f50fd9ae2851c854b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02f5ccd72351bbc4463a9a4b78708532a6badfef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09d5b2c21f825ffeb19f1c701006e49fb29f1510` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b13bec190e71dacb101bc02f8f4d28a376ff623` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x111eeeb6bfab9e8d0e87e45db15031d89846e5d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1cb9db04117e630eb3e807715a874fe2e38d322a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x268bb0220ab61abd9bd42c5db49470bb3e6b0b2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27205620efb293d50b0e624421620513394ea78f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b1adf9c835d068b59e6025ab1ae1937d959437b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30d7ef0d94b43bfa4ff5935dbc608d7fc0116bb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3373fa8dea1d97a9fb043311d3e969d963e4af20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3415c590eef8e0cb8b5da8312b22e0e9c7c8d678` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3be7b59ab6558845ffa1f026dff40b305dd47b37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4073f60478708bfe31f5e3d8476d44dd5ab16ecd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ae11dc7d7e70ee16d7eae32851302e55f6ca85e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ae8915a8d11178154248c692e31710191053466` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4dc48b93855f42cccc54f65615aef6ffc12ec1df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ff3262ba2983ee8950d9d082f03277a58bf7eb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63be5efa4825874c64feab5a38681f4ac2f27ccd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e6a0c7131f273c6bdc4860a7c4610a1f5978869` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x716dbb8026ea69b703cc86d61b282767744fd7cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78a2251f1aaeaa8fc1eafcc379663cca3f894708` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7972d53b19ec41044f670e941026c66771620408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ce2f634f0698ecdca051ef1dc4be96ef3d05a62` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9708e0b216a88d38d469b255ce78c1369ad898e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97bc7fefb84a4654d4d3938751b5fe401e8771c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x990144c8c5944f1bbe7e1031f840a350c1c3c40f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4a8d789e2d955be78ef58b7f66f2b525693912f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf82ee9246a608484e8567fadbef64ac1b8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb09aad3f5742a8904f35e83e5644426a9ceb0be2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8b6f128d8d1b5c90c61c5c7403eca6ace28e774` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc1bb900e34adbb99957672361433c6ad62a0cac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbce93e2d822cfdd70f106e32fcb266457cece45f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf16ff305eab2e44b568d3148e2ebbbfd48db126` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0543ea38f433dd3dc87b8e784ae715bd7154bd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9aca9fc66ed91005991f3a3f77f953f67ede063` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbea7ce83a42e0e1b20d073c713e3a8866290653` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdd7ac67fa9576b4096e86f251088189c3659da0d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1b9cd788910c33a8d28ed418cb317530678d86e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe668a93dc2c14a32f088446f46c00132091d2021` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8d14bf55be7c7e71e19c8a96027f5537a208f42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf540e9c05ea1b54e310644fc48e491d365bf86ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf655c8567e0f213e6c634cd2a68d992152161dc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6d20bd5189be159d51bd9d51dbd4cc4edee207c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf82e30216ec4f3fb436feff930bf597d4aa6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb8bd40c0a13d141b26ee190ca87991ec54932e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc637e2a0fa3305dfad9287031aff46bdad3b9f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ad3e5ff1a410610ca2eabfecf703c9460766fd3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16ed59ffbfbe62eba9a69a304d38901f86461282` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21a7eccf5cc39f56638c881458ef95d974376bba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2514a22a812350d2b4678d78e0c184959ea37043` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x31864bc58a47a4fc8782b4135873788e876de9eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3271cc175577465691e48196955e09d638fa05d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x462bcebb3743e5c0b126985d82782025bded23ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5475aed9d11beaa822e122c36acdfa0da2eb086f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5671b249391ca5e6a8fe28ceb1e85dc41c12ba7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58fde5bdb2c6bd828bc41c12a68189c7cd93dce2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e169082fff23cee6766062b96051a78c543127d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7ce2f634f0698ecdca051ef1dc4be96ef3d05a62` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7eb705bc12f488af3310d8166d3c577acdbc619c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87da8bab9fbd09593f2368dc2f6fac3f80c2a845` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8b07b0d9f4470635546ef39cd3c5d00673864d0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c3736e2fe63cc2cd89ee228d9dbcab6ce5b767b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9141b3d02443a84793794f661ae1e6607a03a201` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x95887654d8646c26fab33f344576e2e74b211256` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9708e0b216a88d38d469b255ce78c1369ad898e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad587138e72fc2bc29da99471ce4d995425d8f0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf82ee9246a608484e8567fadbef64ac1b8a87ab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb9f3413e206f1d658d4dafb233873dde56cf94fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb92270716c8c424849f17ccc12f4f24ad4064d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc1bb900e34adbb99957672361433c6ad62a0cac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc596f6455054d8cdde627096be671e377791e295` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xca45c0b54a59c63c15b8cf436512e8fec78d0f49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe611a90128bef186a917752a3fd841d28e46c4e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf655c8567e0f213e6c634cd2a68d992152161dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfb48b69fcba9218f86a437121198e46b2b88ad63` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x121f8cef8010151c2cbf613848118bd105f15d80` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x39d0b53a1580785442c8cb031790d14538b07a84` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50bd4c9303d0050b7c44e0a7752e3c1ab18cf0b6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x543cc9542314e0bec710eccd03586006df355d83` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6180cfcf09812914bb9427d665e5b52bcc055205` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x67a76a612bf4a37ef63f877311304e3a9bd8e4d9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9a7299cf4f519dfd139f2dbce3bc9fe5f9ffd10b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb037874de77e7b4505261301d2f3ce2fb9036ca7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc3a05fd24095b7951ecd0d14a28c565dc5778bc4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcbdf792456367a91708c0036e0678ecfb1f09654` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd2a146f8d51469acff4b66e3e0aace73c3d57e64` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe589c99cf4751f5ef696216f5d5936c9f396c19b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfe7ca60f68be7fdfcd4367ec1e9a59b24180ab9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x07828829a12981a518055bd73bcf18e25905005e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0ec372f1a5f10dae72cd3df25eb72865f0676849` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x143688fa98f5b391e299e22d143145d6df6296cc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x18548c01b16db7815399a33ad570776c97cd85f8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x264bf8e173e3619194cb62deaa810cb282eaafb6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29c714621152e607ea9768be05f8a96d9e41d62f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d0b5a5296b3cf821bba34d3674975d1b8c32c4b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x53e3261bff403b4d2314ecd75479b0bebfe8fa0c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x57f9284e10ca2e21181fa626973c72d45a45fd20` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5833c2bce6c29323401e9ed171f1599001f5b288` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5de4c7a691398f01b522ae6c8adac649c1e30cb6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6b39b9faf2c13cff586b8ce980647a049263390d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x77ab0b61e2994dd5c62e578e23e409681e3ba42f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7b816c1ccafa7d3e71e279ed9dc3226484f6ef87` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87b339cb3c7eddbe1f153e095c26f40236b32577` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8c95c178d4767a59618ce2e9e040fc55e47aa31b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xab2c1776be36da25677202f8c33d9608bbd4f99b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb33f0ff0cf5b0d5762ff8f1da99d596f1ad4a2f3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb3c80cfcdd177e3fce2e66870e4768d1ead89f6c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd02db94aab460703b2a0a6928ea720b9009da3d1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe16f15bbb855fd02d3249110dc2c26fcd36ed236` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xebb23fa1a9fd24662378e7ac9552abe747ea3a40` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0354fff4812330536a7c6017a175ef32342692d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf33e329a5dfa9d7f21fb8f3164169157a51cac45` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfff3c004d115002e0fe8ef08bbb127aef5b97be1` | ❓ Unverified |

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
| linea | [`0xcf0f95e34f25d1bb3d9cad3cbb2eb40dab7c3841`](./contracts/linea-59144/0xcf0f95e34f25d1bb3d9cad3cbb2eb40dab7c3841/) | BridgedToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0d5433fee91fb2db9dd6a74267dd900ec2130675`](./contracts/linea-59144/0x0d5433fee91fb2db9dd6a74267dd900ec2130675/) | FactoryStable | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x9f04b6cefd5bcd67d76ab708f17553ce40188e6a`](./contracts/blast-81457/0x9f04b6cefd5bcd67d76ab708f17553ce40188e6a/) | IBEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xd299d53fc3b09038765af2091a0647e2304a7caa`](./contracts/moonriver-1285/0xd299d53fc3b09038765af2091a0647e2304a7caa/) | ImpermaxChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e`](./contracts/sonic-146/0x1a3e33e38d2e70d43f65772f63c5b3f52073b37e/) | ImpermaxConfigManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4891a732098084dc4bc7290775ffdd23ec5732fb`](./contracts/blast-81457/0x4891a732098084dc4bc7290775ffdd23ec5732fb/) | ImpermaxV2SolidlyRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46b9b1a483f5e64a20bbbeecbf54224167b699df`](./contracts/base-8453/0x46b9b1a483f5e64a20bbbeecbf54224167b699df/) | ImpermaxV2UniV2Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x58c5ca4ba713a9bbd2a95accbc9f545718c822c5`](./contracts/unichain-130/0x58c5ca4ba713a9bbd2a95accbc9f545718c822c5/) | ImpermaxV3UniV3Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77fb0ff573da1ec6ec0cadb31a8cf69a4bdd9c8d`](./contracts/base-8453/0x77fb0ff573da1ec6ec0cadb31a8cf69a4bdd9c8d/) | LendingVaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x638855078c2190118cc8228e62ec4781e970d1ed`](./contracts/unichain-130/0x638855078c2190118cc8228e62ec4781e970d1ed/) | LendingVaultWatcher01 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9c7213207b5f8726164c96a76a4b9c0fbf984aba`](./contracts/polygon-137/0x9c7213207b5f8726164c96a76a4b9c0fbf984aba/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x089d3daf549f99553c2182db24bc4336a4f0c824`](./contracts/avalanche-43114/0x089d3daf549f99553c2182db24bc4336a4f0c824/) | MultiBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb8a9a92dfe1303728394dd0f8362a09962dec24f`](./contracts/base-8453/0xb8a9a92dfe1303728394dd0f8362a09962dec24f/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1c44fd7514525e1669f6e316d66dcbb42930aad0`](./contracts/linea-59144/0x1c44fd7514525e1669f6e316d66dcbb42930aad0/) | PoolTokenRouter01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e169082fff23cee6766062b96051a78c543127d`](./contracts/ethereum-1/0x5e169082fff23cee6766062b96051a78c543127d/) | Router01 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3039c26f9126833baca8edbf61c761cd909f461f`](./contracts/avalanche-43114/0x3039c26f9126833baca8edbf61c761cd909f461f/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21d9d4d17255d427a5f77d23fb9eb3c5cd281ebf`](./contracts/base-8453/0x21d9d4d17255d427a5f77d23fb9eb3c5cd281ebf/) | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ebc3b5911b99adde07944c75d9e03958abdb49f`](./contracts/base-8453/0x1ebc3b5911b99adde07944c75d9e03958abdb49f/) | Router03Solidly | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3271cc175577465691e48196955e09d638fa05d5`](./contracts/polygon-137/0x3271cc175577465691e48196955e09d638fa05d5/) | SimpleUniswapOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x677dce0683e6db30325cd97e8d04d138f34821a6`](./contracts/avalanche-43114/0x677dce0683e6db30325cd97e8d04d138f34821a6/) | StakedLPToken0212 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2a32215ba106039f5a96b6366338bdb9fb0b62e8`](./contracts/base-8453/0x2a32215ba106039f5a96b6366338bdb9fb0b62e8/) | StakedLPTokenFactorySolidlyBase1 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5b06941953f97c13465f6b6e76e4f5b9f800e86b`](./contracts/base-8453/0x5b06941953f97c13465f6b6e76e4f5b9f800e86b/) | StakedLPTokenFactorySolidlyBase4 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x543cc9542314e0bec710eccd03586006df355d83`](./contracts/sonic-146/0x543cc9542314e0bec710eccd03586006df355d83/) | StakedLPTokenFactorySolidlyBase5 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x032bea464973692fe7d9b016232166356de1c92e`](./contracts/sonic-146/0x032bea464973692fe7d9b016232166356de1c92e/) | StakedLPTokenFactorySolidlyBase7 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0e5f23675abab707d9f17da2ee883a77e13fe70f`](./contracts/sonic-146/0x0e5f23675abab707d9f17da2ee883a77e13fe70f/) | StakedLPTokenFactorySolidlyStable5 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x96f1f13865f11e2ec0e15051415f420dac440ec1`](./contracts/avalanche-43114/0x96f1f13865f11e2ec0e15051415f420dac440ec1/) | StakedLPTokenSolidlyBase1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb323c5bcb066ea69d90ac21d74b714b52f0679b0`](./contracts/arbitrum-42161/0xb323c5bcb066ea69d90ac21d74b714b52f0679b0/) | StakingRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x56659245931cb6920e39c189d2a0e7dd0da2d57b`](./contracts/arbitrum-42161/0x56659245931cb6920e39c189d2a0e7dd0da2d57b/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf972daced7c6b03223710c11413036d17eb298f6`](./contracts/polygon-137/0xf972daced7c6b03223710c11413036d17eb298f6/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
