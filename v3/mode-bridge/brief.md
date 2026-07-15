# Agentic Audit Brief: Mode Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mode Bridge (`mode-bridge`)
- Website: [https://app.mode.network](https://app.mode.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
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

- UnnamedContract (`0x7c6b91...7227f2`, chain 34443)
- UnnamedContract (`0x9e5aac...ca96f3`, chain 34443)
- bETH (`0x420000...000006`, chain 34443)
- ERC1967Proxy (`0xa2aa50...5b5729`, chain 34443)
- GovernanceToken (`0xdfc7c8...e3167a`, chain 34443)
- L1ChugSplashProxy (`0x735adb...b0ff21`, chain 1)
- L1ERC721Bridge (`0x8b91af...192bf8`, chain 1)
- L2OutputOracle (`0x609302...310eec`, chain 1)
- MintableERC20 (`0x59889b...90d46c`, chain 34443)
- ModeLock (`0x74b847...b8c6b4`, chain 34443)
- OptimismMintableERC20 (`0x028227...19d4f5`, chain 34443)
- OptimismMintableERC20 (`0x3e7ef8...276747`, chain 34443)
- OptimismMintableERC20 (`0x50c572...7db0cb`, chain 34443)
- OptimismMintableERC20 (`0xcdd475...a0a5cf`, chain 34443)
- OptimismMintableERC20 (`0xd08a29...fb4034`, chain 34443)
- OptimismMintableERC20 (`0xd98809...56005f`, chain 34443)
- OptimismMintableERC20 (`0xe7798f...5a77ea`, chain 34443)
- OptimismMintableERC20 (`0xf0f161...95e2ed`, chain 34443)
- Proxy (`0x8b34b1...7d0c07`, chain 1)
- Proxy (`0x420000...000007`, chain 34443)
- Proxy (`0x420000...000010`, chain 34443)
- RSETH_OFT (`0x4186bf...56b41f`, chain 34443)
- StoneCross (`0x801375...747bf7`, chain 34443)
- SystemConfig (`0x951754...d5bcaf`, chain 1)
- TransparentUpgradeableProxy (`0x04c059...6c150a`, chain 34443)
- TransparentUpgradeableProxy (`0x241609...cceea5`, chain 34443)
- TransparentUpgradeableProxy (`0x7c1daa...177256`, chain 34443)
- TransparentUpgradeableProxy (`0xe7903b...2cb3cd`, chain 34443)

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
| GovernanceToken | token | project_anchor | own_supporting | 0 | mode | unit-248093 | `0xdfc7c8...e3167a` | ✅ Audited |

### ⚠️ Verified + Unaudited (88)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248012 | `0x50ef49...306e15` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xeb9d91...1bade8` | ⚠️ Unaudited |
| bETH | unknown | project_anchor | own_supporting | 0 | mode | unit-248046 | `0x420000...000006` | ⚠️ Unaudited |
| BucketRateLimiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x308861...daf216`; mode `0xb49e44...27e479` | ⚠️ Unaudited |
| DelayedWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c823d...67514a` | ⚠️ Unaudited |
| depositRootGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x0b0530...2fe942`; mode `0xdd7835...b08f79` | ⚠️ Unaudited |
| DisputeGameFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6f13ef...1b433e` | ⚠️ Unaudited |
| EntropyUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x23f0e8...3d7509`; mode `0x2b9bb0...7d2fe4`; mode `0xdd24f8...5bbd21` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 0 | mode | unit-248042 | `0x2fa6db...1e8517` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 6 deployments: mode `0x36825b...39e320`; mode `0x5cc070...ab7b48`; mode `0x658408...1ea16b`; mode `0x7a7f24...9979b7`; mode `0x8d254a...721933`; mode `0xd02cc7...25e0c9` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248082 | `0xa2aa50...5b5729` | ⚠️ Unaudited |
| ERC20Bridged | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf27b1b...2c762a` | ⚠️ Unaudited |
| EtherfiL2ExchangeRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x35fa16...118ac2`; mode `0x8608ef...6ce5e0` | ⚠️ Unaudited |
| EtherfiL2ModeSyncPoolETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x22c498...30f5dc`; mode `0x4690df...ced56c` | ⚠️ Unaudited |
| ExpressRelayUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x246540...26f92c`; mode `0x549ebb...f61440` | ⚠️ Unaudited |
| FeeSharing | unknown | project_anchor | own_supporting | 0 | mode | unit-248068 | `0x8680ce...4b7020` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x6df6c0...2f271b` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc0ce92...5cd772` | ⚠️ Unaudited |
| GovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xabbf70...c07eed` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248005 | `0x14ddd0...0ee835` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248104 | `0x95bdca...298a6f` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248101 | `0x2901da...cc626d` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248016 | `0x8b91af...192bf8` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-248103 | `0x735adb...b0ff21` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248021 | `0x9c67ac...76eb5a` | ⚠️ Unaudited |
| L2ERC20TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x488cdb...e1cb97` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248106 | `0x4317ba...199b04` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248013 | `0x609302...310eec` | ⚠️ Unaudited |
| LayerBankOracleAdapterModeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x08dcd2...b768c3` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x885904...78b2bf` | ⚠️ Unaudited |
| MintableERC20 | token | project_anchor | own_supporting | 0 | mode | unit-248055 | `0x59889b...90d46c` | ⚠️ Unaudited |
| MintableOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x20ee00...e38cc7`; mode `0x8487c5...e4a848`; mode `0xd504cd...33bfce` | ⚠️ Unaudited |
| MIPS64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6463de...edb908` | ⚠️ Unaudited |
| ModeLock | unknown | project_anchor | own_supporting | 0 | mode | unit-248061 | `0x74b847...b8c6b4` | ⚠️ Unaudited |
| ModeOKXCampaign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3bb530...028b3a` | ⚠️ Unaudited |
| ModeOKXNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x4ef75d...d194de`; mode `0x88afa6...b9f7bf` | ⚠️ Unaudited |
| MulticallAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9fcdca...f29f37` | ⚠️ Unaudited |
| OpportunityAdapterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x59f78d...05602f` | ⚠️ Unaudited |
| OpportunityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x621330...c53cca` | ⚠️ Unaudited |
| OptimismBridgeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2acec6...92b32c` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x00ea43...f506d7`; mode `0xef252e...cba105`; mode `0xf41923...107be1` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248032 | `0x028227...19d4f5` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248044 | `0x3e7ef8...276747` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248052 | `0x50c572...7db0cb` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248088 | `0xcdd475...a0a5cf` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248089 | `0xd08a29...fb4034` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248091 | `0xd98809...56005f` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248095 | `0xe7798f...5a77ea` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | mode | unit-248099 | `0xf0f161...95e2ed` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248102 | `0x692163...096a95` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248024 | `0xc0c6a8...e8c73e` | ⚠️ Unaudited |
| OptimismPortal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248022 | `0xad3dc2...88c46a` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248105 | `0x8b34b1...7d0c07` | ⚠️ Unaudited |
| OssifiableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x98f96a...562d81`; mode `0xb8161f...985fac` | ⚠️ Unaudited |
| PermissionedDisputeGameV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58bf35...43266a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb8cd...87add3` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248047 | `0x420000...000007` | ⚠️ Unaudited |
| Proxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248048 | `0x420000...000010` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x420000...000014`; mode `0x420000...000016` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248011 | `0x470d87...276ab7` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x68a9ec...4e2b72`; mode `0xbe7777...d61f60` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x30c2b5...f2e1a9` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x5c4700...33ce75`; mode `0xa5f198...bf5e9a`; mode `0xc0f566...d1850e` | ⚠️ Unaudited |
| PythUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x35a58b...746b13`; mode `0xebe57e...45c486` | ⚠️ Unaudited |
| ReceiverImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x66e9cb...01d0f7` | ⚠️ Unaudited |
| RSETH_OFT | unknown | project_anchor | own_supporting | 0 | mode | unit-248045 | `0x4186bf...56b41f` | ⚠️ Unaudited |
| RSETHPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf1cccb...fd2c8a` | ⚠️ Unaudited |
| RSETHRateReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x38dd27...fa7aa8` | ⚠️ Unaudited |
| RsETHTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 3 deployments: mode `0x2b1cbd...644cc1`; mode `0x352e20...8a699c`; mode `0xbdf38f...358d52` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x87fb7b...6ca602` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | mode | unit-248065 | `0x801375...747bf7` | ⚠️ Unaudited |
| SuperchainAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x3b164e...503d0d`; mode `0x68e6c4...b223e8` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e...f04a4c` | ⚠️ Unaudited |
| SuperchainIronclad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x7b4779...3dfc6c`; mode `0xf5a713...dfdf10` | ⚠️ Unaudited |
| SuperchainKim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1052fe...1cafcb` | ⚠️ Unaudited |
| SupraOraclePull | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2fa6db...1e8517` | ⚠️ Unaudited |
| SupraOraclePull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x059d01...8d46cb`; mode `0x08c56f...06aac2` | ⚠️ Unaudited |
| SupraSValueFeedStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb6260b...e139fe` | ⚠️ Unaudited |
| SupraSValueFeedVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3e5e89...5b4acb` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-248100 | `0x5e6432...9e2221` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248018 | `0x951754...d5bcaf` | ⚠️ Unaudited |
| TokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8250f4...b1487a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248033 | `0x04c059...6c150a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248039 | `0x241609...cceea5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | 2 deployments: mode `0x52c422...96623b`; mode `0xc42853...087dcb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248063 | `0x7c1daa...177256` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-248096 | `0xe7903b...2cb3cd` | ⚠️ Unaudited |
| UUPSProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x95f113...c76781` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74b847...b8c6b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c1daa...177256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8680ce...4b7020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2aa50...5b5729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x0386e1...080d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x1fd06c...e2d40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2b7d68...b68428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x41c9e3...830d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x628f56...4d03f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x700308...2031ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7215c3...e435ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7bf764...16824d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-248064 | `0x7c6b91...7227f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9154d2...b68262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x98046b...978603` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-248079 | `0x9e5aac...ca96f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa64e13...a72012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb27e5c...9c9933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbe2d27...a44dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xcd5fe2...59b7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf4e777...27f652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf5bbe9...a56832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xff255f...c77635` | ❓ Unverified |

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
| report-mode-governancetoken-solo-review.pdf | GovernanceToken | own contract | GovernanceToken (selected) `0xdfc7c8...e3167a` — deployed 2024-04-29 10:24:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report-mode-lock-solo-review.pdf | ModeStaking | unmatched — not counted | — | Referenced in findings (e.g., MED-Not using safeTransfer may cause sweep to fail for some tokens) and in the appendix (QA-Setter limits are not enforced in the constructor). | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x50ef49...306e15` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x420000...000006` | bETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x8680ce...4b7020` | FeeSharing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14ddd0...0ee835` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95bdca...298a6f` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2901da...cc626d` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b91af...192bf8` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x735adb...b0ff21` | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9c67ac...76eb5a` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4317ba...199b04` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x609302...310eec` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x59889b...90d46c` | MintableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x74b847...b8c6b4` | ModeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x028227...19d4f5` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x3e7ef8...276747` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x50c572...7db0cb` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xcdd475...a0a5cf` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd08a29...fb4034` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xd98809...56005f` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xe7798f...5a77ea` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xf0f161...95e2ed` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x692163...096a95` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc0c6a8...e8c73e` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xad3dc2...88c46a` | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b34b1...7d0c07` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x4186bf...56b41f` | RSETH_OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x801375...747bf7` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e6432...9e2221` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x951754...d5bcaf` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
