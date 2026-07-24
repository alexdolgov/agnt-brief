# Agentic Audit Brief: Eventum Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Eventum Bridge (`eventum-bridge`)
- Website: [https://evedex.com/en-US/](https://evedex.com/en-US/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 91 unique implementations (128 raw deployments)
- Coverage basis: 4/23 confirmed own live verified implementations (17.4%); conservative 17.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,518,168.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Eventum Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 40 contract row(s) across arbitrum, ethereum. Structural roles: 23 unclassified, 7 core, 7 supporting, 3 infra. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 40
- Structural roles: unclassified (23), core (7), supporting (7), infra (3)
- Contract kinds: contract (40)
- Detected standards: erc1967proxy (9), ownable (1), pausable (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 12

## Fork Analysis

1 of 41 contracts are derived from known codebases. 40 contracts have no detected origin.

### Forked Contracts

**Storage** (`0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c`, chain 42161)
Origin: rocket-pool (`0x1d8f8f...e0fa46`)
Containment: 53.3% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- addUint(bytes32,uint256)
- confirmGuardian()
- confirmWithdrawalAddress(address)
- deleteBytes32(bytes32)
- getBytes32(bytes32)
- getDeployedStatus()
- getGuardian()
- getNodePendingWithdrawalAddress(address)
- getNodeWithdrawalAddress(address)
- setBytes32(bytes32,bytes32)
- setDeployedStatus()
- setGuardian(address)
- setWithdrawalAddress(address,address,bool)
- subUint(bytes32,uint256)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2880ab155794e7179c9ee2e38200202908c17b43`, chain 1)
- UnnamedContract (`0x02c07b166af23bb3524df42a49a4e3947d5908f1`, chain 42161)
- UnnamedContract (`0x071360b37f6db934f857e6b33ad705feee63be14`, chain 42161)
- UnnamedContract (`0x08e9dc0b2e6bfc193a1a593ba14f4f5c9f11f424`, chain 42161)
- UnnamedContract (`0x0977a7e7c25fdd7b40686f068abe28431393b39d`, chain 42161)
- UnnamedContract (`0x10417734001162ea139e8b044dfe28dbb8b28ad0`, chain 42161)
- UnnamedContract (`0x13fb7b0342efc4471b80655ae98ff94f998e8357`, chain 42161)
- UnnamedContract (`0x16a4f9904e222d298ac71aa3e3bd5c19b902c595`, chain 42161)
- UnnamedContract (`0x225a859861134a85f705c03d4a956aabef2f3594`, chain 42161)
- UnnamedContract (`0x22839de35030139d5c7a48f45e703d5204586606`, chain 42161)
- UnnamedContract (`0x4e682602ee3cf8550bc4fee46f50cc0c0a41b116`, chain 42161)
- UnnamedContract (`0x58c6f3ece1bd333a88fc74cd71b35a3b8ab841ff`, chain 42161)
- UnnamedContract (`0x5bc15d8cf905d87c680fb1383247503e228abf68`, chain 42161)
- UnnamedContract (`0x62be54317d68393d1e1ae1cd79958bd6891748a7`, chain 42161)
- UnnamedContract (`0x93244b494ca63588516ff0b3b25a09d79e9e5a3c`, chain 42161)
- UnnamedContract (`0xaebf6caf33d362f3f104b240e6a9a60d3be31969`, chain 42161)
- UnnamedContract (`0xb54d6207365a8cd40a90f880b2f61d931af7d6e8`, chain 42161)
- UnnamedContract (`0xb5e5693ef17192721f832142ee7add9f0bdab267`, chain 42161)
- UnnamedContract (`0xc9905e14303ef91adeca8e11cf7d5ac0edee38a7`, chain 42161)
- UnnamedContract (`0xdbb435e9ed5096006eaae14f99775d12cca645d9`, chain 42161)
- UnnamedContract (`0xe8b4c9a1499f3c28cbc0dceb3fa5850537bfcbb6`, chain 42161)
- UnnamedContract (`0xf22a4778d6240751e98692b3fb16058da413f2a8`, chain 42161)
- UnnamedContract (`0xf911c309b851db55b97f4e2c7599a3733c2dac69`, chain 42161)
- UnnamedContract (`0xff1968ae4f91efccf4d5cef823eecd46fbe114c3`, chain 42161)
- UnnamedContract (`0xff1a0f4744e8582df1ae09d5611b887b6a12925c`, chain 42161)
- BridgeMiddlewareV2 (`0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9`, chain 42161)
- ClonableBeaconProxy (`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`, chain 42161)
- FiatTokenProxy (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- MinimalProxyFactory (`0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057`, chain 42161)
- MinimalProxyFactory (`0x99be07778acd2e8118486eeb6281366eaf52977a`, chain 42161)
- RollupProxy (`0xd226bd8d36725f4ce12961370211dfeeef1abbbc`, chain 42161)
- TransparentUpgradeableProxy (`0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a`, chain 42161)
- TransparentUpgradeableProxy (`0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe`, chain 42161)
- TransparentUpgradeableProxy (`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`, chain 42161)
- TransparentUpgradeableProxy (`0x8696d32899e59f8a2ed76463cc0a0b07e56db025`, chain 42161)
- TransparentUpgradeableProxy (`0x8d21dfea9231db85dce72b8d9f18e917d833d4b1`, chain 42161)
- TransparentUpgradeableProxy (`0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296`, chain 42161)
- TransparentUpgradeableProxy (`0xad3026961087eccec0508d411bb9fb405e086b38`, chain 42161)
- TransparentUpgradeableProxy (`0xec32bd08faf9533371384ad13045116930dbc040`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 40; live-surface rows included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 47/94 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/23 (17.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 47 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 49
- Confirmed-live implementations: 47 of 91 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/46
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 91
- Raw deployments: 128
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 4 | 8.7% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BadgeV1 | unknown | project_anchor | own_supporting | 15 | arbitrum | unit-239762 (15 proxies) | 15 deployments: arbitrum `0x026968b5ced079eccd6cc78f35a5dfddc13f9af8`; arbitrum `0x1fdf833556d012a7799b22a83bd392e1dc961c01`; arbitrum `0x21f69c75d757164137044b235663fec8bec404e5`; arbitrum `0x372a183192d9f9e978a1c826bc4d3568a2b7b3f8`; arbitrum `0x4b2f4f777e043b470dae9a1bea4874f4be13c2bf`; arbitrum `0x6a457a01b412dfc29c7f48fbdd7cbb35ff7ca3a2`; arbitrum `0x6c015bf728e36712a30f8ab49659a8045ad812e0`; arbitrum `0x77075c627e51145d54e4edd54afa169da7ff8a17`; arbitrum `0x86dc076bc83044eebb99a03015b9e130d72e6197`; arbitrum `0x948c634086661bda90cd15246ea4fe98b03530a2`; arbitrum `0xa4fbdd48970e4e409da9169767d6b7646b7f6880`; arbitrum `0xc6bc0e2dac704dc823678b78be82d3ce1240ecfd`; arbitrum `0xdac651f7a8eef6cb39106a3fc10227cc3cc63dfd`; arbitrum `0xdb5ea5e5f03a99c6bf4003ab4220d4a293f0586f`; arbitrum `0xdef2dd8108a0db6bf94c47dff49c659671c697de` | ✅ Audited |
| BurnRegistryV1 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239763 | `0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c` | ✅ Audited |
| GovernorMultisig | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239744 | `0xeb71a9c02c1f68a9d7004e74e17c7d62c3291bf8` | ✅ Audited |
| TreasuryV1 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239760 | `0x0a9591c64fd9e8c1f9a81db1b668a5f211b5735a` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aeWETH | token | project_anchor | own_supporting | 1 | arbitrum | unit-239758 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-239754 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ⚠️ Unaudited |
| BadgeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 5 deployments: arbitrum `0x0507389b4cbb043e6d0137b70c40fc2be483919b`; arbitrum `0x6b25e2f731aae133caa12e43fbe89ec6aaca402e`; arbitrum `0x7101f6810ee5af89bc669aff7684e3f3bf30d568`; arbitrum `0xb8d4b99b8af66acf4901e44e0b4446ba88fb2945`; arbitrum `0xbe0a8fb9f5943f547d0a3dc06ee5e478c76dda52` | ⚠️ Unaudited |
| BadgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1750e2c9c7e57652ae9f1d5df29cbee967bb892b` | ⚠️ Unaudited |
| BadgeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x28d50933d8e280c2b406501744da510ed0094b4f`; arbitrum `0x6a60af113f182e4ac903508aac3ecce73405a890`; arbitrum `0xa2f3876b35e667de72b7856fcfde7cd529704825` | ⚠️ Unaudited |
| BridgeMiddleware | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239710 | `0x254e696ae76c17adc4363ae9476ce24ce935be16` | ⚠️ Unaudited |
| BridgeMiddleware | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239711 | `0x26052fb1c47bf499ff67bc966c2aff7a475fa503` | ⚠️ Unaudited |
| BridgeMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x683c48770210158d6b2d3b565cf45ae1a10e3e40` | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-239714 | `0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9` | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x5fbf447c301e3029b3c3f2a7743a80ae56521b82`; arbitrum `0xfdaf745d7b7ada22028b225d33438419ae2826b8` | ⚠️ Unaudited |
| BurnRegistryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79cec02f44c0855be72b2305d42cff486efe79a5` | ⚠️ Unaudited |
| DepositManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239765 | 2 deployments: arbitrum `0x665842c0ea5e72d985c61faf462cef13a2f8a2d0`; arbitrum `0xc142259aee880250e61272188053a777b064562e` | ⚠️ Unaudited |
| DepositManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xf6ec90fe0e413eab2f09bc8fe3e73b6af756d45b` | ⚠️ Unaudited |
| DVFDepositContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3db7558260423a539cbdc8aef0de9bc15b93b47` | ⚠️ Unaudited |
| DVFDepositContract | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbca3039a18c0d2f2f84ba8a028c67290bc045afa` | ⚠️ Unaudited |
| DVFSunset | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x73699b0c5542472b927dd779f2a1085ac9bd2704`; ethereum `0xec909352e059930e74dbefd471d16b9a920cf9b5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x14b9932cc9ac8ee03301665a8644a753f46d8552`; ethereum `0xe15357fb7ab31e091583b9c4b4135bb2f176f38e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x378d8771e9c66a2aad370344dfd4b65d1a3c1d8e`; ethereum `0xd35e56c06320b1ed549a8f85d316fec854ff4b71` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x438b5a03f6460ccffa62d62f4ab554a740cfde9c`; ethereum `0xa78951b6badc9f4740f6f456e9144705d5c5e4b2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x636915338a2f5ff0f332636be44fc124a9842a74`; ethereum `0xcac639d17193b6ebfe8dd23b07a0c0e7bcf167b8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | arbitrum | unit-239757 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ⚠️ Unaudited |
| Inbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239756 | `0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296` | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-239752 (2 proxies) | 3 deployments: arbitrum `0x08e9dc0b2e6bfc193a1a593ba14f4f5c9f11f424`; arbitrum `0x8d21dfea9231db85dce72b8d9f18e917d833d4b1`; arbitrum `0xad3026961087eccec0508d411bb9fb405e086b38` | ⚠️ Unaudited |
| L1GatewayRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-239759 | `0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a` | ⚠️ Unaudited |
| MinimalProxyFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-239707 | `0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057` | ⚠️ Unaudited |
| MinimalProxyFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-239728 | `0x99be07778acd2e8118486eeb6281366eaf52977a` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbbd1bb03ed63ae2bea0ce892567884dffb70a5` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19e7e0b6dfd215e546e57e0f00a9ab955f04cec1`; ethereum `0x90ec5b8a21349751d0c2654b5f1fbedfd6342d8c` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x237b7aff1af5d9f311f830234792d429355a58f3`; ethereum `0x850af98cfe639bd87f7c5d6366628fab73104aac` | ⚠️ Unaudited |
| OpenfortUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a2dd09b4739d905183d503d594c8fb3e3d41820`; ethereum `0x8d289cdd60e7f73f352f42c8524a06ef1ad746f8` | ⚠️ Unaudited |
| Outbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239753 | `0xec32bd08faf9533371384ad13045116930dbc040` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x70911642e4ea509735e77cba23ce1856abed87bf`; ethereum `0x92650ddc467ed628868bdba23cf81eafaab60175` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad6d5c9435aa7781a817913b3afec2645ef78be` | ⚠️ Unaudited |
| PythUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x26dd80569a8b23768a1d80869ed7339e07595e85`; ethereum `0x35a58beee77a2ad547fcded7e8cb1c6e19746b13`; ethereum `0xdd24f84d36bf92c65f92307595335bdfab5bbd21` | ⚠️ Unaudited |
| RollupAdminLogic | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239766 | `0xd226bd8d36725f4ce12961370211dfeeef1abbbc` | ⚠️ Unaudited |
| SequencerInbox | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239751 | `0x8696d32899e59f8a2ed76463cc0a0b07e56db025` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-239755 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ⚠️ Unaudited |
| Storage | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239737 | `0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c` | ⚠️ Unaudited |
| SwapManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x770722fcaab3c7d46fc1ad679726b232e7def2f6` | ⚠️ Unaudited |
| SwapManager | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-239761 | 2 deployments: arbitrum `0xac3450527b49552380c190c22e1bde2912a22291`; arbitrum `0xe575f5dd354dc79a8114071992a2ac379a75daa4` | ⚠️ Unaudited |
| VaultV1 | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-239764 | `0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe` | ⚠️ Unaudited |
| VaultV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa526c07f616cfbf20c8a7d35ac2376b9480c9684` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x87047526937246727e4869c5f76a347160e08672) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x74f09cb3c7e2a01865f424fd14f6dc9a14e3e94e`; ethereum `0x87047526937246727e4869c5f76a347160e08672` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239679 | `0x2880ab155794e7179c9ee2e38200202908c17b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee2d7398ce35a591c30d736007feda8f4cfec95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c56d119a916da6593e1fd8c1d010161f20afd70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0d4a9640addd415551b6a4fe75403c9f73a7c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc643e55ee8944f3017f4cb8c82aa3db1aa2d8941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d69cdd6fe41e7b621b4a688c5d1a68cb5c8adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf192298bed3a411317bb87dc42e71b87dca47a3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239697 | `0x02c07b166af23bb3524df42a49a4e3947d5908f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239698 | `0x071360b37f6db934f857e6b33ad705feee63be14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239699 | `0x0977a7e7c25fdd7b40686f068abe28431393b39d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239700 | `0x10417734001162ea139e8b044dfe28dbb8b28ad0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239702 | `0x13fb7b0342efc4471b80655ae98ff94f998e8357` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239703 | `0x16a4f9904e222d298ac71aa3e3bd5c19b902c595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c6cd107fb71768fbc46f8b6180eec155c03eeb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239708 | `0x225a859861134a85f705c03d4a956aabef2f3594` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239709 | `0x22839de35030139d5c7a48f45e703d5204586606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33ca4ea74f63fcb809ba7eb94e477c267b2b9dd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239715 | `0x4e682602ee3cf8550bc4fee46f50cc0c0a41b116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e7783a6a0ae808e956b5c71df8f58c069a5394e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239719 | `0x58c6f3ece1bd333a88fc74cd71b35a3b8ab841ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239721 | `0x5bc15d8cf905d87c680fb1383247503e228abf68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239725 | `0x62be54317d68393d1e1ae1cd79958bd6891748a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b6a803468388e15a95a16a34a01e86f71f9ce09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87997081f0061bb9125d1326d2e22a8bba7a847d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239727 | `0x93244b494ca63588516ff0b3b25a09d79e9e5a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cadac9b22b990cdc899ffa8ed809f2b44016e18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239730 | `0xaebf6caf33d362f3f104b240e6a9a60d3be31969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1a584f8db8c79285ea5e0aeef3666b589fc5233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2eeb93d778c364e7e2274d6299e2aa0c2bea090` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239733 | `0xb54d6207365a8cd40a90f880b2f61d931af7d6e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239734 | `0xb5e5693ef17192721f832142ee7add9f0bdab267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc612001e9b399a509468336c70b683287aeb0394` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239738 | `0xc9905e14303ef91adeca8e11cf7d5ac0edee38a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb98eb586e0413080faacf21527c1a99a2960ba5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239741 | `0xdbb435e9ed5096006eaae14f99775d12cca645d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239743 | `0xe8b4c9a1499f3c28cbc0dceb3fa5850537bfcbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeec10ab0185382b0223118ac42f82fc21b36c54d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239745 | `0xf22a4778d6240751e98692b3fb16058da413f2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf43250b00987901e10df1aa4d1d665f4db9e3f91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239747 | `0xf911c309b851db55b97f4e2c7599a3733c2dac69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239749 | `0xff1968ae4f91efccf4d5cef823eecd46fbe114c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-239750 | `0xff1a0f4744e8582df1ae09d5611b887b6a12925c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 78
- Live contracts: 25
- Unknown liveness contracts: 53
- Source-verified contracts: 53
- Currently scope-matched contracts retained as-is: 5
- Classification counts: currently scope matched=5, candidate review=38, exact address book overlap=1, source verified unclassified=10, unverified unclassified=24

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | GovernorMultisig<br>`0xeb71a9c02c1f68a9d7004e74e17c7d62c3291bf8` | project_anchor | unknown | live | verified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x0a9591c64fd9e8c1f9a81db1b668a5f211b5735a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x21f69c75d757164137044b235663fec8bec404e5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x77075c627e51145d54e4edd54afa169da7ff8a17` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | ERC1967Proxy<br>`0x14b9932cc9ac8ee03301665a8644a753f46d8552` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ERC1967Proxy<br>`0x378d8771e9c66a2aad370344dfd4b65d1a3c1d8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ERC1967Proxy<br>`0x636915338a2f5ff0f332636be44fc124a9842a74` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ERC1967Proxy<br>`0xa78951b6badc9f4740f6f456e9144705d5c5e4b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | OpenfortUpgradeableProxy<br>`0x237b7aff1af5d9f311f830234792d429355a58f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | OpenfortUpgradeableProxy<br>`0x3a2dd09b4739d905183d503d594c8fb3e3d41820` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | OpenfortUpgradeableProxy<br>`0x90ec5b8a21349751d0c2654b5f1fbedfd6342d8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x78357316239040e19fc823372cc179ca75e64b81` |
| candidate review | ProxyAdmin<br>`0x70911642e4ea509735e77cba23ce1856abed87bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| candidate review | ProxyAdmin<br>`0x92650ddc467ed628868bdba23cf81eafaab60175` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| candidate review | TransparentUpgradeableProxy<br>`0x73699b0c5542472b927dd779f2a1085ac9bd2704` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| candidate review | BadgeV2<br>`0x1750e2c9c7e57652ae9f1d5df29cbee967bb892b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | BridgeMiddleware<br>`0x254e696ae76c17adc4363ae9476ce24ce935be16` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | BridgeMiddleware<br>`0x26052fb1c47bf499ff67bc966c2aff7a475fa503` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | BridgeMiddleware<br>`0x683c48770210158d6b2d3b565cf45ae1a10e3e40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | DepositManager<br>`0xc142259aee880250e61272188053a777b064562e` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | ERC1967Proxy<br>`0x665842c0ea5e72d985c61faf462cef13a2f8a2d0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | ERC1967Proxy<br>`0x770722fcaab3c7d46fc1ad679726b232e7def2f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | ERC1967Proxy<br>`0xe575f5dd354dc79a8114071992a2ac379a75daa4` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | ERC1967Proxy<br>`0xf6ec90fe0e413eab2f09bc8fe3e73b6af756d45b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | SwapManager<br>`0xac3450527b49552380c190c22e1bde2912a22291` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x026968b5ced079eccd6cc78f35a5dfddc13f9af8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x0507389b4cbb043e6d0137b70c40fc2be483919b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x1fdf833556d012a7799b22a83bd392e1dc961c01` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x372a183192d9f9e978a1c826bc4d3568a2b7b3f8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x4b2f4f777e043b470dae9a1bea4874f4be13c2bf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x6a457a01b412dfc29c7f48fbdd7cbb35ff7ca3a2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x6b25e2f731aae133caa12e43fbe89ec6aaca402e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x6c015bf728e36712a30f8ab49659a8045ad812e0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x7101f6810ee5af89bc669aff7684e3f3bf30d568` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x86dc076bc83044eebb99a03015b9e130d72e6197` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0x948c634086661bda90cd15246ea4fe98b03530a2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0xa4fbdd48970e4e409da9169767d6b7646b7f6880` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0xb8d4b99b8af66acf4901e44e0b4446ba88fb2945` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0xbe0a8fb9f5943f547d0a3dc06ee5e478c76dda52` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0xc6bc0e2dac704dc823678b78be82d3ce1240ecfd` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0xdac651f7a8eef6cb39106a3fc10227cc3cc63dfd` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0xdb5ea5e5f03a99c6bf4003ab4220d4a293f0586f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| candidate review | TransparentUpgradeableProxy<br>`0xdef2dd8108a0db6bf94c47dff49c659671c697de` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| exact address book overlap | UnnamedContract<br>`0x2880ab155794e7179c9ee2e38200202908c17b43` | project_anchor | unknown | live | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| source verified unclassified | DVFDepositContract<br>`0xa3db7558260423a539cbdc8aef0de9bc15b93b47` | non_address_book | unknown | unknown | verified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| source verified unclassified | DVFSunset<br>`0xec909352e059930e74dbefd471d16b9a920cf9b5` | non_address_book | unknown | unknown | verified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| source verified unclassified | Multicall2<br>`0x0dbbd1bb03ed63ae2bea0ce892567884dffb70a5` | non_address_book | unknown | unknown | verified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| source verified unclassified | PythUpgradable<br>`0x26dd80569a8b23768a1d80869ed7339e07595e85` | non_address_book | unknown | unknown | verified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| source verified unclassified | PythUpgradable<br>`0x35a58beee77a2ad547fcded7e8cb1c6e19746b13` | non_address_book | unknown | unknown | verified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| source verified unclassified | PythUpgradable<br>`0xdd24f84d36bf92c65f92307595335bdfab5bbd21` | non_address_book | unknown | unknown | verified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| source verified unclassified | BadgeV3<br>`0x28d50933d8e280c2b406501744da510ed0094b4f` | non_address_book | unknown | unknown | verified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| source verified unclassified | BadgeV3<br>`0x6a60af113f182e4ac903508aac3ecce73405a890` | non_address_book | unknown | unknown | verified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| source verified unclassified | BadgeV3<br>`0xa2f3876b35e667de72b7856fcfde7cd529704825` | non_address_book | unknown | unknown | verified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| source verified unclassified | BurnRegistryV2<br>`0x79cec02f44c0855be72b2305d42cff486efe79a5` | non_address_book | unknown | unknown | verified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| unverified unclassified | 0x87047526937246727e4869c5f76a347160e08672<br>`0x74f09cb3c7e2a01865f424fd14f6dc9a14e3e94e` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0x19e7e0b6dfd215e546e57e0f00a9ab955f04cec1` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0x438b5a03f6460ccffa62d62f4ab554a740cfde9c` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0x5e023c31e1d3dcd08a1b3e8c96f6ef8aa8fcacd1` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unverified unclassified | UnnamedContract<br>`0x850af98cfe639bd87f7c5d6366628fab73104aac` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0x87047526937246727e4869c5f76a347160e08672` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0x8d289cdd60e7f73f352f42c8524a06ef1ad746f8` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0xcac639d17193b6ebfe8dd23b07a0c0e7bcf167b8` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0xd35e56c06320b1ed549a8f85d316fec854ff4b71` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0xe15357fb7ab31e091583b9c4b4135bb2f176f38e` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0xe9d69cdd6fe41e7b621b4a688c5d1a68cb5c8adc` | non_address_book | unknown | unknown | unverified | n/a | `0x78357316239040e19fc823372cc179ca75e64b81` |
| unverified unclassified | UnnamedContract<br>`0xf192298bed3a411317bb87dc42e71b87dca47a3a` | non_address_book | unknown | unknown | unverified | n/a | `0xca9f1febf310d72549777b7364949ebcc24bc766` |
| unverified unclassified | UnnamedContract<br>`0x1c6cd107fb71768fbc46f8b6180eec155c03eeb5` | non_address_book | unknown | unknown | unverified | n/a | `0xc42e9476b0a458097087336e2395dbf45b0bdc12` |
| unverified unclassified | UnnamedContract<br>`0x33ca4ea74f63fcb809ba7eb94e477c267b2b9dd6` | non_address_book | unknown | unknown | unverified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| unverified unclassified | UnnamedContract<br>`0x4e7783a6a0ae808e956b5c71df8f58c069a5394e` | non_address_book | unknown | unknown | unverified | n/a | `0xc42e9476b0a458097087336e2395dbf45b0bdc12` |
| unverified unclassified | UnnamedContract<br>`0x7b6a803468388e15a95a16a34a01e86f71f9ce09` | non_address_book | unknown | unknown | unverified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| unverified unclassified | UnnamedContract<br>`0x87997081f0061bb9125d1326d2e22a8bba7a847d` | non_address_book | unknown | unknown | unverified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| unverified unclassified | UnnamedContract<br>`0x9cadac9b22b990cdc899ffa8ed809f2b44016e18` | non_address_book | unknown | unknown | unverified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| unverified unclassified | UnnamedContract<br>`0xb1a584f8db8c79285ea5e0aeef3666b589fc5233` | non_address_book | unknown | unknown | unverified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| unverified unclassified | UnnamedContract<br>`0xb2eeb93d778c364e7e2274d6299e2aa0c2bea090` | non_address_book | unknown | unknown | unverified | n/a | `0xc42e9476b0a458097087336e2395dbf45b0bdc12` |
| unverified unclassified | UnnamedContract<br>`0xc612001e9b399a509468336c70b683287aeb0394` | non_address_book | unknown | unknown | unverified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| unverified unclassified | UnnamedContract<br>`0xcb98eb586e0413080faacf21527c1a99a2960ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x2d8673381b6782622a107fd8fbeed498fdc6e140` |
| unverified unclassified | UnnamedContract<br>`0xeec10ab0185382b0223118ac42f82fc21b36c54d` | non_address_book | unknown | unknown | unverified | n/a | `0x95f15b04a32391ae060fd3c250cdba663ac9ed8c` |
| unverified unclassified | UnnamedContract<br>`0xf43250b00987901e10df1aa4d1d665f4db9e3f91` | non_address_book | unknown | unknown | unverified | n/a | `0xc42e9476b0a458097087336e2395dbf45b0bdc12` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hashex.org/audits/evedex](https://hashex.org/audits/evedex) | HashEx | Audit | 2025-08 | fresh | Direct | address | matched | 6 | 4 | 0 | 2 | high |
| [skynet.certik.com/projects/evedex](https://skynet.certik.com/projects/evedex) | CertiK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2788] hashex.org/audits/evedex — matched: Contracts extracted from the 'Contracts Checked' table in the audit report. Audit completed date is 11 Aug 2025.
- [2789] skynet.certik.com/projects/evedex — no match: Only one contract file explicitly listed in the audit report's 'Audited Files/SHA256' section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hashex.org/audits/evedex | EHMarketV2 | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/evedex | VaultV2 | unmatched — not counted | — | listed in scope table | no |
| hashex.org/audits/evedex | CashbackVaultV1Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x0a9591c64fd9e8c1f9a81db1b668a5f211b5735a` — deployed 2024-10-10 20:32:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | TreasuryV1 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x77075c627e51145d54e4edd54afa169da7ff8a17` — deployed 2024-10-10 20:31:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | StorageConfig | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x21f69c75d757164137044b235663fec8bec404e5` — deployed 2024-10-10 20:31:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | GovernorMultisigAuthorization | own contract | GovernorMultisig (selected) `0xeb71a9c02c1f68a9d7004e74e17c7d62c3291bf8` — deployed 2024-10-10 20:31:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | Multiownable | own contract | GovernorMultisig (selected) `0xeb71a9c02c1f68a9d7004e74e17c7d62c3291bf8` — deployed 2024-10-10 20:31:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hashex.org/audits/evedex | Multicall3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c` — deployed 2024-10-10 20:32:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| skynet.certik.com/projects/evedex | OwnableValidator | unmatched — not counted | — | Listed under Audited Files/SHA256 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x254e696ae76c17adc4363ae9476ce24ce935be16` | BridgeMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x26052fb1c47bf499ff67bc966c2aff7a475fa503` | BridgeMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9` | BridgeMiddlewareV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x665842c0ea5e72d985c61faf462cef13a2f8a2d0` | DepositManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296` | Inbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a` | L1GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057` | MinimalProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x99be07778acd2e8118486eeb6281366eaf52977a` | MinimalProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xec32bd08faf9533371384ad13045116930dbc040` | Outbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd226bd8d36725f4ce12961370211dfeeef1abbbc` | RollupAdminLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8696d32899e59f8a2ed76463cc0a0b07e56db025` | SequencerInbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c` | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xac3450527b49552380c190c22e1bde2912a22291` | SwapManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe` | VaultV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: address=5

Zero-match audit list:

- [2789] skynet.certik.com/projects/evedex

Fork inheritance lineage and inherited audits are included when available.
