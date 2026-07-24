# Agentic Audit Brief: Mode Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Mode Bridge (`mode-bridge`)
- Website: [https://app.mode.network](https://app.mode.network)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, mode
- Contract surface: 115 unique implementations (144 raw deployments)
- Coverage basis: 1/39 confirmed own live verified implementations (2.6%); conservative 2.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,728,451.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mode Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 39 contract row(s) across ethereum, mode. Structural roles: 19 unclassified, 11 supporting, 9 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 39
- Structural roles: unclassified (19), supporting (11), core (9)
- Contract kinds: contract (39)
- Detected standards: erc165 (9), erc20 (7), ownable (4), erc1967proxy (3), erc20permit (1)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (4), solmate (3)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7c6b91d9be155a6db01f749217d76ff02a7227f2`, chain 34443)
- UnnamedContract (`0x9e5aac1ba1a2e6aed6b32689dfcf62a509ca96f3`, chain 34443)
- bETH (`0x4200000000000000000000000000000000000006`, chain 34443)
- ERC1967Proxy (`0xa2aa501b19aff244d90cc15a4cf739d2725b5729`, chain 34443)
- GovernanceToken (`0xdfc7c877a950e49d2610114102175a06c2e3167a`, chain 34443)
- L1ChugSplashProxy (`0x735adbbe72226bd52e818e7181953f42e3b0ff21`, chain 1)
- L1ERC721Bridge (`0x8b91af069928ba6591c950354d1ea29e08192bf8`, chain 1)
- L2OutputOracle (`0x6093023a4a7e6873edfb02b4bce48c53fd310eec`, chain 1)
- MintableERC20 (`0x59889b7021243db5b1e065385f918316cd90d46c`, chain 34443)
- ModeLock (`0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4`, chain 34443)
- OptimismMintableERC20 (`0x028227c4dd1e5419d11bb6fa6e661920c519d4f5`, chain 34443)
- OptimismMintableERC20 (`0x3e7ef8f50246f725885102e8238cbba33f276747`, chain 34443)
- OptimismMintableERC20 (`0x50c5725949a6f0c72e6c4a641f24049a917db0cb`, chain 34443)
- OptimismMintableERC20 (`0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf`, chain 34443)
- OptimismMintableERC20 (`0xd08a2917653d4e460893203471f0000826fb4034`, chain 34443)
- OptimismMintableERC20 (`0xd988097fb8612cc24eec14542bc03424c656005f`, chain 34443)
- OptimismMintableERC20 (`0xe7798f023fc62146e8aa1b36da45fb70855a77ea`, chain 34443)
- OptimismMintableERC20 (`0xf0f161fda2712db8b566946122a5af183995e2ed`, chain 34443)
- Proxy (`0x8b34b14c7c7123459cf3076b8cb929be097d0c07`, chain 1)
- Proxy (`0x4200000000000000000000000000000000000007`, chain 34443)
- Proxy (`0x4200000000000000000000000000000000000010`, chain 34443)
- RSETH_OFT (`0x4186bfc76e2e237523cbc30fd220fe055156b41f`, chain 34443)
- StoneCross (`0x80137510979822322193fc997d400d5a6c747bf7`, chain 34443)
- SystemConfig (`0x951754b08c52b2ac5d5a2af1d52c2d12aed5bcaf`, chain 1)
- TransparentUpgradeableProxy (`0x04c0599ae5a44757c0af6f9ec3b93da8976c150a`, chain 34443)
- TransparentUpgradeableProxy (`0x2416092f143378750bb29b79ed961ab195cceea5`, chain 34443)
- TransparentUpgradeableProxy (`0x7c1daae7bb0688c9bfe3a918a4224041c7177256`, chain 34443)
- TransparentUpgradeableProxy (`0xe7903b1f75c534dd8159b313d92cdcfbc62cb3cd`, chain 34443)

## Contract Surface Quality

- Logic-topography rows: 39; live-surface rows included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/105 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/39 (2.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 41 of 115 unique; 74 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/89
- Verified + Unaudited implementations: 88
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 115
- Raw deployments: 144
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solo Review | Tier 2 | 1 | 1.1% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GovernanceToken | token | project_anchor | own_supporting | 0 | mode | unit-248093 | `0xdfc7c877a950e49d2610114102175a06c2e3167a` | ✅ Audited |

### ⚠️ Verified + Unaudited (88)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248012 | `0x50ef494573f28cad6b64c31b7a00cdaa48306e15` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xeb9d917868276cee5457609dbbf470fde41bade8` | ⚠️ Unaudited |
| bETH | unknown | project_anchor | own_supporting | 0 | mode | unit-248046 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| BucketRateLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x308861a430be4cce5502d0a12724771fc6daf216`; mode `0xb49e4420ea6e35f98060cd133842dbea9c27e479` | ⚠️ Unaudited |
| DelayedWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c823d585b2b4325a0db845cebe32fc7ad67514a` | ⚠️ Unaudited |
| depositRootGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x0b05309ed925befe9f39f1704d777ee6d72fe942`; mode `0xdd78355bcf9a9435bfcdd9c1482c0e72e7b08f79` | ⚠️ Unaudited |
| DisputeGameFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f13efadabd9269d6cead22b448d434a1f1b433e` | ⚠️ Unaudited |
| EntropyUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x23f0e8faee7bbb405e7a7c3d60138fcfd43d7509`; mode `0x2b9bb0042db2f30650d73bb83cbae584807d2fe4`; mode `0xdd24f84d36bf92c65f92307595335bdfab5bbd21` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 0 | mode | unit-248042 | `0x2fa6dbfe4291136cf272e1a3294362b6651e8517` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 6 deployments: mode `0x36825bf3fbdf5a29e2d5148bfe7dcf7b5639e320`; mode `0x5cc070844e98f4cec5f2fbe1592fb1ed73ab7b48`; mode `0x658408aa8ad72c4b553eba82ea74d99c651ea16b`; mode `0x7a7f2493c578796abfba15ce2e914a7a819979b7`; mode `0x8d254a21b3c86d32f7179855531ce99164721933`; mode `0xd02cc7a670047b6b012556a88e275c685d25e0c9` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248082 | `0xa2aa501b19aff244d90cc15a4cf739d2725b5729` | ⚠️ Unaudited |
| ERC20Bridged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a` | ⚠️ Unaudited |
| EtherfiL2ExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x35fa164735182de50811e8e2e824cfb9b6118ac2`; mode `0x8608ef6dcf4864e29db54e34180f4fdf166ce5e0` | ⚠️ Unaudited |
| EtherfiL2ModeSyncPoolETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x22c498b5c42c787c790f8f1fcef50b33a830f5dc`; mode `0x4690df9560bf519ef1cec0ab87b28fe41fced56c` | ⚠️ Unaudited |
| ExpressRelayUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x24654078a8e043e8985d962a5100cdfa2026f92c`; mode `0x549ebba8036ab746611b4ffa1423eb0a4df61440` | ⚠️ Unaudited |
| FeeSharing | unknown | project_anchor | own_supporting | 0 | mode | unit-248068 | `0x8680ceabcb9b56913c519c069add6bc3494b7020` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6df6c0e70d6874a37084270de861d4be682f271b` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc0ce92b23108cb4bdbf88788a3933546a85cd772` | ⚠️ Unaudited |
| GovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xabbf702d5151b77263af53b02ff0ccede7c07eed` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248005 | `0x14ddd08c0e28764fc89a266ec95a93619b0ee835` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248104 | `0x95bdca6c8edeb69c98bd5bd17660bacef1298a6f` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248101 | `0x2901da832a4d0297ff0691100a8e496626cc626d` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248016 | `0x8b91af069928ba6591c950354d1ea29e08192bf8` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-248103 | `0x735adbbe72226bd52e818e7181953f42e3b0ff21` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248021 | `0x9c67accb38137cb761587032179b176c9276eb5a` | ⚠️ Unaudited |
| L2ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248106 | `0x4317ba146d4933d889518a3e5e11fe7a53199b04` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248013 | `0x6093023a4a7e6873edfb02b4bce48c53fd310eec` | ⚠️ Unaudited |
| LayerBankOracleAdapterModeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x08dcd27fa135b3cd50ef7087e34ff05c62b768c3` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x885904d9cfece53fb5042530f780c5208078b2bf` | ⚠️ Unaudited |
| MintableERC20 | token | project_anchor | own_supporting | 0 | mode | unit-248055 | `0x59889b7021243db5b1e065385f918316cd90d46c` | ⚠️ Unaudited |
| MintableOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x20ee00f43ef299dba82ba6fef537756dabe38cc7`; mode `0x8487c5f8550e3c3e7734fe7dcf77db2b72e4a848`; mode `0xd504cd60667bc354b2516d3c018452c99a33bfce` | ⚠️ Unaudited |
| MIPS64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6463dee3828677f6270d83d45408044fc5edb908` | ⚠️ Unaudited |
| ModeLock | unknown | project_anchor | own_supporting | 0 | mode | unit-248061 | `0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4` | ⚠️ Unaudited |
| ModeOKXCampaign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3bb5300254a8959d6a55fa2f02cfaf0c3d028b3a` | ⚠️ Unaudited |
| ModeOKXNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x4ef75d9abf8083d1ff0fc6c0941cde5fd2d194de`; mode `0x88afa650e29026f96c4aa746736c0413f7b9f7bf` | ⚠️ Unaudited |
| MulticallAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37` | ⚠️ Unaudited |
| OpportunityAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x59f78de21a0b05d96ae00c547ba951a3b905602f` | ⚠️ Unaudited |
| OpportunityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x621330d0ecd449a06b72f41c1a93626ccec53cca` | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2acec6d8aba90685927b61968d84cfff6192b32c` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x00ea4344e90c741560f08667961a8de39ff506d7`; mode `0xef252e50c3d354f97ca402b1e22455aa8bcba105`; mode `0xf419234b27d0efb71d93d522804df370a4107be1` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248032 | `0x028227c4dd1e5419d11bb6fa6e661920c519d4f5` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248044 | `0x3e7ef8f50246f725885102e8238cbba33f276747` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248052 | `0x50c5725949a6f0c72e6c4a641f24049a917db0cb` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248088 | `0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248089 | `0xd08a2917653d4e460893203471f0000826fb4034` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248091 | `0xd988097fb8612cc24eec14542bc03424c656005f` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248095 | `0xe7798f023fc62146e8aa1b36da45fb70855a77ea` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248099 | `0xf0f161fda2712db8b566946122a5af183995e2ed` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248102 | `0x69216395a62dfb243c05ef4f1c27af8655096a95` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248024 | `0xc0c6a811bbf07fa01b946f1c46a9a94c2ee8c73e` | ⚠️ Unaudited |
| OptimismPortal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248022 | `0xad3dc277d3242938f8be18f0560e3d9b9988c46a` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248105 | `0x8b34b14c7c7123459cf3076b8cb929be097d0c07` | ⚠️ Unaudited |
| OssifiableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81`; mode `0xb8161f28a5a38ce58f155d9a96bdac0104985fac` | ⚠️ Unaudited |
| PermissionedDisputeGameV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58bf355c5d4edfc723ef89d99582eccfd143266a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb8cdfc6831fc866ed9c51af8817da5c287add3` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248047 | `0x4200000000000000000000000000000000000007` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248048 | `0x4200000000000000000000000000000000000010` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x4200000000000000000000000000000000000014`; mode `0x4200000000000000000000000000000000000016` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248011 | `0x470d87b1dae09a454a43d1fd772a561a03276ab7` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x68a9ec5b93f04a60c77f486a664f283b2e4e2b72`; mode `0xbe7777e4dc21e8c96c468eaae933d8d8c3d61f60` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x5c470034117339f4426cc1a005543002d333ce75`; mode `0xa5f1987f5b922f7730d709f9dc725cffb1bf5e9a`; mode `0xc0f566304a44d27c40d4f81d629520ac4ed1850e` | ⚠️ Unaudited |
| PythUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x35a58beee77a2ad547fcded7e8cb1c6e19746b13`; mode `0xebe57e8045f2f230872523bbff7374986e45c486` | ⚠️ Unaudited |
| ReceiverImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x66e9cba5529824a03b5bc9931d9c63637101d0f7` | ⚠️ Unaudited |
| RSETH_OFT | unknown | project_anchor | own_supporting | 0 | mode | unit-248045 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ⚠️ Unaudited |
| RSETHPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf1cccba5558d31628216489a1435e068b1fd2c8a` | ⚠️ Unaudited |
| RSETHRateReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x38dd27b51e2e6868d99b615097c03a3de7fa7aa8` | ⚠️ Unaudited |
| RsETHTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1`; mode `0x352e20158c9916579b337d1332f462b26a8a699c`; mode `0xbdf38f9e6bdfcc23668c7464ce5afe899a358d52` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | mode | unit-248065 | `0x80137510979822322193fc997d400d5a6c747bf7` | ⚠️ Unaudited |
| SuperchainAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x3b164ea434bb0e9391764a07281b09012c503d0d`; mode `0x68e6c417b6607ea0b406168cb625299c75b223e8` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e0982140d16f8eba6d158fccede42f04a4c` | ⚠️ Unaudited |
| SuperchainIronclad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x7b47798af46dc625b0a5a17c1f314648cd3dfc6c`; mode `0xf5a7135651f65c9ff03e365c33eec821b2dfdf10` | ⚠️ Unaudited |
| SuperchainKim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1052feab5c715d4f54ae1aaba5722523a71cafcb` | ⚠️ Unaudited |
| SupraOraclePull | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2fa6dbfe4291136cf272e1a3294362b6651e8517` | ⚠️ Unaudited |
| SupraOraclePull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x059d018c8b3b256e5e121a4a131fbf58d58d46cb`; mode `0x08c56fa8edb36642894ffe372aac0cf33a06aac2` | ⚠️ Unaudited |
| SupraSValueFeedStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb6260bb430a92cbad7701962d2be811d99e139fe` | ⚠️ Unaudited |
| SupraSValueFeedVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3e5e89d14576ce9f20a8347aa682517fe65b4acb` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248100 | `0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248018 | `0x951754b08c52b2ac5d5a2af1d52c2d12aed5bcaf` | ⚠️ Unaudited |
| TokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8250f4af4b972684f7b336503e2d6dfedeb1487a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248033 | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248039 | `0x2416092f143378750bb29b79ed961ab195cceea5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x52c4221cb805479954cde5accff8c4dcaf96623b`; mode `0xc42853c0c6624f42fcb8219aceb67ad188087dcb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248063 | `0x7c1daae7bb0688c9bfe3a918a4224041c7177256` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248096 | `0xe7903b1f75c534dd8159b313d92cdcfbc62cb3cd` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x95f1138837f1158726003251b32ecd8732c76781` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1daae7bb0688c9bfe3a918a4224041c7177256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8680ceabcb9b56913c519c069add6bc3494b7020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2aa501b19aff244d90cc15a4cf739d2725b5729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0386e113cc716a7c6a55decd97b19c90ce080d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1fd06c720c18935fd58327a8fef9859445e2d40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2b7d688f7314d8ef59489e43a1b70c7d50b68428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x41c9e39574f40ad34c79f1c99b66a45efb830d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x628f56856386a4de8414a4d8217d519bf94d03f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7003088aa6f2c5d78b92861fd3ade5de2d2031ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7215c347458db86531f3c4cae1c60c0b93e435ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7bf7646cfa1a1ebed4436e53ab2cb95c7d16824d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-248064 | `0x7c6b91d9be155a6db01f749217d76ff02a7227f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9154d2b581e84b15615b4a857476af9fa6b68262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x98046bd286715d3b0bc227dd7a956b83d8978603` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-248079 | `0x9e5aac1ba1a2e6aed6b32689dfcf62a509ca96f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa62f9c5af106feee069f38de51098d9d81b90572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa64e1313b6e104f2a3a14d0962ceb32acaa72012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb27e5ca259702f209a29225d0eddc131039c9933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbe2d27554f130a720c4dd82dad055c941ca44dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf4e7778523991cf6c4b305970c2c9e71ef27f652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf5bbe9558f4bf37f1eb82fb2cedb1c775fa56832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xff255f800044225f54af4510332aa3d67cc77635` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 88
- Live contracts: 16
- Unknown liveness contracts: 72
- Source-verified contracts: 78
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=62, candidate hard block=12, contamination review=1, exact address book overlap=3, unverified unclassified=10

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AddressManager<br>`0x50ef494573f28cad6b64c31b7a00cdaa48306e15` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | L1StandardBridge<br>`0x9c67accb38137cb761587032179b176c9276eb5a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | OptimismMintableERC20Factory<br>`0xc0c6a811bbf07fa01b946f1c46a9a94c2ee8c73e` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | OptimismPortal<br>`0xad3dc277d3242938f8be18f0560e3d9b9988c46a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | Proxy<br>`0x2901da832a4d0297ff0691100a8e496626cc626d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | Proxy<br>`0x4317ba146d4933d889518a3e5e11fe7a53199b04` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | Proxy<br>`0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | Proxy<br>`0x69216395a62dfb243c05ef4f1c27af8655096a95` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | ProxyAdmin<br>`0x470d87b1dae09a454a43d1fd772a561a03276ab7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | ResolvedDelegateProxy<br>`0x95bdca6c8edeb69c98bd5bd17660bacef1298a6f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| candidate review | EntropyUpgradable<br>`0x23f0e8faee7bbb405e7a7c3d60138fcfd43d7509` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | EntropyUpgradable<br>`0x2b9bb0042db2f30650d73bb83cbae584807d2fe4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | EntropyUpgradable<br>`0xdd24f84d36bf92c65f92307595335bdfab5bbd21` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ERC1967Proxy<br>`0x2fa6dbfe4291136cf272e1a3294362b6651e8517` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x828dbaa4eac15c232e59921273203b2c77d3e2ab` |
| candidate review | ERC1967Proxy<br>`0x36825bf3fbdf5a29e2d5148bfe7dcf7b5639e320` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ERC1967Proxy<br>`0x5cc070844e98f4cec5f2fbe1592fb1ed73ab7b48` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ERC1967Proxy<br>`0x7a7f2493c578796abfba15ce2e914a7a819979b7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ERC1967Proxy<br>`0xd02cc7a670047b6b012556a88e275c685d25e0c9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x828dbaa4eac15c232e59921273203b2c77d3e2ab` |
| candidate review | ERC20Bridged<br>`0xf27b1b121e55a13047d66dc4aaa8c17ba72c762a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | ExpressRelayUpgradable<br>`0x24654078a8e043e8985d962a5100cdfa2026f92c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ExpressRelayUpgradable<br>`0x549ebba8036ab746611b4ffa1423eb0a4df61440` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | FeeSharing<br>`0x8680ceabcb9b56913c519c069add6bc3494b7020` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | FiatTokenProxy<br>`0x6df6c0e70d6874a37084270de861d4be682f271b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | FiatTokenV2_2<br>`0xc0ce92b23108cb4bdbf88788a3933546a85cd772` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | GovernanceToken<br>`0xabbf702d5151b77263af53b02ff0ccede7c07eed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x11fd8f7b4e8acf54be24ee85517b90f8755e7a96` |
| candidate review | L2ERC20TokenBridge<br>`0x488cdb57e9a1006ab77730fc8b19e1bb76e1cb97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | LayerBankOracleAdapterModeV1<br>`0x08dcd27fa135b3cd50ef7087e34ff05c62b768c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x72713d52fd3477fef78864f4100c1c8f128d1fec` |
| candidate review | MasterMinter<br>`0x885904d9cfece53fb5042530f780c5208078b2bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | ModeOKXCampaign<br>`0x3bb5300254a8959d6a55fa2f02cfaf0c3d028b3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x11fd8f7b4e8acf54be24ee85517b90f8755e7a96` |
| candidate review | ModeOKXNFT<br>`0x4ef75d9abf8083d1ff0fc6c0941cde5fd2d194de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x11fd8f7b4e8acf54be24ee85517b90f8755e7a96` |
| candidate review | ModeOKXNFT<br>`0x88afa650e29026f96c4aa746736c0413f7b9f7bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x11fd8f7b4e8acf54be24ee85517b90f8755e7a96` |
| candidate review | MulticallAdapter<br>`0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | OpportunityAdapterFactory<br>`0x59f78de21a0b05d96ae00c547ba951a3b905602f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | OpportunityProvider<br>`0x621330d0ecd449a06b72f41c1a93626ccec53cca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | OptimismBridgeExecutor<br>`0x2acec6d8aba90685927b61968d84cfff6192b32c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | OptimismMintableERC20<br>`0xef252e50c3d354f97ca402b1e22455aa8bcba105` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e55a90772b92f17f87be04f9562f3faafd0cc38` |
| candidate review | OssifiableProxy<br>`0x98f96a4b34d03a2e6f225b28b8f8cb1279562d81` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | ProxyAdmin<br>`0xbe7777e4dc21e8c96c468eaae933d8d8c3d61f60` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x72713d52fd3477fef78864f4100c1c8f128d1fec` |
| candidate review | ProxyFactory<br>`0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| candidate review | PythAggregatorV3<br>`0x5c470034117339f4426cc1a005543002d333ce75` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | PythAggregatorV3<br>`0xa5f1987f5b922f7730d709f9dc725cffb1bf5e9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | PythAggregatorV3<br>`0xc0f566304a44d27c40d4f81d629520ac4ed1850e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | PythUpgradable<br>`0x35a58beee77a2ad547fcded7e8cb1c6e19746b13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | PythUpgradable<br>`0xebe57e8045f2f230872523bbff7374986e45c486` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ReceiverImplementation<br>`0x66e9cba5529824a03b5bc9931d9c63637101d0f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | RSETHPoolV2<br>`0xf1cccba5558d31628216489a1435e068b1fd2c8a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| candidate review | RSETHRateReceiver<br>`0x38dd27b51e2e6868d99b615097c03a3de7fa7aa8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| candidate review | RsETHTokenWrapper<br>`0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| candidate review | RsETHTokenWrapper<br>`0x352e20158c9916579b337d1332f462b26a8a699c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| candidate review | RsETHTokenWrapper<br>`0xbdf38f9e6bdfcc23668c7464ce5afe899a358d52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| candidate review | SignatureChecker<br>`0x87fb7b90b7071ba2e56bd3c44d6e93746d6ca602` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb834f488253bbfdfb212fb31e3d6352545ecbdfd` |
| candidate review | SuperchainAuction<br>`0x3b164ea434bb0e9391764a07281b09012c503d0d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e55a90772b92f17f87be04f9562f3faafd0cc38` |
| candidate review | SuperchainAuction<br>`0x68e6c417b6607ea0b406168cb625299c75b223e8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e55a90772b92f17f87be04f9562f3faafd0cc38` |
| candidate review | SuperchainIronclad<br>`0x7b47798af46dc625b0a5a17c1f314648cd3dfc6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x11fd8f7b4e8acf54be24ee85517b90f8755e7a96` |
| candidate review | SuperchainIronclad<br>`0xf5a7135651f65c9ff03e365c33eec821b2dfdf10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x11fd8f7b4e8acf54be24ee85517b90f8755e7a96` |
| candidate review | SuperchainKim<br>`0x1052feab5c715d4f54ae1aaba5722523a71cafcb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e55a90772b92f17f87be04f9562f3faafd0cc38` |
| candidate review | SupraOraclePull<br>`0x059d018c8b3b256e5e121a4a131fbf58d58d46cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x828dbaa4eac15c232e59921273203b2c77d3e2ab` |
| candidate review | SupraOraclePull<br>`0x08c56fa8edb36642894ffe372aac0cf33a06aac2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x828dbaa4eac15c232e59921273203b2c77d3e2ab` |
| candidate review | SupraSValueFeedStorage<br>`0xb6260bb430a92cbad7701962d2be811d99e139fe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x828dbaa4eac15c232e59921273203b2c77d3e2ab` |
| candidate review | SupraSValueFeedVerifier<br>`0x3e5e89d14576ce9f20a8347aa682517fe65b4acb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x828dbaa4eac15c232e59921273203b2c77d3e2ab` |
| candidate review | TransparentUpgradeableProxy<br>`0x52c4221cb805479954cde5accff8c4dcaf96623b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate review | TransparentUpgradeableProxy<br>`0xc42853c0c6624f42fcb8219aceb67ad188087dcb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | BucketRateLimiter<br>`0x308861a430be4cce5502d0a12724771fc6daf216` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | BucketRateLimiter<br>`0xb49e4420ea6e35f98060cd133842dbea9c27e479` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | depositRootGenerator<br>`0x0b05309ed925befe9f39f1704d777ee6d72fe942` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | depositRootGenerator<br>`0xdd78355bcf9a9435bfcdd9c1482c0e72e7b08f79` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | EtherfiL2ExchangeRateProvider<br>`0x35fa164735182de50811e8e2e824cfb9b6118ac2` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | EtherfiL2ExchangeRateProvider<br>`0x8608ef6dcf4864e29db54e34180f4fdf166ce5e0` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | EtherfiL2ModeSyncPoolETH<br>`0x22c498b5c42c787c790f8f1fcef50b33a830f5dc` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | EtherfiL2ModeSyncPoolETH<br>`0x4690df9560bf519ef1cec0ab87b28fe41fced56c` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | MintableOFTUpgradeable<br>`0x20ee00f43ef299dba82ba6fef537756dabe38cc7` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | MintableOFTUpgradeable<br>`0x8487c5f8550e3c3e7734fe7dcf77db2b72e4a848` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | MintableOFTUpgradeable<br>`0xd504cd60667bc354b2516d3c018452c99a33bfce` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| candidate hard block | UUPSProxy<br>`0x95f1138837f1158726003251b32ecd8732c76781` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| contamination review | L1CrossDomainMessenger<br>`0x14ddd08c0e28764fc89a266ec95a93619b0ee835` | project_anchor | unknown | live | verified | n/a | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| exact address book overlap | L1ERC721Bridge<br>`0x8b91af069928ba6591c950354d1ea29e08192bf8` | project_anchor | unknown | live | verified | n/a | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| exact address book overlap | L2OutputOracle<br>`0x6093023a4a7e6873edfb02b4bce48c53fd310eec` | project_anchor | unknown | live | verified | n/a | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| exact address book overlap | SystemConfig<br>`0x951754b08c52b2ac5d5a2af1d52c2d12aed5bcaf` | project_anchor | unknown | live | verified | n/a | `0xf4802485d882d8eea73c8a07d7fad3b20440f149` |
| unverified unclassified | UnnamedContract<br>`0x2b7d688f7314d8ef59489e43a1b70c7d50b68428` | non_address_book | unknown | unknown | unverified | n/a | `0x72713d52fd3477fef78864f4100c1c8f128d1fec` |
| unverified unclassified | UnnamedContract<br>`0x41c9e39574f40ad34c79f1c99b66a45efb830d4c` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0x7003088aa6f2c5d78b92861fd3ade5de2d2031ab` | non_address_book | unknown | unknown | unverified | n/a | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| unverified unclassified | UnnamedContract<br>`0x7bf7646cfa1a1ebed4436e53ab2cb95c7d16824d` | non_address_book | unknown | unknown | unverified | n/a | `0x828dbaa4eac15c232e59921273203b2c77d3e2ab` |
| unverified unclassified | UnnamedContract<br>`0x98046bd286715d3b0bc227dd7a956b83d8978603` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0xa64e1313b6e104f2a3a14d0962ceb32acaa72012` | non_address_book | unknown | unknown | unverified | n/a | `0x828dbaa4eac15c232e59921273203b2c77d3e2ab` |
| unverified unclassified | UnnamedContract<br>`0xb27e5ca259702f209a29225d0eddc131039c9933` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | non_address_book | unknown | unknown | unverified | n/a | `0xf8a86ea1ac39ec529814c377bd484387d395421e` |
| unverified unclassified | UnnamedContract<br>`0xf5bbe9558f4bf37f1eb82fb2cedb1c775fa56832` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0xff255f800044225f54af4510332aa3d67cc77635` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [public-audits (GitHub directory)](https://github.com/mode-network/public-audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2352] report-mode-governancetoken-solo-review.pdf — matched: No reason recorded
- [2353] report-mode-lock-solo-review.pdf — no match: The report does not have a dedicated scope section. The only contract explicitly mentioned in findings and appendix is ModeStaking. The audit date is from the cover page: 'May 3, 2024'.
- [2355] public-audits (GitHub directory) — no match: The provided text is a GitHub repository page listing audit reports, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| report-mode-governancetoken-solo-review.pdf | GovernanceToken | own contract | GovernanceToken (selected) `0xdfc7c877a950e49d2610114102175a06c2e3167a` — deployed 2024-04-29 10:24:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-mode-lock-solo-review.pdf | ModeStaking | unmatched — not counted | — | Referenced in findings (e.g., MED-Not using safeTransfer may cause sweep to fail for some tokens) and in the appendix (QA-Setter limits are not enforced in the constructor). | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x50ef494573f28cad6b64c31b7a00cdaa48306e15` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x4200000000000000000000000000000000000006` | bETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x8680ceabcb9b56913c519c069add6bc3494b7020` | FeeSharing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14ddd08c0e28764fc89a266ec95a93619b0ee835` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95bdca6c8edeb69c98bd5bd17660bacef1298a6f` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2901da832a4d0297ff0691100a8e496626cc626d` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b91af069928ba6591c950354d1ea29e08192bf8` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x735adbbe72226bd52e818e7181953f42e3b0ff21` | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c67accb38137cb761587032179b176c9276eb5a` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4317ba146d4933d889518a3e5e11fe7a53199b04` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6093023a4a7e6873edfb02b4bce48c53fd310eec` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x59889b7021243db5b1e065385f918316cd90d46c` | MintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4` | ModeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x028227c4dd1e5419d11bb6fa6e661920c519d4f5` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x3e7ef8f50246f725885102e8238cbba33f276747` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x50c5725949a6f0c72e6c4a641f24049a917db0cb` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xcdd475325d6f564d27247d1dddbb0dac6fa0a5cf` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd08a2917653d4e460893203471f0000826fb4034` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd988097fb8612cc24eec14542bc03424c656005f` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xe7798f023fc62146e8aa1b36da45fb70855a77ea` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xf0f161fda2712db8b566946122a5af183995e2ed` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x69216395a62dfb243c05ef4f1c27af8655096a95` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc0c6a811bbf07fa01b946f1c46a9a94c2ee8c73e` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad3dc277d3242938f8be18f0560e3d9b9988c46a` | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b34b14c7c7123459cf3076b8cb929be097d0c07` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | RSETH_OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x80137510979822322193fc997d400d5a6c747bf7` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e6432f18bc5d497b1ab2288a025fbf9d69e2221` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x951754b08c52b2ac5d5a2af1d52c2d12aed5bcaf` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 2 |
| standard_library | 13 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2353] report-mode-lock-solo-review.pdf
- [2355] public-audits (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
