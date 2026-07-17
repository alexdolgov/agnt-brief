# Agentic Audit Brief: Mode Bridge

## Project Overview

- Project: Mode Bridge (`mode-bridge`)
- Website: [https://app.mode.network](https://app.mode.network)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.256Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, mode
- Contract surface: 127 unique implementations (174 raw deployments)
- DeFi Llama TVL: $4,728,451.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 71 project-authored contract(s) across 2 chain(s); 5 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 15 common project-authored base contract(s) (semver, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 178; live-surface contracts included: 174 (36 live, 138 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/21 (23.8%)
- Deployed-live implementations: 23 of 127 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/67
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 60
- Unique implementations: 127
- Raw deployments: 174
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/optimism/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 19.0% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 4 | 6.0% | n/a |
| Solo Review | Tier 2 | 1 | 1.5% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GovernanceToken | unknown | mode | n/a | 2 deployments: mode [`0xabbf702d5151b77263af53b02ff0ccede7c07eed`](./contracts/mode-34443/0xabbf702d5151b77263af53b02ff0ccede7c07eed/); mode `0xdfc7c877a950e49d2610114102175a06c2e3167a` | ✅ Audited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x95bdca6c8edeb69c98bd5bd17660bacef1298a6f`](./contracts/ethereum-1/0x95bdca6c8edeb69c98bd5bd17660bacef1298a6f/) | ✅ Audited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x735adbbe72226bd52e818e7181953f42e3b0ff21`](./contracts/ethereum-1/0x735adbbe72226bd52e818e7181953f42e3b0ff21/) | ✅ Audited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x9c67accb38137cb761587032179b176c9276eb5a`](./contracts/ethereum-1/0x9c67accb38137cb761587032179b176c9276eb5a/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | n/a | [`0xad3dc277d3242938f8be18f0560e3d9b9988c46a`](./contracts/ethereum-1/0xad3dc277d3242938f8be18f0560e3d9b9988c46a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0x50ef494573f28cad6b64c31b7a00cdaa48306e15`](./contracts/ethereum-1/0x50ef494573f28cad6b64c31b7a00cdaa48306e15/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0xeb9d917868276cee5457609dbbf470fde41bade8`](./contracts/ethereum-1/0xeb9d917868276cee5457609dbbf470fde41bade8/) | ⚠️ Unaudited |
| bETH | unknown | mode | n/a | [`0x4200000000000000000000000000000000000006`](./contracts/mode-34443/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| BucketRateLimiter | unknown | mode | n/a | 2 deployments: mode [`0x308861a430be4cce5502d0a12724771fc6daf216`](./contracts/mode-34443/0x308861a430be4cce5502d0a12724771fc6daf216/); mode `0xb49e4420ea6e35f98060cd133842dbea9c27e479` | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | n/a | [`0x1c823d585b2b4325a0db845cebe32fc7ad67514a`](./contracts/ethereum-1/0x1c823d585b2b4325a0db845cebe32fc7ad67514a/) | ⚠️ Unaudited |
| depositRootGenerator | unknown | mode | n/a | 2 deployments: mode [`0x0b05309ed925befe9f39f1704d777ee6d72fe942`](./contracts/mode-34443/0x0b05309ed925befe9f39f1704d777ee6d72fe942/); mode `0xdd78355bcf9a9435bfcdd9c1482c0e72e7b08f79` | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x6f13efadabd9269d6cead22b448d434a1f1b433e`](./contracts/ethereum-1/0x6f13efadabd9269d6cead22b448d434a1f1b433e/) | ⚠️ Unaudited |
| EntropyUpgradable | unknown | mode | n/a | 3 deployments: mode [`0x23f0e8faee7bbb405e7a7c3d60138fcfd43d7509`](./contracts/mode-34443/0x23f0e8faee7bbb405e7a7c3d60138fcfd43d7509/); mode `0x2b9bb0042db2f30650d73bb83cbae584807d2fe4`; mode `0xdd24f84d36bf92c65f92307595335bdfab5bbd21` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | mode | n/a | 8 deployments: mode [`0x2fa6dbfe4291136cf272e1a3294362b6651e8517`](./contracts/mode-34443/0x2fa6dbfe4291136cf272e1a3294362b6651e8517/); mode `0x36825bf3fbdf5a29e2d5148bfe7dcf7b5639e320`; mode `0x5cc070844e98f4cec5f2fbe1592fb1ed73ab7b48`; mode `0x658408aa8ad72c4b553eba82ea74d99c651ea16b`; mode `0x7a7f2493c578796abfba15ce2e914a7a819979b7`; mode `0x8d254a21b3c86d32f7179855531ce99164721933`; mode `0xa2aa501b19aff244d90cc15a4cf739d2725b5729`; mode `0xd02cc7a670047b6b012556a88e275c685d25e0c9` | ⚠️ Unaudited |
| ERC20Bridged | unknown | mode | n/a | [`0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a`](./contracts/mode-34443/0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a/) | ⚠️ Unaudited |
| EtherfiL2ExchangeRateProvider | unknown | mode | n/a | 2 deployments: mode [`0x35fa164735182de50811e8e2e824cfb9b6118ac2`](./contracts/mode-34443/0x35fa164735182de50811e8e2e824cfb9b6118ac2/); mode `0x8608ef6dcf4864e29db54e34180f4fdf166ce5e0` | ⚠️ Unaudited |
| EtherfiL2ModeSyncPoolETH | unknown | mode | n/a | 2 deployments: mode [`0x22c498b5c42c787c790f8f1fcef50b33a830f5dc`](./contracts/mode-34443/0x22c498b5c42c787c790f8f1fcef50b33a830f5dc/); mode `0x4690df9560bf519ef1cec0ab87b28fe41fced56c` | ⚠️ Unaudited |
| ExpressRelayUpgradable | unknown | mode | n/a | 2 deployments: mode [`0x24654078a8e043e8985d962a5100cdfa2026f92c`](./contracts/mode-34443/0x24654078a8e043e8985d962a5100cdfa2026f92c/); mode `0x549ebba8036ab746611b4ffa1423eb0a4df61440` | ⚠️ Unaudited |
| FeeSharing | unknown | mode | n/a | [`0x8680ceabcb9b56913c519c069add6bc3494b7020`](./contracts/mode-34443/0x8680ceabcb9b56913c519c069add6bc3494b7020/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | mode | n/a | [`0x6df6c0e70d6874a37084270de861d4be682f271b`](./contracts/mode-34443/0x6df6c0e70d6874a37084270de861d4be682f271b/) | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | mode | n/a | [`0xc0ce92b23108cb4bdbf88788a3933546a85cd772`](./contracts/mode-34443/0xc0ce92b23108cb4bdbf88788a3933546a85cd772/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x2901da832a4d0297ff0691100a8e496626cc626d`](./contracts/ethereum-1/0x2901da832a4d0297ff0691100a8e496626cc626d/) | ⚠️ Unaudited |
| L2ERC20TokenBridge | unknown | mode | n/a | [`0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97`](./contracts/mode-34443/0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x4317ba146d4933d889518a3e5e11fe7a53199b04`](./contracts/ethereum-1/0x4317ba146d4933d889518a3e5e11fe7a53199b04/) | ⚠️ Unaudited |
| LayerBankOracleAdapterModeV1 | unknown | mode | n/a | [`0x08dcd27fa135b3cd50ef7087e34ff05c62b768c3`](./contracts/mode-34443/0x08dcd27fa135b3cd50ef7087e34ff05c62b768c3/) | ⚠️ Unaudited |
| MasterMinter | unknown | mode | n/a | [`0x885904d9cfece53fb5042530f780c5208078b2bf`](./contracts/mode-34443/0x885904d9cfece53fb5042530f780c5208078b2bf/) | ⚠️ Unaudited |
| MintableERC20 | token | mode | n/a | [`0x59889b7021243db5b1e065385f918316cd90d46c`](./contracts/mode-34443/0x59889b7021243db5b1e065385f918316cd90d46c/) | ⚠️ Unaudited |
| MintableOFTUpgradeable | unknown | mode | n/a | 3 deployments: mode [`0x20ee00f43ef299dba82ba6fef537756dabe38cc7`](./contracts/mode-34443/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/); mode `0x8487c5f8550e3c3e7734fe7dcf77db2b72e4a848`; mode `0xd504cd60667bc354b2516d3c018452c99a33bfce` | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | [`0x6463dee3828677f6270d83d45408044fc5edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | ⚠️ Unaudited |
| ModeLock | unknown | mode | n/a | [`0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4`](./contracts/mode-34443/0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4/) | ⚠️ Unaudited |
| ModeOKXCampaign | unknown | mode | n/a | [`0x3bb5300254a8959d6a55fa2f02cfaf0c3d028b3a`](./contracts/mode-34443/0x3bb5300254a8959d6a55fa2f02cfaf0c3d028b3a/) | ⚠️ Unaudited |
| ModeOKXNFT | unknown | mode | n/a | 2 deployments: mode [`0x4ef75d9abf8083d1ff0fc6c0941cde5fd2d194de`](./contracts/mode-34443/0x4ef75d9abf8083d1ff0fc6c0941cde5fd2d194de/); mode `0x88afa650e29026f96c4aa746736c0413f7b9f7bf` | ⚠️ Unaudited |
| MulticallAdapter | unknown | mode | n/a | [`0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37`](./contracts/mode-34443/0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37/) | ⚠️ Unaudited |
| OpportunityAdapterFactory | unknown | mode | n/a | [`0x59f78de21a0b05d96ae00c547ba951a3b905602f`](./contracts/mode-34443/0x59f78de21a0b05d96ae00c547ba951a3b905602f/) | ⚠️ Unaudited |
| OpportunityProvider | unknown | mode | n/a | [`0x621330d0ecd449a06b72f41c1a93626ccec53cca`](./contracts/mode-34443/0x621330d0ecd449a06b72f41c1a93626ccec53cca/) | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | mode | n/a | [`0x2acec6d8aba90685927b61968d84cfff6192b32c`](./contracts/mode-34443/0x2acec6d8aba90685927b61968d84cfff6192b32c/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | mode | n/a | 11 deployments: mode [`0x00ea4344e90c741560f08667961a8de39ff506d7`](./contracts/mode-34443/0x00ea4344e90c741560f08667961a8de39ff506d7/); mode `0x028227c4dd1e5419d11bb6fa6e661920c519d4f5`; mode `0x3e7ef8f50246f725885102e8238cbba33f276747`; mode `0x50c5725949a6f0c72e6c4a641f24049a917db0cb`; mode `0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf`; mode `0xd08a2917653d4e460893203471f0000826fb4034`; mode `0xd988097fb8612cc24eec14542bc03424c656005f`; mode `0xe7798f023fc62146e8aa1b36da45fb70855a77ea`; mode `0xef252e50c3d354f97ca402b1e22455aa8bcba105`; mode `0xf0f161fda2712db8b566946122a5af183995e2ed`; mode `0xf419234b27d0efb71d93d522804df370a4107be1` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x69216395a62dfb243c05ef4f1c27af8655096a95`](./contracts/ethereum-1/0x69216395a62dfb243c05ef4f1c27af8655096a95/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xc0c6a811bbf07fa01b946f1c46a9a94c2ee8c73e`](./contracts/ethereum-1/0xc0c6a811bbf07fa01b946f1c46a9a94c2ee8c73e/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x8b34b14c7c7123459cf3076b8cb929be097d0c07`](./contracts/ethereum-1/0x8b34b14c7c7123459cf3076b8cb929be097d0c07/) | ⚠️ Unaudited |
| OssifiableProxy | unknown | mode | n/a | 2 deployments: mode [`0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81`](./contracts/mode-34443/0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81/); mode `0xb8161f28a5a38ce58f155d9a96bdac0104985fac` | ⚠️ Unaudited |
| PermissionedDisputeGameV2 | unknown | ethereum | n/a | [`0x58bf355c5d4edfc723ef89d99582eccfd143266a`](./contracts/ethereum-1/0x58bf355c5d4edfc723ef89d99582eccfd143266a/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | ⚠️ Unaudited |
| Proxy | proxy | mode | n/a | 4 deployments: mode [`0x4200000000000000000000000000000000000007`](./contracts/mode-34443/0x4200000000000000000000000000000000000007/); mode `0x4200000000000000000000000000000000000010`; mode `0x4200000000000000000000000000000000000014`; mode `0x4200000000000000000000000000000000000016` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x470d87b1dae09a454a43d1fd772a561a03276ab7`](./contracts/ethereum-1/0x470d87b1dae09a454a43d1fd772a561a03276ab7/); mode `0x68a9ec5b93f04a60c77f486a664f283b2e4e2b72`; mode `0xbe7777e4dc21e8c96c468eaae933d8d8c3d61f60` | ⚠️ Unaudited |
| ProxyFactory | unknown | mode | n/a | [`0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9`](./contracts/mode-34443/0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9/) | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | mode | n/a | 3 deployments: mode [`0x5c470034117339f4426cc1a005543002d333ce75`](./contracts/mode-34443/0x5c470034117339f4426cc1a005543002d333ce75/); mode `0xa5f1987f5b922f7730d709f9dc725cffb1bf5e9a`; mode `0xc0f566304a44d27c40d4f81d629520ac4ed1850e` | ⚠️ Unaudited |
| PythUpgradable | unknown | mode | n/a | 2 deployments: mode [`0x35a58beee77a2ad547fcded7e8cb1c6e19746b13`](./contracts/mode-34443/0x35a58beee77a2ad547fcded7e8cb1c6e19746b13/); mode `0xebe57e8045f2f230872523bbff7374986e45c486` | ⚠️ Unaudited |
| ReceiverImplementation | unknown | mode | n/a | [`0x66e9cba5529824a03b5bc9931d9c63637101d0f7`](./contracts/mode-34443/0x66e9cba5529824a03b5bc9931d9c63637101d0f7/) | ⚠️ Unaudited |
| RSETH_OFT | unknown | mode | n/a | [`0x4186bfc76e2e237523cbc30fd220fe055156b41f`](./contracts/mode-34443/0x4186bfc76e2e237523cbc30fd220fe055156b41f/) | ⚠️ Unaudited |
| RSETHPoolV2 | unknown | mode | n/a | [`0xf1cccba5558d31628216489a1435e068b1fd2c8a`](./contracts/mode-34443/0xf1cccba5558d31628216489a1435e068b1fd2c8a/) | ⚠️ Unaudited |
| RSETHRateReceiver | unknown | mode | n/a | [`0x38dd27b51e2e6868d99b615097c03a3de7fa7aa8`](./contracts/mode-34443/0x38dd27b51e2e6868d99b615097c03a3de7fa7aa8/) | ⚠️ Unaudited |
| RsETHTokenWrapper | unknown | mode | n/a | 3 deployments: mode [`0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1`](./contracts/mode-34443/0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1/); mode `0x352e20158c9916579b337d1332f462b26a8a699c`; mode `0xbdf38f9e6bdfcc23668c7464ce5afe899a358d52` | ⚠️ Unaudited |
| SignatureChecker | unknown | mode | n/a | [`0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602`](./contracts/mode-34443/0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602/) | ⚠️ Unaudited |
| StoneCross | unknown | mode | n/a | [`0x80137510979822322193fc997d400d5a6c747bf7`](./contracts/mode-34443/0x80137510979822322193fc997d400d5a6c747bf7/) | ⚠️ Unaudited |
| SuperchainAuction | unknown | mode | n/a | 2 deployments: mode [`0x3b164ea434bb0e9391764a07281b09012c503d0d`](./contracts/mode-34443/0x3b164ea434bb0e9391764a07281b09012c503d0d/); mode `0x68e6c417b6607ea0b406168cb625299c75b223e8` | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | [`0x95703e0982140d16f8eba6d158fccede42f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SuperchainIronclad | unknown | mode | n/a | 2 deployments: mode [`0x7b47798af46dc625b0a5a17c1f314648cd3dfc6c`](./contracts/mode-34443/0x7b47798af46dc625b0a5a17c1f314648cd3dfc6c/); mode `0xf5a7135651f65c9ff03e365c33eec821b2dfdf10` | ⚠️ Unaudited |
| SuperchainKim | unknown | mode | n/a | [`0x1052feab5c715d4f54ae1aaba5722523a71cafcb`](./contracts/mode-34443/0x1052feab5c715d4f54ae1aaba5722523a71cafcb/) | ⚠️ Unaudited |
| SupraOraclePull | operational_periphery | ethereum | n/a | [`0x2fa6dbfe4291136cf272e1a3294362b6651e8517`](./contracts/ethereum-1/0x2fa6dbfe4291136cf272e1a3294362b6651e8517/) | ⚠️ Unaudited |
| SupraOraclePull | unknown | mode | n/a | 2 deployments: mode [`0x059d018c8b3b256e5e121a4a131fbf58d58d46cb`](./contracts/mode-34443/0x059d018c8b3b256e5e121a4a131fbf58d58d46cb/); mode `0x08c56fa8edb36642894ffe372aac0cf33a06aac2` | ⚠️ Unaudited |
| SupraSValueFeedStorage | unknown | mode | n/a | [`0xb6260bb430a92cbad7701962d2be811d99e139fe`](./contracts/mode-34443/0xb6260bb430a92cbad7701962d2be811d99e139fe/) | ⚠️ Unaudited |
| SupraSValueFeedVerifier | unknown | mode | n/a | [`0x3e5e89d14576ce9f20a8347aa682517fe65b4acb`](./contracts/mode-34443/0x3e5e89d14576ce9f20a8347aa682517fe65b4acb/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221`](./contracts/ethereum-1/0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221/) | ⚠️ Unaudited |
| TokenBridge | operational_periphery | mode | n/a | [`0x8250f4af4b972684f7b336503e2d6dfedeb1487a`](./contracts/mode-34443/0x8250f4af4b972684f7b336503e2d6dfedeb1487a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | 6 deployments: mode [`0x04c0599ae5a44757c0af6f9ec3b93da8976c150a`](./contracts/mode-34443/0x04c0599ae5a44757c0af6f9ec3b93da8976c150a/); mode `0x2416092f143378750bb29b79ed961ab195cceea5`; mode `0x52c4221cb805479954cde5accff8c4dcaf96623b`; mode `0x7c1daae7bb0688c9bfe3a918a4224041c7177256`; mode `0xc42853c0c6624f42fcb8219aceb67ad188087dcb`; mode `0xe7903b1f75c534dd8159b313d92cdcfbc62cb3cd` | ⚠️ Unaudited |
| UUPSProxy | unknown | mode | n/a | [`0x95f1138837f1158726003251b32ecd8732c76781`](./contracts/mode-34443/0x95f1138837f1158726003251b32ecd8732c76781/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (60)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | mode | n/a | `0x00f7ab8c72d32f55cff15e8901c2f9f2bf29a3c0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x015a8c2e0a5fed579dbb05fd290e413adc6fc24a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0386e113cc716a7c6a55decd97b19c90ce080d9f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0f5908861962dffab7e4d9a1c9f513f1988e8dcc` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x14ddd08c0e28764fc89a266ec95a93619b0ee835` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x15cd4f6e0ce3b4832b33cb9c6f6fe6fc246754c2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1fd06c720c18935fd58327a8fef9859445e2d40d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x20c608922171a06a7bc5448acf6197fee7448a8b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2238382dcea03f024993c8a0355917c80b20301f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2634bd65ba27ab63811c74a63118acb312701bfa` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2901da832a4d0297ff0691100a8e496626cc626d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2b7d688f7314d8ef59489e43a1b70c7d50b68428` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x320e1580efff37e008f1c92700d1eba47c1b23fd` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x41c9e39574f40ad34c79f1c99b66a45efb830d4c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4317ba146d4933d889518a3e5e11fe7a53199b04` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x470d87b1dae09a454a43d1fd772a561a03276ab7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4ffa6cdeb4def980b75e3f4764797a2cad1faef3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x50ef494573f28cad6b64c31b7a00cdaa48306e15` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5951479fe3235b689e392e9bc6e968ce10637a52` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5e768819cf3a393345d71d3533e64a4a925f23a9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6093023a4a7e6873edfb02b4bce48c53fd310eec` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x628f56856386a4de8414a4d8217d519bf94d03f0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x69216395a62dfb243c05ef4f1c27af8655096a95` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7003088aa6f2c5d78b92861fd3ade5de2d2031ab` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7215c347458db86531f3c4cae1c60c0b93e435ce` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7bf471d9181ad783c7510243d1b0ebc6f29e9a81` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7bf7646cfa1a1ebed4436e53ab2cb95c7d16824d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x824b5ea461dd695c9be0aae07115d1aa1cf737dc` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x83d45725d6562d8cd717673d6bb4c67c07dc1905` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x879a0f1e8402e37ecc56c53c55b6e02eb704edd4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8b91af069928ba6591c950354d1ea29e08192bf8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9154d2b581e84b15615b4a857476af9fa6b68262` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x92fe7f11452d8fff92ebffb47036e0443ea110f1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x951754b08c52b2ac5d5a2af1d52c2d12aed5bcaf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x95bdca6c8edeb69c98bd5bd17660bacef1298a6f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x98046bd286715d3b0bc227dd7a956b83d8978603` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x98c41994f0b4dccd52fad6bfea6615de34c2ce0f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x998dc24e97762bc27f855e5890a0695cad1a3541` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9b800c1e8b61aa9d141bcd317dde7849f7a043e5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9c67accb38137cb761587032179b176c9276eb5a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9ee1289c21321e212994b23bf0b4cdc453c17eee` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9fbfa493ec98694256d171171487b9d47d849ba9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa62f9c5af106feee069f38de51098d9d81b90572` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa64e1313b6e104f2a3a14d0962ceb32acaa72012` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xad3dc277d3242938f8be18f0560e3d9b9988c46a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb27e5ca259702f209a29225d0eddc131039c9933` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbbd707815a7f7eb6897c7686274afabd7b579ff6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbe2d27554f130a720c4dd82dad055c941ca44dee` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc0c6a811bbf07fa01b946f1c46a9a94c2ee8c73e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc19a60d9e8c27b9a43527c3283b4dd8edc8be15c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd1b3cbdb812712d71f5440af34bf605b34b6c21c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd9b9dce20d7837379cbd4fa1a58bc70e595bb9a5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe7413127f29e050df65ac3fc9335f85bb10091ae` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xeb72756ee12309eae82a0deb9787e69f5b62949c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xeebd920ae8444c4f5d6ad07879ccbeb53663d93a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf4e7778523991cf6c4b305970c2c9e71ef27f652` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf5bbe9558f4bf37f1eb82fb2cedb1c775fa56832` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xff255f800044225f54af4510332aa3d67cc77635` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [immunefi.com/bug-bounty/optimism/information](https://immunefi.com/bug-bounty/optimism/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [public-audits (GitHub directory)](https://github.com/mode-network/public-audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x50ef494573f28cad6b64c31b7a00cdaa48306e15`](./contracts/ethereum-1/0x50ef494573f28cad6b64c31b7a00cdaa48306e15/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb9d917868276cee5457609dbbf470fde41bade8`](./contracts/ethereum-1/0xeb9d917868276cee5457609dbbf470fde41bade8/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4200000000000000000000000000000000000006`](./contracts/mode-34443/0x4200000000000000000000000000000000000006/) | bETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x308861a430be4cce5502d0a12724771fc6daf216`](./contracts/mode-34443/0x308861a430be4cce5502d0a12724771fc6daf216/) | BucketRateLimiter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c823d585b2b4325a0db845cebe32fc7ad67514a`](./contracts/ethereum-1/0x1c823d585b2b4325a0db845cebe32fc7ad67514a/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0b05309ed925befe9f39f1704d777ee6d72fe942`](./contracts/mode-34443/0x0b05309ed925befe9f39f1704d777ee6d72fe942/) | depositRootGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f13efadabd9269d6cead22b448d434a1f1b433e`](./contracts/ethereum-1/0x6f13efadabd9269d6cead22b448d434a1f1b433e/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x23f0e8faee7bbb405e7a7c3d60138fcfd43d7509`](./contracts/mode-34443/0x23f0e8faee7bbb405e7a7c3d60138fcfd43d7509/) | EntropyUpgradable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a`](./contracts/mode-34443/0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a/) | ERC20Bridged | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x24654078a8e043e8985d962a5100cdfa2026f92c`](./contracts/mode-34443/0x24654078a8e043e8985d962a5100cdfa2026f92c/) | ExpressRelayUpgradable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8680ceabcb9b56913c519c069add6bc3494b7020`](./contracts/mode-34443/0x8680ceabcb9b56913c519c069add6bc3494b7020/) | FeeSharing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x6df6c0e70d6874a37084270de861d4be682f271b`](./contracts/mode-34443/0x6df6c0e70d6874a37084270de861d4be682f271b/) | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xc0ce92b23108cb4bdbf88788a3933546a85cd772`](./contracts/mode-34443/0xc0ce92b23108cb4bdbf88788a3933546a85cd772/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2901da832a4d0297ff0691100a8e496626cc626d`](./contracts/ethereum-1/0x2901da832a4d0297ff0691100a8e496626cc626d/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97`](./contracts/mode-34443/0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97/) | L2ERC20TokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4317ba146d4933d889518a3e5e11fe7a53199b04`](./contracts/ethereum-1/0x4317ba146d4933d889518a3e5e11fe7a53199b04/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x08dcd27fa135b3cd50ef7087e34ff05c62b768c3`](./contracts/mode-34443/0x08dcd27fa135b3cd50ef7087e34ff05c62b768c3/) | LayerBankOracleAdapterModeV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x885904d9cfece53fb5042530f780c5208078b2bf`](./contracts/mode-34443/0x885904d9cfece53fb5042530f780c5208078b2bf/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x59889b7021243db5b1e065385f918316cd90d46c`](./contracts/mode-34443/0x59889b7021243db5b1e065385f918316cd90d46c/) | MintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x20ee00f43ef299dba82ba6fef537756dabe38cc7`](./contracts/mode-34443/0x20ee00f43ef299dba82ba6fef537756dabe38cc7/) | MintableOFTUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6463dee3828677f6270d83d45408044fc5edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | MIPS64 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4`](./contracts/mode-34443/0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4/) | ModeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3bb5300254a8959d6a55fa2f02cfaf0c3d028b3a`](./contracts/mode-34443/0x3bb5300254a8959d6a55fa2f02cfaf0c3d028b3a/) | ModeOKXCampaign | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4ef75d9abf8083d1ff0fc6c0941cde5fd2d194de`](./contracts/mode-34443/0x4ef75d9abf8083d1ff0fc6c0941cde5fd2d194de/) | ModeOKXNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37`](./contracts/mode-34443/0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37/) | MulticallAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x59f78de21a0b05d96ae00c547ba951a3b905602f`](./contracts/mode-34443/0x59f78de21a0b05d96ae00c547ba951a3b905602f/) | OpportunityAdapterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x621330d0ecd449a06b72f41c1a93626ccec53cca`](./contracts/mode-34443/0x621330d0ecd449a06b72f41c1a93626ccec53cca/) | OpportunityProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x2acec6d8aba90685927b61968d84cfff6192b32c`](./contracts/mode-34443/0x2acec6d8aba90685927b61968d84cfff6192b32c/) | OptimismBridgeExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x00ea4344e90c741560f08667961a8de39ff506d7`](./contracts/mode-34443/0x00ea4344e90c741560f08667961a8de39ff506d7/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69216395a62dfb243c05ef4f1c27af8655096a95`](./contracts/ethereum-1/0x69216395a62dfb243c05ef4f1c27af8655096a95/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0c6a811bbf07fa01b946f1c46a9a94c2ee8c73e`](./contracts/ethereum-1/0xc0c6a811bbf07fa01b946f1c46a9a94c2ee8c73e/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b34b14c7c7123459cf3076b8cb929be097d0c07`](./contracts/ethereum-1/0x8b34b14c7c7123459cf3076b8cb929be097d0c07/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81`](./contracts/mode-34443/0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81/) | OssifiableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58bf355c5d4edfc723ef89d99582eccfd143266a`](./contracts/ethereum-1/0x58bf355c5d4edfc723ef89d99582eccfd143266a/) | PermissionedDisputeGameV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9`](./contracts/mode-34443/0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9/) | ProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x5c470034117339f4426cc1a005543002d333ce75`](./contracts/mode-34443/0x5c470034117339f4426cc1a005543002d333ce75/) | PythAggregatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x35a58beee77a2ad547fcded7e8cb1c6e19746b13`](./contracts/mode-34443/0x35a58beee77a2ad547fcded7e8cb1c6e19746b13/) | PythUpgradable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x66e9cba5529824a03b5bc9931d9c63637101d0f7`](./contracts/mode-34443/0x66e9cba5529824a03b5bc9931d9c63637101d0f7/) | ReceiverImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x4186bfc76e2e237523cbc30fd220fe055156b41f`](./contracts/mode-34443/0x4186bfc76e2e237523cbc30fd220fe055156b41f/) | RSETH_OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xf1cccba5558d31628216489a1435e068b1fd2c8a`](./contracts/mode-34443/0xf1cccba5558d31628216489a1435e068b1fd2c8a/) | RSETHPoolV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x38dd27b51e2e6868d99b615097c03a3de7fa7aa8`](./contracts/mode-34443/0x38dd27b51e2e6868d99b615097c03a3de7fa7aa8/) | RSETHRateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1`](./contracts/mode-34443/0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1/) | RsETHTokenWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602`](./contracts/mode-34443/0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602/) | SignatureChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x80137510979822322193fc997d400d5a6c747bf7`](./contracts/mode-34443/0x80137510979822322193fc997d400d5a6c747bf7/) | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3b164ea434bb0e9391764a07281b09012c503d0d`](./contracts/mode-34443/0x3b164ea434bb0e9391764a07281b09012c503d0d/) | SuperchainAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95703e0982140d16f8eba6d158fccede42f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x7b47798af46dc625b0a5a17c1f314648cd3dfc6c`](./contracts/mode-34443/0x7b47798af46dc625b0a5a17c1f314648cd3dfc6c/) | SuperchainIronclad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x1052feab5c715d4f54ae1aaba5722523a71cafcb`](./contracts/mode-34443/0x1052feab5c715d4f54ae1aaba5722523a71cafcb/) | SuperchainKim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fa6dbfe4291136cf272e1a3294362b6651e8517`](./contracts/ethereum-1/0x2fa6dbfe4291136cf272e1a3294362b6651e8517/) | SupraOraclePull | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x059d018c8b3b256e5e121a4a131fbf58d58d46cb`](./contracts/mode-34443/0x059d018c8b3b256e5e121a4a131fbf58d58d46cb/) | SupraOraclePull | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xb6260bb430a92cbad7701962d2be811d99e139fe`](./contracts/mode-34443/0xb6260bb430a92cbad7701962d2be811d99e139fe/) | SupraSValueFeedStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3e5e89d14576ce9f20a8347aa682517fe65b4acb`](./contracts/mode-34443/0x3e5e89d14576ce9f20a8347aa682517fe65b4acb/) | SupraSValueFeedVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221`](./contracts/ethereum-1/0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8250f4af4b972684f7b336503e2d6dfedeb1487a`](./contracts/mode-34443/0x8250f4af4b972684f7b336503e2d6dfedeb1487a/) | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x95f1138837f1158726003251b32ecd8732c76781`](./contracts/mode-34443/0x95f1138837f1158726003251b32ecd8732c76781/) | UUPSProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: low=1
- Match method counts: contract_name=1, extraction_exact=4

Zero-match audit list:

- [2353] report-mode-lock-solo-review.pdf
- [2355] public-audits (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
