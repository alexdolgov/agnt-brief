# Agentic Audit Brief: Puffer Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Puffer Finance (`puffer-finance`)
- Website: [https://puffer.fi](https://puffer.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: apechain, arbitrum, base, berachain, bsc, chain-17000, ethereum, hyperliquid, linea, megaeth, monad, scroll, soneium, tac, zircuit
- Contract surface: 104 unique implementations (158 raw deployments)
- Coverage basis: 2/15 confirmed own live verified implementations (13.3%); conservative 13.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $42,781,317.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Puffer Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across apechain, arbitrum, base, berachain, bsc, chain-17000, ethereum, hyperliquid, linea, megaeth, monad, scroll, soneium, tac, zircuit. Structural roles: 18 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (18)
- Contract kinds: contract (16), abstract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- pufETH BurnMintERC677 (`0x6c460b...9b9a8b`, chain 1868)
- pufETH BurnMintERC677 (`0x37d638...eddbcf`, chain 42161)
- pufETH BurnMintERC677 (`0x417b0f...e6f205`, chain 80094)
- pufETH LayerZero OFT (`0x37d638...eddbcf`, chain 143)
- pufETH LayerZero OFT (`0x37d638...eddbcf`, chain 239)
- pufETH LayerZero OFT (`0x87d000...5392b6`, chain 999)
- pufETH LayerZero OFT (`0x37d638...eddbcf`, chain 4326)
- pufETH LayerZero OFT (`0x37d638...eddbcf`, chain 59144)
- PUFFER LayerZero OFT (`0x8da0ba...74f3e4`, chain 8453)
- PufferVault proxy (`0xd9a442...306a72`, chain 1)
- PufferVault pufETH proxy (`0xc4d46e...ea030e`, chain 534352)
- xPufETH proxy (`0x642748...569381`, chain 56)
- xPufETH proxy (`0x23da5f...10eff1`, chain 8453)
- xPufETH proxy (`0x6234e5...feae3b`, chain 33139)
- xPufETH proxy (`0x9346a5...ddba57`, chain 48900)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/15 (13.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 84 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 19 of 104 unique; 85 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/81
- Verified + Unaudited implementations: 79
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 104
- Raw deployments: 158
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 13.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blocksec | Tier 2 | 2 | 2.5% | 2024-04 |
| Creed | Tier 2 | 2 | 2.5% | 2024-05 |
| Nethermind | Tier 2 | 2 | 2.5% | 2024-04 |
| SlowMist | Tier 1 | 2 | 2.5% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PufferProtocol | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391383 | 2 deployments: ethereum `0xd05edf...df2b00`; ethereum `0xf7b6b3...bd238b` | ✅ Audited |
| ValidatorTicket | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391381 | 2 deployments: ethereum `0x44aad4...6308ed`; ethereum `0x7d26ad...73a55a` | ✅ Audited |

### ⚠️ Verified + Unaudited (79)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x75351d...1ad7e7`; ethereum `0x8c1686...ebee11`; ethereum `0xaf1ac3...5f7573`; ethereum `0xe9a945...156bd1` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa9fb7e...6dc21c`; ethereum `0xe0bdb7...b7e3be` | ⚠️ Unaudited |
| AVSContractsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1565e5...be882f` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x170d84...c933a0`; ethereum `0x196ead...bd3dcc`; ethereum `0x82c40e...c7cab4` | ⚠️ Unaudited |
| CARROT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25368c...042e7c`; ethereum `0x282a69...4d5ed6` | ⚠️ Unaudited |
| CarrotStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c599...d6c0d6` | ⚠️ Unaudited |
| CarrotVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x61fd3f...b1d22a`; ethereum `0xe4c36a...fd1499` | ⚠️ Unaudited |
| CarrotVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf88691...e7051a`; ethereum `0xff00c2...cbc82b` | ⚠️ Unaudited |
| Clock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8bcdf6...cc26eb` | ⚠️ Unaudited |
| DAO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5dea8e...55b23f` | ⚠️ Unaudited |
| EnclaveVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d03e4...241d95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x55202a...95945e`; ethereum `0x716b75...84604e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x58b56f...64c302`; ethereum `0xf00ed0...220aca` | ⚠️ Unaudited |
| ExitQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd9c2d3...e4a455` | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ef0b...398a25` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1ba8e3...620df4`; ethereum `0x446d4d...86cb2a`; ethereum `0xc0896a...55580d` | ⚠️ Unaudited |
| GuardianModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0304a9...513cd0`; ethereum `0x19ad0a...fc47bc`; ethereum `0x628b18...a7ccf2` | ⚠️ Unaudited |
| InstitutionalFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e9a0e...ee4d5e` | ⚠️ Unaudited |
| InstitutionalVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x358a7d...a32cc7`; ethereum `0xb6ffcc...198b9c` | ⚠️ Unaudited |
| L1RewardManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391382 | 2 deployments: ethereum `0x157788...3cf17b`; ethereum `0xc9b081...e0b583` | ⚠️ Unaudited |
| L1RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf11b5...90c467` | ⚠️ Unaudited |
| LibBeaconchainContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa704b1...e79a8e` | ⚠️ Unaudited |
| Lock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b6ec2...29965e` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1324...78bff3` | ⚠️ Unaudited |
| Multisig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa303c4...f73a0d` | ⚠️ Unaudited |
| NoImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc143da...4c30ef`; ethereum `0xd39f78...08e3f1` | ⚠️ Unaudited |
| NonRestakingWithdrawalCredentialsFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa766b7...48ea36` | ⚠️ Unaudited |
| OperationsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3fee92...cd9bf7`; ethereum `0xb0c420...b882b0`; ethereum `0xe6d798...31a3c0` | ⚠️ Unaudited |
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391371 | `0x37d638...eddbcf` | ⚠️ Unaudited |
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | berachain | unit-391377 | `0x417b0f...e6f205` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391380 | `0x87d000...5392b6` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | megaeth | unit-391372 | `0x37d638...eddbcf` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | linea | unit-391376 | `0x37d638...eddbcf` | ⚠️ Unaudited |
| pufETHAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4931a...f97b18` | ⚠️ Unaudited |
| PUFFER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d1c29...664530` | ⚠️ Unaudited |
| PUFFER LayerZero OFT | unknown | project_anchor | own_supporting | 0 | base | unit-391379 | `0x8da0ba...74f3e4` | ⚠️ Unaudited |
| PUFFERAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea9bb...edd83f` | ⚠️ Unaudited |
| PufferDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x727692...453d6a` | ⚠️ Unaudited |
| PufferDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55f4d6...40a304`; ethereum `0x8c9517...7f8b9b` | ⚠️ Unaudited |
| PufferL2Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3436e0...6e0259` | ⚠️ Unaudited |
| PufferModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0c3801...c50e41`; ethereum `0x7f9eb5...6c2fcc`; ethereum `0xbb55ea...f962b3` | ⚠️ Unaudited |
| PufferModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x181cda...875075`; ethereum `0xdd38a5...eebb04` | ⚠️ Unaudited |
| PufferModuleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x07df6f...55a9a3`; ethereum `0x2c1e23...6b1a83`; ethereum `0x441b17...4b7ab3`; ethereum `0x6f0694...d481ee`; ethereum `0x7579eb...ebd1a2`; ethereum `0x9d1374...70b8fa` | ⚠️ Unaudited |
| PufferModuleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9c713e...f5d042`; ethereum `0x9e1e4f...5c3860` | ⚠️ Unaudited |
| PufferOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0be2ae...9e994f`; ethereum `0x785a54...25fa86`; ethereum `0x8efd1d...119489`; ethereum `0xc0613d...85ec97` | ⚠️ Unaudited |
| PufferProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeb6e7...478b5d` | ⚠️ Unaudited |
| PufferRevenueDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b4a1...a62d3e` | ⚠️ Unaudited |
| PufferVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ca0a...1305c1` | ⚠️ Unaudited |
| PufferVault proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391364 | `0xd9a442...306a72` | ⚠️ Unaudited |
| PufferVault pufETH proxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-391374 | `0xc4d46e...ea030e` | ⚠️ Unaudited |
| PufferVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7c93ed...b409b6`; ethereum `0x976061...881398`; ethereum `0xcd2c08...bc341f` | ⚠️ Unaudited |
| PufferVaultV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d5f2...9e6674` | ⚠️ Unaudited |
| PufferVaultV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88fd4e...d42495` | ⚠️ Unaudited |
| PufferVaultV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x272e34...414d72` | ⚠️ Unaudited |
| PufferVaultV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391363 | `0x3b2fdf...3b8afa` | ⚠️ Unaudited |
| PufferWithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e1d9...1288f1` | ⚠️ Unaudited |
| PufLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48e8de...4590d2`; ethereum `0xfb5cd7...279f69` | ⚠️ Unaudited |
| QuadraticIncreasingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaaab55...3a9196` | ⚠️ Unaudited |
| RestakingOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1c6486...7bcd13`; ethereum `0x6756b8...824c4b` | ⚠️ Unaudited |
| RestakingOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2de37b...db3266`; ethereum `0xf58566...4ef305` | ⚠️ Unaudited |
| RestakingOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6e7b53...1a58a9`; ethereum `0x7a6e57...9b5a34`; ethereum `0xa17798...72ea47`; ethereum `0xd4106c...40d44d` | ⚠️ Unaudited |
| RestakingOperatorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x953b41...c493c1` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb33f87...ca78c4` | ⚠️ Unaudited |
| SOON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cf38...20b649` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x074364...182f0b`; ethereum `0x08eb2e...8a1d53`; ethereum `0x5d3fb4...1b54dd` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c28b7...2126ea` | ⚠️ Unaudited |
| UniFiAVSManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4757cf...e397e3`; ethereum `0x517cc0...5bddad`; ethereum `0xe9eb01...a1c52a` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x178831...036184`; ethereum `0x58e431...a9dec3` | ⚠️ Unaudited |
| ValidatorTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x04da36...97cdf9`; ethereum `0x2ffd95...48e65d`; ethereum `0xd88f83...bab56f` | ⚠️ Unaudited |
| ValidatorTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12bd56...c3d8fb`; ethereum `0xcac0b2...274304` | ⚠️ Unaudited |
| ValidatorTicketPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9830ad...4a53c3` | ⚠️ Unaudited |
| vlPUFFER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e1684...5a5e91` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa55ed5...363ce7` | ⚠️ Unaudited |
| X509Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe242c2...c754a4` | ⚠️ Unaudited |
| XERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xb19a79...4a0967`; ethereum `0xd44e91...b463d5`; ethereum `0xf78461...77de48` | ⚠️ Unaudited |
| xPufETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x851040...228942`; ethereum `0xb472be...a65db0` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-391375 | `0x642748...569381` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | base | unit-391378 | `0x23da5f...10eff1` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | apechain | unit-391370 | `0x6234e5...feae3b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | soneium | unit-391368 | `0x6c460b...9b9a8b` | ❓ Unverified |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | monad | unit-391365 | `0x37d638...eddbcf` | ❓ Unverified |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | tac | unit-391369 | `0x37d638...eddbcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0365db...3ff59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ed83...2f424b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24d7e4...deaf45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ddd9...7e70df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4819b8...5281b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9417...4ecf16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x855a60...02ce71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95e3c7...38e63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c13d7...8b9034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1ba8b...a4bf0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa31800...ddcb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa95aa4...723f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa6af9...fc4e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15b4c...86f366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc34da...ded68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0bc9...11b6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43be5...77ab89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7a60...52656c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-391367 | `0x919683...b6bec9` | ❓ Unverified |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | zircuit | unit-391373 | `0x9346a5...ddba57` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Blocksec_audit_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Blocksec_audit_April2024.pdf) | Blocksec | Audit | 2024-04 | stale | Direct | n/a | matched | 2 | 2 | 0 | 13 | n/a |
| [Creed_Puffer_Finance_Audit_May2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Creed_Puffer_Finance_Audit_May2024.pdf) | Creed | Audit | 2024-05 | stale | Direct | n/a | matched | 2 | 2 | 0 | 56 | n/a |
| [Nethermind_PufferProtocol_NM0202_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Nethermind_PufferProtocol_NM0202_April2024.pdf) | Nethermind | Audit | 2024-04 | stale | Direct | n/a | matched | 2 | 2 | 0 | 31 | n/a |
| [SlowMist_PufferFinance_Phase2.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/SlowMist_PufferFinance_Phase2.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | n/a | matched | 2 | 2 | 0 | 12 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4684] Blocksec_audit_April2024.pdf — matched: No reason recorded
- [4685] Creed_Puffer_Finance_Audit_May2024.pdf — matched: No reason recorded
- [4686] Nethermind_PufferProtocol_NM0202_April2024.pdf — matched: No reason recorded
- [4687] SlowMist_PufferFinance_Phase2.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Blocksec_audit_April2024.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | GuardianModule | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | LibBeaconchainContract | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | LibGuardianMessages | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferModule | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferOracle | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b3...bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Blocksec_audit_April2024.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad...73a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Blocksec_audit_April2024.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | AVSContractsRegistry | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | BalancerRateProvider | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | EchidnaPufferVaultV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Errors | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | GuardianModule | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IBeaconDepositContract | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IDelegationManager | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IEigenLayer | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IEnclaveVerifier | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IGuardianModule | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ILidoWithdrawalQueue | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferDepositor | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferDepositorV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferModule | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferModuleManager | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferOracle | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferOracleV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferProtocol | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferVault | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferVaultV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IRegistryCoordinatorExtended | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IRestakingOperator | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IStETH | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IStrategy | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ISushiRouter | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IValidatorTicket | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IWETH | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IWstETH | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | LibBeaconchainContract | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | LibGuardianMessages | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | NoImplementation | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | NodeInfo | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Permit | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ProtocolStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferDeployment | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferDepositor | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferDepositorStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferModule | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferOracle | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b3...bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferVault | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferVaultStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferVaultV2Tests | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | RaveEvidence | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Status | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | StoppedValidatorInfo | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Timelock | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Validator | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ValidatorKeyData | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad...73a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Creed_Puffer_Finance_Audit_May2024.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | BalancerRateProvider | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | Errors | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | GuardianModule | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IBeaconDepositContract | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IEnclaveVerifier | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IGuardianModule | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IPufferModule | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IPufferModuleManager | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IPufferProtocol | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IRestakingOperator | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IValidatorTicket | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IWETH | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | LibBeaconchainContract | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | LibGuardianMessages | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | NodeInfo | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ProtocolStorage | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferModule | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferOracle | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b3...bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | RaveEvidence | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | Status | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | StoppedValidatorInfo | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | Validator | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorKeyData | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad...73a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | BalancerRateProvider | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | GuardianModule | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferModule | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferOracle | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b3...bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_PufferFinance_Phase2.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad...73a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_PufferFinance_Phase2.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x157788...3cf17b` | L1RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b2fdf...3b8afa` | PufferVaultV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 112 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=8

Fork inheritance lineage and inherited audits are included when available.
