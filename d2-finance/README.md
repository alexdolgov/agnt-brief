# Agentic Audit Brief: D2 Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: D2 Finance (`d2-finance`)
- Website: [https://d2.finance/strategies](https://d2.finance/strategies)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, ethereum
- Contract surface: 403 unique implementations (692 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $27,350,234.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for D2 Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, avalanche, base, berachain, ethereum. Structural roles: 3 core, 2 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (3), unclassified (2), supporting (1)
- Contract kinds: contract (6)
- Detected standards: ownable (3), erc20permit (2), erc20 (1)
- Frameworks: openzeppelin (3), solmate (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x439cb6fd76b81334d2951232e9d029018a306aea`, chain 1)
- UnnamedContract (`0x015974733e5b667ab40cc54c40a835a5bebf6b8f`, chain 42161)
- UnnamedContract (`0x1f1fc659e69318a5f3aab5d69aaad9c9a6245c9a`, chain 42161)
- UnnamedContract (`0x2c8900d6c800f2f5bc8cb0206625152522358d2a`, chain 42161)
- UnnamedContract (`0x575224c6b1fa1d26977cd651974b6d7694f30d52`, chain 42161)
- UnnamedContract (`0x760e31672fe489be1d3cb3447feb493d03bd55a0`, chain 42161)
- UnnamedContract (`0xa28351c8f8ae1ac0748f47f5f3a791e809815207`, chain 42161)
- UnnamedContract (`0x1f1fc659e69318a5f3aab5d69aaad9c9a6245c9a`, chain 43114)
- UnnamedContract (`0x7575870a62c986e139dde5c99eeb734d126d529f`, chain 43114)
- UnnamedContract (`0xa0820f0934e47d6c191450f47ec6430483d1394e`, chain 43114)
- DSQToken (`0xdb0c6fc9e01cd95eb1d3bbae6689962de489cd7b`, chain 42161)
- GnosisSafeProxy (`0x3d04fbea4e8315846dd8a65bdb2e477a357a81d7`, chain 42161)
- GnosisSafeProxy (`0x571b8bd8c14850942d53b3eb5e482ecfd3e7645d`, chain 42161)
- GnosisSafeProxy (`0xe7eb925300075e49fc5caad5d408a50dd22f92d6`, chain 42161)
- VaultV0 (`0xbe68c8b9fce054fedcf605b5c0f2c373505f407a`, chain 42161)
- VaultV0 (`0xd0db54d54e227584563226206e0f74a7e4ef54af`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 389 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 14 of 403 unique; 389 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/47
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 356
- Unique implementations: 403
- Raw deployments: 692
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 2.1% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DSQToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-234874 | `0xdb0c6fc9e01cd95eb1d3bbae6689962de489cd7b` | ✅ Audited |

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bera_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 6 deployments: berachain `0x07cfe53c62c3da3f27ff58d5529aea05a0cf00fb`; berachain `0x4d440e386e1e1dd3854ee217e3482376336b655b`; berachain `0x616bcd66544f747fce07435524a7864cb4e16890`; berachain `0xaf4e7bb1c16b42350965336be0458e5177891a77`; berachain `0xd841ef109ba63bd56ae687252dd9cddf9725f285`; berachain `0xf9efcf7edaf76328cb9720d63a53836771480fa2` | ⚠️ Unaudited |
| Camelot_LP_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a6f5f8363b0a33a8acd806d597a73b8e7485133` | ⚠️ Unaudited |
| Camelot_NFTPool_Module | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0b8a8803a0e8f3a460538b4ded5963946d02369` | ⚠️ Unaudited |
| Camelot_NitroPool_Module | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8afcfb5e939a05af3e7faefe52d3f53ee107f2c` | ⚠️ Unaudited |
| Camelot_Swap_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6479d116f1f9904641b47d63da0babac0fd2404d` | ⚠️ Unaudited |
| Camelot_V3LP_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e2ba75ccf5559390bd0e45e79b1160ad7f121cd` | ⚠️ Unaudited |
| ContributorVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 38 deployments: arbitrum `0xbc4e193a26cde63ab664e6dafeec770df82ae5c9`; arbitrum `0xbddacfecb564305a24e94c0f73f2380056c25fd1`; arbitrum `0xbe547a5f675a2ad73960a7d1427cbb52f5c2f7ab`; arbitrum `0xbfaed34915564d45d92518eb864574d57a1c9fb7`; arbitrum `0xc017e178dd4dd9a0a8e1d84b7825938ca0eb17f2`; arbitrum `0xc048936e567fb0d44683ece29ac2bb46dfd63ad3`; arbitrum `0xc21608df6b2c1cab26f9931440677af76fdf332b`; arbitrum `0xc2a7fde4d3c23a94fe5afc9b42ffe479d9625bea`; arbitrum `0xc4ebfefaca986529f0fac61688b08ea0f5939087`; arbitrum `0xc80a0aff7485c1a1c24afe3c5a07cdaa363c0065`; arbitrum `0xc81f766867be6c6f935e74ade1e7eca802cc70a3`; arbitrum `0xc9495b747b1b6ef4c7d3290e329173693eab0cf8`; arbitrum `0xca90ddf27dccde259fc07543f2889450f7fc9b12`; arbitrum `0xcb748edfc61c3d9f50e7093d5ac04f1b490f7e7c`; arbitrum `0xcd5b5911803782277bbbbf78ee31c6780513331a`; arbitrum `0xce11c1d5c9b0d3e0e9e2e67051c0553b2f1106a3`; arbitrum `0xd42c87bf0f9eb1fa0ef7c6ba15f7eca8d8f18675`; arbitrum `0xda0826d30792d3b1f84e105dd630605ac9b8f8f0`; arbitrum `0xda5c3061f72db09ed473caa06c64465ec250b21a`; arbitrum `0xdd57e8a1ea48c4f6e2df03bb8a52555523a70201`; arbitrum `0xde8f35a98b44b7f84d9f2a21d53a5146ea0eadb9`; arbitrum `0xe4ff0fd75fa4db04a8e6711b4d178bf8ccf5a318`; arbitrum `0xe654581dc9f3ba93f375a99d1146bdbdf9d3d460`; arbitrum `0xe695847017f14fd5dba09fb494c479ba9c1b2e8c`; arbitrum `0xe6eb2cb7807ccbe930375572b3b6c24f57e23cc7`; arbitrum `0xea721d3ae9a4eeabad065f02f6d8a2d6ecca804a`; arbitrum `0xea737b6dbc7c767bfd91dcb158035e9b8a11b870`; arbitrum `0xeaa3f40f2ebc96b03217c821348d58de6992e98d`; arbitrum `0xeaff631abed9076f57d5e3fe0ddc944a2ff2f37e`; arbitrum `0xec08cbed1e5027045de7a9503fa7fff0fb0c5a81`; arbitrum `0xec4df86cd621d49c2c340f4199a69855e4e83783`; arbitrum `0xf06261d27aafe24d9382c9fe9e3a0bad19d52d35`; arbitrum `0xf200bdbda96ea619dd54808535f5967d6849338b`; arbitrum `0xf57aa118a428dea7aad59da72824a8c73b4ac04c`; arbitrum `0xfbce17e18e69da79196bd7fac3a1ae1a541c0f5f`; arbitrum `0xfd50413703eb22283cb3de688780d53bcc69a6ba`; arbitrum `0xfef1f46ee555e80a9c9c0bc7c060f87fbc5ed526`; arbitrum `0xff3c09fd49415f99cbbbeab98c65cd1ce5a72ca8` | ⚠️ Unaudited |
| D2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed7f000ee335b8199b004cca1c6f36d188cf6cb8` | ⚠️ Unaudited |
| D2_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: arbitrum `0xc8071ad5560904b3b721e7e5d29742f523a69111`; berachain `0xaee2d985c415ad843ad62c4bdf4e3be54a2ce3c0`; berachain `0xbdfeefc7a83de75e906ba29c3f4a6028ea2ced6c` | ⚠️ Unaudited |
| DeployerStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9f21793a4d9dd5dd7c2a14c6dcaeceff8be88c89`; arbitrum `0xd48c914add97902944c2283cafd643f720f4b875` | ⚠️ Unaudited |
| DeployerV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb9d9d8632139929a2627150c42159a9b60708399`; arbitrum `0xd641754eb1b9bf163d13dda422f8a17a9cb893ce` | ⚠️ Unaudited |
| DeployerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x34575dff1f86e4856f013ac95be397ba916a8fd4`; arbitrum `0xb5b272ef918835651375f84d463b1ba7b61ef028`; arbitrum `0xd36f5036beab89423aff4d09259ab1b6fd77a2c4` | ⚠️ Unaudited |
| Dolomite_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62ab51dab0bafc863014ffe15ea3b0f4fc9d38d9` | ⚠️ Unaudited |
| Fix_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: berachain `0x2406aacbdf8463176deb285adaa81768415b6c7e`; berachain `0x2ae031ba901305dbfef277d82ce51c0a1a94c8c6`; berachain `0x7d59a58d91ca515d54b7a6a851abdb0f4e7afb53` | ⚠️ Unaudited |
| GMX_GLP_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31e24ab0f3ec6c80ce9a7764f704037da3143da2` | ⚠️ Unaudited |
| GMX_OrderBook_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4eb023f4fb37fa0f4b18e3b2514d8b5dc9bab28` | ⚠️ Unaudited |
| GMX_PositionRouter_Module | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5cb093adbe29be5b16e03c324988e223d753c290`; arbitrum `0x79752ceaa827df52b730093b8ed25395cd0916bd` | ⚠️ Unaudited |
| GMX_Swap_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3289fd2b940834e902d531f4b98a64a8b596197a`; arbitrum `0xaeb2232051cade83ee2f7a7c2bb81add262b878f` | ⚠️ Unaudited |
| GMXV2_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x34efd9ce9dbb72f34e0e861a40ae89627631acfc`; arbitrum `0x3b3a8ca73d810420692f3c6409b1e2ee00ed35a0`; arbitrum `0x51e25e8cc1a4fc2b0c0a110aa2f6bd64b3cab94c`; arbitrum `0x7406d2752c5fb955a1ecaa145b09800b633241de`; arbitrum `0x8f60865fd34556dedd245d4ba31c18aed7ce831e`; arbitrum `0x96e3e83afce07c1538f9f2c7bd288c3f09becddb`; arbitrum `0x9b6cf7858d4d8c736417d9dbd0f7a408d9597acc`; arbitrum `0xa8a6c2701100034efe5ca1346db4e5a64a7ec0ed`; arbitrum `0xb6770d5996bbbd3f29a9eabe9ce561c501da9f9c`; arbitrum `0xbaf9662ba4c6b3881a0fcb8c282f66a667be46f6`; arbitrum `0xbdd77b47e53720cd3e56751a627fe59e8fc1322d`; arbitrum `0xeef89d06f3abea02f67c429f5d47365428e887c5` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 3 | arbitrum | unit-234878 (3 proxies) | 3 deployments: arbitrum `0x3d04fbea4e8315846dd8a65bdb2e477a357a81d7`; arbitrum `0x571b8bd8c14850942d53b3eb5e482ecfd3e7645d`; arbitrum `0xe7eb925300075e49fc5caad5d408a50dd22f92d6` | ⚠️ Unaudited |
| Inch_LimitOrder_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x399a67d9864a6b3184b9d0ebf93a5c35eb30b6e6` | ⚠️ Unaudited |
| Inch_Swap_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc2261dc253319cdc45fc2f32dc29e6bb128ca812` | ⚠️ Unaudited |
| Inch_Swap_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97d8eb5c7cdced3e80aa8ae5d6a34cc62a11c39f` | ⚠️ Unaudited |
| Lyra_LP_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefe465692a1c3cbb61d990764dfb3b12ca1d41b1` | ⚠️ Unaudited |
| Lyra_Options_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1d29441a145527960c81025c2326949d8526c8b` | ⚠️ Unaudited |
| Lyra_Rewards_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71b749ec30b1dd7b12a4716402b102a8196eef7d` | ⚠️ Unaudited |
| Option | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5216f66d3266780d01b0bd847db3976c38a892d0`; arbitrum `0x871b846eeefb3d4ed1d6da1724d4735c4e003afc` | ⚠️ Unaudited |
| Rodeo_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x324026080cd6b82b50e6ba703a3093ba468070a7`; arbitrum `0xcdc85290464452be627aee97be15f08addc485c9` | ⚠️ Unaudited |
| Rysk_Options_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc384e139c51ccc0ec65c62c5adc88947d0260946` | ⚠️ Unaudited |
| Silo_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60e162b0759b41a61cfda3116d24675e4784ef92` | ⚠️ Unaudited |
| Strategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 58 deployments: arbitrum `0x35e18a37b5aff5beb7cfaf11a959a7d61cbe8533`; arbitrum `0x37229999eb3eed62c3d69cf587895760567b3e4f`; arbitrum `0x38dc0afcf0a1f0e751d021ff94aad1ed1ebdae71`; arbitrum `0x3af80995db5a8897714dabdf214d023bcf943266`; arbitrum `0x4182821952c477763f9c0aaf47e4987c4c067594`; arbitrum `0x42d28f5e99651f44fa839430d16088618ce99ca0`; arbitrum `0x58036a82965af474f2aa591cdd8d7ff86b55fa28`; arbitrum `0x5be771b71057c5afa2d474eacae3ab9e9bbf9d78`; arbitrum `0x60e609b81500072a8e0ff942c637930da5dbb443`; arbitrum `0x61424ddf15483fe04e102f6c13799c04bb020fd9`; arbitrum `0x615f3225995a54664d2bce844841d5a0c592ca78`; arbitrum `0x6544e494bd5d30d68a58ff1f0a327b56a2bb1205`; arbitrum `0x6e99e6bef8773d17a3eda3162dde815e67ecc79e`; arbitrum `0x74cf502d950348ff42be6a8c4ccc9f7841ed641a`; arbitrum `0x918d19e81d6d978b9acce16008552e2276e7616f`; arbitrum `0x97a63fb895e85fc2cb0426ba8ae4eeb7da99bd31`; arbitrum `0x97ea32ed92913041dbf66d8c95eab28550175ea0`; arbitrum `0x9c8d236771527c282fe3c7c86277d1dae4b5927d`; arbitrum `0x9f943f88ce337c1385c6a120fd98f8a0008f8df1`; arbitrum `0xa09b317521cbc04064759083efe25a0b3a13de9c`; arbitrum `0xa8519f4c61a54cd94897fdfdecdc131de7813b5d`; arbitrum `0xb2e8662332d1928b662229c6beb20ea143404a78`; arbitrum `0xb4aaa5668f178d392be237eb95a735418c8c3d24`; arbitrum `0xb6185409ddfe81af97954cfaab606b8c6156455b`; arbitrum `0xb7a39693bf0155bec9832e0414281c092f646766`; arbitrum `0xbb74d62c1acc1f36cbd1357e78aae18e9e10ce67`; arbitrum `0xbe9ea88a439797e67631647e708df5548ff82f40`; arbitrum `0xc8759a6f809616439fd08e9fea1709bbb01ff052`; arbitrum `0xce3240c3c82ed81c77fc21a6a308716d3d43bc83`; arbitrum `0xd53759e87bb1d0f27fa8a85c7a5ccbc11b50fbdf`; arbitrum `0xdb765f88f7eb7634874d2f744f3700fbef9a9c0b`; arbitrum `0xe5de201f644d2e76965eab350fa8fef62aae719b`; arbitrum `0xeb20241cf3d317179736501194913ba31d1424a4`; arbitrum `0xedfdcbf376e5e80dd9c1ff9b807c0340b0852316`; arbitrum `0xf52cbb850c277d0af3325fe25ecb0b8bfc7e3843`; arbitrum `0xf767be03f6e7e69e4f077ee38546c32ebbf825b4`; arbitrum `0xf832a70fa38cb10ceeb3fd24cd96bf70878fe4a1`; arbitrum `0xfc607e7d2f0180da895fa3cd54430c7ace2d2806`; arbitrum `0xfc756f0cc35c90e4b3e5ea128bc00a23c9ada706`; arbitrum `0xffc0d66da9875eaf055bc7b562dfc430f3c3969c`; berachain `0x21662b67c3b319490a6bdb74b54e7241fd5e071e`; berachain `0x21f9d83bd1b4f6be4a9e3c38d397b1ed727a060e`; berachain `0x32fe83c848ac4acf1f20251bf81410186e8a7067`; berachain `0x376be66288f3014ff02abe33d1052a3720d10b97`; berachain `0x41590d06581a8ac0412978a60ceb6eaca652a685`; berachain `0x46019ac1a5c0fcbf9a27be7547d8c63fe751f52f`; berachain `0x4923fcedde7372dcbcf2c64055f07a92bed90b80`; berachain `0x558460375793e91fdbc2ba3d69837802aa6a1f18`; berachain `0x644b8e73d49a66cc8fc138bbeadcb7a3cfeca244`; berachain `0x65a6b0e948ea858987b937324f9fd2199758af78`; berachain `0x7561887e1c981542c7150f3a285d61744d895e68`; berachain `0x96c0415dfe4f7c2e8a46f3235f8189dc9275dc2e`; berachain `0xa179121db558181c9d49beca4b748f93dc6228c2`; berachain `0xc0ac5a2e542f657ec47d089df191ccb980e76a0f`; berachain `0xd1dbb5c0fc5967796c6013f972a331f6b9811e86`; berachain `0xd50e366af5d503466f4fa5c42cdcd4354df5efc8`; berachain `0xeb065e106c2ab46c522a887804e73a2ef1e77435`; berachain `0xf336e21e3ac60300216781af28d5f3e6816c4850` | ⚠️ Unaudited |
| Strategy_D2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x31e2bb25c7cf1260c50a6c53d08541c2ed33adfb`; arbitrum `0x3fdc9d2a6dde60ff7b6cabe76fcb6a4236a49ece`; arbitrum `0x6d619bc0b54ff304be46bc56c44335db0acbd235`; arbitrum `0x700a69d7475397ce439a77d07c12b4b92aaa90ad`; arbitrum `0xe1a4ea639d6f831ecc21e9f6d8718a2b3dca26eb` | ⚠️ Unaudited |
| Strategy_ETH | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: arbitrum `0x31ff6ccef7f82057c382ee19ca853101bccd3a5e`; arbitrum `0x3e8bbe74d16fab85870f7221b52b039b8c55768a`; arbitrum `0x51f34050b1a10f1dadb9bfadde9e5044b5991ead`; arbitrum `0x760fcbfe3aaf6024383245400568c83714ad85ad`; arbitrum `0x9718a44382dfbce05643014880e500c72e8fa7c7`; arbitrum `0xa66e6f52d498d29f1d51e25a02ea22e76c213930`; arbitrum `0xaa2fcaf237984f5bddf501e5173be0eadc941e55`; arbitrum `0xe93972f0322692d74ddc952276bf14e3ce5c0cbb`; arbitrum `0xf005520adcd865785b3a0cded58a5197fedaa394` | ⚠️ Unaudited |
| Strategy_Rodeo | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5d14df00d2b95e796c88d09cda014ba902d3844` | ⚠️ Unaudited |
| TeamVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: arbitrum `0xbfe409233c7bdfe706e49f31a1185455d12df4f8`; arbitrum `0xc9c6689c946e715c747e61b16aa0a7675b3f00e2`; arbitrum `0xcadb0c865d8fbf6dca4123295051570c826d11cc`; arbitrum `0xd340e2ea6f919b488e8000c3f4857b7f723a0af7`; arbitrum `0xd7ec1d20961a567ae7bb8f1872ad7cdb508d4051`; arbitrum `0xd88cdb67882df90dab7c2f401603c29691550533`; arbitrum `0xeca6b98679d363d089b7f5a7fd147f2a8f29f8d2`; arbitrum `0xf7ee7dd4cfbeef7e39d4b7c08aac3cef8f190151`; arbitrum `0xf9f88b19e5d8fcba5fecc026c9a23b9373e46642`; arbitrum `0xfc87abfab16bc262fbac8cc134a0ae22539b8277` | ⚠️ Unaudited |
| TeamVestingRevocable | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfa0b1966fa06cfb5e18edb4f6b6e2fbb582eb15` | ⚠️ Unaudited |
| TraderJoe_LP_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x349f734ff449ef379e437d8bfed89423dc2db215` | ⚠️ Unaudited |
| TraderJoe_Swap_Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4869855b35f69191f0e3a179cf689a675c17d911` | ⚠️ Unaudited |
| TraderV0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: arbitrum `0x59a259356b37e4a28c27a0925a9be0a33c8d9b68`; berachain `0x02295e88bca3c6c1f51b40ef2f43ae31b23e13d7` | ⚠️ Unaudited |
| V3LiquidityHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x9b0b91d066f3162884389dd3aa1c280252c20b20`; arbitrum `0xce2f9d2b5ef301286d23ce79e548a60376a57aa0` | ⚠️ Unaudited |
| VaultV0 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-234872 | `0xbe68c8b9fce054fedcf605b5c0f2c373505f407a` | ⚠️ Unaudited |
| VaultV0 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-234873 | `0xd0db54d54e227584563226206e0f74a7e4ef54af` | ⚠️ Unaudited |
| VaultV0 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 46 deployments: base `0x3b565eccb9c3efd124d57d66b9b2aa7177803675`; base `0x41590d06581a8ac0412978a60ceb6eaca652a685`; base `0x46019ac1a5c0fcbf9a27be7547d8c63fe751f52f`; base `0x7d59a58d91ca515d54b7a6a851abdb0f4e7afb53`; base `0x7da637df83778704464208f092dbdbf9f386df96`; arbitrum `0x35dec087a385f1751b0039a80de0d244c02f4ef4`; arbitrum `0x41ac1a6c1389fb8e093b5d5d5a0e8d38b0a993e2`; arbitrum `0x47ba9c71f26ed0896ab24c6c6d03da5d8c52dc44`; arbitrum `0x57f467c9c4639b066f5a4d676cd8ed7d87c1791b`; arbitrum `0x5b49d7fae00de64779ddcd6b067c8eb046bd9a0b`; arbitrum `0x61d911fa2c00581c91c4ca12231ff9ab480078a1`; arbitrum `0x80c403807b1032d7cb19b6d612ce23f05a213d36`; arbitrum `0x893e28de8cd6f9eaf7f56adacd18ca5952e3c908`; arbitrum `0x8ad1c6be844e113931c4d45cca4f4b84cfbf1ad9`; arbitrum `0x907a9f69061736ad82811cccd6add9dc4a2352a9`; arbitrum `0x999a57ae7694298126a5db2e44f778ca486b14fc`; arbitrum `0xa511c0486231624d1a505ee4ab7d50b741dfff2c`; arbitrum `0xac75f0c46723432a2303f2a7c7769535a179ed56`; arbitrum `0xacc8112e38f95c40c7cb94aee60b97e2360cfe28`; arbitrum `0xbb566f2218bba01a268e4b1fa1b70848eedd67b5`; arbitrum `0xbee7a85e28a79ad4e8fc9ae7b5d0cf2b529b62fe`; arbitrum `0xc5baffd6d9b3755ea680e6c630c44a120154dc58`; arbitrum `0xc9a631d740822608a556ba5006cc24e349b62f44`; arbitrum `0xd0a0c9b73543ef76d27f6501bac68015bbc521dd`; arbitrum `0xdd196c74bc362482d6287b640dd132479df9973a`; arbitrum `0xed5ebe0f921981256eb0b08c746b95961cf2df77`; arbitrum `0xee8bbccaa590a4c087d9d2e48b92f60813ed2b43`; arbitrum `0xf04aecaacc79ef8fe27216a988398ac1ed87a864`; arbitrum `0xfa517c5ca78a4007537f41569cfcbfcd14d73d71`; arbitrum `0xffdd430d71f57e944f8a98e6f02a8e645574dc75`; berachain `0x0446b41f6c848e6a539703e65d2a4813f2a2c457`; berachain `0x26eca524d0eb6ce02603850424c56bc42f53e54b`; berachain `0x2e848283ea99d235ca331a21c55c021bef1cecae`; berachain `0x63388c429ccdb1b7c58726f2dc681a940b2fc62f`; berachain `0x6a4d2462c5f9cf21f05e441911d88d38754a1137`; berachain `0x6fc38631e72f7707fd717fb841ecad4f66749289`; berachain `0x767adf6aab276394daf65bc350591403fc144633`; berachain `0x7da637df83778704464208f092dbdbf9f386df96`; berachain `0x7efe92efb73e95fe6481e9bf81bbbe8c03fe2d61`; berachain `0xa1e6eeabac9ffc9e73e755d9977ee5a26b7571e5`; berachain `0xb02aea359e47f25cc6fc69ba4d912ae1bf0331d9`; berachain `0xc8661cabb02ddf2e320d8f80c91c427370e540d0`; berachain `0xc9ebd0975e7d207c2f8ca2c82007cbbafb262c8c`; berachain `0xccf785e52c3ac24af27ef3a56d9ae5923d01cbee`; berachain `0xd7c907c1dc3263d30834fc05103de75554a1d066`; berachain `0xdccc41b210e30e07619ceeda4d7fbd32a2acaa1b` | ⚠️ Unaudited |
| VaultV1Whitelisted | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 55 deployments: base `0x6c05a7d2c24b48fc3c615d294fec2eb068548897`; arbitrum `0x1c17a39b156189bf40905425170a3ff62fb650da`; arbitrum `0x27d22eb71f00495eccc89bb02c2b68e6988c6a42`; arbitrum `0x291344fbaac4fe14632061e4c336fe3b94c52320`; arbitrum `0x33d5e208eb058d4bd179436f2ed8029c4e7c89f8`; arbitrum `0x34f0fdd80a51dfd8ba42343c20f89217280d760e`; arbitrum `0x36b1939adf539a4ac94b57dbad32faecd5bcf4d0`; arbitrum `0x3a89ab3af8de88839e188160a1fa5d9d442621d8`; arbitrum `0x4508e60c5ac6a9a10ac730474018e53508514f8f`; arbitrum `0x4ada76cc8755f62508a2df65d7fafa4fd26e76c6`; arbitrum `0x4c0d05df344fc37f1b9e2e859e9078056770d17f`; arbitrum `0x526ec68ace50eaf3b09cf6ec96d2e4de4c56d3b4`; arbitrum `0x56f1f223e972e3fb95681baf39fe227e25a2563b`; arbitrum `0x577fcbf8d16d8b38ecd517e9badfc098f080cea2`; arbitrum `0x58bd1b6bffe14b9eee6bbc25d781c76b99602241`; arbitrum `0x5ae560bf114f474955dc14531882116e58c253d1`; arbitrum `0x5f44a7dd0a016a5ec9682df36899a781442caa43`; arbitrum `0x6b8959ed5fc48cc5cf2d463bb6a6a9fa5fb42e3d`; arbitrum `0x70169000b5f993dba3022df45b1a03dff7eeefee`; arbitrum `0x71254caab23ca2cbfba9808eae66791b5b933afb`; arbitrum `0x7348925d3c63e4e61e9f5308eeec0f06eaa3bb7b`; arbitrum `0x75288264fdfea8ce68e6d852696ab1ce2f3e5004`; arbitrum `0x782f888954afcd23fab3bc52a6d1d12be10d9f37`; arbitrum `0x8324e4f05795fa5bc9172f17108146399b50a333`; arbitrum `0x856abb6703df8667e8a233b5e7fa60a36704c6f1`; arbitrum `0x85b1972b8c7c1a6e1997f025ae693fad7f897e2f`; arbitrum `0x8c1ec758dd437e0b655b9160479078d1cc49cd20`; arbitrum `0x91fa68c73ce0d58046a0df36aeec8fc041cf1b7d`; arbitrum `0x99b0f1c7ff5bec967e345f91caa0b218ec6c5f26`; arbitrum `0x9c3e1d24f78eee2597ca8a6beca40426a8a6689f`; arbitrum `0xa520272bf782870ce0ab987fc23eb6f883c5e3ec`; arbitrum `0xa54c23de4481e6ae7a6c8eaef469e41b7d6af424`; arbitrum `0xa8ee5577530b3a950bc2f54c705e92059bec4468`; arbitrum `0xaae55784502b561bf1627f343de218f03c180e78`; arbitrum `0xac55d2510c45597fdba8700f3d955ccce54db320`; arbitrum `0xb0730aa7d6e880f901b5d71a971096db56895a0f`; arbitrum `0xb2f7a3c3df02fadc74170d3347d4f05cf20e5871`; arbitrum `0xb74dcedfa664aa84dcf11d5a46f79fc148a779f6`; arbitrum `0xbc9585bf9060207d7f1076a756e2b7c799af7ccf`; arbitrum `0xc56a6934c5afc044c76d875423eb9748a64192df`; arbitrum `0xca169bd1bb43fa6c66e24e077d3f45696099c05c`; arbitrum `0xcb5ca1084c4e1c2c5a62af79f379c7daf6b42482`; arbitrum `0xcd59e1abfee97b5b58a59f5f8a0c806144d82c9c`; arbitrum `0xcf3afb0b6ebf3bedac8c7171424605f92d93d733`; arbitrum `0xcfbbea43fd99126e4c0ef53e2344609d513f72b3`; arbitrum `0xd1d64daeed7504ef3eb056aa2d973bd064843a84`; arbitrum `0xd1fc503f457cf1f8c50b023dbfffc2851eaa9cbf`; arbitrum `0xd31acee65383466b93fbd3f75f051fa6d7c9dea5`; arbitrum `0xda3a0014a31de950cc5897fee84775e7ddb36ab6`; arbitrum `0xe4f5ecd5e0efcbe09eebd82a324e219b8f213361`; arbitrum `0xed62865af387e8ee3bd6c43a0dc90712469c91eb`; arbitrum `0xed80c858d43a1d043e86cf1f20384e189cf23bda`; arbitrum `0xeee6e115cb08ac280fc55642a61d8adfba85dfed`; arbitrum `0xfade8724291dd0a02d39472e27f36137ca07bb6e`; arbitrum `0xfd84dac06180def653efb963945c0d78988465b3` | ⚠️ Unaudited |
| VaultV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 42 deployments: base `0x2406aacbdf8463176deb285adaa81768415b6c7e`; arbitrum `0x0178b56fea3d7b5b9f9e0cdad486522de948730f`; arbitrum `0x5210cc9fbbffa6770258680bb6ec1cb1e626c585`; arbitrum `0x5630128c6726481966074ec1d16c9e386202f513`; arbitrum `0x7e746e4f79ff2ec91970288706eee17b7ceb76e0`; arbitrum `0x83422874cf954eec97ab149f66de4074dd080efe`; arbitrum `0xa3fc0cc773207f668e34b5c8f2b7758404dd377e`; arbitrum `0xa704b4d319c53819371b7821e79994aafe5aedf5`; arbitrum `0xac7e8ed5ac1bbab521f37d0574b452e5352e74f5`; arbitrum `0xb1e866ad7696311bb5867e1ce91b4671fe8fefe1`; arbitrum `0xc027ec28f76d92d4124fcbffcf6b25137a84968c`; arbitrum `0xdb59eed19e87b0d29b8ffd055e3807c380300777`; arbitrum `0xeb3194d69201b04729f1a618d95519cdae24d6c0`; arbitrum `0xf6c0cf91e5598ed26039e9c64a897937a65d5f63`; arbitrum `0xfddd73ecd0d0d75e902a567811a70e167a262fab`; berachain `0x00accdc39a84eaf45fc8e302280cc2e7e1deb423`; berachain `0x01e15e8e2b19453e362ed67d491c5ac3a9e4d11a`; berachain `0x14ffe3c0302c3b406de1b3679ec476aa62d7d6e9`; berachain `0x1e15c24ba774a636d2948c3b9d2dfd937f3a61e9`; berachain `0x22093a68757096d534f6e2d2c3ab1a833121230e`; berachain `0x2b8d0420996a2753ef21c25c94eae9fc0c0aed1e`; berachain `0x2c217c9aef3e47a56fda38de73a842723555de42`; berachain `0x2feb8553fe70fc99dc9417ecb096eba766ff9071`; berachain `0x36b933554782b108bb9962ac00c498acbceb706d`; berachain `0x3b565eccb9c3efd124d57d66b9b2aa7177803675`; berachain `0x432950f3d947edb96b0105bda88add8683d9dd74`; berachain `0x48b999cb9db8efa393433911c569bae74302505f`; berachain `0x4c0dc1f668169b01042789295183507a8bd74429`; berachain `0x53517f34b8e003e1af6b3f41f11fb5c41d3249ed`; berachain `0x7f737508ebc83dd336ebf4e079c967e013195758`; berachain `0x8f04153619bc049537331cf175ec52b8b0d6b10f`; berachain `0x8f3ae0c431eb6844c378454599780e70bc9b8b78`; berachain `0xace42f7e3f4672607897bf1951468031f0214359`; berachain `0xb934d3a3b3e1d6d141d55ef1babfb13e3cf2251e`; berachain `0xbe75c8a7e58c7901d2e128dc8d3b6de2481f1f79`; berachain `0xbead29046abb298f34661287af05e746c43e7419`; berachain `0xbf075980792f8cc89dfb74b553acf6750a7e941b`; berachain `0xc4fee8c68293a63241b64e5a2ef07fcf89005dd3`; berachain `0xcb81defd4ab6e51476332e2222618dcf2a49bcac`; berachain `0xcd18006cc69c6d5fa4fd4eaf99910b58464fa3ae`; berachain `0xe93972f0322692d74ddc952276bf14e3ce5c0cbb`; berachain `0xf650ba4303ce164e1f6b215d4cbb5e212d307056` | ⚠️ Unaudited |
| WETH_Module | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3d78271daf904d962cd3015f8e6311b1e917b52d`; arbitrum `0x44eeb0ef7bc151d32b02eacf92dc967d8a96b1ee`; arbitrum `0xa7d239eac98220ad5abc65ff9a72a6a42b320cda` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (356)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234865 | `0x439cb6fd76b81334d2951232e9d029018a306aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x644b8e73d49a66cc8fc138bbeadcb7a3cfeca244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f737508ebc83dd336ebf4e079c967e013195758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00fa5d0752dd27080c03653590c366013c8a2c5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0143335afd9f00063332b469e4ba696af487610c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234866 | `0x015974733e5b667ab40cc54c40a835a5bebf6b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01779021cd688f7755648c46c651bf90bfba071d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0215edeecdabe3dfc5ec8d59337ec9b26d359088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02b1a70de2895112623b601ed2e34147dda4b894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03357e5ac12982b9b23554dbbc4d8faeabeeded5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03ddd87edce8b7abef71abf028e8fd5c47f3964c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x043e34fc6bc93dd75884ccda5c9918bb1e8e8e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0446b41f6c848e6a539703e65d2a4813f2a2c457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04d09b7e02ddf336dce971d0cee1620b29618b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0589f7846bae4c8553a48a443d276c523c0ce071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05f50b8fd09a089a6e527df238c23ac12a995bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x063b25423a8d245410b3d0b35447f9d4e93740dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x068846d52b6561dcec92126916cd18cef78959e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x068eb1d48ea474c19f187626f3d6387a13d950da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06d973c594451434bef55f4dcb200e9607e402f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07b6e347a534cdafea2fac265a638cf59e21c843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0864b99c628df8b7db11430df59c806c08846487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0926cbd07b823b152f1ef4d9a6ba8425e26de628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ab2a1baa669d3374cbe3077cb8510aec87d5fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b54bad17669328a1c631b07de13b89f6950e918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ba10b8789dc788f22c266b661fcaded546a9d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0beeaed10eca71511d54a68d3e1abad31fc59592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c7dd7f6c6b2ae5403129c8f837aed233254bc22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cabda4669dee26817c1efb5f48b2fd6ae55c08f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cb054939f0bb19425f565096138ef4274c8b99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e31e0b37549b76bafe8856a32304a9f944748a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ec41c2e4258bd50da56352a641dcdcbb144454a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f098bc8a588e4271dbdd5508d093501f9e5d5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fecacd06304cde4b3b94073f71a52faff8d5410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x100e6b931bf966f1c7e67c78796e6d0fa41f4852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10d8e18d076825a3b6d32d18845ed83561d5ef49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x111e641c10fd53bb5b45acbcd8197e3cc76ec108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x117181d748ff2a31d9ed0dc922a6707b19a033c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1176c3760af6a1dbaa5bbd0cc6cda8a2ed6b785e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x128f0ca8bf6addef61f9b04f88ad5a2f6087f6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12ce1cf72bd684d62be0febc0a571e675a38d9b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13177d7c0683292e16d4689350412b02528480f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1346bb113f85a8f381b5f84739093e8e6c7af117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13679caf51220c90764aaf2e000bcfd46a517109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13d64bf518c3e62a398b20ecc60b63c56824d710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13f0a184bdd2bab0d2eb8ab15e4b0d871e279976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14a024e6b3416f3dbb5aeec0cec2ca5ab1b65758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x151fcf3b5988aca49d35ea9e61f0e902b67fce28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x153417e5f3052d0b115430c4820fdd222f9775a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x158e8f91f1f74d22af5940a410998e3f89afc312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15c22076663f11953ceb9d9631a7df0cd2bc7f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x171e0a99378336711b28a9149a4e3061abc9f69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1777f3fa45537981602e67b277f7c3be5949b4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17d7abca021c93900107e2c867adb574323d4824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17ef94d5cfe9132b205752471322fe1fe271bc1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17fd8c3d1e0379cf6b1dace21750e624eb9573c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1829e41de38f2ca88e7f86363b2f2a78bdcc8336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x183424d5ae5ec9fd486634bc566d0f75ad9c9109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x184914bc71dbfd3991eb15a01533fb48bc1b9e4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1894c9bd3e255e4f627e98c039e94c7ec6310816` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19b2a6fdd5315dd87defd7f3e45fd621f433b588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a0d8e294d590e246c4202205fa7aa9cad53b149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a6290f305b8ddda2357f64df0ed5f4ce6e5432f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a7033a79bc1c90bdff88d69c086d905b6133562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1adfe589b8e91e1a4ab673274bbeb5a1aea51cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b14a9cb3991e7947c9a17dacd4459641ff4f16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bb7c6ed33fb415bdd05683d7f48d6c981f4a7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cd0b44ebc15cf0f034b3776d26be5f0206b8b64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dc2ded2fee16c8504fe9b6c7b2e1628f7d7f7eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e15c24ba774a636d2948c3b9d2dfd937f3a61e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234867 | `0x1f1fc659e69318a5f3aab5d69aaad9c9a6245c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f691ab88b1037245d64b8e62a63162025d863f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ff0b5d6a56f8c79bdfef3fbb97a36f214ef40d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2002380e42c749b164f9aed55cbde692f98c399c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2093c44950db02ba7f239083154adf5f0e5382ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x20d6ce5853e6020822fd5dffdb289c7bb0afa619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2166a1a3b0f3f1defd4babc4e5e74fa18bab0032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2172d0d5c925d1b1aace78c6691587bc2216fdb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21d95ebcd5069d74c5dc590c31b70fd56dd0318d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21f9fb0ff0a76389fb60fa4a546ff640c2290033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2274977ec549197e517b08a2396da045e4d289af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2293b36de4ee3e5e15ee8e9bf8496210dd7714ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22cd2f0d8020e7887e6ec63a09b412cbe3bc89fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x231368d38d25c0a1cfe1c21e72ab564195a0f9c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234f20c21f6bbfbc9dfe4bd3beb5cfac08528f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25384d61dffeda009fdd47411f7fbd251dc1414e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e2da40f0fffedc1a617155ee847ec1e0fdbbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x269e8849296dd6f58f94ef916e4e0e1d3e3391f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26d3d9bcbf59f594eca9e8f43c9d2431e43b448f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x27334b36bfb4d28f934437336485bc14be4b303b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x277530e9e7510ac6a4a752fbe2fd2b2057e576ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28027ec68bc7b84c5c8e2c7d0f8e995f3aaeadb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a2be0c7af27f9c92c36e7e5f568ed218462a6a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a42ae924ce490c627710e8760b1be16bd5eb33b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2aa01fde174ab160b4e4f49f152c20d6ec029d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ad14a5ce17fb5d06fa6bd42cb99cf90f8b70c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b15cc97abe96811eee6bc0b8a569ff6aeca8b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2bf5e2af85b7c3c4c119c1680a488a9cfb01fd1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c5c50bf7748742f1839e250d05bd18747e2e916` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234868 | `0x2c8900d6c800f2f5bc8cb0206625152522358d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2c963cb927e0eb8ee3bf8e58c25302edce70f407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ca7c5555f0e12f8c442579db82d7eb64b6486c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d00c6abff40e39555207535117d31abd521ac06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d12e92e8bfaa24597a026eedc1430964d11921b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ed6b815ffa38e567e43658315135d0dc9f0cdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2edac6d40008f3e4d88efd72bc325286eeb42bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2feb8553fe70fc99dc9417ecb096eba766ff9071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x321a00b1f10de32b55790dcf34fb7a9c9d5bb405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x332f64d5f9875e88e4118eca5171ad8780526d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34d8d7d0d18f3ee80637f6e639498fa1f09a5fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34da1708ed1697894a1c4a3a55a8c1a5d1eca42f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36302c1a41387cbd0a2cf19dcc666277b7b17f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37b2ede059c83c21de78d567e2a04191034deb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3818d28347c17a475a83b48d20f116b15ce8c314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x387f65583ed10d7755a5a7aad6bd73cfa7ebdb9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38fe701c91ecef72a46c89e967a1edaadc9f5cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x398a7f518bb2dc37127b2b9927dbfb6fbe37be67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b04022496db904a29920ddef74842d08e468ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b05e3613e117e806455a73f5e1a73addf332404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bb9572f27eaa6b8dee3573caf94c888adca8bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c211e6d28e6a98c3aa389e202434cb8ef17a765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c7a1290ac47080dc79a99a71a75eb938b37f021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d65069cb666e9d468afafc304a560737200dbfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e8682a6efcaab38c23ae5cd1efb0b17267ab103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ea266823cd9174dcc758cca4ed3bac2f9b86c2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3edb4e21d7247e143fa960e455ae0da5a7ab51f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x400e0b6898625e89f4976ef376fa1cfc9daec405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4052c35dc87235d11c733f3c001b57ae98de37d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4065ba7127ee8a9b84461f00f81ebd988c47f7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40ed4d5a1e1609d18b01b2a88d9e8af083b1e026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40fe3ce830a0c89b6249ad9afc489e2e5798623f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41d8039f04d4a8afd9e6080572af6876e352a2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4243d6b328e5c2aea547945d193134f8ac9a7c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42b3b566c796cd170d475eef22f5f82f736cd764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x432950f3d947edb96b0105bda88add8683d9dd74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43321b406fe8f9f91a02bfdb0c2c686ad36b878e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x434ac2f48e545b39b46ef8f9547852c208c77f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4405211cd1d7b25639a18728f025d82fdd808f18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44ad067ab01888c17ab22782e61308d800043a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44ff76937c3ceee6f5cdb99d65729a0adcee9289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4522e8c0634db483672d6f65467d7c042a550834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45c5d692cc766ee1f6915cc6cdba4b8efb85bcb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45fc2ec7acf229b0b3823bc628b467429745133b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4668ea2e95e3101b60e10e243528f35d0cb45120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x47509057f4e6dbe56cab6ddd882e88584ba1a766` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x496d0d895c4bcfd0439608e00fb246091677cdd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c5c987b53300f061ae5164214db0dc1c1d9a850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ca12c4cbdbf94b0e85ac1f08d280e9cc4a75447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d823951a8b3a614667e9cabf6948d7d0e73911d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d90bf1343844e727809b63debcf7c52d38235fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dc8c43390e63d916219c99147612e7ff248b198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4eba88eacb24e1e9f5ca42baf1328b82c40a5321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50f5d018e3451874fc06d8081d9ada8469dcf0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52f66b1627ccba17235e61a278da3a2e213a51f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55aa2630d5dada1eafbaf125df2567be2b9c5f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5727af21c0412f89b2c0d16412d99a4ab199ee82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234869 | `0x575224c6b1fa1d26977cd651974b6d7694f30d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5862795f725fc665b00f711591d7fef008909c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58c856611fced300d6620c26493fc6f340f15d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58de2064de5864c4bcdd425b1caec6e3a2746df1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c2704c4e9d8ead792f32f5b8ed7b22fe25c01d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c36ae4152fb94c07a75fd1f78d7f8a92230bc47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c5f0f81ad759859a1088651ad72eb999d511e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cc372f6a9fd1c53564a81e775b1d906792d908a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cd11dd8253a220aa62217aa14559050acba67a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cedd55df119a2706ef373ffa0bfc4bce442e74c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d4dba7c40a2797a7fceef2db2229e3361e05781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d77baafb60ae923a86a5c51f47501143cd7470d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5daf411ec6ce243416ec9250188682c285fc0a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f5f69a5546581b1f91fe9743edb91f5ebaea52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x605d36c00d890f54d1f5b501909297cb8aff5848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61ac59f48832258e8953fcf474045f694ad19f3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x624560d60c1c599bb617d2c02150c71c1bf5596c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62b287dfe45ed4f6d31233ba97657d63d8da505c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x62f7919f5808d1a0020639dcbe80e8880f0573c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6321dd94bf0f60e111e29a46f1b03906a7425779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x646974510e5443491bee2e577d33e979c8a7e983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x646f2a60bfc6f648c81385b0db135f9449285f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x659c47c2ab0e07e427e96ba54feaf5a924b1c7b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66449fe1f3ba3196f51b697db39704a396d6b05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66754272e7bddd5c0f55cca6a8d7bc4a0a5d209f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66e0e206ee112635effb925f8c8f1f266e3fddd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x673b9dc43e4846e20449942e76d8f3b757b43873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x675f3cb2a0876bb6be5a3d0430b51f8928eaa456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67ccd609b1c405db0da924d2507e1dfe0730bce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68c3a0daf05464bc8c1f099074fd537e2b77b5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68e8ea715892cbace7ad94d8bd12a81b567c3f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6cb3393437321bf8ca26792da6cdebb46041dbfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6db87895b462a3be1081c6fc0ded2b3ff92730dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ebaa86fbc087efcc62ed8950cf4400325b6fcd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7074cc466b5f2eb7889f43270ad905af34e889fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7092d6e6af1fa91b86ff7d628be29fada066b670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7176a0cde52d249dc9da2bd57922a408d71110bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7262c58e52a1ecdd40cac1706a8eb2cb408ab60f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72a019fb87cc48e61576a201b7dec8c4c2268bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73221077fe7cae6cd7a615178f3a79c13326ade8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73399e649d25666aad0ddbceef58400236ed00f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73f2942a7781da43cfd68f5c812dbd07ac3505d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x743413e7930edd4fbfe67cd2aadefadbb7513d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75845a5e08afdb5f670b056d2bf17aa47ade0f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75f8c8f3d4ed14e1e1a1adf4cb1aea77a289c5a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234870 | `0x760e31672fe489be1d3cb3447feb493d03bd55a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76a0a5c58b8c4925661ddd1e11faa734c00d24fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77186d6b215f4dbbe7ce5a7f24b0287373a52e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77f97f7c1062a3d8ec9b667fcc8f9bce1f09dcda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x782c889c1b78d0f429d3202562189b24b8580b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x788f57c189f37a595066e1e92d213b6b904746be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x792cc52cbc7eccea237777bb763431ed61f7dd90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79729710b22eaf1fbcbd7d30c879e1bd4f1ebd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79e7a6b4f32b5d7b3eeab05588ac4879cbd585e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b10df8fd2963a35722aa4c8d8e939281fd3c33b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c46be83d4ab86bf505940428e5ac30d74d426e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cf7b9d2976622a6778e294edf12e6e68da41428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e5c6d2ff64aaa85c83097438de44d0f4b5a0bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f115fcb6c91f42603e232d954eba0c16b94f8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8111958ce7d03b887ce81c2c5c8b0326e15fa433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x814ed4dfd2db134d2c1258c4019ccac52a42a3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82f697013fe6deee9eee445937af93ce61f22d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x835af0c99546dc0d1eeeae287c6d74606ac992bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8385734a756495d45701169aa9af03c8339312de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83bd7eae08ce2a84c9b5c37351627512157164ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x857137d6a0e2e9a0178c0746801e34d0dcc7a146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85d0230bad37055a9c4949b1405b17633ca653a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x861f51bd46d514c60d4467d9267ac0b2f3233387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x866d31bf2e3b6bf152b2f8a51807219581324a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x871cfc11388684423a01771c1ac8e4e470aaedf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x882fa49b9c09808ef15a79a3fc968e1742e764ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8999af45851ce4c6670bff09a4beb47f032ed966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89a5b29ac11084b94ac68fcd0ee96dd86d3ec453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89f01ceb8b559122efe44679df5faac8390042d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a157fbd58aedd6f13b3fd0583dc0f641f5907e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8aa2b6162bdf426531b9b34e96a14db27e572e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c027d21b0696e9784e97b909694bdabb34353ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c7c291e78d1fb0b508c8f4c9990e05c5dfabe4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cd533d0af56e46c3d4fe213582a1a6fe2470166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e09a91ed7b6f089a50740dd49077f590d1490c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f159ec1a5da7b89ddabc148d77d6b0d1ed7a55d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f83dc933e1fd59c4bd9612c413fd0768e7b2789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x905d32789bc34fcb8902f55987e47c2bae1df4d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92c50d3ddb853d9084ea52ba66e341cb0964bd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9360405ce055be11a33266698b5486d8e1a33a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93a008efaeb3e9b8ded9dd67ef4986693fe2fb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x955d7ef502d820bb6b1754b1e5a092f0060dffae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x957fbb0e3edde979becc7e7e4fcc2d8864d68738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x971b0b17813dec1e1b882b22bd4b1df1748c9850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x977280c639ad939bda2d2839ee4ad43d9e22190d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x982b4a42f18e6cc7d007ab6a30338a6d490f1acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x988c53c5d373f1259faa099f8040430849ec333a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98c32e2e0320c44f2106eace3386fdc87f44a623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c4a8347862fdb87f407a528724eca22d14db0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e2a452a038e3ca7dcf1876978b20ba068fb52ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f82212a1ece844977fcd0a9dfc23209d8979f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa05c89863b3cbde18b344d0c3c37ffd6e38eec17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0820f0934e47d6c191450f47ec6430483d1394e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0f0a4b58929250e1f970a2358f9b5a9ca4629f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234871 | `0xa28351c8f8ae1ac0748f47f5f3a791e809815207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa464d4ca097679580f31fa9d6ddb615b17c54185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4869cbdc3bc1b71b7c29e642207bb9439ac05ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4a990cdda72f3866f87d37441bb49a722de3b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6bbe21899339acbade612f4852c795f5ee55550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa70dd7579a802cc696aa20b451df4e4345d43712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7be4c967406b0ba63082f51eb3a3577679fc547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa89a83472b247ef0c6c79991651aaeda4eaa9a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9fce0d338e9ae5504e318d58c0a5545b0bab5c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa1c46c56a9494a4e35f83497587cf1e341af049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac62ad023504bc0d19d15c55866acce94be9755e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacf2585e4930b92e00aec90757e4bb165b1ef600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad02634e145dccf8c1e40f51944248fd659b54f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad5afbe830452df61bf96c59c5ae43e1c7b2f03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaee2d985c415ad843ad62c4bdf4e3be54a2ce3c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaef225145481bad6948aeff9b67a0fb7d20fb36c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf12dc959b75c13e6edf0b78c7644687e8b26357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf43e1ac1afe411a69070aaa4dd10f57d88e9c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb05f5a25d6afea83c58523cb09ea5e446f7b6d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0b10fef25d374957efd43f996c95478e0d50cd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0e312838d082aa6ace70f2521ccf0bec621cc28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb18aec39cf84b12f359f8e3a74d3e9dc1a722c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb18e7cbef267c8a1c880d08766a00aa77b7f93bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2333a67d0074b6d8611889192cc47ff80f37e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2542ecab4d38a6a11af20c71615c563fce31514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3478c205b6e11490635ae5e3efdaa39cf314e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb62455e3f83fb6a802e0938560310ae43e440ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb799b47c5a339ba44850c78d2a34614812a2b374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7e965c126f1d2a1d91269be31c330e0d43fec65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8ab3e893811bb2d11752615eaf5295daa5dfaf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba0e6bbfb5eaf8304b0d3cd17236972ae13ffb5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0846ee0e3785d9cd42bf69fa56b8231a2d023eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc53924e04c9b533e22c223f247883969adceeec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc57c2845c7c965f8ed135af41338e42c7b1cad28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9ef0c10d9843a65a5d1411b632698d37ddd9d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0e8fe749bd47f91d16aaad1f4973ae720fb48ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1138097cf6d031fcfbd799393d7ef1e8c909805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1b969b175072ddfedcf583daefa397c0f385d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3bd60c5aa1c26dca1d6ad41dae05296a55f0cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6b5b7989f546b550cab11b4802a0729a13b152e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8be087b4068c898f1aed8c2f4bdb6841b9cd039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9e97d2c7bd7cd049ccd768095abbb156a3e3b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda68ad62e0b15241e00c0c6fc8e4a427e8713063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdab569f923918222d6b089dac1219b6174901cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4f460ab73d5b3cda140a8d94ecdd4ca7a8dd16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe68f89b35dea65f7e1ea377da77dac07446600ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6e06b4bb89852b2684014550581d2a2776f3152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe823e4da8d2e3a70c2af99fe8e71fbc3f1eaa0b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe98b27cc2002dea355f31b8e7d4ed671316ebda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea3c671572e1b29e64a9f8338fcfcc63e2c9d161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee4f3ddc155095b681bf167f82208570992f3ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee5983a0b111bafbf84a79da8872accd6466bc63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef4a3785a51e4f2e29e2e794669e22f028f6e736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf41504374edb350fac08c75be277ee77c6729f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4ea8ece7fe701b7e484d712095050d148a39081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf76d53de08c53b891e291d870e543bf8a0f6d314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb9378b8ca7897f06b978c5317f5c8b2a0686651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfbfdb5bbeccc4ede5c8cd4c042f4e1b1deaab514` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-234875 | `0x1f1fc659e69318a5f3aab5d69aaad9c9a6245c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53cd014cf5327ab5e9376f85cc780bd8244e699a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-234876 | `0x7575870a62c986e139dde5c99eeb734d126d529f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d4b71e4b8bce638bb9af2108f842ef45bea80e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c198ca2fb89666a49a90c60d7bf1d5a7ff27383` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-234877 | `0xa0820f0934e47d6c191450f47ec6430483d1394e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa28351c8f8ae1ac0748f47f5f3a791e809815207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb501d0e58d6e6790ac1a533108c732f65886a8f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf04aecaacc79ef8fe27216a988398ac1ed87a864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa18e0689ca18b3f9ef37dca4237e4648934712c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1524aa760f33a0974923f2a1f4c58c0fa2ea1de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1a7033a79bc1c90bdff88d69c086d905b6133562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1adfe589b8e91e1a4ab673274bbeb5a1aea51cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x29ab976894815ebf614273647200b30435eedfdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x36f48b1e298e6979d49347b0c263a68cce8629aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x4a1b5c055eb2b3debbe060636236738542121c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x52f61a2eac5377139849d33d9baa6ed295155143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x66449fe1f3ba3196f51b697db39704a396d6b05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x66e0e206ee112635effb925f8c8f1f266e3fddd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x70bb0a4f00655567f2502a6c2ed7aa5e3122fb8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x73caf6f0473523df1754885be6dbba4ef3d6bac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x796dc31e15218285071984cdcbf7fb32c67c56c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8aa2b6162bdf426531b9b34e96a14db27e572e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8f7468029a24aaee5760df0b251fe821ec3d05fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9507a5f87cac64139b8013b1e4cab6734a8d1eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa90b4284ce527958c6f79eb9ce379842f3b784e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb01049402ab2149081fdfe23f3be1348fe0a9c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb18e7cbef267c8a1c880d08766a00aa77b7f93bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb4e761140255296cda780c1653e6393af9aee4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xbeb75359b039d8fb102b58a6a53e045d0475c846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd09ed40a0fbd0dac631c06021da9adc99c4e5eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd1b969b175072ddfedcf583daefa397c0f385d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd2e0690ef709c113186674dcf3ac317e6c206384` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd6b5b7989f546b550cab11b4802a0729a13b152e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd8be087b4068c898f1aed8c2f4bdb6841b9cd039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xda68ad62e0b15241e00c0c6fc8e4a427e8713063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe02e3d4a70aa5d5198857c6e47176ce9cc51d5ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe1bd26564a74e19013f77ddd8d7e547c2efba606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe4f460ab73d5b3cda140a8d94ecdd4ca7a8dd16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe68f89b35dea65f7e1ea377da77dac07446600ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xea3c671572e1b29e64a9f8338fcfcc63e2c9d161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xed38c20954a91964ac240b215a29780144b94100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf1063e843e40579f4f9af972581fb28bb132f8d5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 244
- Live contracts: 6
- Unknown liveness contracts: 238
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=6, unverified unclassified=238

Showing first 200 of 244 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x00fa5d0752dd27080c03653590c366013c8a2c5b` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x01779021cd688f7755648c46c651bf90bfba071d` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0215edeecdabe3dfc5ec8d59337ec9b26d359088` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x02b1a70de2895112623b601ed2e34147dda4b894` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x03ddd87edce8b7abef71abf028e8fd5c47f3964c` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x043e34fc6bc93dd75884ccda5c9918bb1e8e8e2d` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0446b41f6c848e6a539703e65d2a4813f2a2c457` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04d09b7e02ddf336dce971d0cee1620b29618b8c` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x05f50b8fd09a089a6e527df238c23ac12a995bc0` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x063b25423a8d245410b3d0b35447f9d4e93740dc` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x068eb1d48ea474c19f187626f3d6387a13d950da` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x07b6e347a534cdafea2fac265a638cf59e21c843` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0864b99c628df8b7db11430df59c806c08846487` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0926cbd07b823b152f1ef4d9a6ba8425e26de628` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ab2a1baa669d3374cbe3077cb8510aec87d5fea` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ba10b8789dc788f22c266b661fcaded546a9d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0c7dd7f6c6b2ae5403129c8f837aed233254bc22` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0cabda4669dee26817c1efb5f48b2fd6ae55c08f` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0e31e0b37549b76bafe8856a32304a9f944748a6` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f098bc8a588e4271dbdd5508d093501f9e5d5d6` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x100e6b931bf966f1c7e67c78796e6d0fa41f4852` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10d8e18d076825a3b6d32d18845ed83561d5ef49` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x111e641c10fd53bb5b45acbcd8197e3cc76ec108` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1176c3760af6a1dbaa5bbd0cc6cda8a2ed6b785e` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x128f0ca8bf6addef61f9b04f88ad5a2f6087f6c9` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x12ce1cf72bd684d62be0febc0a571e675a38d9b6` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13177d7c0683292e16d4689350412b02528480f7` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1346bb113f85a8f381b5f84739093e8e6c7af117` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13679caf51220c90764aaf2e000bcfd46a517109` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13d64bf518c3e62a398b20ecc60b63c56824d710` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x14a024e6b3416f3dbb5aeec0cec2ca5ab1b65758` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x153417e5f3052d0b115430c4820fdd222f9775a8` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x158e8f91f1f74d22af5940a410998e3f89afc312` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x15c22076663f11953ceb9d9631a7df0cd2bc7f75` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x171e0a99378336711b28a9149a4e3061abc9f69f` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1777f3fa45537981602e67b277f7c3be5949b4f8` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17d7abca021c93900107e2c867adb574323d4824` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17fd8c3d1e0379cf6b1dace21750e624eb9573c2` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x183424d5ae5ec9fd486634bc566d0f75ad9c9109` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x184914bc71dbfd3991eb15a01533fb48bc1b9e4b` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1894c9bd3e255e4f627e98c039e94c7ec6310816` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x19b2a6fdd5315dd87defd7f3e45fd621f433b588` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a0d8e294d590e246c4202205fa7aa9cad53b149` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a7033a79bc1c90bdff88d69c086d905b6133562` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1adfe589b8e91e1a4ab673274bbeb5a1aea51cad` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1b14a9cb3991e7947c9a17dacd4459641ff4f16f` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1bb7c6ed33fb415bdd05683d7f48d6c981f4a7f5` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1e15c24ba774a636d2948c3b9d2dfd937f3a61e9` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2002380e42c749b164f9aed55cbde692f98c399c` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x20d6ce5853e6020822fd5dffdb289c7bb0afa619` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2166a1a3b0f3f1defd4babc4e5e74fa18bab0032` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2172d0d5c925d1b1aace78c6691587bc2216fdb1` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2274977ec549197e517b08a2396da045e4d289af` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x22cd2f0d8020e7887e6ec63a09b412cbe3bc89fd` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x231368d38d25c0a1cfe1c21e72ab564195a0f9c3` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x25384d61dffeda009fdd47411f7fbd251dc1414e` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x25e2da40f0fffedc1a617155ee847ec1e0fdbbb5` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x269e8849296dd6f58f94ef916e4e0e1d3e3391f2` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x28027ec68bc7b84c5c8e2c7d0f8e995f3aaeadb4` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2aa01fde174ab160b4e4f49f152c20d6ec029d67` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ad14a5ce17fb5d06fa6bd42cb99cf90f8b70c58` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b15cc97abe96811eee6bc0b8a569ff6aeca8b3e` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2bf5e2af85b7c3c4c119c1680a488a9cfb01fd1e` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c5c50bf7748742f1839e250d05bd18747e2e916` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2c963cb927e0eb8ee3bf8e58c25302edce70f407` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2edac6d40008f3e4d88efd72bc325286eeb42bf3` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5daf411ec6ce243416ec9250188682c285fc0a76` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7176a0cde52d249dc9da2bd57922a408d71110bf` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b10df8fd2963a35722aa4c8d8e939281fd3c33b` | non_address_book | unknown | unknown | unverified | n/a | `0x00aa367b7692be05e47b9c461ff35410208158b0` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0x015974733e5b667ab40cc54c40a835a5bebf6b8f` | project_anchor | unknown | live | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0x2c8900d6c800f2f5bc8cb0206625152522358d2a` | project_anchor | unknown | live | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0143335afd9f00063332b469e4ba696af487610c` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x03357e5ac12982b9b23554dbbc4d8faeabeeded5` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0589f7846bae4c8553a48a443d276c523c0ce071` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x068846d52b6561dcec92126916cd18cef78959e0` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06d973c594451434bef55f4dcb200e9607e402f8` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0b54bad17669328a1c631b07de13b89f6950e918` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0beeaed10eca71511d54a68d3e1abad31fc59592` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0cb054939f0bb19425f565096138ef4274c8b99a` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ec41c2e4258bd50da56352a641dcdcbb144454a` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0fecacd06304cde4b3b94073f71a52faff8d5410` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x117181d748ff2a31d9ed0dc922a6707b19a033c3` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13f0a184bdd2bab0d2eb8ab15e4b0d871e279976` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x151fcf3b5988aca49d35ea9e61f0e902b67fce28` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17ef94d5cfe9132b205752471322fe1fe271bc1e` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1829e41de38f2ca88e7f86363b2f2a78bdcc8336` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a6290f305b8ddda2357f64df0ed5f4ce6e5432f` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1cd0b44ebc15cf0f034b3776d26be5f0206b8b64` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1dc2ded2fee16c8504fe9b6c7b2e1628f7d7f7eb` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f691ab88b1037245d64b8e62a63162025d863f6` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ff0b5d6a56f8c79bdfef3fbb97a36f214ef40d6` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2093c44950db02ba7f239083154adf5f0e5382ca` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21d95ebcd5069d74c5dc590c31b70fd56dd0318d` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21f9fb0ff0a76389fb60fa4a546ff640c2290033` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2293b36de4ee3e5e15ee8e9bf8496210dd7714ea` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x234f20c21f6bbfbc9dfe4bd3beb5cfac08528f2f` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26d3d9bcbf59f594eca9e8f43c9d2431e43b448f` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x27334b36bfb4d28f934437336485bc14be4b303b` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x277530e9e7510ac6a4a752fbe2fd2b2057e576ba` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a2be0c7af27f9c92c36e7e5f568ed218462a6a8` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a42ae924ce490c627710e8760b1be16bd5eb33b` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ca7c5555f0e12f8c442579db82d7eb64b6486c2` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2d12e92e8bfaa24597a026eedc1430964d11921b` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x321a00b1f10de32b55790dcf34fb7a9c9d5bb405` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34d8d7d0d18f3ee80637f6e639498fa1f09a5fe4` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34da1708ed1697894a1c4a3a55a8c1a5d1eca42f` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x36302c1a41387cbd0a2cf19dcc666277b7b17f13` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x37b2ede059c83c21de78d567e2a04191034deb11` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x387f65583ed10d7755a5a7aad6bd73cfa7ebdb9c` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x38fe701c91ecef72a46c89e967a1edaadc9f5cd9` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x398a7f518bb2dc37127b2b9927dbfb6fbe37be67` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3b04022496db904a29920ddef74842d08e468ade` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3c7a1290ac47080dc79a99a71a75eb938b37f021` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3e8682a6efcaab38c23ae5cd1efb0b17267ab103` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3edb4e21d7247e143fa960e455ae0da5a7ab51f3` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4065ba7127ee8a9b84461f00f81ebd988c47f7de` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x40fe3ce830a0c89b6249ad9afc489e2e5798623f` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x41d8039f04d4a8afd9e6080572af6876e352a2c7` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4243d6b328e5c2aea547945d193134f8ac9a7c57` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x42b3b566c796cd170d475eef22f5f82f736cd764` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43321b406fe8f9f91a02bfdb0c2c686ad36b878e` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4405211cd1d7b25639a18728f025d82fdd808f18` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44ad067ab01888c17ab22782e61308d800043a4a` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44ff76937c3ceee6f5cdb99d65729a0adcee9289` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4522e8c0634db483672d6f65467d7c042a550834` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x45c5d692cc766ee1f6915cc6cdba4b8efb85bcb7` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x45fc2ec7acf229b0b3823bc628b467429745133b` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4668ea2e95e3101b60e10e243528f35d0cb45120` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x47509057f4e6dbe56cab6ddd882e88584ba1a766` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x496d0d895c4bcfd0439608e00fb246091677cdd1` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ca12c4cbdbf94b0e85ac1f08d280e9cc4a75447` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4d823951a8b3a614667e9cabf6948d7d0e73911d` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x50f5d018e3451874fc06d8081d9ada8469dcf0e9` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x52f66b1627ccba17235e61a278da3a2e213a51f2` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x55aa2630d5dada1eafbaf125df2567be2b9c5f1b` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58c856611fced300d6620c26493fc6f340f15d27` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58de2064de5864c4bcdd425b1caec6e3a2746df1` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c2704c4e9d8ead792f32f5b8ed7b22fe25c01d9` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c36ae4152fb94c07a75fd1f78d7f8a92230bc47` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c5f0f81ad759859a1088651ad72eb999d511e43` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5cc372f6a9fd1c53564a81e775b1d906792d908a` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5cd11dd8253a220aa62217aa14559050acba67a2` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5cedd55df119a2706ef373ffa0bfc4bce442e74c` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d4dba7c40a2797a7fceef2db2229e3361e05781` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f5f69a5546581b1f91fe9743edb91f5ebaea52f` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x605d36c00d890f54d1f5b501909297cb8aff5848` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x61ac59f48832258e8953fcf474045f694ad19f3a` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62b287dfe45ed4f6d31233ba97657d63d8da505c` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x62f7919f5808d1a0020639dcbe80e8880f0573c5` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x646974510e5443491bee2e577d33e979c8a7e983` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x646f2a60bfc6f648c81385b0db135f9449285f20` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x659c47c2ab0e07e427e96ba54feaf5a924b1c7b3` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x673b9dc43e4846e20449942e76d8f3b757b43873` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x675f3cb2a0876bb6be5a3d0430b51f8928eaa456` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x67ccd609b1c405db0da924d2507e1dfe0730bce6` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x68c3a0daf05464bc8c1f099074fd537e2b77b5a0` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x68e8ea715892cbace7ad94d8bd12a81b567c3f2d` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6cb3393437321bf8ca26792da6cdebb46041dbfd` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6db87895b462a3be1081c6fc0ded2b3ff92730dc` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7074cc466b5f2eb7889f43270ad905af34e889fa` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7262c58e52a1ecdd40cac1706a8eb2cb408ab60f` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x73221077fe7cae6cd7a615178f3a79c13326ade8` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x73399e649d25666aad0ddbceef58400236ed00f8` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x75845a5e08afdb5f670b056d2bf17aa47ade0f14` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x75f8c8f3d4ed14e1e1a1adf4cb1aea77a289c5a7` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x76a0a5c58b8c4925661ddd1e11faa734c00d24fe` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x788f57c189f37a595066e1e92d213b6b904746be` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x792cc52cbc7eccea237777bb763431ed61f7dd90` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79729710b22eaf1fbcbd7d30c879e1bd4f1ebd2c` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79e7a6b4f32b5d7b3eeab05588ac4879cbd585e9` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7cf7b9d2976622a6778e294edf12e6e68da41428` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7e5c6d2ff64aaa85c83097438de44d0f4b5a0bbf` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f115fcb6c91f42603e232d954eba0c16b94f8bd` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x814ed4dfd2db134d2c1258c4019ccac52a42a3c4` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x82f697013fe6deee9eee445937af93ce61f22d5d` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x835af0c99546dc0d1eeeae287c6d74606ac992bd` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8385734a756495d45701169aa9af03c8339312de` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x83bd7eae08ce2a84c9b5c37351627512157164ca` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x857137d6a0e2e9a0178c0746801e34d0dcc7a146` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x85d0230bad37055a9c4949b1405b17633ca653a1` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x866d31bf2e3b6bf152b2f8a51807219581324a7c` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x882fa49b9c09808ef15a79a3fc968e1742e764ee` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89a5b29ac11084b94ac68fcd0ee96dd86d3ec453` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89f01ceb8b559122efe44679df5faac8390042d3` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8a157fbd58aedd6f13b3fd0583dc0f641f5907e1` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c027d21b0696e9784e97b909694bdabb34353ce` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c7c291e78d1fb0b508c8f4c9990e05c5dfabe4b` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8cd533d0af56e46c3d4fe213582a1a6fe2470166` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f159ec1a5da7b89ddabc148d77d6b0d1ed7a55d` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f83dc933e1fd59c4bd9612c413fd0768e7b2789` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x905d32789bc34fcb8902f55987e47c2bae1df4d7` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x92c50d3ddb853d9084ea52ba66e341cb0964bd4a` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9360405ce055be11a33266698b5486d8e1a33a29` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x955d7ef502d820bb6b1754b1e5a092f0060dffae` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x957fbb0e3edde979becc7e7e4fcc2d8864d68738` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x971b0b17813dec1e1b882b22bd4b1df1748c9850` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x977280c639ad939bda2d2839ee4ad43d9e22190d` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x988c53c5d373f1259faa099f8040430849ec333a` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x98c32e2e0320c44f2106eace3386fdc87f44a623` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c4a8347862fdb87f407a528724eca22d14db0a2` | non_address_book | unknown | unknown | unverified | n/a | `0x718c68764b0aecd0f2314dca536c633a5577498a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/d2](https://paladinsec.co/projects/d2) | Paladin | Audit | 2023-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 88 | n/a |
| [2025-02-24-cyfrin-d2-v2.1.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-02-24-cyfrin-d2-v2.1.pdf) | Cyfrin | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1850] paladinsec.co/projects/d2 — matched: No reason recorded
- [1851] 2025-02-24-cyfrin-d2-v2.1.pdf — no match: Extracted 16 contract names from the audit scope section and file paths. Audit date is from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/d2 | 1InchLimitOrder_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1InchLimitOrder_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1InchLimitOrder_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1InchLimitOrder_Storage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1InchSwap_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1Inch_Swap_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | 1Inch_Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Aave_Lending_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Aave_Lending_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Aave_Lending_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | AccessControl | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | AccessControlInternal | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Common_Storage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_LP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_LP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NFTPool_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NFTPool_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NFTPool_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NitroPool_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NitroPool_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_NitroPool_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Storage_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Storage_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Swap_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Swap_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_V3LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Camelot_V3Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQStaking | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQToken | own contract | DSQToken (selected) `0xdb0c6fc9e01cd95eb1d3bbae6689962de489cd7b` — deployed 2023-02-12 23:49:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/d2 | DSQ_Common_Roles | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQ_Rescue_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQ_Rescue_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DSQ_Trader_Storage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondBase | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondBaseStorage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondFallback | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondReadable | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondWritable | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | DiamondWritableInternal | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | ERC165Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | ERC165BaseInternal | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_GLP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_GLP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_GLP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_OrderBook_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_OrderBook_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_OrderBook_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_PositionRouter_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_PositionRouter_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_PositionRouter_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_Swap_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_Swap_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | GMX_Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Common_Storage | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_LP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_LP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Options_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Options_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Options_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Rewards_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Rewards_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Rewards_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Storage_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Lyra_Storage_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | NFTStaking | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | OwnableInternal | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | Router | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StakingRewards | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyARB | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyDiamond | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyETH | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyGLP | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | StrategyGM | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_LP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_LP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Legacy_LP_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Legacy_LP_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Legacy_LP_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Swap_Base | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Swap_Cutter | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderJoe_Swap_Module | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | TraderV0 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | VaultV1 | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | esDSQStaking | unmatched — not counted | — | — | no |
| paladinsec.co/projects/d2 | esDSQToken | unmatched — not counted | — | — | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Aave | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Bera | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Camelot | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | D2 | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Dolomite | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | GMXV2 | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | IDolomite | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Inch | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Pendle | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Silo | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Trader | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | WETH | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | D2OFT | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | VaultV0 | ambiguous — not counted | VaultV0 (alternative) `0xd0db54d54e227584563226206e0f74a7e4ef54af` — deployed 2022-12-30 03:20:32+03 — liveness: live (current_address_book_code)<br>VaultV0 (alternative) `0xbe68c8b9fce054fedcf605b5c0f2c373505f407a` — deployed 2023-03-07 06:45:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-02-24-cyfrin-d2-v2.1.pdf | VaultV3 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xbe68c8b9fce054fedcf605b5c0f2c373505f407a` | VaultV0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd0db54d54e227584563226206e0f74a7e4ef54af` | VaultV0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 356 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 103 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [1851] 2025-02-24-cyfrin-d2-v2.1.pdf

Fork inheritance lineage and inherited audits are included when available.
