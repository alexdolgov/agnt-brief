# Agentic Audit Brief: Ribbon Finance

## Project Overview

- Project: Ribbon Finance (`ribbon-finance`)
- Website: [https://www.ribbon.finance/](https://www.ribbon.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:46.112Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: avalanche, ethereum
- Contract surface: 111 unique implementations (268 raw deployments)
- DeFi Llama TVL: $3,954,705.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options Vault. Structurally: 149 project-authored contract(s) across 2 chain(s); 29 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 25 common project-authored base contract(s) (dsmath, optionsvaultstorage, optionsvaultstoragev1). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 526; live-surface contracts included: 268 (206 live, 62 unknown).
- Excluded by liveness: 258 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 31/48 (64.6%)
- Deployed-live implementations: 49 of 111 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 31/49
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 62
- Unique implementations: 111
- Raw deployments: 268
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 15 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 29.2% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Unknown | Tier 2 | 22 | 44.9% | 2023-07 |
| Quantstamp | Tier 2 | 17 | 34.7% | 2021-07 |
| OpenZeppelin | Tier 1 | 14 | 28.6% | 2021-09 |
| PeckShield | Tier 2 | 10 | 20.4% | 2022-03 |
| Chainsafe | Tier 2 | 2 | 4.1% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OptionsPremiumPricer | unknown | avalanche | n/a | 8 deployments: ethereum `0x0a1b6393527ddb5cbb5e38081c9a4af08f0975db`; ethereum `0x7c24414191e2818a1a8cd995688c9da74faf67a8`; ethereum `0xcf38c16253912a827f38b5b2c08e6059a0194e8c`; ethereum `0xd8bb660a8fcaeadb7a7aef73e57a3a989065dacc`; ethereum `0xec58c11aa55836c896b80a9d8032e39eeb525cbc`; avalanche [`0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e`](./contracts/avalanche-43114/0x03bb97fa0fe4f85e378f6bc32a4ef9141876e66e/); avalanche `0x54daf3a63a6cc2e2079031e70b2d35b6083cab89`; avalanche `0xbd51039959a136d7bf7cdce956ad42fe03805b21` | ✅ Audited |
| ProtocolAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8b49fdd0cb50ba6d5c053d844fee55e5076f8504`](./contracts/ethereum-1/0x8b49fdd0cb50ba6d5c053d844fee55e5076f8504/); ethereum `0xff51ca3ba8cb5d289deb56dfcba50c7cc100d949` | ✅ Audited |
| RibbonAutocallVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21cfcecacb455da44deff585cff04b6172bb48e6`](./contracts/ethereum-1/0x21cfcecacb455da44deff585cff04b6172bb48e6/); ethereum `0x9490ccf93cd750dc47f72402a163022cfb94cfc9` | ✅ Audited |
| RibbonCoveredCall | unknown | ethereum | n/a | 6 deployments: ethereum [`0x49ca9eca607c8483a2b4f955631de2119ac15b74`](./contracts/ethereum-1/0x49ca9eca607c8483a2b4f955631de2119ac15b74/); ethereum `0x509b51fc4e1d7bcc2a97fad9a791c313de83fab8`; ethereum `0x5907c9a2ff421be53556be7fa1b5a2d90a187dfd`; ethereum `0xd24f76b5e9ac3505c61b47d9c0302ae128233676`; ethereum `0xe97557dd2b9cccd9dd94c4432281a942e2e6fc75`; ethereum `0xed61372660aeb0776d5385df2c5f99a462de0245` | ✅ Audited |
| RibbonDeltaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850`](./contracts/ethereum-1/0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850/); ethereum `0xf103486d9a098673fad8a5d86e8cfd6bf2fe6f8b` | ✅ Audited |
| RibbonDeltaVault | unknown | avalanche | n/a | 2 deployments: avalanche [`0x551c441d05e81e5a43cfd5afa7e9589039d67625`](./contracts/avalanche-43114/0x551c441d05e81e5a43cfd5afa7e9589039d67625/); avalanche `0x9d725c6d242e816da485d676056466e18cb52b13` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 24 deployments: ethereum [`0x00a62ee3d2998f67cc202990b792573961d282e6`](./contracts/ethereum-1/0x00a62ee3d2998f67cc202990b792573961d282e6/); ethereum `0x09bd08ce34237df3b935080281e91b2766efb030`; ethereum `0x0a227052b7d25f6926146d4bd431abeec5fb3234`; ethereum `0x0ff7c2d2a935d31d354bf7ea7fdad39de0141a5a`; ethereum `0x1939f826deaa3e2649dcf2c5234aa20adba08682`; ethereum `0x23b42c4234df12ed025a794abf815e4327f1ff87`; ethereum `0x2556e8ba1dfaddcbf10366cd8931bd50c45dfa22`; ethereum `0x2a0b88f5e1fba2909843a46877a9369d8ae8b5b5`; ethereum `0x34107ac950eba9568df26b6256953142792eb167`; ethereum `0x38556ec4a14c63bf0d7576cffdc6ed2a467c6550`; ethereum `0x43cfeaa64013071d5505acf98b137f74c8ccd423`; ethereum `0x65112b0932c257b821217fcccb783c7e0c227ae0`; ethereum `0x94c8422c2b2e45b3b2c69c6a556e32a37498431a`; ethereum `0xae517e17844c09f2eedf382db0e7943c4c78c7f0`; ethereum `0xb751b286480b52aa00465d57b05dab26379da5ff`; ethereum `0xbc9d2f325fb69307cd07046682d0293551b35cc1`; ethereum `0xbeba74374e7cf9362fdedd0b9e2bc4a04549e4ad`; ethereum `0xd3fe1419708e1ab8bbb2881743eacc3f8968592a`; ethereum `0xf63ce172e6c81089a4dd850491bfdaae31a60483`; ethereum `0xfe8cf701b0751f840741655213da2b46d8995fd1`; avalanche `0x7f00bb1c0a2b7db66f9a93c8356fd1af93ae9c83`; avalanche `0x9d1d31190f945b72f6de8f1c72b97931c9d5014a`; avalanche `0xa0db6c4c2906de0158802ba8d98798d04f52b79a`; avalanche `0xa5b1170f2eb3c7e1ee1a4ff6a60b3a018ae1c23d` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0fabaf48bbf864a3947bdd0ba9d764791a60467a`](./contracts/ethereum-1/0x0fabaf48bbf864a3947bdd0ba9d764791a60467a/); ethereum `0x7a477d6570386e2b9d0f14d03bd976b0c68b94b9` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef`](./contracts/ethereum-1/0x16772a7f4a3ca291c21b8ace76f9332ddffbb5ef/); ethereum `0x8d0d4cd16a93fa1e3e55ff6d112b084109846e3a` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0`](./contracts/ethereum-1/0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0/); ethereum `0xa0db6c4c2906de0158802ba8d98798d04f52b79a` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ea9e779dd4d7901c0f5e29645e957c34feb80df`](./contracts/ethereum-1/0x4ea9e779dd4d7901c0f5e29645e957c34feb80df/); ethereum `0x6779da6f8402dc69ada551bb6cd93fe5040f507e` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ce91e3f17d3bc683b73b0765dc18d75d8ebdcf8`](./contracts/ethereum-1/0x5ce91e3f17d3bc683b73b0765dc18d75d8ebdcf8/); ethereum `0x8b5876f5b0bf64056a89aa7e97511644758c3e8c` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6ec571bee204dc17ef7cad5547dc9084d28031f8`](./contracts/ethereum-1/0x6ec571bee204dc17ef7cad5547dc9084d28031f8/); ethereum `0x9d1d31190f945b72f6de8f1c72b97931c9d5014a`; ethereum `0xcfcf97f4300afaa94566696fbf116c4d881fb3bc` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa0d59794cb930e50ccfc2f4a3b827e2b36b0d1dc`](./contracts/ethereum-1/0xa0d59794cb930e50ccfc2f4a3b827e2b36b0d1dc/); ethereum `0xe5ad6986ab5c36906ec30ff5c1ad51ccf3bb3529` | ✅ Audited |
| RibbonThetaVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb0a54c398baa5e1f0d73b9328263fda296278eb0`](./contracts/ethereum-1/0xb0a54c398baa5e1f0d73b9328263fda296278eb0/); ethereum `0xc4d1009dff06a63a5548ecfeaf0942d45cf027c5` | ✅ Audited |
| RibbonThetaVault | unknown | avalanche | n/a | 8 deployments: avalanche [`0x0f403289ed880a2edb21cfc6927d5950c6d54684`](./contracts/avalanche-43114/0x0f403289ed880a2edb21cfc6927d5950c6d54684/); avalanche `0x10b87d9cf6892a1951c453a0842d4a5ca70cd00c`; avalanche `0x16b08b3c95881f6043bcd9ec6ce9b02cb28f588b`; avalanche `0x243dd88af54f9522ca3b5fb4251f5e8d53cb3ffb`; avalanche `0x87e94618b305c5305b4502807c86b6c28ad5b592`; avalanche `0xb7ec3becb9ea9946f4c055f6de73e7638ce4f480`; avalanche `0xd00a29f73aaf6fc5cdadae9cc64adc880f98fa65`; avalanche `0xdcfd145b79f07a558d380c75d3ae6be74d5b926e` | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x6bf686d99a4ce17798c45d09c21181fac29a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/); avalanche `0x6ec571bee204dc17ef7cad5547dc9084d28031f8` | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x98d03125c62dae2328d9d3cb32b7b969e6a87787`](./contracts/avalanche-43114/0x98d03125c62dae2328d9d3cb32b7b969e6a87787/) | ✅ Audited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x9dd6be071b4292cc88b8190ab718329adea3e3a3`](./contracts/avalanche-43114/0x9dd6be071b4292cc88b8190ab718329adea3e3a3/) | ✅ Audited |
| RibbonThetaVaultYearn | core_logic | ethereum | n/a | [`0x8fe74471f198e426e96be65f40eed1f8ba96e54f`](./contracts/ethereum-1/0x8fe74471f198e426e96be65f40eed1f8ba96e54f/) | ✅ Audited |
| RibbonThetaYearnVault | core_logic | ethereum | n/a | [`0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624`](./contracts/ethereum-1/0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624/) | ✅ Audited |
| RibbonToken | token | ethereum | n/a | [`0x6123b0049f904d730db3c36a31167d9d4121fa6b`](./contracts/ethereum-1/0x6123b0049f904d730db3c36a31167d9d4121fa6b/) | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1e2d05bd78bd50eaa380ef71f86430ed20301bf5`](./contracts/ethereum-1/0x1e2d05bd78bd50eaa380ef71f86430ed20301bf5/); ethereum `0x2e56d6e444ab148ec1375be108313aa759dfd248`; ethereum `0x8d93ac93bd8f6c0c1c1955f0b9fe8508281a869c` | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1f2077b0a9efb0c6568396a115272401fa7d95f4`](./contracts/ethereum-1/0x1f2077b0a9efb0c6568396a115272401fa7d95f4/); ethereum `0xa06a03d72f1b6350b3aa75524863823eb14dc864`; ethereum `0xbe0b307ee605cc23c96181a2e57ce6702632cded` | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | [`0x270f4a26a3fe5766ccef9608718491bb057be238`](./contracts/ethereum-1/0x270f4a26a3fe5766ccef9608718491bb057be238/) | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe`](./contracts/ethereum-1/0x2a6b048eb15c7d4ddca27db4f9a454196898a0fe/); ethereum `0x42cf874bbe5564efcf252bc90829551f4ec639dc`; ethereum `0x7664df7ec8a1739a0d2a25941fd4a1f8e17e9648`; ethereum `0xd906a2211eea37cf988fc70e0e9f11ac0f354a8a` | ✅ Audited |
| RibbonTreasuryVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x6aac2dc49303d40b77c8150a3cd785896c651fd2`](./contracts/ethereum-1/0x6aac2dc49303d40b77c8150a3cd785896c651fd2/); ethereum `0x76b20f25e4e3b47d855b49999419a7f241fd71fa`; ethereum `0x9d51c84904682d375bf59f541f934cd7c1fe7ad8`; ethereum `0xbeb419a50a1654b55afa9e84adb723d5349572d2`; ethereum `0xc0d57d576b0cf48be7a97e4cf9325ec5dd411a3b` | ✅ Audited |
| StrikeSelection | unknown | ethereum | n/a | 15 deployments: ethereum [`0x001d77351dad0cd3f696c67ebba5bda0c11d0db1`](./contracts/ethereum-1/0x001d77351dad0cd3f696c67ebba5bda0c11d0db1/); ethereum `0x05dc9638693117c59e7e6cc7b77232d7e494c4cf`; ethereum `0x2d8c029a76892d4b2d4e0276edc61fbef724ef1c`; ethereum `0x39d3799b8abefc3d05db5ba3b3b2770146475000`; ethereum `0x4e2d423201474c53f9a4d9017ac6f22e76c0498d`; ethereum `0x5e68b6f5c82fc5f3711541ca4a12e01b967fc641`; ethereum `0x896e4ddc672e5e3df9d21762518985ebb36482fa`; ethereum `0x9371f33cac1e64bbcb424d3384add3baff4513a5`; ethereum `0xc2b10e716987ccd35d642506fd546315c0753563`; ethereum `0xf6e785185f9943dc0db13392d5475769d2105911`; avalanche `0x00d27cbb90ae158f2db39c899e006a05df960d81`; avalanche `0x05351bd699860ce7c7282eb4ac3c92f188e3dbed`; avalanche `0x4fc945f00a7a7cd2b1d7422c913e4ab002f7ba3e`; avalanche `0x67ea3de575eeccef15a941bab9b5c78700ea84ac`; avalanche `0x6c2bd3ff7c5d7c3cf782860fc1d88cdf438ccf7b` | ✅ Audited |
| Swap | unknown | avalanche | n/a | 4 deployments: ethereum `0xa37e332ce625429b1978c33eb2f583c469b44b08`; avalanche [`0x335a9b71de68c2f1a883edbaa7f97ccbc76a3be5`](./contracts/avalanche-43114/0x335a9b71de68c2f1a883edbaa7f97ccbc76a3be5/); avalanche `0x9d92401e58f099141c410fcb0257109be4cb8c6b`; avalanche `0xfb49c36bad3f5dacd3c5620e031005192c82a54a` | ✅ Audited |
| VaultLifecycle | unknown | avalanche | n/a | 19 deployments: ethereum `0x14cc2c0b624e437202b53e533147982842865511`; ethereum `0x1c3774c538a50db827f7f7b450160e0afcbd41f8`; ethereum `0x25af99ff07575ac55fb3c2d1e6b920ba3bf67b40`; ethereum `0x35a3e0f233587f6e515bce363e0a5e42cd69ecc0`; ethereum `0x4994c95ec14ad03a09e2cc21af15e8894b7d10ee`; ethereum `0x58228f1700ca529b13cd560deab39fb254056d82`; ethereum `0x5ee5db4480db3b4cf08d871b737f0ce5785caa53`; ethereum `0x93c48f3dc0df467ca9089925bd8256c62af1f522`; ethereum `0x9c24f8138bd1462164e1e11c31ea83fd9ccb9ccf`; ethereum `0xb917ee1d969ee309c5369d022ba202a30207dde3`; ethereum `0xc1e51ba212c8b3fada5b5d3973d7c46d2b8181df`; ethereum `0xda638703bfa31e412d0e6d47e643afb2016be115`; ethereum `0xe248f69df96b0d397e8b81a592da8766b857d6c7`; ethereum `0xe55231ec85b88521415ce62a6d950e0323835adb`; ethereum `0xe64524ba73b9e74956f59f137821039254994f36`; ethereum `0xf25ff25edea27b65928716b4a0501c3ae0b5d3b6`; avalanche [`0x001d77351dad0cd3f696c67ebba5bda0c11d0db1`](./contracts/avalanche-43114/0x001d77351dad0cd3f696c67ebba5bda0c11d0db1/); avalanche `0x5ee5db4480db3b4cf08d871b737f0ce5785caa53`; avalanche `0xe0854ddd162ffe4e2ff1db6e62b544521cb9223e` | ✅ Audited |
| VaultLifecycleTreasury | unknown | ethereum | n/a | 3 deployments: ethereum [`0xa746b0ceec022d53665840593a0f673f91cd856b`](./contracts/ethereum-1/0xa746b0ceec022d53665840593a0f673f91cd856b/); ethereum `0xe1d00f9bafea5aa40a2192af12b68af3d390afe2`; ethereum `0xff0629b5888792d71f41f68e65b8e2238d9b3329` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BalancerGovernanceToken | token | ethereum | n/a | [`0xba100000625a3754423978a60c9317c58a424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| ManualPricer | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f`](./contracts/ethereum-1/0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f/); ethereum `0x3250e0d6730869233d304842d53f52c40a865c86`; ethereum `0x393952f6da58524140469abb59ae9161fd66bce4`; ethereum `0x3e3aa8444ac0157a15b6bf4b9a4057c8cd4ebcb1`; ethereum `0x80a0def4483267e5bf39e7a6b4be972cee46c525`; ethereum `0xa1a436335d24d8a1700fa6674d428ba2e79512a7`; ethereum `0xfc988789fc586b8f1d5e03825a9f3614309fb0b7` | ⚠️ Unaudited |
| ManualStrikeSelection | token | ethereum | n/a | 5 deployments: ethereum [`0x3c8114263092fd27acfeaa99549d4f3066d7036c`](./contracts/ethereum-1/0x3c8114263092fd27acfeaa99549d4f3066d7036c/); ethereum `0x8a09674406da7c96b7f6cb941e92b7cabec26fe3`; ethereum `0x9246cb31fdd179f266f3b5bb3a0f66e9cebe8b8e`; ethereum `0xab40513b6f0a33a68b59ccf90cb6f892b4be1573`; ethereum `0xfd48f39be14990bd8d96a446c12e7fd08c51b451` | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | n/a | [`0x3472a5a71965499acd81997a54bba8d852c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | ⚠️ Unaudited |
| PerpToken | token | ethereum | n/a | [`0xbc396689893d065f41bc2c6ecbee5e0085233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | ⚠️ Unaudited |
| RethPricer | operational_periphery | ethereum | n/a | [`0x30b3059b1e870203aef55b071110b49b22341fc6`](./contracts/ethereum-1/0x30b3059b1e870203aef55b071110b49b22341fc6/) | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1e80265e821990b8139b43c12c622f64bf928a9a`](./contracts/ethereum-1/0x1e80265e821990b8139b43c12c622f64bf928a9a/); ethereum `0x8e28f2e7334b44c0753df20774683fb004c08d6a`; ethereum `0xa1457fb1e20fe1399e5d581733bb6ac0e7b7486f`; ethereum `0xbf20939250629cec76ae8dd6717fa68e4bb77b7c`; ethereum `0xc14a21bc1a73e80ce0b254b82504bfab58eea400` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | ethereum | n/a | 12 deployments: ethereum [`0x01f1d8744469da81dbb6b7d3e9811f10029365e7`](./contracts/ethereum-1/0x01f1d8744469da81dbb6b7d3e9811f10029365e7/); ethereum `0x1bc5ee65197c54106f9eb02e476191c6991dcffa`; ethereum `0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc`; ethereum `0x21438c87e749920625dc3bd2742a3e879caf6c72`; ethereum `0x24ab80935f568e8032253bef349ca3b6097e24c6`; ethereum `0x2bc165b7af65a94977ba7c625214438407741d77`; ethereum `0x51a5a8f2487ddd446672868d95347b7cbe041f8b`; ethereum `0x5d4c0a7f6888e80a86c8ee5d2660c216cfea1b51`; ethereum `0x8a0eff819d7e197ee79ff3fef520fe56a2c36ca5`; ethereum `0xbcf89a96f131ad7587fbadc58f9fdb62d68147ad`; ethereum `0xeb74e0ef154f29d7ace73d72b88bf1f28137c733`; ethereum `0xef3c692023ce020316c6be3a0479f87767ea31e7` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | ethereum | n/a | 9 deployments: ethereum [`0x2530298e2f5c026e794f8b39bda39f50c70bc6b4`](./contracts/ethereum-1/0x2530298e2f5c026e794f8b39bda39f50c70bc6b4/); ethereum `0x3fb82fef405b14c6569dd07f0a673df79f0f1f44`; ethereum `0x6fc853a8978017381e4bec0da7792f0b46453a8e`; ethereum `0x74e52410aede9a66d0b21eb8658bf27a15fbd421`; ethereum `0xcd87867e13b10a4a320b48f8e317534e3f5450fc`; ethereum `0xeaf743e9fe7449ae3ce02bc01712666530d2666e`; avalanche `0x43cfeaa64013071d5505acf98b137f74c8ccd423`; avalanche `0x8dcc8aec402d106adffd5f534f39d38bc1ddf54c`; avalanche `0xda6b28c54f5b009394ce1b814fdfc4dcb603418a` | ⚠️ Unaudited |
| RibbonVaultPauser | core_logic | avalanche | n/a | [`0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa`](./contracts/avalanche-43114/0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa/) | ⚠️ Unaudited |
| SAVAXDepositHelper | periphery | avalanche | n/a | [`0x084a82fe209f014b3cb6d5986b2c65b584168303`](./contracts/avalanche-43114/0x084a82fe209f014b3cb6d5986b2c65b584168303/) | ⚠️ Unaudited |
| SAvaxPricer | operational_periphery | avalanche | n/a | [`0x0a59f35f00a482bb04d95428e1ec051cbac216c9`](./contracts/avalanche-43114/0x0a59f35f00a482bb04d95428e1ec051cbac216c9/) | ⚠️ Unaudited |
| SimpleToken | token | ethereum | n/a | [`0x4d224452801aced8b2f0aebe155379bb5d594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| Spell | unknown | ethereum | n/a | [`0x090185f2135308bad17527004364ebcc2d37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | ⚠️ Unaudited |
| STETHDepositHelper | periphery | ethereum | n/a | [`0x07f36cf3c834e423536680f560b6bad0319f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | ⚠️ Unaudited |
| VaultLifecycleSTETH | unknown | ethereum | n/a | 7 deployments: ethereum [`0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0`](./contracts/ethereum-1/0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0/); ethereum `0x2c5dd86b524dde4c9b2d0f36d72bdec7ea089bf1`; ethereum `0x5cbb58fbd5e53a8db156c1261403b14dc618f3db`; ethereum `0x84ff097b9d1a3a32732d36aa2c6b08d4a8c08928`; ethereum `0x92c47ebaf26c7de6d9dfed9c2f6d957860f42836`; ethereum `0xb48c17175ca34c87fad6b34824b6151376ad38ee`; ethereum `0xcf7dd57bbe6cec4f07f1db1ac80b14421b8c8932` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | unknown | ethereum | n/a | 4 deployments: ethereum [`0x63b9712f3acf31597595a1d43f7ee0ad2c83357f`](./contracts/ethereum-1/0x63b9712f3acf31597595a1d43f7ee0ad2c83357f/); ethereum `0xc06944ec6c0ee3f152c284e5df24b42d90169377`; ethereum `0xc7654fd45b96885ba231bb9083d1472e8c9a5e5e`; avalanche `0xc1e51ba212c8b3fada5b5d3973d7c46d2b8181df` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 12 deployments: ethereum [`0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7`](./contracts/ethereum-1/0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7/); ethereum `0x43277c92f9936aeb5d6a2713a44cd2f096f171cc`; ethereum `0x4e079dca26a4fe2586928c1319b20b1bf9f9be72`; ethereum `0x5b0655f938a72052c46d2e94d206ccb6ff625a3a`; ethereum `0x8913eab16a302de3e498bba39940e7a55c0b9325`; ethereum `0x9038403c3f7c6b5ca361c82448daa48780d7c8bd`; ethereum `0x9674126ff31e5ece36de0cf03a49351a7c814587`; ethereum `0x98c371567b8a196518dcb4a4383387a2c7339382`; ethereum `0xa2b078c8e3bd5ab9aa94222b08223ee07ee348fc`; ethereum `0xa8a9699161f266f7e79080ca0b65210820be8732`; ethereum `0xad4dbd3be46f7bdab82702b581b1d4c5f584741a`; ethereum `0xb7fd36eb847c04a144fab717e85b94da1d8c9b4e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (62)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x091ee664913a8406bae886ef99c71b6fc3f6cef8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1646affaeb46f3dd25b2936ab786a4fac1e3e2b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d79f7dc7065a23fc278a20551b97a236ec81889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dd8c138978e55488a11693dac51f67406e44807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bbb34e45d7e5eb369dad26274a7b9cbb0714a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x248797b4e54945521739584d1baca4401e6a31ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27499432808f901fde539c32d288557f7d1f1db0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a6b34e4c2df56acd34b73c5bf365966c8fd58d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x336045401b3db35a658498e065f881a80e537fb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3e85f323ac36bb214c8e5d467217b4fa094989` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b607fc5d6814e424f5cefa57cdfb2caa101dfa0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fa76827575bb99ba4e56dc39562771921f11e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47d06393cffeacd55c9d0838e150fba6dd3ab141` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51a287d1ec1f2e1216ce14aef4c12c43061b1844` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5beacf046f7ef7d40a3ebd50c519f7d19fb675e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64bed5955b93ee3744e7d6558374ec170ac47af0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67fccb64b26c72c708c716d047ff13b291af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac82ef791c78f53c7c5025e1550df01126d0e33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7624da97664ff93189b8f797cbb2433963e4ca01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea8fa840b27e588a9e27f7070c7c365ec2f034d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f66cb9d74bbb781ada8ed28f47b316942cc075c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8d727e03054bae850e8f84413f7e4a98b40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9305e90a4f642370d5bd4ac2ef13877bc9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacb7f3baf1d9986760c0a470cd14ceca7544d4d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8cceb7ccc39b93fecd22c2a9855b1fd05c22080` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8ff397b25731fde6cb29dd27254042f616f79d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd8c311a1b545da6e385cba7209211faf0ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc127a437d0705413690cbb513ec838cf37027632` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc84ca7c35d1490e7ebd03978fd5f5dbfd29b3cd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc85be07a0157d2f1c677a71cfc7bf5f2b28df5ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf22032da47998ea78082abab00bb49e8d990503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd602e05594101fdcf3af0ddcf4775fb1b78f5397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2e68dbfc55ede4129bcaa93d08a6dd531bfde5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a5288996eb63ed5978ebedea9418a304181563` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf513bd4ba753548505a245be1877c39a4f0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf861894c0a3865f47c58ba9d3c741bb2a3705b35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9c28a0d2f1cb416cb577f1da280d45de2b704a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe423309b326b7bf9cc28669a47a4e09288df5e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04c75fed758eb1aa50d045465ac31ae400aeadc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cd322e9a6031f27627cd1af9c4ac006bf927abc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1627b54aa04010c123b8f77d8d9fa0939f84292b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ce1fe3944653a8d7e793240adbe9858d8c94d39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20e7dad86939b31e02e28614473905bf79ffe6ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2156b61681b323e7d4c4ed50df0b83d608298906` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ba283a4a88362704004e7cfdac6039b6ac02326` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x31e6ad61908f060ad89786ece37b2498b2f1ad45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3284949736d55faf3706ec167f4d51f1afc6c6ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3405ad3afbd981e5545308168e33be24aeee0021` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34c737f8bafb9e97ce8f4c702101f7878cc41103` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b69a34bfa22162036f10bb352c7e9377758f01d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b859b9e6df4130e1822dd076af479e56d49c39e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c4fd210b4a432652f02af641b7140f545b4f6ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f49d8b93e0e25e892be65a921c2b0226689df66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a0b5e34eff0ec5a3476a915f35c800f8abeb3bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a66a6d01af96efb36e7db47be759d9d87c066d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf6183697d87cb064d9fe56210ca4d240cf4fef4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1b7b1fc9b34ce51a432f1dbbcd2120db3016371` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc8698bee361b479de6683f34883798ef34e29873` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed386690377a2b455c0c7c5cdcc90a41d6405e6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0ac6fa11fb4e0446c02c5455b63163b05a9631` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfce6a25b07c20bd601114e79c21fab4dae18448c` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f`](./contracts/ethereum-1/0x00e81211ce0fa2a46a2838d6b4861b5bdb5cc87f/) | ManualPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c8114263092fd27acfeaa99549d4f3066d7036c`](./contracts/ethereum-1/0x3c8114263092fd27acfeaa99549d4f3066d7036c/) | ManualStrikeSelection | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3472a5a71965499acd81997a54bba8d852c6e53d`](./contracts/ethereum-1/0x3472a5a71965499acd81997a54bba8d852c6e53d/) | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc396689893d065f41bc2c6ecbee5e0085233447`](./contracts/ethereum-1/0xbc396689893d065f41bc2c6ecbee5e0085233447/) | PerpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30b3059b1e870203aef55b071110b49b22341fc6`](./contracts/ethereum-1/0x30b3059b1e870203aef55b071110b49b22341fc6/) | RethPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e80265e821990b8139b43c12c622f64bf928a9a`](./contracts/ethereum-1/0x1e80265e821990b8139b43c12c622f64bf928a9a/) | RibbonThetaRETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01f1d8744469da81dbb6b7d3e9811f10029365e7`](./contracts/ethereum-1/0x01f1d8744469da81dbb6b7d3e9811f10029365e7/) | RibbonThetaSTETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2530298e2f5c026e794f8b39bda39f50c70bc6b4`](./contracts/ethereum-1/0x2530298e2f5c026e794f8b39bda39f50c70bc6b4/) | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa`](./contracts/avalanche-43114/0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa/) | RibbonVaultPauser | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x084a82fe209f014b3cb6d5986b2c65b584168303`](./contracts/avalanche-43114/0x084a82fe209f014b3cb6d5986b2c65b584168303/) | SAVAXDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a59f35f00a482bb04d95428e1ec051cbac216c9`](./contracts/avalanche-43114/0x0a59f35f00a482bb04d95428e1ec051cbac216c9/) | SAvaxPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d224452801aced8b2f0aebe155379bb5d594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | SimpleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x090185f2135308bad17527004364ebcc2d37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | Spell | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07f36cf3c834e423536680f560b6bad0319f5411`](./contracts/ethereum-1/0x07f36cf3c834e423536680f560b6bad0319f5411/) | STETHDepositHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0`](./contracts/ethereum-1/0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0/) | VaultLifecycleSTETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63b9712f3acf31597595a1d43f7ee0ad2c83357f`](./contracts/ethereum-1/0x63b9712f3acf31597595a1d43f7ee0ad2c83357f/) | VaultLifecycleWithSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7`](./contracts/ethereum-1/0x19854c9a5ffa8116f48f984bdf946fb9cea9b5f7/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 62 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10, medium=1
- Match method counts: contract_name=8, extraction_exact=407

Fork inheritance lineage and inherited audits are included when available.
