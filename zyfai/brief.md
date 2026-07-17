# Agentic Audit Brief: ZyFAI

## Project Overview

- Project: ZyFAI (`zyfai`)
- Website: [https://zyf.ai](https://zyf.ai)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:15.015Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: arbitrum, base, ethereum, plasma, sonic
- Contract surface: 119 unique implementations (332 raw deployments)
- DeFi Llama TVL: $6,315,888.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

AI Agents. Structurally: 184 project-authored contract(s) across 5 chain(s); 35 ERC4626 vaults, 39 ERC20 tokens, 1 ERC721 NFT, 13 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 34 common project-authored base contract(s) (basewasabipool, abstractwasabipool, cometextinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 429; live-surface contracts included: 326 (307 live, 19 unknown).
- Excluded by liveness: 103 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/87 (1.1%)
- Deployed-live implementations: 100 of 119 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/100
- Verified + Unaudited implementations: 99
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 119
- Raw deployments: 332
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.1% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cecuro | Tier 2 | 1 | 1.0% | 2026-03 |
| Sherlock | Tier 1 | 1 | 1.0% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmartAccountWrapper | unknown | base | n/a | [`0xd580071c47d4a667858b5fafab85bc9c609bec5d`](./contracts/base-8453/0xd580071c47d4a667858b5fafab85bc9c609bec5d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (99)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveStrategy | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1c1efa17081cde0c8ee816075369741d89fcd548`](./contracts/ethereum-1/0x1c1efa17081cde0c8ee816075369741d89fcd548/); ethereum `0x9979043e4dee08fb61903aefd05aa452ea448f67`; ethereum `0xc3f7e6b2fabe4cda955902e529257c31981543d2` | ⚠️ Unaudited |
| AddressProvider | registry | ethereum | n/a | 2 deployments: ethereum [`0x2b04347413918588b81782cc446524354a15ee72`](./contracts/ethereum-1/0x2b04347413918588b81782cc446524354a15ee72/); ethereum `0x409fb57c5512f303759a5febbc7f2f61f8d075c4` | ⚠️ Unaudited |
| ALMProxy | unknown | arbitrum | n/a | [`0x92afd6f2385a90e44da3a8b60fe36f6cbe1d8709`](./contracts/arbitrum-42161/0x92afd6f2385a90e44da3a8b60fe36f6cbe1d8709/) | ⚠️ Unaudited |
| ArbitrumReceiver | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x212871a1c235892f86cab30e937e18c94aed8474`](./contracts/arbitrum-42161/0x212871a1c235892f86cab30e937e18c94aed8474/); arbitrum `0x567214dc57a2385abc4a756f523ddf0275305cbc` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | 4 deployments: ethereum [`0x0b925ed163218f6662a35e0f0371ac234f9e9371`](./contracts/ethereum-1/0x0b925ed163218f6662a35e0f0371ac234f9e9371/); ethereum `0x4d5f47fa6a74757f35c14fd3a6ef8e3c9bc514e8`; ethereum `0x5c647ce0ae10658ec44fa4e11a51c96e94efd1dd`; ethereum `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | sonic | n/a | [`0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6`](./contracts/sonic-146/0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6/) | ⚠️ Unaudited |
| ATokenInstance | token | base | n/a | [`0x4e65fe4dba92790696d040ac24aa414708f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ⚠️ Unaudited |
| ATokenInstance | token | plasma | n/a | [`0x5d72a9d9a9510cd8cbdba12ac62593a58930a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/) | ⚠️ Unaudited |
| ATokenInstance | token | arbitrum | n/a | [`0x724dc807b04555b71ed48a6896b6f41593b8c637`](./contracts/arbitrum-42161/0x724dc807b04555b71ed48a6896b6f41593b8c637/) | ⚠️ Unaudited |
| BNPLOptionBidValidator | unknown | ethereum | n/a | [`0x327fe52e44a1fc68e8596df8769a4b5dc538550e`](./contracts/ethereum-1/0x327fe52e44a1fc68e8596df8769a4b5dc538550e/) | ⚠️ Unaudited |
| Bulker | unknown | ethereum | n/a | [`0x74a81f84268744a40febc48f8b812a1f188d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | ⚠️ Unaudited |
| Comet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0`](./contracts/ethereum-1/0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0/); ethereum `0x4b5dee60531a72c1264319ec6a22678a4d0c8118` | ⚠️ Unaudited |
| CometExt | unknown | ethereum | n/a | 7 deployments: ethereum [`0x1f71901daf98d70b4baf40de080321e5c2676856`](./contracts/ethereum-1/0x1f71901daf98d70b4baf40de080321e5c2676856/); ethereum `0x285617313887d43256f852cae0ee4de4b68d45b0`; ethereum `0x5c58d4479a1e9b2d19ee052143fa73f0ee79a36e`; ethereum `0x95dedd64b551f05e9f59a101a519b024b6b116e7`; ethereum `0x995e394b8b2437ac8ce61ee0bc610d617962b214`; ethereum `0xe165155c34fe4cbfc55fc554437907bdb1af7e3e`; ethereum `0xe2c1f54aff6b38fd9df7a69f22cb5fd3ba09f030` | ⚠️ Unaudited |
| CometExtAssetList | unknown | ethereum | n/a | 7 deployments: ethereum [`0x055e53f50b84fd91c4be367220efd36c3d091e1f`](./contracts/ethereum-1/0x055e53f50b84fd91c4be367220efd36c3d091e1f/); ethereum `0x16f3532e6af45a2c51b6c77b1267cef34a9cf3b3`; ethereum `0x4f4d5a808e2448cb12df7ac12efb12888fd9bdd5`; ethereum `0x53ceade15669ecde1e8f6d120b98e5aab2936587`; ethereum `0xa70a0227028ad005f4fc9376a82cd1462e3aaedc`; ethereum `0xd4ec911b8fd79139736950235a93d3ea9c3f68ed`; ethereum `0xe3458a0bdbd5a413d3731595c5eb7c4cd6a14dd1` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | ethereum | n/a | [`0x1ec63b5883c3481134fd50d5daebc83ecd2e8779`](./contracts/ethereum-1/0x1ec63b5883c3481134fd50d5daebc83ecd2e8779/) | ⚠️ Unaudited |
| CometRewards | unknown | ethereum | n/a | [`0x1b0e765f6224c21223aea2af16c1c46e38885a40`](./contracts/ethereum-1/0x1b0e765f6224c21223aea2af16c1c46e38885a40/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0x3afdc9bca9213a35503b077a6072f3d0d5ab0840`](./contracts/ethereum-1/0x3afdc9bca9213a35503b077a6072f3d0d5ab0840/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0x3d0bb1ccab520a66e607822fc55bc921738fafe3`](./contracts/ethereum-1/0x3d0bb1ccab520a66e607822fc55bc921738fafe3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0x5d409e56d886231adaf00c8775665ad0f9897b56`](./contracts/ethereum-1/0x5d409e56d886231adaf00c8775665ad0f9897b56/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0xa17581a9e3356d9a858b789d68b4d866e593ae94`](./contracts/ethereum-1/0xa17581a9e3356d9a858b789d68b4d866e593ae94/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0xc3d688b66703497daa19211eedff47f25384cdc3`](./contracts/ethereum-1/0xc3d688b66703497daa19211eedff47f25384cdc3/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | ethereum | n/a | [`0xe85dc543813b8c2cfeaac371517b925a166a9293`](./contracts/ethereum-1/0xe85dc543813b8c2cfeaac371517b925a166a9293/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | base | n/a | [`0xb125e6687d4313864e53df431d5425969c15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | ⚠️ Unaudited |
| CometWithExtendedAssetList | unknown | arbitrum | n/a | [`0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | ⚠️ Unaudited |
| Configurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x316f9708bb98af7da9c68c1c3b5e79039cd336e3`](./contracts/ethereum-1/0x316f9708bb98af7da9c68c1c3b5e79039cd336e3/); ethereum `0xcfc1fa6b7ca982176529899d99af6473ad80df4f` | ⚠️ Unaudited |
| DebtController | governance | ethereum | n/a | 2 deployments: ethereum [`0xfbc94e5fc406509c9a6d0635c047e1cd601246d1`](./contracts/ethereum-1/0xfbc94e5fc406509c9a6d0635c047e1cd601246d1/); ethereum `0xfe7b8f5722ac881242e16bebc8ea0b28c3ee60c2` | ⚠️ Unaudited |
| DolomiteERC4626WithPayable | unknown | ethereum | n/a | [`0xf7b5127b510e568fdc39e6bb54e2081bfad489af`](./contracts/ethereum-1/0xf7b5127b510e568fdc39e6bb54e2081bfad489af/) | ⚠️ Unaudited |
| DSRAuthOracle | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0xe206aebca7b28e3e8d6787df00b010d4a77c32f3`](./contracts/arbitrum-42161/0xe206aebca7b28e3e8d6787df00b010d4a77c32f3/); arbitrum `0xec0c14ea7ff20f104496d960fdebf5a0a0cc14d0`; arbitrum `0xed56689ee0d21a1da68102e5ecbde3fd1d606709` | ⚠️ Unaudited |
| DSROracleReceiverArbitrum | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17`](./contracts/arbitrum-42161/0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17/); arbitrum `0x3a60e678ea258a30c7cab2b70439a37fd6495fe1`; arbitrum `0xca61540ec2ac74e6954fa558b4af836d95ecb91b` | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | ethereum | n/a | [`0x2d850f76c671aa2e1c1892a0644c115eb254d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | [`0x8e0edfd6d15f858adbb41677b82ab64797d5afc0`](./contracts/ethereum-1/0x8e0edfd6d15f858adbb41677b82ab64797d5afc0/) | ⚠️ Unaudited |
| ERC20WasabiPool | unknown | ethereum | n/a | [`0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed`](./contracts/ethereum-1/0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed/) | ⚠️ Unaudited |
| ETHWasabiPool | unknown | ethereum | n/a | [`0x046299143a880c4d01a318bc6c9f2c0a5c1ed355`](./contracts/ethereum-1/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355/) | ⚠️ Unaudited |
| EulerEarn | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b4802fdb0e5d74aa37d58fd77d63e93d4f9a4af`](./contracts/ethereum-1/0x3b4802fdb0e5d74aa37d58fd77d63e93d4f9a4af/); plasma `0xe818ad0d20d504c55601b9d5e0e137314414dec4`; arbitrum `0xe4783824593a50bfe9dc873204cec171ebc62de0` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | [`0xd8b27cf359b7d15710a5be299af6e7bf904984c2`](./contracts/ethereum-1/0xd8b27cf359b7d15710a5be299af6e7bf904984c2/) | ⚠️ Unaudited |
| EVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x196f3c7443e940911ee2bb88e019fd71400349d9`](./contracts/sonic-146/0x196f3c7443e940911ee2bb88e019fd71400349d9/); sonic `0x3d9e5462a940684073eed7e4a13d19ae0dcd13bc` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c`](./contracts/ethereum-1/0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c/); ethereum `0x9f2781f9e3463b772cbecbc2a0e29bb7b1f3e1ac` | ⚠️ Unaudited |
| Executor | unknown | arbitrum | n/a | [`0x65d946e533748a998b1f0e430803e39a6388f7a1`](./contracts/arbitrum-42161/0x65d946e533748a998b1f0e430803e39a6388f7a1/) | ⚠️ Unaudited |
| Flashloan | unknown | ethereum | n/a | [`0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | ⚠️ Unaudited |
| ForeignController | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x77e11453a99a7770b04f7921ffccd3ee9761ba6c`](./contracts/arbitrum-42161/0x77e11453a99a7770b04f7921ffccd3ee9761ba6c/); arbitrum `0x98f567464e91e9b4831d3509024b7868f9f79ee1` | ⚠️ Unaudited |
| fToken | token | arbitrum | n/a | 6 deployments: ethereum `0x2411802d8bea09be0af8fd8d08314a63e706b29c`; ethereum `0x5c20b550819128074fd538edf79791733ccedd18`; ethereum `0x9fb7b4477576fe5b32be4c1843afb1e55f251b33`; base `0xf42f5795d9ac7e9d757db633d693cd548cfd9169`; plasma `0x1dd4b13fcae900c60a350589be8052959d2ed27b`; arbitrum [`0x1a996cb54bb95462040408c06122d45d6cdb6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | ⚠️ Unaudited |
| fTokenNativeUnderlying | token | ethereum | n/a | [`0x90551c1795392094fe6d29b758eccd233cfaa260`](./contracts/ethereum-1/0x90551c1795392094fe6d29b758eccd233cfaa260/) | ⚠️ Unaudited |
| MainnetBulker | unknown | ethereum | n/a | [`0xa397a8c2086c554b531c02e29f3291c9704b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | ⚠️ Unaudited |
| MainnetBulkerWithWstETHSupport | unknown | ethereum | n/a | [`0x2c776041ccfe903071af44aa147368a9c8eea518`](./contracts/ethereum-1/0x2c776041ccfe903071af44aa147368a9c8eea518/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2371e134e3455e0593363cbf89d3b6cf53740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/); ethereum `0x4881ef0bf6d2365d3dd6499ccd7532bcdbce0658`; ethereum `0x4f460bb11cf958606c69a963b4a17f9daeeea8b6`; ethereum `0xbeef01735c132ada46aa9aa4c54623caa92a64cb`; ethereum `0xbeef050ecd6a16c4e7bffbb52ebba7846c4b8cd4`; ethereum `0xbeefff209270748ddd194831b3fa287a5386f5bc`; base `0xb7890cee6cf4792cdcc13489d36d9d42726ab863` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 11 deployments: ethereum [`0x0c6aec603d48ebf1cecc7b247a2c3da08b398dc1`](./contracts/ethereum-1/0x0c6aec603d48ebf1cecc7b247a2c3da08b398dc1/); ethereum `0x1e2aaadcf528b9cc08f43d4fd7db488ce89f5741`; ethereum `0x2ed10624315b74a78f11fabedaa1a228c198aefb`; ethereum `0x31a5684983eee865d943a696aac155363ba024f9`; ethereum `0x6c26793c7f1e2785c09b460676e797b716f0bc8e`; ethereum `0x7204b7dbf9412567835633b6f00c3edc3a8d6330`; ethereum `0xa8875aaebc4f830524e35d57f9772ffacbdd6c45`; ethereum `0xb0f05e4de970a1aaf77f8c2f823953a367504ba9`; ethereum `0xc582f04d8a82795aa2ff9c8bb4c1c889fe7b754e`; ethereum `0xc88effd6e74d55c78290892809955463468e982a`; arbitrum `0x7c574174da4b2be3f705c6244b4bfa0815a8b3ed` | ⚠️ Unaudited |
| PartnerFeeManager | governance | ethereum | n/a | [`0xc902f6840699abf5b8d6a787a7943d4783566af2`](./contracts/ethereum-1/0xc902f6840699abf5b8d6a787a7943d4783566af2/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | ethereum | n/a | [`0xcac10196ae000184107916898f10a9045c934d33`](./contracts/ethereum-1/0xcac10196ae000184107916898f10a9045c934d33/) | ⚠️ Unaudited |
| PendleAaveV3OffchainRewardsSYUpg | unknown | sonic | n/a | [`0xc4a9d8b486f388cc0e4168d2904277e8c8372fa3`](./contracts/sonic-146/0xc4a9d8b486f388cc0e4168d2904277e8c8372fa3/) | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | sonic | n/a | 3 deployments: sonic [`0x004f76045b42ef3e89814b12b37e69da19c8a212`](./contracts/sonic-146/0x004f76045b42ef3e89814b12b37e69da19c8a212/); sonic `0x3f5ea53d1160177445b1898afbb16da111182418`; sonic `0x84ecc6be573f15991736131f924f7bf571ed3b60` | ⚠️ Unaudited |
| PendlePrincipalToken | token | sonic | n/a | 3 deployments: sonic [`0x0fb682c9692addcc1769f4d4d938c54420d54fa3`](./contracts/sonic-146/0x0fb682c9692addcc1769f4d4d938c54420d54fa3/); sonic `0x930441aa7ab17654df5663781ca0c02cc17e6643`; sonic `0x9731842ed581816913933c01de142c7ee412a8c8` | ⚠️ Unaudited |
| PendleSiloV2SY_deprecated | unknown | sonic | n/a | [`0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3`](./contracts/sonic-146/0x068def65b9dbaff02b4ee54572a9fa7dfb188ea3/) | ⚠️ Unaudited |
| PendleYieldToken | token | sonic | n/a | 2 deployments: sonic [`0x18d2d54f42ba720851bae861b98a0f4b079e6027`](./contracts/sonic-146/0x18d2d54f42ba720851bae861b98a0f4b079e6027/); sonic `0x3ab07241db5e87e45edca012ddf4bde84c078920` | ⚠️ Unaudited |
| PerpManager | unknown | ethereum | n/a | 7 deployments: ethereum [`0x2eb99d429bebbbc5910bbad5f34d909a5f55910b`](./contracts/ethereum-1/0x2eb99d429bebbbc5910bbad5f34d909a5f55910b/); ethereum `0x3461ae4336a55952d7ce451a9dec3a0d3856eee2`; ethereum `0x7973cb885af3bb67f38b4b2b90caef8043a96952`; ethereum `0x7c478395c652110847edb76aa4ddafa4fb7c740a`; ethereum `0xba5c5828f2fb77237b940187ec785ee4498d2683`; ethereum `0xba8724f19bd01956dc4343084048127e0bd69375`; ethereum `0xff9f87ec3592984cb706d3071a39e33ac24d39dc` | ⚠️ Unaudited |
| PerpManager | governance | ethereum | n/a | [`0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d`](./contracts/ethereum-1/0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d/) | ⚠️ Unaudited |
| PoolAskVerifier | unknown | ethereum | n/a | [`0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac`](./contracts/ethereum-1/0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac/) | ⚠️ Unaudited |
| PoolBidVerifier | unknown | ethereum | n/a | [`0x66873693e8b125dbea46274173b0d6dcd1933cca`](./contracts/ethereum-1/0x66873693e8b125dbea46274173b0d6dcd1933cca/) | ⚠️ Unaudited |
| PSM3 | unknown | arbitrum | n/a | [`0x2b05f8e1cacc6974fd79a673a341fe1f58d27266`](./contracts/arbitrum-42161/0x2b05f8e1cacc6974fd79a673a341fe1f58d27266/) | ⚠️ Unaudited |
| RateLimits | unknown | arbitrum | n/a | [`0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838`](./contracts/arbitrum-42161/0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838/) | ⚠️ Unaudited |
| RegistryProxy | registry | ethereum | n/a | [`0x444868b6e8079ac2c55eea115250f92c2b2c4d14`](./contracts/ethereum-1/0x444868b6e8079ac2c55eea115250f92c2b2c4d14/) | ⚠️ Unaudited |
| Signing | unknown | ethereum | n/a | [`0xd3bb8475c30fd70675f6250fb725e30b3a6e6094`](./contracts/ethereum-1/0xd3bb8475c30fd70675f6250fb725e30b3a6e6094/) | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | sonic | n/a | [`0xf6bc16b79c469b94cdd25f3e2334dd4fee47a581`](./contracts/sonic-146/0xf6bc16b79c469b94cdd25f3e2334dd4fee47a581/) | ⚠️ Unaudited |
| SiloIncentivesControllerCL | governance | sonic | n/a | [`0xf6f87073cf8929c206a77b0694619dc776f89885`](./contracts/sonic-146/0xf6f87073cf8929c206a77b0694619dc776f89885/) | ⚠️ Unaudited |
| SiloVault | core_logic | sonic | n/a | 2 deployments: sonic [`0x592d1e187729c76efacc6dffb9355bd7bf47b2a7`](./contracts/sonic-146/0x592d1e187729c76efacc6dffb9355bd7bf47b2a7/); sonic `0xcca902f2d3d265151f123d8ce8fdac38ba9745ed` | ⚠️ Unaudited |
| SparkArbitrumOne_20250320 | unknown | arbitrum | n/a | [`0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5`](./contracts/arbitrum-42161/0x1d54a093b8fddfcc6fbb411d9af31d96e034b3d5/) | ⚠️ Unaudited |
| SparkVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x15f4a4b19baaa168ac0b6092d310ae9725741211`](./contracts/ethereum-1/0x15f4a4b19baaa168ac0b6092d310ae9725741211/); ethereum `0xc2c0582d1cce30449cf561c7b9c4d6d527547f12`; ethereum `0xe742c84510a200b95979645b46c872073f0fa929` | ⚠️ Unaudited |
| SparkVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x28b3a8fb53b741a8fd78c0fb9a6b2393d896a43d`](./contracts/ethereum-1/0x28b3a8fb53b741a8fd78c0fb9a6b2393d896a43d/); ethereum `0xe2e7a17dff93280dec073c995595155283e3c372`; ethereum `0xfe6eb3b609a7c8352a241f7f3a21cea4e9209b8f` | ⚠️ Unaudited |
| SSRAuthOracle | operational_periphery | arbitrum | n/a | [`0xee2816c1e1eed14d444552654ed3027abc033a36`](./contracts/arbitrum-42161/0xee2816c1e1eed14d444552654ed3027abc033a36/) | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x19fdac68854702b70a8916eef19dce5c8349e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/); ethereum `0x92e56129a5d357a22775ff06bae5716d55f56626`; ethereum `0xacc3cb96532f9d87383bb20297c24798a80be6b9`; ethereum `0xda402f7529ff2ee4a845508d2f5406baeac9683f`; ethereum `0xe0a7090c3f9a36375ac26a8f80ede77a8fe14fe0` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | n/a | [`0xd9ba99d93ea94a65b5bc838a0106ca3abc82ec4f`](./contracts/ethereum-1/0xd9ba99d93ea94a65b5bc838a0106ca3abc82ec4f/) | ⚠️ Unaudited |
| UsdcVaultL2 | core_logic | base | n/a | 2 deployments: base [`0x3128a0f7f0ea68e7b7c9b00afa7e41045828e858`](./contracts/base-8453/0x3128a0f7f0ea68e7b7c9b00afa7e41045828e858/); base `0x6acc02ddd82206a44ff4ec13977e63d1a29c7723` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | base | n/a | 2 deployments: base [`0x4cb851d28ae5c24f839e45e4f07e3888641fbe90`](./contracts/base-8453/0x4cb851d28ae5c24f839e45e4f07e3888641fbe90/); base `0xb979b79adc4e5cf5cd43599a8d66c45460870bb4` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | base | n/a | 2 deployments: base [`0x62da45546a0f87b23941ffe5ca22f9d2a8fa7df3`](./contracts/base-8453/0x62da45546a0f87b23941ffe5ca22f9d2a8fa7df3/); base `0xe13942e7cef74ab51d9b87c244357494dc0fda0a` | ⚠️ Unaudited |
| UsdcVaultL2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x940098b108fb7d0a7e374f6eded7760787464609`](./contracts/arbitrum-42161/0x940098b108fb7d0a7e374f6eded7760787464609/); arbitrum `0xdc8df20be448e41fde88e2478d6bc4d3c9a092d6` | ⚠️ Unaudited |
| VaultBoostManager | unknown | ethereum | n/a | 4 deployments: ethereum [`0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c`](./contracts/ethereum-1/0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c/); ethereum `0x0424c62eed9b4dab6e22ba42be2173c7557728b3`; ethereum `0xb33c8951d462ccf4aa7a37b70e0be5b8751e7524`; ethereum `0xcc174f151ea55fe2f745c3180ec780c9dbe36abb` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | ethereum | n/a | [`0x382a45ab979b69f94346f3c004033ef7c9cbfbd0`](./contracts/ethereum-1/0x382a45ab979b69f94346f3c004033ef7c9cbfbd0/) | ⚠️ Unaudited |
| VaultDummyImplementation | core_logic | ethereum | n/a | [`0xa0d3707c569ff8c87fa923d3823ec5d81c98be78`](./contracts/ethereum-1/0xa0d3707c569ff8c87fa923d3823ec5d81c98be78/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x23f5e9c35820f4bab695ac1f19c203cc3f8e1e11`](./contracts/ethereum-1/0x23f5e9c35820f4bab695ac1f19c203cc3f8e1e11/); ethereum `0x2bd3a43863c07b6a01581fada0e1614ca5df0e3d`; ethereum `0xa877d5bb0274dccba8556154a30e1ca4021a275f`; ethereum `0xbeef003e31546c7210687f1a7b40d096be83ec58`; ethereum `0xbeef0046fcab1de47e41fb75bb3dc4dfc94108e3`; ethereum `0xbeeff07d991c04cd640de9f15c08ba59c4fedeb7`; ethereum `0xbeeff2c5bf38f90e3482a8b19f12e5a6d2fca757`; ethereum `0xcdbe4a5b5bad2bc04492052df2f881b5727d034d`; ethereum `0xd1e9242e075db4bdd3f3c721d7d5fd4180a94a7e`; ethereum `0xd5cce260e7a755ddf0fb9cdf06443d593aaeaa13`; ethereum `0xebbae8cfabb0092d5b32f00ebee0c8139d24ddcd`; ethereum `0xfa17f7aadbfac2c5d3c8125555404c1ae17df853` | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | [`0xbeef003c68896c7d2c3c60d363e8d71a49ab2bf9`](./contracts/ethereum-1/0xbeef003c68896c7d2c3c60d363e8d71a49ab2bf9/) | ⚠️ Unaudited |
| WasabiBNPL | unknown | ethereum | n/a | [`0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d`](./contracts/ethereum-1/0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d/) | ⚠️ Unaudited |
| WasabiBNPL2 | unknown | ethereum | n/a | [`0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89`](./contracts/ethereum-1/0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89/) | ⚠️ Unaudited |
| WasabiConduit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9e31ef400c74630ab50066dd64c29c1f4fc57209`](./contracts/ethereum-1/0x9e31ef400c74630ab50066dd64c29c1f4fc57209/); ethereum `0xf29a66e420c240ebd23f775b93619c8f3cfff856` | ⚠️ Unaudited |
| WasabiLongPool | core_logic | ethereum | n/a | 18 deployments: ethereum [`0x023afc8b575ef583ef5596d3834d82b7116a6078`](./contracts/ethereum-1/0x023afc8b575ef583ef5596d3834d82b7116a6078/); ethereum `0x095c34c8f852ae99e6424ff4258447768a5599d3`; ethereum `0x17d1634ce3b55843253f954c930683e1ecdb5c3d`; ethereum `0x3a277440bb850d41fa1e50112873abb799e4fd97`; ethereum `0x45a9333102723f606b890579b2d0f8f475aac7cd`; ethereum `0x7041ce0ece257f80fdd3a605eb3438a7257f3e95`; ethereum `0x7f545161fa2cbbb1c9e0d182f2d0c2772ce6cbc8`; ethereum `0x8d9040c66d4453aa66366cd0dbeb610ce7b41b59`; ethereum `0x8e19c040b4c1c8d2a63e6cb375f01ab65d2ddc04`; ethereum `0x94cf96f6c3e683b0a5b668e599d6a6a45fb10c51`; ethereum `0x97eea33f40796861120208c884b5ae6e01ab40f7`; ethereum `0x995c0ab3dd4f0b1080393c62573b7a6bfcb8518b`; ethereum `0xab164476377cf5a58e0b4f34a4ef79029d5df9cb`; ethereum `0xc24f58b36f90c5abc2874d028bfe12f3db656b51`; ethereum `0xcda7ce4b56f719d0f254ea6abda6ba4df4c8c0ca`; ethereum `0xcf41e5b980b109753b11ad7d49bb67a0b6b075dd`; ethereum `0xd2439d7822dac8fcf308fe943361c3b55d165ffe`; ethereum `0xd4a321075cb4b4efdd6e677cb770887056ae430d` | ⚠️ Unaudited |
| WasabiOption | unknown | ethereum | n/a | [`0xfc68f2130e094c95b6c4f5494158cbeb172e18a0`](./contracts/ethereum-1/0xfc68f2130e094c95b6c4f5494158cbeb172e18a0/) | ⚠️ Unaudited |
| WasabiOptionArbitrageV2 | unknown | ethereum | n/a | [`0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3`](./contracts/ethereum-1/0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3/) | ⚠️ Unaudited |
| WasabiPoolFactory | unknown | ethereum | n/a | [`0x8e2b50413a53f50e2a059142a9be060294961e40`](./contracts/ethereum-1/0x8e2b50413a53f50e2a059142a9be060294961e40/) | ⚠️ Unaudited |
| WasabiRouter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x08aad56f494d705eaee20185e02996d5be72ae33`](./contracts/ethereum-1/0x08aad56f494d705eaee20185e02996d5be72ae33/); ethereum `0x0b38cbcc2a215c636d0c3890e64e2a21255f437e`; ethereum `0x1b362e8eccc7aa0e835e3041f5cc10ccece046b7`; ethereum `0x33d2ac6d717376b89382638dbcabea53b677ee9a`; ethereum `0x77abb6fecd1f781765ecc384b57ca5335863dbf4`; ethereum `0x96b10bcd6e770a6fd0bc8992d4b67c8500a63f23`; ethereum `0xe5312d877a5e325524efe7c198f6733c17a564f9` | ⚠️ Unaudited |
| WasabiRouter | adapter | ethereum | n/a | [`0xee5c45dcb0064f9b097edbc5d8adfce23baac03b`](./contracts/ethereum-1/0xee5c45dcb0064f9b097edbc5d8adfce23baac03b/) | ⚠️ Unaudited |
| WasabiShortPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0fdc7b5ce282763d5372a44b01db65e14830d8ff`](./contracts/ethereum-1/0x0fdc7b5ce282763d5372a44b01db65e14830d8ff/); ethereum `0x61d0df7c0978d04071c6f1e94beba96e075ebe12` | ⚠️ Unaudited |
| WasabiShortPool | core_logic | ethereum | n/a | 19 deployments: ethereum [`0x1536f738d1dd76a90d3667dca58e85867ea3662b`](./contracts/ethereum-1/0x1536f738d1dd76a90d3667dca58e85867ea3662b/); ethereum `0x1888f9d504adf9aa5a3e705a7e1d45c59bd46176`; ethereum `0x41247b47823c3a500f4a1f1c98bfa8a089f78fad`; ethereum `0x44ba624d8280a167829baf11a71309f81696559e`; ethereum `0x5bb9e070ed2ef50ca3a1c17a5fa1300b0d088c60`; ethereum `0x62d25402b8ce925c727ecb2dcd62d531749bf842`; ethereum `0x7748355debf8c9bfac8234e3f79f04ac0bbf8b32`; ethereum `0x8826d2ec9229249feda46f9b47fcf62ad73cbc96`; ethereum `0x8ea384f9316abbdae698f2bb6850d23f5fb13277`; ethereum `0x96ce21931e8a6abb2977ef17541eee80fb137f78`; ethereum `0xbc07db13399f8b216fa628635d171f943869cbbe`; ethereum `0xc905defd3f049e6ad2b9b105016c9026ceb7dca5`; ethereum `0xcb8d3ca0946f6a50d83e4b15fdb94ebd17e8a2bb`; ethereum `0xcc2a29b8324686ef4b05f7d0aabf919ea4e26bee`; ethereum `0xd5a09a0827c3d91e8530deee3b73edae6b33ae95`; ethereum `0xea9a832c8c25d4447f0cb66bb9987e365bca647c`; ethereum `0xf22b8d73da017288b5f4e214ebc1ccd8d364aafa`; ethereum `0xfb71f098eef68504e3cf9a4dfa78d834d3490c4a`; ethereum `0xfc55a23a2fee805aaf8a8209f2e4e8670028006b` | ⚠️ Unaudited |
| WasabiStructs | unknown | ethereum | n/a | [`0x8f2885e85a59782197024306483cceae7b99dcd3`](./contracts/ethereum-1/0x8f2885e85a59782197024306483cceae7b99dcd3/) | ⚠️ Unaudited |
| WasabiVault | unknown | ethereum | n/a | 13 deployments: ethereum [`0x0db381cfcafee909e66e5244ec5d7d933a747e12`](./contracts/ethereum-1/0x0db381cfcafee909e66e5244ec5d7d933a747e12/); ethereum `0x3f631b8b318c66858fa1e68f02fccf976c5caa8d`; ethereum `0x65aa8f218ab3fa104af12e786a41b0416459991e`; ethereum `0x7d8c76eaf1858ce5678fc4926f4d8875e967ac53`; ethereum `0x7f1cec2328170e510f2d0375ce1ba7ac45d1681a`; ethereum `0x9720f76eae9b0d864a2a9e247bd82eef6ca84fa4`; ethereum `0xa6354ec7e4a63f0e75ca3e624eff21d57055dadf`; ethereum `0xa9d119979285484a271918b5f8f226dd139771d7`; ethereum `0xb6463fd3ff4bb51cac28d0f6768d49218639f113`; ethereum `0xc883dea716d856e22272b8e14867567b04141c1a`; ethereum `0xcd1953e4d58ef232f4f9c1e0a33e93acc95f7d53`; ethereum `0xd46c774a5f5def368bf30acb7572b01e51563a1d`; ethereum `0xf7855f37ee116a0736e3baa68ddc205467ae8153` | ⚠️ Unaudited |
| WasabiVault | core_logic | ethereum | n/a | 54 deployments: ethereum [`0x1831f6b2573e756bfafdcb121880a80894a61ae2`](./contracts/ethereum-1/0x1831f6b2573e756bfafdcb121880a80894a61ae2/); ethereum `0x1beceace08688e58e649c40831d3cf11fb22e3db`; ethereum `0x1ca1fcf34ba9c6d2e8c6c8ea398b9f562a8a7aba`; ethereum `0x26372904ca7aba32579b2ee4c7d96616eceb8c03`; ethereum `0x2a76938c3dd3d672aa72651f99826084fc62d63b`; ethereum `0x2f49de50405366a794fd00be68fc8f151517d301`; ethereum `0x34f0a81703c2ed935a61372188a8f9ff78edf77d`; ethereum `0x364cb3da96ea3bf24c97c3cd95d59df7a403a1ed`; ethereum `0x36b9bcbcecc87cca372130c331e9905b92c5759a`; ethereum `0x39eed09d42072243b86c054063616568cba16ee2`; ethereum `0x491caf0cb459c53b815aa759eca290fdf0b62669`; ethereum `0x4df48f7abc624ab672d69a18a5fc7bde5944c8e2`; ethereum `0x519db1319f7c4192d1d964a6f932298e76c026af`; ethereum `0x5609ef3b48e79b2328d877ff40d742903810d585`; ethereum `0x5bac8a66c78e4258c964d4c84d62825f5d2a8a64`; ethereum `0x608889f7652a48c07286f1394bcdc1486a34468e`; ethereum `0x63628b4cdaae7c5e3db5c5a57c699bbae77a84b8`; ethereum `0x64b02119a901843a6a6d273d40a8c6b9e099c197`; ethereum `0x6a46002457b743ce9167ff5134fe8de916f54bfa`; ethereum `0x6b419290f77dd9ab881c14427c791184d7ce9736`; ethereum `0x6e9e3baf06db9265f81e0d6862039569e73b076e`; ethereum `0x73ebff4460ca625a59e8c024c333d3501505b8e9`; ethereum `0x75f327239fa495a553ec562e1e75f8c1ffe63d4f`; ethereum `0x79356bf9d3c97ed10dd6f63f7560fd952b929162`; ethereum `0x7dd8f274d21bc568db8c1512e28ad7a0bd248319`; ethereum `0x800187a3c549e323351c1b9cb815c024069bd34a`; ethereum `0x80f035caef10920d6b0be9ed4c44de571493ee9b`; ethereum `0x8320385030690ee6e95c713f586c2a8f5dd07c18`; ethereum `0x8c71baa29d66e2f09627bafef6f8ba1ef8e3ee10`; ethereum `0x8e26dab15e7af842acbe030b65808618b50de32d`; ethereum `0x8e3fddb3142027c49d1b602cd9fc4d9c42ebcf2f`; ethereum `0x94df93123af26de3998032914ba54db1ae5311a2`; ethereum `0x96c2436af099de751a812fe32836ee794dde2020`; ethereum `0x9a8604f5f72769057181ff95f2a9f40906221cfd`; ethereum `0x9b6eee0309d831b59d75e047cc7dff2f3b2d8bea`; ethereum `0xa2a9d2b4905ac2adc00c32aa5489fec7153873b9`; ethereum `0xa4d274fae648b3e20c3458a9ba2acef4b0a8ebf6`; ethereum `0xa4d853b2488aaf2d21d015524bac691bd019f7a7`; ethereum `0xa54151ce4f40b0644990605fc116ada975dd527e`; ethereum `0xad99d667eb39f784612868ba87345362f6179c8d`; ethereum `0xb3324df28d3cd79d358887131e579e95e0e56fb7`; ethereum `0xb586b3a67323a62f55b8910d411a4ac9b962abd8`; ethereum `0xbaaa2a89a7bec92a810e0bf96adf68066bec5c7d`; ethereum `0xc7995acd52ec36a7afa414aad762b8c57cdece5b`; ethereum `0xd4f06205c0e56f953070a9f58a488595377ef118`; ethereum `0xd7738f10a46ca13287a10449dc9e8e8cd5fe2530`; ethereum `0xd8bdfe2d4170fb1b9a316511440878100280021e`; ethereum `0xdd5c60b0dbd51fde5ab2416d4e2d749d27fe058e`; ethereum `0xe29e74b7de69804a536affcc995924e9a98f6f4b`; ethereum `0xe6238f142cf04c2f49c911ba2c217e73b2b21b76`; ethereum `0xe8c96f744f8ef8ecb62195cc4a65c9b756513de9`; ethereum `0xed51799d71acbb44c4c82402635222b2e8f1895b`; ethereum `0xed6f77f15bcfee1a16ebe9d71d905ed9884ab80a`; ethereum `0xf6040cb6c452834ea661b6224afadfb8f9da07e9` | ⚠️ Unaudited |
| WasabiVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55161896bf9e5867851de6d063b7284a195b23ca`](./contracts/ethereum-1/0x55161896bf9e5867851de6d063b7284a195b23ca/); ethereum `0xc7d3fa8fbfddfc03d37804838ba38c741323652b` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x10432bc30396e70f792b538d7e810c83dd7bfe71`](./contracts/ethereum-1/0x10432bc30396e70f792b538d7e810c83dd7bfe71/); ethereum `0x127d3615a8865812f76ff8f214f9955c3a74820a`; ethereum `0x630ed8220f9cbc98358a2e2ecb0727d7b9d61397`; ethereum `0x7d7bb40f523266b63319bc3e3f6f351b9e389e8f`; ethereum `0x8d48b8d948726d4636aa15a9d6124422f461e153`; ethereum `0xb533c682553f518a3961eeec2bfdc645c60289f0`; ethereum `0xb86510bfdcd229a66f0617162ef1c45db1ceaba8`; ethereum `0xd2502e8e253a48d229df0e642a404c5bbff1c1b4` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x310b7ea7475a0b449cfd73be81522f1b88efafaa`](./contracts/ethereum-1/0x310b7ea7475a0b449cfd73be81522f1b88efafaa/); ethereum `0xac37729b76db6438ce62042ae1270ee574ca7571` | ⚠️ Unaudited |
| YoVault | core_logic | ethereum | n/a | [`0xda92d2172cd402d222131cc95a66ec7bd82dc169`](./contracts/ethereum-1/0xda92d2172cd402d222131cc95a66ec7bd82dc169/) | ⚠️ Unaudited |
| YoVault_V2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x3a43aec53490cb9fa922847385d82fe25d0e9de7`](./contracts/ethereum-1/0x3a43aec53490cb9fa922847385d82fe25d0e9de7/); ethereum `0x50c749ae210d3977adc824ae11f3c7fd10c871e9` | ⚠️ Unaudited |
| ZhartaLending | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0466b94a37b9037b6416ca5b1c17de00356fa09b`](./contracts/ethereum-1/0x0466b94a37b9037b6416ca5b1c17de00356fa09b/); ethereum `0x0d08ea010dd3bb0a1dda37443e982c46adb2e4d5`; ethereum `0x2cfe1c35bb695d4eff2736054eac3b6ce4dea90b`; ethereum `0x6209a1b9751f67594427a45b5225bc3492009788`; ethereum `0xb06e99cc97fc95cc9a84ae95c369a8b8299cf383`; ethereum `0xb2a557732b9f5eea359b643d085ad32e2288afaa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x082481d2223a1372d975edc9ccfea3d77b1b595f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4b8c77c7775ab0f6914893f67a6c1c54c83b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e74e15e43afa985ed1003e78e652d58d8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabe43585a8a5a98a3732026d45c4c7900c566efb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc0bf0a112684556e825b7be5cc290eda4c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2664a65346db247649d5d7853b7bb4cb4e7734f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d741314f73aea8a133c5c71653f779150f9c229` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x205216d89a00feb2a73273ceecd297baf89d576d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2627d5d0af0b88ee58bd7346f20a429f67a73e00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c258bcac2ab3615fc8bcfcd878e8b8df81ffa06` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61baf0ce69d23c8318c786e161d1cac285aa4ea3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76b3d354fee58523e4687a2142c2ccc6a4d35e8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3091dfa6c02b6611250733852c95a59a127e00f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa72e01a942f5e8ef09dbaf824c2d7a7033e96f0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae20f9093eb3301b2d83871a3505935efc8498c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1e4953c93da52b95edd0ffd910565d3369acd6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2868095814c2714039b3a9ebee035b9e2c411e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe81a5b3657605fb2b9d8b35b17bfe27d3bd6219d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1202d64010a7b644ab258ca46ad5fdf2148905a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Report - 20.12.2025](https://zyf.ai/sherlock-audit-november-2025.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [audited by Sherlock](https://zyf.ai/zyfai_erc7540_sherlock.pdf) | Sherlock | Contest | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Report - 03.03.2025](https://zyf.ai/zyfai_audit_cecuro.pdf) | Cecuro | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Report - 06.07.2025](https://www.zyf.ai/rzfi-audit-report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Supremacy IRMLinearKinky.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Supremacy%20IRMLinearKinky.pdf) | Supremacy | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2b04347413918588b81782cc446524354a15ee72`](./contracts/ethereum-1/0x2b04347413918588b81782cc446524354a15ee72/) | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x92afd6f2385a90e44da3a8b60fe36f6cbe1d8709`](./contracts/arbitrum-42161/0x92afd6f2385a90e44da3a8b60fe36f6cbe1d8709/) | ALMProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x212871a1c235892f86cab30e937e18c94aed8474`](./contracts/arbitrum-42161/0x212871a1c235892f86cab30e937e18c94aed8474/) | ArbitrumReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b925ed163218f6662a35e0f0371ac234f9e9371`](./contracts/ethereum-1/0x0b925ed163218f6662a35e0f0371ac234f9e9371/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6`](./contracts/sonic-146/0x578ee1ca3a8e1b54554da1bf7c583506c4cd11c6/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e65fe4dba92790696d040ac24aa414708f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x5d72a9d9a9510cd8cbdba12ac62593a58930a948`](./contracts/plasma-9745/0x5d72a9d9a9510cd8cbdba12ac62593a58930a948/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x724dc807b04555b71ed48a6896b6f41593b8c637`](./contracts/arbitrum-42161/0x724dc807b04555b71ed48a6896b6f41593b8c637/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x327fe52e44a1fc68e8596df8769a4b5dc538550e`](./contracts/ethereum-1/0x327fe52e44a1fc68e8596df8769a4b5dc538550e/) | BNPLOptionBidValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74a81f84268744a40febc48f8b812a1f188d80c3`](./contracts/ethereum-1/0x74a81f84268744a40febc48f8b812a1f188d80c3/) | Bulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0`](./contracts/ethereum-1/0x2f4eaf29dfeef4654bd091f7112926e108ef4ed0/) | Comet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f71901daf98d70b4baf40de080321e5c2676856`](./contracts/ethereum-1/0x1f71901daf98d70b4baf40de080321e5c2676856/) | CometExt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x055e53f50b84fd91c4be367220efd36c3d091e1f`](./contracts/ethereum-1/0x055e53f50b84fd91c4be367220efd36c3d091e1f/) | CometExtAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ec63b5883c3481134fd50d5daebc83ecd2e8779`](./contracts/ethereum-1/0x1ec63b5883c3481134fd50d5daebc83ecd2e8779/) | CometProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0e765f6224c21223aea2af16c1c46e38885a40`](./contracts/ethereum-1/0x1b0e765f6224c21223aea2af16c1c46e38885a40/) | CometRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3afdc9bca9213a35503b077a6072f3d0d5ab0840`](./contracts/ethereum-1/0x3afdc9bca9213a35503b077a6072f3d0d5ab0840/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d0bb1ccab520a66e607822fc55bc921738fafe3`](./contracts/ethereum-1/0x3d0bb1ccab520a66e607822fc55bc921738fafe3/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d409e56d886231adaf00c8775665ad0f9897b56`](./contracts/ethereum-1/0x5d409e56d886231adaf00c8775665ad0f9897b56/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa17581a9e3356d9a858b789d68b4d866e593ae94`](./contracts/ethereum-1/0xa17581a9e3356d9a858b789d68b4d866e593ae94/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3d688b66703497daa19211eedff47f25384cdc3`](./contracts/ethereum-1/0xc3d688b66703497daa19211eedff47f25384cdc3/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe85dc543813b8c2cfeaac371517b925a166a9293`](./contracts/ethereum-1/0xe85dc543813b8c2cfeaac371517b925a166a9293/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb125e6687d4313864e53df431d5425969c15eb2f`](./contracts/base-8453/0xb125e6687d4313864e53df431d5425969c15eb2f/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf`](./contracts/arbitrum-42161/0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf/) | CometWithExtendedAssetList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316f9708bb98af7da9c68c1c3b5e79039cd336e3`](./contracts/ethereum-1/0x316f9708bb98af7da9c68c1c3b5e79039cd336e3/) | Configurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfbc94e5fc406509c9a6d0635c047e1cd601246d1`](./contracts/ethereum-1/0xfbc94e5fc406509c9a6d0635c047e1cd601246d1/) | DebtController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7b5127b510e568fdc39e6bb54e2081bfad489af`](./contracts/ethereum-1/0xf7b5127b510e568fdc39e6bb54e2081bfad489af/) | DolomiteERC4626WithPayable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe206aebca7b28e3e8d6787df00b010d4a77c32f3`](./contracts/arbitrum-42161/0xe206aebca7b28e3e8d6787df00b010d4a77c32f3/) | DSRAuthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17`](./contracts/arbitrum-42161/0x0d2bfc0be7bdb397fab9f63e4eaead1e24252b17/) | DSROracleReceiverArbitrum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d850f76c671aa2e1c1892a0644c115eb254d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ERC1155CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed`](./contracts/ethereum-1/0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed/) | ERC20WasabiPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x046299143a880c4d01a318bc6c9f2c0a5c1ed355`](./contracts/ethereum-1/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355/) | ETHWasabiPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b4802fdb0e5d74aa37d58fd77d63e93d4f9a4af`](./contracts/ethereum-1/0x3b4802fdb0e5d74aa37d58fd77d63e93d4f9a4af/) | EulerEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8b27cf359b7d15710a5be299af6e7bf904984c2`](./contracts/ethereum-1/0xd8b27cf359b7d15710a5be299af6e7bf904984c2/) | EVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x196f3c7443e940911ee2bb88e019fd71400349d9`](./contracts/sonic-146/0x196f3c7443e940911ee2bb88e019fd71400349d9/) | EVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c`](./contracts/ethereum-1/0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c/) | ExactOutSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65d946e533748a998b1f0e430803e39a6388f7a1`](./contracts/arbitrum-42161/0x65d946e533748a998b1f0e430803e39a6388f7a1/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | Flashloan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x77e11453a99a7770b04f7921ffccd3ee9761ba6c`](./contracts/arbitrum-42161/0x77e11453a99a7770b04f7921ffccd3ee9761ba6c/) | ForeignController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a996cb54bb95462040408c06122d45d6cdb6096`](./contracts/arbitrum-42161/0x1a996cb54bb95462040408c06122d45d6cdb6096/) | fToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90551c1795392094fe6d29b758eccd233cfaa260`](./contracts/ethereum-1/0x90551c1795392094fe6d29b758eccd233cfaa260/) | fTokenNativeUnderlying | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa397a8c2086c554b531c02e29f3291c9704b00c7`](./contracts/ethereum-1/0xa397a8c2086c554b531c02e29f3291c9704b00c7/) | MainnetBulker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c776041ccfe903071af44aa147368a9c8eea518`](./contracts/ethereum-1/0x2c776041ccfe903071af44aa147368a9c8eea518/) | MainnetBulkerWithWstETHSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc902f6840699abf5b8d6a787a7943d4783566af2`](./contracts/ethereum-1/0xc902f6840699abf5b8d6a787a7943d4783566af2/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcac10196ae000184107916898f10a9045c934d33`](./contracts/ethereum-1/0xcac10196ae000184107916898f10a9045c934d33/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2eb99d429bebbbc5910bbad5f34d909a5f55910b`](./contracts/ethereum-1/0x2eb99d429bebbbc5910bbad5f34d909a5f55910b/) | PerpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d`](./contracts/ethereum-1/0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d/) | PerpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac`](./contracts/ethereum-1/0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac/) | PoolAskVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66873693e8b125dbea46274173b0d6dcd1933cca`](./contracts/ethereum-1/0x66873693e8b125dbea46274173b0d6dcd1933cca/) | PoolBidVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2b05f8e1cacc6974fd79a673a341fe1f58d27266`](./contracts/arbitrum-42161/0x2b05f8e1cacc6974fd79a673a341fe1f58d27266/) | PSM3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838`](./contracts/arbitrum-42161/0x19d08879851fb54c2dcc4bb32b5a1ea5e9ad6838/) | RateLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x444868b6e8079ac2c55eea115250f92c2b2c4d14`](./contracts/ethereum-1/0x444868b6e8079ac2c55eea115250f92c2b2c4d14/) | RegistryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3bb8475c30fd70675f6250fb725e30b3a6e6094`](./contracts/ethereum-1/0xd3bb8475c30fd70675f6250fb725e30b3a6e6094/) | Signing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf6bc16b79c469b94cdd25f3e2334dd4fee47a581`](./contracts/sonic-146/0xf6bc16b79c469b94cdd25f3e2334dd4fee47a581/) | SiloIncentivesControllerCL | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf6f87073cf8929c206a77b0694619dc776f89885`](./contracts/sonic-146/0xf6f87073cf8929c206a77b0694619dc776f89885/) | SiloIncentivesControllerCL | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x592d1e187729c76efacc6dffb9355bd7bf47b2a7`](./contracts/sonic-146/0x592d1e187729c76efacc6dffb9355bd7bf47b2a7/) | SiloVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xee2816c1e1eed14d444552654ed3027abc033a36`](./contracts/arbitrum-42161/0xee2816c1e1eed14d444552654ed3027abc033a36/) | SSRAuthOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19fdac68854702b70a8916eef19dce5c8349e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/) | TimelockWasabiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9ba99d93ea94a65b5bc838a0106ca3abc82ec4f`](./contracts/ethereum-1/0xd9ba99d93ea94a65b5bc838a0106ca3abc82ec4f/) | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3128a0f7f0ea68e7b7c9b00afa7e41045828e858`](./contracts/base-8453/0x3128a0f7f0ea68e7b7c9b00afa7e41045828e858/) | UsdcVaultL2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4cb851d28ae5c24f839e45e4f07e3888641fbe90`](./contracts/base-8453/0x4cb851d28ae5c24f839e45e4f07e3888641fbe90/) | UsdcVaultL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x62da45546a0f87b23941ffe5ca22f9d2a8fa7df3`](./contracts/base-8453/0x62da45546a0f87b23941ffe5ca22f9d2a8fa7df3/) | UsdcVaultL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x940098b108fb7d0a7e374f6eded7760787464609`](./contracts/arbitrum-42161/0x940098b108fb7d0a7e374f6eded7760787464609/) | UsdcVaultL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c`](./contracts/ethereum-1/0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c/) | VaultBoostManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x382a45ab979b69f94346f3c004033ef7c9cbfbd0`](./contracts/ethereum-1/0x382a45ab979b69f94346f3c004033ef7c9cbfbd0/) | VaultBoostManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0d3707c569ff8c87fa923d3823ec5d81c98be78`](./contracts/ethereum-1/0xa0d3707c569ff8c87fa923d3823ec5d81c98be78/) | VaultDummyImplementation | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23f5e9c35820f4bab695ac1f19c203cc3f8e1e11`](./contracts/ethereum-1/0x23f5e9c35820f4bab695ac1f19c203cc3f8e1e11/) | VaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbeef003c68896c7d2c3c60d363e8d71a49ab2bf9`](./contracts/ethereum-1/0xbeef003c68896c7d2c3c60d363e8d71a49ab2bf9/) | VaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d`](./contracts/ethereum-1/0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d/) | WasabiBNPL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89`](./contracts/ethereum-1/0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89/) | WasabiBNPL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e31ef400c74630ab50066dd64c29c1f4fc57209`](./contracts/ethereum-1/0x9e31ef400c74630ab50066dd64c29c1f4fc57209/) | WasabiConduit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x023afc8b575ef583ef5596d3834d82b7116a6078`](./contracts/ethereum-1/0x023afc8b575ef583ef5596d3834d82b7116a6078/) | WasabiLongPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc68f2130e094c95b6c4f5494158cbeb172e18a0`](./contracts/ethereum-1/0xfc68f2130e094c95b6c4f5494158cbeb172e18a0/) | WasabiOption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3`](./contracts/ethereum-1/0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3/) | WasabiOptionArbitrageV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e2b50413a53f50e2a059142a9be060294961e40`](./contracts/ethereum-1/0x8e2b50413a53f50e2a059142a9be060294961e40/) | WasabiPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08aad56f494d705eaee20185e02996d5be72ae33`](./contracts/ethereum-1/0x08aad56f494d705eaee20185e02996d5be72ae33/) | WasabiRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee5c45dcb0064f9b097edbc5d8adfce23baac03b`](./contracts/ethereum-1/0xee5c45dcb0064f9b097edbc5d8adfce23baac03b/) | WasabiRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdc7b5ce282763d5372a44b01db65e14830d8ff`](./contracts/ethereum-1/0x0fdc7b5ce282763d5372a44b01db65e14830d8ff/) | WasabiShortPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1536f738d1dd76a90d3667dca58e85867ea3662b`](./contracts/ethereum-1/0x1536f738d1dd76a90d3667dca58e85867ea3662b/) | WasabiShortPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f2885e85a59782197024306483cceae7b99dcd3`](./contracts/ethereum-1/0x8f2885e85a59782197024306483cceae7b99dcd3/) | WasabiStructs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0db381cfcafee909e66e5244ec5d7d933a747e12`](./contracts/ethereum-1/0x0db381cfcafee909e66e5244ec5d7d933a747e12/) | WasabiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1831f6b2573e756bfafdcb121880a80894a61ae2`](./contracts/ethereum-1/0x1831f6b2573e756bfafdcb121880a80894a61ae2/) | WasabiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55161896bf9e5867851de6d063b7284a195b23ca`](./contracts/ethereum-1/0x55161896bf9e5867851de6d063b7284a195b23ca/) | WasabiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10432bc30396e70f792b538d7e810c83dd7bfe71`](./contracts/ethereum-1/0x10432bc30396e70f792b538d7e810c83dd7bfe71/) | WasabiVaultRecoveryV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda92d2172cd402d222131cc95a66ec7bd82dc169`](./contracts/ethereum-1/0xda92d2172cd402d222131cc95a66ec7bd82dc169/) | YoVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a43aec53490cb9fa922847385d82fe25d0e9de7`](./contracts/ethereum-1/0x3a43aec53490cb9fa922847385d82fe25d0e9de7/) | YoVault_V2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0466b94a37b9037b6416ca5b1c17de00356fa09b`](./contracts/ethereum-1/0x0466b94a37b9037b6416ca5b1c17de00356fa09b/) | ZhartaLending | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 87 |
| upstream | 12 |
| standard_library | 1 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [18732] Report - 20.12.2025
- [18739] Report - 06.07.2025
- [18761] Supremacy IRMLinearKinky.pdf

Fork inheritance lineage and inherited audits are included when available.
