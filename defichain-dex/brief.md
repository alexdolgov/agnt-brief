# Agentic Audit Brief: DefiChain DEX

⚠️ Lifecycle status: DEAD - TVL changed 12.6% over 90 days

## Project Overview

- Project: DefiChain DEX (`defichain-dex`)
- Website: [https://defichain.com/dex](https://defichain.com/dex)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-25T12:07:01.864Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, aurora, avalanche, boba, bsc, celo, cronos, ethereum, fantom, gnosis, harmony, heco, manta, moonbeam, moonriver, optimism, polygon
- Contract surface: 53 unique implementations (76 raw deployments)
- DeFi Llama TVL: $1,181,900.33
- On-chain TVL (included contracts): $1,510,371.12
- TVL by chain: Ethereum $1,510,371.12

## Project Description

DefiChain DEX is a multi-chain decentralized exchange and yield farming protocol that enables users to provide liquidity, stake tokens, and earn rewards across various blockchain networks. It aggregates liquidity pools, vaults, and farming contracts to facilitate token swaps and yield generation.

### Architecture

The protocol's product families share common infrastructure such as proxy contracts (ArcProxy, TransparentUpgradeableProxy) for upgradeability and governance controllers (FarmV2Controller, FarmV3Controller) that manage farming operations. Liquidity pools (e.g., PancakePair, UniswapV2Pair) feed into vaults (bVault) and auto-compounders (AutoFarmV2) to optimize yield, while staking contracts (BOGStaking, NyanRewards) distribute rewards across chains.

## Audit Coverage Summary

- Verified implementations audited: 0/36 (0.0%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 53
- Raw deployments: 76
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,510,371.12
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $1,510,371.12 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ⚠️ Unaudited |
| ApeRewards | unknown | arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ⚠️ Unaudited |
| ARBIS | unknown | arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2 | unknown | bsc | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | aurora | 7 deployments: gnosis `0xfada8c...d4680e`; polygon `0x89d065...eb0b76`; moonbeam `0x77286f...8573a6`; moonriver `0xfada8c...d4680e`; celo `0xdd11b6...12303f`; avalanche `0x864a0b...23f213`; aurora [`0x625374...71a700`](./contracts/aurora-1313161554/0x62537419c8327ab66165bae205da8fcb6871a700/) | ⚠️ Unaudited |
| BabyPair | unknown | bsc | [`0xaf18cd...1875d8`](./contracts/bsc-56/0xaf18cde26fdd22561df2a02958cba092f41875d8/) | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| BerryMaster | proxy | bsc | [`0xf859bf...07f830`](./contracts/bsc-56/0xf859bf77cbe8699013d6dbc7c2b926aaf307f830/) | ⚠️ Unaudited |
| BitBTCOptimism | unknown | optimism | [`0xc98b98...e1f272`](./contracts/optimism-10/0xc98b98d17435aa00830c87ea02474c5007e1f272/) | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | ⚠️ Unaudited |
| BOG | unknown | bsc | [`0xb09fe1...f36b09`](./contracts/bsc-56/0xb09fe1613fe03e7361319d2a43edc17422f36b09/) | ⚠️ Unaudited |
| BOGStaking | unknown | bsc | 3 deployments: bsc [`0x2f0596...8d978b`](./contracts/bsc-56/0x2f0596b989d79fda9b0a89f57d982ea02f8d978b/); bsc `0xc3ab35...a18b65`; bsc `0xcd4826...b690b9` | ⚠️ Unaudited |
| CarbonRewards | unknown | arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | ⚠️ Unaudited |
| CavePool | core_logic | bsc | 2 deployments: bsc [`0x282ffb...020b9c`](./contracts/bsc-56/0x282ffbe782f903340a14955649032302e8020b9c/); bsc `0xa65d60...73cfe4` | ⚠️ Unaudited |
| FarmV2Controller | governance | optimism | [`0x03bba8...702d85`](./contracts/optimism-10/0x03bba86e68c7dd733703cbcd44072082af702d85/) | ⚠️ Unaudited |
| FarmV3Controller | governance | optimism | [`0xecbaff...cad827`](./contracts/optimism-10/0xecbaffaa5c4e94219f4c166dac9d4a1520cad827/) | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| MantaMintableERC20 | token | manta | [`0x916476...295f9a`](./contracts/manta-169/0x91647632245cabf3d66121f86c387ae0ad295f9a/) | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | 3 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c`; arbitrum `0xf6a377...4a703d` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | 7 deployments: bsc [`0x34943e...2830cd`](./contracts/bsc-56/0x34943e562503bfec83250e5069ad21100c2830cd/); bsc `0x68955a...b5bea8`; bsc `0x6922e6...9e5cf8`; bsc `0x9d1b71...ad57d4`; bsc `0xdd901f...0d49ae`; bsc `0xdf825e...e886a4`; bsc `0xf6088c...bb5207` | ⚠️ Unaudited |
| PONGRewards | unknown | arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | [`0xdf5e0e...d806a8`](./contracts/ethereum-1/0xdf5e0e81dff6faf3a7e52ba697820c5e32d806a8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | cronos | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xce43e8...e6e355` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x96a29c...0d5d99` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x2c9bfc...2d7c0f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x6731a6...dfde2a` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x994be2...96f5a7` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x9e98de...91ca35` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xbf2b95...23980c` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc865dd...8c1df9` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf0d110...edf61a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x76b8c3...34cbaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9c30e4...ed894e` | ❓ Unverified |
| UnnamedContract | unknown | boba | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xbf19c3...de343a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x374e9f...3af13a` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x9c5765...d13eea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ArcxTokenV2 | token | $949,182.70 | Verified native implementation with $949,182.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $302,901.93 | Verified native implementation with $302,901.93 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | core_logic | $88,280.57 | Verified native implementation with $88,280.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | core_logic | $86,330.94 | Verified native implementation with $86,330.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | core_logic | $71,162.70 | Verified native implementation with $71,162.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | core_logic | $10.00 | Verified native implementation with $10.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ERC20Peg | token | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb970e2...e46655`](./contracts/arbitrum-42161/0xb970e280f9ddaa3349ab9f3ecf778970cde46655/) | ApeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x089519...450452`](./contracts/bsc-56/0x0895196562c7868c5be92459fae7f877ed450452/) | AutoFarmV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x625374...71a700`](./contracts/aurora-1313161554/0x62537419c8327ab66165bae205da8fcb6871a700/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf859bf...07f830`](./contracts/bsc-56/0xf859bf77cbe8699013d6dbc7c2b926aaf307f830/) | BerryMaster | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | BlackPoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f0596...8d978b`](./contracts/bsc-56/0x2f0596b989d79fda9b0a89f57d982ea02f8d978b/) | BOGStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c5058...d49f45`](./contracts/arbitrum-42161/0x2c5058325373d02dfd6c08e48d91fcaf8fd49f45/) | CarbonRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x282ffb...020b9c`](./contracts/bsc-56/0x282ffbe782f903340a14955649032302e8020b9c/) | CavePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03bba8...702d85`](./contracts/optimism-10/0x03bba86e68c7dd733703cbcd44072082af702d85/) | FarmV2Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xecbaff...cad827`](./contracts/optimism-10/0xecbaffaa5c4e94219f4c166dac9d4a1520cad827/) | FarmV3Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x916476...295f9a`](./contracts/manta-169/0x91647632245cabf3d66121f86c387ae0ad295f9a/) | MantaMintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbdad40...61fb07`](./contracts/manta-169/0xbdad407f77f44f7da6684b416b1951eca461fb07/) | MantaMintableERC20WithBridgeFlag | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe34003...098bc2`](./contracts/arbitrum-42161/0xe340031b61a394c7811868ef81d2eacc79098bc2/) | PONGRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | StakedBPT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf0075...d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
