# Agentic Audit Brief: Altitude.Fi

⚠️ Lifecycle status: DECLINING - TVL dropped 58.5% over 90 days

## Project Overview

- Project: Altitude.Fi (`altitude.fi`)
- Website: [https://www.altitude.fi/](https://www.altitude.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:00.649Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 127 unique implementations (162 raw deployments)
- DeFi Llama TVL: $7,082,102.69
- On-chain TVL (included contracts): $8,494,223.58
- TVL by chain: Ethereum $8,494,223.58

## Project Description

Lending. Structurally: 34 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 17 common project-authored base contract(s) (vaultstorage, joiningblockvault, vaultcorev1). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 196; live-surface contracts included: 158 (52 live, 106 unknown).
- Excluded by liveness: 38 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/20 (30.0%)
- Deployed-live implementations: 27 of 127 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/27
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 127
- Raw deployments: 162
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $5,311,444.82
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $5,311,444.82 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Team Omega | Tier 2 | 8 | 29.6% | 2025-05 |
| Oxorio | Tier 2 | 4 | 14.8% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DebtToken | token | ethereum | n/a | 3 deployments: ethereum [`0x5717f3f1b566cf2f7113979fcd78d9416f5b0056`](./contracts/ethereum-1/0x5717f3f1b566cf2f7113979fcd78d9416f5b0056/); ethereum `0xdf612bf20c2a68730cedc5056a1f1a90c6827e66`; ethereum `0xeb7a2cc8e04917c6363a685dad4af06709c7e198` | ✅ Audited |
| ChainlinkPrice | unknown | ethereum | n/a | [`0xc2dee6f571071801ef9b597e0b8c6b8d6f05b61b`](./contracts/ethereum-1/0xc2dee6f571071801ef9b597e0b8c6b8d6f05b61b/) | ✅ Audited |
| ConfigurableManager | governance | ethereum | n/a | [`0xff75e700356f8eac53d771ab5398d4c5309ee8d6`](./contracts/ethereum-1/0xff75e700356f8eac53d771ab5398d4c5309ee8d6/) | ✅ Audited |
| DebtToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a0cc50419fc3d021b245d86d1baafb5af2eb355`](./contracts/ethereum-1/0x6a0cc50419fc3d021b245d86d1baafb5af2eb355/); ethereum `0x8d280c136fddb2f8dba5f667bfcbdaa18766d06c` | ✅ Audited |
| MorphoVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0xb649d15333f5d267d6b385e2b2c9923f360cef44`](./contracts/ethereum-1/0xb649d15333f5d267d6b385e2b2c9923f360cef44/); ethereum `0xc1d41a81f93e3c5deac5a24f1aac7e31018393dc`; ethereum `0xcd91fa5fc2eb2f2b0e2a55c39fbc8cdf68cb1068` | ✅ Audited |
| RebalanceIncentivesController | governance | ethereum | n/a | 4 deployments: ethereum [`0x052f21dce83f8f9e5a0396a79500d875c05c6f16`](./contracts/ethereum-1/0x052f21dce83f8f9e5a0396a79500d875c05c6f16/); ethereum `0x5603578cad65ca5ccb9e3d1e8c2f346481ae768d`; ethereum `0x5e55dfe72567ab4f8cd4c5d0ae6d46a7e0fc5f04`; ethereum `0x8f18b32a89ddf6f89bf972d7f8203bacb8dc4d52` | ✅ Audited |
| TokensFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3c456b6fa3872e5c77eb77a84acc7cc39d7a11f9`](./contracts/ethereum-1/0x3c456b6fa3872e5c77eb77a84acc7cc39d7a11f9/); ethereum `0x5c792d8e434b81c37fb8d871b4cae0001a885dc6`; ethereum `0xf10b3792009bee22e8c762ea2a79cb97bed0bcb0` | ✅ Audited |
| UniswapV3Strategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc392d681ec36640530d598effa62852202f4d611`](./contracts/ethereum-1/0xc392d681ec36640530d598effa62852202f4d611/); ethereum `0xfde703415c8b6f63d9db15f5e27018b41c476848` | ✅ Audited |
| VaultERC20 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x57192ec32e649cf51380b8b314b26e73aaaf1536`](./contracts/ethereum-1/0x57192ec32e649cf51380b8b314b26e73aaaf1536/); ethereum `0xe59247d6932a300c1057c796134e4813e17d4cec` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SupplyToken | token | ethereum | n/a | 3 deployments: ethereum [`0x2ddd6d576615e6afa823adedde8dc67198333169`](./contracts/ethereum-1/0x2ddd6d576615e6afa823adedde8dc67198333169/); ethereum `0x5c58dffc753ba61e07a73a021f70366ab69c1f06`; ethereum `0x5f12942adcf315e2933a2d2892715cc8c3a447d6` | ⚠️ Unaudited |
| PoolInstance | core_logic | ethereum | n/a | [`0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2`](./contracts/ethereum-1/0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2/) | ⚠️ Unaudited |
| VaultERC20 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5481d5627aa367aa677442a120fd1021ab0595d5`](./contracts/ethereum-1/0x5481d5627aa367aa677442a120fd1021ab0595d5/); ethereum `0x550f8a1ffc921b9179267f9e7909fc68ce496a6b`; ethereum `0xaf6062222d00ac63477ad084ebd22a7821e5ee8d` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | ethereum | n/a | 3 deployments: ethereum [`0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25`](./contracts/ethereum-1/0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25/); ethereum `0x45f08c3bf6ca6f84875225dbe0e6f4b6f6578932`; ethereum `0xd812bbc43386275478b3a24dec4324f5eb97a8fd` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x367b70ea04257165f6a0f512e876ee8c06d5b70b`](./contracts/ethereum-1/0x367b70ea04257165f6a0f512e876ee8c06d5b70b/); ethereum `0x5acc3a1fdacc6e424d5b6e65697ff5eeb605e3ea` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b96e535525e931848a705cc0e14611437d418c0`](./contracts/ethereum-1/0x5b96e535525e931848a705cc0e14611437d418c0/); ethereum `0xdd489668f37a8fae106fd8a408781fa143a20777` | ⚠️ Unaudited |
| FlashloanHelper | periphery | ethereum | n/a | [`0x8797a833405e8c1dcda552d8cf807dc47bbe02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoFlashLoanStrategy | core_logic | ethereum | n/a | [`0xf2cf5261575d4f6f51d7575a154bf17412580b02`](./contracts/ethereum-1/0xf2cf5261575d4f6f51d7575a154bf17412580b02/) | ⚠️ Unaudited |
| MorphoVaultV2 | core_logic | ethereum | n/a | [`0xd36d4739b5392481bcff4035db4c8462f1c1f48e`](./contracts/ethereum-1/0xd36d4739b5392481bcff4035db4c8462f1c1f48e/) | ⚠️ Unaudited |
| RebalanceAutomation | unknown | ethereum | n/a | [`0xe3c732c02ff2fee1eb9714742e9770f9e415faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | ⚠️ Unaudited |
| StrategyAaveV3 | core_logic | ethereum | n/a | [`0xbaeb17360ec019529934ff7be22567d069852bdc`](./contracts/ethereum-1/0xbaeb17360ec019529934ff7be22567d069852bdc/) | ⚠️ Unaudited |
| StrategyPendlePT | core_logic | ethereum | n/a | 6 deployments: ethereum [`0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8`](./contracts/ethereum-1/0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8/); ethereum `0xbd1e64a20756fd520ec77d67366b7b75b144a407`; ethereum `0xf3a574f67c8091d868ef22b8b125be63df85a87b`; ethereum `0xf3d73ef5d895ee88bdae1a661073667a9192ec13`; ethereum `0xf4398693743826f28c03c12beb8f8822f9952e0d`; ethereum `0xf9de0ef14aa5dcb0e143b7344c16ac023d5dd606` | ⚠️ Unaudited |
| SupplyToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe1a846c6d6f8e0c1cf9360a9f9e76e98ff1971b2`](./contracts/ethereum-1/0xe1a846c6d6f8e0c1cf9360a9f9e76e98ff1971b2/); ethereum `0xe30afe81b4620c7fccaa48ab93b2a6b24ce8152e` | ⚠️ Unaudited |
| UserLiquidationHelper | periphery | ethereum | n/a | [`0x0b856647cd3946db3fdfdaabb8770bdfe45249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37f3108cc26d69833105463ba46e982e85b6e7b9`](./contracts/ethereum-1/0x37f3108cc26d69833105463ba46e982e85b6e7b9/); ethereum `0x999543397dde79affb4a846ca19324d5807d5387` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3dbe2dbc03bbc3c1fa63b94af54f473303c9b9cd`](./contracts/ethereum-1/0x3dbe2dbc03bbc3c1fa63b94af54f473303c9b9cd/); ethereum `0x62c80d6c99a42cd9dae81343a87291e21133ef64` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89cfeeb9031f0dd7b3bb7eb9c1622cef1aaf17ba`](./contracts/ethereum-1/0x89cfeeb9031f0dd7b3bb7eb9c1622cef1aaf17ba/); ethereum `0x8c66dfc114db9910d960f394ffb031893ef12ba8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x6317d0ebf4d37528c927019ab5b18329ff2542ce) | unknown | ethereum | n/a | 2 deployments: ethereum `0x5bb85d31e215ea7278a044f0288e27e29be28750`; ethereum `0x6317d0ebf4d37528c927019ab5b18329ff2542ce` | ❓ Unverified |
| Proxy (impl: 0xe1af3b82e18b09ab13a49a085e26b68f336e7314) | unknown | ethereum | n/a | 2 deployments: ethereum `0xdd39b83a997e4dfd2309c2ed0232ca701661f73e`; ethereum `0xe1af3b82e18b09ab13a49a085e26b68f336e7314` | ❓ Unverified |
| Proxy (impl: 0xf14a62a5b78e93760bc97fad34704024c6cf02b9) | unknown | ethereum | n/a | 2 deployments: ethereum `0xb381dfccadcb75fc70adbc6c1dc038e29555b6d8`; ethereum `0xf14a62a5b78e93760bc97fad34704024c6cf02b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x048d58909849be2300bcc8c7230d03b5f7361b9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0752751e39896d0bbaf34de8339d730d73777c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x07f61dba2520687d48fda08043d25fc664e7a24a`; ethereum `0x1c16274f2d9ac33dcd5a4da4cdde8e1652044268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08bd490b5dd7a02be0219311dc718652978e19ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a61911367cc8c534e25ef2107a429f87a03ec70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b708b74e4032c5e99fd25a99da43f4a575ef9d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c3d8f4a1d27592a64ab0f32bcde03ffca841e46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ebe43cd489a3e5d402a7143848fee0cbec45234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13ee63ef3f32a304491328535556a2b00b8c72c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1476f031dad2354a48a7c37a6128ad7b297a3997` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1487e13db6dc092e4254179b0c1d01b613e51098` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x15c2fbc9d547c029893f5f706413a953076b94a6`; ethereum `0x1f7d589e90e4e4fc1b15b3143a5c60f743c759b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bd6c9109cef734553fbca01a15c9d0b35d30770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1da11e150c4557b7ba0211dcea88be311d1696b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1da520b405f0592638c2c0c9d0bc546d5200a82d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27825e64228f2dd5e4ef99720cc390951b4d1fa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28d7fa71722dc70ba3fa659f0da5dfc82c61c67e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2aeba9f201051a771c859078934dc607161f4672` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b7d4e4a4422108b25ce2b10792b3914589342a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d29187262c2391ebad5ddd716dc750cbbd4888b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d35183b022bd8a0127e22ef0b7cd83e1ea7d459` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ebbe0b1c11db3331099eb5e8ccbb893991337fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39a993815d49dbd478e16aa71c26a4d68098c0af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b1f0ac253ce81a9dd5623c2db4fcd079503616c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c9e45612deccbbce8503734369c546e01093e74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e5777e48ac6d5e7808aeaccb267c248d1fb3563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fc8cd699b27f50e1a0876462145e6a0d7dc68a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x432391a044f0eb602a1ef5d710703e20d97385da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43eb3e4c097225245d0c4d7d84c9c0fc3bb16bdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45c9d99af37cbfe58fc77d93ca49c3da8f3f09e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b17b0536e07ff0b582e872733fe4029bb15380d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f8048241d148bbde1db3c3f1b311ef1e1692936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ff6e375f24c3b3ec43730aba2e3b57e3dfecf36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x505b5c9e5f625fa96d8091bc502cf3c3d0335027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x505bc1e082515510750028186826677c5eb1a39e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54b8168a54e4482d93129a1de276e74bb59db0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55d01081d5aa563bf8d81489f94d56d5fea54203` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5715e68c7b92e5c3f9e9f6730297f64410cae155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a9298d9d6aa7692dc193562338a48a6d231707b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b7ac0c4d8b3febb7b17060bd52af294139a706d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x602d7989e4a6ff52c194457569186200ca4eb15d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x687aef20c12eec256dd081fb3f0996abfaedcb9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6abe6bf0ff587e6e4fe208572694ef3a1472521a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7111388c85991b341373398a639baf5850cded63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77582668978fb2ea2c9eb92268d0e5cb4b01dd5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78003d7718178eae7c78d0cea7c1d6a20d5b9fe2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aaa94d30b11e8d4912fed68e7f3355eb966f040` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84044905f5d1fe897a34fb0d49a19a9ce1a0c928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x847274f7c0bc10ac18b8e55def26b186eb360c2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84910bdfb667086eb082cc1ec045b68ef86eab58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x874566ffa8d837934ae85db2209839f5fb4e6b1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88db8d5d0d244d32a3e069a2b51b8c776db6c081` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f8c91f0d7e1d6a2c06743d3f50495419fdbbeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f3ea93d5ec6c49411c101654f16aafe53a9428f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x901f06266935f3c5a062e49a79cb1163c722492f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92a35297782a8947aa6e25145d9ebcb18bbc01f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96dfad1b5feab1624597bc0744422d98526978f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bf71c8be80ad08a1ff953381a94dd915cd120c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ec90caf2e18f51eba81b313d0c61c7c9ecfd9d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f1339626c42fbe44a42a4759eb0b0ae75228020` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1a717ad4bdda2f44b0f26f46c77ad19d185aac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2327f3fb832225f5ff37cda70f694d51154929d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2c8149a730b37096cca2d374e179199071abeda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa69dd04c0bd8727861ce5e0d43e46554d474b399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa75018325d82c106aabd668ea5a24f70766804f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab769b4fbba0f83ae649fbf741dd724268637061` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1a3f612391ba9bb77989b23622062f3c701fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2ba12d633f945f423eb5a9bb9b2731665f700b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2c41d8933616ad6f0bd1826a8b20629f067364f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4165b2d55fc28a6d259d15d60d07ecaf7b565f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb445dbaf3b202dc5211c46c0b3914219448c121e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb510cd52b6ab16f070abcba7252ff94bc4e15174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbed2c749938b92f1daca04a716d17093a0bfbd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbea8472c08dd1bb5169d97af245c74750b78f1bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0631eb4bcf841bbe65887c3fa9abcf138c90447` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc29841682a5e96bada8a984bed0173de79bf9bba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6c87c8bd830d5c9bcc601b95406683bed8368ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca9fec63aeddd7269398a3de053d01cbb0056f0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc96c58e5e4fe1305dedae3277e33b7c4d7c0094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd731d705a26433a8c94a6ee1c47a191228ff9a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1254a3883c0d9c14ba42634d7eacc3449192917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd130a916ddbf1612c2f2faab6897210f056ab29b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd168b6ca6548f13f4eaf63191a2df72633742fd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd55f012fafdcba545deea711b1f4ca7e2011cce8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0xd74e561432081c94b9b9553b54e44011046002b3`; ethereum `0xed74fd7c551e755cfe210fc180545f479cace296` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8c515fdb35e25d284d0838aa75310cece2c045b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda71b48b29931a9a9ef3646a1b3257142c6326bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd2e73928a7162df30f3904078ab9aaeebc35f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd8fdf4dffcf47ae64446bc147439439d3116ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf70a6f90973973a7c2e741d5ca32688d44bbf1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0dd037dc733dcc42abc0e7e2541e699da6da29d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4752e2330149ffa10d10a7d031671bd4097d8d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4a19f5cca411583672ff863043d943fa0a4a45f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf60824c456f364ba1dcb9576295d74bef61618d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf73ac75a3e1f62dc52084e8999f3e0ec6342f2f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd2f787d384cfcbe8e02d5d32581cfa355dd30d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe4b0967dd52bff9a5e7623ae0fd7eb0c17668d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [202505-Altitude.pdf](https://github.com/OmegaAudits/audits/blob/main/202505-Altitude.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 2 | n/a |
| [Altitude-v2-Audit-Report.pdf](https://oxor-io.github.io/public_audits/Altitude/Altitude-v2-Audit-Report.pdf) | Oxorio | Audit | 2025-05 | aging | Direct | contract_name | 4 | n/a |
| [202501-Altitude-parallel-farming.pdf](https://github.com/OmegaAudits/audits/blob/main/202501-Altitude-parallel-farming.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | 1 | n/a |
| [202408-Altitude-morpho-integration.pdf](https://github.com/OmegaAudits/audits/blob/main/202408-Altitude-morpho-integration.pdf) | Team Omega | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [Altitude-Audit-Report.pdf](https://oxor-io.github.io/public_audits/Altitude/Altitude-Audit-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | contract_name | 4 | n/a |
| [202207-Altitude-v1.0.pdf](https://github.com/OmegaAudits/audits/blob/main/202207-Altitude-v1.0.pdf) | Team Omega | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [202310-Altitude-v1.1.pdf](https://github.com/OmegaAudits/audits/blob/main/202310-Altitude-v1.1.pdf) | Team Omega | Audit | 2024-07 | stale | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2ddd6d576615e6afa823adedde8dc67198333169`](./contracts/ethereum-1/0x2ddd6d576615e6afa823adedde8dc67198333169/) | SupplyToken | token | $5,310,820.15 | Verified native implementation with $5,310,820.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5481d5627aa367aa677442a120fd1021ab0595d5`](./contracts/ethereum-1/0x5481d5627aa367aa677442a120fd1021ab0595d5/) | VaultERC20 | unknown | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25`](./contracts/ethereum-1/0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25/) | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x367b70ea04257165f6a0f512e876ee8c06d5b70b`](./contracts/ethereum-1/0x367b70ea04257165f6a0f512e876ee8c06d5b70b/) | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b96e535525e931848a705cc0e14611437d418c0`](./contracts/ethereum-1/0x5b96e535525e931848a705cc0e14611437d418c0/) | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8797a833405e8c1dcda552d8cf807dc47bbe02e8`](./contracts/ethereum-1/0x8797a833405e8c1dcda552d8cf807dc47bbe02e8/) | FlashloanHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3c732c02ff2fee1eb9714742e9770f9e415faaa`](./contracts/ethereum-1/0xe3c732c02ff2fee1eb9714742e9770f9e415faaa/) | RebalanceAutomation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaeb17360ec019529934ff7be22567d069852bdc`](./contracts/ethereum-1/0xbaeb17360ec019529934ff7be22567d069852bdc/) | StrategyAaveV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8`](./contracts/ethereum-1/0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8/) | StrategyPendlePT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1a846c6d6f8e0c1cf9360a9f9e76e98ff1971b2`](./contracts/ethereum-1/0xe1a846c6d6f8e0c1cf9360a9f9e76e98ff1971b2/) | SupplyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b856647cd3946db3fdfdaabb8770bdfe45249c2`](./contracts/ethereum-1/0x0b856647cd3946db3fdfdaabb8770bdfe45249c2/) | UserLiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37f3108cc26d69833105463ba46e982e85b6e7b9`](./contracts/ethereum-1/0x37f3108cc26d69833105463ba46e982e85b6e7b9/) | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dbe2dbc03bbc3c1fa63b94af54f473303c9b9cd`](./contracts/ethereum-1/0x3dbe2dbc03bbc3c1fa63b94af54f473303c9b9cd/) | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89cfeeb9031f0dd7b3bb7eb9c1622cef1aaf17ba`](./contracts/ethereum-1/0x89cfeeb9031f0dd7b3bb7eb9c1622cef1aaf17ba/) | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=13, extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
