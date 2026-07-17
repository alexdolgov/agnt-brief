# Agentic Audit Brief: Pharaoh Exchange

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Pharaoh Exchange (`pharaoh-exchange`)
- Website: [https://www.phar.gg/](https://www.phar.gg/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 101 unique implementations (161 raw deployments)
- Coverage basis: 4/32 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $41,119,721.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pharaoh Exchange. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 38 contract row(s) across avalanche. Structural roles: 21 supporting, 14 core, 3 infra. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 38
- Structural roles: supporting (21), core (14), infra (3)
- Contract kinds: contract (35), abstract (3)
- Detected standards: erc165 (5), ownable (4), accesscontrol (3), erc20 (3), multicall (2), erc20permit (1), erc4626 (1), erc721 (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (31), openzeppelin-upgradeable (8), permit2 (1), solmate (1)
- Upgradeable-pattern rows: 12

## Fork Analysis

5 of 34 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

**ClGaugeFactory** (`0xe565310baa582c768a77a3bb7f86a892ef07d04e`, chain 43114)
Origin: 40-acres (`0x15c50acd86be6be893ab57cf4f47d0da7e24d292`)
Containment: 100.0% - 31 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DLMMFactory** (`0xeb480050b016f6c6d45203d2346b68bddda23d4d`, chain 43114)
Origin: 40-acres (`0xeb480050b016f6c6d45203d2346b68bddda23d4d`)
Containment: 100.0% - 38 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DLMMRouter** (`0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d`, chain 43114)
Origin: 40-acres (`0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**P33** (`0x26e9dbe75aed331e41272bece932ff1b48926ca9`, chain 43114)
Origin: 40-acres (`0xd8ee2b6b71949ebcdd33e50546b163cf8e4d4bd8`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RamsesV3Factory** (`0xae6e5c62328ade73ceefd42228528b70c8157d0d`, chain 43114)
Origin: autofinance (`0xae334f70a7fc44fcc2df9e6a37bc032497cf80f1`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- DLMMFeeCollector (`0x684b340014556d15d754b812ef7d1b134b42289c`, chain 43114)
- DLMMQuoter (`0xddae0aa4e93be4936c1bcc12d3001b35c75fef40`, chain 43114)
- DLMMRewarderFactory (`0xd28467ede84cede6b05070779e39eaff4988548c`, chain 43114)
- FeeCollector (`0x1e1e2a861205767d69a51edf03cf5e3a278437bc`, chain 43114)
- FeeDistributorFactory (`0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac`, chain 43114)
- FeeRecipientFactory (`0x227fabb4db11cc082ef8cd083cff5d034d4de16f`, chain 43114)
- Minter (`0xd23f124bbbc958bcddc0ce624042b48154222fde`, chain 43114)
- MixedRouteQuoterV1 (`0x3265d621c7d993151c8eb2acd4902cda0499a8a0`, chain 43114)
- NonfungibleTokenPositionDescriptor (`0x6f17db548544a19162e82b20c67abee99960a89a`, chain 43114)
- Pharaoh (`0x13a466998ce03db73abc2d4df3bbd845ed1f28e7`, chain 43114)
- ProxyAdmin (`0x3b91972c1ff63296cb824a30997c7e4a982b7ee6`, chain 43114)
- Quoter (`0xadae75447d112cfc401c952744de3e6d32456465`, chain 43114)
- QuoterV2 (`0xb7297301b7cc659bb96d51754643a0df6eea2138`, chain 43114)
- RamsesTreasuryHelper (`0xf03ce48d5e8dedff1012dcd32a3352f7cc90a1f4`, chain 43114)
- RamsesV3PoolDeployer (`0x6a4113ed0915bcf5e48e758e8f4cebffc07c66f9`, chain 43114)
- RamsesV3PositionManager (`0x0b4478e810d48b5882d4019d435a2f864bab4f39`, chain 43114)
- Router (`0x9cee04bdce127da7e448a333f006defb3d5e38cc`, chain 43114)
- SafeProxy (`0xd1b27ccaf2a4ddca0ac32181374c70282492d843`, chain 43114)
- SwapRouter (`0xc8b8fcbdb5c019d7802ffb0b39603395d7d3915c`, chain 43114)
- TickLens (`0x3a7aeb3c33922073f4f23207d0ff247e9694a100`, chain 43114)
- TimeLock (`0x12d54ad6daf65d55b029df1b34b260c68fc0ddcf`, chain 43114)
- TransparentUpgradeableProxy (`0x3176f6e4be2448c53edd59c27651edfaa74bf483`, chain 43114)
- TransparentUpgradeableProxy (`0x660862d49e92f80f29e56c2770027e8d83e97882`, chain 43114)
- TransparentUpgradeableProxy (`0x922b9ca8e2207bfb850b6ff647c054d4b58a2aa7`, chain 43114)
- UniswapInterfaceMulticall (`0xf296bb0eaeab6703d876b1bfe9d5693ef302b855`, chain 43114)
- UniversalRouter (`0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6`, chain 43114)
- VoteModule (`0x34f233f868cdb42446a18562710ee705d66f846b`, chain 43114)
- Voter (`0x5363e33b444ccfd438204266d025a26c048f0f7b`, chain 43114)
- XPhar (`0xe8164ea89665dab7a553e667f81f30cfda736b9a`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 38; live-surface rows included: 38 (34 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 32/34 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/32 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 32 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 68 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 32 of 101 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/74
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 101
- Raw deployments: 161
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 12.5% (Code4rena, ConsenSys Diligence)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 4.1% | 2024-10 |
| Consensys Diligence | Tier 1 | 2 | 2.7% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeCollector | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266973 | `0x1e1e2a861205767d69a51edf03cf5e3a278437bc` | ✅ Audited |
| GaugeV3 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-266998 | 2 deployments: avalanche `0x031a975187111afe6b9dc473cd317b00ed8cd262`; avalanche `0xe565310baa582c768a77a3bb7f86a892ef07d04e` | ✅ Audited |
| RamsesV3Factory | registry | project_anchor | own_supporting | 0 | avalanche | unit-266988 | `0xae6e5c62328ade73ceefd42228528b70c8157d0d` | ✅ Audited |
| RamsesV3PoolDeployer | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-266983 | `0x6a4113ed0915bcf5e48e758e8f4cebffc07c66f9` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x0253d249a5e16269230fa81a58c104f5aafee4f1`; avalanche `0x0811251d17eb692e644a3850d5503544d3e2ebbe`; avalanche `0x272cd330263b85b6c1693c78ed1ad2a972ea4bfb`; avalanche `0x639c4ba572ed98180b2ccc306b25f2325bfb2c89`; avalanche `0x6c6fc88d8c06c7e29225dd00d422280e20a6eeb0`; avalanche `0x88451ac528cdf5ca4a853407db494455ff0c91e6`; avalanche `0xa9bf9027ecb4a71e6c274c83afdb4e1a488660f0`; avalanche `0xaa589d1740671c8f0e6ee89a0ac91fe9c45c92ae`; avalanche `0xc2a1044f8f67e65fed15644a76725b2637fc9eba` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x088703700f4fa35bf9eabc8cdbcead3678432779`; avalanche `0x29cd8852ff040cfe74fb20277a121ed1293afb41` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3c3945a9537ea1536a28bac135eed6cfb1509051`; avalanche `0x65b8ba2672ac8b8ac0f90c6c7cc3a368ed352d29` | ⚠️ Unaudited |
| AccessHubDLMMActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a4203a52ceed651d30cb038698382a8905d6cfb` | ⚠️ Unaudited |
| AccessHubPhar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x06e05378a63a904afe03a6723cd1cbd9ec118e1b`; avalanche `0x282a4fae014862b43535620b4ea81f8ed4c096ec`; avalanche `0x3f3af1ba2cdceeb618fb57de98d1dbb6483c9e4f`; avalanche `0xe5be021d769b3d51655ea972e5d80ee942a17508` | ⚠️ Unaudited |
| AccessHubPhar | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267003 | `0x3176f6e4be2448c53edd59c27651edfaa74bf483` | ⚠️ Unaudited |
| AccessHubPhar | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-266985 | `0x97301276a873207d34ccdf0eb6584c8189d0dd44` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x20cbeb09cbdeeda0cbc41eb7884f151ec900cdd4`; avalanche `0x64963852966aa7ff2258434f361ec933bf0eaf03`; avalanche `0x7d51ed4c4f3282704e3ac8038ff58d2bd4fb37ab`; avalanche `0xbbe734f62b31ff396e5a1210e3f22b6e891ebb32` | ⚠️ Unaudited |
| AutoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x47a2c15eeeef5018a3e13caf987b235d702c8825`; avalanche `0x4bb1932724c9276992cd02de1742779e00ab5586`; avalanche `0x51d6ab0a20a39eb87f10c008910da956349b3d4b`; avalanche `0xa44cb7bdb2e1e874bbdc55e5e762a6de6f299aeb` | ⚠️ Unaudited |
| ClPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa32926fce6be95ea2c51cb4fcb60836d320c42` | ⚠️ Unaudited |
| Database | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x631b7116fd967b90a6444c2498e00ebb446812b5` | ⚠️ Unaudited |
| DLMMFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-266995 | `0xeb480050b016f6c6d45203d2346b68bddda23d4d` | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266982 | `0x684b340014556d15d754b812ef7d1b134b42289c` | ⚠️ Unaudited |
| DLMMPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf41253c1258a7a3c291e695158267b173c26d710` | ⚠️ Unaudited |
| DLMMQuoter | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266993 | `0xddae0aa4e93be4936c1bcc12d3001b35c75fef40` | ⚠️ Unaudited |
| DLMMRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x015f051b1fe0df7693a9dc348bc48c608aa037b3`; avalanche `0xa2ab122fac20ee2bf2db97a7dd55160928059513`; avalanche `0xf1996b044a8572a6eb8d96540d479f91a3120ab7` | ⚠️ Unaudited |
| DLMMRewarder | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267002 | 2 deployments: avalanche `0xc997575204290ff7106ab8b2bcfa7e7dea43d783`; avalanche `0xd28467ede84cede6b05070779e39eaff4988548c` | ⚠️ Unaudited |
| DLMMRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266997 | `0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x088e2efad10f3262e745c6c01f661112f353bb64`; avalanche `0x82a411555f4262769077cb9b8775c897a1185222` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa2a49958a443dc9d19fddee873b5d1d6e84a2f` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266981 | `0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac` | ⚠️ Unaudited |
| FeeLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x529377dcb455d8b47f67af881fa498419185fe73` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266974 | `0x227fabb4db11cc082ef8cd083cff5d034d4de16f` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x273275eac3249f6cc5d2cc1eb28ea767ba7fa86a` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-266992 | `0xd9a63c24f69f015ebe3ff61817645dc7cc5906b1` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x15c50acd86be6be893ab57cf4f47d0da7e24d292`; avalanche `0x19ff41165ad2f6493a8a4f3e9904ae0815d7fcd8`; avalanche `0xdb73614c843ee0723cdbbe801a19a680590da90e` | ⚠️ Unaudited |
| IncentivesDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0dd9ffd6040e13aa6d70f1a564f209e4042b5627`; avalanche `0x41e78e093f94dd6bd739e6bd2eafaad2cae04059`; avalanche `0xc353c2cc5d774706e0050b97ac937a5e1db87807` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x21dadc5df1dcd425f8a1d936b9b037aa75261a16`; avalanche `0x70fd0f23df8ff32ed3b26207735867ec3de39f43` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab559850a251a6ebdba31076019ccf44165309d8` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xe7187f0d21e1039e8fd8346aa4f9a7c9f99975c4` | ⚠️ Unaudited |
| MinimalizedFeePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a4ea371737c90de0205024962a52cc4b3fafc64` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266991 | `0xd23f124bbbc958bcddc0ce624042b48154222fde` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266976 | `0x3265d621c7d993151c8eb2acd4902cda0499a8a0` | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49128053ae71470a6670895bb932ce19384f3e96` | ⚠️ Unaudited |
| NonfungiblePositionManagerB | governance | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa78e8c4241990b4ce159e105da08129345946a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | project_anchor | own_supporting | 0 | avalanche | unit-266984 | `0x6f17db548544a19162e82b20c67abee99960a89a` | ⚠️ Unaudited |
| P33 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266975 | `0x26e9dbe75aed331e41272bece932ff1b48926ca9` | ⚠️ Unaudited |
| P33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x640d2ef09d550f4c79bf897412876d7b4a8867e6`; avalanche `0xcda4195a11a9497114dea8360f8bf8ff8122ca80`; avalanche `0xd8ee2b6b71949ebcdd33e50546b163cf8e4d4bd8` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa16c016bf556fcd620328f0759252e29b1ab57` | ⚠️ Unaudited |
| Pharaoh | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266971 | `0x13a466998ce03db73abc2d4df3bbd845ed1f28e7` | ⚠️ Unaudited |
| PharaohCommandCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x2f542bfc5836893fe8df45002e6386defa3af6d3`; avalanche `0x3c0045d49e7a1c2125272ae253dd69a323d71af5`; avalanche `0x59652f991ef95bdac0ecf715aa73988b4a9d3474` | ⚠️ Unaudited |
| PharaohLegacyFeePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bd7ee26357f0b01f95f39d6b1191a898ee2a14d` | ⚠️ Unaudited |
| PharaohMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1a624ba3f3928b38990d9cc862ae5fb54ac66297`; avalanche `0x2ca45d9d2f6a020117c4961181a2fb335c3eac06` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | avalanche | unit-266979 | `0x3b91972c1ff63296cb824a30997c7e4a982b7ee6` | ⚠️ Unaudited |
| Pulse | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xb98c602d04ba75ccf2337c39156880f757006150`; avalanche `0xfc508b2cbbe312be63cb981136cab4fabe864c46` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266987 | `0xadae75447d112cfc401c952744de3e6d32456465` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266989 | `0xb7297301b7cc659bb96d51754643a0df6eea2138` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x00409b267f4573f601cbcdf3b9f0b27a263a4eea`; avalanche `0x906b9802271e3752e6d6e6f5813430c71881dfdb`; avalanche `0x9e89a0c489eea24db63749b14c8421d433727e01`; avalanche `0xa47aa2f246f62e2bdcb674bec699e8218f466de0`; avalanche `0xaf9440faeab0026dc00f1461be1c8fbd11d4c011`; avalanche `0xd57ec4a690dfd7ca1b6295aa726f6f00acd057e6`; avalanche `0xec8962784e464e32ed6a97c59850fe36bf5fdc81`; avalanche `0xf2593b9efc323e19551eb69e9b76b6e5c05984b1` | ⚠️ Unaudited |
| RamsesTreasuryHelper | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267004 | 2 deployments: avalanche `0x660862d49e92f80f29e56c2770027e8d83e97882`; avalanche `0xf03ce48d5e8dedff1012dcd32a3352f7cc90a1f4` | ⚠️ Unaudited |
| RamsesV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x5ca009013f6b898d134b6798b336a4592f3b4af2`; avalanche `0x65b9016c376604fe0af38c1e336ffcec0f8ecbbd`; avalanche `0x9bfe3108cc16d17a9ec65545a0f50b2ca1c970c0`; avalanche `0xf01449c0ba930b6e2caca3def3ccbd7a3e589534`; avalanche `0xff0855a9027f5f5c2bbacc4aac477afbeeefbea9` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | project_anchor | own_supporting | 1 | avalanche | unit-266999 | `0x0b4478e810d48b5882d4019d435a2f864bab4f39` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266986 | `0x9cee04bdce127da7e448a333f006defb3d5e38cc` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa45c8f5ef92a000a121d102f4e89278a711faa` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267000 | `0xd1b27ccaf2a4ddca0ac32181374c70282492d843` | ⚠️ Unaudited |
| SafuLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61aa5a1fded544055c432e109ef14a3d38fdb16f` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x062c62ca66e50cfe277a95564fe5bb504db1fab8` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2dd43b906136bf3dbffe0164743ff69b448347bf`; avalanche `0x9daea9462ff3dd535643e07be587517a9790acc5` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266990 | `0xc8b8fcbdb5c019d7802ffb0b39603395d7d3915c` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266978 | `0x3a7aeb3c33922073f4f23207d0ff247e9694a100` | ⚠️ Unaudited |
| TimeLock | governance | project_anchor | own_supporting | 0 | avalanche | unit-266970 | `0x12d54ad6daf65d55b029df1b34b260c68fc0ddcf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x065028dcf219d8622dd50231f188f2b315349aef`; avalanche `0x1a6ed8d4754ed5a3b9c9e65e94fc5824ebd89d6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xfe99e92df71f53a26005d1bfbe54c941a3131aa0` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266996 | `0xf296bb0eaeab6703d876b1bfe9d5693ef302b855` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0e3a7611956072960f92c5910abb13fb1373ceec`; avalanche `0x2919fbf8be554752a13b192e0ef8e572b97f880a`; avalanche `0xaeb49808d6e62065012ebf03962bccdfcd1e7274` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266980 | `0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6` | ⚠️ Unaudited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266977 | `0x34f233f868cdb42446a18562710ee705d66f846b` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x134359911572945f935028fb19df021630cab6f2`; avalanche `0x31a8a3f4ca7b74b098d48a47aaa3f03a49925d35`; avalanche `0x677e397d76cc2135bd15f1821b8cbd9aa7ab35f2`; avalanche `0x9334f3ce4569e04437665daa254e0189d145af21`; avalanche `0xaf6c9abbeebc6f78bc77bd65fbc624da10af4019`; avalanche `0xb14a78f8d7845d17d91d49bf4b4266c61d9c95a9`; avalanche `0xc4b8d6b1968ff8caff36f4218c1fdc417af1f5d7`; avalanche `0xe0623b81c87b2a9a0691beb3af38449fbece29aa`; avalanche `0xe59b0f65e11e5615579f290a11c7e3b3b312d82a` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267001 | 2 deployments: avalanche `0x5363e33b444ccfd438204266d025a26c048f0f7b`; avalanche `0x922b9ca8e2207bfb850b6ff647c054d4b58a2aa7` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f` | ⚠️ Unaudited |
| XPhar | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266994 | `0xe8164ea89665dab7a553e667f81f30cfda736b9a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01ed92088fde0361726b9599109e4c28f75ae9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04c57edb81f3c4a13c24fa2123712a594b9ba6ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0788f4694bb435de6b19778044cb3a0069cb9924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15913efd471ef439b602564fe0d8e9069b2522bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a1e577b087c763cc02bc44dceb8c3741737f6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3421309abf1a8cd328b9c4fc499c7dc08f1c7ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a1bd9c260c8aecf5400df1877be50f0d2bfb481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x428b740727f794a61e23b79fbedbd0f5539534ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x469ab2ad1c9a295455948312df9aa8be7acbd534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5629b19ec1f31322996d3fabb91bdf3c9184b6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d99162eb56d9cc8426ca65ef597a51497968293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x638dc97eeb46bdaa506113ae6f11b2cc92a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b199634b0cc5fdf1eef08762524a847abc400c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71775fee4867597c721ff9e8dd705cbad955325a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81dd8a1b210ca1e97cd090725791ebbcab783d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85448bf2f589ab1f56225df5167c63f57758f8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89bd6816f35a5904beeda26fe58b9eb23a5e43da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad8948a757ccab4283d4c9ca843cace77a7d6318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb784902b1185637e1294d1b46fc73c2c7f2a5024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbeebb38483cb9b544633616f316af754a103ef61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbeb24e8fc568001e83430ec4929ce56b29ba9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3865e15649b3f4aaa79f118789725078f0974fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0e637573494f12695e66c3024a9115bd97c9300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe30ec7dc499f6375982cfc56fc29e38f86267a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3e11855a79cadb1af2878e5fd5dfd204e329608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe63f0de1bde30e4bd75bcaace0d48ac66364ec12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf31632c73b8775e45ce6d2539deb008cb766d51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | matched | 3 | 1 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11649] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c — no match: No scope section or contract names found in the provided text.
- [11650] diligence.security/audits/2024/08/ramses-v3 — matched: The audit report covers Ramses V3 smart contracts. The scope section lists the commit hash and references an appendix for files in scope. The system overview explicitly names six contracts/libraries: RamsesV3PoolDeployer, RamsesV3Factory, RamsesV3Pool, Oracle, Tick, and Position. The audit was conducted from July to September 2024, with the extension into September, so the end date is September 30, 2024.
- [11651] code4rena.com/reports/2024-10-ramses-exchange — matched: The report states the scope includes 10 smart contracts, but only 5 are explicitly named in the text. The audit date is from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x6a4113ed0915bcf5e48e758e8f4cebffc07c66f9` — deployed 2025-09-14 02:10:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae6e5c62328ade73ceefd42228528b70c8157d0d` — deployed 2025-09-14 02:10:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Pool | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Oracle | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Tick | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Position | unmatched — not counted | — | listed in scope section | no |
| code4rena.com/reports/2024-10-ramses-exchange | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0xe565310baa582c768a77a3bb7f86a892ef07d04e` — deployed 2025-10-08 20:07:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Pool | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| code4rena.com/reports/2024-10-ramses-exchange | FeeCollector | own contract | FeeCollector (selected) `0x1e1e2a861205767d69a51edf03cf5e3a278437bc` — deployed 2025-10-08 20:52:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae6e5c62328ade73ceefd42228528b70c8157d0d` — deployed 2025-09-14 02:10:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | NonfungiblePositionManager | unmatched — not counted | — | Listed in scope and referenced in findings. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x3176f6e4be2448c53edd59c27651edfaa74bf483` | AccessHubPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xeb480050b016f6c6d45203d2346b68bddda23d4d` | DLMMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x684b340014556d15d754b812ef7d1b134b42289c` | DLMMFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xddae0aa4e93be4936c1bcc12d3001b35c75fef40` | DLMMQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc997575204290ff7106ab8b2bcfa7e7dea43d783` | DLMMRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d` | DLMMRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac` | FeeDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x227fabb4db11cc082ef8cd083cff5d034d4de16f` | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd23f124bbbc958bcddc0ce624042b48154222fde` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3265d621c7d993151c8eb2acd4902cda0499a8a0` | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6f17db548544a19162e82b20c67abee99960a89a` | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x26e9dbe75aed331e41272bece932ff1b48926ca9` | P33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x13a466998ce03db73abc2d4df3bbd845ed1f28e7` | Pharaoh | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xadae75447d112cfc401c952744de3e6d32456465` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb7297301b7cc659bb96d51754643a0df6eea2138` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x660862d49e92f80f29e56c2770027e8d83e97882` | RamsesTreasuryHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0b4478e810d48b5882d4019d435a2f864bab4f39` | RamsesV3PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9cee04bdce127da7e448a333f006defb3d5e38cc` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc8b8fcbdb5c019d7802ffb0b39603395d7d3915c` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3a7aeb3c33922073f4f23207d0ff247e9694a100` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x12d54ad6daf65d55b029df1b34b260c68fc0ddcf` | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x34f233f868cdb42446a18562710ee705d66f846b` | VoteModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5363e33b444ccfd438204266d025a26c048f0f7b` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe8164ea89665dab7a553e667f81f30cfda736b9a` | XPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 69 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=5

Zero-match audit list:

- [11649] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
