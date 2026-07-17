# Agentic Audit Brief: Bio Protocol

## Project Overview

- Project: Bio Protocol (`bio-protocol`)
- Website: [https://www.bio.xyz/](https://www.bio.xyz/)
- Lifecycle: active (Tier 0, 79.5% below peak)
- Generated: 2026-07-04T14:53:07.479Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: base, ethereum
- Contract surface: 47 unique implementations (134 raw deployments)
- DeFi Llama TVL: $4,112,254.28
- On-chain TVL (included contracts): $133,528,280.50
- TVL by chain: Ethereum $124,791,536.09 | Base $8,736,744.41

## Project Description

Launchpad. Structurally: 47 project-authored contract(s) across 2 chain(s); 22 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 19 common project-authored base contract(s) (reentrancyguardupgradeable, accesscontrolupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 164; live-surface contracts included: 133 (126 live, 7 unknown).
- Excluded by liveness: 31 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/31 (9.7%)
- Deployed-live implementations: 40 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/40
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 47
- Raw deployments: 134
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $129,996,520.19
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FYEO | Tier 2 | 2 | 5.0% | 2025-07 |
| Pashov Audit Group | Tier 2 | 2 | 5.0% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentToken | token | base | n/a | 10 deployments: base [`0x03699469849a6cf876a65b4fd01fbd663c401127`](./contracts/base-8453/0x03699469849a6cf876a65b4fd01fbd663c401127/); base `0x492ae2107f952b02f2554ce153841933c09d6d43`; base `0x54f16bd3996169914c84dbb2a16635100cf48a0a`; base `0x5d4d258144bc954aefc00ee6cbda0433b1b2dcd3`; base `0x7db6dfe35158bab10039648ce0e0e119d0ec21ec`; base `0x896a0b1f23479e4438ad086c0bda159361294250`; base `0x9d56c29e820dd13b0580b185d0e0dc301d27581d`; base `0xd9bf9127e37d33514aa485ff7d3b26f1f5298411`; base `0xe183b1a4dd59ca732211678eca1836ee35bce582`; base `0xe8f802b0cb13adf1a4333b541d4d3f703b8a69fa` | ✅ Audited |
| FairAuctionVesting | operational_periphery | ethereum | n/a | 24 deployments: ethereum [`0x122a151d6cf3213d2d00920887cac1986c13d722`](./contracts/ethereum-1/0x122a151d6cf3213d2d00920887cac1986c13d722/); ethereum `0x2dc49ed248c43bb56411f886ebc13928f1c522ef`; ethereum `0x3068a5995a4f3408a2e11036c42f551221de9824`; ethereum `0x40e1532ad3eeb7994a63c3b7d166af99af6165c7`; ethereum `0x4821550561553770b671f17873656b249662bbb3`; ethereum `0x50926e24bd470876b5507c73e76a53bd39bf905b`; ethereum `0x50fb8ec3a293dd208a2a347da995dc8f3d062540`; ethereum `0x51363917ff8ab51c869fe75ab30f7b883eedfd1f`; ethereum `0x5d4f4b3db74b08f87fdfb58180e95164a14231bc`; ethereum `0x6f4744df2e5a188b552cd0dbe77331b8a9d0c36d`; ethereum `0x7bbb1ba644633de2f24d2ce2e5d962990dd2cdd2`; ethereum `0x86206f8813a1a4201420d67b75c27cca0ff2a836`; ethereum `0x87621fccfb79a9121445e0e1c47aa877a56df2e6`; ethereum `0x88d6ddd0f48297d8dda4a97b81c646d5a7cd586b`; ethereum `0xa4c91a5a8a01d4b54f49d276051533781817b18a`; ethereum `0xad032c243c88d41973ba75e0c2b6585273cb42c1`; ethereum `0xb35d73f8a8c8fa5926ea77d3866c314c96cb400f`; ethereum `0xd20e71bf1243d782aaac542bc4adceaddfe84507`; ethereum `0xe1a1598f3f5a8b1143fd93c20c33856dcbdd265b`; ethereum `0xe5e2ecdf265a32584ce16a56f80292973b838b24`; ethereum `0xeb46ed79243e866078132e59a946652cddee64b3`; ethereum `0xf6380a738840f81b9913672e64bcbb485a3788da`; ethereum `0xf6d0f52a1b42aae6dda00ff3adedc1b71645d83e`; ethereum `0xfbda21d8ef309795bd01a2fcd23748be98c899a6` | ✅ Audited |
| TokenVesting | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x4f55edffd4e9325577d4c8dde6f15782cefd6517`](./contracts/ethereum-1/0x4f55edffd4e9325577d4c8dde6f15782cefd6517/); ethereum `0x7c36c64da1c3a2065074caa9c48e7648fb733aab`; ethereum `0xde659cafbe68fc2b80fe7eb4f6135c1d4473926d`; ethereum `0xf9f8a1d51fb257097836ebda0428e28efdbe58e9` | ✅ Audited |
| VeBIO | unknown | base | n/a | [`0xe1b48c0279cd95d984f1290293116c45d049a3bd`](./contracts/base-8453/0xe1b48c0279cd95d984f1290293116c45d049a3bd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BioToken | token | ethereum | n/a | [`0xcb1592591996765ec0efc1f92599a19767ee5ffa`](./contracts/ethereum-1/0xcb1592591996765ec0efc1f92599a19767ee5ffa/) | ⚠️ Unaudited |
| HairToken | token | ethereum | n/a | [`0x9ce115f0341ae5dabc8b477b74e83db2018a6f42`](./contracts/ethereum-1/0x9ce115f0341ae5dabc8b477b74e83db2018a6f42/) | ⚠️ Unaudited |
| IPToken | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0d6866f3369e4825ce07f226a424f1c11861add1`](./contracts/ethereum-1/0x0d6866f3369e4825ce07f226a424f1c11861add1/); ethereum `0x3c426812f39337679265ea407f744cdac672d9d3`; ethereum `0x7b66e84be78772a3afaf5ba8c1993a1b5d05f9c2`; ethereum `0x89a14be8f7824d4775053edad0f2fa2d6767b72b`; ethereum `0x9e4fc6e6d1a64e3429ab852d3cb31ad7aa06997a`; ethereum `0xd07ea8776e52c1b67dca6ffbc3f659fc9fbe4113`; ethereum `0xd79fe2c4879b3a3d732df11294329a60cff3a0a9` | ⚠️ Unaudited |
| Token | token | base | n/a | [`0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2`](./contracts/base-8453/0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2/) | ⚠️ Unaudited |
| GrowToken | token | ethereum | n/a | [`0x761a3557184cbc07b7493da0661c41177b2f97fa`](./contracts/ethereum-1/0x761a3557184cbc07b7493da0661c41177b2f97fa/) | ⚠️ Unaudited |
| CerebrumDAOToken | token | ethereum | n/a | [`0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b`](./contracts/ethereum-1/0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b/) | ⚠️ Unaudited |
| AthenaDAOToken | token | ethereum | n/a | [`0xa4ffdf3208f46898ce063e25c1c43056fa754739`](./contracts/ethereum-1/0xa4ffdf3208f46898ce063e25c1c43056fa754739/) | ⚠️ Unaudited |
| JBToken | token | ethereum | n/a | [`0xf4308b0263723b121056938c2172868e408079d0`](./contracts/ethereum-1/0xf4308b0263723b121056938c2172868e408079d0/) | ⚠️ Unaudited |
| QBioToken | token | ethereum | n/a | [`0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde`](./contracts/ethereum-1/0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde/) | ⚠️ Unaudited |
| OtoCoToken | token | ethereum | n/a | [`0x2196b84eace74867b73fb003aff93c11fce1d47a`](./contracts/ethereum-1/0x2196b84eace74867b73fb003aff93c11fce1d47a/) | ⚠️ Unaudited |
| StakedLockingCrowdSale | token | ethereum | n/a | [`0x35bce29f52f51f547998717cd598068afa2b29b7`](./contracts/ethereum-1/0x35bce29f52f51f547998717cd598068afa2b29b7/) | ⚠️ Unaudited |
| AccessResolver | unknown | ethereum | n/a | [`0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691`](./contracts/ethereum-1/0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691/) | ⚠️ Unaudited |
| CrowdSale | unknown | ethereum | n/a | [`0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2`](./contracts/ethereum-1/0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2/) | ⚠️ Unaudited |
| DAOToken | token | ethereum | n/a | [`0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f`](./contracts/ethereum-1/0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f/) | ⚠️ Unaudited |
| ERC20Mock | token | ethereum | n/a | [`0x41e9163856b37fa79dc676d3805de88e917c6fd3`](./contracts/ethereum-1/0x41e9163856b37fa79dc676d3805de88e917c6fd3/) | ⚠️ Unaudited |
| IPNFT | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0443dfac8e510cfbdfdb9247e77400e9728ae45d`](./contracts/ethereum-1/0x0443dfac8e510cfbdfdb9247e77400e9728ae45d/); ethereum `0x096c80ddf90008eb29d692fd91fdf6420563e3dc`; ethereum `0x6b179dffac5e190c670176606f552cb792847f80`; ethereum `0xd035421eeffced3262cc360ca9aca23770c57384`; ethereum `0xdbdf5082500b7732bf88e6f4fe0ecbd1582cc060` | ⚠️ Unaudited |
| LockedToken | token | ethereum | n/a | 2 deployments: ethereum [`0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8`](./contracts/ethereum-1/0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8/); ethereum `0xc8cd729902e344bedf8585fe1af0545c44582b5b` | ⚠️ Unaudited |
| LockedTokenFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8299699969d696bd9c05fd4fb89f8840e2c3199a`](./contracts/ethereum-1/0x8299699969d696bd9c05fd4fb89f8840e2c3199a/); ethereum `0xf6fee6cd54d687015c28f5261f544552c08ccae0` | ⚠️ Unaudited |
| LockingCrowdSale | unknown | ethereum | n/a | [`0xfbfd266bf3b49db8746155aa318d4533cc66db26`](./contracts/ethereum-1/0xfbfd266bf3b49db8746155aa318d4533cc66db26/) | ⚠️ Unaudited |
| MockUsdc | unknown | ethereum | n/a | [`0x42d01846f7b3669a5b0167c938168afe22618e8b`](./contracts/ethereum-1/0x42d01846f7b3669a5b0167c938168afe22618e8b/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 10 deployments: base [`0x1f4446faaaed23090f324f051c3f8c5ce5ad1c36`](./contracts/base-8453/0x1f4446faaaed23090f324f051c3f8c5ce5ad1c36/); base `0x321725ee44cb4bfa544cf45a5a585b925d30a58c`; base `0x3568c7a4f7545805e379c264303239781b4e9a79`; base `0x3a38dde9824e18cc4c0a147824f95bf5d608f0b3`; base `0x490a4b510d0ea9f835d2df29eb73b4fca5071937`; base `0x58d75a1c4477914f9a98a8708feaed1dbe40b8a3`; base `0x85d0e1bde4e71aede97e0f0412c6e4b3d1e59a97`; base `0x93757336de76f24f7eee15e6150e4ec42fbdaa21`; base `0xe18c07d858fb1bbf8c06fd78c13b86afd3d04e28`; base `0xfbad5be3a505889df2aa189580e3bd36118bf4d8` | ⚠️ Unaudited |
| StakedToken | token | ethereum | n/a | 23 deployments: ethereum [`0x023c3e7cc97b5d00bc88b47e068d324faffb98be`](./contracts/ethereum-1/0x023c3e7cc97b5d00bc88b47e068d324faffb98be/); ethereum `0x0bb56479c5d9d253e22380ecfe9a2885aa126cca`; ethereum `0x3350153900c0bd8dfdbfe77b274ac4e49d002588`; ethereum `0x357d6e1ae7c075984174d2a7e96f6e724ed0ae7c`; ethereum `0x450ee6af4d54054c069c2471f08478fe3d0ef313`; ethereum `0x67cdf8faf53fe5411940cae499799242c6dfcecc`; ethereum `0x75edde220b82d23f9ef8b38e5c533e8e865e92ba`; ethereum `0x88835d2c6d06759d3b6ea61e6b558f7c42469ad7`; ethereum `0xa41ceaec2b16e32a87e899d514395ecf5b74de48`; ethereum `0xb840c44c4e998bd98702467493b9a8fe88690687`; ethereum `0xb90f1028266210a007780e6a37d2c36738830f69`; ethereum `0xd12e4175619607a39299388d0f8a4233f3121e79`; ethereum `0xe41ba1329c76640a5da6d995bfd1b56a08c52352`; base `0x6c85e430ac13f6e88c83434b7789b969497ca9f8`; base `0x852c11e88478aafda31950f9e4f4fe86d9342e53`; base `0x85ecbc26f39fdca293d76c40fdd9feadc6a66797`; base `0x9dff3a11f315288cdb100364d6a81088ea9c6a7f`; base `0xafb64ab91da6be665d84016844e5c345399e07d0`; base `0xcbd956381a12cc84302344960c95e4ac313845db`; base `0xe01b67eaca87d742638842fceb9e8c2f006dc29b`; base `0xe1ea71e1c1dc3c2492a4d6b7618840d9f1ebe13f`; base `0xec637540ae2da2b795afe9427b840a827cf72f9a`; base `0xee8ea7c133d986b8d9a2708ef50d83d81ff3b4a1` | ⚠️ Unaudited |
| Synthesizer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4b62ec784479c5520ec77de8d10c1a85d8f0850a`](./contracts/ethereum-1/0x4b62ec784479c5520ec77de8d10c1a85d8f0850a/); ethereum `0x5372b35c82856a8babf0a33ca9fd21e009f6a60d`; ethereum `0xb050a85933ff0807f05d289b7f6457c5efbc348f` | ⚠️ Unaudited |
| TermsAcceptedPermissioner | unknown | ethereum | n/a | [`0xc837e02982992b701a1b5e4e21fa01ceb0a628fa`](./contracts/ethereum-1/0xc837e02982992b701a1b5e4e21fa01ceb0a628fa/) | ⚠️ Unaudited |
| TimelockedToken | unknown | ethereum | n/a | [`0x625ed621d814645aa81c50c4f333d4a407576e8f`](./contracts/ethereum-1/0x625ed621d814645aa81c50c4f333d4a407576e8f/) | ⚠️ Unaudited |
| Tokenizer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d781edf9c75cf9136aac6600873d0a20a6dd43f`](./contracts/ethereum-1/0x0d781edf9c75cf9136aac6600873d0a20a6dd43f/); ethereum `0x6517dd48908f4c1ff4ed74ffd780908241a3654c`; ethereum `0x9c70fa8c87d7e94fd63eeccca657d5c4224a36f3`; ethereum `0xe8701330f196fefe415b28daa767ab076f42557a` | ⚠️ Unaudited |
| TokenVestingMerkle | unknown | ethereum | n/a | [`0x1510e9cf00daeb33e9fc9566a70de7c75be9857b`](./contracts/ethereum-1/0x1510e9cf00daeb33e9fc9566a70de7c75be9857b/) | ⚠️ Unaudited |
| TokenVestingMerklePurchasable | unknown | ethereum | n/a | 4 deployments: ethereum [`0x067c1ec64c8cdfc28cb53bff742974f1150036dd`](./contracts/ethereum-1/0x067c1ec64c8cdfc28cb53bff742974f1150036dd/); ethereum `0x1362edae7a0d002188645b789707a201b840a793`; ethereum `0x2141b47a1c7de6df073d23ff94f04d9fd2aaa9b3`; ethereum `0x637b118738ccf4146e6679ff620fddf30a6f0868` | ⚠️ Unaudited |
| VeBIO | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93`](./contracts/ethereum-1/0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93/); ethereum `0xf91a12742aa609d41513a137d3c36b749f56f40c` | ⚠️ Unaudited |
| VITA | unknown | ethereum | n/a | [`0x81f8f0bb1cb2a06649e51913a151f0e7ef6fa321`](./contracts/ethereum-1/0x81f8f0bb1cb2a06649e51913a151f0e7ef6fa321/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x107abd279d67c1dbb196a5c1a4d74abcba191b5e`](./contracts/ethereum-1/0x107abd279d67c1dbb196a5c1a4d74abcba191b5e/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x164359844eb77995ecd74c70c4e023b7abdd6867`](./contracts/ethereum-1/0x164359844eb77995ecd74c70c4e023b7abdd6867/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x548f8474ffdab0203eae82131b680a99c4a88e31`](./contracts/ethereum-1/0x548f8474ffdab0203eae82131b680a99c4a88e31/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x676cd89c6b6f02d6975547fd7da1d5a8dbc8a3e1`](./contracts/ethereum-1/0x676cd89c6b6f02d6975547fd7da1d5a8dbc8a3e1/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | base | n/a | [`0xcb75cc365abd9713b9a9b9613d90e9c359dd483f`](./contracts/base-8453/0xcb75cc365abd9713b9a9b9613d90e9c359dd483f/) | ⚠️ Unaudited |
| WrappedIPToken | token | ethereum | n/a | [`0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f`](./contracts/ethereum-1/0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x6034e0d6999741f07cb6fb1162cbaa46a1d33d36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x023c3e7cc97b5d00bc88b47e068d324faffb98be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2196b84eace74867b73fb003aff93c11fce1d47a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x357d6e1ae7c075984174d2a7e96f6e724ed0ae7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe41ba1329c76640a5da6d995bfd1b56a08c52352` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/uYIpl4lmoMs2hOgnrj18/Launchpad v2 Contracts (FYEO).pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FuYIpl4lmoMs2hOgnrj18%2FLaunchpad%20v2%20Contracts%20(FYEO).pdf?alt=media) | FYEO | Audit | 2025-07 | aging | Direct | contract_name | 2 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FW7mPQHDWHGApxw1jl6CO%2FBio-security-review_2025-03-12.pdf?alt=media) | Code4rena | Contest | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FwUCj5OeWCmIpLizDug9d%2FBio%20-%20Security%20Code%20Review%20of%20Bio%20Launchpad%20v0.1.pdf?alt=media) | FYEO | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2Ff5zTFrmYvglsJ6WAXZxM%2FDesciLaunchpad-security-review_2025-02-07.pdf?alt=media) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/3ba2jNU6BPQUl4RXgHor/uploads/Xm1EkQX20KCOrH0s1e3Y/Bio-security-review.pdf](https://499247139-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F3ba2jNU6BPQUl4RXgHor%2Fuploads%2FXm1EkQX20KCOrH0s1e3Y%2FBio-security-review.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | contract_name | 24 | high |
| [2023-04-pashov.md](https://github.com/bio-xyz/vesting-contracts/blob/main/audits/2023-04-pashov.md) | Pashov Audit Group | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcb1592591996765ec0efc1f92599a19767ee5ffa`](./contracts/ethereum-1/0xcb1592591996765ec0efc1f92599a19767ee5ffa/) | BioToken | token | $89,366,879.30 | Verified native implementation with $89,366,879.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ce115f0341ae5dabc8b477b74e83db2018a6f42`](./contracts/ethereum-1/0x9ce115f0341ae5dabc8b477b74e83db2018a6f42/) | HairToken | token | $17,304,317.80 | Verified native implementation with $17,304,317.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6866f3369e4825ce07f226a424f1c11861add1`](./contracts/ethereum-1/0x0d6866f3369e4825ce07f226a424f1c11861add1/) | IPToken | unknown | $10,175,660.45 | Verified native implementation with $10,175,660.45 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2`](./contracts/base-8453/0x226a2fa2556c48245e57cd1cba4c6c9e67077dd2/) | Token | token | $5,204,984.10 | Verified native implementation with $5,204,984.10 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x761a3557184cbc07b7493da0661c41177b2f97fa`](./contracts/ethereum-1/0x761a3557184cbc07b7493da0661c41177b2f97fa/) | GrowToken | token | $3,136,584.19 | Verified native implementation with $3,136,584.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b`](./contracts/ethereum-1/0xab814ce69e15f6b9660a3b184c0b0c97b9394a6b/) | CerebrumDAOToken | token | $1,894,767.32 | Verified native implementation with $1,894,767.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4ffdf3208f46898ce063e25c1c43056fa754739`](./contracts/ethereum-1/0xa4ffdf3208f46898ce063e25c1c43056fa754739/) | AthenaDAOToken | token | $941,780.46 | Verified native implementation with $941,780.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde`](./contracts/ethereum-1/0x3e6a1b21bd267677fa49be6425aebe2fc0f89bde/) | QBioToken | token | $819,325.80 | Verified native implementation with $819,325.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2196b84eace74867b73fb003aff93c11fce1d47a`](./contracts/ethereum-1/0x2196b84eace74867b73fb003aff93c11fce1d47a/) | OtoCoToken | token | $318,136.76 | Verified native implementation with $318,136.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35bce29f52f51f547998717cd598068afa2b29b7`](./contracts/ethereum-1/0x35bce29f52f51f547998717cd598068afa2b29b7/) | StakedLockingCrowdSale | token | $7,796.67 | Verified native implementation with $7,796.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691`](./contracts/ethereum-1/0xa1ed7ae99abeab2883a4a9486dbbb1c020a60691/) | AccessResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2`](./contracts/ethereum-1/0xf0a8d23f38e9cbbe01c4ed37f23bd519b65bc6c2/) | CrowdSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f`](./contracts/ethereum-1/0xc85f5dd5880d5162faf5fdb24d40845b7c8f976f/) | DAOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0443dfac8e510cfbdfdb9247e77400e9728ae45d`](./contracts/ethereum-1/0x0443dfac8e510cfbdfdb9247e77400e9728ae45d/) | IPNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8`](./contracts/ethereum-1/0xb1729b20dad1fa670f96e4cf4bffe21ac6a8f3b8/) | LockedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8299699969d696bd9c05fd4fb89f8840e2c3199a`](./contracts/ethereum-1/0x8299699969d696bd9c05fd4fb89f8840e2c3199a/) | LockedTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbfd266bf3b49db8746155aa318d4533cc66db26`](./contracts/ethereum-1/0xfbfd266bf3b49db8746155aa318d4533cc66db26/) | LockingCrowdSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023c3e7cc97b5d00bc88b47e068d324faffb98be`](./contracts/ethereum-1/0x023c3e7cc97b5d00bc88b47e068d324faffb98be/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b62ec784479c5520ec77de8d10c1a85d8f0850a`](./contracts/ethereum-1/0x4b62ec784479c5520ec77de8d10c1a85d8f0850a/) | Synthesizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc837e02982992b701a1b5e4e21fa01ceb0a628fa`](./contracts/ethereum-1/0xc837e02982992b701a1b5e4e21fa01ceb0a628fa/) | TermsAcceptedPermissioner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x625ed621d814645aa81c50c4f333d4a407576e8f`](./contracts/ethereum-1/0x625ed621d814645aa81c50c4f333d4a407576e8f/) | TimelockedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d781edf9c75cf9136aac6600873d0a20a6dd43f`](./contracts/ethereum-1/0x0d781edf9c75cf9136aac6600873d0a20a6dd43f/) | Tokenizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1510e9cf00daeb33e9fc9566a70de7c75be9857b`](./contracts/ethereum-1/0x1510e9cf00daeb33e9fc9566a70de7c75be9857b/) | TokenVestingMerkle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x067c1ec64c8cdfc28cb53bff742974f1150036dd`](./contracts/ethereum-1/0x067c1ec64c8cdfc28cb53bff742974f1150036dd/) | TokenVestingMerklePurchasable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93`](./contracts/ethereum-1/0xc0a2ca1c2c05ac200c109f0bb571fd5710403e93/) | VeBIO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f`](./contracts/ethereum-1/0x0ca5f50a8a59a59ef8c8d610f5ebf99e41f1352f/) | WrappedIPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=3, extraction_exact=24

Zero-match audit list:

- [2524] spaces/3ba2jNU6BPQUl4RXgHor/uploads/W7mPQHDWHGApxw1jl6CO/Bio-security-review_2025-03-12.pdf
- [2525] spaces/3ba2jNU6BPQUl4RXgHor/uploads/wUCj5OeWCmIpLizDug9d/Bio - Security Code Review of Bio Launchpad v0.1.pdf
- [2526] spaces/3ba2jNU6BPQUl4RXgHor/uploads/f5zTFrmYvglsJ6WAXZxM/DesciLaunchpad-security-review_2025-02-07.pdf

Fork inheritance lineage and inherited audits are included when available.
