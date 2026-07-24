# Agentic Audit Brief: Puffer Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Puffer Finance (`puffer-finance`)
- Website: [https://puffer.fi](https://puffer.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: apechain, arbitrum, base, berachain, bsc, chain-17000, ethereum, hyperliquid, linea, megaeth, monad, scroll, soneium, tac, zircuit
- Contract surface: 115 unique implementations (169 raw deployments)
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

- pufETH BurnMintERC677 (`0x6c460b2c6d6719562d5da43e5152b375e79b9a8b`, chain 1868)
- pufETH BurnMintERC677 (`0x37d6382b6889ccef8d6871a8b60e667115eddbcf`, chain 42161)
- pufETH BurnMintERC677 (`0x417b0ff8358eb72867da92225cab99bcd5e6f205`, chain 80094)
- pufETH LayerZero OFT (`0x37d6382b6889ccef8d6871a8b60e667115eddbcf`, chain 143)
- pufETH LayerZero OFT (`0x37d6382b6889ccef8d6871a8b60e667115eddbcf`, chain 239)
- pufETH LayerZero OFT (`0x87d00066cf131ff54b72b134a217d5401e5392b6`, chain 999)
- pufETH LayerZero OFT (`0x37d6382b6889ccef8d6871a8b60e667115eddbcf`, chain 4326)
- pufETH LayerZero OFT (`0x37d6382b6889ccef8d6871a8b60e667115eddbcf`, chain 59144)
- PUFFER LayerZero OFT (`0x8da0bae597ac15fb0924713b1e3c1f624474f3e4`, chain 8453)
- PufferVault proxy (`0xd9a442856c234a39a81a089c06451ebaa4306a72`, chain 1)
- PufferVault pufETH proxy (`0xc4d46e8402f476f269c379677c99f18e22ea030e`, chain 534352)
- xPufETH proxy (`0x64274835d88f5c0215da8aadd9a5f2d2a2569381`, chain 56)
- xPufETH proxy (`0x23da5f2d509cb43a59d43c108a43edf34510eff1`, chain 8453)
- xPufETH proxy (`0x6234e5ef39b12efdfcbd99dd7f452f27f3feae3b`, chain 33139)
- xPufETH proxy (`0x9346a5043c590133fe900aec643d9622edddba57`, chain 48900)

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
- Outside the address book: 95 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 19 of 115 unique; 96 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/81
- Verified + Unaudited implementations: 79
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 115
- Raw deployments: 169
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
| PufferProtocol | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391383 | 2 deployments: ethereum `0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00`; ethereum `0xf7b6b32492c2e13799d921e84202450131bd238b` | ✅ Audited |
| ValidatorTicket | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391381 | 2 deployments: ethereum `0x44aad4a428661d15c3a983d2a8cbbdf62e6308ed`; ethereum `0x7d26ad6f6ba9d6ba1de0218ae5e20cd3a273a55a` | ✅ Audited |

### ⚠️ Verified + Unaudited (79)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x75351d49229aa42df7febfbea0c7cecc881ad7e7`; ethereum `0x8c1686069474410e6243425f4a10177a94ebee11`; ethereum `0xaf1ac38bf920582ae9028199cffe3d46615f7573`; ethereum `0xe9a9455d94204da19d53f7f1877bf575a3156bd1` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c`; ethereum `0xe0bdb7b9225a2ceb42998dc2e51d4d3cdeb7e3be` | ⚠️ Unaudited |
| AVSContractsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1565e55b63675c703fcc3778bd33ea97f7be882f` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x170d847a8320f3b6a77ee15b0cae430e3ec933a0`; ethereum `0x196ead472583bc1e9af7a05f860d9857e1bd3dcc`; ethereum `0x82c40e07277ebb92935f79ce92268f80ddc7cab4` | ⚠️ Unaudited |
| CARROT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x25368c9c84f8809f52e9a8f847787e1ff3042e7c`; ethereum `0x282a69142bac47855c3fbe1693fcc4ba3b4d5ed6` | ⚠️ Unaudited |
| CarrotStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c599227c65132822f0290d9e5b4b0430d6c0d6` | ⚠️ Unaudited |
| CarrotVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x61fd3f0d2010afcfb0e006746c36569f97b1d22a`; ethereum `0xe4c36adb90e936041776ddb87851ec38affd1499` | ⚠️ Unaudited |
| CarrotVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xf88691cd8bf1293cca2d36d578dad70342e7051a`; ethereum `0xff00c2dd07d811bea632cb9f9e4919dd6fcbc82b` | ⚠️ Unaudited |
| Clock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8bcdf6291f251cf8ecf5ac06bfc4a2b02ecc26eb` | ⚠️ Unaudited |
| DAO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5dea8e499b05de8f86e7521f039770268055b23f` | ⚠️ Unaudited |
| EnclaveVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x55202aa4b5ee7a37776fa5e6ec6208c6df95945e`; ethereum `0x716b75d22b5e5f5cca2c7229f6df79deee84604e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x58b56fe5aca76dd630f48091f9d817bda964c302`; ethereum `0xf00ed0c05f399ace32618e64d40e6f78d3220aca` | ⚠️ Unaudited |
| ExitQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd9c2d314e29f1940d2a65a691881f0950fe4a455` | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x1ba8e3aa853f73ae8093e26b7b8f2520c3620df4`; ethereum `0x446d4d6b26815f9ba78b5d454e303315d586cb2a`; ethereum `0xc0896ab1a8cae8c2c1d27d011eb955cca955580d` | ⚠️ Unaudited |
| GuardianModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0304a9462169aa9e77ec4d51b1fa31eb15513cd0`; ethereum `0x19ad0a7153e192fa10a75954e4c5e259cafc47bc`; ethereum `0x628b183f248a142a598aa2dcccd6f7e480a7ccf2` | ⚠️ Unaudited |
| InstitutionalFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e` | ⚠️ Unaudited |
| InstitutionalVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x358a7d0028070533a9e000616aa6656be7a32cc7`; ethereum `0xb6ffcc320dfda1c3d634887c76f69e0518198b9c` | ⚠️ Unaudited |
| L1RewardManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391382 | 2 deployments: ethereum `0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b`; ethereum `0xc9b0813d9e7f45b5bce84a24f07f33ec6de0b583` | ⚠️ Unaudited |
| L1RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf11b5a0d7adeb5c1f2f3dbb85169594aa90c467` | ⚠️ Unaudited |
| LibBeaconchainContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa704b16ef5a05ccb88734d57f559e80187e79a8e` | ⚠️ Unaudited |
| Lock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b6ec227cebec25118270efbb4b67642fc29965e` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc1324f4fab8e63bf33e5117bb887671b378bff3` | ⚠️ Unaudited |
| Multisig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa303c435563a4544a84e26501f4666346ff73a0d` | ⚠️ Unaudited |
| NoImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc143da0fbab94198361147f54b444202f84c30ef`; ethereum `0xd39f78917ed109370d71ffb7de5915e7df08e3f1` | ⚠️ Unaudited |
| NonRestakingWithdrawalCredentialsFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa766b79c25a8ab4354bf2351c6716baced48ea36` | ⚠️ Unaudited |
| OperationsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7`; ethereum `0xb0c420f623bc6bee71463d968aa139ef6eb882b0`; ethereum `0xe6d798165a32f37927af20d7ccb1f80fb731a3c0` | ⚠️ Unaudited |
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391371 | `0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | ⚠️ Unaudited |
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | berachain | unit-391377 | `0x417b0ff8358eb72867da92225cab99bcd5e6f205` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391380 | `0x87d00066cf131ff54b72b134a217d5401e5392b6` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | megaeth | unit-391372 | `0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | linea | unit-391376 | `0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | ⚠️ Unaudited |
| pufETHAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4931a9f9aaf79057334371d6f62164743f97b18` | ⚠️ Unaudited |
| PUFFER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d1c297d39c5c1277964d0e3f8aa901493664530` | ⚠️ Unaudited |
| PUFFER LayerZero OFT | unknown | project_anchor | own_supporting | 0 | base | unit-391379 | `0x8da0bae597ac15fb0924713b1e3c1f624474f3e4` | ⚠️ Unaudited |
| PUFFERAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f` | ⚠️ Unaudited |
| PufferDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7276925e42f9c4054afa2fad80fa79520c453d6a` | ⚠️ Unaudited |
| PufferDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304`; ethereum `0x8c9517a9e99c74cd072a118d3dc6b4f3217f8b9b` | ⚠️ Unaudited |
| PufferL2Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3436e0b85cd929929f5802e792cfe282166e0259` | ⚠️ Unaudited |
| PufferModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41`; ethereum `0x7f9eb5982388a4683ccab27a50207cb9e76c2fcc`; ethereum `0xbb55ea1d1432a58dc941a24404a616b551f962b3` | ⚠️ Unaudited |
| PufferModule | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x181cdaf63623819d2da7f3dc83d0996402875075`; ethereum `0xdd38a5a7789c74fc7f64556fc772343658eebb04` | ⚠️ Unaudited |
| PufferModuleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3`; ethereum `0x2c1e236434d7dde1b12a9d97be3a4f77276b1a83`; ethereum `0x441b17c449d54e565e11f3568835b067ec4b7ab3`; ethereum `0x6f0694f8fb659213d70c22654be60ac178d481ee`; ethereum `0x7579ebe17a5c4522cc7790da600b04efc9ebd1a2`; ethereum `0x9d1374a7427995f5f01c4cbb01374fe92c70b8fa` | ⚠️ Unaudited |
| PufferModuleManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9c713e108ad3f791c1a13b2b29893a26f4f5d042`; ethereum `0x9e1e4fcb49931df5743e659ad910d331735c3860` | ⚠️ Unaudited |
| PufferOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0be2ae0edbebb517541df217ef0074fc9a9e994f`; ethereum `0x785a54316af8cb61b16a82a3f60c08a18425fa86`; ethereum `0x8efd1dc43ad073232f3e2924e22f173879119489`; ethereum `0xc0613d300b84a5a610d72c38b96c3d71ac85ec97` | ⚠️ Unaudited |
| PufferProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeb6e7ed2b0e6b8f8be7fb3603bbc2807e478b5d` | ⚠️ Unaudited |
| PufferRevenueDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7b4a10ece470208661f111f3546f09693a62d3e` | ⚠️ Unaudited |
| PufferVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ca0a6438b6050ea2ac909ba65920c7451305c1` | ⚠️ Unaudited |
| PufferVault proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391364 | `0xd9a442856c234a39a81a089c06451ebaa4306a72` | ⚠️ Unaudited |
| PufferVault pufETH proxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-391374 | `0xc4d46e8402f476f269c379677c99f18e22ea030e` | ⚠️ Unaudited |
| PufferVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7c93edab7326e5ff8d5b89b13e3681216ab409b6`; ethereum `0x976061d4067476d93f77444827fa7c1717881398`; ethereum `0xcd2c0836d3eae00891415971c22583e55bbc341f` | ⚠️ Unaudited |
| PufferVaultV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d5f2803d9f922fa9c3a77849962df0d19e6674` | ⚠️ Unaudited |
| PufferVaultV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88fd4e8ef43c3d53e333f55d46091df834d42495` | ⚠️ Unaudited |
| PufferVaultV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x272e3475347f0a0b6fa50022140ee5704a414d72` | ⚠️ Unaudited |
| PufferVaultV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391363 | `0x3b2fdfdefe919dbcce0bc5ac426097d5523b8afa` | ⚠️ Unaudited |
| PufferWithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e1d95b4b3a5a082642e17274d67d62691288f1` | ⚠️ Unaudited |
| PufLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48e8de138c246c14248c94d2d616a2f9eb4590d2`; ethereum `0xfb5cd790d0719f6ef59151af2263f023c2279f69` | ⚠️ Unaudited |
| QuadraticIncreasingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xaaab5528aff964ceac972e39c2357c2d503a9196` | ⚠️ Unaudited |
| RestakingOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1c64868bc4f23f4b8ace51767a376695da7bcd13`; ethereum `0x6756b856dd3843c84249a6a31850cb56db824c4b` | ⚠️ Unaudited |
| RestakingOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2de37b0b6aef362d2e49ffd3aede121e28db3266`; ethereum `0xf585669c9065877eb48f8f9678f80685084ef305` | ⚠️ Unaudited |
| RestakingOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6e7b53d745362cb6dbcff180437a4f8c351a58a9`; ethereum `0x7a6e576ad6e1059f8e391e97953d592e7a9b5a34`; ethereum `0xa1779844e51f40cb703c775b0c3cca410a72ea47`; ethereum `0xd4106c56b1e1f134e541ae0c27fee148bd40d44d` | ⚠️ Unaudited |
| RestakingOperatorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x953b4113716ce71596f7ba6b0e75050c25c493c1` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xb33f87f2486165c59b735b7c8b3f5489bfca78c4` | ⚠️ Unaudited |
| SOON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cf38728db67e5d78a7855000fbec177b20b649` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0743647a607822781f9d0a639454e76289182f0b`; ethereum `0x08eb2eccdf6ebd7aba601791f23ec5b5f68a1d53`; ethereum `0x5d3fb47fe7f3f4ce8fe55518f7e4f7d6061b54dd` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea` | ⚠️ Unaudited |
| UniFiAVSManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4757cf69c75bbacb5d1aaa01d983513dd3e397e3`; ethereum `0x517cc0c608e40556940f996286f1123d825bddad`; ethereum `0xe9eb01cca261b1d27c7740a8565ae533a8a1c52a` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x17883176a52c52a5579da73e2207045cfa036184`; ethereum `0x58e4313c7e53d962977706bf40d8c098cda9dec3` | ⚠️ Unaudited |
| ValidatorTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x04da36dd7662a196275da4beb90207966e97cdf9`; ethereum `0x2ffd955e7e18b7db12a269081bedfca52c48e65d`; ethereum `0xd88f8315f6c8883f450e5e33e114e880e1bab56f` | ⚠️ Unaudited |
| ValidatorTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12bd568e59f7d1a707e77f18864597ed80c3d8fb`; ethereum `0xcac0b28431dd76ffd3ba0ade91c30faecd274304` | ⚠️ Unaudited |
| ValidatorTicketPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9830ad1bd5cf73640e253edf97dee3791c4a53c3` | ⚠️ Unaudited |
| vlPUFFER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e168460ea0cf3f126ddd3183dc2e376515a5e91` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa55ed5808aecdf23ae3782c1443185f5d2363ce7` | ⚠️ Unaudited |
| X509Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe242c27cd0568feadc46f09811a55f9b24c754a4` | ⚠️ Unaudited |
| XERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xb19a79d3d9f6d01e338b525ae2a9f5bf654a0967`; ethereum `0xd44e91cfbbaa7b3b259a12a43b38cebf47b463d5`; ethereum `0xf78461cf59683af98dbec13c81dd064f4d77de48` | ⚠️ Unaudited |
| xPufETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x851040181734feec147c9ff878c921fdd7228942`; ethereum `0xb472be878755902fa272d4ca1520be675aa65db0` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-391375 | `0x64274835d88f5c0215da8aadd9a5f2d2a2569381` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | base | unit-391378 | `0x23da5f2d509cb43a59d43c108a43edf34510eff1` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | apechain | unit-391370 | `0x6234e5ef39b12efdfcbd99dd7f452f27f3feae3b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | soneium | unit-391368 | `0x6c460b2c6d6719562d5da43e5152b375e79b9a8b` | ❓ Unverified |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | monad | unit-391365 | `0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | ❓ Unverified |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | tac | unit-391369 | `0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0365db7d51c660e43a40d2c0b13ab868d53ff59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ed83f15e1ac00f88ddaac0964cf21cf62f424b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24d7e4cf43e5e251bce0370990c56b5cafdeaf45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ddd9535b4c1bbff30fb7212a98562d8b7e70df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4819b83d38c2839ab9193099fc7d771cf65281b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d94174199a630a8396e749ea31d80edf84ecf16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x855a60b86765f79b00d5d215b599896d8102ce71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95e3c7c56af639cee6a996195ff3612b2238e63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c13d7e06f80758aa0444cdeb1c1b34f1f8b9034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1ba8b48ebdb2227078c2b46e0301e699ca4bf0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa318002c5f157cd4481bcbeb83bfd6a9d1ddcb41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa95aa41bba980eb7a80e7bff4f6218244c723f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa6af98c1518289246074df4e485b5ba2bfc4e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15b4ce4d98b26142e8e72eec19c453dc386f366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc34dab7a7def9537817f298566ced55d6ded68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe0bc9a2cade47b3372fda345fdbf7c3a511b6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43be5a192c100d0cc5d60c5982106f15477ab89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec7a604ae84c6872935147faf542e5714052656c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30d91df53cccf07e3a5bf6862db8cfbe1fcb21d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b883b1017f5e9a33af53b1f750b4ae39a9564fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x417b0ff8358eb72867da92225cab99bcd5e6f205` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-391367 | `0x9196830bb4c05504e0a8475a0ad566aceeb6bec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87d00066cf131ff54b72b134a217d5401e5392b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8da0bae597ac15fb0924713b1e3c1f624474f3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9ebf2f33526cd571f8b2ad312492cb650870cfd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xcd19e32f4f6f4c8d10a416c0397297169e93b464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xea0f8ae7155466c119340618cd28bfd04e7309b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf2cb21124867a26455ae414a529b0ddfbfeab224` | ❓ Unverified |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | zircuit | unit-391373 | `0x9346a5043c590133fe900aec643d9622edddba57` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 125
- Live contracts: 7
- Unknown liveness contracts: 118
- Source-verified contracts: 93
- Currently scope-matched contracts retained as-is: 2
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=2, candidate review=68, contamination review=3, source verified unclassified=20, unverified unclassified=32

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87d00066cf131ff54b72b134a217d5401e5392b6` | non_address_book | unknown | unknown | unverified | n/a | `0x1bfaec64abfddcc8c5da134880d1e71f3e03689e` |
| base | unverified unclassified | UnnamedContract<br>`0x30d91df53cccf07e3a5bf6862db8cfbe1fcb21d3` | non_address_book | unknown | unknown | unverified | n/a | `0x1bfaec64abfddcc8c5da134880d1e71f3e03689e` |
| base | unverified unclassified | UnnamedContract<br>`0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | non_address_book | unknown | unknown | unverified | n/a | `0x1bfaec64abfddcc8c5da134880d1e71f3e03689e` |
| base | unverified unclassified | UnnamedContract<br>`0x3b883b1017f5e9a33af53b1f750b4ae39a9564fa` | non_address_book | unknown | unknown | unverified | n/a | `0x1bfaec64abfddcc8c5da134880d1e71f3e03689e` |
| base | unverified unclassified | UnnamedContract<br>`0x417b0ff8358eb72867da92225cab99bcd5e6f205` | non_address_book | unknown | unknown | unverified | n/a | `0x1bfaec64abfddcc8c5da134880d1e71f3e03689e` |
| berachain | unverified unclassified | UnnamedContract<br>`0x8da0bae597ac15fb0924713b1e3c1f624474f3e4` | non_address_book | unknown | unknown | unverified | n/a | `0x1bfaec64abfddcc8c5da134880d1e71f3e03689e` |
| ethereum | candidate review | L1RewardManager<br>`0xc9b0813d9e7f45b5bce84a24f07f33ec6de0b583` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x1bfaec64abfddcc8c5da134880d1e71f3e03689e` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0x7d26ad6f6ba9d6ba1de0218ae5e20cd3a273a55a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | currently scope matched | ERC1967Proxy<br>`0xf7b6b32492c2e13799d921e84202450131bd238b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | AccessManager<br>`0x75351d49229aa42df7febfbea0c7cecc881ad7e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | AccessManager<br>`0x8c1686069474410e6243425f4a10177a94ebee11` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | AccessManager<br>`0xaf1ac38bf920582ae9028199cffe3d46615f7573` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | AccessManager<br>`0xe9a9455d94204da19d53f7f1877bf575a3156bd1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | AVSContractsRegistry<br>`0x1565e55b63675c703fcc3778bd33ea97f7be882f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | EnclaveVerifier<br>`0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ERC1967Proxy<br>`0x12bd568e59f7d1a707e77f18864597ed80c3d8fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ERC1967Proxy<br>`0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ERC1967Proxy<br>`0x48e8de138c246c14248c94d2d616a2f9eb4590d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ERC1967Proxy<br>`0x58b56fe5aca76dd630f48091f9d817bda964c302` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ERC1967Proxy<br>`0x716b75d22b5e5f5cca2c7229f6df79deee84604e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ERC1967Proxy<br>`0x9e1e4fcb49931df5743e659ad910d331735c3860` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ERC1967Proxy<br>`0xff00c2dd07d811bea632cb9f9e4919dd6fcbc82b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | GuardianModule<br>`0x0304a9462169aa9e77ec4d51b1fa31eb15513cd0` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | GuardianModule<br>`0x19ad0a7153e192fa10a75954e4c5e259cafc47bc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | InstitutionalFactory<br>`0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | InstitutionalVault<br>`0xb6ffcc320dfda1c3d634887c76f69e0518198b9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | L1RewardManager<br>`0xbf11b5a0d7adeb5c1f2f3dbb85169594aa90c467` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | LibBeaconchainContract<br>`0xa704b16ef5a05ccb88734d57f559e80187e79a8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | NoImplementation<br>`0xc143da0fbab94198361147f54b444202f84c30ef` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | OperationsCoordinator<br>`0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | OperationsCoordinator<br>`0xb0c420f623bc6bee71463d968aa139ef6eb882b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | OperationsCoordinator<br>`0xe6d798165a32f37927af20d7ccb1f80fb731a3c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferDepositor<br>`0x7276925e42f9c4054afa2fad80fa79520c453d6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferDepositorV2<br>`0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferDepositorV2<br>`0x8c9517a9e99c74cd072a118d3dc6b4f3217f8b9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModule<br>`0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModule<br>`0x181cdaf63623819d2da7f3dc83d0996402875075` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModule<br>`0x7f9eb5982388a4683ccab27a50207cb9e76c2fcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModule<br>`0xbb55ea1d1432a58dc941a24404a616b551f962b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModuleManager<br>`0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModuleManager<br>`0x2c1e236434d7dde1b12a9d97be3a4f77276b1a83` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModuleManager<br>`0x441b17c449d54e565e11f3568835b067ec4b7ab3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModuleManager<br>`0x6f0694f8fb659213d70c22654be60ac178d481ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModuleManager<br>`0x7579ebe17a5c4522cc7790da600b04efc9ebd1a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModuleManager<br>`0x9c713e108ad3f791c1a13b2b29893a26f4f5d042` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferModuleManager<br>`0x9d1374a7427995f5f01c4cbb01374fe92c70b8fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferOracleV2<br>`0x0be2ae0edbebb517541df217ef0074fc9a9e994f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferOracleV2<br>`0x785a54316af8cb61b16a82a3f60c08a18425fa86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferOracleV2<br>`0x8efd1dc43ad073232f3e2924e22f173879119489` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferOracleV2<br>`0xc0613d300b84a5a610d72c38b96c3d71ac85ec97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferProtocol<br>`0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferProtocol<br>`0xdeb6e7ed2b0e6b8f8be7fb3603bbc2807e478b5d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferRevenueDepositor<br>`0xd7b4a10ece470208661f111f3546f09693a62d3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferVault<br>`0x39ca0a6438b6050ea2ac909ba65920c7451305c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferVaultV2<br>`0x7c93edab7326e5ff8d5b89b13e3681216ab409b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferVaultV2<br>`0x976061d4067476d93f77444827fa7c1717881398` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferVaultV2<br>`0xcd2c0836d3eae00891415971c22583e55bbc341f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferVaultV3<br>`0x17d5f2803d9f922fa9c3a77849962df0d19e6674` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferVaultV4<br>`0x88fd4e8ef43c3d53e333f55d46091df834d42495` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferVaultV5<br>`0x272e3475347f0a0b6fa50022140ee5704a414d72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferVaultV5<br>`0x3b2fdfdefe919dbcce0bc5ac426097d5523b8afa` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | PufferWithdrawalManager<br>`0x98e1d95b4b3a5a082642e17274d67d62691288f1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | RestakingOperator<br>`0x1c64868bc4f23f4b8ace51767a376695da7bcd13` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | RestakingOperator<br>`0x2de37b0b6aef362d2e49ffd3aede121e28db3266` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | RestakingOperator<br>`0x6e7b53d745362cb6dbcff180437a4f8c351a58a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | RestakingOperator<br>`0x7a6e576ad6e1059f8e391e97953d592e7a9b5a34` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | RestakingOperator<br>`0xa1779844e51f40cb703c775b0c3cca410a72ea47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | RestakingOperator<br>`0xd4106c56b1e1f134e541ae0c27fee148bd40d44d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | RestakingOperatorController<br>`0x953b4113716ce71596f7ba6b0e75050c25c493c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | Timelock<br>`0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ValidatorTicket<br>`0x04da36dd7662a196275da4beb90207966e97cdf9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ValidatorTicket<br>`0x2ffd955e7e18b7db12a269081bedfca52c48e65d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ValidatorTicket<br>`0x44aad4a428661d15c3a983d2a8cbbdf62e6308ed` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ValidatorTicket<br>`0xcac0b28431dd76ffd3ba0ade91c30faecd274304` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | ValidatorTicket<br>`0xd88f8315f6c8883f450e5e33e114e880e1bab56f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | candidate review | X509Verifier<br>`0xe242c27cd0568feadc46f09811a55f9b24c754a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | contamination review | PufferL2Depositor<br>`0x3436e0b85cd929929f5802e792cfe282166e0259` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | contamination review | ValidatorTicketPricer<br>`0x9830ad1bd5cf73640e253edf97dee3791c4a53c3` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | contamination review | XERC20Lockbox<br>`0xb19a79d3d9f6d01e338b525ae2a9f5bf654a0967` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | CARROT<br>`0x25368c9c84f8809f52e9a8f847787e1ff3042e7c` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | CARROT<br>`0x282a69142bac47855c3fbe1693fcc4ba3b4d5ed6` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | CarrotStaker<br>`0x99c599227c65132822f0290d9e5b4b0430d6c0d6` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | CarrotVesting<br>`0x61fd3f0d2010afcfb0e006746c36569f97b1d22a` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | CarrotVesting<br>`0xe4c36adb90e936041776ddb87851ec38affd1499` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | CarrotVesting<br>`0xf88691cd8bf1293cca2d36d578dad70342e7051a` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | LockReleaseTokenPool<br>`0xbc1324f4fab8e63bf33e5117bb887671b378bff3` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | NoImplementation<br>`0xd39f78917ed109370d71ffb7de5915e7df08e3f1` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | PufLocker<br>`0xfb5cd790d0719f6ef59151af2263f023c2279f69` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | SOON<br>`0xe7cf38728db67e5d78a7855000fbec177b20b649` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | UniFiAVSManager<br>`0x4757cf69c75bbacb5d1aaa01d983513dd3e397e3` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | UniFiAVSManager<br>`0x517cc0c608e40556940f996286f1123d825bddad` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | UniFiAVSManager<br>`0xe9eb01cca261b1d27c7740a8565ae533a8a1c52a` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | UpgradeableBeacon<br>`0x17883176a52c52a5579da73e2207045cfa036184` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | UpgradeableBeacon<br>`0x6756b856dd3843c84249a6a31850cb56db824c4b` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | UpgradeableBeacon<br>`0xdd38a5a7789c74fc7f64556fc772343658eebb04` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | UpgradeableBeacon<br>`0xf585669c9065877eb48f8f9678f80685084ef305` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | XERC20Lockbox<br>`0xf78461cf59683af98dbec13c81dd064f4d77de48` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | xPufETH<br>`0x851040181734feec147c9ff878c921fdd7228942` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | source verified unclassified | xPufETH<br>`0xb472be878755902fa272d4ca1520be675aa65db0` | non_address_book | unknown | unknown | verified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0365db7d51c660e43a40d2c0b13ab868d53ff59f` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05ed83f15e1ac00f88ddaac0964cf21cf62f424b` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24d7e4cf43e5e251bce0370990c56b5cafdeaf45` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26ddd9535b4c1bbff30fb7212a98562d8b7e70df` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4819b83d38c2839ab9193099fc7d771cf65281b6` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55202aa4b5ee7a37776fa5e6ec6208c6df95945e` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58e4313c7e53d962977706bf40d8c098cda9dec3` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d94174199a630a8396e749ea31d80edf84ecf16` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x855a60b86765f79b00d5d215b599896d8102ce71` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95e3c7c56af639cee6a996195ff3612b2238e63c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c13d7e06f80758aa0444cdeb1c1b34f1f8b9034` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1ba8b48ebdb2227078c2b46e0301e699ca4bf0d` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa318002c5f157cd4481bcbeb83bfd6a9d1ddcb41` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa95aa41bba980eb7a80e7bff4f6218244c723f57` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa6af98c1518289246074df4e485b5ba2bfc4e5c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb15b4ce4d98b26142e8e72eec19c453dc386f366` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc34dab7a7def9537817f298566ced55d6ded68c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe0bc9a2cade47b3372fda345fdbf7c3a511b6fd` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd43be5a192c100d0cc5d60c5982106f15477ab89` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec7a604ae84c6872935147faf542e5714052656c` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf00ed0c05f399ace32618e64d40e6f78d3220aca` | non_address_book | unknown | unknown | unverified | n/a | `0xb7d83623906ac3fa577f45b7d2b9d4bd26bc5d76` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x37d6382b6889ccef8d6871a8b60e667115eddbcf` | non_address_book | unknown | unknown | unverified | n/a | `0x1bfaec64abfddcc8c5da134880d1e71f3e03689e` |
| scroll | unverified unclassified | UnnamedContract<br>`0x9ebf2f33526cd571f8b2ad312492cb650870cfd6` | non_address_book | unknown | unknown | unverified | n/a | `0xfdd744be62cff3a95d7c638aaf88551bd792eb4d` |
| scroll | unverified unclassified | UnnamedContract<br>`0xcd19e32f4f6f4c8d10a416c0397297169e93b464` | non_address_book | unknown | unknown | unverified | n/a | `0xfdd744be62cff3a95d7c638aaf88551bd792eb4d` |
| scroll | unverified unclassified | UnnamedContract<br>`0xea0f8ae7155466c119340618cd28bfd04e7309b8` | non_address_book | unknown | unknown | unverified | n/a | `0xfdd744be62cff3a95d7c638aaf88551bd792eb4d` |
| scroll | unverified unclassified | UnnamedContract<br>`0xf2cb21124867a26455ae414a529b0ddfbfeab224` | non_address_book | unknown | unknown | unverified | n/a | `0xfdd744be62cff3a95d7c638aaf88551bd792eb4d` |

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
| Blocksec_audit_April2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b32492c2e13799d921e84202450131bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Blocksec_audit_April2024.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad6f6ba9d6ba1de0218ae5e20cd3a273a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b32492c2e13799d921e84202450131bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Creed_Puffer_Finance_Audit_May2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad6f6ba9d6ba1de0218ae5e20cd3a273a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b32492c2e13799d921e84202450131bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | RaveEvidence | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | Status | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | StoppedValidatorInfo | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | Validator | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorKeyData | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad6f6ba9d6ba1de0218ae5e20cd3a273a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | BalancerRateProvider | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | GuardianModule | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferModule | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferOracle | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b32492c2e13799d921e84202450131bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_PufferFinance_Phase2.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad6f6ba9d6ba1de0218ae5e20cd3a273a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_PufferFinance_Phase2.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b` | L1RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b2fdfdefe919dbcce0bc5ac426097d5523b8afa` | PufferVaultV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 46 |

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
