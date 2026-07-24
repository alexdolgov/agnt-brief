# Agentic Audit Brief: Scroll Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 73 across 11 audit(s)
- Eligible audit results: 42 (11 matched; 31 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Scroll Bridge (`scroll-bridge`)
- Website: [https://portal.scroll.io/bridge](https://portal.scroll.io/bridge)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, scroll, sepolia
- Contract surface: 397 unique implementations (450 raw deployments)
- Coverage basis: 8/9 confirmed own live verified implementations (88.9%); conservative 88.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $34,190,403.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Scroll Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 20 contract row(s) across ethereum, scroll, sepolia. Structural roles: 20 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 20
- Structural roles: unclassified (20)
- Contract kinds: contract (20)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b`, chain 534352)
- UnnamedContract (`0x13fbe0d0e5552b8c9c4ae9e2435f38f37355998a`, chain 534352)
- UnnamedContract (`0x247969f4fad93a33d4826046bc3eae0d36bde548`, chain 534352)
- UnnamedContract (`0x31c994f2017e71b82fd4d8118f140c81215bbb37`, chain 534352)
- UnnamedContract (`0x3da0bf44814cfc678376b3311838272158211695`, chain 534352)
- UnnamedContract (`0x4c0926ff5252a435fd19e10ed15e5a249ba19d79`, chain 534352)
- UnnamedContract (`0x50c7d3e7f7c656493d1d76aaa1a836cedfcbb16a`, chain 534352)
- UnnamedContract (`0x62597cc19703af10b58fef87b0d5d29efe263bcc`, chain 534352)
- UnnamedContract (`0x6260af48e8948617b8fa17f4e5cea2d21d21554b`, chain 534352)
- UnnamedContract (`0x64ccbe37c9a82d85a1f2e74649b7a42923067988`, chain 534352)
- UnnamedContract (`0x65d123d6389b900d954677c26327bfc1c3e88a13`, chain 534352)
- UnnamedContract (`0x6774bcbd5cecef1336b5300fb5186a12ddd8b367`, chain 534352)
- UnnamedContract (`0x6ea73e05adc79974b931123675ea8f78ffdacdf0`, chain 534352)
- UnnamedContract (`0x7003e7b7186f0e6601203b99f7b8decbfa391cf9`, chain 534352)
- UnnamedContract (`0x781e90f1c8fc4611c9b7497c3b47f99ef6969cbc`, chain 534352)
- UnnamedContract (`0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe`, chain 534352)
- UnnamedContract (`0x7bc08e1c04fb41d75f1410363f0c5746eae80582`, chain 534352)
- UnnamedContract (`0x7f2b8c31f88b6006c382775eea88297ec1e3e905`, chain 534352)
- UnnamedContract (`0x8a54a2347da2562917304141ab67324615e9866d`, chain 534352)
- UnnamedContract (`0xa5df8530766a85936ee3e139dece3bf081c83146`, chain 534352)
- UnnamedContract (`0xb2b10a289a229415a124efdef310c10cb004b6ff`, chain 534352)
- UnnamedContract (`0xb94f7f6abcb811c5ac709de14e37590fccd975b6`, chain 534352)
- UnnamedContract (`0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9`, chain 534352)
- UnnamedContract (`0xe2b4795039517653c5ae8c2a9bfdd783b48f447a`, chain 534352)
- UnnamedContract (`0xef27a5e63aa3f1b8312f744b9b4dceb910ba77ac`, chain 534352)
- UnnamedContract (`0xf0b2293f5d834eae920c6974d50957a1732de763`, chain 534352)
- UnnamedContract (`0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6`, chain 534352)

## Contract Surface Quality

- Logic-topography rows: 20; live-surface rows included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/66 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/9 (88.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 36 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 341 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 37 of 397 unique; 360 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/46
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 351
- Unique implementations: 397
- Raw deployments: 450
- Audits discovered: 41 (41 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 6 aging, 33 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 88.9% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 8 | 17.4% | 2024-05 |
| unknown | Tier 2 | 8 | 17.4% | 2025-11 |
| Zellic | Tier 2 | 8 | 17.4% | 2024-01 |
| Trails of Bits | Tier 2 | 1 | 2.2% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1CustomERC20Gateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392394 | 2 deployments: ethereum `0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97`; ethereum `0xb2b10a289a229415a124efdef310c10cb004b6ff` | ✅ Audited |
| L1ERC1155Gateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392398 | 2 deployments: ethereum `0xb94f7f6abcb811c5ac709de14e37590fccd975b6`; ethereum `0xca46358d5f01e4f865885514dae6275087ffe38e` | ✅ Audited |
| L1ERC721Gateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392396 | 2 deployments: ethereum `0x6260af48e8948617b8fa17f4e5cea2d21d21554b`; ethereum `0x79f1bf1906b63b56e08c3ada4c51de11f145a27a` | ✅ Audited |
| L1ETHGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392392 | 2 deployments: ethereum `0x1fee6a6dc49095fb9c84d61aa4b8a07284b2a1d0`; ethereum `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` | ✅ Audited |
| L1GatewayRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392397 | 2 deployments: ethereum `0xb93ac04010bd61f45bf492022a5b49a902f798f3`; ethereum `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` | ✅ Audited |
| L1ScrollMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392395 | 2 deployments: ethereum `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367`; ethereum `0x79b6eabffaa958fdf2aa2bf632878bd323dcbf69` | ✅ Audited |
| L1StandardERC20Gateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392400 | 2 deployments: ethereum `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9`; ethereum `0xff8238be22cc583b3d69a76da9d84da7788c0ee9` | ✅ Audited |
| L1WETHGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392399 | 2 deployments: ethereum `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe`; ethereum `0xe25effefd08c4a57556d47ef96471cb567a86c24` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3`; ethereum `0xfaf8f72e54d1089fa1882b6f597bfdff59a8afca` | ⚠️ Unaudited |
| EnforcedTxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x642af405bf64660665b37977449c9c536b806318` | ⚠️ Unaudited |
| EnforcedTxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x72cacbcfde2d1e19122f8a36a4d6676cd39d7a5d`; ethereum `0x7e87c75bbe7991bbcebd2c7a56f4cfc923bddbcc` | ⚠️ Unaudited |
| L1BatchBridgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4`; ethereum `0x7999cdd5e2893475d89211a2e3fda67a841e3233` | ⚠️ Unaudited |
| L1CustomERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x67260a8b73c5b77b55c1805218a42a7a6f98f515`; ethereum `0xbad002fb13adffcbcba57a4d4a43886f3f4c56cb` | ⚠️ Unaudited |
| L1CustomERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f512e2e9dfc4552941d99a5b2405bbcf5781c2c` | ⚠️ Unaudited |
| L1ERC1155Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x244bf7aef29f03916569470a51fa0794b62f8cd7`; ethereum `0xcb4638620e4c6decef26374e71b0dd4871863593` | ⚠️ Unaudited |
| L1ERC721Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd1841c5756428812233eea78afc17cb2d3e392bb`; ethereum `0xde3be7c2aa151d1e152ddfcbf0962fcdf5323dae` | ⚠️ Unaudited |
| L1ETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d`; ethereum `0x546e0bf31fb6e7babd493452e4e6999191367b42` | ⚠️ Unaudited |
| L1LidoGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6625c6332c9f91f2d27c304e729b86db87a3f504` | ⚠️ Unaudited |
| L1MessageQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc9d741501a20f962756c95bf906b4abffadcf8f` | ⚠️ Unaudited |
| L1MessageQueueV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392393 | 2 deployments: ethereum `0x39c36c9026ac18104839a50c61a4507ea5052eca`; ethereum `0x56971da63a3c0205184fef096e9ddfc7a8c2d18a` | ⚠️ Unaudited |
| L1MessageQueueV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa158006b072793a49e622b26761cd0ec38591d` | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-392391 | 2 deployments: ethereum `0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b`; ethereum `0x137cc585f607edebbc3ca6360affcfeab507b374` | ⚠️ Unaudited |
| L1MessageQueueWithGasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebaed7a81c298b24ee6d59c22698a951dc448e01` | ⚠️ Unaudited |
| L1ScrollMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x72981fd00087ff4f60abfde9f353cb1912a37fb6`; ethereum `0xaf2f898a8680cb52766abe0588ebe6b9bfe37845`; ethereum `0xc6326109e33465d6d61e4cb7afce7b1be7cff868` | ⚠️ Unaudited |
| L1StandardERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4015fc868c06689abeba4a9dc8fa43b804f6239c`; ethereum `0x9218732389d80f9b8723c3f32a38865b7a63564a` | ⚠️ Unaudited |
| L1USDCGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4a5810f71b6836027c26c25bff9708dfcd2b5432`; ethereum `0xbc4b3d9a89f187dbaa0d2e60985ea1fffa5247d2` | ⚠️ Unaudited |
| L1USDCGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x56ce8a8e8399f6cd5e7e4f549e8bfd673f2aff5e`; ethereum `0xf1af3b23de0a5ca3cab7261cb0061c0d779a5c7b` | ⚠️ Unaudited |
| L1USDCGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6667123b5017aab9945f73345848b82d7a953aa8`; ethereum `0xea2e804ff5291ca423dfeff486b9a91ae4432ea3` | ⚠️ Unaudited |
| L1WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa4f400593dffc0ae02f940ab58f6e3cc6fb9fb49`; ethereum `0xd3c42158682d55e082eabe08a29f7515a97ca307` | ⚠️ Unaudited |
| L2GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x987e300fdfb06093859358522a79098848c33852`; ethereum `0xfdf1ee0098168eaa61bf87db68c39c85151a4e9e` | ⚠️ Unaudited |
| MultipleVersionRollupVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1ea29d57dac237152d878758bae4beb2668998f6`; ethereum `0x4cea3e866e7c57fd75cb0ca3e9f5f1151d4ead3f`; ethereum `0xa2ab526e5c5491f10fc05a55f064bf9f7cef32a0`; ethereum `0xf94afbd9370e25dd6ca557d5d67634aefda2416b` | ⚠️ Unaudited |
| PauseController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7`; ethereum `0x8717b1e9b466685b589def23891bacbb92265afe` | ⚠️ Unaudited |
| PauseController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x57e26d997852e7e94915e250446c3bf43f41d98d`; ethereum `0xb8f7ea9998530833cbb7e0ef4f0d945957229d8b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xcc2c53556bc75217cf698721b29071d6f12628a9`; ethereum `0xeb803eb3f501998126bf37bb823646ed3d59d072` | ⚠️ Unaudited |
| ScrollChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a20703878e68e587c59204cc0ea86098b8c3ba7`; ethereum `0xa13baf47339d63b743e7da8741db5456dac1e556` | ⚠️ Unaudited |
| ScrollChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2e07f0fba71709bb5e1f045b02152e45b451d75f`; ethereum `0x39ef2c564ce27eb5702ceb71cf00c633932ca612`; ethereum `0x4f250b05262240c787a1ee222687c6ec395c628a`; ethereum `0x8f339292d2b3909574b2beb051a613a987db538f`; ethereum `0x9bb163401e8c72573854c4cd968afa7a7b02d25f`; ethereum `0xaa6d0f2490ac3957b97e11afec6f0f250593cac8`; ethereum `0xb7c8833f5627a8a12558cafa0d0ebd1acbdce43f`; ethereum `0xfa148514d03420b7b1a13ec74da06d2ca875539c` | ⚠️ Unaudited |
| ScrollChainCommitmentVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4362457a91b2e55934bdcb7daaf6b1ab3ddf203` | ⚠️ Unaudited |
| ScrollOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x798576400f7d662961ba15c6b3f3d813447a26a6` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a124779fdf107c3f6bcb992731dcaad09f2276a` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8432728a257646449245558b8b7dbe51a16c7a4d`; ethereum `0xf15a4b6d1fe2ca6ee38bc3fb957f43f58b515eee` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0cd4c0f24a0a9f3e2fe80ed385d8ad5a2ffeca44`; ethereum `0x0e58939204eeda84f796fbc86840a50af10ec4f4`; ethereum `0x1a658b88fd0a3c82fa1a0609fcdbd32e7dd4ab9c`; ethereum `0x3f9041350b661c74c6cbe440c8bd6bc4c168a9fd`; ethereum `0x826714add4dda2b8750794a467c892c0cd49216b`; ethereum `0xdc1d1189da69ae2016e4976a43de20972d349b1b` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37` | ⚠️ Unaudited |
| ZkEvmVerifierPostEuclid | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0112315fa1c81c35ac9a477e161b52ae4d1466b3`; ethereum `0x1dc65f7ab1964ec328f6249d1a68d0c1633a1357`; ethereum `0x75249b5ebf283d0a46c2f9b21498a7d600b6b577`; ethereum `0x84f2f46a1ae147e87a7b361e3ae4ff2b9af0480c`; ethereum `0xbb08c87a2e871fcf3d86c4f7ed03dec8b66297ba` | ⚠️ Unaudited |
| ZkEvmVerifierPostFeynman | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d4702aa5c09af5dd1323e1842a43789021f485` | ⚠️ Unaudited |
| ZkEvmVerifierV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3f7b737155e6e0dece9cd8cd3240d15939c58184`; ethereum `0x4b289e4a5331bafbc6ccb2f10c39b8edcecdb247`; ethereum `0x585dfad7bf4099e011d185e266907a8ab60dad2d`; ethereum `0x63fb51c55d9605a75f8872c80de260a00facfaa2` | ⚠️ Unaudited |
| ZkEvmVerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb`; ethereum `0xcaecee2e815e7f758c2477f900afa14bddce54b3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (351)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3508174fa966e75f70b15348209e33bc711ae63e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a4991eda6166bc9ffedad1335d006bae8a9033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x02812d966b5cdeeb9acbbbae51ca2d5d0f86a086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x02d96869f2f88eafdaed49d5e9fe95c9c904e52c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x05274278e8cc32999944e4ff973c4d1033200e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x06efdbff2a14a7c8e15944d1f4a48f9f95f663a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0894150db82b912105f6d0907b5c69e72f1df279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0c67d8d067e349669dfeab132a7c03a90594ee09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392354 | `0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x0e58939204eeda84f796fbc86840a50af10ec4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x105b9baaf75da556c0206159481243163faea1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x11931146bfa9664c82309f740df3a56e8df4e254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x13d24a7ff6f5ec5ff0e9c40fc3b8c9c01c65437b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392355 | `0x13fbe0d0e5552b8c9c4ae9e2435f38f37355998a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x150a31d567cfe36bb09fc90a01e96e2699913242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x16f811084a2944664f15945327add329e0dcc30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x174d1a887e971f7d0fe5c68b328c30e0ed743160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x191770c52309dff2c52ffecf059ecc3862f5d721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1a658b88fd0a3c82fa1a0609fcdbd32e7dd4ab9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1d14c3498546abf7af8e4cc216a5d1a5e25bfd00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1d40306eefcf6ebd496d6048f6edf8892346e558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1f807e2e8ab2e61230a0a9c271f90242831278b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392357 | `0x247969f4fad93a33d4826046bc3eae0d36bde548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x285bcdfef2bc55365cbbd01a4550d23f7c962198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x28665089985bfcab433eea115944288abfcb5615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2b14d0e4b042d11c7e3fc653132a2c82efa7d376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2c51f93e3075a007a746aa91f4ba07aee8423b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2d567ece699eabe5afcd141edb7a4f2d0d6ce8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2e07f0fba71709bb5e1f045b02152e45b451d75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2f9449644ceaf63ef9bc8d1fd359be53490c1ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x319bdb9ca39d1d2e2f036008f7fb868254d850f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392358 | `0x31c994f2017e71b82fd4d8118f140c81215bbb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x331a873a2a85219863d80d248f9e2978fe88d0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x33b60d5dd260d453cac3782b0bdc01ce84672142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3808d0f2f25839e73e0fbf711368fc4ae80c7763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x38224d52ecc979aedfeb31b1eea0cfcebd55247e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x392beda731d31a751f82c67047bb214e2f126aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x39909b53ee15c673178a31921359f044811f714b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392359 | `0x3da0bf44814cfc678376b3311838272158211695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3ffe801a43d25d0288683237a848e14f73a226f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4176b3ceb67ca8c715092fef891afa8f40fa814d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x41df5b0687a9c1c98c0f6507d1aac2f81a01a2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4200977c58c6298bdba595c4835c9897e757ca6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x42a899f5e0a8add4f1667b31e5f08097430d5d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x42bcacb8d24ba588cab8db0bb737dd2efca408ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4355d497a568f1332cb59b0e0cdb83afecb5e09c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x485149079c421f9e4c465276bbabb2fe0748d138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4966c037d653e31db2c1f9727dd50dc679d51d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4a1b3d103801f0e1400046ae1948b9808e9b043b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392361 | `0x4c0926ff5252a435fd19e10ed15e5a249ba19d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4d88fcfc4294a675968ae98cfefe436d3e47a8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4f31dd97b4c2fb3cd51de320ff0d814c1514c7f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4f4722115082a2a662e6a663eb2ba069c9a4deae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392362 | `0x50c7d3e7f7c656493d1d76aaa1a836cedfcbb16a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5431937cf9cb638df5e3587ae0a2f62130cee27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x552137396879d96a4396e376b83050cf0ace2d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x585dfad7bf4099e011d185e266907a8ab60dad2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5b3477d4350df6a69c9f1c545e58046aacc7c61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x5e9154a96ada7a32ccb1810b65d6bc9809b4585f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392364 | `0x62597cc19703af10b58fef87b0d5d29efe263bcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392365 | `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x64046cfdd76b57d8206cde65e8435a2cc561de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x642af405bf64660665b37977449c9c536b806318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6435e29515febc9061c36d32b2b1d03cbe6f9cdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392366 | `0x64ccbe37c9a82d85a1f2e74649b7a42923067988` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392367 | `0x65d123d6389b900d954677c26327bfc1c3e88a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x66604c8c788785d12b04640f8b16b88ebdbfddaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x66e5312edeeaef6e80759a0f789e7914fb401484` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392368 | `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6beaa1f51a25fddda2c4e7b1ade8dc1257870de6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6d247636c987415944a865a12559a1c96ceea1c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6e0618d128d2d861994df7a725743f69b53c2804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6e2ced6c02f28cb47041cfadb07d7806a0fed311` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392369 | `0x6ea73e05adc79974b931123675ea8f78ffdacdf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6fa66eed8e8086f4c77204b5484d26f4e9ab7772` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392370 | `0x7003e7b7186f0e6601203b99f7b8decbfa391cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x71d7f43617ceae99a43b7727151267a9919288f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x72cacbcfde2d1e19122f8a36a4d6676cd39d7a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x72e2451a2da1535dbf0e7cb1e8c69f56e00a7b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x74670a3998d9d6622e32d0847ff5977c37e0ec91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392371 | `0x781e90f1c8fc4611c9b7497c3b47f99ef6969cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x798576400f7d662961ba15c6b3f3d813447a26a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7a32aa04c4b1d2b09ad5783c33fd582f1f3fea89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392372 | `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392373 | `0x7bc08e1c04fb41d75f1410363f0c5746eae80582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392374 | `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x812c39f0c21060391882dea89ce6b29b1e3bf672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x83a933a8e5909a50bb2399cc19d8e12606dc26f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x86c5cbfc03fffc7faf5dfc7d781a9adfa9f47dd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392375 | `0x8a54a2347da2562917304141ab67324615e9866d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8ae8f22226b9d789a36ac81474e633f8be2856c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8b0b9c4e9f41b9bbdeffee24f9f11c328093d248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8ca7296fada2518095c30a3516b74ef26ad37e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8e34d07eb348716a1f0a48a507a9de8a3a6dce45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9218732389d80f9b8723c3f32a38865b7a63564a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x93215cccc0f8735d347abed875cfd62fa398b887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x96c21c2038b7a8fc5c69f093b17e0f5ae9c61f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x97f421ca37889269a11ae0fef558114b984c7487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x987e300fdfb06093859358522a79098848c33852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x98de219a50584be7ca16a065f7714d220c0105f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9b45268c9f150b76a4300961471e67a63d1d377f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9bd84bde23984397c3dc80151cdbed9541007327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9dc2684e434757ccc309963bd568932ecebc8fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9e535d79637f542cd78aa2eb99476baea43203dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9f17e18918733307b3b7db176e89a978b1e29fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x9fdceebcd49eb677f3c1f068f1d3a57aa00a1078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa13baf47339d63b743e7da8741db5456dac1e556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa18b69834b9053aff320c921dd1afaa547ff508f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa1a12158be6269d7580c63ec5e609cdc0ddd82bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa26dcf70bd8e1a9e7143788e3577c15611eccf81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa2ab526e5c5491f10fc05a55f064bf9f7cef32a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa32506a6ec459b6e2f25bad9aab1a8aa934d9aa3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392379 | `0xa5df8530766a85936ee3e139dece3bf081c83146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa76acf000c890b0dd7aeef57627d9899f955d026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa7773655c4f7a2c8a62849d0bd3e5d960380ad48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa77d19c1f2b06c9aea9be88c17b771a33892734f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa940e99fb7762db887668c574bdfcd92020c35ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xac78dff3a87b5b534e366a93e785a0ce8fa6cc62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xac92e88bac1848a5feea5cf5a60e0abc3bd5df94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xacae65bb7166c35a8e1e3ec17a168e61b581d330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xaf2f898a8680cb52766abe0588ebe6b9bfe37845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xaf9a61aa21ab4a2fdbc88e81363d2e3d359749dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb239e88e4b91af6a0a54fd7996410b5270ba8633` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392381 | `0xb2b10a289a229415a124efdef310c10cb004b6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb32b387499483be3fa38751cec0ee0ac596335ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb5ce5f2277cfc547f48aa8263838faed424ae4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb93ac04010bd61f45bf492022a5b49a902f798f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392383 | `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbad002fb13adffcbcba57a4d4a43886f3f4c56cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbc9d741501a20f962756c95bf906b4abffadcf8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc568b5dccebe52073fa783eadacde0a30fa4c2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc6305b415e1c08d11e4f6b23b29af22d2ee56fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc67d807b67fe541a9efeedab0fd9dc23332e3064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc71532468a74084cfd824c0445e96f9a2dc3bd7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc7d86908ccf644db7c69437d5852cedbc1ad3f69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xca77eb3fefe3725dc33bccb54edefc3d9f764f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xcaa86d504b7670f4bce0b323c2aaf7002cf6c478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xcb4638620e4c6decef26374e71b0dd4871863593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xceec457fe7eb7138b66ecf191c0a2fca7a94ac3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd2f3ab0e1f5015a08ce1b98e6ca62e6101c30a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd3c42158682d55e082eabe08a29f7515a97ca307` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392385 | `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdc1d1189da69ae2016e4976a43de20972d349b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xddc3fb3a10e27cf81fa5ae545278fc4e497b87c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xde3be7c2aa151d1e152ddfcbf0962fcdf5323dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdfa025024825169a46cceb0310f540b9f3d2facd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdfea658fa9bd311d6629f46baa775580a7ff80ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe0a0509a66c509f55c85a20eb8c60676135081f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392387 | `0xe2b4795039517653c5ae8c2a9bfdd783b48f447a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe33bee9d3d9f62b86ee577977cd6ecfc6f5f88a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe9490c2a96389ee334f6aa83a467ee2b32880017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xeb803eb3f501998126bf37bb823646ed3d59d072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392388 | `0xef27a5e63aa3f1b8312f744b9b4dceb910ba77ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392389 | `0xf0b2293f5d834eae920c6974d50957a1732de763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf6069db81239e5194bb53f83af564d282357bc99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf610a9dfb7c89644979b4a0f27063e9e7d7cda32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf76de5c08432074496038a01f00598243a83fc59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf76f915df8d59c8eb7324533af1f41cba9c4a390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf8a069d9230238763fc574157fa39a78396bd26c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-392390 | `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfba14466fc7620a3b3fd2def8ae527c2f414aaa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfdf1ee0098168eaa61bf87db68c39c85151a4e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x014a7dd763400a27efaca56fe65dfbc96e9ca12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0378d0f56f13f018b8d4803f09349781e143453e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03a0295924283b292001dd34a46bbebdab4c97d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03f6b6ff4907feaad5af5b14332341789e006fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0511b719cbb1c44058141fb65d09cf2cf1fe5553` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392334 | `0x058dec71e53079f9ed053f3a0bbca877f6f3eacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x06779aca5a8881faf32b02582fb7732acc0a5992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x094a428a21f6333b8d8239129d703d3afabd92a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x09fac4f380575ab37286f7192246fd437be40f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0b991668a8c48906bcd252a564707882b3d7f6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0daaf82592258626867bd36a05af5f82f35358dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0db416f4387ed89c1c99955fe0ecad458f07c467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0de7e06c0419f5f144ce9fd5e9e2f69832b54727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x11931146bfa9664c82309f740df3a56e8df4e254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x12d4da7bb98a4c127890db6851b8acce88eef705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x13cdb55bbaa3a03097c1843d5edf3ddc0fbec242` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392335 | `0x13fbe0d0e5552b8c9c4ae9e2435f38f37355998a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16f811084a2944664f15945327add329e0dcc30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1731926c62b6a63abf9613ee3a3fa6c735211513` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392336 | `0x179b9415194b67dc3c0b8760e075cd4415785c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x17bcb12c470d0923492d5d3dc03077908ee245af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x187231595d059ae3cba52beb52bd37146a3d58b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c230faf386d82e0eb9f2049216bf9614a80d6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d250cc688687b5b0c2e1890d06b744b0581bf4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1e09dc71cead4aacd279f7039aaa7adb0ff13d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x232967b45df90307bf02b7abe84ae016a91f9634` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sepolia | unit-392337 | `0x247969f4fad93a33d4826046bc3eae0d36bde548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x278520a0dcfe8efa987b21dab89ce6718d6a2ae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x285bcdfef2bc55365cbbd01a4550d23f7c962198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28665089985bfcab433eea115944288abfcb5615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a33eff3b27e49f1adae0eae727aefabb66245d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c914250b42707ede24b608781df094ebe8de670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d567ece699eabe5afcd141edb7a4f2d0d6ce8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ee40bfb00d96db51d11d877c522360850bcfee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f67b7f5634b8286723c656bb579a3f0a60931b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x318b5a81a28aba83cb2450ec6d16a0f98baf81a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392338 | `0x31c994f2017e71b82fd4d8118f140c81215bbb37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32234806de682b295f5b41ce45d3e43226a33160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32cf7c7195904b68456e9aa9c1bb9245b74f61f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x337296f0dd67db255efcc3f34e8919a521adfbc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x33c0ab1c7a1a40f4bb85190c79de23518ec10ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x350a5fb777e78293f57668b6502937e1484048e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x355b5c7b7789011093fa3c07fc94c9c22edcb58d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35a003c0f01a562c2887baec3dd0354b188979ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x363a9f3abbd27894a02436c939307ed52cb4c2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x368c15d6f6a52ab37acaf77fef3f8f30f996fe80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39909b53ee15c673178a31921359f044811f714b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c684d7c1a18b445427c034cd725b341bc90ac67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d7c30ad0aee6ba71a7b37e57fc27f82e67003b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392339 | `0x3da0bf44814cfc678376b3311838272158211695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3faef86266046d4192ff5de8479164f894cd7cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fded69ec824616d499fed7f7673c24aebedc30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4442bc82f9e67869f5c332f2713ab4203b856171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x459b4b072f66e6edb08b68310d5699dab523ee3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45ba70424d61e6a0d2a5ff9093927350471a2728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45f96686304e01680ce3be0c5391ee97dc616082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47896705f17610d0a5bb01115183631a0bf7214a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392340 | `0x481b20a927206af7a754db8b904b052e2781ea27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4866a0e0c6b0f1f0c25244cffe48430981f2e5aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49109e94c06b40e5ff29b9d1b8e4925c565218ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49823c0ee6a3d84f61839fda8360fc53ef38d0ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49a2a7bba3e3ee4b5513544e8574dd466f62e7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bcfa2daba57fb46eff3860ee46ef522f9af89f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4c84b30e3d5fd345e6b72a148d8bf22f8efb2bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4dbba612a46ffdf8f8052ba8853aef50e01293ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f31dd97b4c2fb3cd51de320ff0d814c1514c7f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4fff6328fb9d6a69c313ff304edc5a18319ca81d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392341 | `0x50c7d3e7f7c656493d1d76aaa1a836cedfcbb16a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x514026af871c2745a5c8579d2f601a3e8cab48dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5431937cf9cb638df5e3587ae0a2f62130cee27e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x573cc3b0c71104a559cb0be609caaa4d64bb3eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x579f7207247741af70de26f77936273858855c06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a34e34c5c74ef9b7ec9ac69e9bf191f4845a3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5adf9b34bd9481d72f0bf81144d53bdf88054741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b92dce1a3dceddbb7af2c6dad87d10a9cd74bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f238875a50fa7d64c438584d9347f4746341ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63d4f16000bb8b8251a68871594cfdeaae15728f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6427920214b720828bb604e3eaf0a6b3b7a8b0d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392342 | `0x65d123d6389b900d954677c26327bfc1c3e88a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65d1b7f4ab1e6412f7af8a6efc5e0a1216de903b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x66f9ec56d1dee9bd1154c31aa3ec82c03dca7e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68c9cbcb9a6048f0148ed2ae7d69b2cde509af56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6916228b94b59bf4e956a8e935cfe787048623cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6af8f976f6ca085b34adb641842158ffb8bca936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c1b57867a60d03f4b1bfade556a37358f984d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c6b7c6acd0b18b91d6df9877c26f4c4f29e812a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d0769a82cb87009a9607d78779c57b185836187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6f94395fd16d4c91196f7cc6db13d44ed73e0e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7471c00c3bac61984e049cdd9dfefdd5375b3b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74bae9d04c15ea0230d93a7b602c9f3c869f0399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7f6671db38d9b5ba3375f81f53826ab64cadc39f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7faf2c6cf8633c70ca1bdf428160422f98a4a994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x812c39f0c21060391882dea89ce6b29b1e3bf672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x827218b38260665357a672f0c4dab8ed95322351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x837e2de33c9f4aee698b9d78770e5691e8b80878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x843a0612e1fd42af69224e4fafb53ca65589aa8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84fbd14a1a9c2927f4ac4a508fa91d295b507d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x868624b82b1e06dafa2179df2a53cf2d0ad58fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x873e8fb24acacbdbc9a646eb889afbae472b2a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x880182579dff154bf9c976e0b814300f27c66ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88b6586a68daa4f7c6c5b7efe9463b7595eb8dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88eed4046fd3158faa340d58db1e3ff33e2931e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8990b6021e927404664ced200a43e434e105835d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a360c7f6fca548507017dded732bfe7e078f963` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392343 | `0x8a54a2347da2562917304141ab67324615e9866d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b0b9c4e9f41b9bbdeffee24f9f11c328093d248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cf6afbefbd987d19a2f3a633315c70217cc1e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8da0c9d391bc1b8456341e74c8cd90ed1d21e20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8daabb0eea5ea77535134044a9c2aaa8186ce6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8f3486292cece8d15c6f60a11f5646e6f83cc467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9021c9421607c347485bb9fa3471361d2709ee3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392344 | `0x91e8addfe1358aca5314c644312d38237fc1101c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x927efd03eef427bf2254f76783526f9b49da25ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93215cccc0f8735d347abed875cfd62fa398b887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9542ec1be7a54b53ef8227489f0f72adc42b1d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9683912957600bb2da8323cb1d5cece1919f8799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x96be62716ec44e5a51f0955944e8d1bfb5d4368e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x96c13a9b06036d6411d085c4c60cfee0bb3f6554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x96c21c2038b7a8fc5c69f093b17e0f5ae9c61f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97ac69d56bbeef2ee00f0853b7eddb572c097f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97f421ca37889269a11ae0fef558114b984c7487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x99f20bbf15a4d1b64040fe9e3686dcb9e437e56d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392345 | `0x9ad3c5617ecaa556d6e166787a97081907171230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9adee2c50861b3d3c0129ef70c79ed80f39c0a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9bd84bde23984397c3dc80151cdbed9541007327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9f651e63389a96a9ab46b441fd0ff24af423873a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa03ff2217deb94057599ac689a2ecd718963caf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392346 | `0xa0673ec0a48aa924f067f1274ecd281a10c5f19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa18b69834b9053aff320c921dd1afaa547ff508f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392347 | `0xa5df8530766a85936ee3e139dece3bf081c83146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaaee3b68226a0cf2b7b4b68ecb0bf963a00ede8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab829787574afc49178d6752494b036d69c13740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xabbb3624d5793c7de76453616c14c203926eb0bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac6e0e7fd84edf8ce24b611861a14cc7a0c08c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xacae65bb7166c35a8e1e3ec17a168e61b581d330` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392348 | `0xadca915971a336ea2f5b567e662f5bd74aef9582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xafc3f1082c089154a346d83a0a0ffd0adbbee174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb23fc1f63b0bffeb63f942f409cb580509b4bf02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb32b387499483be3fa38751cec0ee0ac596335ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb49dfbf64cba58296f7c6e5d6e78c52f3851fccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb5c34af48399317715091ae744b992fc0e61552e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb61500867acd19f0f1a668c476df31a3e072fe77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392349 | `0xba50f5340fb9f3bd074bd638c9be13ecb36e603d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbaae4f46b8fbf101f211cff8e41a80c57d0fa0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbbdb5d761d42229c28a7971188a5841d5fec7a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc0aca49ab80ad1277982295db5316113245cdd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd7d9d6b5826cbe0107f582979056094fc4a695a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe57544eaf3515e888614a464ec9e0ad38f73e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf28c28490988026dca2396148de50136a54534e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3d80bbe934448916b8ef688dfdda1fcee497a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4f6e6587fd20992488aa86c94b7a65067eeef2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc5baa55e03ea7291b81f96c200609970f2f6933b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc683fad2c34520f17f8d9b9bdb3403c4cbb35789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc706ba9fa4fedf4507cb7a898b4766c1bbf9be57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc71532468a74084cfd824c0445e96f9a2dc3bd7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcae219836713fb843592575a56df7451bd61c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd243ca27a4b5a50ebf42075c9d7215545fe84f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xceea4b9075413fbc4b9cfc0bd9bf84f69502cbc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1fb9186673b9309e11d8a3e304c5b240b9af951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd240dc0b523758ebbed5ce19f057fb1b0a4284f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8470192f497bc4976bb732802cad36057d325fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8d39d8d1948668fa5158cd6c816d850231fda4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbf8cf8aa2b4c9b4b31c16d232be98fcb0b2b642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdcb9bef93128c48ae543652de05feac471d996f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xddc3fb3a10e27cf81fa5ae545278fc4e497b87c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde600b01c6c02952bbbc009c251222756ae75d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde85eaa8d062937c1163aed95f4e69c245900a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0bfa7f3b06a9589a914be09ba0e5671f481a722` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392350 | `0xe17c9b9c66faf07753cdb04316d09f52144612a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2ead16c3af5019baba159aa335624d25fc2ce54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe507f2a77e0b3f7d5939daa611bbf4a33277f0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe644d72db4a929b5bf76b06ee7d8a30f2e78b83a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6feea14fb5242d54a107ee6d7ecd7bdafdc8805` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe82963d63ad39454af70d5ba741d3726a1da3f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe86ad3312fa693aded34dec3899176d97ac883b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeaf4d781aaca6582f8abd785158dadf3d54f6789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb604ada99ab54c3c56b83858a38f171c79eab40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-392351 | `0xef27a5e63aa3f1b8312f744b9b4dceb910ba77ac` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sepolia | unit-392352 | `0xf0b2293f5d834eae920c6974d50957a1732de763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf1bf3da92024d8b5e88a4ae95e7823aa2d1a7c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf22b24fa7c3168f30b17fd97b71bdd3162dde029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf5265d2fbcbf85b71a4164871b6162a8486ca589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6f9f11cc18a31d6d4593b45bb7845ada84b10b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf714fca48a245abe9a5d2ab2521fca68ae9d5b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf76f915df8d59c8eb7324533af1f41cba9c4a390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf84d06413cf070599c3b7b482c8c6db543daff44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc45edbe3f846dd9b66c645022c229b753fac5fd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 401
- Live contracts: 20
- Unknown liveness contracts: 381
- Source-verified contracts: 96
- Currently scope-matched contracts retained as-is: 8
- Classification counts: currently scope matched=8, candidate review=67, contamination review=1, source verified unclassified=20, unverified unclassified=305

Showing first 200 of 401 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | TransparentUpgradeableProxy<br>`0x6260af48e8948617b8fa17f4e5cea2d21d21554b` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x7f2b8c31f88b6006c382775eea88297ec1e3e905` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xb2b10a289a229415a124efdef310c10cb004b6ff` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xb94f7f6abcb811c5ac709de14e37590fccd975b6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| currently scope matched | TransparentUpgradeableProxy<br>`0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | EmptyContract<br>`0xfaf8f72e54d1089fa1882b6f597bfdff59a8afca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | EnforcedTxGateway<br>`0x642af405bf64660665b37977449c9c536b806318` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | EnforcedTxGateway<br>`0x7e87c75bbe7991bbcebd2c7a56f4cfc923bddbcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1BatchBridgeGateway<br>`0x7999cdd5e2893475d89211a2e3fda67a841e3233` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1CustomERC20Gateway<br>`0x40c3c3dea3b7d6d117e6713377144fd8ee6d6c97` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1CustomERC20Gateway<br>`0x7f512e2e9dfc4552941d99a5b2405bbcf5781c2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1CustomERC20Gateway<br>`0xbad002fb13adffcbcba57a4d4a43886f3f4c56cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ERC1155Gateway<br>`0x244bf7aef29f03916569470a51fa0794b62f8cd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ERC1155Gateway<br>`0xca46358d5f01e4f865885514dae6275087ffe38e` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ERC1155Gateway<br>`0xcb4638620e4c6decef26374e71b0dd4871863593` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ERC721Gateway<br>`0x79f1bf1906b63b56e08c3ada4c51de11f145a27a` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ERC721Gateway<br>`0xd1841c5756428812233eea78afc17cb2d3e392bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ERC721Gateway<br>`0xde3be7c2aa151d1e152ddfcbf0962fcdf5323dae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ETHGateway<br>`0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ETHGateway<br>`0x1fee6a6dc49095fb9c84d61aa4b8a07284b2a1d0` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ETHGateway<br>`0x546e0bf31fb6e7babd493452e4e6999191367b42` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1GatewayRouter<br>`0xb93ac04010bd61f45bf492022a5b49a902f798f3` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1MessageQueue<br>`0xbc9d741501a20f962756c95bf906b4abffadcf8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1MessageQueueV2<br>`0x39c36c9026ac18104839a50c61a4507ea5052eca` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1MessageQueueV2<br>`0xefa158006b072793a49e622b26761cd0ec38591d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1MessageQueueWithGasPriceOracle<br>`0x137cc585f607edebbc3ca6360affcfeab507b374` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1MessageQueueWithGasPriceOracle<br>`0xebaed7a81c298b24ee6d59c22698a951dc448e01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ScrollMessenger<br>`0x72981fd00087ff4f60abfde9f353cb1912a37fb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ScrollMessenger<br>`0x79b6eabffaa958fdf2aa2bf632878bd323dcbf69` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ScrollMessenger<br>`0xaf2f898a8680cb52766abe0588ebe6b9bfe37845` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1ScrollMessenger<br>`0xc6326109e33465d6d61e4cb7afce7b1be7cff868` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1StandardERC20Gateway<br>`0x4015fc868c06689abeba4a9dc8fa43b804f6239c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1StandardERC20Gateway<br>`0x9218732389d80f9b8723c3f32a38865b7a63564a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1StandardERC20Gateway<br>`0xff8238be22cc583b3d69a76da9d84da7788c0ee9` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1USDCGateway<br>`0x4a5810f71b6836027c26c25bff9708dfcd2b5432` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1USDCGateway<br>`0x56ce8a8e8399f6cd5e7e4f549e8bfd673f2aff5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1USDCGateway<br>`0x6667123b5017aab9945f73345848b82d7a953aa8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1WETHGateway<br>`0xa4f400593dffc0ae02f940ab58f6e3cc6fb9fb49` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1WETHGateway<br>`0xd3c42158682d55e082eabe08a29f7515a97ca307` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L1WETHGateway<br>`0xe25effefd08c4a57556d47ef96471cb567a86c24` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | L2GasPriceOracle<br>`0xfdf1ee0098168eaa61bf87db68c39c85151a4e9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | MultipleVersionRollupVerifier<br>`0x1ea29d57dac237152d878758bae4beb2668998f6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | MultipleVersionRollupVerifier<br>`0x4cea3e866e7c57fd75cb0ca3e9f5f1151d4ead3f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | MultipleVersionRollupVerifier<br>`0xa2ab526e5c5491f10fc05a55f064bf9f7cef32a0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | MultipleVersionRollupVerifier<br>`0xf94afbd9370e25dd6ca557d5d67634aefda2416b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | PauseController<br>`0x57e26d997852e7e94915e250446c3bf43f41d98d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | PauseController<br>`0x8717b1e9b466685b589def23891bacbb92265afe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ProxyAdmin<br>`0xcc2c53556bc75217cf698721b29071d6f12628a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ProxyAdmin<br>`0xeb803eb3f501998126bf37bb823646ed3d59d072` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0x0a20703878e68e587c59204cc0ea86098b8c3ba7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0x2e07f0fba71709bb5e1f045b02152e45b451d75f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0x39ef2c564ce27eb5702ceb71cf00c633932ca612` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0x4f250b05262240c787a1ee222687c6ec395c628a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0x8f339292d2b3909574b2beb051a613a987db538f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0x9bb163401e8c72573854c4cd968afa7a7b02d25f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0xaa6d0f2490ac3957b97e11afec6f0f250593cac8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0xb7c8833f5627a8a12558cafa0d0ebd1acbdce43f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollChain<br>`0xfa148514d03420b7b1a13ec74da06d2ca875539c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | ScrollOwner<br>`0x798576400f7d662961ba15c6b3f3d813447a26a6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x0d7e906bd9cafa154b048cfa766cc1e54e39af9b` | external_dependency_or_infra | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x22e5c20bb540d68f43a6790927fab8e4fbdc83e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x56971da63a3c0205184fef096e9ddfc7a8c2d18a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x5bcfd99c34cf7e06fc756f6f5ae7400504852bc4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x67260a8b73c5b77b55c1805218a42a7a6f98f515` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x72cacbcfde2d1e19122f8a36a4d6676cd39d7a5d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x8432728a257646449245558b8b7dbe51a16c7a4d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x8c8fb15e0dbdae91aa426decedfb779c6ae985e3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0x987e300fdfb06093859358522a79098848c33852` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0xa13baf47339d63b743e7da8741db5456dac1e556` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0xb8f7ea9998530833cbb7e0ef4f0d945957229d8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0xbc4b3d9a89f187dbaa0d2e60985ea1fffa5247d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| candidate review | TransparentUpgradeableProxy<br>`0xf1af3b23de0a5ca3cab7261cb0061c0d779a5c7b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a47cec6657570831ae93db36367656e5597c310` |
| contamination review | ZkEvmVerifierV1<br>`0x3f7b737155e6e0dece9cd8cd3240d15939c58184` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ScrollChainCommitmentVerifier<br>`0xc4362457a91b2e55934bdcb7daaf6b1ab3ddf203` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | SystemConfig<br>`0x6a124779fdf107c3f6bcb992731dcaad09f2276a` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | SystemConfig<br>`0xf15a4b6d1fe2ca6ee38bc3fb957f43f58b515eee` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | TimelockController<br>`0x0cd4c0f24a0a9f3e2fe80ed385d8ad5a2ffeca44` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | TimelockController<br>`0x0e58939204eeda84f796fbc86840a50af10ec4f4` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | TimelockController<br>`0x1a658b88fd0a3c82fa1a0609fcdbd32e7dd4ab9c` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | TimelockController<br>`0x3f9041350b661c74c6cbe440c8bd6bc4c168a9fd` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | TimelockController<br>`0x826714add4dda2b8750794a467c892c0cd49216b` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | TimelockController<br>`0xdc1d1189da69ae2016e4976a43de20972d349b1b` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | Whitelist<br>`0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierPostEuclid<br>`0x0112315fa1c81c35ac9a477e161b52ae4d1466b3` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierPostEuclid<br>`0x1dc65f7ab1964ec328f6249d1a68d0c1633a1357` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierPostEuclid<br>`0x75249b5ebf283d0a46c2f9b21498a7d600b6b577` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierPostEuclid<br>`0x84f2f46a1ae147e87a7b361e3ae4ff2b9af0480c` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierPostEuclid<br>`0xbb08c87a2e871fcf3d86c4f7ed03dec8b66297ba` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierV1<br>`0x4b289e4a5331bafbc6ccb2f10c39b8edcecdb247` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierV1<br>`0x585dfad7bf4099e011d185e266907a8ab60dad2d` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierV1<br>`0x63fb51c55d9605a75f8872c80de260a00facfaa2` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierV2<br>`0x2d6e16d8e8a0c3bc7750e774b108ec39ab0c18fb` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| source verified unclassified | ZkEvmVerifierV2<br>`0xcaecee2e815e7f758c2477f900afa14bddce54b3` | non_address_book | unknown | unknown | verified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x3508174fa966e75f70b15348209e33bc711ae63e` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x47a4991eda6166bc9ffedad1335d006bae8a9033` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x02812d966b5cdeeb9acbbbae51ca2d5d0f86a086` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x02d96869f2f88eafdaed49d5e9fe95c9c904e52c` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x05274278e8cc32999944e4ff973c4d1033200e96` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x06efdbff2a14a7c8e15944d1f4a48f9f95f663a4` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x0894150db82b912105f6d0907b5c69e72f1df279` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x0c67d8d067e349669dfeab132a7c03a90594ee09` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x0e58939204eeda84f796fbc86840a50af10ec4f4` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x105b9baaf75da556c0206159481243163faea1c9` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x11931146bfa9664c82309f740df3a56e8df4e254` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x13d24a7ff6f5ec5ff0e9c40fc3b8c9c01c65437b` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x150a31d567cfe36bb09fc90a01e96e2699913242` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x16f811084a2944664f15945327add329e0dcc30f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x174d1a887e971f7d0fe5c68b328c30e0ed743160` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x191770c52309dff2c52ffecf059ecc3862f5d721` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x1a658b88fd0a3c82fa1a0609fcdbd32e7dd4ab9c` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x1d14c3498546abf7af8e4cc216a5d1a5e25bfd00` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x1d40306eefcf6ebd496d6048f6edf8892346e558` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x1f807e2e8ab2e61230a0a9c271f90242831278b4` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x1fcbe079c4bbab37406dab7dfd35acae37d5c55d` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x259204ddd2ba29bd9b1b9a5c9b093f73d7eacf37` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x285bcdfef2bc55365cbbd01a4550d23f7c962198` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x28665089985bfcab433eea115944288abfcb5615` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x2b14d0e4b042d11c7e3fc653132a2c82efa7d376` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x2c51f93e3075a007a746aa91f4ba07aee8423b6f` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x2d567ece699eabe5afcd141edb7a4f2d0d6ce8a0` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x2e07f0fba71709bb5e1f045b02152e45b451d75f` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x2f9449644ceaf63ef9bc8d1fd359be53490c1ee0` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x319bdb9ca39d1d2e2f036008f7fb868254d850f6` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x331a873a2a85219863d80d248f9e2978fe88d0ea` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x33b60d5dd260d453cac3782b0bdc01ce84672142` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x3808d0f2f25839e73e0fbf711368fc4ae80c7763` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x38224d52ecc979aedfeb31b1eea0cfcebd55247e` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x392beda731d31a751f82c67047bb214e2f126aed` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x39909b53ee15c673178a31921359f044811f714b` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x3ffe801a43d25d0288683237a848e14f73a226f0` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x4176b3ceb67ca8c715092fef891afa8f40fa814d` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x41df5b0687a9c1c98c0f6507d1aac2f81a01a2c7` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x4200977c58c6298bdba595c4835c9897e757ca6e` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x42a899f5e0a8add4f1667b31e5f08097430d5d49` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x42bcacb8d24ba588cab8db0bb737dd2efca408ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x4355d497a568f1332cb59b0e0cdb83afecb5e09c` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x485149079c421f9e4c465276bbabb2fe0748d138` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x4966c037d653e31db2c1f9727dd50dc679d51d65` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x4a1b3d103801f0e1400046ae1948b9808e9b043b` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x4d88fcfc4294a675968ae98cfefe436d3e47a8d4` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x4f31dd97b4c2fb3cd51de320ff0d814c1514c7f3` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x4f4722115082a2a662e6a663eb2ba069c9a4deae` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x5431937cf9cb638df5e3587ae0a2f62130cee27e` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x552137396879d96a4396e376b83050cf0ace2d7d` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x585dfad7bf4099e011d185e266907a8ab60dad2d` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x5b3477d4350df6a69c9f1c545e58046aacc7c61c` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x5e9154a96ada7a32ccb1810b65d6bc9809b4585f` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x64046cfdd76b57d8206cde65e8435a2cc561de99` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x642af405bf64660665b37977449c9c536b806318` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x6435e29515febc9061c36d32b2b1d03cbe6f9cdf` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x66604c8c788785d12b04640f8b16b88ebdbfddaa` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x66e5312edeeaef6e80759a0f789e7914fb401484` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x6beaa1f51a25fddda2c4e7b1ade8dc1257870de6` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x6d247636c987415944a865a12559a1c96ceea1c0` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x6e0618d128d2d861994df7a725743f69b53c2804` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x6e2ced6c02f28cb47041cfadb07d7806a0fed311` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x6fa66eed8e8086f4c77204b5484d26f4e9ab7772` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x71d7f43617ceae99a43b7727151267a9919288f6` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x72cacbcfde2d1e19122f8a36a4d6676cd39d7a5d` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x72e2451a2da1535dbf0e7cb1e8c69f56e00a7b7b` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x74670a3998d9d6622e32d0847ff5977c37e0ec91` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x798576400f7d662961ba15c6b3f3d813447a26a6` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x7a32aa04c4b1d2b09ad5783c33fd582f1f3fea89` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x812c39f0c21060391882dea89ce6b29b1e3bf672` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x83a933a8e5909a50bb2399cc19d8e12606dc26f5` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x86c5cbfc03fffc7faf5dfc7d781a9adfa9f47dd1` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x8ae8f22226b9d789a36ac81474e633f8be2856c9` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x8b0b9c4e9f41b9bbdeffee24f9f11c328093d248` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x8ca7296fada2518095c30a3516b74ef26ad37e20` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x8e34d07eb348716a1f0a48a507a9de8a3a6dce45` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x9218732389d80f9b8723c3f32a38865b7a63564a` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x93215cccc0f8735d347abed875cfd62fa398b887` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x96c21c2038b7a8fc5c69f093b17e0f5ae9c61f43` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x97f421ca37889269a11ae0fef558114b984c7487` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x987e300fdfb06093859358522a79098848c33852` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x98de219a50584be7ca16a065f7714d220c0105f6` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x9b45268c9f150b76a4300961471e67a63d1d377f` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x9bd84bde23984397c3dc80151cdbed9541007327` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0x9dc2684e434757ccc309963bd568932ecebc8fd9` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0x9e535d79637f542cd78aa2eb99476baea43203dd` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x9f17e18918733307b3b7db176e89a978b1e29fb7` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0x9fdceebcd49eb677f3c1f068f1d3a57aa00a1078` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0xa13baf47339d63b743e7da8741db5456dac1e556` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0xa18b69834b9053aff320c921dd1afaa547ff508f` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0xa1a12158be6269d7580c63ec5e609cdc0ddd82bc` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0xa26dcf70bd8e1a9e7143788e3577c15611eccf81` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0xa2ab526e5c5491f10fc05a55f064bf9f7cef32a0` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0xa32506a6ec459b6e2f25bad9aab1a8aa934d9aa3` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0xa76acf000c890b0dd7aeef57627d9899f955d026` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0xa7773655c4f7a2c8a62849d0bd3e5d960380ad48` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0xa77d19c1f2b06c9aea9be88c17b771a33892734f` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0xa940e99fb7762db887668c574bdfcd92020c35ad` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0xac78dff3a87b5b534e366a93e785a0ce8fa6cc62` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0xac92e88bac1848a5feea5cf5a60e0abc3bd5df94` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |
| unverified unclassified | UnnamedContract<br>`0xacae65bb7166c35a8e1e3ec17a168e61b581d330` | non_address_book | unknown | unknown | unverified | n/a | `0x1d4af78021f7498d0fa82b45706422b4b9f3428c` |
| unverified unclassified | UnnamedContract<br>`0xaf2f898a8680cb52766abe0588ebe6b9bfe37845` | non_address_book | unknown | unknown | unverified | n/a | `0x0a47cec6657570831ae93db36367656e5597c310` |
| unverified unclassified | UnnamedContract<br>`0xaf9a61aa21ab4a2fdbc88e81363d2e3d359749dd` | non_address_book | unknown | unknown | unverified | n/a | `0xf9062b8a30e0d7722960e305049fa50b86ba6253` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [202307 Scroll Layer 1 Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202307%20Scroll%20Layer%201%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 41 | high |
| [202307 Scroll Layer 2 Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202307%20Scroll%20Layer%202%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf (also discovered via alternate URL)](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202308%20Scroll%20GasSwap,%20Multiple%20Verifier,%20Wrapped%20Ether%20and%20Diff%20Final%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-08 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 37 | high |
| [202309 ScrollOwner and Rate Limiter Audit.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20ScrollOwner%20and%20Rate%20Limiter%20Audit.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 14 | high |
| [202309 Scroll USDC Gateway Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20Scroll%20USDC%20Gateway%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [202309 Scroll Diff Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202309%20Scroll%20Diff%20Audit%20Report.pdf) | OpenZeppelin | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%20Bridge%20Gas%20Optimizations%20Audit%20Report%20(Feb%202024).pdf) | OpenZeppelin | Audit | 2024-02 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 23 | high |
| [blog.openzeppelin.com/scroll-batch-token-bridge-audit](https://blog.openzeppelin.com/scroll-batch-token-bridge-audit) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blog.openzeppelin.com/scroll-eip-4844-support-audit](https://blog.openzeppelin.com/scroll-eip-4844-support-audit) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Scroll - 05.26.23 Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%2005.26.23%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-05 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 40 | high |
| [Scroll - 09.27.23 Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20-%2009.27.23%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | matched | 6 | 6 | 0 | 16 | high |
| [Scroll Lido Gateway - Zellic Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20Lido%20Gateway%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Manual audit seed](https://docs.scroll.io/en/technology/security/audits-and-bug-bounty) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-04-scroll-zkEVM-wave1-securityreview (1).pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-04-scroll-zkEVM-wave1-securityreview%20(1).pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 40 | high |
| [2023-08-scroll-zkEVM-wave2-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-08-scroll-zkEVM-wave2-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2023-09-scroll-zkEVM-wave3-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2023-09-scroll-zkEVM-wave3-securityreview.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-04-scroll-4844-blob-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/2024-04-scroll-4844-blob-securityreview.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Scroll zkEVM - Part 1 - Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/Scroll%20zkEVM%20-%20Part%201%20-%20Audit%20Report.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Scroll zkEVM - Part 2 - Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/zkEVM%20circuits/Scroll%20zkEVM%20-%20Part%202%20-%20Audit%20Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [2023-07-scroll-zktrie-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-07-scroll-zktrie-securityreview.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023-08-scrollL2geth-initial-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-08-scrollL2geth-initial-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2023-08-scrollL2geth-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Node%20implementation/2023-08-scrollL2geth-securityreview.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Manual audit seed](https://www.openzeppelin.com/news/scroll-eip-4844-support-audit) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Manual audit seed](https://www.openzeppelin.com/news/scroll-batch-token-bridge-audit) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [OpenZeppelin](https://www.openzeppelin.com/news/scroll-zktrieverifier-audit) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-04-scroll-euclid-phase1-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-04-scroll-euclid-phase1-securityreview.pdf) | Scroll (internal) | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-04-scroll-euclid-phase2-securityreview.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-04-scroll-euclid-phase2-securityreview.pdf) | Scroll (internal) | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Feynman-Upgrade-Trails-of-Bits.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Feynman%20Upgrade/Feynman-Upgrade-Trails-of-Bits.pdf) | Trails of Bits | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 6 | high |
| [Internal-Audit-Scroll-Final-Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Feynman%20Upgrade/Internal-Audit-Scroll-Final-Report.pdf) | Scroll (Internal) | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [202402 Bridge Gas Optimizations Audit Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/202402%20Bridge%20Gas%20Optimizations%20Audit%20Report.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 23 | high |
| [Batch Token Bridge Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Batch%20Token%20Bridge%20Audit-open-access.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [EIP-4844 Support Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/EIP-4844%20Support%20Audit-open-access.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Scroll ZKTrieVerifier Audit-open-access.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Bridge%20and%20rollup%20contract/Scroll%20ZKTrieVerifier%20Audit-open-access.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Euclid%20Upgrade/2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Galileo_Final_Report.pdf](https://github.com/scroll-tech/scroll-audits/blob/main/Galileo%20Upgrade/Galileo_Final_Report.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1](https://www.openzeppelin.com/news/scroll-phase-1-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 41 | high |
| [2](https://www.openzeppelin.com/news/scroll-phase-2-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [3](https://www.openzeppelin.com/news/scroll-gasswap-multiple-verifier-wrapped-ether-and-diff-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | matched | 8 | 8 | 0 | 37 | high |
| [4](https://www.openzeppelin.com/news/scrollowner-and-rate-limiter-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [5](https://www.openzeppelin.com/news/scroll-usdc-gateway-audit) | OpenZeppelin | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21267] 202307 Scroll Layer 1 Audit Report.pdf — matched: Extracted all contracts from the scope section and file tree listing. Audit date from cover page: 'July 18, 2023'.
- [21268] 202307 Scroll Layer 2 Audit Report.pdf — no match: Extracted all contracts from the Scope section file listing. Audit date from cover page: July 21, 2023.
- [21269] 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf — matched: Extracted contract names from the Scope section and diff audit file listings. The audit date is from the header: 'August 31, 2023'.
- [21270] 202309 ScrollOwner and Rate Limiter Audit.pdf — matched: Scope section lists 5 contracts for main audit and 11 contracts for diff audit. All extracted.
- [21271] 202309 Scroll USDC Gateway Audit Report.pdf — no match: Extracted 9 contracts from scope section and file paths. Audit date from title.
- [21272] 202309 Scroll Diff Audit Report.pdf — no match: Extracted 5 contracts from the scope section. Audit date from cover page.
- [21273] Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf — matched: All contracts listed in the Scope section of the audit report.
- [21274] blog.openzeppelin.com/scroll-batch-token-bridge-audit — no match: Scope section explicitly lists three files in contracts/src/batch-bridge/ directory. Audit date is May 28, 2024 from the title area.
- [21275] blog.openzeppelin.com/scroll-eip-4844-support-audit — no match: All contracts explicitly listed in scope section of the audit report.
- [21276] Scroll - 05.26.23 Zellic Audit Report.pdf — matched: All contracts listed in the scope section of the report. Audit date from cover page: May 26, 2023.
- [21277] Scroll - 09.27.23 Zellic Audit Report.pdf — matched: All contracts listed in the scope table on page 7 of the report.
- [21278] Scroll Lido Gateway - Zellic Audit Report.pdf — no match: All six contracts listed in the 'Programs' list under Scope section (page 9) are extracted. Audit date is from the cover page: January 23, 2024.
- [24406] Manual audit seed — no match: The document is a general overview page listing audit firms and report categories (e.g., 'Bridge and rollup contract', 'zkEVM circuits') but does not provide specific contract names, file paths, or a detailed scope table. No individual contract names are identifiable.
- [24407] 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf — no match: Extracted contract names from Project Targets section and detailed findings. Audit date from report delivery date on cover and executive summary.
- [24408] 2023-08-scroll-zkEVM-wave2-securityreview.pdf — no match: Extracted contract names from findings targets and file paths. Audit date from cover page and delivery date.
- [24409] 2023-09-scroll-zkEVM-wave3-securityreview.pdf — no match: Extracted from Project Targets section listing repositories and versions. The audit date is from the cover page and delivery date.
- [24410] 2024-04-scroll-4844-blob-securityreview.pdf — no match: Extracted contract names from project targets and detailed findings. The audit report covers circuits in the zkevm-circuits repository, specifically the aggregation circuit, public input circuit, and transaction circuit. The main contracts are BarycentricEvaluationConfig, BlobDataConfig, pi_circuit, tx_circuit, barycentric, and blob.
- [24411] Scroll zkEVM - Part 1 - Audit Report.pdf — no match: Extracted contract names from 'Target' lines in findings. No explicit scope section found; date from cover page.
- [24412] Scroll zkEVM - Part 2 - Audit Report.pdf — no match: Extracted contract names from 'Target' lines in findings and from file paths mentioned. Audit date from cover page: 'Jul 31, 2023'.
- [24413] 2023-07-scroll-zktrie-securityreview.pdf — no match: Extracted contract names from Project Targets and Detailed Findings sections. Audit date from cover page and delivery date.
- [24414] 2023-08-scrollL2geth-initial-securityreview.pdf — no match: The audit report focuses on Scroll's l2geth, a fork of go-ethereum. No individual smart contracts are listed; the entire codebase is the target.
- [24415] 2023-08-scrollL2geth-securityreview.pdf — no match: The report does not contain a dedicated scope section or table listing contracts in scope. The only named target is 'l2geth', which is a fork of go-ethereum. No specific contract names or file paths are provided. The audit date is taken from the cover page: 'October 6, 2023'.
- [24423] Manual audit seed — no match: All contracts explicitly listed in the Scope section of the audit report.
- [24424] Manual audit seed — no match: Scope explicitly lists three files in contracts/src/batch-bridge/ directory. Audit date is May 28, 2024 from the title area.
- [24428] OpenZeppelin — no match: Two contracts in scope: ScrollChainCommitmentVerifier and ZkTrieVerifier. Audit date from title: March 11, 2024.
- [24429] 2025-04-scroll-euclid-phase1-securityreview.pdf — no match: Extracted contract names from project targets and code quality findings. The audit report does not list individual smart contract names in a scope table; instead, it references repositories and specific files. The contracts BatchHeaderV3Codec and ScrollChain are mentioned in code quality findings as part of the scroll-contracts repository. The migration-checker is a Go command-line tool. No other contract names were explicitly listed as in scope.
- [24430] 2025-04-scroll-euclid-phase2-securityreview.pdf — no match: The report does not list specific contract names in scope; it only references repositories (zkvm-prover, scroll-contracts) and general areas (chunk/batch circuits, rollup contract, message queue). No individual contract or file names are explicitly listed as in-scope targets.
- [24431] Feynman-Upgrade-Trails-of-Bits.pdf — matched: Contracts extracted from Executive Summary and Detailed Findings. The report covers the Scroll Feynman Upgrade smart contract changes.
- [24432] Internal-Audit-Scroll-Final-Report.pdf — no match: Scope section lists two codebases: ScrollREVM and zkVM Guest Program Changes (precompiles). No individual contract names extracted as the scope is at repository/commit level.
- [24434] 202402 Bridge Gas Optimizations Audit Report.pdf — matched: All contracts listed in the Scope section of the audit report.
- [24435] Batch Token Bridge Audit-open-access.pdf — no match: Scope section explicitly lists three files in contracts/src/batch-bridge directory. Audit date is from the title line 'Batch Token Bridge Audit | security May 17, 2024'.
- [24436] EIP-4844 Support Audit-open-access.pdf — no match: All contracts explicitly listed in Scope section (page 4) as modified or newly added files.
- [24437] Scroll ZKTrieVerifier Audit-open-access.pdf — no match: Two contracts in scope: ScrollChainCommitmentVerifier and ZkTrieVerifier. Audit date from cover page.
- [24438] 2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf — no match: The report does not list specific contract names in scope; it mentions 'Scroll smart contracts' and 'Euclid finalization function' but no explicit contract names or file paths.
- [24439] 2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf — no match: The report does not list specific contract names in scope; it only mentions general components like chunk/batch circuits and rollup contract without naming specific files or contracts.
- [24440] Galileo_Final_Report.pdf — no match: The scope section explicitly lists two repositories: Stateless Block Verifier and Scroll REVM. No individual contract files are listed; the scope is at the repository level.
- [24441] 1 — matched: All contracts listed in the scope section of the audit report were extracted. The audit date is from the report header.
- [24442] 2 — no match: Extracted all contracts from the scope section of the audit report. The audit date is explicitly stated as October 16, 2023.
- [24443] 3 — matched: Extracted contract names from the Scope section and diff audit file listings. Audit date from the document header: 'October 16, 2023'.
- [24444] 4 — no match: Audit report for ScrollOwner and Rate Limiter contracts. Scope explicitly lists 5 contracts in the src directory. Audit date is October 16, 2023 from the report header.
- [24445] 5 — no match: Scope section lists files under contracts/src. Contract names extracted from file paths. Audit date from title: October 16, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202307 Scroll Layer 1 Audit Report.pdf | External | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL1ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | EnforcedTxGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a289a229415a124efdef310c10cb004b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202307 Scroll Layer 1 Audit Report.pdf | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollChain | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IL2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IERC20Metadata | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | FeeVault | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IERC677Receiver | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollGatewayCallback | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ChunkCodec | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IWhitelist | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollConstants | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IGasOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | SimpleGasOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollERC1155 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollERC20 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollERC721 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollStandardERC20 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | ScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | IRollupVerifier | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | PatriciaMerkleTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 1 Audit Report.pdf | WithdrawTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1ETHGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1BlockContainer | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L1BlockContainer | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2TxFeeVault | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | WETH9 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | Whitelist | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IL2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | AppendOnlyMerkleTree | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | OwnableBase | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | ScrollPredeploy | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IScrollERC1155 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | IScrollERC721 | unmatched — not counted | — | listed in scope | no |
| 202307 Scroll Layer 2 Audit Report.pdf | FeeVault | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | WrappedEther | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | GasSwap | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IFiatToken | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IMessageDropCallback | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC1155Extension | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC20Extension | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC721Extension | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IZkEvmVerifier | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | Fallback | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | External | unmatched — not counted | — | listed in scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | EnforcedTxGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ERC1155Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ERC20Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ERC721Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ETHGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1GatewayRouter | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a289a229415a124efdef310c10cb004b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1MessageQueue | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL1ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2ERC721Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2ETHGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L1GasPriceOracle | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IL2ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | ScrollConstants | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC1155 | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC20 | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IScrollERC721 | unmatched — not counted | — | listed in diff audit scope | no |
| 202308 Scroll GasSwap, Multiple Verifier, Wrapped Ether and Diff Final Audit Report.pdf | IRollupVerifier | unmatched — not counted | — | listed in diff audit scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ScrollOwner | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ETHRateLimiter | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | IETHRateLimiter | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ITokenRateLimiter | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | TokenRateLimiter | unmatched — not counted | — | listed in scope | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2WETHGateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2ETHGateway | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | GasSwap | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 ScrollOwner and Rate Limiter Audit.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope (diff audit) | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | ITokenMessenger | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | IMessangerTransmitter | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | IUSDCBurnableSourceBrdge | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | IUSDCDestinationBridge | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll USDC Gateway Audit Report.pdf | CCTPGatewayBase | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | L2TxFeeVaults | unmatched — not counted | — | listed in scope | no |
| 202309 Scroll Diff Audit Report.pdf | FeeVault | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a289a229415a124efdef310c10cb004b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IL1MessageQueueWithGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IL2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IScrollChain | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L1MessageQueueWithGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IScrollGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | IScrollMessenger | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| Scroll - Bridge Gas Optimizations Audit Report (Feb 2024).pdf | EmptyContract | unmatched — not counted | — | listed in scope | no |
| blog.openzeppelin.com/scroll-batch-token-bridge-audit | BatchBridgeCodec | unmatched — not counted | — | listed in scope | no |
| blog.openzeppelin.com/scroll-batch-token-bridge-audit | L1BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| blog.openzeppelin.com/scroll-batch-token-bridge-audit | L2BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | IScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | ScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | IRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | ChunkCodecV0 | unmatched — not counted | — | listed in scope as modified file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | BatchHeaderV1Codec | unmatched — not counted | — | listed in scope as newly added file | no |
| blog.openzeppelin.com/scroll-eip-4844-support-audit | ChunkCodecV1 | unmatched — not counted | — | listed in scope as newly added file | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | External | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a289a229415a124efdef310c10cb004b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollChainCommitmentVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1BlockContainer | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | L2MessageQueue | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | WETH9 | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | AppendOnlyMerkleTree | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | OwnableBase | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollConstants | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollPredeploy | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | SimpleGasOracle | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ScrollStandardERC20 | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | PatriciaMerkleTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | RollupVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | WithdrawTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | ZkTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockERC20 | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockPatriciaMerkleTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockZkTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockScrollChain | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | MockScrollMessenger | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | FeeOnTransferToken | unmatched — not counted | — | listed in scope | no |
| Scroll - 05.26.23 Zellic Audit Report.pdf | TransferReentrantToken | unmatched — not counted | — | listed in scope | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | GasSwap | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | EnforcedTxGateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a289a229415a124efdef310c10cb004b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1ERC20Gateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1USDCGateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | L2USDCGateway | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | ChunkCodec | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | RollupVerifier | unmatched — not counted | — | listed in scope table | no |
| Scroll - 09.27.23 Zellic Audit Report.pdf | WithdrawTrieVerifier | unmatched — not counted | — | listed in scope table | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | L1LidoGateway | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.1 | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | L2LidoGateway | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.2 | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | L2WstETHToken | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.3 | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | LidoBridgeableTokens | unmatched — not counted | — | Listed in scope section (Programs) | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | LidoGatewayManager | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.4 | no |
| Scroll Lido Gateway - Zellic Audit Report.pdf | ScrollBridgeExecutor | unmatched — not counted | — | Listed in scope section (Programs) and threat model module 5.5 | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ModGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | RlpU64Gadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | BlockHashGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ConstantDivisionGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | LtGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | CallOpGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ReturnRevertGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorCodeStoreGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorPrecompileFailedGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorInvalidCreationCodeGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ReturnDataCopyGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorReturnDataOutOfBoundGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorOOGSloadSstoreGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorOOGLogGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | AddSubGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | CommonErrorGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | RestoreContextGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | CreateGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | SignVerifyChip | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | SameContextGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MemoryExpansionGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MemoryCopierGasGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MemoryAddressGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | IsZeroGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | IsEqualGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | LtWordGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MulAddWordsGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | MulAddWords512Gadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | WordByteCapGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | PairSelectGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | AddWordsGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | RangeCheckGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorInvalidOpcodeGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | ErrorWriteProtectionGadget | unmatched — not counted | — | listed in scope and finding target | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | State circuit | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | Bytecode circuit | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | Keccak circuit | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | modexp precompile circuit | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | halo2-lib | unmatched — not counted | — | listed in scope | no |
| 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf | snark-verifier | unmatched — not counted | — | listed in scope | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | PoseidonLookup | unmatched — not counted | — | Target in finding TOB-SCROLL2-1 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | PoseidonTable | unmatched — not counted | — | Testing-only implementation mentioned in finding TOB-SCROLL2-1 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | IsZeroGadget | unmatched — not counted | — | Target in finding TOB-SCROLL2-2 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | MptUpdateConfig | unmatched — not counted | — | Target in findings TOB-SCROLL2-6 and TOB-SCROLL2-10 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | WordRLC | unmatched — not counted | — | Target in finding TOB-SCROLL2-5 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | NonceChanged | unmatched — not counted | — | Configuration circuit mentioned in finding TOB-SCROLL2-6 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | CopyCircuit | unmatched — not counted | — | Target in finding TOB-SCROLL2-7 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | ErrorInvalidCreationCodeGadget | unmatched — not counted | — | Target in finding TOB-SCROLL2-8 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | OneHot | unmatched — not counted | — | Target in finding TOB-SCROLL2-9 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | BinaryColumn | unmatched — not counted | — | Target in finding TOB-SCROLL2-9 | no |
| 2023-08-scroll-zkEVM-wave2-securityreview.pdf | MemoryMask | unmatched — not counted | — | Mentioned in fix review for TOB-SCROLL2-8 | no |
| 2023-09-scroll-zkEVM-wave3-securityreview.pdf | mpt-circuit | unmatched — not counted | — | listed in Project Targets | no |
| 2023-09-scroll-zkEVM-wave3-securityreview.pdf | aggregator | unmatched — not counted | — | listed in Project Targets | no |
| 2023-09-scroll-zkEVM-wave3-securityreview.pdf | precompiles | unmatched — not counted | — | listed in Project Targets | no |
| 2023-09-scroll-zkEVM-wave3-securityreview.pdf | snark-verifier | unmatched — not counted | — | listed as dependency reviewed | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | BarycentricEvaluationConfig | unmatched — not counted | — | Listed as target in findings TOB-SCRL-BLOB-1 and TOB-SCRL-BLOB-7 | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | BlobDataConfig | unmatched — not counted | — | Referenced in findings TOB-SCRL-BLOB-1 and TOB-SCRL-BLOB-6 | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | pi_circuit | unmatched — not counted | — | Listed as target in findings TOB-SCRL-BLOB-4, TOB-SCRL-BLOB-5, and TOB-SCRL-BLOB-6 | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | tx_circuit | unmatched — not counted | — | Listed as target in finding TOB-SCRL-BLOB-6 | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | barycentric | unmatched — not counted | — | File path from findings | no |
| 2024-04-scroll-4844-blob-securityreview.pdf | blob | unmatched — not counted | — | Listed as target in findings TOB-SCRL-BLOB-2, TOB-SCRL-BLOB-3, and TOB-SCRL-BLOB-6 | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | Poseidon Circuit | unmatched — not counted | — | Target: Poseidon Circuit, src/hash.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | Bytecode Circuit | unmatched — not counted | — | Target: Bytecode Circuit, zkevm-circuits/src/bytecode_circuit/to_poseidon_hash.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | ExpCircuit | unmatched — not counted | — | Target: ExpCircuit, zkevm-circuits/src/exp-circuit.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | MulAdd Chip | unmatched — not counted | — | Target: MulAdd Chip, gadgets/src/mul_add.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | BatchedIsZero Chip | unmatched — not counted | — | Target: BatchedIsZero Chip, gadgets/src/batched_is_zero.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | ComparatorChip | unmatched — not counted | — | Target: gadgets/src/comparator.rs | no |
| Scroll zkEVM - Part 1 - Audit Report.pdf | LtChip | unmatched — not counted | — | Target: gadgets/src/less_than.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | RlpFsmDataTable | unmatched — not counted | — | Target: RLP Circuit, rlp_circuit_fsm.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | LtConfig | unmatched — not counted | — | Target: RLP Circuit, rlp_circuit_fsm.rs, Tx Circuit, tx_circuit.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | ComparatorConfig | unmatched — not counted | — | mentioned in Tx Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | OneHot | unmatched — not counted | — | Target: MPT Circuit, gadgets/one_hot.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | BinaryColumn | unmatched — not counted | — | Target: MPT Circuit, constraint_builder/binary_column.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | MptUpdateConfig | unmatched — not counted | — | Target: MPT Circuit, gadgets/mpt_update.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | ByteRepresentationConfig | unmatched — not counted | — | Target: MPT Circuit, gadgets/byte_representation.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | CanonicalRepresentationConfig | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | BlockTable | unmatched — not counted | — | Target: PI Circuit, pi_circuit.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | AccountProof | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | AccountData | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | SMTTrace | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | TrieRows | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | ClaimKind | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | Proof | unmatched — not counted | — | Target: MPT Circuit, types.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | RlcLookup | unmatched — not counted | — | Target: MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | BytesLookup | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | IsZeroGadget | unmatched — not counted | — | mentioned in MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | TxCircuit | unmatched — not counted | — | Target: Tx Circuit, tx_circuit.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | RlpCircuit | unmatched — not counted | — | Target: RLP Circuit, rlp_circuit_fsm.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | PiCircuit | unmatched — not counted | — | Target: PI Circuit, pi_circuit.rs | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | MptCircuit | unmatched — not counted | — | Target: MPT Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | SigCircuit | unmatched — not counted | — | mentioned in Tx Circuit | no |
| Scroll zkEVM - Part 2 - Audit Report.pdf | EvmCircuit | unmatched — not counted | — | mentioned in Tx Circuit | no |
| 2023-07-scroll-zktrie-securityreview.pdf | zkTrie | unmatched — not counted | — | Detailed Findings target: trie/zk_trie.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | Node | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_node.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | Proof | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_impl.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | NodeAux | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_impl.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | Database | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_database.go | no |
| 2023-07-scroll-zktrie-securityreview.pdf | ZkTrieNode | unmatched — not counted | — | Detailed Findings target: src/lib.rs | no |
| 2023-07-scroll-zktrie-securityreview.pdf | ZkMemoryDb | unmatched — not counted | — | Detailed Findings target: src/lib.rs | no |
| 2023-07-scroll-zktrie-securityreview.pdf | ZkTrieImpl | unmatched — not counted | — | Detailed Findings target: trie/zk_trie_impl.go | no |
| 2023-08-scrollL2geth-initial-securityreview.pdf | l2geth | unmatched — not counted | — | listed as project target and throughout report | no |
| 2023-08-scrollL2geth-securityreview.pdf | l2geth | unmatched — not counted | — | The report title and executive summary state that Scroll engaged Trail of Bits to review the security of its l2geth implementation. | no |
| Manual audit seed | IScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | ScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | IRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | ChunkCodecV0 | unmatched — not counted | — | listed in scope as modified file | no |
| Manual audit seed | BatchHeaderV1Codec | unmatched — not counted | — | listed in scope as newly added file | no |
| Manual audit seed | ChunkCodecV1 | unmatched — not counted | — | listed in scope as newly added file | no |
| Manual audit seed | BatchBridgeCodec | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | L1BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| Manual audit seed | L2BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin | ScrollChainCommitmentVerifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin | ZkTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 2025-04-scroll-euclid-phase1-securityreview.pdf | BatchHeaderV3Codec | unmatched — not counted | — | mentioned in code quality findings as a contract in scope | no |
| 2025-04-scroll-euclid-phase1-securityreview.pdf | ScrollChain | unmatched — not counted | — | mentioned in code quality findings as a contract in scope | no |
| 2025-04-scroll-euclid-phase1-securityreview.pdf | migration-checker | unmatched — not counted | — | listed as target in project targets and findings | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | PauseController | unmatched — not counted | — | mentioned in Executive Summary as a new contract | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | L2SystemConfig | unmatched — not counted | — | mentioned in Executive Summary as a new contract | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | L1GasPriceOracle | unmatched — not counted | — | mentioned in Executive Summary as contract with changes | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | ZkEvmVerifierPostFeynman | unmatched — not counted | — | mentioned in Executive Summary as a new verifier contract | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Feynman-Upgrade-Trails-of-Bits.pdf | L2ScrollMessenger | unmatched — not counted | — | mentioned in Executive Summary as contract with changes | no |
| Feynman-Upgrade-Trails-of-Bits.pdf | ScrollChain | unmatched — not counted | — | target of finding TOB-SCRFMSC-2 | no |
| Internal-Audit-Scroll-Final-Report.pdf | ScrollREVM | unmatched — not counted | — | listed in scope | no |
| Internal-Audit-Scroll-Final-Report.pdf | zkVM Guest Program Changes | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a289a229415a124efdef310c10cb004b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IL1MessageQueueWithGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IL2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IScrollChain | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L1MessageQueueWithGasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | ScrollChain | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IScrollGateway | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | IScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 202402 Bridge Gas Optimizations Audit Report.pdf | EmptyContract | unmatched — not counted | — | listed in scope | no |
| Batch Token Bridge Audit-open-access.pdf | BatchBridgeCodec | unmatched — not counted | — | listed in scope | no |
| Batch Token Bridge Audit-open-access.pdf | L1BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| Batch Token Bridge Audit-open-access.pdf | L2BatchBridgeGateway | unmatched — not counted | — | listed in scope | no |
| EIP-4844 Support Audit-open-access.pdf | IScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | ScrollChain | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | IRollupVerifier | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | ChunkCodecV0 | unmatched — not counted | — | listed in scope as modified file | no |
| EIP-4844 Support Audit-open-access.pdf | BatchHeaderV1Codec | unmatched — not counted | — | listed in scope as newly added file | no |
| EIP-4844 Support Audit-open-access.pdf | ChunkCodecV1 | unmatched — not counted | — | listed in scope as newly added file | no |
| Scroll ZKTrieVerifier Audit-open-access.pdf | ScrollChainCommitmentVerifier | unmatched — not counted | — | listed in scope | no |
| Scroll ZKTrieVerifier Audit-open-access.pdf | ZkTrieVerifier | unmatched — not counted | — | listed in scope | no |
| Galileo_Final_Report.pdf | StatelessBlockVerifier | unmatched — not counted | — | Scope section lists 'Stateless Block Verifier' with repository URL | no |
| Galileo_Final_Report.pdf | ScrollREVM | unmatched — not counted | — | Scope section lists 'Scroll REVM' with repository URL | no |
| 1 | External | unmatched — not counted | — | listed in scope | no |
| 1 | IL1ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 1 | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | EnforcedTxGateway | unmatched — not counted | — | listed in scope | no |
| 1 | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a289a229415a124efdef310c10cb004b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 1 | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1 | IL1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 1 | IL2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollChain | unmatched — not counted | — | listed in scope | no |
| 1 | L1MessageQueue | unmatched — not counted | — | listed in scope | no |
| 1 | L2GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollChain | unmatched — not counted | — | listed in scope | no |
| 1 | IL2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 1 | IL2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 1 | IL2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 1 | IL2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 1 | IL2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 1 | IERC20Metadata | unmatched — not counted | — | listed in scope | no |
| 1 | IWETH | unmatched — not counted | — | listed in scope | no |
| 1 | FeeVault | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 1 | IERC677Receiver | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollGatewayCallback | unmatched — not counted | — | listed in scope | no |
| 1 | BatchHeaderV0Codec | unmatched — not counted | — | listed in scope | no |
| 1 | ChunkCodec | unmatched — not counted | — | listed in scope | no |
| 1 | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| 1 | IWhitelist | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollConstants | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollGateway | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollGatewayBase | unmatched — not counted | — | listed in scope | no |
| 1 | IGasOracle | unmatched — not counted | — | listed in scope | no |
| 1 | SimpleGasOracle | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollERC1155 | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollERC20 | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollERC721 | unmatched — not counted | — | listed in scope | no |
| 1 | IScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollStandardERC20 | unmatched — not counted | — | listed in scope | no |
| 1 | ScrollStandardERC20Factory | unmatched — not counted | — | listed in scope | no |
| 1 | IRollupVerifier | unmatched — not counted | — | listed in scope | no |
| 1 | PatriciaMerkleTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 1 | WithdrawTrieVerifier | unmatched — not counted | — | listed in scope | no |
| 2 | IL1ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1ETHGateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 2 | L2CustomERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2ERC1155Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2ERC721Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2ETHGateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| 2 | L2StandardERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 2 | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| 2 | IL1BlockContainer | unmatched — not counted | — | listed in scope | no |
| 2 | IL1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2 | L1BlockContainer | unmatched — not counted | — | listed in scope | no |
| 2 | L1GasPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2 | L2MessageQueue | unmatched — not counted | — | listed in scope | no |
| 2 | L2TxFeeVault | unmatched — not counted | — | listed in scope | no |
| 2 | WETH9 | unmatched — not counted | — | listed in scope | no |
| 2 | Whitelist | unmatched — not counted | — | listed in scope | no |
| 2 | IL2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 2 | L2ScrollMessenger | unmatched — not counted | — | listed in scope | no |
| 2 | AppendOnlyMerkleTree | unmatched — not counted | — | listed in scope | no |
| 2 | OwnableBase | unmatched — not counted | — | listed in scope | no |
| 2 | ScrollPredeploy | unmatched — not counted | — | listed in scope | no |
| 2 | IScrollERC1155 | unmatched — not counted | — | listed in scope | no |
| 2 | IScrollERC721 | unmatched — not counted | — | listed in scope | no |
| 2 | FeeVault | unmatched — not counted | — | listed in scope | no |
| 3 | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 3 | MultipleVersionRollupVerifier | unmatched — not counted | — | listed in scope | no |
| 3 | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 3 | WrappedEther | unmatched — not counted | — | listed in scope | no |
| 3 | GasSwap | unmatched — not counted | — | listed in scope | no |
| 3 | IFiatToken | unmatched — not counted | — | listed in scope | no |
| 3 | IMessageDropCallback | unmatched — not counted | — | listed in scope | no |
| 3 | IScrollERC1155Extension | unmatched — not counted | — | listed in scope | no |
| 3 | IScrollERC20Extension | unmatched — not counted | — | listed in scope | no |
| 3 | IScrollERC721Extension | unmatched — not counted | — | listed in scope | no |
| 3 | IZkEvmVerifier | unmatched — not counted | — | listed in scope | no |
| 3 | ScrollMessengerBase | unmatched — not counted | — | listed in scope | no |
| 3 | Fallback | unmatched — not counted | — | listed in scope | no |
| 3 | External | unmatched — not counted | — | listed in scope | no |
| 3 | EnforcedTxGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ERC1155Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ERC20Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ERC721Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ETHGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1GatewayRouter | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1CustomERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb2b10a289a229415a124efdef310c10cb004b6ff` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1ERC1155Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb94f7f6abcb811c5ac709de14e37590fccd975b6` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1ERC20Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1ERC721Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6260af48e8948617b8fa17f4e5cea2d21d21554b` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1ETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7f2b8c31f88b6006c382775eea88297ec1e3e905` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1GatewayRouter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xf8b1378579659d8f7ee5f3c929c2f3e332e41fd6` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1StandardERC20Gateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8a791fe2be73eb6e6cf1eb0cb3f36adc9b3f8f9` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L1WETHGateway | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7ac440cae8eb6328de4fa621163a792c1ea9d4fe` — deployed 2023-10-08 19:25:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | IL1MessageQueue | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1MessageQueue | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | ScrollChain | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL1ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1ScrollMessenger | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6774bcbd5cecef1336b5300fb5186a12ddd8b367` — deployed 2023-10-08 19:25:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 3 | L2ERC1155Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L2ERC721Gateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L2ETHGateway | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L1GasPriceOracle | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IL2ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | L2ScrollMessenger | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | ScrollConstants | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | ScrollGatewayBase | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IScrollERC1155 | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IScrollERC20 | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IScrollERC721 | unmatched — not counted | — | listed in diff audit scope | no |
| 3 | IRollupVerifier | unmatched — not counted | — | listed in diff audit scope | no |
| 4 | ScrollOwner | unmatched — not counted | — | listed in scope | no |
| 4 | ETHRateLimiter | unmatched — not counted | — | listed in scope | no |
| 4 | IETHRateLimiter | unmatched — not counted | — | listed in scope | no |
| 4 | ITokenRateLimiter | unmatched — not counted | — | listed in scope | no |
| 4 | TokenRateLimiter | unmatched — not counted | — | listed in scope | no |
| 5 | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| 5 | L1USDCGateway | unmatched — not counted | — | listed in scope | no |
| 5 | L2USDCGateway | unmatched — not counted | — | listed in scope | no |
| 5 | CCTPGatewayBase | unmatched — not counted | — | listed in scope | no |
| 5 | ITokenMessenger | unmatched — not counted | — | listed in scope | no |
| 5 | IMessangerTransmitter | unmatched — not counted | — | listed in scope | no |
| 5 | IUSDCBurnableSourceBrdge | unmatched — not counted | — | listed in scope | no |
| 5 | IUSDCDestinationBridge | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x39c36c9026ac18104839a50c61a4507ea5052eca` | L1MessageQueueV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 351 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 31
- Inherited remapped matches: 0
- Address-book scope dispositions: 65 own (65 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 514 unmatched
- Matched-own operational status: 65 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=36, low=5
- Match method counts: unique_name=73

Zero-match audit list:

- [21268] 202307 Scroll Layer 2 Audit Report.pdf
- [21271] 202309 Scroll USDC Gateway Audit Report.pdf
- [21272] 202309 Scroll Diff Audit Report.pdf
- [21274] blog.openzeppelin.com/scroll-batch-token-bridge-audit
- [21275] blog.openzeppelin.com/scroll-eip-4844-support-audit
- [21278] Scroll Lido Gateway - Zellic Audit Report.pdf
- [24406] Manual audit seed
- [24407] 2023-04-scroll-zkEVM-wave1-securityreview (1).pdf
- [24408] 2023-08-scroll-zkEVM-wave2-securityreview.pdf
- [24409] 2023-09-scroll-zkEVM-wave3-securityreview.pdf
- [24410] 2024-04-scroll-4844-blob-securityreview.pdf
- [24411] Scroll zkEVM - Part 1 - Audit Report.pdf
- [24412] Scroll zkEVM - Part 2 - Audit Report.pdf
- [24413] 2023-07-scroll-zktrie-securityreview.pdf
- [24414] 2023-08-scrollL2geth-initial-securityreview.pdf
- [24415] 2023-08-scrollL2geth-securityreview.pdf
- [24423] Manual audit seed
- [24424] Manual audit seed
- [24428] OpenZeppelin
- [24429] 2025-04-scroll-euclid-phase1-securityreview.pdf
- [24430] 2025-04-scroll-euclid-phase2-securityreview.pdf
- [24432] Internal-Audit-Scroll-Final-Report.pdf
- [24435] Batch Token Bridge Audit-open-access.pdf
- [24436] EIP-4844 Support Audit-open-access.pdf
- [24437] Scroll ZKTrieVerifier Audit-open-access.pdf
- [24438] 2025-03-trailofbits-euclid-phase1-letter-of-attestation.pdf
- [24439] 2025-03-trailofbits-euclid-phase2-letter-of-attestation.pdf
- [24440] Galileo_Final_Report.pdf
- [24442] 2
- [24444] 4
- [24445] 5

Fork inheritance lineage and inherited audits are included when available.
