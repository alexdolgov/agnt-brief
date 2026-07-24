# Agentic Audit Brief: Hypha

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Hypha (`hypha`)
- Website: [https://www.hypha.sh/](https://www.hypha.sh/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche
- Contract surface: 66 unique implementations (93 raw deployments)
- Coverage basis: 12/35 confirmed own live verified implementations (34.3%); conservative 34.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,763,040.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hypha. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 32 contract row(s) across avalanche. Structural roles: 14 unclassified, 9 core, 9 supporting. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 32
- Structural roles: unclassified (14), core (9), supporting (9)
- Contract kinds: contract (32)
- Detected standards: ownable (4), erc20permit (3), accesscontrol (1), erc165 (1)
- Frameworks: solmate (11), openzeppelin-upgradeable (6), openzeppelin (5)
- Upgradeable-pattern rows: 8

## Fork Analysis

5 of 24 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

**ProtocolDAO** (`0xfc3ea32c03b4be326bced178431789f7e2d8051a`, chain 43114)
Origin: salvor (`0xfc3ea3...d8051a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Staking** (`0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb`, chain 43114)
Origin: salvor (`0xb6ddbf...26aecb`)
Containment: 100.0% - 35 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TokenggAVAX** (`0x84e71ced65470fab9d9d2d1a7eab33e1ddceb922`, chain 43114)
Origin: hypha (`0x576d98...ca7323`)
Containment: 88.9% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- guardianWithdrawWAVAX(uint256,address)
- setLastReward(uint192)

**TokenggAVAX** (`0xfad33e5854d7d0065cd4cd1e2ee9a64928163752`, chain 43114)
Origin: hypha (`0x84e71c...ceb922`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WithdrawQueue** (`0x4043da5d66530f70f2ae1dfbea13d02051b45e6e`, chain 43114)
Origin: hypha (`0x472e82...f56238`)
Containment: 96.3% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- rescueStuckAVAX(uint256,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x19da5d5e16615a354316b792ef91d2dd43d439f4`, chain 43114)
- UnnamedContract (`0x1cea17f9de4de28feb6a102988e12d4b90dff1a9`, chain 43114)
- UnnamedContract (`0x25314c5a00004f5b4fa83c82238ab879f48b58aa`, chain 43114)
- UnnamedContract (`0xae6a7d4778cc35673fcae8f09cdfb4ae85607d89`, chain 43114)
- UnnamedContract (`0xb306c94fd016a9e8de7c6643a4f16342dab20b04`, chain 43114)
- ClaimNodeOp (`0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c`, chain 43114)
- CREATE3Factory (`0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf`, chain 43114)
- GnosisSafeProxy (`0x6c104d5b914931ba179168d63739a297dc29bcf3`, chain 43114)
- MinipoolManager (`0xc300bc9b4b690ba7a182126299a0618ece268ee7`, chain 43114)
- Multicall3 (`0xca11bde05977b3631167028862be2a173976ca11`, chain 43114)
- NodeSale (`0xa60a66f6ce0f43b9d36d9c138aee858fc683cfaa`, chain 43114)
- Ocyticus (`0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542`, chain 43114)
- Oracle (`0x30fb915258d844e9dc420b2c3aa97420aea16db7`, chain 43114)
- ProxyAdmin (`0x6e8fd36d51d159209054dadda7f87aa4e1aed940`, chain 43114)
- ProxyAdmin (`0xbc5627e0b497f18dd4a321f57f4d43c1e0e9e190`, chain 43114)
- RewardsPool (`0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d`, chain 43114)
- Timelock (`0xcd385f1947d532186f3f6aaa93966e3e9c14af41`, chain 43114)
- TokenGGP (`0x69260b9483f9871ca57f81a90d91e2f96c2cd11d`, chain 43114)
- WAVAX (`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 32; live-surface rows included: 32 (32 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/42 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/35 (34.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 27 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 39 of 66 unique; 27 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/56
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 66
- Raw deployments: 93
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 12 | 21.4% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ClaimNodeOp | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242361 | `0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c` | ✅ Audited |
| ClaimProtocolDAO | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242348 | `0x4169cf88c7ed811e6f6e61917c5b915bea49476c` | ✅ Audited |
| MinipoolManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-242365 | `0xc300bc9b4b690ba7a182126299a0618ece268ee7` | ✅ Audited |
| MultisigManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242352 | `0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b` | ✅ Audited |
| Ocyticus | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242373 | `0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542` | ✅ Audited |
| Oracle | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242345 | `0x30fb915258d844e9dc420b2c3aa97420aea16db7` | ✅ Audited |
| ProtocolDAO | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242371 | `0xfc3ea32c03b4be326bced178431789f7e2d8051a` | ✅ Audited |
| RewardsPool | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242358 | `0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d` | ✅ Audited |
| Staking | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242362 | `0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb` | ✅ Audited |
| TokenggAVAX | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242381 | 2 deployments: avalanche `0xa25eaf2906fa1a3a13edac9b9657108af7b703e3`; avalanche `0xfad33e5854d7d0065cd4cd1e2ee9a64928163752` | ✅ Audited |
| TokenGGP | token | project_anchor | own_supporting | 0 | avalanche | unit-242350 | `0x69260b9483f9871ca57f81a90d91e2f96c2cd11d` | ✅ Audited |
| Vault | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242370 | `0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba` | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArtifactHardwareProvider | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242364 | `0xc095ece2c0f315381b4bf6de169fbc219b24194c` | ⚠️ Unaudited |
| AssetLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x37686293c9423a1c5a171aada28ab5c9086b8853`; avalanche `0xd7c8f6a6b4f2389464aaabdf57bd864f9dcbd07b` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242375 | 2 deployments: avalanche `0x456a6e49409f137138e2e0255368a3a37876e87b`; avalanche `0xf451171872e9395021316e44d9f5475c90e27848` | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6476a72282ea701748f56dcfb8a9ffa919bb286c` | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242378 | 2 deployments: avalanche `0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc`; avalanche `0x8a2de3ccc35888bbdba2650cf10417b2089ac366` | ⚠️ Unaudited |
| CREATE3Factory | registry | project_anchor | own_supporting | 0 | avalanche | unit-242356 | `0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf` | ⚠️ Unaudited |
| GGAVAXPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3582837738a46985f900e8ab30191198e0af8020` | ⚠️ Unaudited |
| GGAVAXRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bb74ec551ccd9fe416c71f904d64f42079a0a7f` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | avalanche | unit-242382 | `0x6c104d5b914931ba179168d63739a297dc29bcf3` | ⚠️ Unaudited |
| GoGoGasStation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x27ce13ed07c367258e0e65eb932dffcb84f62b7e`; avalanche `0x52950ffee4ae5c6206d598a639647df27f8f7bd2` | ⚠️ Unaudited |
| MinipoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x9e6579161c6f53722541edbd5ac96779c5b280e9`; avalanche `0xb84fa022c7fe1ce3a1f94c49f2f13236c3d1ed08`; avalanche `0xc8de41c35fb389286546cf4107102a7656da7037`; avalanche `0xe51262211948c338c50640f1d5bdba4f4d208dea` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0a75a480af4adc81b20b1664a1da2bd7caefa430`; avalanche `0x8c05d78066431c3b11bbfb6f3546fd3f1396115c`; avalanche `0xb5f2ed77b7723da56ad58edca5106f07f390e560` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242376 | 2 deployments: avalanche `0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8`; avalanche `0x752ab1da3f8fb0e715976bd5c3416a3a8e163ae1` | ⚠️ Unaudited |
| MinipoolStreamlinerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae1e7b06544a13315e6f7301cc161761813ce4b1` | ⚠️ Unaudited |
| MOANI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42edf547600d7e86be4b44cb7c6d8f8a2c948215` | ⚠️ Unaudited |
| Multicall3 | periphery | project_anchor | own_supporting | 0 | avalanche | unit-242368 | `0xca11bde05977b3631167028862be2a173976ca11` | ⚠️ Unaudited |
| NodeAsAService | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242374 | 2 deployments: avalanche `0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a`; avalanche `0xb306c94fd016a9e8de7c6643a4f16342dab20b04` | ⚠️ Unaudited |
| NodeSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50db30deb68b0f40df4d07c002142100a5b77102` | ⚠️ Unaudited |
| NodeSale | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242357 | `0xa60a66f6ce0f43b9d36d9c138aee858fc683cfaa` | ⚠️ Unaudited |
| Ocyticus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9189d18f453b1ec1f02e40a8e3711334f9ea210b` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242372 | `0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e` | ⚠️ Unaudited |
| ParadiseTycoonPowerups | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9fa82eb2d653fd2938d55cdd8e6e3771a3966cd9`; avalanche `0xd0764d0b80beacbec8488b6c634cd3fa84c1823d` | ⚠️ Unaudited |
| ProtocolDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x41a76343eb93b4790e53c8e2789e09ef41195d0b`; avalanche `0x70fd1a4419cd4436e4d44744c09f09a743fd1b65`; avalanche `0xa008cc1839024a311ad769e4ac302ee35a8ef546` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242349 | `0x5313c309cd469b751ad3947568d65d4a70b247cf` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | avalanche | unit-242351 | `0x6e8fd36d51d159209054dadda7f87aa4e1aed940` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242354 | `0x89cf789e6b622e29ddaf5283cc0c2b1301b9b64d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242355 | `0x9484d5da62664d65744de5d2c148c0ee89416c71` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | avalanche | unit-242363 | `0xbc5627e0b497f18dd4a321f57f4d43c1e0e9e190` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242367 | `0xc7fef2eac21dddf9fa332c1ff4cf208599d7a6c6` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4c5626c39570f0637c1785b378b0ef45a1620a9` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x439776d3786719e1243b628ef05e905679374a5f`; avalanche `0x9946e68490d71fe976951e360f295c4cf8531d00` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d`; avalanche `0xa582a36f77e4536d95cbb99126640e7cbebc3a4b` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242379 | 2 deployments: avalanche `0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b`; avalanche `0xf04aa1700694881761de6d1cc1c490102ff8a9ed` | ⚠️ Unaudited |
| SubnetStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x697d7c12853a59429b62ab4d310975335dba2c68`; avalanche `0x9bfade56e75798167a84c24704fed6098b590819` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | avalanche | unit-242369 | `0xcd385f1947d532186f3f6aaa93966e3e9c14af41` | ⚠️ Unaudited |
| TokenggAVAX | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x576d98d26419c5ce9595833403f64d919eca7323`; avalanche `0xd960ce17d15bd0d056bc4aadc491cbb3fa16e584`; avalanche `0xf80eb498bbfd45f5e2d123dfbdb752677757843e` | ⚠️ Unaudited |
| TokenggAVAX | token | project_anchor | own_supporting | 0 | avalanche | unit-242353 | `0x84e71ced65470fab9d9d2d1a7eab33e1ddceb922` | ⚠️ Unaudited |
| TokenpstAVAX | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242377 | 2 deployments: avalanche `0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8`; avalanche `0x82e1534a5b9b299028e8939a2aef5bcbc079b241` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af`; avalanche `0x22bafb9c882a8ba7ee5559186540bcd8dba1d073` | ⚠️ Unaudited |
| TwapGGP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe` | ⚠️ Unaudited |
| WAVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242360 | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x3dc34920e12067de82de2a94cd46544b255d08e2`; avalanche `0x472e8266f564d52cba41e50817e3d2b63df56238`; avalanche `0x55eadf68ab32c4f782828148b465a76c54bd8a16`; avalanche `0x87c1b4de866b686e2b44e63521f02026e2b48a64` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-242346 | `0x4043da5d66530f70f2ae1dfbea13d02051b45e6e` | ⚠️ Unaudited |
| WithdrawQueue | unknown | project_anchor | own_supporting | 1 | avalanche | unit-242380 | 2 deployments: avalanche `0x61f908d4992a790a2792d3c36850b4b9eb5849a3`; avalanche `0xf25dc803dba114830b086e4cc09cfdebe2c10afd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17395ad76b236fabeac3634b78ff8f6970222199` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242341 | `0x19da5d5e16615a354316b792ef91d2dd43d439f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242342 | `0x1cea17f9de4de28feb6a102988e12d4b90dff1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x213a742ec671a2852c7be7f328766621b08df34a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242343 | `0x25314c5a00004f5b4fa83c82238ab879f48b58aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c2e8cc2ba119776593a85a3941282a928cc4311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cdf0d944d05aa13ae140a5e880d499808fffb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a4536d7df29b385c44737c60597ff9082f5ec4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa14505f315143e16b999b3aca083d306b85b803e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242359 | `0xae6a7d4778cc35673fcae8f09cdfb4ae85607d89` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 60
- Live contracts: 27
- Unknown liveness contracts: 33
- Source-verified contracts: 50
- Currently scope-matched contracts retained as-is: 4
- Classification counts: currently scope matched=4, candidate auto own=5, candidate review=38, exact address book overlap=3, source verified unclassified=3, unverified unclassified=7

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | ClaimProtocolDAO<br>`0x4169cf88c7ed811e6f6e61917c5b915bea49476c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| currently scope matched | MultisigManager<br>`0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xa25eaf2906fa1a3a13edac9b9657108af7b703e3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| currently scope matched | Vault<br>`0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate auto own | ProtocolDAO<br>`0x41a76343eb93b4790e53c8e2789e09ef41195d0b` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate auto own | ProtocolDAO<br>`0xa008cc1839024a311ad769e4ac302ee35a8ef546` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate auto own | Staking<br>`0x439776d3786719e1243b628ef05e905679374a5f` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate auto own | Staking<br>`0x9946e68490d71fe976951e360f295c4cf8531d00` | non_address_book | unknown | unknown | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate auto own | TokenggAVAX<br>`0xfad33e5854d7d0065cd4cd1e2ee9a64928163752` | retained_scope_excluded_inventory | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | ArtifactHardwareProvider<br>`0xc095ece2c0f315381b4bf6de169fbc219b24194c` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | AvalancheHardwareRental<br>`0x456a6e49409f137138e2e0255368a3a37876e87b` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | CoqnetHardwareRental<br>`0x8a2de3ccc35888bbdba2650cf10417b2089ac366` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | GoGoGasStation<br>`0x52950ffee4ae5c6206d598a639647df27f8f7bd2` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolManager<br>`0x9e6579161c6f53722541edbd5ac96779c5b280e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolManager<br>`0xb84fa022c7fe1ce3a1f94c49f2f13236c3d1ed08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolManager<br>`0xc8de41c35fb389286546cf4107102a7656da7037` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolManager<br>`0xe51262211948c338c50640f1d5bdba4f4d208dea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolStreamliner<br>`0x0a75a480af4adc81b20b1664a1da2bd7caefa430` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolStreamliner<br>`0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolStreamliner<br>`0x8c05d78066431c3b11bbfb6f3546fd3f1396115c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolStreamliner<br>`0xb5f2ed77b7723da56ad58edca5106f07f390e560` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MinipoolStreamlinerV2<br>`0xae1e7b06544a13315e6f7301cc161761813ce4b1` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | MOANI<br>`0x42edf547600d7e86be4b44cb7c6d8f8a2c948215` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45652d5ddf5c310b8ddb1edeb37e723ad2cc7c3a` |
| candidate review | NodeAsAService<br>`0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | Ocyticus<br>`0x9189d18f453b1ec1f02e40a8e3711334f9ea210b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | OonodzHardwareProvider<br>`0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | ParadiseTycoonPowerups<br>`0x9fa82eb2d653fd2938d55cdd8e6e3771a3966cd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45652d5ddf5c310b8ddb1edeb37e723ad2cc7c3a` |
| candidate review | ParadiseTycoonPowerups<br>`0xd0764d0b80beacbec8488b6c634cd3fa84c1823d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45652d5ddf5c310b8ddb1edeb37e723ad2cc7c3a` |
| candidate review | ProtocolDAO<br>`0x70fd1a4419cd4436e4d44744c09f09a743fd1b65` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | ProxyAdmin<br>`0x5313c309cd469b751ad3947568d65d4a70b247cf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | ProxyAdmin<br>`0x89cf789e6b622e29ddaf5283cc0c2b1301b9b64d` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | ProxyAdmin<br>`0x9484d5da62664d65744de5d2c148c0ee89416c71` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | ProxyAdmin<br>`0xc7fef2eac21dddf9fa332c1ff4cf208599d7a6c6` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | SubnetHardwareRentalMapping<br>`0xf04aa1700694881761de6d1cc1c490102ff8a9ed` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | SubnetStaking<br>`0x697d7c12853a59429b62ab4d310975335dba2c68` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TokenggAVAX<br>`0xf80eb498bbfd45f5e2d123dfbdb752677757843e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TokenpstAVAX<br>`0x82e1534a5b9b299028e8939a2aef5bcbc079b241` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0x22bafb9c882a8ba7ee5559186540bcd8dba1d073` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0x27ce13ed07c367258e0e65eb932dffcb84f62b7e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0x61f908d4992a790a2792d3c36850b4b9eb5849a3` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0x752ab1da3f8fb0e715976bd5c3416a3a8e163ae1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0xd7c8f6a6b4f2389464aaabdf57bd864f9dcbd07b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | TransparentUpgradeableProxy<br>`0xf451171872e9395021316e44d9f5475c90e27848` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| candidate review | WithdrawQueue<br>`0xf25dc803dba114830b086e4cc09cfdebe2c10afd` | retained_scope_excluded_inventory | unknown | live | verified | review: missing_independent_ownership_evidence | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| exact address book overlap | NodeAsAService<br>`0xb306c94fd016a9e8de7c6643a4f16342dab20b04` | project_anchor | unknown | live | unverified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| exact address book overlap | UnnamedContract<br>`0x19da5d5e16615a354316b792ef91d2dd43d439f4` | project_anchor | unknown | live | unverified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| exact address book overlap | UnnamedContract<br>`0xae6a7d4778cc35673fcae8f09cdfb4ae85607d89` | project_anchor | unknown | live | unverified | n/a | `0x45652d5ddf5c310b8ddb1edeb37e723ad2cc7c3a` |
| source verified unclassified | AssetLocker<br>`0x37686293c9423a1c5a171aada28ab5c9086b8853` | non_address_book | unknown | unknown | verified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| source verified unclassified | GGAVAXPriceFeed<br>`0x3582837738a46985f900e8ab30191198e0af8020` | non_address_book | unknown | unknown | verified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| source verified unclassified | GGAVAXRateProvider<br>`0x1bb74ec551ccd9fe416c71f904d64f42079a0a7f` | non_address_book | unknown | unknown | verified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| unverified unclassified | SubnetStaking<br>`0x9bfade56e75798167a84c24704fed6098b590819` | non_address_book | unknown | unknown | unverified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| unverified unclassified | UnnamedContract<br>`0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af` | non_address_book | unknown | unknown | unverified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| unverified unclassified | UnnamedContract<br>`0x17395ad76b236fabeac3634b78ff8f6970222199` | non_address_book | unknown | unknown | unverified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| unverified unclassified | UnnamedContract<br>`0x213a742ec671a2852c7be7f328766621b08df34a` | non_address_book | unknown | unknown | unverified | n/a | `0x45652d5ddf5c310b8ddb1edeb37e723ad2cc7c3a` |
| unverified unclassified | UnnamedContract<br>`0x7cdf0d944d05aa13ae140a5e880d499808fffb98` | non_address_book | unknown | unknown | unverified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |
| unverified unclassified | UnnamedContract<br>`0x9a4536d7df29b385c44737c60597ff9082f5ec4d` | non_address_book | unknown | unknown | unverified | n/a | `0x45652d5ddf5c310b8ddb1edeb37e723ad2cc7c3a` |
| unverified unclassified | UnnamedContract<br>`0xa14505f315143e16b999b3aca083d306b85b803e` | non_address_book | unknown | unknown | unverified | n/a | `0xf5c149acb200f5bc8fc5e51df4a7def38d64cfb2` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [GoGoPool - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/GoGoPool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | matched | 13 | 1 | 0 | 5 | high |
| [2023-02-gogopool-mitigation-contest (GitHub directory)](https://github.com/code-423n4/2023-02-gogopool-mitigation-contest) | Code4rena | Contest | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf](https://assets-global.website-files.com/62f90a8443126c2ee50f4c4e/643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1968] GoGoPool - Zellic Audit Report.pdf — matched: All contracts listed in the scope section (2.3) of the report.
- [1970] 2023-02-gogopool-mitigation-contest (GitHub directory) — no match: The document is a GitHub repository page for a mitigation contest, not an audit report. It lists findings but does not provide a scope section with contract names or file paths. No audit date is present.
- [11933] 643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf — no match: The audit report is for a Go cryptographic library (ECDSA-CGGMP), not smart contracts. No Solidity contracts or blockchain-specific modules are in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| GoGoPool - Zellic Audit Report.pdf | BaseAbstract | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | RewardsPool | own contract | RewardsPool (selected) `0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d` — deployed 2023-04-06 00:09:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | BaseUpgradeable | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | MultisigManager | own contract | MultisigManager (selected) `0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b` — deployed 2023-04-06 00:13:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Oracle | own contract | Oracle (selected) `0x30fb915258d844e9dc420b2c3aa97420aea16db7` — deployed 2023-04-06 00:12:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | MinipoolManager | own contract | MinipoolManager (selected) `0xc300bc9b4b690ba7a182126299a0618ece268ee7` — deployed 2024-08-07 18:06:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Vault | own contract | Vault (selected) `0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba` — deployed 2023-04-06 00:11:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Storage | own contract | 0x1cea17… (selected) `0x1cea17f9de4de28feb6a102988e12d4b90dff1a9` — deployed 2023-04-06 00:09:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Base | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | ProtocolDAO | own contract | ProtocolDAO (selected) `0xfc3ea32c03b4be326bced178431789f7e2d8051a` — deployed 2025-09-03 22:10:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Ocyticus | own contract | Ocyticus (selected) `0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542` — deployed 2025-09-02 20:58:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | TokenggAVAX | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xa25eaf2906fa1a3a13edac9b9657108af7b703e3` — deployed 2023-04-06 00:10:19+03 — liveness: live (current_address_book_code)<br>TokenggAVAX (alternative) `0x84e71ced65470fab9d9d2d1a7eab33e1ddceb922` — deployed 2025-09-03 22:10:34+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-04-06 was 43d from audit; next candidate 924d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | TokenGGP | own contract | TokenGGP (selected) `0x69260b9483f9871ca57f81a90d91e2f96c2cd11d` — deployed 2023-04-06 00:10:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | ERC4626Upgradeable | unmatched — not counted | — | listed in scope | no |
| GoGoPool - Zellic Audit Report.pdf | ClaimProtocolDAO | own contract | ClaimProtocolDAO (selected) `0x4169cf88c7ed811e6f6e61917c5b915bea49476c` — deployed 2023-04-06 00:13:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | ClaimNodeOp | own contract | ClaimNodeOp (selected) `0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c` — deployed 2023-04-06 00:11:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GoGoPool - Zellic Audit Report.pdf | Staking | own contract | Staking (selected) `0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb` — deployed 2023-11-03 16:32:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xc095ece2c0f315381b4bf6de169fbc219b24194c` | ArtifactHardwareProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x456a6e49409f137138e2e0255368a3a37876e87b` | AvalancheHardwareRental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc` | CoqnetHardwareRental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf` | CREATE3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8` | MinipoolStreamliner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a` | NodeAsAService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa60a66f6ce0f43b9d36d9c138aee858fc683cfaa` | NodeSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e` | OonodzHardwareProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b` | SubnetHardwareRentalMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcd385f1947d532186f3f6aaa93966e3e9c14af41` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x84e71ced65470fab9d9d2d1a7eab33e1ddceb922` | TokenggAVAX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8` | TokenpstAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7` | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x4043da5d66530f70f2ae1dfbea13d02051b45e6e` | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x61f908d4992a790a2792d3c36850b4b9eb5849a3` | WithdrawQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: temporal_name=1, unique_name=12

Zero-match audit list:

- [1970] 2023-02-gogopool-mitigation-contest (GitHub directory)
- [11933] 643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
