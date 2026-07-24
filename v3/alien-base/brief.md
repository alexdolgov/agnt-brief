# Agentic Audit Brief: Alien Base

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DECLINING - TVL dropped 39.5% over 90 days

## Project Overview

- Project: Alien Base (`alien-base`)
- Website: [https://alienbase.xyz/](https://alienbase.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 67 unique implementations (115 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,336,181.00
- On-chain TVL (included contracts): $2,020,491.49
- TVL by chain: Base $2,020,491.49

## Project Description

This brief describes the observed EVM deployment and audit surface for Alien Base. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base. Structural roles: 7 supporting, 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (7), core (6), unclassified (1)
- Contract kinds: contract (14)
- Detected standards: erc20 (4), multicall (4), ownable (4), erc20permit (3), erc165 (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (10), uniswap-v3 (5), uniswap-v2 (3), boringcrypto (2), solmate (2), uniswap (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2d5dd5fa7b8a1bfbdbb0916b42280208ee6de51e`, chain 8453)
- UnnamedContract (`0x3e84d913803b02a4a7f027165e8ca42c14c0fde7`, chain 8453)
- AlienBaseToken (`0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4`, chain 8453)
- BasedDistributorV2 (`0x52eaecac2402633d98b95213d0b473e069d86590`, chain 8453)
- BunniHub (`0xdc53487e2a6ef468260bc938f645f84caaccac6f`, chain 8453)
- BunniToken (`0x053d11735f501199ec64a125498f29ed453d27a4`, chain 8453)
- BunniToken (`0x176ca19007b1e2c9d85b8ecd68f89bb7f8a208f0`, chain 8453)
- BunniZap (`0x6947da282e447a2e9d65ff00aaf80efb5116d75d`, chain 8453)
- EsProxyMaster (`0xd3968a4a07d64c6e16982d45191b9a09a261ec88`, chain 8453)
- EsToken (`0xe1afc637f41e05efe08d55296a2ccff0072a4587`, chain 8453)
- NonfungiblePositionManager (`0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5`, chain 8453)
- SmartRouter (`0xb20c411fc84fbb27e78608c24d0056d974ea9411`, chain 8453)
- UniswapV2Router02 (`0x3485f8e155973cc247cbea9e77c0dbbb4bbb79e7`, chain 8453)
- UniswapV2Router02 (`0x8c1a3cf8f83074169fe5d7ad50b978e1cd6b37c7`, chain 8453)
- UniswapV3Factory (`0x0fd83557b2be93617c9c1c1b6fd549401c74558c`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 16 of 67 unique; 51 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 67
- Raw deployments: 115
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,874,177.28
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,874,177.28 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlienBaseToken | token | project_anchor | own_supporting | 0 | base | unit-226187 | `0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbcd27a437ebe92555cee6b5bbeddac639a1b6fcb` | ⚠️ Unaudited |
| AlienbaseLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4384dcf974769f2e0e52cde92b6d5fc9be5248ff` | ⚠️ Unaudited |
| AlienbaseZapV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0808b8e2bdd70d70e540f977cf40e26e5811054` | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-226191 | `0x52eaecac2402633d98b95213d0b473e069d86590` | ⚠️ Unaudited |
| BunniHub | unknown | project_anchor | own_supporting | 0 | base | unit-226195 | `0xdc53487e2a6ef468260bc938f645f84caaccac6f` | ⚠️ Unaudited |
| BunniHubA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1fac4f51457e4a6d35bdc7311718e5d6de92bb9` | ⚠️ Unaudited |
| BunniHubController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bcc584979817219585b6a62a5bb6c15c1fa0f38` | ⚠️ Unaudited |
| BunniLensV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x1733c3043e4964736aafe8660ecc481edf339c44`; base `0x3ceb26bb6ad94f2dfdd98f10cb4d6caf02bec9dc`; base `0x519989b846d81b1ee793637b85cfa8a7906a3014`; base `0x8fcd066d9507c02512972673d805a15aa55031c2`; base `0xe8b5b213d2d3bacbe94a10655adb46af354d7e87`; base `0xf71e5e59f762b1d13e3797d24bf0c8986a05b621` | ⚠️ Unaudited |
| BunniToken | token | project_anchor | own_supporting | 0 | base | unit-226183 | `0x053d11735f501199ec64a125498f29ed453d27a4` | ⚠️ Unaudited |
| BunniToken | token | project_anchor | own_supporting | 0 | base | unit-226186 | `0x176ca19007b1e2c9d85b8ecd68f89bb7f8a208f0` | ⚠️ Unaudited |
| BunniZap | adapter | project_anchor | own_supporting | 1 | base | unit-226197 | `0x6947da282e447a2e9d65ff00aaf80efb5116d75d` | ⚠️ Unaudited |
| BunniZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77c18d8aea11147b65d9e3ee7b3a9e89910ab7f0` | ⚠️ Unaudited |
| BurnableTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5a7a624f4c11f581eb5a2b12e9bca327f692c79` | ⚠️ Unaudited |
| CarbonController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0d6e297a73016b437caae65bfe32c59803b215d0`; base `0xe3763886bf91d5466b416b37fdf2b6337897716e` | ⚠️ Unaudited |
| CarbonController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec5c5c0c88fd517d1d2585ba2c49b10881b5a561` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: base `0x016874be39f6780d72599fc9b07873e47d108e26`; base `0x052916740d97a2e9d5668bbee813317dbcd19d10`; base `0x19f3d2185fafb68b3a992fca4e8d05508e9ea64e`; base `0x2c629a508845d4ee23ed29ccb50e4aea691f6766`; base `0x3d4444e684e65e1aed9715979fb207bcf0987919`; base `0x41ad2dd0bd3bf54f4acbf97013ad40b6b32b35aa`; base `0x4eb1574cf739d3524e55274f8ebf0530b4a97024`; base `0x970079ab37b5837b4096b43a146e96ff0070be51`; base `0xb28b0a7b01f170bd1617a4277222741919b19080`; base `0xb329511948b8f7ae590242de0790050d1423c74f`; base `0xb772cb2d5bdb65140d3aea3e4ed5bd1afb8386a0`; base `0xbdd085f6bd74b1b5c911d6f11df44744214d5ef1`; base `0xbe9e352d555a4f13fc0206c72673e18292bc1577`; base `0xc0bf69c8f9307b0959804849ea07a1f90fbe382a`; base `0xd46949221703e0d7073b5e592eecc7a8d18dff6d`; base `0xe271590b7360db5e66181f804023d76e6afb910c`; base `0xfb702210a0b59aa00097a2e9fd431aa585d8dfa8` | ⚠️ Unaudited |
| DistributorController | operational_periphery | project_anchor | own_supporting | 0 | base | unit-226185 | `0x16f1f80654f2fea97293321675907cfa2e23e4fb` | ⚠️ Unaudited |
| DistributorController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x68e143d9754a244f5dce5a66e86492ea98e1c68c`; base `0xb71cc2eee5b23dbe4934ba7277570aa06177b60e` | ⚠️ Unaudited |
| EsComplexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x3923820118a3b654644d31653bcc650f655c43a6`; base `0x3aa57f8a8fac29ce6897212ba950ea433b30b211`; base `0x3f42d7254ed785951885a30e3e86ac1c32252811`; base `0xa720c17b2e5e5a03dcd98c4bf904135256395117`; base `0xbbd0cb9d847a087e778901cc25cd601e6f11210e` | ⚠️ Unaudited |
| EsProxyMaster | unknown | project_anchor | own_supporting | 0 | base | unit-226194 | 2 deployments: base `0xd3968a4a07d64c6e16982d45191b9a09a261ec88`; base `0xfea31de4ba3e90855aa88a8f19a1234e8cde63d9` | ⚠️ Unaudited |
| EsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x1a18d238b0f43edaa68640f3f537d229e23c5af2`; base `0x365c6d588e8611125de3bea5b9280c304fa54113`; base `0x3d3a5ad6d7beab234d7f0338a01e62b1d36d8ea0`; base `0x4a023efe4b5cd304e800f29074186164fda36978`; base `0x5c9054a94eeeb147f5bc4550e2d918eac68c5e66`; base `0x93d590335c2cb13bb0581b771770b1982a8f529b`; base `0xccb48874fdb042497520f982e581994034c0a124`; base `0xe2204e0f54c0834ead587bbd3aa2095f37213ac8` | ⚠️ Unaudited |
| EsToken | token | project_anchor | own_supporting | 0 | base | unit-226196 | `0xe1afc637f41e05efe08d55296a2ccff0072a4587` | ⚠️ Unaudited |
| EsTokenController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x154d41a96ad37570a2ad6849063d0b480da1ea99`; base `0x2de715d04579535b2005a2057455b3cfcb7f60dc`; base `0x95ff6591b17befd31d4b899dbe3177d05c2d2819`; base `0x9e27f316f7d6587be00a3105b26621bfee82ac6e`; base `0xf4eb75f940e8d0e6dbee094a7dd9768d25da644a`; base `0xf6c0db9e2f0a137c9c4cba82090dd25c86ecdb94` | ⚠️ Unaudited |
| EsVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3f8d116e99bce42b38989a62394fa9bb532dddc1`; base `0xd3cfcb52ec5715652c5096bdf99ea078c4df2e7b` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ab9070b7680f802cbf8322e597a4409902171e5` | ⚠️ Unaudited |
| LPToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf13556f6181971a23395ec21dce2543bdc2633a` | ⚠️ Unaudited |
| MintableTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a9668c2c6e1fb107021375bacd9d92e79cc8369` | ⚠️ Unaudited |
| MintBurnTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x872521b46095139e70a38ae3e8d95611649aaf51` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa54844d419d18c4a1d399ad04282415cf2c4fde6` | ⚠️ Unaudited |
| NFTDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98bbb71f059f228e7f643ad041b333006bbdedbd` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-226199 | `0xb7996d1ecd07fb227e8dca8cd5214bdfb04534e5` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25225c45912e8d3126b8cfc9257ef430b1b8d9d6` | ⚠️ Unaudited |
| PredictionETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbe87ee1ee62244a2df80a8093eab829c52863e8` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xe23f656562d56fed9a2650a3e51a2b60124528c1`; base `0xe49273edd71f3bb7b45df8166fbc955c1ae704b4` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x353b1bea22dd3b41c0fc529cf72d829f9493b23a` | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bc1a70875d109e3ad07e21ffd3412cd402a1a16` | ⚠️ Unaudited |
| SimpleERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fc786fda48a24c9ecdbf6409f9709aa8a62d1af` | ⚠️ Unaudited |
| SimpleTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b01457255bd6ec460d9ab8f31cfabd8a710d176` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 1 | base | unit-226198 | `0xb20c411fc84fbb27e78608c24d0056d974ea9411` | ⚠️ Unaudited |
| StableSwapViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3db0bc1987427a3ac34518c8968efdd4f9c28d29` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27223e5bfd4ba5934b6fb850db8c3ec2abbd1ef6` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x410d28fbcd00c677bae1cce2261546c8db4f6a2d`; base `0x927860797d07b1c46fbbe7f6f73d45c7e1bfbb27` | ⚠️ Unaudited |
| TaxTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x13de15f0c5e8cc78ad3a7001ba2cb882aae96373`; base `0x1b2468af57518dbfaffa94c54619090b7eddb484`; base `0x9f36431ff85072168e0e5e9980e5297f8e922c9f`; base `0xcbac7772bdb35ab605a030612849aedba2068436` | ⚠️ Unaudited |
| TickLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3b6a547495c84a039d70a81178496220b5fbd8e` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c7e4284423c1a2362c49b1ea223b73e38c81e21` | ⚠️ Unaudited |
| TokenGenerator | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbce75497d72b25c3509b62ae1a47ccfb502ad08d` | ⚠️ Unaudited |
| TokenLock | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x329efd924d39d7916023517b2b3c928dddbf8b0c` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | base | unit-226189 | `0x3485f8e155973cc247cbea9e77c0dbbb4bbb79e7` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | base | unit-226193 | `0x8c1a3cf8f83074169fe5d7ad50b978e1cd6b37c7` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | base | unit-226184 | `0x0fd83557b2be93617c9c1c1b6fd549401c74558c` | ⚠️ Unaudited |
| UniversalDistributorController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62d58b4cdd96b590ff4174e272b5f41693c8fba9` | ⚠️ Unaudited |
| VestingFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x77ec0394e4edea1997bdb1919bb354d880faed84`; base `0xf61cc1aedd072784d8f133ba9409c538cfc9453d` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2f3b0d35830b921fe7fcd08401c6cbbe29a72dc9`; base `0x8377244a3521ff658e008df0dd40b50ca3ce534c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x293be4ee731ce9ccfa007aad4c0e4da8aa1b5220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226188 | `0x2d5dd5fa7b8a1bfbdbb0916b42280208ee6de51e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226190 | `0x3e84d913803b02a4a7f027165e8ca42c14c0fde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c0b9fc00c4852b0b6070b00af03843ec9444cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x783898572ef4970d445ad9af95d5dfdb633843ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7920fbf3b05d49edf62c03e43e2982bef2fea013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ca63e82b203011a7149f78f5480609fce6dae7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e1c243eaf95943c9c2152d4ae02d5e2e55b846a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa52632a038bdb4d943a61709981cc41767c2c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb931894cae0055cab7ebc077ffeb71051c2884f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd97c8f2a950d3a77a8f776cc9abf932adb84ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd54a92d5612daa6d70c0f46fa7a374b483aeb5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf78ac4a524205603b4ef9135942219400cc20ff5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 74
- Live contracts: 2
- Unknown liveness contracts: 72
- Source-verified contracts: 63
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=1, candidate review=13, source verified unclassified=49, unverified unclassified=11

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | EsToken<br>`0xe1afc637f41e05efe08d55296a2ccff0072a4587` | project_anchor | token | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | DistributorController<br>`0x16f1f80654f2fea97293321675907cfa2e23e4fb` | project_anchor | operational_periphery | live | verified | review: no_fresh_structural_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | DistributorController<br>`0x68e143d9754a244f5dce5a66e86492ea98e1c68c` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | DistributorController<br>`0xb71cc2eee5b23dbe4934ba7277570aa06177b60e` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsToken<br>`0x1a18d238b0f43edaa68640f3f537d229e23c5af2` | non_address_book | token | unknown | verified | review: missing_independent_ownership_evidence | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsToken<br>`0x5c9054a94eeeb147f5bc4550e2d918eac68c5e66` | non_address_book | token | unknown | verified | review: missing_independent_ownership_evidence | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsToken<br>`0x93d590335c2cb13bb0581b771770b1982a8f529b` | non_address_book | token | unknown | verified | review: missing_independent_ownership_evidence | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsToken<br>`0xccb48874fdb042497520f982e581994034c0a124` | non_address_book | token | unknown | verified | review: missing_independent_ownership_evidence | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsToken<br>`0xe2204e0f54c0834ead587bbd3aa2095f37213ac8` | non_address_book | token | unknown | verified | review: missing_independent_ownership_evidence | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsTokenController<br>`0x95ff6591b17befd31d4b899dbe3177d05c2d2819` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsTokenController<br>`0x9e27f316f7d6587be00a3105b26621bfee82ac6e` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsTokenController<br>`0xf4eb75f940e8d0e6dbee094a7dd9768d25da644a` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | EsVoting<br>`0x3f8d116e99bce42b38989a62394fa9bb532dddc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| candidate review | LPToken<br>`0xcf13556f6181971a23395ec21dce2543bdc2633a` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | AlienbaseLottery<br>`0x4384dcf974769f2e0e52cde92b6d5fc9be5248ff` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | AlienbaseZapV1<br>`0xe0808b8e2bdd70d70e540f977cf40e26e5811054` | non_address_book | adapter | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | BunniLensV2<br>`0x1733c3043e4964736aafe8660ecc481edf339c44` | non_address_book | periphery | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | BunniLensV2<br>`0x519989b846d81b1ee793637b85cfa8a7906a3014` | non_address_book | periphery | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | BunniLensV2<br>`0x8fcd066d9507c02512972673d805a15aa55031c2` | non_address_book | periphery | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | BunniLensV2<br>`0xe8b5b213d2d3bacbe94a10655adb46af354d7e87` | non_address_book | periphery | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | BurnableTokenFactory<br>`0xf5a7a624f4c11f581eb5a2b12e9bca327f692c79` | non_address_book | registry | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | CarbonController<br>`0xe3763886bf91d5466b416b37fdf2b6337897716e` | non_address_book | governance | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | CarbonController<br>`0xec5c5c0c88fd517d1d2585ba2c49b10881b5a561` | non_address_book | governance | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0x016874be39f6780d72599fc9b07873e47d108e26` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0x19f3d2185fafb68b3a992fca4e8d05508e9ea64e` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0x2c629a508845d4ee23ed29ccb50e4aea691f6766` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0x3d4444e684e65e1aed9715979fb207bcf0987919` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0x41ad2dd0bd3bf54f4acbf97013ad40b6b32b35aa` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0x4eb1574cf739d3524e55274f8ebf0530b4a97024` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0x970079ab37b5837b4096b43a146e96ff0070be51` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0xb28b0a7b01f170bd1617a4277222741919b19080` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0xb772cb2d5bdb65140d3aea3e4ed5bd1afb8386a0` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0xbdd085f6bd74b1b5c911d6f11df44744214d5ef1` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0xbe9e352d555a4f13fc0206c72673e18292bc1577` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0xc0bf69c8f9307b0959804849ea07a1f90fbe382a` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0xd46949221703e0d7073b5e592eecc7a8d18dff6d` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0xe271590b7360db5e66181f804023d76e6afb910c` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ComplexRewarderPerSecV4<br>`0xfb702210a0b59aa00097a2e9fd431aa585d8dfa8` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | EsComplexRewarder<br>`0xa720c17b2e5e5a03dcd98c4bf904135256395117` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | EsProxyMaster<br>`0xfea31de4ba3e90855aa88a8f19a1234e8cde63d9` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | MintableTokenFactory<br>`0x6a9668c2c6e1fb107021375bacd9d92e79cc8369` | non_address_book | registry | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | MintBurnTokenFactory<br>`0x872521b46095139e70a38ae3e8d95611649aaf51` | non_address_book | registry | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | MixedRouteQuoterV1<br>`0xa54844d419d18c4a1d399ad04282415cf2c4fde6` | non_address_book | periphery | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | NFTDescriptor<br>`0x98bbb71f059f228e7f643ad041b333006bbdedbd` | non_address_book | token | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | NonfungibleTokenPositionDescriptor<br>`0x25225c45912e8d3126b8cfc9257ef430b1b8d9d6` | non_address_book | token | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | OptimizedTransparentUpgradeableProxy<br>`0x0d6e297a73016b437caae65bfe32c59803b215d0` | non_address_book | governance | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | OptimizedTransparentUpgradeableProxy<br>`0x2f3b0d35830b921fe7fcd08401c6cbbe29a72dc9` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ProxyAdmin<br>`0xe23f656562d56fed9a2650a3e51a2b60124528c1` | non_address_book | governance | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | ProxyAdmin<br>`0xe49273edd71f3bb7b45df8166fbc955c1ae704b4` | non_address_book | governance | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | QuoterV2<br>`0x353b1bea22dd3b41c0fc529cf72d829f9493b23a` | non_address_book | periphery | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | RandomNumberGenerator<br>`0x0bc1a70875d109e3ad07e21ffd3412cd402a1a16` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | SimpleERC20<br>`0x8fc786fda48a24c9ecdbf6409f9709aa8a62d1af` | non_address_book | token | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | SimpleTokenFactory<br>`0x3b01457255bd6ec460d9ab8f31cfabd8a710d176` | non_address_book | registry | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | StableSwapViewer<br>`0x3db0bc1987427a3ac34518c8968efdd4f9c28d29` | non_address_book | periphery | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | SwapDeployer<br>`0x27223e5bfd4ba5934b6fb850db8c3ec2abbd1ef6` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | TaxTokenFactory<br>`0x13de15f0c5e8cc78ad3a7001ba2cb882aae96373` | non_address_book | registry | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | TaxTokenFactory<br>`0x1b2468af57518dbfaffa94c54619090b7eddb484` | non_address_book | registry | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | TaxTokenFactory<br>`0x9f36431ff85072168e0e5e9980e5297f8e922c9f` | non_address_book | registry | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | TaxTokenFactory<br>`0xcbac7772bdb35ab605a030612849aedba2068436` | non_address_book | registry | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | TickLens<br>`0xe3b6a547495c84a039d70a81178496220b5fbd8e` | non_address_book | periphery | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | TimelockController<br>`0x1c7e4284423c1a2362c49b1ea223b73e38c81e21` | non_address_book | governance | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | TokenLock<br>`0x329efd924d39d7916023517b2b3c928dddbf8b0c` | non_address_book | token | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| source verified unclassified | Voucher<br>`0x8377244a3521ff658e008df0dd40b50ca3ce534c` | non_address_book | unknown | unknown | verified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0x293be4ee731ce9ccfa007aad4c0e4da8aa1b5220` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0x4c0b9fc00c4852b0b6070b00af03843ec9444cd2` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0x783898572ef4970d445ad9af95d5dfdb633843ee` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0x7920fbf3b05d49edf62c03e43e2982bef2fea013` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0x8ca63e82b203011a7149f78f5480609fce6dae7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0x9e1c243eaf95943c9c2152d4ae02d5e2e55b846a` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0xaa52632a038bdb4d943a61709981cc41767c2c24` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0xb931894cae0055cab7ebc077ffeb71051c2884f3` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0xbd97c8f2a950d3a77a8f776cc9abf932adb84ce2` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0xd54a92d5612daa6d70c0f46fa7a374b483aeb5bb` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |
| unverified unclassified | UnnamedContract<br>`0xf78ac4a524205603b4ef9135942219400cc20ff5` | non_address_book | unknown | unknown | unverified | n/a | `0xdd3705a1c50fc84b6d31394aa8f4d568b98a8ad5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x1dd2d631c92b1acdfcdd51a0f7145a50130050c4` | AlienBaseToken | token | $1,874,177.28 | Verified native implementation with $1,874,177.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x52eaecac2402633d98b95213d0b473e069d86590` | BasedDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdc53487e2a6ef468260bc938f645f84caaccac6f` | BunniHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x053d11735f501199ec64a125498f29ed453d27a4` | BunniToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x176ca19007b1e2c9d85b8ecd68f89bb7f8a208f0` | BunniToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x16f1f80654f2fea97293321675907cfa2e23e4fb` | DistributorController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd3968a4a07d64c6e16982d45191b9a09a261ec88` | EsProxyMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe1afc637f41e05efe08d55296a2ccff0072a4587` | EsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb20c411fc84fbb27e78608c24d0056d974ea9411` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 10 |
| standard_library | 5 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
