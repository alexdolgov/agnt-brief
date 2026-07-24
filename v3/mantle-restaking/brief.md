# Agentic Audit Brief: Mantle Restaking

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 23 (0 matched; 23 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Mantle Restaking (`mantle-restaking`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, mantle
- Contract surface: 69 unique implementations (122 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $34,742,417.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Mantle Restaking in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe6829d9a7ee3040e1276fa75293bde931859e8fa`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 1 of 69 unique; 68 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/58
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 69
- Raw deployments: 122
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 8 fresh, 4 aging, 10 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7298d8995eb7a932b36a77fcc44dc0cfdce74de8` | ⚠️ Unaudited |
| Blocklist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70222d2579877a1a82dd4f00bfc97975d41001b2`; ethereum `0xfc775e36ea0da8e0b70b264a988827180ae8cb5f` | ⚠️ Unaudited |
| BLSPublicKeyCompendium | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x18dd3cbe484f955217165feac6fe928d04a56a72`; ethereum `0x92986cd63c3409b7da2882624b6d6e7cf660707a` | ⚠️ Unaudited |
| BLSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ed35b793d887e028493dac4a11aa5feb811dd67`; ethereum `0x64f4244eea17a361bb919a28f614c3ad1ac565ad` | ⚠️ Unaudited |
| DataLayrChallenge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ee53d3d6e622ac0296369445afb3cbbdc57c066`; ethereum `0xc9c24f1aad2614e81f033746292f5dc5d7ccad94` | ⚠️ Unaudited |
| DataLayrChallengeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d`; ethereum `0xd8d731624d97a66e012e62208cfc921d7033c564` | ⚠️ Unaudited |
| DataLayrServiceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1`; ethereum `0xab42127980a3bff124e6465e097a5fc97228827e` | ⚠️ Unaudited |
| DefaultCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475d3eb031d250070b63fa145f0fcfc5d97c304a` | ⚠️ Unaudited |
| DelayedWithdraw | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12be34be067ebd201f6eaf78a861d90b2a66b113` | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x242b0fe8b141cabe48b79115f376137b983c34d0`; ethereum `0x54d7e6ad8b3b6f97441f3224ecfc5db6b20e0568` | ⚠️ Unaudited |
| DistributeMerkleERC20Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fd69733d60ad07362ed70efdb00d9d04785271b`; ethereum `0x8c555854b53f254cfe8b8b0d037139856585ed4e` | ⚠️ Unaudited |
| EigenLayrDelegation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xea4f1fe4928f1f83a450899c068bcd455baf4798` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7b28a6cdf1bc937a984334ef5409b755489fb585`; ethereum `0x8b6c86d2c0cc65cb4138cc01c97ec4e1d5712478` | ⚠️ Unaudited |
| Fiat24CryptoDeposit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08a65c2ac24680e6c9dd1a61a1e823f058d24df9` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x4e59e778a0fb77fbb305637435c62faed9aed40f`; ethereum `0x849738999ba1f3d995d28bdb35efa2e47b4c8203` | ⚠️ Unaudited |
| InvestmentManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x23754725a49c0f003c349a6c7869ff8609a7cefd`; ethereum `0x7c4813a9af2fea4ca765a26b05d128926e94e72e` | ⚠️ Unaudited |
| InvestmentStrategyBase | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x9fecf38689349a5cff97526610cdb27618edc6b9`; ethereum `0xa937660031787c4408587d2c6a67ec4b260630f5`; ethereum `0xcad08a7b9ef6adefaef08d0d85a577a288f93ee1` | ⚠️ Unaudited |
| ITBPositionDecoderAndSanitizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x310fc2403b0d12fc6de088b96da9ac7399d872ee`; ethereum `0x31b6f06f2c12bd288ad6aad7073f21cb57349f74`; ethereum `0xa728337af7dd226b74b0b1546aa7dd54d340d5eb` | ⚠️ Unaudited |
| L1cmETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6` | ⚠️ Unaudited |
| L1cmETHAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4afa9620d0b79137383a7a9ab3477837d475e948`; ethereum `0xae96df024b9cb69a39a219d7176df6e7e39fac44` | ⚠️ Unaudited |
| L1Cook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3bb3d74b1280a2e86013a03d05147b9a684df4bc`; ethereum `0x52170c91624518a44baae57e68eb3af084b1d05a`; ethereum `0x712d215b15f29ff21ea6f5c3dc7090bd317febbf`; ethereum `0xadb56284b6c742e77eceaf449ffacf9bf847b246` | ⚠️ Unaudited |
| L1CookAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x078382dfdc3b1b984b53c38268e6a683fa348a79`; ethereum `0x8f73bdb6403051d6e3c4f854300d7e8277402b89` | ⚠️ Unaudited |
| L1CookMessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12a01ce234b063417d0916a755e31201ab4824be` | ⚠️ Unaudited |
| L1ERC20Q | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6be0f719ac481adcbdde30486b1b80e1728aed1b` | ⚠️ Unaudited |
| L1MessagingStatus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91377ab040d9571e14ac8192343a3247c84de7e` | ⚠️ Unaudited |
| LiquidityBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x006fad88c35d973a87e451cf8d000c7e83dad409`; ethereum `0x38f3199a6c37d61878506624bae06529d858afdc` | ⚠️ Unaudited |
| MantleOFTAdapterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x60af2681bcc4886935f428a1386a4a68973f7c4f` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6c9039cb04ac5715469ddf099bbfe7e14de32044`; ethereum `0x7a3c0c5fadde89185947639f256a3ac3d162cebb` | ⚠️ Unaudited |
| MerkleTreeLeafChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d225296cd421aa65b2b9a68a971d7bf912fc5f1` | ⚠️ Unaudited |
| METH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x052f52748109bae13d6319a463d64b6a2a613e52`; ethereum `0xd5f7838f5c461feff7fe49ea5ebaf7728bb0adfa` | ⚠️ Unaudited |
| METH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9173bf8bd5c1b071b5cae4122202a347b7eefab` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c3702bf1052acfeca77804cdb46da705e3ebe99`; ethereum `0x1f341cbdd4239817f150e27f200e48ba4817347e` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4059509ffb703b048d1e9ce3118f90e759076f50`; ethereum `0x4d10b43cb493e6d6a24dc4faea9024d91c7436db`; ethereum `0xa99038c871d92b44c0759bb503da613587b0b604` | ⚠️ Unaudited |
| OPSuccinctL2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42f615ba9e7738722b36b6f01736151c0529aec8`; ethereum `0xd4b29418c2353b6762c6f6c5e15ca937ebe1980b` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a6c874db238d7fdc84516cd940e97032271af69`; ethereum `0x8735049f496727f824cc0f2b174d826f5c408192` | ⚠️ Unaudited |
| OracleQuorumManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x54c23e0d89da943165c969d1abdb65f0d64174b4`; ethereum `0x92e56d2146d54d5aecb25ca36c89d027a6ea0d90` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8`; ethereum `0x52b5e5c0e18a3566332f05246e78b9043e41bdd1` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8cbcc59d2f4b5f41ffc02698c8ef98abc8f3621f`; ethereum `0xa08f0a95be713baeb8bdf772fd443df6b17e6a6e` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d624df2a423cc3f0425827fdddfe053d9a0fdf3` | ⚠️ Unaudited |
| Pauser | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd1cdbc73ce9d62cdbee0418d5577d4bb6b6b49f4`; ethereum `0xfc81300358f122781d785aebab6f3301acf347b0` | ⚠️ Unaudited |
| PauserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x075a48633dc6845f92339741e9c96b88f1b2a86f`; ethereum `0x4ca725d446ece6e3ffd3e072a6f2a6a16ca492d0` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x729c9cad144e3b8a44e677291e76546062c1a2b1` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a65b2bd46d4b3c76298f0114fa032d1e49dbb98`; ethereum `0xb484207115cdec6b24f02da5ff02b8d9adbc11bc` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc3f325e368a03344136497225081380b737510d3`; ethereum `0xcf2d33883b60c80174b21d7013958076ecccec7a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x2cd33d3dc4d6ea24b6941e4741f4bf4772929e83`; ethereum `0x382431ef030ea274f89c0ff03715f497cc5187c8`; ethereum `0x47d58744d8515d9aaeaf961bc03625118bd91ebb`; ethereum `0x5a08b8d531dcc755807e6bf7b4b66687f59b8289`; ethereum `0xd8e7afdb741fce36da34427ad3460095374c4621` | ⚠️ Unaudited |
| RegistryPermission | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xab00b934de01c1b4931047125c2ba5b3d6186b85`; ethereum `0xbcf6d8273daf842b6fc288b08e48c438fa911d01` | ⚠️ Unaudited |
| ReturnsAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82`; ethereum `0xf2bc410fad9fc3140c4cded7c6e5bd56ac292c93` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27`; ethereum `0xd6e4aa932147a3fe5311da1b67d9e73da06f9cef` | ⚠️ Unaudited |
| ReturnsReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d6a67a5fa23b2c4fd0243142694a6f046f1791d`; ethereum `0xd4e11c28e04c0c2bf370b7a9989498b7ea02493f` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x01a360392c74b5b8bf4973f438ff3983507a06a2`; ethereum `0xe3cbd06d7dadb3f4e6557bab7edd924cd1489e8f` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdecacc56fc347274d3df2b709602632845611d39` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca047689261e35c9e507b1bb0b7443c2a436310` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f7d38e3eabb8f69210afc2212fe82e0f1912b0` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x155dc3d5395687a14433d2a5019d970ced31b195`; ethereum `0xb1a38eb2f2161a8c5f123bc2128e67a1bee3ec4e`; ethereum `0xc26016f1166be7b6c5611aab104122e0f6c2ace2` | ⚠️ Unaudited |
| Topupper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11d0cff93cc1def7b621de281296ded0e3694285`; ethereum `0x60c266231022ee0474e02f9a99f10ceb26d9f90b`; ethereum `0xa1b2dbbd6dd384ba785e16ecff89953a2c852ecc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19f5fb66474fb10c764599a59009301ec26b9980`; ethereum `0x1e70dc4b6f41c16b23cf0ee674b4d5471c63f2e7` | ⚠️ Unaudited |
| UnstakeRequestsManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38fdf7b489316e03ed8754ad339cb5c4483fdcf9`; ethereum `0x5a7b3cde8ac8d780af4797bf1517464ac54ca033` | ⚠️ Unaudited |
| UnstakeRequestsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eaa1fb174c85a3ef6820e45c5e065aafe1bac71` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xb5f1bdbf7e1e747815f3675ff46f5fbf15d5c839) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5b634c280d16e75749b61c8b1c0061b052cbb087`; ethereum `0xb5f1bdbf7e1e747815f3675ff46f5fbf15d5c839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x273a57a18fb1951129e394fe5463d8b9a634acbb`; ethereum `0xa0fb6382cb270ed8f04e6752c95c042a8c016ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x44d1533b6616de6195559132eb825e8c5d11f5ef`; ethereum `0x5261ed948c6364039e9f578884c79df93ccaa055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b64d1fd7cf1230468aedf3a401cfe74ca9b366f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50e2c24bf99c70e39af949e8d7d9fd78e9eebaca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54839c91d8fc917d2d22867297562fcc4fffb8b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x776a13999b56b7a1891eb0e54b0762480e1abe48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa288e750401e6d15a62e3400c87d3ee331650a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41b1f5c58eee52f85417319d977113402946c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc62d0b26429416527c9abc8ae58a013f9d799f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388870 | `0xe6829d9a7ee3040e1276fa75293bde931859e8fa` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 111
- Live contracts: 0
- Unknown liveness contracts: 111
- Source-verified contracts: 97
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=54, contamination review=4, source verified unclassified=39, unverified unclassified=14

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | EmptyContract<br>`0x7b28a6cdf1bc937a984334ef5409b755489fb585` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | EmptyContract<br>`0x8b6c86d2c0cc65cb4138cc01c97ec4e1d5712478` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | L1cmETH<br>`0x9d7aef0cbcd7b5bae2ccc4cf69f68443468bf9f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | L1CookAdapter<br>`0x8f73bdb6403051d6e3c4f854300d7e8277402b89` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | METH<br>`0x052f52748109bae13d6319a463d64b6a2a613e52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | METH<br>`0xc9173bf8bd5c1b071b5cae4122202a347b7eefab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Oracle<br>`0x7a6c874db238d7fdc84516cd940e97032271af69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | OracleQuorumManager<br>`0x54c23e0d89da943165c969d1abdb65f0d64174b4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Pauser<br>`0x52b5e5c0e18a3566332f05246e78b9043e41bdd1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Pauser<br>`0x8cbcc59d2f4b5f41ffc02698c8ef98abc8f3621f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Pauser<br>`0x9d624df2a423cc3f0425827fdddfe053d9a0fdf3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Pauser<br>`0xfc81300358f122781d785aebab6f3301acf347b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Proxy<br>`0x0c3702bf1052acfeca77804cdb46da705e3ebe99` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Proxy<br>`0x42f615ba9e7738722b36b6f01736151c0529aec8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | ProxyAdmin<br>`0x2cd33d3dc4d6ea24b6941e4741f4bf4772929e83` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | ProxyAdmin<br>`0x382431ef030ea274f89c0ff03715f497cc5187c8` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | ProxyAdmin<br>`0x47d58744d8515d9aaeaf961bc03625118bd91ebb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | ProxyAdmin<br>`0x5a08b8d531dcc755807e6bf7b4b66687f59b8289` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | ProxyAdmin<br>`0xd8e7afdb741fce36da34427ad3460095374c4621` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | ReturnsAggregator<br>`0xf2bc410fad9fc3140c4cded7c6e5bd56ac292c93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | ReturnsReceiver<br>`0x1980b341cb31cb436ffe0620a01a4cb6d4d09a27` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | ReturnsReceiver<br>`0x2d6a67a5fa23b2c4fd0243142694a6f046f1791d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Staking<br>`0x01a360392c74b5b8bf4973f438ff3983507a06a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | Staking<br>`0xdecacc56fc347274d3df2b709602632845611d39` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TimelockController<br>`0x155dc3d5395687a14433d2a5019d970ced31b195` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TimelockController<br>`0xb1a38eb2f2161a8c5f123bc2128e67a1bee3ec4e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TimelockController<br>`0xc26016f1166be7b6c5611aab104122e0f6c2ace2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x006fad88c35d973a87e451cf8d000c7e83dad409` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x1766be66fbb0a1883d41b4cfb0a533c5249d3b82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x1e70dc4b6f41c16b23cf0ee674b4d5471c63f2e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x1ed35b793d887e028493dac4a11aa5feb811dd67` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x23754725a49c0f003c349a6c7869ff8609a7cefd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x29ab878aed032e2e2c86ff4a9a9b05e3276cf1f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x54d7e6ad8b3b6f97441f3224ecfc5db6b20e0568` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x5bd63a7ecc13b955c4f57e3f12a64c10263c14c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x60af2681bcc4886935f428a1386a4a68973f7c4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x8735049f496727f824cc0f2b174d826f5c408192` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x8c555854b53f254cfe8b8b0d037139856585ed4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x92986cd63c3409b7da2882624b6d6e7cf660707a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xa08f0a95be713baeb8bdf772fd443df6b17e6a6e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xa937660031787c4408587d2c6a67ec4b260630f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xb484207115cdec6b24f02da5ff02b8d9adbc11bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xbcf6d8273daf842b6fc288b08e48c438fa911d01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xc9c24f1aad2614e81f033746292f5dc5d7ccad94` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xcad08a7b9ef6adefaef08d0d85a577a288f93ee1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xcdc78c5eaea2de33b00a9200ee1700937fb0f55d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xcf2d33883b60c80174b21d7013958076ecccec7a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xd1cdbc73ce9d62cdbee0418d5577d4bb6b6b49f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xd4e11c28e04c0c2bf370b7a9989498b7ea02493f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xd5f7838f5c461feff7fe49ea5ebaf7728bb0adfa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xd6e4aa932147a3fe5311da1b67d9e73da06f9cef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xea4f1fe4928f1f83a450899c068bcd455baf4798` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | UnstakeRequestsManager<br>`0x4eaa1fb174c85a3ef6820e45c5e065aafe1bac71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | candidate review | UnstakeRequestsManager<br>`0x5a7b3cde8ac8d780af4797bf1517464ac54ca033` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | contamination review | BLSPublicKeyCompendium<br>`0x18dd3cbe484f955217165feac6fe928d04a56a72` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | contamination review | DataLayrChallenge<br>`0x6ee53d3d6e622ac0296369445afb3cbbdc57c066` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | contamination review | MerkleTreeLeafChecker<br>`0x1d225296cd421aa65b2b9a68a971d7bf912fc5f1` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | contamination review | PauserRegistry<br>`0x075a48633dc6845f92339741e9c96b88f1b2a86f` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | AddressMapping<br>`0x7298d8995eb7a932b36a77fcc44dc0cfdce74de8` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | Blocklist<br>`0x70222d2579877a1a82dd4f00bfc97975d41001b2` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | Blocklist<br>`0xfc775e36ea0da8e0b70b264a988827180ae8cb5f` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | BLSRegistry<br>`0x64f4244eea17a361bb919a28f614c3ad1ac565ad` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | DataLayrChallengeUtils<br>`0xd8d731624d97a66e012e62208cfc921d7033c564` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | DataLayrServiceManager<br>`0xab42127980a3bff124e6465e097a5fc97228827e` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | DistributeMerkleERC20Upgradeable<br>`0x242b0fe8b141cabe48b79115f376137b983c34d0` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | DistributeMerkleERC20Upgradeable<br>`0x3fd69733d60ad07362ed70efdb00d9d04785271b` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | Fiat24CryptoDeposit2<br>`0x08a65c2ac24680e6c9dd1a61a1e823f058d24df9` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | InvestmentManager<br>`0x7c4813a9af2fea4ca765a26b05d128926e94e72e` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | InvestmentStrategyBase<br>`0x9fecf38689349a5cff97526610cdb27618edc6b9` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | ITBPositionDecoderAndSanitizer<br>`0x310fc2403b0d12fc6de088b96da9ac7399d872ee` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | ITBPositionDecoderAndSanitizer<br>`0x31b6f06f2c12bd288ad6aad7073f21cb57349f74` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1cmETHAdapter<br>`0xae96df024b9cb69a39a219d7176df6e7e39fac44` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1Cook<br>`0x3bb3d74b1280a2e86013a03d05147b9a684df4bc` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1Cook<br>`0x52170c91624518a44baae57e68eb3af084b1d05a` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1Cook<br>`0x712d215b15f29ff21ea6f5c3dc7090bd317febbf` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1Cook<br>`0xadb56284b6c742e77eceaf449ffacf9bf847b246` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1CookAdapter<br>`0x078382dfdc3b1b984b53c38268e6a683fa348a79` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1CookMessagingStatus<br>`0x12a01ce234b063417d0916a755e31201ab4824be` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1ERC20Q<br>`0x6be0f719ac481adcbdde30486b1b80e1728aed1b` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | L1MessagingStatus<br>`0xa91377ab040d9571e14ac8192343a3247c84de7e` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | LiquidityBuffer<br>`0x38f3199a6c37d61878506624bae06529d858afdc` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | MerkleDistributor<br>`0x6c9039cb04ac5715469ddf099bbfe7e14de32044` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | MerkleDistributor<br>`0x7a3c0c5fadde89185947639f256a3ac3d162cebb` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | OPSuccinctL2OutputOracle<br>`0x1f341cbdd4239817f150e27f200e48ba4817347e` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | OPSuccinctL2OutputOracle<br>`0x4059509ffb703b048d1e9ce3118f90e759076f50` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | OPSuccinctL2OutputOracle<br>`0x4d10b43cb493e6d6a24dc4faea9024d91c7436db` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | OPSuccinctL2OutputOracle<br>`0xa99038c871d92b44c0759bb503da613587b0b604` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | OPSuccinctL2OutputOracle<br>`0xd4b29418c2353b6762c6f6c5e15ca937ebe1980b` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | PauserRegistry<br>`0x4ca725d446ece6e3ffd3e072a6f2a6a16ca492d0` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | PositionManager<br>`0x729c9cad144e3b8a44e677291e76546062c1a2b1` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | PositionManager<br>`0x7a65b2bd46d4b3c76298f0114fa032d1e49dbb98` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | PositionManager<br>`0xc3f325e368a03344136497225081380b737510d3` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | RegistryPermission<br>`0xab00b934de01c1b4931047125c2ba5b3d6186b85` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | SystemConfig<br>`0x9ca047689261e35c9e507b1bb0b7443c2a436310` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | Topupper<br>`0x11d0cff93cc1def7b621de281296ded0e3694285` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | Topupper<br>`0x60c266231022ee0474e02f9a99f10ceb26d9f90b` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | source verified unclassified | Topupper<br>`0xa1b2dbbd6dd384ba785e16ecff89953a2c852ecc` | non_address_book | unknown | unknown | verified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | 0x273a57a18fb1951129e394fe5463d8b9a634acbb<br>`0xa0fb6382cb270ed8f04e6752c95c042a8c016ce4` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | 0x44d1533b6616de6195559132eb825e8c5d11f5ef<br>`0x5261ed948c6364039e9f578884c79df93ccaa055` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | 0xb5f1bdbf7e1e747815f3675ff46f5fbf15d5c839<br>`0x5b634c280d16e75749b61c8b1c0061b052cbb087` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19f5fb66474fb10c764599a59009301ec26b9980` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x273a57a18fb1951129e394fe5463d8b9a634acbb` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44d1533b6616de6195559132eb825e8c5d11f5ef` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b64d1fd7cf1230468aedf3a401cfe74ca9b366f` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50e2c24bf99c70e39af949e8d7d9fd78e9eebaca` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54839c91d8fc917d2d22867297562fcc4fffb8b8` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x776a13999b56b7a1891eb0e54b0762480e1abe48` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa288e750401e6d15a62e3400c87d3ee331650a0c` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5f1bdbf7e1e747815f3675ff46f5fbf15d5c839` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc41b1f5c58eee52f85417319d977113402946c8c` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc62d0b26429416527c9abc8ae58a013f9d799f1` | non_address_book | unknown | unknown | unverified | n/a | `0x207e804758e28f2b3fd6e4219671b327100b82f8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Mantle_Sep23(Public) (Oracle).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [mETH-Protocol-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mETH-Protocol-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Blocksec-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Blocksec-11-25.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Exvul-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Exvul-11-25.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [Hexens-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Hexens-11-25.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [MixBytes-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/MixBytes-11-25.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [blocksec.pdf](https://github.com/mantle-lsp/audits/blob/main/fixed-yield-vault/blocksec.pdf) | BlockSec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Mantle_L2_ERC20_Token_Bridge_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_L2_ERC20_Token_Bridge_Report.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Mantle_LSP_L2_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_LSP_L2_Report.pdf) | Verilog | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Mantle_MDI_Quests_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_MDI_Quests_Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Mantle_Staking_Hub_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_Staking_Hub_Audit_Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MixBytes-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F7DhxKicJ8bDVIc97CU5f%2FMixBytes-BufferPool.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | address | no match | 0 | 0 | 0 | 4 | high |
| [Hexens-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNQRVoWBNlZQgGHJqlE2P%2FHexens-BufferPool.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Blocksec-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNdXlRHtKYExIqqa9s7fP%2FBlocksec-BufferPool.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [verilog-mantle-fuzzland-cook-pm-audit-report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F5uL6TUlJvsnMnZ3bTBfG%2Fverilog-mantle-fuzzland-cook-pm-audit-report.pdf) | Fuzzland | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Mantle-cmETH_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2Ff5ozoh0YRvxE3YO8FqMK%2FMantle-cmETH_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [mantle-cmeth-hexens-audit-aug-2024.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FT0QClInfYwk3ARBy1vrk%2Fmantle-cmeth-hexens-audit-aug-2024.pdf) | Hexens | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FG407rVeB9SxJVhM28PEC%2FMantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle_Sep23(Public) (Oracle).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FMlIxHGCEPsOGBFdgxvrJ%2FMantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle Network METH Secuity Audit Report Upd.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FZBSPwrDcGKf3Y7WyeJXr%2FMantle%20Network%20METH%20Secuity%20Audit%20Report%20Upd.pdf) | yAudit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FEtxWvXpZa5vpZuHK1hGi%2FMantle-LSD-mntETH_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4625] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf — no match: No reason recorded
- [4626] Mantle_Sep23(Public) (Oracle).pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'Audit Completion Date 02.10.2023'.
- [4627] mantle-cmeth-audit-aug-2024(Public).pdf — no match: No reason recorded
- [4628] mETH-Protocol-oct-25(Final).pdf — no match: No reason recorded
- [4629] Blocksec-11-25.pdf — no match: No reason recorded
- [4630] Exvul-11-25.pdf — no match: No reason recorded
- [4631] Hexens-11-25.pdf — no match: No reason recorded
- [4632] MixBytes-11-25.pdf — no match: No reason recorded
- [4633] blocksec.pdf — no match: Audit report for Mantle FixedYieldVault. Scope includes contracts BaseStakingRewards, BaseRewardRateManager, and WithdrawRequestManager as per findings referencing these contracts. Audit date is February 17, 2025.
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf — no match: Scope section states 'Solidity smart contracts under the folder contracts' in the repository. Four contracts are explicitly referenced in findings.
- [4636] Mantle_LSP_L2_Report.pdf — no match: The audit scope covers Solidity smart contracts under the 'src' folder in the repository. Only METHL2.sol is explicitly referenced in findings.
- [4637] Mantle_MDI_Quests_Report.pdf — no match: Only one contract file (MantleBase.sol) is referenced in findings; scope section says 'contracts' folder but no specific files listed.
- [4638] Mantle_Staking_Hub_Audit_Report.pdf — no match: Scope section mentions 'src' folder but does not list specific contract names. No individual contract names are identifiable from the provided text.
- [27289] MixBytes-BufferPool.pdf — no match: Scope table lists four contracts: LiquidityBuffer.sol, PositionManager.sol, Pauser.sol, Staking.sol. Audit date from title: NOVEMBER 13, 2025.
- [27290] Hexens-BufferPool.pdf — no match: Extracted contracts from scope and findings. Audit date from final report date.
- [27291] Blocksec-BufferPool.pdf — no match: Scope explicitly lists src/interfaces/IStaking.sol, src/interfaces/IPauser.sol, src/Staking.sol, src/Pauser.sol, and src/liquidityBuffer/*. The contracts LiquidityBuffer and PositionManager are within the liquidityBuffer directory and are referenced in findings.
- [27294] verilog-mantle-fuzzland-cook-pm-audit-report.pdf — no match: Scope sections list 'contracts/**/*.sol' for both cmETH and ITBStrategy projects, but no specific contract names are given. Only PositionManager and L2CookMessagingStatus are explicitly named in findings. No audit date found in the provided text.
- [27297] Mantle-cmETH_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 4 are extracted. The audit date is from the title line: 'Competitive Security Assessment Mantle-cmETH Sep 11th, 2024'.
- [27298] mantle-cmeth-hexens-audit-aug-2024.pdf — no match: Extracted contracts from scope section and file paths in findings. Audit date from 'delivered 02.09.2024'.
- [27299] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf — no match: Extracted 7 contracts from scope and findings. Audit completion date is 25.08.2023.
- [27300] Mantle_Sep23(Public) (Oracle).pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'Audit Completion Date 02.10.2023'.
- [27301] Mantle Network METH Secuity Audit Report Upd.pdf — no match: Scope section explicitly lists 9 contracts in src/ directory. Audit date from cover page.
- [27303] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 5 are extracted. The audit date is from the title page: 'Oct 12th, 2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Oracle | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | OracleQuorumManager | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Pauser | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsAggregator | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsReceiver | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Staking | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| Mantle_Sep23(Public) (Oracle).pdf | Oracle.sol | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Reporter | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Validator | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Analyzer | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Scheduler | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | ParallelLoader | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | BlockStamp | unmatched — not counted | — | mentioned in findings | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | AccountantWithRateProviders | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | BoringVault | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | DelayedWithdraw | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | L1MessagingStatus | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | L2MessagingStatus | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | SanctionsList | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | PositionManager | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | Staking | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | IPauser | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | IStaking | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | Pauser | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | METH | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | Pauser | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| blocksec.pdf | BaseStakingRewards | unmatched — not counted | — | mentioned in findings and scope | no |
| blocksec.pdf | BaseRewardRateManager | unmatched — not counted | — | mentioned in findings | no |
| blocksec.pdf | WithdrawRequestManager | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | L2ERC20TokenBridge | unmatched — not counted | — | mentioned in findings and scope | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | BridgeableTokens | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | L1ERC20TokenBridge | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | ERC20BridgedPermit | unmatched — not counted | — | mentioned in findings | no |
| Mantle_LSP_L2_Report.pdf | METHL2 | unmatched — not counted | — | Listed in findings as source file for the contract under audit. | no |
| Mantle_MDI_Quests_Report.pdf | MantleBase | unmatched — not counted | — | mentioned in findings source lines | no |
| MixBytes-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Hexens-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| Hexens-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope and findings | no |
| Hexens-BufferPool.pdf | Staking | unmatched — not counted | — | mentioned in findings as Staking contract | no |
| Blocksec-BufferPool.pdf | IStaking | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | IPauser | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope via src/liquidityBuffer/* | no |
| Blocksec-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope via src/liquidityBuffer/* | no |
| verilog-mantle-fuzzland-cook-pm-audit-report.pdf | PositionManager | unmatched — not counted | — | Scope section lists contracts/**/*.sol for ITBStrategy project; PositionManager.sol is mentioned in findings. | no |
| verilog-mantle-fuzzland-cook-pm-audit-report.pdf | L2CookMessagingStatus | unmatched — not counted | — | Mentioned in Low finding 'Inconsistency Between Code and Comments in _lzReceive Function'. | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L2cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ClientBlockListUpgradable | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ClientSanctionsListUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | SanctionsList | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | Blocklist | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1cmETHAdapter | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DeployArcticArchitecture | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | CreateMerkleRoot | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DeployMantleCmETHBoringVault | unmatched — not counted | — | listed in scope table | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | SanctionsList | unmatched — not counted | — | listed in scope and finding mantle-1 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope and findings mantle-12, mantle-16, mantle-5 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope and findings mantle-4, mantle-9 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope and findings mantle-6, mantle-15, mantle-13 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope and finding mantle-9 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | BoringVault | unmatched — not counted | — | listed in scope and findings mantle-2, mantle-8 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope and finding mantle-2 | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Staking | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsAggregator | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Oracle | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | UnstakeRequestsManager | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsReceiver | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Pauser | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | OracleQuorumManager | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Oracle.sol | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Reporter | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Validator | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Analyzer | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Scheduler | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | ParallelLoader | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | BlockStamp | unmatched — not counted | — | mentioned in findings | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | METH | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | METHL2 | unmatched — not counted | — | listed in scope | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | METH | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IUnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IDepositContract | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IPauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IMETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ProtocolEvents | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 132 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [4625] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [4626] Mantle_Sep23(Public) (Oracle).pdf
- [4627] mantle-cmeth-audit-aug-2024(Public).pdf
- [4628] mETH-Protocol-oct-25(Final).pdf
- [4629] Blocksec-11-25.pdf
- [4630] Exvul-11-25.pdf
- [4631] Hexens-11-25.pdf
- [4632] MixBytes-11-25.pdf
- [4633] blocksec.pdf
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [4636] Mantle_LSP_L2_Report.pdf
- [4637] Mantle_MDI_Quests_Report.pdf
- [4638] Mantle_Staking_Hub_Audit_Report.pdf
- [27289] MixBytes-BufferPool.pdf
- [27290] Hexens-BufferPool.pdf
- [27291] Blocksec-BufferPool.pdf
- [27294] verilog-mantle-fuzzland-cook-pm-audit-report.pdf
- [27297] Mantle-cmETH_Secure3_Audit_Report.pdf
- [27298] mantle-cmeth-hexens-audit-aug-2024.pdf
- [27299] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [27300] Mantle_Sep23(Public) (Oracle).pdf
- [27301] Mantle Network METH Secuity Audit Report Upd.pdf
- [27303] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
