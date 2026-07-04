# Agentic Audit Brief: Ribbon Finance

## Project Overview

- Project: Ribbon Finance (`ribbon-finance`)
- Website: [https://www.ribbon.finance/](https://www.ribbon.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:45.375Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: avalanche, ethereum
- Contract surface: 117 unique implementations (274 raw deployments)
- DeFi Llama TVL: $3,954,705.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options Vault. Structurally: 126 project-authored contract(s) across 2 chain(s); 20 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 16 common project-authored base contract(s) (dsmath, optionsvaultstorage, optionsvaultstoragev1). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 572; live-surface contracts included: 274 (206 live, 68 unknown).
- Excluded by liveness: 298 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 31/49 (63.3%)
- Deployed-live implementations: 49 of 117 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 31/51
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 117
- Raw deployments: 274
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 15 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 28.6% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 22 | 43.1% | 2023-07 |
| Quantstamp | Tier 2 | 17 | 33.3% | 2021-07 |
| OpenZeppelin | Tier 1 | 14 | 27.5% | 2021-09 |
| PeckShield | Tier 2 | 10 | 19.6% | 2022-03 |
| Chainsafe | Tier 2 | 2 | 3.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OptionsPremiumPricer | unknown | avalanche | n/a | 8 deployments: ethereum `0x0a1b63...0975db`; ethereum `0x7c2441...af67a8`; ethereum `0xcf38c1...194e8c`; ethereum `0xd8bb66...65dacc`; ethereum `0xec58c1...525cbc`; avalanche [`0x03bb97...76e66e`](./contracts/avalanche-43114/0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e/); avalanche `0x54daf3...3cab89`; avalanche `0xbd5103...805b21` | ✅ Audited |
| ProtocolAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8b49fd...6f8504`](./contracts/ethereum-1/0x8b49fdd0cb50ba6d5c053d844fee55e5076f8504/); ethereum `0xff51ca...00d949` | ✅ Audited |
| RibbonAutocallVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21cfce...bb48e6`](./contracts/ethereum-1/0x21cfcecacb455da44deff585cff04b6172bb48e6/); ethereum `0x9490cc...94cfc9` | ✅ Audited |
| RibbonCoveredCall | unknown | ethereum | n/a | 6 deployments: ethereum [`0x49ca9e...c15b74`](./contracts/ethereum-1/0x49ca9eca607c8483a2b4f955631de2119ac15b74/); ethereum `0x509b51...83fab8`; ethereum `0x5907c9...187dfd`; ethereum `0xd24f76...233676`; ethereum `0xe97557...e6fc75`; ethereum `0xed6137...de0245` | ✅ Audited |
| RibbonDeltaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fb118...ba0850`](./contracts/ethereum-1/0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850/); ethereum `0xf10348...fe6f8b` | ✅ Audited |
| RibbonDeltaVault | unknown | avalanche | n/a | 2 deployments: avalanche [`0x551c44...d67625`](./contracts/avalanche-43114/0x551c441d05e81e5a43cfd5afa7e9589039d67625/); avalanche `0x9d725c...b52b13` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 24 deployments: ethereum [`0x00a62e...d282e6`](./contracts/ethereum-1/0x00a62ee3d2998f67cc202990b792573961d282e6/); ethereum `0x09bd08...efb030`; ethereum `0x0a2270...fb3234`; ethereum `0x0ff7c2...141a5a`; ethereum `0x1939f8...a08682`; ethereum `0x23b42c...f1ff87`; ethereum `0x2556e8...5dfa22`; ethereum `0x2a0b88...e8b5b5`; ethereum `0x34107a...2eb167`; ethereum `0x38556e...7c6550`; ethereum `0x43cfea...ccd423`; ethereum `0x65112b...227ae0`; ethereum `0x94c842...98431a`; ethereum `0xae517e...78c7f0`; ethereum `0xb751b2...9da5ff`; ethereum `0xbc9d2f...b35cc1`; ethereum `0xbeba74...49e4ad`; ethereum `0xd3fe14...68592a`; ethereum `0xf63ce1...a60483`; ethereum `0xfe8cf7...995fd1`; avalanche `0x7f00bb...ae9c83`; avalanche `0x9d1d31...d5014a`; avalanche `0xa0db6c...52b79a`; avalanche `0xa5b117...e1c23d` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0fabaf...60467a`](./contracts/ethereum-1/0x0fabaf48bbf864a3947bdd0ba9d764791a60467a/); ethereum `0x7a477d...8b94b9` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16772a...fbb5ef`](./contracts/ethereum-1/0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef/); ethereum `0x8d0d4c...846e3a` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ebea9...1a89c0`](./contracts/ethereum-1/0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0/); ethereum `0xa0db6c...52b79a` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ea9e7...eb80df`](./contracts/ethereum-1/0x4ea9e779dd4d7901c0f5e29645e957c34feb80df/); ethereum `0x6779da...0f507e` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ce91e...ebdcf8`](./contracts/ethereum-1/0x5ce91e3f17d3bc683b73b0765dc18d75d8ebdcf8/); ethereum `0x8b5876...8c3e8c` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6ec571...8031f8`](./contracts/ethereum-1/0x6ec571bee204dc17ef7cad5547dc9084d28031f8/); ethereum `0x9d1d31...d5014a`; ethereum `0xcfcf97...1fb3bc` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa0d597...b0d1dc`](./contracts/ethereum-1/0xa0d59794cb930e50ccfc2f4a3b827e2b36b0d1dc/); ethereum `0xe5ad69...bb3529` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0a54c...278eb0`](./contracts/ethereum-1/0xb0a54c398baa5e1f0d73b9328263fda296278eb0/); ethereum `0xc4d100...f027c5` | ✅ Audited |
| RibbonThetaVault | unknown | avalanche | n/a | 8 deployments: avalanche [`0x0f4032...d54684`](./contracts/avalanche-43114/0x0f403289ed880a2edb21cfc6927d5950c6d54684/); avalanche `0x10b87d...0cd00c`; avalanche `0x16b08b...8f588b`; avalanche `0x243dd8...cb3ffb`; avalanche `0x87e946...d5b592`; avalanche `0xb7ec3b...e4f480`; avalanche `0xd00a29...98fa65`; avalanche `0xdcfd14...5b926e` | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x6bf686...9a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/); avalanche `0x6ec571...8031f8` | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x98d031...a87787`](./contracts/avalanche-43114/0x98d03125c62dae2328d9d3cb32b7b969e6a87787/) | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x9dd6be...a3e3a3`](./contracts/avalanche-43114/0x9dd6be071b4292cc88b8190ab718329adea3e3a3/) | ✅ Audited |
| RibbonThetaVaultYearn | core_logic | ethereum | n/a | [`0x8fe744...96e54f`](./contracts/ethereum-1/0x8fe74471f198e426e96be65f40eed1f8ba96e54f/) | ✅ Audited |
| RibbonThetaYearnVault | core_logic | ethereum | n/a | [`0xcc3235...cc9624`](./contracts/ethereum-1/0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624/) | ✅ Audited |
| RibbonToken | token | ethereum | n/a | [`0x6123b0...21fa6b`](./contracts/ethereum-1/0x6123b0049f904d730db3c36a31167d9d4121fa6b/) | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1e2d05...301bf5`](./contracts/ethereum-1/0x1e2d05bd78bd50eaa380ef71f86430ed20301bf5/); ethereum `0x2e56d6...dfd248`; ethereum `0x8d93ac...1a869c` | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1f2077...7d95f4`](./contracts/ethereum-1/0x1f2077b0a9efb0c6568396a115272401fa7d95f4/); ethereum `0xa06a03...4dc864`; ethereum `0xbe0b30...32cded` | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | [`0x270f4a...7be238`](./contracts/ethereum-1/0x270f4a26a3fe5766ccef9608718491bb057be238/) | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2a6b04...98a0fe`](./contracts/ethereum-1/0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe/); ethereum `0x42cf87...c639dc`; ethereum `0x7664df...7e9648`; ethereum `0xd906a2...354a8a` | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x6aac2d...651fd2`](./contracts/ethereum-1/0x6aac2dc49303d40b77c8150a3cd785896c651fd2/); ethereum `0x76b20f...fd71fa`; ethereum `0x9d51c8...fe7ad8`; ethereum `0xbeb419...9572d2`; ethereum `0xc0d57d...411a3b` | ✅ Audited |
| StrikeSelection | unknown | ethereum | n/a | 15 deployments: ethereum [`0x001d77...1d0db1`](./contracts/ethereum-1/0x001d77351dad0cd3f696c67ebba5bda0c11d0db1/); ethereum `0x05dc96...94c4cf`; ethereum `0x2d8c02...24ef1c`; ethereum `0x39d379...475000`; ethereum `0x4e2d42...c0498d`; ethereum `0x5e68b6...7fc641`; ethereum `0x896e4d...6482fa`; ethereum `0x9371f3...4513a5`; ethereum `0xc2b10e...753563`; ethereum `0xf6e785...105911`; avalanche `0x00d27c...960d81`; avalanche `0x05351b...e3dbed`; avalanche `0x4fc945...f7ba3e`; avalanche `0x67ea3d...ea84ac`; avalanche `0x6c2bd3...8ccf7b` | ✅ Audited |
| Swap | unknown | avalanche | n/a | 4 deployments: ethereum `0xa37e33...b44b08`; avalanche [`0x335a9b...6a3be5`](./contracts/avalanche-43114/0x335a9b71de68c2f1a883edbaa7f97ccbc76a3be5/); avalanche `0x9d9240...cb8c6b`; avalanche `0xfb49c3...82a54a` | ✅ Audited |
| VaultLifecycle | unknown | avalanche | n/a | 19 deployments: ethereum `0x14cc2c...865511`; ethereum `0x1c3774...bd41f8`; ethereum `0x25af99...f67b40`; ethereum `0x35a3e0...69ecc0`; ethereum `0x4994c9...7d10ee`; ethereum `0x58228f...056d82`; ethereum `0x5ee5db...5caa53`; ethereum `0x93c48f...f1f522`; ethereum `0x9c24f8...cb9ccf`; ethereum `0xb917ee...07dde3`; ethereum `0xc1e51b...8181df`; ethereum `0xda6387...6be115`; ethereum `0xe248f6...57d6c7`; ethereum `0xe55231...835adb`; ethereum `0xe64524...994f36`; ethereum `0xf25ff2...b5d3b6`; avalanche [`0x001d77...1d0db1`](./contracts/avalanche-43114/0x001d77351dad0cd3f696c67ebba5bda0c11d0db1/); avalanche `0x5ee5db...5caa53`; avalanche `0xe0854d...b9223e` | ✅ Audited |
| VaultLifecycleTreasury | unknown | ethereum | n/a | 3 deployments: ethereum [`0xa746b0...cd856b`](./contracts/ethereum-1/0xa746b0ceec022d53665840593a0f673f91cd856b/); ethereum `0xe1d00f...90afe2`; ethereum `0xff0629...9b3329` | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| ManualPricer | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x00e812...5cc87f`](./contracts/ethereum-1/0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f/); ethereum `0x3250e0...865c86`; ethereum `0x393952...66bce4`; ethereum `0x3e3aa8...4ebcb1`; ethereum `0x80a0de...46c525`; ethereum `0xa1a436...9512a7`; ethereum `0xfc9887...9fb0b7` | ⚠️ Unaudited |
| ManualStrikeSelection | token | ethereum | n/a | 5 deployments: ethereum [`0x3c8114...d7036c`](./contracts/ethereum-1/0x3c8114263092fd27acfeaa99549d4f3066d7036c/); ethereum `0x8a0967...c26fe3`; ethereum `0x9246cb...be8b8e`; ethereum `0xab4051...be1573`; ethereum `0xfd48f3...51b451` | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | n/a | [`0x3472a5...c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| PerpToken | token | ethereum | n/a | [`0xbc3966...233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| RethPricer | operational_periphery | ethereum | n/a | [`0x30b305...341fc6`](./contracts/ethereum-1/0x30b3059b1e870203aef55b071110b49b22341fc6/) | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1e8026...928a9a`](./contracts/ethereum-1/0x1e80265e821990b8139b43c12c622f64bf928a9a/); ethereum `0x8e28f2...c08d6a`; ethereum `0xa1457f...b7486f`; ethereum `0xbf2093...b77b7c`; ethereum `0xc14a21...eea400` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | 12 deployments: ethereum [`0x01f1d8...9365e7`](./contracts/ethereum-1/0x01f1d8744469da81dbb6b7d3e9811f10029365e7/); ethereum `0x1bc5ee...1dcffa`; ethereum `0x20abe9...cfabcc`; ethereum `0x21438c...af6c72`; ethereum `0x24ab80...7e24c6`; ethereum `0x2bc165...741d77`; ethereum `0x51a5a8...041f8b`; ethereum `0x5d4c0a...ea1b51`; ethereum `0x8a0eff...c36ca5`; ethereum `0xbcf89a...8147ad`; ethereum `0xeb74e0...37c733`; ethereum `0xef3c69...ea31e7` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | ethereum | n/a | 9 deployments: ethereum [`0x253029...0bc6b4`](./contracts/ethereum-1/0x2530298e2f5c026e794f8b39bda39f50c70bc6b4/); ethereum `0x3fb82f...0f1f44`; ethereum `0x6fc853...453a8e`; ethereum `0x74e524...fbd421`; ethereum `0xcd8786...5450fc`; ethereum `0xeaf743...d2666e`; avalanche `0x43cfea...ccd423`; avalanche `0x8dcc8a...ddf54c`; avalanche `0xda6b28...03418a` | ⚠️ Unaudited |
| RibbonVaultPauser | core_logic | avalanche | n/a | [`0xf08d6a...6d19aa`](./contracts/avalanche-43114/0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa/) | ⚠️ Unaudited |
| SAVAXDepositHelper | periphery | avalanche | n/a | [`0x084a82...168303`](./contracts/avalanche-43114/0x084a82fe209f014b3cb6d5986b2c65b584168303/) | ⚠️ Unaudited |
| SAvaxPricer | operational_periphery | avalanche | n/a | [`0x0a59f3...c216c9`](./contracts/avalanche-43114/0x0a59f35f00a482bb04d95428e1ec051cbac216c9/) | ⚠️ Unaudited |
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| SimpleWithdrawer | unknown | ethereum | n/a | [`0x24a1a1...608b48`](./contracts/ethereum-1/0x24a1a1cb198f0d3ee9d86b4bd4d3f89358608b48/) | ⚠️ Unaudited |
| Spell | unknown | ethereum | n/a | [`0x090185...37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | ⚠️ Unaudited |
| STETHDepositHelper | periphery | ethereum | n/a | [`0x07f36c...9f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | ⚠️ Unaudited |
| VaultLifecycleSTETH | unknown | ethereum | n/a | 7 deployments: ethereum [`0x21f0ff...4bd6b0`](./contracts/ethereum-1/0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0/); ethereum `0x2c5dd8...089bf1`; ethereum `0x5cbb58...18f3db`; ethereum `0x84ff09...c08928`; ethereum `0x92c47e...f42836`; ethereum `0xb48c17...ad38ee`; ethereum `0xcf7dd5...8c8932` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | unknown | ethereum | n/a | 4 deployments: ethereum [`0x63b971...83357f`](./contracts/ethereum-1/0x63b9712f3acf31597595a1d43f7ee0ad2c83357f/); ethereum `0xc06944...169377`; ethereum `0xc7654f...9a5e5e`; avalanche `0xc1e51b...8181df` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 12 deployments: ethereum [`0x19854c...a9b5f7`](./contracts/ethereum-1/0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7/); ethereum `0x43277c...f171cc`; ethereum `0x4e079d...f9be72`; ethereum `0x5b0655...625a3a`; ethereum `0x8913ea...0b9325`; ethereum `0x903840...d7c8bd`; ethereum `0x967412...814587`; ethereum `0x98c371...339382`; ethereum `0xa2b078...e348fc`; ethereum `0xa8a969...be8732`; ethereum `0xad4dbd...84741a`; ethereum `0xb7fd36...8c9b4e` | ⚠️ Unaudited |
| wOHMTWAPOracleV1 | unknown | ethereum | n/a | [`0x261e76...b1a6cb`](./contracts/ethereum-1/0x261e769d52165379834080ec4c80070f6eb1a6cb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x091ee6...f6cef8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x156ff0...120474` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1646af...e3e2b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d79f7...c81889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dd8c1...e44807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bbb3...0714a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x248797...6a31ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x274994...1f1db0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a6b34...fd58d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x336045...537fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3e85...094989` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b607f...01dfa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fa768...f11e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47d063...3ab141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51a287...1b1844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5beacf...b675e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64bed5...c47af0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67fccb...af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac82e...6d0e33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7624da...e4ca01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea8fa...2f034d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9427e7...df3587` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f66cb...cc075c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa72062...df4677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8d727...40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9305e...9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacb7f3...44d4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8cceb...c22080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8ff39...6f79d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd8c31...ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc127a4...027632` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc84ca7...9b3cd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc85be0...8df5ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccf7e3...f4805d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf2203...990503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd602e0...8f5397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2e68d...bfde5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a528...181563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf08d6a...6d19aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf513bd...0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf86189...705b35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9c28a...b704a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe4233...8df5e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04c75f...aeadc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cd322...927abc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1627b5...84292b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ce1fe...c94d39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20e7da...ffe6ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2156b6...298906` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ba283...c02326` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x31e6ad...f1ad45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x328494...c6c6ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3405ad...ee0021` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34c737...c41103` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b69a3...58f01d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b859b...49c39e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c4fd2...b4f6ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f49d8...89df66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a0b5e...beb3bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a66a6...c066d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf6183...f4fef4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1b7b1...016371` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc8698b...e29873` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed3866...405e6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0ac6...5a9631` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfce6a2...18448c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.openzeppelin.com/news/ribbon-finance-audit](https://www.openzeppelin.com/news/ribbon-finance-audit) | OpenZeppelin | Audit | 2021-09 | stale | Direct | contract_name | 87 | high |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | OpenZeppelin | Audit | 2021-07 | stale | Direct | contract_name | 83 | high |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | 6 | medium |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | 5 | n/a |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-04 | stale | Direct | contract_name | 8 | high |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 8 | high |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | 4 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 19 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [RibbonV2-July-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/RibbonV2-July-2021.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 83 | high |
| [ribbon-07-2023.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-07-2023.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 18 | high |
| [ribbon-finance-04-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-04-2021.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 8 | high |
| [ribbon-finance-11-2021.pdf](https://github.com/ChainSafe/audits/blob/main/Ribbon%20Finance/ribbon-finance-11-2021.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://raw.githubusercontent.com/ribbon-finance/audit/b837e7b04dfbbc6fb577039e9baa598f46ec04a7/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | contract_name | 83 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 117 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10, medium=1
- Match method counts: contract_name=8, extraction_exact=407

Fork inheritance lineage and inherited audits are included when available.
