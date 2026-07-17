# Agentic Audit Brief: Uniwhale

## Project Overview

- Project: Uniwhale (`uniwhale`)
- Website: [https://www.uniwhale.co](https://www.uniwhale.co)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.916Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 60 unique implementations (153 raw deployments)
- DeFi Llama TVL: $33,710.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 48 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 7 common project-authored base contract(s) (abstracterc20stakeable, abstractstakeable, abstractoracleaggregator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 170; live-surface contracts included: 150 (134 live, 16 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/45 (51.1%)
- Deployed-live implementations: 46 of 60 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 23/46
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 60
- Raw deployments: 153
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 23 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 20 | 43.5% | 2023-02 |
| MetaTrust | Tier 2 | 4 | 8.7% | 2023-03 |
| Secure3 | Tier 2 | 4 | 8.7% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| esUniwhaleV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x4b0708b001c4daea5808eab21508cd7339f6e254`](./contracts/bsc-56/0x4b0708b001c4daea5808eab21508cd7339f6e254/); bsc `0x614c46b715424706e4f0f8e15854f8d176722f80` | ✅ Audited |
| FeeVault | core_logic | bsc | n/a | 2 deployments: bsc [`0x9bea24685836a8c858e93d1710c55721e7fc6e74`](./contracts/bsc-56/0x9bea24685836a8c858e93d1710c55721e7fc6e74/); bsc `0xfbcff79a83dbfb6559ef043fc8277e570b971dbf` | ✅ Audited |
| LiquidityPool | unknown | bsc | n/a | 10 deployments: bsc [`0x089dba6f9f907327b9479d14c962586ab9cc79ad`](./contracts/bsc-56/0x089dba6f9f907327b9479d14c962586ab9cc79ad/); bsc `0x1f1d6f6dc5fcf6431bdd090056812760ec1007c2`; bsc `0x48c314178d3d3bc47e4decc1e50f51d0a97b15bc`; bsc `0x52dcd80506bc421cae6927c73f306fd0d083e43a`; bsc `0x6f89ded40508e37ac981ff0ec88af51ddb8d17d7`; bsc `0x7a22d58c29b033122ff212eed558ab8bc3bc0867`; bsc `0x7bf129917cac9397b16f2effb3cc772d12d2c75f`; bsc `0xd48600e28794dc4fc6b38b7dfdaba89179d5aba0`; bsc `0xedf17350e91bb8890dc3a67b4dafc5e9a5fdbe75`; bsc `0xf272eba1396b5eba3b21a74e7e512a744c8ea8b8` | ✅ Audited |
| LiquidityPool | unknown | bsc | n/a | 2 deployments: bsc [`0x9ab799894f505772aaa91b091df9766db9a6be9e`](./contracts/bsc-56/0x9ab799894f505772aaa91b091df9766db9a6be9e/); bsc `0xbdecafd9096d43616a8e0eb8f3fa0865fd4769e7` | ✅ Audited |
| MarginPool | unknown | bsc | n/a | [`0x7d9cc5232a455addeb99cb8221d5ccb784fa109b`](./contracts/bsc-56/0x7d9cc5232a455addeb99cb8221d5ccb784fa109b/) | ✅ Audited |
| MarketBook | unknown | bsc | n/a | [`0x4cd24e1452933699e24fe5a62ba1700c421e1414`](./contracts/bsc-56/0x4cd24e1452933699e24fe5a62ba1700c421e1414/) | ✅ Audited |
| MarketBook | unknown | bsc | n/a | 2 deployments: bsc [`0xa277b3c54549eae35dab484077a2a78559000c9f`](./contracts/bsc-56/0xa277b3c54549eae35dab484077a2a78559000c9f/); bsc `0xf00b7b260731c2cceb2ab612ecb29d95a419999f` | ✅ Audited |
| OracleAggregator | unknown | bsc | n/a | 3 deployments: bsc [`0x059b491a6403567663483238e8458183a3bed2a5`](./contracts/bsc-56/0x059b491a6403567663483238e8458183a3bed2a5/); bsc `0x0b56a61d817e215d6f6dc7b461be2e5b0ca3716b`; bsc `0xa2dea1a833b6798177c11f73f6f726d7221043b1` | ✅ Audited |
| PancakeRouter | unknown | bsc | n/a | [`0x0f5df5edad59d331d8419d9fd9cda025c28059d1`](./contracts/bsc-56/0x0f5df5edad59d331d8419d9fd9cda025c28059d1/) | ✅ Audited |
| PoolReader | core_logic | bsc | n/a | [`0xdf4261ffd44d66cf8007753c5e998eee34238cf6`](./contracts/bsc-56/0xdf4261ffd44d66cf8007753c5e998eee34238cf6/) | ✅ Audited |
| RegistryCore | unknown | bsc | n/a | 12 deployments: bsc [`0x35a31db0f726954074d73c67df7389345516ff2c`](./contracts/bsc-56/0x35a31db0f726954074d73c67df7389345516ff2c/); bsc `0x3a32334e424dd343140583e28f9f89f89b17a461`; bsc `0x5be7714ff80a0eff6fb6139bc1b3967d3ad29872`; bsc `0x7e724544daeed0bc0fa1867f3e24a2a1c1a7d7a6`; bsc `0x808b660d24c568fa1c15660049ab6786bd498b0d`; bsc `0x903bd66367f013b23713e3e5832591526ec49d87`; bsc `0xa74a41fcfb5ffde74d7c71e0ec20106c5d8e1446`; bsc `0xa82b6c24b9ebb4391cbbc63a1a08fb0e3cf3283d`; bsc `0xab64cb21226c12bd409686fefcf54b79483fe692`; bsc `0xc249155e57777c615c4c2a1baead4117b16ef667`; bsc `0xdb7bbe05fb62fbcd43a1b4a401933a3e61bbbeb3`; bsc `0xf1e1db12506be7e64a3c55981458121f86f0555c` | ✅ Audited |
| RegistryCore | registry | bsc | n/a | 2 deployments: bsc [`0xae0c4a3432b18d9c65e1544a7669d9de44927ff9`](./contracts/bsc-56/0xae0c4a3432b18d9c65e1544a7669d9de44927ff9/); bsc `0xe8a81189909f0c9f4d5057908f7664eab5cbb5d1` | ✅ Audited |
| RegistryReader | unknown | bsc | n/a | 4 deployments: bsc [`0x234d7e86655ea8efb1ab8d29038784deedaf8e72`](./contracts/bsc-56/0x234d7e86655ea8efb1ab8d29038784deedaf8e72/); bsc `0x41e53d951c926a0bfe0ba767cac86cf6dc2a8e43`; bsc `0x81950d81e1c4446377e261f466158f8952aa3805`; bsc `0xbdbde8bef75a244ec28127f33b8d628488c96088` | ✅ Audited |
| RevenuePool | unknown | bsc | n/a | 2 deployments: bsc [`0x55f889d632ac3105aeea8f15c68eb75e2336fb94`](./contracts/bsc-56/0x55f889d632ac3105aeea8f15c68eb75e2336fb94/); bsc `0xd317694308f3d5e3bfda708692d5ddeeb981e391` | ✅ Audited |
| RevenuePool | unknown | bsc | n/a | 2 deployments: bsc [`0x60555593996d55717e9047f2c6e46af28d78c22f`](./contracts/bsc-56/0x60555593996d55717e9047f2c6e46af28d78c22f/); bsc `0x9382cd711bc058ab9fe1e00a6085408fea78c842` | ✅ Audited |
| SwapRouterGetter | unknown | bsc | n/a | [`0x1cb1099175cff621778609517334b35920e747a9`](./contracts/bsc-56/0x1cb1099175cff621778609517334b35920e747a9/) | ✅ Audited |
| TradingCore | unknown | bsc | n/a | 13 deployments: bsc [`0x14359be87cd6ca759eefc106090ee7e7720040eb`](./contracts/bsc-56/0x14359be87cd6ca759eefc106090ee7e7720040eb/); bsc `0x1e0526a9edc00eb49fc5e5e219b325e6ff7c5ad1`; bsc `0x371a342c40297940f1d802c432e8759fbea3189b`; bsc `0x59a3650227ac79529b43ee334bc2c5f587235311`; bsc `0x7a06bc1ce2e777034cf9844e26d2e9683d8ce499`; bsc `0x7cf574f4839574aab9a41834033114378837e6d1`; bsc `0x8990ca8ffcba28541c8825ac74fb77f3ad5972f5`; bsc `0x9332fcd693113a0a94a1712636ccd1f524d97165`; bsc `0x971922e10cc3fd9b9fa40fb7fd7335c80c04d500`; bsc `0x98b0d15420b940d3e63b5d34d9399f525c3dda32`; bsc `0xa778088a07669ebfe5d3c5bab357e526d39142c5`; bsc `0xddc9e31623caa990d4b9bbd63740f74d401d608c`; bsc `0xea9bb043fbf9a2e647c11ac1666ffeb0ae4d0486` | ✅ Audited |
| TradingCore | unknown | bsc | n/a | 2 deployments: bsc [`0x2926710dcb5c3e046285755410979d1de5fcc1ea`](./contracts/bsc-56/0x2926710dcb5c3e046285755410979d1de5fcc1ea/); bsc `0x55d5f4c69c3e5e7a3d16afcf490750186efc5bb4` | ✅ Audited |
| TradingCore | unknown | bsc | n/a | 2 deployments: bsc [`0x6c675ac96955db45e01a8d7f61886692e2c28a7b`](./contracts/bsc-56/0x6c675ac96955db45e01a8d7f61886692e2c28a7b/); bsc `0x9b5215c94d9576286805570db1da96999c329ebc` | ✅ Audited |
| TradingCoreLib | unknown | bsc | n/a | 8 deployments: bsc [`0x0b60b89d17b2bc18d10821677bb3137d5afc4bb0`](./contracts/bsc-56/0x0b60b89d17b2bc18d10821677bb3137d5afc4bb0/); bsc `0x2cb1bbc8f15950ef498f6093bff0684aca630e94`; bsc `0xa02474fc8b65402eacf4642cf020c10dcab330f2`; bsc `0xa197e4ff766233e639eec60a33a96fc3f20a8c20`; bsc `0xa36995a4a2ebf747970f34609f60577880d01ac7`; bsc `0xa7e36292b27090d328b1804c6666df5678be2a39`; bsc `0xb09bc676557ecb8353b0a4b5ab4927d44c736049`; bsc `0xfaa35688cf891a23be78284110f1c0044422e66e` | ✅ Audited |
| TradingCoreLib | unknown | bsc | n/a | 2 deployments: bsc [`0x98fa0d383fecdcc458a1aeab69790f5e87f3e2ff`](./contracts/bsc-56/0x98fa0d383fecdcc458a1aeab69790f5e87f3e2ff/); bsc `0xdf6c13978311865bacf2b8d88623a08bc1339bfc` | ✅ Audited |
| UniwhaleToken | unknown | bsc | n/a | 6 deployments: bsc [`0x0af3f407985df252ecf0f73568b377115244ba3e`](./contracts/bsc-56/0x0af3f407985df252ecf0f73568b377115244ba3e/); bsc `0x16d7f9db9c58acb451bf5e494fba082dc01950df`; bsc `0xae7a5297814787480b77d2281a2e5aa63fb3b685`; bsc `0xbe0d1e24a571b7d4fde1064edec71df5dc440a1a`; bsc `0xc2ba852abe57765ab47d597554e04330578f7146`; bsc `0xef14a04998ef694254d86dd0d0cd208293cb5677` | ✅ Audited |
| UniwhaleToken | token | bsc | n/a | 2 deployments: bsc [`0x5b65cd9feb54f1df3d0c60576003344079f8dc06`](./contracts/bsc-56/0x5b65cd9feb54f1df3d0c60576003344079f8dc06/); bsc `0xf89896384ef07096661dbd6c7ac97c837319acf9` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropHelper | unknown | bsc | n/a | 2 deployments: bsc [`0x43dc3a2af323f2e4ec9cc9736df55aba9cbfd18a`](./contracts/bsc-56/0x43dc3a2af323f2e4ec9cc9736df55aba9cbfd18a/); bsc `0xaf9e1568df6ba6725f94b598916362a5a6446491` | ⚠️ Unaudited |
| esUniwhaleToken | unknown | bsc | n/a | 2 deployments: bsc [`0x0026aae37996cea1ea1a99e88563031e5d643230`](./contracts/bsc-56/0x0026aae37996cea1ea1a99e88563031e5d643230/); bsc `0x61c07ec9ca5ff18102396b4fff4eb31d7866d5cf` | ⚠️ Unaudited |
| esUniwhaleToken | unknown | bsc | n/a | 7 deployments: bsc [`0x26278daa6ec3368fd2f672260abbcd8e67dffdae`](./contracts/bsc-56/0x26278daa6ec3368fd2f672260abbcd8e67dffdae/); bsc `0x43bc4a57dc0916108d5948aeb4e75d7c4cdc783d`; bsc `0x59d35a27df6171cf993392b1ba6898e5fdbd44d1`; bsc `0x92a1f0f46c41ee7bd67af285d615c6e8fded509c`; bsc `0xa5212d3a0c435036d30bc4e2a5d4fd366297bb4a`; bsc `0xde99d0f9b6da544e4d924c24de03c7c15b3732b5`; bsc `0xfc9686253b0fab341b5406429ad320c64bb5bca8` | ⚠️ Unaudited |
| Fees | unknown | bsc | n/a | 2 deployments: bsc [`0x00c114b623e75b6ab03ba4f67f89bebacc338fd3`](./contracts/bsc-56/0x00c114b623e75b6ab03ba4f67f89bebacc338fd3/); bsc `0xc37ee44893839f221a07c2c51966e616262a4102` | ⚠️ Unaudited |
| Fees | unknown | bsc | n/a | [`0xc4a94d2891690e9b930ad20204fa071940598c64`](./contracts/bsc-56/0xc4a94d2891690e9b930ad20204fa071940598c64/) | ⚠️ Unaudited |
| LimitBook | unknown | bsc | n/a | 7 deployments: bsc [`0x107f7f198cc133c2a2492566b2b229363aa080e6`](./contracts/bsc-56/0x107f7f198cc133c2a2492566b2b229363aa080e6/); bsc `0x20c5e75087cffc035ebd8cf1b9b94da3eef78ade`; bsc `0x3e98490a21ab783b185799c981d05a6d8da33901`; bsc `0x46e7ee45c5a57e70d1d80962a398c796ae3ce06d`; bsc `0x782f7189b428a1bbd6455a804f98a3010289c573`; bsc `0xa2c4a539a58248d375198c60f81acb788ee70c06`; bsc `0xec7a1efc5776b92b2a2bdf33e98e0321ca9d47f4` | ⚠️ Unaudited |
| LimitBook | unknown | bsc | n/a | 2 deployments: bsc [`0x27bbbf42dfa62bf16bf9684747476a7a40523e21`](./contracts/bsc-56/0x27bbbf42dfa62bf16bf9684747476a7a40523e21/); bsc `0x404d97815009304ab09f50f85ef3e17985208d9b` | ⚠️ Unaudited |
| LimitBook | unknown | bsc | n/a | 2 deployments: bsc [`0x5145b10dad211e24fd217c7f57cb90d0cfbd8440`](./contracts/bsc-56/0x5145b10dad211e24fd217c7f57cb90d0cfbd8440/); bsc `0xa61b3d8ba0d0f9c86833d6f7d945d960e9fedf06` | ⚠️ Unaudited |
| LimitBook | unknown | bsc | n/a | 2 deployments: bsc [`0x656ac046304446c5802849fcfd5f5ddb090a8ea7`](./contracts/bsc-56/0x656ac046304446c5802849fcfd5f5ddb090a8ea7/); bsc `0xcc391c77fbd3d1293c4bb2d8363e4f6a6b6b5e9a` | ⚠️ Unaudited |
| MarginPool | core_logic | bsc | n/a | 2 deployments: bsc [`0xbb1b941ab76fae4e9f552b860efac1f367ac9bcc`](./contracts/bsc-56/0xbb1b941ab76fae4e9f552b860efac1f367ac9bcc/); bsc `0xd2e9d588a026aea78deb4da98fe48777c5fb1008` | ⚠️ Unaudited |
| MigrateHelper | unknown | bsc | n/a | 2 deployments: bsc [`0x5e828415b88d9747bab771ce79021c7f52125b47`](./contracts/bsc-56/0x5e828415b88d9747bab771ce79021c7f52125b47/); bsc `0x8d5f9b64d07e339d55328bdc433b6c59039f899d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x9314cca6cf879518c37ac4932fb4bf13d6c43014`](./contracts/bsc-56/0x9314cca6cf879518c37ac4932fb4bf13d6c43014/) | ⚠️ Unaudited |
| Referrals | unknown | bsc | n/a | 2 deployments: bsc [`0x81173c1530bb9ab00b2c47d2a6b056322f8dc8f4`](./contracts/bsc-56/0x81173c1530bb9ab00b2c47d2a6b056322f8dc8f4/); bsc `0xd2e0fd88f9f321204a87081c9befba731e4ccafd` | ⚠️ Unaudited |
| Referrals | unknown | bsc | n/a | [`0xdb88ba9c9f717a077fdc62ad3185064793725d27`](./contracts/bsc-56/0xdb88ba9c9f717a077fdc62ad3185064793725d27/) | ⚠️ Unaudited |
| TraderFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x43b8c63097f38ba0eff68766d3db991f9c1e5e3a`](./contracts/bsc-56/0x43b8c63097f38ba0eff68766d3db991f9c1e5e3a/); bsc `0x9f6adae89859049cab4c225d6e2fc0492fed7afd` | ⚠️ Unaudited |
| TraderFarm | unknown | bsc | n/a | 2 deployments: bsc [`0x796ae7d5001b42f4fc54be7fdc33eca5accc2d06`](./contracts/bsc-56/0x796ae7d5001b42f4fc54be7fdc33eca5accc2d06/); bsc `0xef82b217ce9e282b513dd71e668d6e15acfee389` | ⚠️ Unaudited |
| TradingCoreWithRouter | unknown | bsc | n/a | 2 deployments: bsc [`0x51d759c0d7bb898358fc9e5c889eac9364ff4411`](./contracts/bsc-56/0x51d759c0d7bb898358fc9e5c889eac9364ff4411/); bsc `0xec0521bcf9836513107de5259ab38173c5abc1e4` | ⚠️ Unaudited |
| TradingCoreWithRouter | unknown | bsc | n/a | 2 deployments: bsc [`0x926b303605b03d5e9d1a942b76ce7bb03e2f36f3`](./contracts/bsc-56/0x926b303605b03d5e9d1a942b76ce7bb03e2f36f3/); bsc `0xdaf311cd286bc7094487afc306f6ff3681cff129` | ⚠️ Unaudited |
| TradingCoreWithRouter | adapter | bsc | n/a | 2 deployments: bsc [`0xb6ebb9bffd3bbc9d46feac4167b88b9eee4e415d`](./contracts/bsc-56/0xb6ebb9bffd3bbc9d46feac4167b88b9eee4e415d/); bsc `0xd429cb80b4e4b5c0ea27f148278a6061daaa557f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x498cd3e719f0011188536947b92a0e4b42eea9fd`](./contracts/bsc-56/0x498cd3e719f0011188536947b92a0e4b42eea9fd/); bsc `0x7bb4b513377ad65511e22e2d2db705ae18dadb54` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xbd4daa4f582ab9aca6f9a8c66d93bfc059edffea`](./contracts/bsc-56/0xbd4daa4f582ab9aca6f9a8c66d93bfc059edffea/); bsc `0xc8d7aa19cabed70fb10c1b35d2a2980404b890e5` | ⚠️ Unaudited |
| UniwhalePass | unknown | bsc | n/a | 2 deployments: bsc [`0x3cce74aa8c60c4f8a42df146f7c3d7761f12a68f`](./contracts/bsc-56/0x3cce74aa8c60c4f8a42df146f7c3d7761f12a68f/); bsc `0x3d8ce31601b8ed4db5eeb921fcf7f178babe7c2e` | ⚠️ Unaudited |
| UniwhalePass | unknown | bsc | n/a | 5 deployments: bsc [`0xad25d1e971a779f3444607c1b1f1024115011511`](./contracts/bsc-56/0xad25d1e971a779f3444607c1b1f1024115011511/); bsc `0xbe8a0c12f3ebcaab4631ac9d8e5a80ccd76bfcbf`; bsc `0xc6e73c2328c838f67eb35c2bee2cfa0808cbeb49`; bsc `0xf780b3f0c5291ebcef040fc1a904169a47bd338a`; bsc `0xfbffdd3555b25f714599865c2682b0619837c97e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x03a65f983a4bc8fc04ed79d932bd42c93035139e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x046f8dbeed5b9c8b57e9b9716dd21e5c1c2dab82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x082fa863f49be9e277669ee8c71e19fc08da875f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c364aa985ed1d902e312bb24bfc7536dd047265` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40d25884494bc4d72bc7a407a8cfacfa38d640b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46eeb83992d57710d390b245d550d54378bcbf6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47325f13873adbd926a0b05c9bb1daaaa2c167f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cd612f2f73fc2259684a40b4d2e3f0db2606d94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5032cde3d1e85e9c6837ad28351bbf1fa61d3153` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dddd9e7aa629be635bf1b4311ccd680eb765883` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d9bea3fff3b86f9b6cddb9374023b3bdd0ac94c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ffcef3a8bebcc5e2e089f5deeec8675c41f3a46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa79cc844cb59c98afef6165fe9750ba1d80588a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb083c431cd6373a2b7087f6e720378a90935fc8e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [UniWhale_final_Secure3_Audit_Report.pdf](https://cdn.uniwhale.co/pdf/UniWhale_final_Secure3_Audit_Report.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 67 | high |
| [MetaScan_Report_Uniwhale.pdf](https://cdn.uniwhale.co/pdf/MetaScan_Report_Uniwhale.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 52 | high |
| [UniWhaleP2_final_Secure3_Audit_Report.pdf](https://cdn.uniwhale.co/pdf/UniWhaleP2_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-03 | stale | Direct | contract_name | 12 | high |
| [MetaScan_Report_Uniwhale_202303272132.pdf](https://cdn.uniwhale.co/pdf/MetaScan_Report_Uniwhale_202303272132.pdf) | MetaTrust | Audit | 2023-03 | stale | Direct | contract_name | 12 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x43dc3a2af323f2e4ec9cc9736df55aba9cbfd18a`](./contracts/bsc-56/0x43dc3a2af323f2e4ec9cc9736df55aba9cbfd18a/) | AirdropHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0026aae37996cea1ea1a99e88563031e5d643230`](./contracts/bsc-56/0x0026aae37996cea1ea1a99e88563031e5d643230/) | esUniwhaleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26278daa6ec3368fd2f672260abbcd8e67dffdae`](./contracts/bsc-56/0x26278daa6ec3368fd2f672260abbcd8e67dffdae/) | esUniwhaleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00c114b623e75b6ab03ba4f67f89bebacc338fd3`](./contracts/bsc-56/0x00c114b623e75b6ab03ba4f67f89bebacc338fd3/) | Fees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4a94d2891690e9b930ad20204fa071940598c64`](./contracts/bsc-56/0xc4a94d2891690e9b930ad20204fa071940598c64/) | Fees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x107f7f198cc133c2a2492566b2b229363aa080e6`](./contracts/bsc-56/0x107f7f198cc133c2a2492566b2b229363aa080e6/) | LimitBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27bbbf42dfa62bf16bf9684747476a7a40523e21`](./contracts/bsc-56/0x27bbbf42dfa62bf16bf9684747476a7a40523e21/) | LimitBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5145b10dad211e24fd217c7f57cb90d0cfbd8440`](./contracts/bsc-56/0x5145b10dad211e24fd217c7f57cb90d0cfbd8440/) | LimitBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x656ac046304446c5802849fcfd5f5ddb090a8ea7`](./contracts/bsc-56/0x656ac046304446c5802849fcfd5f5ddb090a8ea7/) | LimitBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb1b941ab76fae4e9f552b860efac1f367ac9bcc`](./contracts/bsc-56/0xbb1b941ab76fae4e9f552b860efac1f367ac9bcc/) | MarginPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e828415b88d9747bab771ce79021c7f52125b47`](./contracts/bsc-56/0x5e828415b88d9747bab771ce79021c7f52125b47/) | MigrateHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x81173c1530bb9ab00b2c47d2a6b056322f8dc8f4`](./contracts/bsc-56/0x81173c1530bb9ab00b2c47d2a6b056322f8dc8f4/) | Referrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdb88ba9c9f717a077fdc62ad3185064793725d27`](./contracts/bsc-56/0xdb88ba9c9f717a077fdc62ad3185064793725d27/) | Referrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43b8c63097f38ba0eff68766d3db991f9c1e5e3a`](./contracts/bsc-56/0x43b8c63097f38ba0eff68766d3db991f9c1e5e3a/) | TraderFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x796ae7d5001b42f4fc54be7fdc33eca5accc2d06`](./contracts/bsc-56/0x796ae7d5001b42f4fc54be7fdc33eca5accc2d06/) | TraderFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x51d759c0d7bb898358fc9e5c889eac9364ff4411`](./contracts/bsc-56/0x51d759c0d7bb898358fc9e5c889eac9364ff4411/) | TradingCoreWithRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x926b303605b03d5e9d1a942b76ce7bb03e2f36f3`](./contracts/bsc-56/0x926b303605b03d5e9d1a942b76ce7bb03e2f36f3/) | TradingCoreWithRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb6ebb9bffd3bbc9d46feac4167b88b9eee4e415d`](./contracts/bsc-56/0xb6ebb9bffd3bbc9d46feac4167b88b9eee4e415d/) | TradingCoreWithRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3cce74aa8c60c4f8a42df146f7c3d7761f12a68f`](./contracts/bsc-56/0x3cce74aa8c60c4f8a42df146f7c3d7761f12a68f/) | UniwhalePass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad25d1e971a779f3444607c1b1f1024115011511`](./contracts/bsc-56/0xad25d1e971a779f3444607c1b1f1024115011511/) | UniwhalePass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: extraction_exact=143

Fork inheritance lineage and inherited audits are included when available.
