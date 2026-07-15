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

**ClGaugeFactory** (`0xe56531...07d04e`, chain 43114)
Origin: 40-acres (`0x15c50a...24d292`)
Containment: 100.0% - 31 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DLMMFactory** (`0xeb4800...a23d4d`, chain 43114)
Origin: 40-acres (`0xeb4800...a23d4d`)
Containment: 100.0% - 38 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DLMMRouter** (`0xff2bef...f5d93d`, chain 43114)
Origin: 40-acres (`0xff2bef...f5d93d`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**P33** (`0x26e9db...926ca9`, chain 43114)
Origin: 40-acres (`0xd8ee2b...4d4bd8`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**RamsesV3Factory** (`0xae6e5c...157d0d`, chain 43114)
Origin: autofinance (`0xae334f...cf80f1`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- DLMMFeeCollector (`0x684b34...42289c`, chain 43114)
- DLMMQuoter (`0xddae0a...5fef40`, chain 43114)
- DLMMRewarderFactory (`0xd28467...88548c`, chain 43114)
- FeeCollector (`0x1e1e2a...8437bc`, chain 43114)
- FeeDistributorFactory (`0x5af7fa...5125ac`, chain 43114)
- FeeRecipientFactory (`0x227fab...4de16f`, chain 43114)
- Minter (`0xd23f12...222fde`, chain 43114)
- MixedRouteQuoterV1 (`0x3265d6...99a8a0`, chain 43114)
- NonfungibleTokenPositionDescriptor (`0x6f17db...60a89a`, chain 43114)
- Pharaoh (`0x13a466...1f28e7`, chain 43114)
- ProxyAdmin (`0x3b9197...2b7ee6`, chain 43114)
- Quoter (`0xadae75...456465`, chain 43114)
- QuoterV2 (`0xb72973...ea2138`, chain 43114)
- RamsesTreasuryHelper (`0xf03ce4...90a1f4`, chain 43114)
- RamsesV3PoolDeployer (`0x6a4113...7c66f9`, chain 43114)
- RamsesV3PositionManager (`0x0b4478...ab4f39`, chain 43114)
- Router (`0x9cee04...5e38cc`, chain 43114)
- SafeProxy (`0xd1b27c...92d843`, chain 43114)
- SwapRouter (`0xc8b8fc...d3915c`, chain 43114)
- TickLens (`0x3a7aeb...94a100`, chain 43114)
- TimeLock (`0x12d54a...c0ddcf`, chain 43114)
- TransparentUpgradeableProxy (`0x3176f6...4bf483`, chain 43114)
- TransparentUpgradeableProxy (`0x660862...e97882`, chain 43114)
- TransparentUpgradeableProxy (`0x922b9c...8a2aa7`, chain 43114)
- UniswapInterfaceMulticall (`0xf296bb...02b855`, chain 43114)
- UniversalRouter (`0x5acc35...8ec6c6`, chain 43114)
- VoteModule (`0x34f233...6f846b`, chain 43114)
- Voter (`0x5363e3...8f0f7b`, chain 43114)
- XPhar (`0xe8164e...736b9a`, chain 43114)

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
| FeeCollector | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266973 | `0x1e1e2a...8437bc` | ✅ Audited |
| GaugeV3 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-266998 | 2 deployments: avalanche `0x031a97...8cd262`; avalanche `0xe56531...07d04e` | ✅ Audited |
| RamsesV3Factory | registry | project_anchor | own_supporting | 0 | avalanche | unit-266988 | `0xae6e5c...157d0d` | ✅ Audited |
| RamsesV3PoolDeployer | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-266983 | `0x6a4113...7c66f9` | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x0253d2...fee4f1`; avalanche `0x081125...e2ebbe`; avalanche `0x272cd3...ea4bfb`; avalanche `0x639c4b...fb2c89`; avalanche `0x6c6fc8...a6eeb0`; avalanche `0x88451a...0c91e6`; avalanche `0xa9bf90...8660f0`; avalanche `0xaa589d...5c92ae`; avalanche `0xc2a104...fc9eba` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x088703...432779`; avalanche `0x29cd88...3afb41` | ⚠️ Unaudited |
| AccessHub | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3c3945...509051`; avalanche `0x65b8ba...352d29` | ⚠️ Unaudited |
| AccessHubDLMMActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a4203...5d6cfb` | ⚠️ Unaudited |
| AccessHubPhar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x06e053...118e1b`; avalanche `0x282a4f...c096ec`; avalanche `0x3f3af1...3c9e4f`; avalanche `0xe5be02...a17508` | ⚠️ Unaudited |
| AccessHubPhar | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267003 | `0x3176f6...4bf483` | ⚠️ Unaudited |
| AccessHubPhar | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-266985 | `0x973012...d0dd44` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x20cbeb...00cdd4`; avalanche `0x649638...0eaf03`; avalanche `0x7d51ed...fb37ab`; avalanche `0xbbe734...1ebb32` | ⚠️ Unaudited |
| AutoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x47a2c1...2c8825`; avalanche `0x4bb193...ab5586`; avalanche `0x51d6ab...9b3d4b`; avalanche `0xa44cb7...299aeb` | ⚠️ Unaudited |
| ClPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa329...320c42` | ⚠️ Unaudited |
| Database | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x631b71...6812b5` | ⚠️ Unaudited |
| DLMMFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-266995 | `0xeb4800...a23d4d` | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266982 | `0x684b34...42289c` | ⚠️ Unaudited |
| DLMMPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf41253...26d710` | ⚠️ Unaudited |
| DLMMQuoter | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266993 | `0xddae0a...5fef40` | ⚠️ Unaudited |
| DLMMRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x015f05...a037b3`; avalanche `0xa2ab12...059513`; avalanche `0xf1996b...120ab7` | ⚠️ Unaudited |
| DLMMRewarder | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267002 | 2 deployments: avalanche `0xc99757...43d783`; avalanche `0xd28467...88548c` | ⚠️ Unaudited |
| DLMMRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266997 | `0xff2bef...f5d93d` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x088e2e...53bb64`; avalanche `0x82a411...185222` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa2a4...e84a2f` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266981 | `0x5af7fa...5125ac` | ⚠️ Unaudited |
| FeeLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x529377...85fe73` | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266974 | `0x227fab...4de16f` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x273275...7fa86a` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-266992 | `0xd9a63c...5906b1` | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x15c50a...24d292`; avalanche `0x19ff41...d7fcd8`; avalanche `0xdb7361...0da90e` | ⚠️ Unaudited |
| IncentivesDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0dd9ff...2b5627`; avalanche `0x41e78e...e04059`; avalanche `0xc353c2...b87807` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x21dadc...261a16`; avalanche `0x70fd0f...e39f43` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab5598...5309d8` | ⚠️ Unaudited |
| MevModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xe7187f...9975c4` | ⚠️ Unaudited |
| MinimalizedFeePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a4ea3...fafc64` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-266991 | `0xd23f12...222fde` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266976 | `0x3265d6...99a8a0` | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x491280...4f3e96` | ⚠️ Unaudited |
| NonfungiblePositionManagerB | governance | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa78e...45946a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | project_anchor | own_supporting | 0 | avalanche | unit-266984 | `0x6f17db...60a89a` | ⚠️ Unaudited |
| P33 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266975 | `0x26e9db...926ca9` | ⚠️ Unaudited |
| P33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x640d2e...8867e6`; avalanche `0xcda419...22ca80`; avalanche `0xd8ee2b...4d4bd8` | ⚠️ Unaudited |
| PairFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa16c...b1ab57` | ⚠️ Unaudited |
| Pharaoh | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266971 | `0x13a466...1f28e7` | ⚠️ Unaudited |
| PharaohCommandCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x2f542b...3af6d3`; avalanche `0x3c0045...d71af5`; avalanche `0x59652f...9d3474` | ⚠️ Unaudited |
| PharaohLegacyFeePusher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bd7ee...e2a14d` | ⚠️ Unaudited |
| PharaohMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x1a624b...c66297`; avalanche `0x2ca45d...3eac06` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | avalanche | unit-266979 | `0x3b9197...2b7ee6` | ⚠️ Unaudited |
| Pulse | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xb98c60...006150`; avalanche `0xfc508b...864c46` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266987 | `0xadae75...456465` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266989 | `0xb72973...ea2138` | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: avalanche `0x00409b...3a4eea`; avalanche `0x906b98...81dfdb`; avalanche `0x9e89a0...727e01`; avalanche `0xa47aa2...466de0`; avalanche `0xaf9440...d4c011`; avalanche `0xd57ec4...d057e6`; avalanche `0xec8962...5fdc81`; avalanche `0xf2593b...5984b1` | ⚠️ Unaudited |
| RamsesTreasuryHelper | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267004 | 2 deployments: avalanche `0x660862...e97882`; avalanche `0xf03ce4...90a1f4` | ⚠️ Unaudited |
| RamsesV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x5ca009...3b4af2`; avalanche `0x65b901...8ecbbd`; avalanche `0x9bfe31...c970c0`; avalanche `0xf01449...589534`; avalanche `0xff0855...efbea9` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | project_anchor | own_supporting | 1 | avalanche | unit-266999 | `0x0b4478...ab4f39` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266986 | `0x9cee04...5e38cc` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaa45c...711faa` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267000 | `0xd1b27c...92d843` | ⚠️ Unaudited |
| SafuLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61aa5a...fdb16f` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x062c62...b1fab8` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2dd43b...8347bf`; avalanche `0x9daea9...90acc5` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266990 | `0xc8b8fc...d3915c` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266978 | `0x3a7aeb...94a100` | ⚠️ Unaudited |
| TimeLock | governance | project_anchor | own_supporting | 0 | avalanche | unit-266970 | `0x12d54a...c0ddcf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x065028...349aef`; avalanche `0x1a6ed8...d89d6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xfe99e9...131aa0` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | avalanche | unit-266996 | `0xf296bb...02b855` | ⚠️ Unaudited |
| UniversalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0e3a76...73ceec`; avalanche `0x2919fb...7f880a`; avalanche `0xaeb498...1e7274` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-266980 | `0x5acc35...8ec6c6` | ⚠️ Unaudited |
| VoteModule | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266977 | `0x34f233...6f846b` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x134359...cab6f2`; avalanche `0x31a8a3...925d35`; avalanche `0x677e39...ab35f2`; avalanche `0x9334f3...45af21`; avalanche `0xaf6c9a...af4019`; avalanche `0xb14a78...9c95a9`; avalanche `0xc4b8d6...f1f5d7`; avalanche `0xe0623b...ce29aa`; avalanche `0xe59b0f...12d82a` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 1 | avalanche | unit-267001 | 2 deployments: avalanche `0x5363e3...8f0f7b`; avalanche `0x922b9c...8a2aa7` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xaaaea1...b9ce6f` | ⚠️ Unaudited |
| XPhar | unknown | project_anchor | own_supporting | 0 | avalanche | unit-266994 | `0xe8164e...736b9a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01ed92...5ae9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04c57e...9ba6ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0788f4...cb9924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15913e...2522bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a1e57...37f6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x342130...1c7ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a1bd9...bfb481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x428b74...9534ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x469ab2...cbd534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5629b1...84b6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d9916...968293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x638dc9...a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b1996...c400c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71775f...55325a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81dd8a...783d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85448b...58f8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89bd68...5e43da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad8948...7d6318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb78490...2a5024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbeebb3...03ef61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbeb24...9ba9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd3865e...0974fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0e637...7c9300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe30ec7...267a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3e118...329608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe63f0d...64ec12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf31632...66d51b` | ❓ Unverified |

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
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3PoolDeployer | own contract | RamsesV3PoolDeployer (selected) `0x6a4113...7c66f9` — deployed 2025-09-14 02:10:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae6e5c...157d0d` — deployed 2025-09-14 02:10:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| diligence.security/audits/2024/08/ramses-v3 | RamsesV3Pool | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Oracle | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Tick | unmatched — not counted | — | listed in scope section | no |
| diligence.security/audits/2024/08/ramses-v3 | Position | unmatched — not counted | — | listed in scope section | no |
| code4rena.com/reports/2024-10-ramses-exchange | GaugeV3 | own proxy deployment | ClGaugeFactory (proxy) (selected) `0xe56531...07d04e` — deployed 2025-10-08 20:07:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Pool | unmatched — not counted | — | Listed in scope and referenced in findings. | no |
| code4rena.com/reports/2024-10-ramses-exchange | FeeCollector | own contract | FeeCollector (selected) `0x1e1e2a...8437bc` — deployed 2025-10-08 20:52:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | RamsesV3Factory | own contract | RamsesV3Factory (selected) `0xae6e5c...157d0d` — deployed 2025-09-14 02:10:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-10-ramses-exchange | NonfungiblePositionManager | unmatched — not counted | — | Listed in scope and referenced in findings. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x3176f6...4bf483` | AccessHubPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xeb4800...a23d4d` | DLMMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x684b34...42289c` | DLMMFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xddae0a...5fef40` | DLMMQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc99757...43d783` | DLMMRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xff2bef...f5d93d` | DLMMRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5af7fa...5125ac` | FeeDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x227fab...4de16f` | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xd23f12...222fde` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3265d6...99a8a0` | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6f17db...60a89a` | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x26e9db...926ca9` | P33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x13a466...1f28e7` | Pharaoh | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xadae75...456465` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb72973...ea2138` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x660862...e97882` | RamsesTreasuryHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0b4478...ab4f39` | RamsesV3PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9cee04...5e38cc` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc8b8fc...d3915c` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3a7aeb...94a100` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x12d54a...c0ddcf` | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5acc35...8ec6c6` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x34f233...6f846b` | VoteModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5363e3...8f0f7b` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe8164e...736b9a` | XPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
