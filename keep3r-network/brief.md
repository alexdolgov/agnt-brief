# Agentic Audit Brief: Keep3r Network

⚠️ Lifecycle status: DECLINING - TVL dropped 9.7% over 90 days

## Project Overview

- Project: Keep3r Network (`keep3r-network`)
- Website: [https://keep3r.network](https://keep3r.network)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T15:21:07.961Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-a865
- Chains: ethereum
- Contract surface: 52 unique implementations (193 raw deployments)
- DeFi Llama TVL: $3,579,669.18
- On-chain TVL (included contracts): $2,004,270,034.42
- TVL by chain: Ethereum $2,004,270,034.42

## Project Description

Keep3r Network is a decentralized keeper/job network where projects can register jobs and keepers execute external maintenance or automation tasks in exchange for ETH, token, or KP3R-denominated rewards. KP3R is used for network participation and governance/incentive mechanisms; third-party DeFi protocols may be integrations or job targets but should not be treated as Keep3r-owned product components without independent evidence.

### Architecture

The Keep3r Network family relies on a single governance proxy (GnosisSafe) and a registry (ffregistry) to manage job listings and keeper interactions. Token contracts like KP3R and various Uniswap pairs provide liquidity and reward mechanisms, while CErc20Delegator proxies suggest integration with lending markets for capital efficiency.

## Contract Surface Quality

- Indexed contracts: 1714; live-surface contracts included: 193 (192 live, 1 unknown).
- Excluded by liveness: 1469 inactive, 52 singleton, 0 uninitialized.
- Deployment units: 7/27 live.
- Detected codebases: compound-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 23/637.

## Audit Coverage Summary

- Verified implementations audited: 1/52 (1.9%)
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 52
- Raw deployments: 193
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $2,004,270,034.42
- Latest audit: 2020-11 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,004,270,034.42 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 1.9% | 2020-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Keep3r | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/); ethereum `0xeb02ad...8c44cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CCollateralCapErc20Delegate | token | ethereum | unit-30614 (65 proxies) | 65 deployments: ethereum [`0x054b7e...4096ed`](./contracts/ethereum-1/0x054b7ed3f45714d3091e82aad64a1588dc4096ed/); ethereum `0x081fe6...190a21`; ethereum `0x10a3da...2923a8`; ethereum `0x10fdbd...e649db`; ethereum `0x17107f...ebd4be`; ethereum `0x197070...80d4fc`; ethereum `0x19d166...1a8e46`; ethereum `0x1d0986...7c7e35`; ethereum `0x1ff8cd...bc998e`; ethereum `0x21011b...8f49fc`; ethereum `0x250fb3...b7f74a`; ethereum `0x255559...e82b55`; ethereum `0x28526b...c5402e`; ethereum `0x299e25...ea3a3b`; ethereum `0x2a537f...29366d`; ethereum `0x2a867f...07ea6d`; ethereum `0x3225e3...5e31bc`; ethereum `0x338286...f5d206`; ethereum `0x362338...d31f58`; ethereum `0x3c6c55...36d296`; ethereum `0x4112a7...73387f`; ethereum `0x44fbeb...53b322`; ethereum `0x51f48b...0c07af`; ethereum `0x523eff...5e8e9e`; ethereum `0x58da9c...f3d2ef`; ethereum `0x590892...e03cb3`; ethereum `0x658839...f76a90`; ethereum `0x697256...6a5fd9`; ethereum `0x71cefc...441847`; ethereum `0x766175...8d8fff`; ethereum `0x797aab...3d2157`; ethereum `0x7aaa32...0f1fea`; ethereum `0x7c3297...203112`; ethereum `0x7ea9c6...907db3`; ethereum `0x81e346...ff13c6`; ethereum `0x8379ba...18ae41`; ethereum `0x857599...793d9b`; ethereum `0x89e429...3d5828`; ethereum `0x8b3ff1...3685a5`; ethereum `0x8c3b7a...4e6f91`; ethereum `0x903560...89fc5d`; ethereum `0x92b767...7a1d9f`; ethereum `0x98e329...94b77c`; ethereum `0xab1058...abf8f7`; ethereum `0xb092b4...26a4d5`; ethereum `0xc25eae...732e14`; ethereum `0xc36080...b82b17`; ethereum `0xc68251...ac651b`; ethereum `0xc7fd8d...c77480`; ethereum `0xcbae0a...dc6b76`; ethereum `0xce4fe9...9d2eb3`; ethereum `0xd37295...ae6705`; ethereum `0xd5103a...1b2a8b`; ethereum `0xd692ac...e85d2c`; ethereum `0xd73944...66314b`; ethereum `0xdbb5e3...78fecf`; ethereum `0xdfff11...990393`; ethereum `0xe585c7...996e73`; ethereum `0xe89a6d...a363c7`; ethereum `0xef58b2...9bc025`; ethereum `0xeff039...77532c`; ethereum `0xf04ce2...97fb4e`; ethereum `0xf55bbe...dbe924`; ethereum `0xf8445c...016e20`; ethereum `0xfd609a...a924e2` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | unit-30612 (23 proxies) | 23 deployments: ethereum [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/); ethereum `0x12a9cc...93d12c`; ethereum `0x1b3e95...bd12d5`; ethereum `0x215f34...e264b1`; ethereum `0x226f37...46102f`; ethereum `0x30190a...f22340`; ethereum `0x3c9f53...080101`; ethereum `0x48759f...e4166a`; ethereum `0x672473...0bf40b`; ethereum `0x76eb2f...b2a37c`; ethereum `0x7736ff...732992`; ethereum `0x86bbd9...7548aa`; ethereum `0x8e5954...2ec68f`; ethereum `0x8fc8bf...92b431`; ethereum `0x9e8e20...69c1a9`; ethereum `0xa7c405...5c9806`; ethereum `0xa8caea...a73e4f`; ethereum `0xb8c5af...6109f9`; ethereum `0xca55f9...17fd54`; ethereum `0xe7bff2...03aa16`; ethereum `0xecab2c...a97ecf`; ethereum `0xfa3472...7621b9`; ethereum `0xfeeb92...7db59f` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | unit-30626 | [`0x41c84c...c6b393`](./contracts/ethereum-1/0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393/) | ⚠️ Unaudited |
| MMVault | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x037b39...77710e`](./contracts/ethereum-1/0x037b39edae767ea692884d51fc697c54e777710e/); ethereum `0x05c85e...da844a`; ethereum `0x076950...5723bc`; ethereum `0x0c0291...8ca069`; ethereum `0x1b428b...f3582b`; ethereum `0x1e074d...81f23f`; ethereum `0x23b197...bdc16d`; ethereum `0x374513...6c6faa`; ethereum `0x3edee5...dbe96c`; ethereum `0x41e0c2...8fcf43`; ethereum `0x680237...88eef7`; ethereum `0xb06661...84179a`; ethereum `0xb0f1a3...24b488`; ethereum `0xe28b1d...52d2ea`; ethereum `0xe85e9f...bd347b` | ⚠️ Unaudited |
| yVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/); ethereum `0x2f0811...9faf18`; ethereum `0x37d19d...eda74a`; ethereum `0x597ad1...33522e`; ethereum `0x5dbcf3...bca25c`; ethereum `0x629c75...21c129`; ethereum `0x7ff566...e9d0f6`; ethereum `0xacd43e...a6f952`; ethereum `0xba2e7f...b94fe1`; ethereum `0xe1237a...4d16c7` | ⚠️ Unaudited |
| ProxyERC20 | token | ethereum | n/a | 7 deployments: ethereum [`0x0f8328...e8ee1d`](./contracts/ethereum-1/0x0f83287ff768d1c1e17a42f44d644d7f22e8ee1d/); ethereum `0x1715ac...d967b6`; ethereum `0x269895...2aaf9b`; ethereum `0x97fe22...ad855f`; ethereum `0xd71ecf...b98620`; ethereum `0xf48e20...73b8b4`; ethereum `0xf6b1c6...f3e07d` | ⚠️ Unaudited |
| yDelegatedVault | core_logic | ethereum | n/a | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | unit-30638 | [`0xbe86e8...470c5c`](./contracts/ethereum-1/0xbe86e8918dfc7d3cb10d295fc220f941a1470c5c/) | ⚠️ Unaudited |
| ArmorToken | token | ethereum | n/a | [`0x1337de...dfe46a`](./contracts/ethereum-1/0x1337def16f9b486faed0293eb623dc8395dfe46a/) | ⚠️ Unaudited |
| yWBTC | token | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| mSpellStaking | token | ethereum | n/a | [`0xbd2fba...5e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | ⚠️ Unaudited |
| MMToken | token | ethereum | n/a | [`0xa283aa...0fd304`](./contracts/ethereum-1/0xa283aa7cfbb27ef0cfbcb2493dd9f4330e0fd304/) | ⚠️ Unaudited |
| yWrappedVault | core_logic | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| yUSDT | token | ethereum | n/a | 3 deployments: ethereum [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/); ethereum `0xa17872...a1dd14`; ethereum `0xe6354e...92d447` | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | unit-30629 | [`0x4e3a36...b3c0b8`](./contracts/ethereum-1/0x4e3a36a633f63aee0ab57b5054ec78867cb3c0b8/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0xd06527...2860ee`](./contracts/ethereum-1/0xd06527d5e56a3495252a528c4987003b712860ee/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | unit-30636 | [`0xab1c34...144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | ⚠️ Unaudited |
| CreamEth2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/); ethereum `0xcbc106...ab89fd` | ⚠️ Unaudited |
| CreamLock | unknown | ethereum | n/a | 3 deployments: ethereum [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/); ethereum `0xd5586c...e20a6c`; ethereum `0xe618c2...2f5945` | ⚠️ Unaudited |
| CustomTreasury | operational_periphery | ethereum | n/a | [`0xc43b3b...4ef8a2`](./contracts/ethereum-1/0xc43b3b33b21dfcef48d8f35e6671c4f4be4ef8a2/) | ⚠️ Unaudited |
| DegenBox | unknown | ethereum | n/a | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/); ethereum `0xd77c2a...9ee175`; ethereum `0xd9194d...ab029d`; ethereum `0xe4ffd6...02830e`; ethereum `0xed3519...b095bf` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-30617 | [`0x0d5dc6...7d4e83`](./contracts/ethereum-1/0x0d5dc686d0a2abbfdafdfb4d0533e886517d4e83/) | ⚠️ Unaudited |
| Hegic | unknown | ethereum | n/a | [`0x584bc1...768430`](./contracts/ethereum-1/0x584bc13c7d411c00c01a62e8019472de68768430/) | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| LiquidatorRewards | operational_periphery | ethereum | n/a | [`0xf79603...962c00`](./contracts/ethereum-1/0xf79603a71144e415730c1a6f57f366e4ea962c00/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| MultiCollateralSynth | unknown | ethereum | n/a | [`0x10a5f7...09275f`](./contracts/ethereum-1/0x10a5f7d9d65bcc2734763444d4940a31b109275f/) | ⚠️ Unaudited |
| NativeEtherWrapper | unknown | ethereum | n/a | [`0x7a3d89...7a7eeb`](./contracts/ethereum-1/0x7a3d898b717e50a96fd8b232e9d15f0a547a7eeb/) | ⚠️ Unaudited |
| Spell | unknown | ethereum | n/a | [`0x090185...37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/); ethereum `0x948a9b...4a492e`; ethereum `0xe0839f...660261` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13c154...0ebb27`](./contracts/ethereum-1/0x13c1542a468319688b89e323fe9a3be3a90ebb27/); ethereum `0xfbaedd...69de10` | ⚠️ Unaudited |
| StakingRewardsLock | unknown | ethereum | n/a | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | ⚠️ Unaudited |
| SynthetixBridgeToOptimism | operational_periphery | ethereum | n/a | [`0x39ea01...c7e48f`](./contracts/ethereum-1/0x39ea01a0298c315d149a490e34b59dbf2ec7e48f/) | ⚠️ Unaudited |
| SynthRedeemer | unknown | ethereum | n/a | [`0xe53313...15e234`](./contracts/ethereum-1/0xe533139af961c9747356d947838c98451015e234/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 4 deployments: ethereum [`0x18ee95...08d89f`](./contracts/ethereum-1/0x18ee956e99cc606530c20d9cadd6af5ece08d89f/); ethereum `0x1f2bcc...400a4f`; ethereum `0xa42f21...46379c`; ethereum `0xaf988a...cb7de8` | ⚠️ Unaudited |
| UniV3PairManager | governance | ethereum | n/a | [`0x3f6740...1e44d7`](./contracts/ethereum-1/0x3f6740b5898c5d3650ec6eace9a649ac791e44d7/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 8 deployments: ethereum [`0x19b080...f03859`](./contracts/ethereum-1/0x19b080fe1ffa0553469d20ca36219f17fcf03859/); ethereum `0x2fc52c...3dc1a2`; ethereum `0x398642...5c0043`; ethereum `0x8461a0...911899`; ethereum `0x8818a9...b73067`; ethereum `0x9c2c89...de0f0c`; ethereum `0xbbcf16...8b29cf`; ethereum `0xd6ac1c...710538` | ⚠️ Unaudited |
| xVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/); ethereum `0x67c472...06c365` | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/); ethereum `0xc2cb10...24ce32` | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/); ethereum `0xd6ad7a...a3436e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Keep3r-v1.0.pdf](https://github.com/keep3r-network/keep3r.network/blob/master/audits/PeckShield-Audit-Report-Keep3r-v1.0.pdf) | PeckShield | Audit | 2020-11 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x037b39...77710e`](./contracts/ethereum-1/0x037b39edae767ea692884d51fc697c54e777710e/) | MMVault | core_logic | $4,292,067.60 | Verified native implementation with $4,292,067.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc43b3b...4ef8a2`](./contracts/ethereum-1/0xc43b3b33b21dfcef48d8f35e6671c4f4be4ef8a2/) | CustomTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d5dc6...7d4e83`](./contracts/ethereum-1/0x0d5dc686d0a2abbfdafdfb4d0533e886517d4e83/) | GnosisSafe | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | Keep3rV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39ea01...c7e48f`](./contracts/ethereum-1/0x39ea01a0298c315d149a490e34b59dbf2ec7e48f/) | SynthetixBridgeToOptimism | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f6740...1e44d7`](./contracts/ethereum-1/0x3f6740b5898c5d3650ec6eace9a649ac791e44d7/) | UniV3PairManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b080...f03859`](./contracts/ethereum-1/0x19b080fe1ffa0553469d20ca36219f17fcf03859/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/) | xVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 13 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=17

Fork inheritance lineage and inherited audits are included when available.
