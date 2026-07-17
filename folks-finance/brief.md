# Agentic Audit Brief: Folks Finance

## Project Overview

- Project: Folks Finance (`folks-finance`)
- Website: [https://folks.finance/](https://folks.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.432Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, bsc, ethereum, polygon, sei
- Contract surface: 244 unique implementations (375 raw deployments)
- DeFi Llama TVL: $84,214,549.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 81 project-authored contract(s) across 7 chain(s); 4 ERC4626 vaults, 13 ERC20 tokens, 3 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 33 common project-authored base contract(s) (accesscontrolmixin, nativemetatransaction, eip712base). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 444; live-surface contracts included: 371 (187 live, 184 unknown).
- Excluded by liveness: 73 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/62 (3.2%)
- Deployed-live implementations: 63 of 244 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/63
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 181
- Unique implementations: 244
- Raw deployments: 375
- Audits discovered: 21 (21 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/folksfinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 15 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 1.6% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 1 | 1.6% | n/a |
| unknown | Tier 2 | 1 | 1.6% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeRouterSpoke | operational_periphery | sei | n/a | 3 deployments: bsc `0x57d77fd37670e22188d1c92d7cec931bccf074a4`; polygon `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5`; sei [`0x0700b2cb26688c035bd5dbbda070be408c20779c`](./contracts/sei-1329/0x0700b2cb26688c035bd5dbbda070be408c20779c/) | ✅ Audited |
| Hub | unknown | avalanche | n/a | [`0xb39c03297e87032ff69f4d42a6698e4c4a934449`](./contracts/avalanche-43114/0xb39c03297e87032ff69f4d42a6698e4c4a934449/) | ✅ Audited |

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountManager | governance | avalanche | n/a | [`0x12db9758c4d9902334c523b94e436258eb54156f`](./contracts/avalanche-43114/0x12db9758c4d9902334c523b94e436258eb54156f/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e`](./contracts/ethereum-1/0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e/) | ⚠️ Unaudited |
| AddressesWhitelist | unknown | avalanche | n/a | 2 deployments: avalanche [`0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b`](./contracts/avalanche-43114/0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b/); avalanche `0x99f183bb11ae1e88f24b9f44dbecee2158af1d0f` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xfac98fbe68a4153be8eed8de289a9ccdec8b1674`](./contracts/ethereum-1/0xfac98fbe68a4153be8eed8de289a9ccdec8b1674/); ethereum `0xfee08d34a0323aadd2bd788e5258d26275c317b3` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181a94a35a4569e4529a3cdfb74e38fd98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AethirToken | token | ethereum | n/a | [`0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b`](./contracts/ethereum-1/0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b/) | ⚠️ Unaudited |
| AlwaysEligibleAddressOracle | operational_periphery | sei | n/a | [`0x85aa8d7fc0b44fdc2773c3252617b8d60076293d`](./contracts/sei-1329/0x85aa8d7fc0b44fdc2773c3252617b8d60076293d/) | ⚠️ Unaudited |
| AvantCoin | unknown | avalanche | n/a | [`0xfd2c2a98009d0cbed715882036e43d26c4289053`](./contracts/avalanche-43114/0xfd2c2a98009d0cbed715882036e43d26c4289053/) | ⚠️ Unaudited |
| AvantMintingV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04`](./contracts/avalanche-43114/0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04/); avalanche `0xcb43139e90f019624e3b76c56fb05394b162a49c` | ⚠️ Unaudited |
| AvantOFTAdapter | adapter | avalanche | n/a | [`0x3524609c4d8111d45afc912bf1e1270cd5a1bd85`](./contracts/avalanche-43114/0x3524609c4d8111d45afc912bf1e1270cd5a1bd85/) | ⚠️ Unaudited |
| AvUSD | unknown | avalanche | n/a | [`0x24de8771bc5ddb3362db529fc3358f2df3a0e346`](./contracts/avalanche-43114/0x24de8771bc5ddb3362db529fc3358f2df3a0e346/) | ⚠️ Unaudited |
| AvUSDMinting | unknown | avalanche | n/a | [`0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51`](./contracts/avalanche-43114/0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51/) | ⚠️ Unaudited |
| BridgedYBTCB | operational_periphery | avalanche | n/a | [`0x2cd3cdb3bd68eea0d3be81da707bc0c8743d7335`](./contracts/avalanche-43114/0x2cd3cdb3bd68eea0d3be81da707bc0c8743d7335/) | ⚠️ Unaudited |
| CCIPDataAdapter | adapter | sei | n/a | [`0xeb48a1ee43b91959a1686b70b7cd482c65de69c9`](./contracts/sei-1329/0xeb48a1ee43b91959a1686b70b7cd482c65de69c9/) | ⚠️ Unaudited |
| CCIPTokenAdapter | unknown | arbitrum | n/a | 6 deployments: ethereum `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e`; bsc `0x802063a23e78d0f5d158feaac605028ee490b03b`; polygon `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; sei `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e`; base `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e`; arbitrum [`0x0700b2cb26688c035bd5dbbda070be408c20779c`](./contracts/arbitrum-42161/0x0700b2cb26688c035bd5dbbda070be408c20779c/) | ⚠️ Unaudited |
| CreditMessaging | unknown | sei | n/a | [`0x13379b489fb2e76cedf96bceaa2441e5930d75e1`](./contracts/sei-1329/0x13379b489fb2e76cedf96bceaa2441e5930d75e1/) | ⚠️ Unaudited |
| EnumerableSet | unknown | sei | n/a | [`0x7c2fc16384361fbfdca555d8f781bf65f85cf28c`](./contracts/sei-1329/0x7c2fc16384361fbfdca555d8f781bf65f85cf28c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4d4daca1fa6440ed4508161328368118bed4d29d`](./contracts/avalanche-43114/0x4d4daca1fa6440ed4508161328368118bed4d29d/); avalanche `0xf99b9eb13d44a9bf980002ab571f178e9a68d1f2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6ed8c61b174f605d4ce6c02c431cd9a7ca992952`](./contracts/avalanche-43114/0x6ed8c61b174f605d4ce6c02c431cd9a7ca992952/); avalanche `0xf76e6d879336d30d973f5713007e3b21de0e67b4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | n/a | [`0xff7f8f301f7a706e3cfd3d2275f5dc0b9ee8009b`](./contracts/avalanche-43114/0xff7f8f301f7a706e3cfd3d2275f5dc0b9ee8009b/) | ⚠️ Unaudited |
| ERC20Predicate | token | ethereum | n/a | [`0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf`](./contracts/ethereum-1/0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf/) | ⚠️ Unaudited |
| EtherPredicate | unknown | ethereum | n/a | [`0x8484ef722627bf18ca5ae6bcf031c23e6e922b30`](./contracts/ethereum-1/0x8484ef722627bf18ca5ae6bcf031c23e6e922b30/) | ⚠️ Unaudited |
| FeeLibV1 | unknown | sei | n/a | 3 deployments: sei [`0x711b5aafd4d0a5b7b863ca434a2678d086830d8e`](./contracts/sei-1329/0x711b5aafd4d0a5b7b863ca434a2678d086830d8e/); sei `0xcd4302d950e7e6606b6910cd232758b5ad423311`; sei `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35ca5b132cadf2916bab57639128eac5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| LoanManager | governance | avalanche | n/a | [`0xf4c542518320f09943c35db6773b2f9feb2f847e`](./contracts/avalanche-43114/0xf4c542518320f09943c35db6773b2f9feb2f847e/) | ⚠️ Unaudited |
| MerklePatriciaProof | operational_periphery | ethereum | n/a | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/ethereum-1/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | [`0xeb018363f0a9af8f91f06fee6613a751b2a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| MultiSign | governance | ethereum | n/a | 31 deployments: ethereum [`0x1073d55dfb892ed86151015402db8b1cdb6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/); ethereum `0x2147bdf49a0b78b4b5058eb8306ab61026bbc5fd`; ethereum `0x2591c2afd3b0730c65b1b11e961bc82aa5461d8c`; ethereum `0x315bab03fdeaaa1930193ea7c0def8f28b0b6f25`; ethereum `0x3ecbf8d5f66c26a7498aa2090475d8e5c8a3d566`; ethereum `0x46f05709230c5a6c780d9bc1f629a991084eaa53`; ethereum `0x49218440314834dacc38051e39a5054b7958ea19`; ethereum `0x5c1e4c263d8cd3bde0e7dfa8fa9aa5583d18608b`; ethereum `0x66fc2d9e4897cf3886a340a4cabc23cca2ac6a0e`; ethereum `0x6e36e38910c0145cafaa96516083c160049fe3e6`; ethereum `0x7272b2a0d2e9ae6f381677887760e953bc9f2cec`; ethereum `0x7f9922bae30ccc28d32ae284ee69e47f94c6de44`; ethereum `0x83f7f1c6a1547afe2841943f428cf6ff28541fa9`; ethereum `0x860a80bd349dc4e46dc7345600eb627552ff898e`; ethereum `0x863c8754c298d3efec3863f2a46f1c71a355ce6c`; ethereum `0x866eb2f5c483fa525137f982c2be220aa096918c`; ethereum `0x97e9d0b0bcbe86e1e230b0ffd3a5f1f9b8428591`; ethereum `0x9ab2ce56b84e3bd5081fd49c041a98eb186f8165`; ethereum `0x9b8a83e875023c3fefd8354044e011d8bc847a34`; ethereum `0xa2eea193444b16fe2d18cfe977aceeea6dd9c367`; ethereum `0xb60fa2ad48959c016fb7545d045aeb60086aca2a`; ethereum `0xb723d5ef303711d774fed6435ed6f5e82ed155ea`; ethereum `0xd4707b518a03d3a05dd2a33df5d1fb33690385d1`; ethereum `0xd48ede10152fcad67621fc5a6ae30b5b79fedd68`; ethereum `0xd9334dd55b25f928b702d143981a8173c7272761`; ethereum `0xe230900ece18f5ca83c8640b2eb73de74f9df5ae`; ethereum `0xf1dcb5394d27a41662847d512dcc903cda30056f`; ethereum `0xf26b8bb4e76528e7f061df4441965df80d72a71f`; ethereum `0xf7db20653fe8951e3c72f168310f4229d9945b3a`; ethereum `0xfbca8b5f5794456b59ad4177e5b212d0db600bb6`; ethereum `0xff72e13a7eafd2170fe8fdf1fe73c7349c209ecb` | ⚠️ Unaudited |
| NativeSeiTokensERC20 | token | sei | n/a | [`0x5cf6826140c1c56ff49c808a1a75407cd1df9423`](./contracts/sei-1329/0x5cf6826140c1c56ff49c808a1a75407cd1df9423/) | ⚠️ Unaudited |
| OFTTokenERC20 | token | sei | n/a | [`0x160345fc359604fc6e70e3c5facbde5f7a9342d8`](./contracts/sei-1329/0x160345fc359604fc6e70e3c5facbde5f7a9342d8/) | ⚠️ Unaudited |
| OFTWrapper | unknown | sei | n/a | [`0x77c71633c34c3784ede189d74223122422492a0f`](./contracts/sei-1329/0x77c71633c34c3784ede189d74223122422492a0f/) | ⚠️ Unaudited |
| PriceStorage | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af`](./contracts/avalanche-43114/0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af/); avalanche `0x40b418cf176731089b2537d027a14c78a86f2166` | ⚠️ Unaudited |
| PriceStorage | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0ef7be66249217e7588ad9277806080472357923`](./contracts/avalanche-43114/0x0ef7be66249217e7588ad9277806080472357923/); avalanche `0x7b4e8103bddd5bca79513fda22892bee53ba9777` | ⚠️ Unaudited |
| PYUSD | unknown | ethereum | n/a | [`0x6c3ea9036406852006290770bedfcaba0e23a0e8`](./contracts/ethereum-1/0x6c3ea9036406852006290770bedfcaba0e23a0e8/) | ⚠️ Unaudited |
| RequestsManager | governance | avalanche | n/a | 2 deployments: avalanche [`0x4c129d3aa27272211d151ca39a0a01e4c16fc887`](./contracts/avalanche-43114/0x4c129d3aa27272211d151ca39a0a01e4c16fc887/); avalanche `0x5f0aef33a03bf0028fc46dddd4a86ee3d29e2972` | ⚠️ Unaudited |
| RewardLib | unknown | sei | n/a | [`0x090194f1eedc134a680e3b488abb2d212dba8c01`](./contracts/sei-1329/0x090194f1eedc134a680e3b488abb2d212dba8c01/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | [`0x227f65131a261548b057215bb1d5ab2997964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RootChainManager | governance | ethereum | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/ethereum-1/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| Router | adapter | base | n/a | [`0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | ⚠️ Unaudited |
| SimpleToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa7c10c510df4b1702e1f36451dd29d7c3edc760c`](./contracts/avalanche-43114/0xa7c10c510df4b1702e1f36451dd29d7c3edc760c/); avalanche `0xf7cf101e9c3d6035a9f832a0c02efbce56f7dfc7` | ⚠️ Unaudited |
| SimpleToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0xaefa3ffe45781680d5ad99627b7eb9d79192b29a`](./contracts/avalanche-43114/0xaefa3ffe45781680d5ad99627b7eb9d79192b29a/); avalanche `0xdd1cdfa52e7d8474d434cd016fd346701db6b3b9` | ⚠️ Unaudited |
| SpokeCircleToken | token | bsc | n/a | 20 deployments: ethereum `0x21c624a73ba4f4f23f8f5c6f3e67161a0be7ecc2`; ethereum `0x5162acbe83d50fae95fb6a9e878a7e6734bf8cfa`; ethereum `0x61c80ba6f7e284c87d0e9a238b2859b4c33a69dd`; ethereum `0xb7ab35580a6f609b8e9f9cfa28b4a4e9464d7884`; ethereum `0xd4f7fa03a4e8063825840c083abb42ce327a3a38`; ethereum `0xf4c542518320f09943c35db6773b2f9feb2f847e`; bsc [`0x0700b2cb26688c035bd5dbbda070be408c20779c`](./contracts/bsc-56/0x0700b2cb26688c035bd5dbbda070be408c20779c/); bsc `0x7218bd1050d41a9ecfc517abdd294fb8116aee81`; bsc `0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf`; polygon `0x59a6e720f91a6709a088b2001dc71fc417fb5361`; polygon `0xa95cf7000376ed50c99832de9ccb5cac41bfcbf0`; polygon `0xfd2bc1b25af36ca681ff8648936aeb603a7377c7`; base `0x3ef10e94b4309415ebd8c1680ca3a5ee5df9acd7`; base `0xbf142db792f60a64c4cfa6becd88a038b33c62df`; base `0xe0c45ab4295e96ec1259d787e2ed22c16a3d0d8f`; base `0xf4c542518320f09943c35db6773b2f9feb2f847e`; arbitrum `0x23a96d92c80e8b926da40e574d615d9e806a87f6`; arbitrum `0x2e6e4603536078bd7661338f06fb93cf6f9b7a98`; arbitrum `0x531490b7674ef239c9fec39d2cf3cc10645d14d4`; arbitrum `0xf4c542518320f09943c35db6773b2f9feb2f847e` | ⚠️ Unaudited |
| SpokeCommon | unknown | arbitrum | n/a | 7 deployments: ethereum `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; bsc `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; polygon `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0`; sei `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; base `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; arbitrum [`0x57d77fd37670e22188d1c92d7cec931bccf074a4`](./contracts/arbitrum-42161/0x57d77fd37670e22188d1c92d7cec931bccf074a4/); avalanche `0xc03094c4690f3844ea17ef5272bf6376e0cf2ac6` | ⚠️ Unaudited |
| SpokeErc20Token | token | base | n/a | 47 deployments: ethereum `0x12d4fedd9ce1b4d7db90b07366284ac1675a5a90`; ethereum `0x3aea5e1f27935ed59424f35ea801420d804219e4`; ethereum `0x63bcb60165e7ec30f03883fcb800aef304ee7eea`; ethereum `0x7967b0fe720e676f41640855a203b409cecc8f92`; ethereum `0x91461b9117b3644609eeb0889ecc89cab4644bb2`; ethereum `0xac3a01437c33203c074abaefcf9920a6f0565714`; ethereum `0xb39c03297e87032ff69f4d42a6698e4c4a934449`; ethereum `0xb3abd8cc35619b907f3f2e974fe3d43956aa7cda`; ethereum `0xff785fb7bfbbe03ed09089f73151ae563b211723`; bsc `0x12db9758c4d9902334c523b94e436258eb54156f`; bsc `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5`; polygon `0x1a40208e9506e08a6f62dbccf8de7387743179e9`; polygon `0x2e6e4603536078bd7661338f06fb93cf6f9b7a98`; polygon `0x531490b7674ef239c9fec39d2cf3cc10645d14d4`; polygon `0x57d77fd37670e22188d1c92d7cec931bccf074a4`; polygon `0x63ad90a703e95e39be7cb9e460c2b05870c982b8`; polygon `0x69f3126497b91a28a6abf3e1cb9a391f8c694cd1`; polygon `0xa526f90c0caab6a0e6085830e75b084cd3c84000`; polygon `0xab07afcf16fecdcc3d83db7513c7839aed626322`; polygon `0xb1e2939b501b73f4cfef6a9fb0aa89a75f1774ee`; polygon `0xb39c03297e87032ff69f4d42a6698e4c4a934449`; polygon `0xc03094c4690f3844ea17ef5272bf6376e0cf2ac6`; polygon `0xc30107a8e782e98fe890f0375afa4185aeea3356`; polygon `0xcb66564d0cf3d28b26a1b6d4ecb830d6e216a75a`; polygon `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883`; polygon `0xf2ee689fd3f7a7358beda46f83e7968ad894abf0`; polygon `0xf4c542518320f09943c35db6773b2f9feb2f847e`; sei `0x12db9758c4d9902334c523b94e436258eb54156f`; sei `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5`; sei `0x7218bd1050d41a9ecfc517abdd294fb8116aee81`; sei `0x802063a23e78d0f5d158feaac605028ee490b03b`; base [`0x123f831a762a165107ee2e07416f4aa713da9bfd`](./contracts/base-8453/0x123f831a762a165107ee2e07416f4aa713da9bfd/); base `0x31a324d233ab3e73a6e1039d64907bbb2742606c`; base `0x50d5bb3cf57d2fb003b602a6fd10f90baa8567ea`; base `0x7ace2bc1c79954b56c65c7b326035c4468ac12bb`; base `0x7c7961e590b7e005540b72238b739ae513b605fb`; base `0x8d9aad601f384c596b9e2b9124a73b278db4c51c`; base `0x9009c929873f0e68dbc253b16ac4c3e4426e6e35`; arbitrum `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df`; arbitrum `0x2d1c07209696456b7901949fdf81037016d541a5`; arbitrum `0x624363570a6b6fee5531cca341b794b286af091c`; arbitrum `0x74416b0121daadfeb2a9c2306827ccf80a6ee097`; arbitrum `0xc0a3536e0b6799014a14664ba4370bbd5d0c7590`; arbitrum `0xcd68014c002184707eae7218516cb0762a44fddf`; arbitrum `0xdf2da9288c4d0adf6c52ccbb5062b8c73fb19111`; arbitrum `0xe69e068539ee627bab1ce878843a6c76484cbd2c`; avalanche `0xe53189d00d1b4f231a2a208a7967e0dcae8db073` | ⚠️ Unaudited |
| SpokeGasToken | token | arbitrum | n/a | 6 deployments: ethereum `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883`; bsc `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0`; polygon `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5`; sei `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0`; base `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883`; arbitrum [`0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd`](./contracts/arbitrum-42161/0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd/) | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | sei | n/a | 6 deployments: ethereum `0xc6c682b1d8c7b402c6ed8aba3a6238eb956c38cc`; bsc `0x531490b7674ef239c9fec39d2cf3cc10645d14d4`; polygon `0x6bc1439b7663820dacebc8e8b9a5ba29201ed352`; sei [`0x1b2a8d56967d00700dd5c94e27b1a116a1def8df`](./contracts/sei-1329/0x1b2a8d56967d00700dd5c94e27b1a116a1def8df/); base `0xd97af2ff3a44427e4a412fed0cb8ebcbf09d4ae3`; arbitrum `0x6bc1439b7663820dacebc8e8b9a5ba29201ed352` | ⚠️ Unaudited |
| SpokeRewardsV2Erc20Token | token | arbitrum | n/a | 2 deployments: arbitrum [`0x0259617be41ada4d97ded60daf848caa6db3f228`](./contracts/arbitrum-42161/0x0259617be41ada4d97ded60daf848caa6db3f228/); arbitrum `0x88f15e36308ed060d8543da8e2a5da0810efded2` | ⚠️ Unaudited |
| SpokeRewardsV2GasToken | token | polygon | n/a | [`0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf`](./contracts/polygon-137/0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf/) | ⚠️ Unaudited |
| StablecoinUpgradeable | token | ethereum | n/a | [`0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec`](./contracts/ethereum-1/0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec/) | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | ethereum | n/a | [`0x8292bb45bf1ee4d140127049757c2e0ff06317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | ⚠️ Unaudited |
| StakedAvantCoinV2 | token | avalanche | n/a | [`0x649342c6bff544d82df1b2ba3c93e0c22cdeba84`](./contracts/avalanche-43114/0x649342c6bff544d82df1b2ba3c93e0c22cdeba84/) | ⚠️ Unaudited |
| StakedAvUSDV2 | token | avalanche | n/a | [`0x06d47f3fb376649c3a9dafe069b3d6e35572219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | ⚠️ Unaudited |
| SyrupDrip | unknown | ethereum | n/a | [`0x509712f368255e92410893ba2e488f40f7e986ea`](./contracts/ethereum-1/0x509712f368255e92410893ba2e488f40f7e986ea/) | ⚠️ Unaudited |
| TokenMessaging | token | sei | n/a | [`0x1502fa4be69d526124d453619276faccab275d3d`](./contracts/sei-1329/0x1502fa4be69d526124d453619276faccab275d3d/) | ⚠️ Unaudited |
| Treasurer | unknown | sei | n/a | [`0x873cfb4bae1ab6a5de753400e9d0616e10dced22`](./contracts/sei-1329/0x873cfb4bae1ab6a5de753400e9d0616e10dced22/) | ⚠️ Unaudited |
| UChildERC20 | token | ethereum | n/a | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/ethereum-1/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe9992487b2ee03b7a91241695a58e0ef3654643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | ethereum | n/a | [`0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6`](./contracts/ethereum-1/0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6/) | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x16613524e02ad97edfef371bc883f2f5d6c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | [`0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| xMPL | unknown | ethereum | n/a | [`0xc7e8b36e0766d9b04c93de68a9d47dd11f260b45`](./contracts/ethereum-1/0xc7e8b36e0766d9b04c93de68a9d47dd11f260b45/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (181)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7463f8deb5767df59dbec2a20c9fa5bb92f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ad369f1fc8ac0cba5a4ddb8381cd7d210b63769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84267ace6a5f558a19803693554e0d18c95c8df7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9718a210dd1fc4dfa6d756e55ea89617da5efe77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2a26188e4d7521960c2ddd31947afa9b2fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd38cbf2a11c0988f535d3a09653affaf462c5b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd65556e97fea8e392be86a79b1c885d3737202fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd97af2ff3a44427e4a412fed0cb8ebcbf09d4ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdab5b2b44cbec9979b6f8df92ffc479ba2d5f821` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8a1c5c010c4028123fcbe75391f588b74e69b83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69f3126497b91a28a6abf3e1cb9a391f8c694cd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab07afcf16fecdcc3d83db7513c7839aed626322` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11e73283ce361a47a9e5cc616cdc24cefd53bee5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a8fed07c8b8e7a8050d75db392dba0af20eb9c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2110de6c423689c9a0360cc90bd43224bd8b24b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x213299ac40ce76117c2c4b13945d9d935686bb85` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x2b7995fd223dcf3a660cc5a514349e3fa7b16168` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x531490b7674ef239c9fec39d2cf3cc10645d14d4` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x57d77fd37670e22188d1c92d7cec931bccf074a4` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x63efda4bf91ba13d678c58af47304e6180dd46df` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x8e8539e4ccd69123c623a106773f2b0cbbc58746` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9a102080970043b96773c15e6520d182565c68ff` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf4c542518320f09943c35db6773b2f9feb2f847e` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48ba8ad049604363b0bb4189024f3371ff550e99` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ff936d61ac986ea4fb6dca6582e35c55c29fbc1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91461b9117b3644609eeb0889ecc89cab4644bb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce9afcdee65ecc8887d527f57954ba3f41ffee67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7033105d1a527d342be618ab1f222bb310c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6df8914c084242a19a4c7fb15368be244da3c75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x01248204b116d4802242d02bbf215972f9156153` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0259617be41ada4d97ded60daf848caa6db3f228` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x043e63a7c886074720b411e3785de183d1262ec5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04a3d40399b425d8f8bbe192324b8af35b5b34aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04c8b9d8af87a6d670b646125b2d99740d8eba5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0700b2cb26688c035bd5dbbda070be408c20779c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07c911b5a1657126b14c25e697e3d00f3a134a23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0aee2b84bd3e280cfcc9325917bfa0bb20f3cdc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b09e1ffd28040654021a85a49284597f3d0e41c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b4e69c4890a88aca90e7e71db76619c3aacd79d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e563b9fe6d9ef642bdba20d53ac5137eb0d78dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1072ec93cb932acfc1b74ac115cb1b0f2c5c1156` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10a4481f79aac209ac6c2959b785f2e303912dc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1177a3c2cccdb9c50d52fc2d30a13b2c3c40bcf4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11f82b5ea7408ff257f6031e6a3e29203557a1dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x13a21bc65844cd530098ab15431c57078ea90737` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x145a0e384793bcd5b481af01f8a046141265bdd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18031b374a571f9e060de41de58abb5957cd5258` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b5a1dce059e6069ed33c3656826ad04be536465` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c51aa1516e1156d98075f2f64e259906051aba9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c7ec7198f297119d4e9f359d91127c8b2f9a9d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x213299ac40ce76117c2c4b13945d9d935686bb85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23a96d92c80e8b926da40e574d615d9e806a87f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24db057615203c0f27f0968452a0f2327e6bc86f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27389a07d02c3cd8c3d069fcb2ee6aaa160788a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x279b3e185f64e99141d4ce363657a5f3b5b32fb9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2aa8fee178a79182c4b7c61efeb4227cb8843915` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b7995fd223dcf3a660cc5a514349e3fa7b16168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f643d728926c20269f0a04931dd7b4b6b650204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x307bcec89624660ed06c97033edb7ef49ab0eb2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3291fcf6ca62939fc432debe6cbb2a838f755d34` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x331a1938f94af7bb41d57691119aee416495202a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3445055f633fef5a64f852aacd6da76143aca109` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x347d342f12fa57b6231c82867f964edfa4ed1431` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34f1ba5808eb5bf60c9b1c343d86e410466f4860` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x391201cec4f80e69c87dee364d599c1fcae3c363` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x398715a6011391b2b7fd1ff66bb26c126e5d4aac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3b1c2ec8b7cde241e0890c9742c14dd7867aa812` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3e85a56c2202ec067eb4ac090db3e8149da46d19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f63a6401e6354a486e6a38127409fd16e222b59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f87f3b301f031ba59c479edf067621dcc72ddca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4161d7090dffb96e99dc30716ccc1a6d7a641fce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x42bb92684e72707030f59c48fbe5a222a0d8b387` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44e0d0809af8ee37bfb1a4e75d5ef5b96f6346a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45060a047b64423179e52a9b082e19444711a084` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x481cf0c02bf17a33753ce32f1931ed9990ffb40e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4e6dd5e35638008cdb1e9004f3e952bcdd920e6d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4fb4c3a33cbe855c5d87078c1bbbe5f371417fac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x51958ed7b96f57142ce63bb223bbd9ce23da7125` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x531490b7674ef239c9fec39d2cf3cc10645d14d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5431e7f480c4985e9c3faacd3bd1fc7143eadefa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5562d84f9891288fc72aab1d857797c7275fcedb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56046fcadbcb62ed4b5643af09724313624e88e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x57d77fd37670e22188d1c92d7cec931bccf074a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x57d849b4d40536f587f2a9048dc8fe2a1d00da88` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x59023efdb22b9d8b2c7aed842ac1fd2f6110e5b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e5a2007a8d613c4c98f425097166095c875e6ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f8a1d27a269b9bd718364d9517677f4fd77e948` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fe123b659fc5242f46884c37550f05ef08c816a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x60f2682ab38e3c9a51b07fbd69f42ad2cfe731db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63efda4bf91ba13d678c58af47304e6180dd46df` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x666aea026bc606220ec6eb83a83d81881fa48e0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66dd1c6beadffca88365bade7928323672323d11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6a3560ece4fe09551d458ddd994b6b000f9883ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6f6f5645b86b1fd3c4c015822a0e672132d4e2f8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7033105d1a527d342be618ab1f222bb310c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7054254933279d93d97309745afbff9310cdb570` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7178bf2a8a50153549e0d95a4c6cb816448840f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7218bd1050d41a9ecfc517abdd294fb8116aee81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x72fa22fdd2138ed5b6c5fc578ee633ad9819cf99` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x750db228b3c2156c2f6f2f27ac87eeb55d3ba703` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x78b4e5cda33c898b546db7925162879e7bd2a9d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7902db65ad8c43c6e41d3b358b84a048debe55b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x795ccf6f7601edb41e4b3123c778c56f0f19389a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c532a6209350cf27efc3d06e82e35acfd362c7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c5fbb6c54a11f0256551bc4ead43e77be8ee2cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cd4afd7f4db51a0bf06bf4630752a5b28e0b6c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7fd21802709f2f180ee1982f56e58533f3031aca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x802063a23e78d0f5d158feaac605028ee490b03b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x84c420d5e077cf0ed8a20c44d803c380172ed5d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88ae56886233c706409c74c3d4ea9a9ac1d65ab2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88f15e36308ed060d8543da8e2a5da0810efded2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x897ce250199d102ea103aaf3a6e7906cde757560` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89970d3662614a5a4c9857fcc9d9c3fa03824fe3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a8b9386dfd63931284545db62374b48180f0111` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c3b4e60a4f6a7b25c9426bb07b272a4aa62f054` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c893de1f682813eae6c6dbaa2bcad7e795bc015` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x932406a77b3cfd3ef845c7f2999bae933ae03739` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x93fd598238377bdcad1712b7feda421a02527d7b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x94307e63ef02cf9b39894553f14b21378ef20adb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x953345d960f4283b90f5ceecad9cfecd961411e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97592dc676d6051bf813f663b717cfd6b177eeff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9936812835476504d6cf495f4f0c718ec19b3aff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a102080970043b96773c15e6520d182565c68ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e4456f0d03a263653e01edfc8c1447a8c3e1a5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9ed81f0b5b0e9b6de00f374ffc7f270902576ef7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f0c0adec9fd4ef946ace1e2b4f32e49ae45c8f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f59642c6733397df5c2696d3ac9ceb431b1b573` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1e1024c49c77297ba6367f624cfbefc80e697c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa544829795a88520ffea2626734eccd09357651a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xada5be2a259096fd11d00c2b5c1181843ed008dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb14f2576be100cfe3b274233091a841f1e040604` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3782d4bc5dae948db91b611941a0ef537c8b252` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5327c35e083248e3a0f79122fab3b6018e5584a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6df8914c084242a19a4c7fb15368be244da3c75` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0108ccbc2701eab00c604afdec09dd3df4456ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc02ada9fdd113c2e76a86121fb1e69540e02b29c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2fd40d9ec4ae7e71068652209eb75258809e131` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7ddb440666c144c2f27a3a5156d636bacfc769c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc96820695217c7dd8f696f8892de76f7a48432cb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd68014c002184707eae7218516cb0762a44fddf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcda75578328d0cb0e79db7797289c44fa02a77ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4f87eb6cc8795e727f7dbc1e2c6c3452ad0010c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd77b920a9c05b3e768feae0bcb5839cd224328fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd7ff49751daf42bf7afc4ff5c958d4bea48358d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9d50d4f73f61a306b47e5bdc825e98cd11139dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc887acfe154bf0048ae15cda3693ab2c237431a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdd9efbf83572f5387381ad3a04b1318221d545a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe396e1246b7341eb6eda05dcfef9eab9e661f80c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe47285cc79a8de62dfaed52abe919b87973294c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe69e068539ee627bab1ce878843a6c76484cbd2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe6b7713854620076b5716e2743262d315bf8609d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7897052fac4bff9eb3abc073cbc1e17fce5709c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb48a1ee43b91959a1686b70b7cd482c65de69c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec0ca5d2f362a826fa8f53c89a5ce1c17cd604fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef7a6ebede2ad558db8c36df65365b209e5d57dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf51a72b92cb9c16376da04f48ef071c966b9c50b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf727ec8d6e565328f2cf0ff8ac4e7c9e7f8d24b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfdf0bf117ff6fdb98af9bfcedf303af64a09ff58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Coinspect - Smart Contract Audit - Folks Finance v220314.pdf](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Folks%20Finance%20v220314.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Folks-Finance-Design-Review.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Folks-Finance-Design-Review.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [OtterSec - Audit of XChain Lending - May 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/OtterSec%20-%20Audit%20of%20XChain%20Lending%20-%20May%202024.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 1 | n/a |
| [Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20of%20xChain%20Liquid%20Governance%20-%20June%202023.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [audits (GitHub directory)](https://github.com/Folks-Finance/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [immunefi.com/bug-bounty/folksfinance/information](https://immunefi.com/bug-bounty/folksfinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Adevar - Algorand Wormhole NTT - October 2025.pdf](https://github.com/Folks-Finance/audits/blob/main/Adevar%20-%20Algorand%20Wormhole%20NTT%20-%20October%202025.pdf) | Adevar | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Certik - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Certik%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | CertiK | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Coinspect - Audit of Liquid Staking - August 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Audit%20of%20Liquid%20Staking%20-%20August%202024.pdf) | Coinspect | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Coinspect - Smart Contract Audit - March 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Smart%20Contract%20Audit%20-%20March%202022.pdf) | Coinspect | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Runtime Verification - Design Review.pdf](https://github.com/Folks-Finance/audits/blob/main/Runtime%20Verification%20-%20Design%20Review.pdf) | Runtime Verification | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [Runtime Verification - Smart Contract Audit - February 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Runtime%20Verification%20-%20Smart%20Contract%20Audit%20-%20February%202022.pdf) | Runtime Verification | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Trail of Bits - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Trail%20of%20Bits%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Trail of Bits | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V2%20-%20June%202022.pdf) | Vantage Point | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20March%202023.pdf) | Vantage Point | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20September%202022.pdf) | Vantage Point | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Token%20Pair%20and%20Oracle%20Adapter%20-%20May%202022.pdf) | Vantage Point | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Vantage Point - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Vantage Point | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |
| [Vantage Point - Smart Contract Audit - February 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20February%202022.pdf) | Vantage Point | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md](https://github.com/immunefi-team/Bounty_Boosts/blob/main/Mitigation%20Audit%20%7C%20Folks%20Finance/Mitigation%20Audit%20_%20Folks%20Finance%2034929%20-%20%5BSmart%20Contract%20-%20Critical%5D%20Accounting%20Discrepancy%20in%20Fee%20Retention%20Leads%20to%20Protocol%20Insolvency%20and%20Fund%20Freezing.md) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md](https://github.com/immunefi-team/Bounty_Boosts/blob/main/Mitigation%20Audit%20%7C%20Folks%20Finance/Mitigation%20Audit%20_%20Folks%20Finance%2035089%20-%20%5BSmart%20Contract%20-%20Insight%5D%20Malicious%20actor%20can%20control%20interest%20rates%20by%20DoSing%20borrowings%20and%20manipulate%20utilization%20ratio%20at%20his%20will.md) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x12db9758c4d9902334c523b94e436258eb54156f`](./contracts/avalanche-43114/0x12db9758c4d9902334c523b94e436258eb54156f/) | AccountManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e`](./contracts/ethereum-1/0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b`](./contracts/avalanche-43114/0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b/) | AddressesWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x940181a94a35a4569e4529a3cdfb74e38fd98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | Aero | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b`](./contracts/ethereum-1/0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b/) | AethirToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x85aa8d7fc0b44fdc2773c3252617b8d60076293d`](./contracts/sei-1329/0x85aa8d7fc0b44fdc2773c3252617b8d60076293d/) | AlwaysEligibleAddressOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfd2c2a98009d0cbed715882036e43d26c4289053`](./contracts/avalanche-43114/0xfd2c2a98009d0cbed715882036e43d26c4289053/) | AvantCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04`](./contracts/avalanche-43114/0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04/) | AvantMintingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3524609c4d8111d45afc912bf1e1270cd5a1bd85`](./contracts/avalanche-43114/0x3524609c4d8111d45afc912bf1e1270cd5a1bd85/) | AvantOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x24de8771bc5ddb3362db529fc3358f2df3a0e346`](./contracts/avalanche-43114/0x24de8771bc5ddb3362db529fc3358f2df3a0e346/) | AvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51`](./contracts/avalanche-43114/0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51/) | AvUSDMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2cd3cdb3bd68eea0d3be81da707bc0c8743d7335`](./contracts/avalanche-43114/0x2cd3cdb3bd68eea0d3be81da707bc0c8743d7335/) | BridgedYBTCB | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xeb48a1ee43b91959a1686b70b7cd482c65de69c9`](./contracts/sei-1329/0xeb48a1ee43b91959a1686b70b7cd482c65de69c9/) | CCIPDataAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0700b2cb26688c035bd5dbbda070be408c20779c`](./contracts/arbitrum-42161/0x0700b2cb26688c035bd5dbbda070be408c20779c/) | CCIPTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x13379b489fb2e76cedf96bceaa2441e5930d75e1`](./contracts/sei-1329/0x13379b489fb2e76cedf96bceaa2441e5930d75e1/) | CreditMessaging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7c2fc16384361fbfdca555d8f781bf65f85cf28c`](./contracts/sei-1329/0x7c2fc16384361fbfdca555d8f781bf65f85cf28c/) | EnumerableSet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf`](./contracts/ethereum-1/0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf/) | ERC20Predicate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8484ef722627bf18ca5ae6bcf031c23e6e922b30`](./contracts/ethereum-1/0x8484ef722627bf18ca5ae6bcf031c23e6e922b30/) | EtherPredicate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x711b5aafd4d0a5b7b863ca434a2678d086830d8e`](./contracts/sei-1329/0x711b5aafd4d0a5b7b863ca434a2678d086830d8e/) | FeeLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35f35ca5b132cadf2916bab57639128eac5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf4c542518320f09943c35db6773b2f9feb2f847e`](./contracts/avalanche-43114/0xf4c542518320f09943c35db6773b2f9feb2f847e/) | LoanManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/ethereum-1/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | MerklePatriciaProof | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb018363f0a9af8f91f06fee6613a751b2a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1073d55dfb892ed86151015402db8b1cdb6ede78`](./contracts/ethereum-1/0x1073d55dfb892ed86151015402db8b1cdb6ede78/) | MultiSign | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5cf6826140c1c56ff49c808a1a75407cd1df9423`](./contracts/sei-1329/0x5cf6826140c1c56ff49c808a1a75407cd1df9423/) | NativeSeiTokensERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x160345fc359604fc6e70e3c5facbde5f7a9342d8`](./contracts/sei-1329/0x160345fc359604fc6e70e3c5facbde5f7a9342d8/) | OFTTokenERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x77c71633c34c3784ede189d74223122422492a0f`](./contracts/sei-1329/0x77c71633c34c3784ede189d74223122422492a0f/) | OFTWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af`](./contracts/avalanche-43114/0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af/) | PriceStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0ef7be66249217e7588ad9277806080472357923`](./contracts/avalanche-43114/0x0ef7be66249217e7588ad9277806080472357923/) | PriceStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c3ea9036406852006290770bedfcaba0e23a0e8`](./contracts/ethereum-1/0x6c3ea9036406852006290770bedfcaba0e23a0e8/) | PYUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4c129d3aa27272211d151ca39a0a01e4c16fc887`](./contracts/avalanche-43114/0x4c129d3aa27272211d151ca39a0a01e4c16fc887/) | RequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x090194f1eedc134a680e3b488abb2d212dba8c01`](./contracts/sei-1329/0x090194f1eedc134a680e3b488abb2d212dba8c01/) | RewardLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65131a261548b057215bb1d5ab2997964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/ethereum-1/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | RootChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa7c10c510df4b1702e1f36451dd29d7c3edc760c`](./contracts/avalanche-43114/0xa7c10c510df4b1702e1f36451dd29d7c3edc760c/) | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaefa3ffe45781680d5ad99627b7eb9d79192b29a`](./contracts/avalanche-43114/0xaefa3ffe45781680d5ad99627b7eb9d79192b29a/) | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0700b2cb26688c035bd5dbbda070be408c20779c`](./contracts/bsc-56/0x0700b2cb26688c035bd5dbbda070be408c20779c/) | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57d77fd37670e22188d1c92d7cec931bccf074a4`](./contracts/arbitrum-42161/0x57d77fd37670e22188d1c92d7cec931bccf074a4/) | SpokeCommon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x123f831a762a165107ee2e07416f4aa713da9bfd`](./contracts/base-8453/0x123f831a762a165107ee2e07416f4aa713da9bfd/) | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd`](./contracts/arbitrum-42161/0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd/) | SpokeGasToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1b2a8d56967d00700dd5c94e27b1a116a1def8df`](./contracts/sei-1329/0x1b2a8d56967d00700dd5c94e27b1a116a1def8df/) | SpokeRewardsV2Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0259617be41ada4d97ded60daf848caa6db3f228`](./contracts/arbitrum-42161/0x0259617be41ada4d97ded60daf848caa6db3f228/) | SpokeRewardsV2Erc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf`](./contracts/polygon-137/0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf/) | SpokeRewardsV2GasToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec`](./contracts/ethereum-1/0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec/) | StablecoinUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8292bb45bf1ee4d140127049757c2e0ff06317ed`](./contracts/ethereum-1/0x8292bb45bf1ee4d140127049757c2e0ff06317ed/) | StablecoinUpgradeableV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x649342c6bff544d82df1b2ba3c93e0c22cdeba84`](./contracts/avalanche-43114/0x649342c6bff544d82df1b2ba3c93e0c22cdeba84/) | StakedAvantCoinV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06d47f3fb376649c3a9dafe069b3d6e35572219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | StakedAvUSDV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x509712f368255e92410893ba2e488f40f7e986ea`](./contracts/ethereum-1/0x509712f368255e92410893ba2e488f40f7e986ea/) | SyrupDrip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x1502fa4be69d526124d453619276faccab275d3d`](./contracts/sei-1329/0x1502fa4be69d526124d453619276faccab275d3d/) | TokenMessaging | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x873cfb4bae1ab6a5de753400e9d0616e10dced22`](./contracts/sei-1329/0x873cfb4bae1ab6a5de753400e9d0616e10dced22/) | Treasurer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`](./contracts/ethereum-1/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe9992487b2ee03b7a91241695a58e0ef3654643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6`](./contracts/ethereum-1/0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6/) | VestingWallet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x16613524e02ad97edfef371bc883f2f5d6c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7e8b36e0766d9b04c93de68a9d47dd11f260b45`](./contracts/ethereum-1/0xc7e8b36e0766d9b04c93de68a9d47dd11f260b45/) | xMPL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 59 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 183 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2, extraction_exact=1

Zero-match audit list:

- [13144] Coinspect - Smart Contract Audit - Folks Finance v220314.pdf
- [13145] Folks-Finance-Design-Review.pdf
- [13149] Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf
- [13150] audits (GitHub directory)
- [13152] Adevar - Algorand Wormhole NTT - October 2025.pdf
- [13153] Certik - Smart Contract Audit - December 2022.pdf
- [13154] Coinspect - Audit of Liquid Staking - August 2024.pdf
- [13155] Coinspect - Smart Contract Audit - March 2022.pdf
- [13156] Runtime Verification - Design Review.pdf
- [13157] Runtime Verification - Smart Contract Audit - February 2022.pdf
- [13158] Trail of Bits - Smart Contract Audit - December 2022.pdf
- [13159] Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf
- [13160] Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf
- [13161] Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf
- [13162] Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf
- [13163] Vantage Point - Smart Contract Audit - December 2022.pdf
- [13164] Vantage Point - Smart Contract Audit - February 2022.pdf

Fork inheritance lineage and inherited audits are included when available.
