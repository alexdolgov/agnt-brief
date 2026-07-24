# Agentic Audit Brief: Lisk Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Lisk Bridge (`lisk-bridge`)
- Website: [https://lisk.com](https://lisk.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, sepolia
- Contract surface: 494 unique implementations (563 raw deployments)
- Coverage basis: 0/26 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $27,476,028.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Lisk Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across base, ethereum, sepolia. Structural roles: 11 core, 10 unclassified, 7 supporting. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: core (11), unclassified (10), supporting (7)
- Contract kinds: contract (28)
- Detected standards: erc1967proxy (9), erc20 (7), ownable (3), accesscontrol (2), erc165 (2), erc20permit (2), ownable2step (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (7), solmate (6)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xac485391eb2d7d88253a7f1ef18c37f4242d1a24`, chain 8453)
- ERC1967Proxy (`0xe3622468ea7dd804702b56ca2a4f88c0936995e6`, chain 1)
- ERC1967Proxy (`0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677`, chain 1)
- FiatTokenProxy (`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- L1ChugSplashProxy (`0x2658723bf70c7667de6b25f99fcce13a16d25d08`, chain 1)
- L1ERC20TokenBridge (`0xc7315f4faab2f700fc6b4704bb801c46ff6327ac`, chain 1)
- L1LiskToken (`0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f`, chain 1)
- L1VestingWallet (`0xd590c2e71739c551eba7aebe00e7855df4cf5fb7`, chain 1)
- OptimismMintableERC20Factory (`0xd00e38514d66bf1b761a8937559c6b2854a5b3ad`, chain 1)
- Proxy (`0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c`, chain 1)
- Proxy (`0x113cb99283af242da0a0c54347667edf531aa7d6`, chain 1)
- Proxy (`0x26db93f8b8b4f7016240af62f7730979d353f9a7`, chain 1)
- Proxy (`0x31efc2c8012c56e007e5bdb8e5b7955d197c168e`, chain 1)
- Proxy (`0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e`, chain 1)
- SwarmMarketsToken (`0xb17548c7b510427baac4e267bea62e800b247173`, chain 1)
- TellorMaster (`0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0`, chain 1)
- TetherToken (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UTUToken (`0xa58a4f5c4bb043d2cc1e170613b74e767c94189b`, chain 1)
- WBTC (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- WstETH (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/26 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 17 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 450 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 47
- Confirmed-live implementations: 27 of 494 unique; 467 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/104
- Verified + Unaudited implementations: 104
- Verified by bytecode match: 0
- Unverified implementations: 390
- Unique implementations: 494
- Raw deployments: 563
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (104)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7005e13e8118b72f0d77e3418cdf4b48e768c820`; ethereum `0xbda5743b76bcc88337336ef027958422f4dfe5f4` | ⚠️ Unaudited |
| ActionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9835fa9b914bcbc45d731edde0d1d63adb56c477` | ⚠️ Unaudited |
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x03bbc1313d3db4b356fb307dbe86a001f29c1576`; ethereum `0x089df6de0498c9dea212d80b72641984425c00ab`; ethereum `0x1920666fa17a87b4454f08665176cbe9ecc0b7bc`; ethereum `0x90d1d2b89d64b1a79e1115bc2df379359b88b3d7`; ethereum `0x91ccfc9f2b8a2e511ec057d0039af78fdb9902c2`; ethereum `0x9eb97469ad44e8ccdf5c1ff669d7c57c7235c49c`; ethereum `0xb4950517fac0a3467605bd5f83ef60c8f2cde441`; ethereum `0xccb5ddf00676aed7427db50b0a69a026f442c8db`; ethereum `0xe9a057545d5f29932a118ec3aab44c2902a0318a` | ⚠️ Unaudited |
| AddressManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245023 | `0x2df7057d3f25212e51afea8da628668229ea423f` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-245051 | `0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e` | ⚠️ Unaudited |
| AssetHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee`; ethereum `0x41b9ea80986f6efd7ff4d5604e283362cbb682b2`; ethereum `0xad6e7af05b7e594c81ed460ad31f18b7641acddc` | ⚠️ Unaudited |
| AssetTokenData | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a5d3fb5d39dc5a206e9f63e133e2ff1b7c2c159` | ⚠️ Unaudited |
| AssetTokenFactoryCCIPCompatible | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5` | ⚠️ Unaudited |
| AssetTokenMinimalProxyCCIPFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf1a3de660968b3a6493334413505220c1bcd99e1` | ⚠️ Unaudited |
| Authorization | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1`; ethereum `0xefbcbd94d9c411e3f0ffa559ce627498122aca82` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9186503af1d7d3317b4c2c44a815be984838c296` | ⚠️ Unaudited |
| BPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5fada32917350b91fbd9bbde62e69bf483a960a` | ⚠️ Unaudited |
| BPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5321647f3c3769bc7bb9e10ab10d7f5c2e402c56` | ⚠️ Unaudited |
| BRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8133eeb249f0636bba0b8230ba1089a219263c04` | ⚠️ Unaudited |
| BundleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7`; ethereum `0x7753736456451f639281fcdc5b4151fe7791450d` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0a34677dafcd28916aac0b22123142efabf700fa`; ethereum `0x23afd2bd797b87394d797dd0134022c42432f7fe`; ethereum `0x281a83ee4819068c40937a066d801aad7c6e0400`; ethereum `0x2862135735469ad4af91af4fbd2559606d25b27c`; ethereum `0x55585ffbd94471925252c13ade6a81604c781c5d`; ethereum `0x5f5d43508f34e0caeaa558f9c964125538ffe9cf`; ethereum `0x6eb57991c31f8dd2481a702090edc0962ae50fae`; ethereum `0x8192d648ad9144af8c2488c8142c72b3cd990728`; ethereum `0xab235c5b80860899f67f88370ba69c2c80499f23`; ethereum `0xad06241b9cff15b710118a52f04a4fe73b8fcc09`; ethereum `0xb05963a6bed7e9db887eceb2775a03414d00fac9`; ethereum `0xb85e3e408d8300a002baa9cc355d40a487e9c248`; ethereum `0xe199e1c5201ccdd3792ed902ad3f610ce5629b59` | ⚠️ Unaudited |
| Caller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x53fbfe5b1dfea7923f4691f819ca6e278de4e337` | ⚠️ Unaudited |
| ConfigurableOracleMockFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa9f3c42e063d78a46a4f1e5b6b4c365203d478e` | ⚠️ Unaudited |
| Create2Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2` | ⚠️ Unaudited |
| DelayedWETH | token | project_anchor | own_supporting | 1 | ethereum | unit-245055 | `0x31efc2c8012c56e007e5bdb8e5b7955d197c168e` | ⚠️ Unaudited |
| DisputeGameFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-245060 | `0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3c4b07ecdad1b58ac05fa5a3c3c598b1c16232c7`; ethereum `0xad89eededf3f4996932c6949ab37d9398bfbb215`; ethereum `0xccdbeb21b702b1b71c07b3d2b2c70460757ef7f6` | ⚠️ Unaudited |
| Dotc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19708f0e1b9f4645907b75386a9d5bb75ea03acc`; ethereum `0x632f2fe528d59ae71ecd38d7f1fdf8d5b5b1cf25` | ⚠️ Unaudited |
| Dotc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x820758b04721bd0b69a091fe8ef657d936bf35c5` | ⚠️ Unaudited |
| DotcEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb8adad01342d656d8f70fe1fa55cc3fbb6965f7d`; ethereum `0xf9ff7c0d236745399ce6bdbf3a54028339288ba3` | ⚠️ Unaudited |
| DotcEscrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6`; ethereum `0x4877d1b8c028095582f4e4f273d0ec914e15a53a` | ⚠️ Unaudited |
| DotcManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x429737c0ddf17779803aba8b5e6133012952b4c3` | ⚠️ Unaudited |
| DotcManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a4010b884a8e3f9fb3611fe830a01b46fbe2073`; ethereum `0x1f58f1ba43a88b4ff3b4265449b26e28c08395ad` | ⚠️ Unaudited |
| DotcOfferHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8808910c298239aabf6475e99ea468f1d52a0d` | ⚠️ Unaudited |
| DotcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a103ee32f4209926d8ba7e528aff8a831ed3dae`; ethereum `0xca4b2d3f4e061d0826a14c15ebc8faf3d94b5500` | ⚠️ Unaudited |
| DotcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1d0d0516385d2ff6748a3b87ba2c2cc37f287d4a`; ethereum `0x28295039f74b04a3ff788c1af679182cd9110b89` | ⚠️ Unaudited |
| DotcV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9add0fa93487b178a975ea320b563f35e668f4` | ⚠️ Unaudited |
| DotcV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x423126258e7684356c0b11bf23c7e73a1d9ed3e5` | ⚠️ Unaudited |
| EthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf70cee7c7e638f9364c4076a01226337ec51fca5` | ⚠️ Unaudited |
| EurPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc1b06da65074c9df0109d312eb3e59e04f638514`; ethereum `0xd0fbc3d37269ee42df57cd264e737e29a8b7c978` | ⚠️ Unaudited |
| Extension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6227e07c0dd1604f3c820ad779792bbe56a9ed8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 2 | ethereum | unit-245052 (2 proxies) | 2 deployments: ethereum `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`; ethereum `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| GoldKiloPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe79f828e0cd909dc54ad576e8778fedeaecbde8` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245050 | `0x31b72d76fb666844c41edf08df0254875dbb7edb` | ⚠️ Unaudited |
| L1ERC20TokenBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245061 | 2 deployments: ethereum `0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf`; ethereum `0xc7315f4faab2f700fc6b4704bb801c46ff6327ac` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245059 | `0x3a44a3b263fb631cdbf25f339e2d29497511a81f` | ⚠️ Unaudited |
| L1LiskToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245024 | `0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f` | ⚠️ Unaudited |
| L1OpEURCBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-245056 | `0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677` | ⚠️ Unaudited |
| L1OpEURCFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67` | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-245053 | `0xe3622468ea7dd804702b56ca2a4f88c0936995e6` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | project_anchor | own_supporting | 1 | ethereum | unit-245054 | `0x2658723bf70c7667de6b25f99fcce13a16d25d08` | ⚠️ Unaudited |
| L1VestingWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 5 deployments: ethereum `0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23`; ethereum `0x18a0b8c653c291d69f21a6ef9a1000335f71618e`; ethereum `0x2294a7f24187b84995a2a28112f82f07be1bcead`; ethereum `0x58a61b1807a7bda541855daaeaee89b1dda48568`; ethereum `0xe09899a4c98473460bc19d136b330608b465dc55` | ⚠️ Unaudited |
| L1VestingWallet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245029 | `0xd590c2e71739c551eba7aebe00e7855df4cf5fb7` | ⚠️ Unaudited |
| L1VestingWalletPaused | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b0cfef892c017d84d8220b8d2ac249624cd087` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-245065 | `0x113cb99283af242da0a0c54347667edf531aa7d6` | ⚠️ Unaudited |
| Main | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5405dd4306a4ec1e15c71275ba9a58425759c194` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02398771fd1db790ef2b656ca3bcb3075f27a72c` | ⚠️ Unaudited |
| OfferHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61ed41749cd82767057aa39edcee8d797d40719` | ⚠️ Unaudited |
| OperationsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd641ae2ad8a0e72ad92ddeda7cef67ee3f2a49b9` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245063 | `0xc1da06cc5dd5ce23baba924463de7f762039252d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-245028 | `0xd00e38514d66bf1b761a8937559c6b2854a5b3ad` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245064 | `0x26db93f8b8b4f7016240af62f7730979d353f9a7` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095102ec7bea1c5f25090705b196a6ea2e6b64f6` | ⚠️ Unaudited |
| PermissionItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb441417e6ff3acf60b9f0216d8c3179913080daa`; ethereum `0xf96e9a7ce4c68d85198f959f4138ca449943a0fe` | ⚠️ Unaudited |
| PermissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991fd11876a438af7bcadc98f4b3cf201bdf6191` | ⚠️ Unaudited |
| PermissionManagerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe214d97ba7ff83144699737f73d271c006013d91` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c065e11870b891d214bc2da7ef1f9ddfa1be277` | ⚠️ Unaudited |
| ProtocolFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9516cac65d54cc2fe4c070978223f930894ba072`; ethereum `0xabc2108199f33adf0343ef3a67565313c0aed6c1` | ⚠️ Unaudited |
| ProtocolVersions | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbaa10876223b11baae86e1bbf52daef38ecbf425` | ⚠️ Unaudited |
| ProtocolVersions | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245057 | `0xdd9c27910327d3f4a4007ad8f7b53332db6f1079` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0479e6757eb4743843b309dddf78e6ba242f38be`; ethereum `0x7df140dd919e29cb1c8d6186f2bba6e407c7106f`; ethereum `0x83fc9db9ce83325f77f1aefeba1a3412d0d26fdb`; ethereum `0x86a6f51ca732828ea6df0b377f417ba5f68490b1`; ethereum `0x899de169fda163f57b12852a0144bb886578d7b6`; ethereum `0xa4d9ef479884d875a5b95b541f024f4e837f6fcd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x055860f40533c4d9e7cd38105f4c0d1eb0593072`; ethereum `0x0a4477e37583bfe30002ee386f5ab3fa1537b61b`; ethereum `0x121b48f41ad4965445bc295bba0f069b1b6533c6`; ethereum `0x35e59bf5ff5a732d9aa3665ebeb49b2e71714244`; ethereum `0x3d24faf8f7bed929a11269eb615a0f2de64d03b7`; ethereum `0x7a3d18271d54d6159104d2b5e791662f07dffad1`; ethereum `0x88f3cb3500c9bcee361f334727dd4bfc9013dfd5`; ethereum `0x92d73c19a6638c46cd0e11360baf4de9950bdc0c`; ethereum `0xce36f03fe18fbf1761c77faf0dce4dc154dcb5fa`; ethereum `0xe44cb98048afedb3cb21a7933b517165254ebd46`; ethereum `0xf25146af34005010a651ec36e673709c38ce354c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245031 | `0xec432c4f1d0e12737f3a42a459b84848af979b2d` | ⚠️ Unaudited |
| Sale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd25ce9a4e09d16c6ab2a2e9caa373aaeb0fdfd` | ⚠️ Unaudited |
| SmtDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b0f858ac88f13bb26081a8e86d3dd723c8031ac` | ⚠️ Unaudited |
| SmtPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0b2a66c5106bc4be40214b0699adf8d5d9e9674d`; ethereum `0x4afe7d5d85ed6b4aa02ce49f907248cd8810a368`; ethereum `0x6da68d65583460742ba8711b166ad51540713ff7`; ethereum `0x803492629acb304578c09493be086bbc9deb497c`; ethereum `0x9221c67b935932ce5a6cb59ac3f46fde1b82c298` | ⚠️ Unaudited |
| SmtVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c033bb39e67eb598d399c06a8a519498da1cec9`; ethereum `0x9a30173523d48cd26f681c46712cd65589eac56b` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x26c7bfb430d68bf74d2d52497836d4336b555de7` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6738c99eda2333b45d6ba8e212262305ffe34bf2` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6e5ff00e8aaf55fa55e8ee9976622409fd187824` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8f11312580079057df3a3b6ea678c8585bd3a24c` | ⚠️ Unaudited |
| SuperchainConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x95703e0982140d16f8eba6d158fccede42f04a4c` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98ce5883fb99508c24d40f97016f51e04117b4e9` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9e24f5eed337f8ee0555d6b78a34a53a80dcd0d0` | ⚠️ Unaudited |
| SuperchainConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf7a2e44ed9cc2a571d4b1f44110b38fb254e8675` | ⚠️ Unaudited |
| SwarmBuyerBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1a2356d54aeead105f203a5c51a6307ec100494e`; ethereum `0x1f8e9072b5f07c9de66a2974cfba75636648aeac`; ethereum `0x2fcab60dc6ad65be5f2aae6a1b2e2ecb93017888` | ⚠️ Unaudited |
| SwarmMarketsToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245027 | `0xb17548c7b510427baac4e267bea62e800b247173` | ⚠️ Unaudited |
| SwarmMarketsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc63b16f5dfaf3c9e1b4bde873f79ce02c216b33` | ⚠️ Unaudited |
| SX1155NFTFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab7aa6495f8694656b59bc6309d3f6190dbc8b14` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245058 | `0x05f23282ffdca8286e4738c1af79079f3d843750` | ⚠️ Unaudited |
| Tellor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x04b5129735b5d9b1b54109f2c4c06ea23b506a95`; ethereum `0x81beb487859718006191f7a2859419b201b4c038` | ⚠️ Unaudited |
| Tellor360 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-245062 | `0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0` | ⚠️ Unaudited |
| TellorGetters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e34dac4e76bda81724d333a02d850ca7fbb038` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245030 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| TokenTransferor | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa75d8afd8d3a36dd3935078e4d05153946cee84c`; ethereum `0xcd465d9190e6d4943e9cabb352164621dbb6ad12` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x964183083e623d5a8acbd27eb31c3609e25bb7b0`; ethereum `0xa5e175e7ecc13f746aa49bbc734819a06c79f6fd` | ⚠️ Unaudited |
| UTUToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804dd5e6c45181b0b13ab58a3480956026150993` | ⚠️ Unaudited |
| UTUToken | token | project_anchor | own_supporting | 0 | ethereum | unit-245026 | `0xa58a4f5c4bb043d2cc1e170613b74e767c94189b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707f9118e33a9b8998bea41dd0d46f38bb963fc8` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa2f987a546d4cd1c607ee8141276876c26b72bdf` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-245022 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f` | ⚠️ Unaudited |
| WstETH | token | project_anchor | own_supporting | 0 | ethereum | unit-245025 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |
| XERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1217bfe6c773eec6cc4a38b5dc45b92292b6e189` | ⚠️ Unaudited |
| xGold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f94388a552580712c4ec724f470c6e4a74b5244` | ⚠️ Unaudited |
| xGoldBundle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e75a1ad7b10523f7ed98c1c7ca0b4a79b1bbdee` | ⚠️ Unaudited |
| xGoldBundleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b498bae947c80e358f59a277adda90f76344456` | ⚠️ Unaudited |
| XTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x20bf447fe55ac3718538e89c8c32396b174e82a6`; ethereum `0x247d082cd7649098d377ff8812d84aa354b55c14`; ethereum `0xe1532de8fa6ead8af4e461a9c3c9544c938f33b5` | ⚠️ Unaudited |
| XTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b9dc65253c035eb21778cb3898eab5a0ada0cce` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (390)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c7054bcb39f7b2e5b2c7acb37583e32d70cfa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03f1259b4986b8ae9040e250f958cef09dad8b6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d032ac25d322df992303dca074ee7392c117b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e82fddad51cc3ac12b69761c45bbcb9a2bf3c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff2d89d01ce79a0e971e264edba1608a8654ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1220cd967ed2ee4c593211eabcb2e3b1dc8e4930` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x13da43ea89fb692bdb6666f053fee70ac61a53cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b840ba01e2b05fc2268eaf6d18892a11ec29d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18bc5bcc660cf2b9ce3cd51a404afe1a0cbd3c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bb17eb31bddfd30f63d4fae6c8eb85d9e9b1f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c7d4b196cb0c7b01d743fbc6116a902379c7238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d96f2f6bef1202e4ce1ff6dad0c2cb002861d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb30e446ea791cd1f011675e5f3f5311b70faf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269d632c1e518a922c30c749cfd3f82eb5c779b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27bb4a7cd8fb20cb816bf4aac668bf841bb3d5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ee6eca46d2406454708a1c80356a6e63b57d404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328809bc894f92807417d2dad6b7c998c1afdac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33f2efccaafab04561f815b0059b0b1e9f7db211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x398697b203ca909e05690b6684d56938964b07a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1ac69368eb6447f5db2d4e1641380fa9e40d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f2376d5d03553ae72f4a8093bbe9de4336eb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c01066e6b913d2ef4ad48e3629e66ae41904b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b82a31ebcd41fd4b98123cf141853acd1166875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4db1c96c1f9c3d5429fdf35ed2e684b309b0c281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5db9f05921d8d5a6a157f6f49c411cc0e46c6330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60790dc2d45baa8b36282889569bbb301f4d0c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x665060707c3ea3c31b3eabad7f409072446e1d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad85c3309c976b394ddeccd202d659719403671` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x6b7ab4213c77a671fc7aee8eb23c9961fddab3b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cdf5adbb9e1673811a7a36540d79429045e7891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70bd9615c10fb3585d7c979fc1992fe57348cf5e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x731f330542734b4059334ca8e1da30af358b41b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d8de471f54aaa87784119c60df1bbfc852c415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f1cd8436373fa9f3c17da1e39740fe9db9a04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77f4ed75081c62ad9fa254b0e088a4660aacf68d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x841e828a69b6efc1b02f7c317f59291a39583a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8454ead8e8b6d63951033f38d61a5f0ac6f40279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x857824e6234f7733eca4e9a76804fd1afa1a3a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a21cf9ba08ae709d64cb25afaa951183ec9ff6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f58fea61c133864b0211a278d4b286a57c98022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x973bac46dd86a5cc5349e8d4a153ac5a20cdc296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99137f8880fb38e770eb7ef3d68038bc673d58ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bfa177621119e64cecbeabe184ab9993e2ef727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e35f56c318de1bd5d9ca6a94fe7e37c5663348` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa1eba9e63ed7ba328fe0778cfd67699f05378a96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa52ba291ec45d8037510d5da857f59abfa3dc0c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82138726caf68901933838135fb103e08fb858e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac485391eb2d7d88253a7f1ef18c37f4242d1a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae4a95e412d7d669abe6bb23031ae0250b832710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb150759c71073edf7d90d3d053ab5e67ea731aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45f105ad41570fa02fc84f56e7ee69ade5e0989` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb4e6a7861067674ac398a26dd73a3c524c602184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e988cf1ad8c361d56118437502a8f11c7faa01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82381a3fbd3fafa77b3a7be693342618240067b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc20e0e8590c32dbf11b38c8c0580395243ebd533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3586558ddb1cc6c7c5338691842b8d5f47d253d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc39f0c944fb3eef9cd2556488e37d7895dc77ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca498ee83ed3546321d4dc25e2789b0624f15f68` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd2176dd57d1e200c0a8ec9e575a129b511dbd3ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd35ca9577a9dada7624a35ec10c2f55031f0ab1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3f64eb2082cee7632c12a968dedf304bcac2def` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd50f47a9173d67c3cfcb6a28ca8d60230be0f5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5760d9d1a052fbcaad275637e8fc42b73063fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5d466b6fe4d00965991781845a1817975b40d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd63029c1a3da68b51c67c6d1dec3dee50d681661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdde1998b8842b1c925eef7edfdaa2df24a75048a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2363be4644f160eebfe5ae6f8728e64d8db211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe12cefaad61e551691bfa5cda36e5de051778c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d90f21490686ec7ef37be788e02dfc12787264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9fa20ca1157fa686e60f1afc763104f2c794b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf242275d3a6527d877f2c927a82d9b057609cc71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf50fff154e63e510e494929e9eab1e9c5047429e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf54791059df4a12ba461b881b4080ae81a1d0ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9181aad773d423a2cc0155cb4263e563d51b467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd322b4724c497e59d48fff8f79c16b4d48837f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5e32726ff30e9a15f6485c3bd1e31e63b26625` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245049 | `0xac485391eb2d7d88253a7f1ef18c37f4242d1a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00f1407c21184a38ded9be1d0d95eccf4b1fa992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x017ccdba6c4defcb70a7b75e0c64ebf6e3f13d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x01c018d5ae14c60c0ab24caf559d3e818dacc0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0220a1cf6c3a548be75aeabcda509cab08cde063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02b83e7217d314c23879cd6f2cf0fa576d4b3687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03746edf19f95d877ac2898976521ce5f40a2f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04ed987fcaad08dbe8b2990c069f1f69b8293a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05253f6c76a3a2256936018be3417fa583c779af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05676e44f0d49d5530e1fa7d337175f5bc1da73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05766b9ea781343721261bc35e037223438033c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x06c9a59a8dbfc919f1dd3bf14482d178d1f8e4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x08210f9170f89ab7658f0b5e3ff39b0e03c594d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x082d16150bf75bb8f2197eec1d293dba96c93638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x085679a981fbd04497ee63daea918b3dbe0f2635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0970de37fdde8497a112f499d1fe67a14ca6545a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x098a952bd200005382aeb3229e38ae39a7616f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a6cd1348e7b0f3abe015c205f22526ba1377821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0c4f72d2dbbf87790497ec2cd319212d336edb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e08bb2539afaa8718a701e24356324998f8439e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x101feead47a2f539b5d8b1bb1599657f884b69ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10f564d61850cad81a17a7d674c0494f941ca1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x11b8b179ecf830a36f0e243756d1109f0cab442b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x11d4d908d76b259e3e2168d8f2cd1592a2aaecca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x12f558ee6d288e2864b59cf21eebee1da95e8caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x12f8f8bde375f547c9e9c4494f4587ff175ddad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14c80ba159f06aa589e80cb35ae2e949f33b0a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x14e51f0a265d9b5c68387c2cf11343197a451168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1583c7b3f4c3b008720e6bce5726336b0ab25fdd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245032 | `0x16b840ba01e2b05fc2268eaf6d18892a11ec29d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16c70a0de17b393d07be7797a72798506fc52702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x181443ec021bfab6f1224a6fb4f878867265c8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x194c9f28f86ae13036b540f14015183e28574318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1aa1864bdbcb2ccd1a48c4f43371436eecdbc361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b0fa6d4ba8c624556dfe068ec0ff21811aa7a5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245033 | `0x1bb17eb31bddfd30f63d4fae6c8eb85d9e9b1f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c2807b207f140a1de0b39e5546edef67af2568c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245034 | `0x1c7d4b196cb0c7b01d743fbc6116a902379c7238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d4905af7dcb3b5554ec05fabf90b8da04845dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d5bf1d5b330349a5d5e97199c87484db897c806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1f0cf0a17647cf84f82679598e0b42dc878aa90e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245035 | `0x1fb30e446ea791cd1f011675e5f3f5311b70faf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x251d59bce054d285539764fd13154f6369b2126c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25855f3055b844770f86426d6bf8444c1231c11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x260b6574754479913e12c91e34b0cd0964e1b16d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2611d9293e054f04e7a4b0f9a9a87cb540ca20b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245036 | `0x269d632c1e518a922c30c749cfd3f82eb5c779b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x27615092ef777b8d58cda7bc5abe4530c46a601b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245037 | `0x27bb4a7cd8fb20cb816bf4aac668bf841bb3d5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2b40fba1387498892aed6547e69cbccc42871cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c1d077c17d2598a99112553eff9113fc00ec5ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2cf35de9e73045140797acdfda0633fe4233c4b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d1c420080cad3a9b86472fb415d13b8d66c205e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d7fa0fada885f3f48eb2220e3eb545583f8a823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2df42a206dd8c5cb7470e1ffa8d87dddd04d8df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2dff8e2c55959f719faa6dcc4a3b0937bca71f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e252cbe795d219b75d88fe268da446215c4bfe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e3467bbd995a32b85dca51c58bd23f5a96c2ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f0852868bb1d66165afc056dc32ac02773ccd86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f62885383cd99d8b76f74e43dfea4d1299218d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x31e79bd2893ae29e5c784855e9ab64b497e0b475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x31ec244863da5cbcb960b09a6f7daef0d8e51a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x320955307315420b04ecd1559b5eea931f1aa364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x321a9f4c04e480f9172281c347fc196e37a3c672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32ff2b0ac7fc89c6e7aa9fe540888da61f712f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34259cd1a4de947b8f0ec6011763771a56df10a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x349b5897a2cc6c18c7033a3902946bb824b2f2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x353e43916fa25dfa82cd7e1b79e6567982a1f3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3650e1d22a5795b5c60cfdf4ab3114bdb12da49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x366176e6859ee55007eb2e6ee2e07cf6a254d016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36939d5a1ca73901058f3fa2ba0b7546e7144d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36f8327af5b1154a5a695898d3dca8450c817190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37d4f4cd3f0bfa46f3d191f31d08404800310296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3818ff6b2504f7099f42ed15e1a0c3f08462a58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39b07c4d62b4fbbb7d60b2ac74592337947500de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a29155fcc1e2f158661a72658a53d056499f924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e74e4870179de188f9df623a95001c963a52b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e7aa56e89eddb58b65e5e2b607dbe0d31e8c1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3eae658aa96cfee314dee9c3ff8830468da2aa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3f3609d02779ef8c38aa93c4f5e1b9a44169a6da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3f7e21adeeb94fafde3d1658ed76874aa02ae58d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fafaddee8e9f224e1bc24fa0633c79d5f2fb14c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fbbf81add75424a6eafb916654baca1d83af486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41e94eb019c0762f9bfcf9fb1e58725bfb0e7582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x434e54fc67c762332ea7437607f86c3c9666668b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4383b77be5da7dc6f699501d58683e150328a543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x450b2e975cd76d9061200bccf2992bd411a3ab9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x454d603d0b2b1e7ee4a449208335e46d4a474fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46cf57508b0565decc0419b833c2dafa50b132e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4788bd1dc79ed31481b7dfae77397e840a5578aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x488d2b9b8d73b88380c11aaea3b63a7916c9b8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x489dc9d33ee848546f7785b267707c2ed59edea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x48cfe41b4ddc8836761049da892a3e389a3708bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49b94a52de7f52e73acf3f259457b39f92112a49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b22a317731c7b744b00038ab782f4c54d152ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b65e79f1178684e09bf51f6ef485a4fa7c822d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bbaf0b04632d2cac3123d44551ae98d4c23a704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e162ab7be04c3b1dac64895326be100a8fb830f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f311e4999d9307b22acdae26e9089476f195e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f36aaeb18ab56a4e380241bea6ebf215b9cb12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x51675877eb673629e3d9d718ecb97a436808bbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x519878cb82900c1cc3b2427039886dcb35713474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x533dc36eea632c34a61e774dc8e447f192f59fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x541845f29969897d8d889e2d9d1f07c9ef9d8777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54802a6929c67a51fcab8aa64d9be493bdb8179d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5920c81a435b3ae07bf2a350fc5240369762d421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59bb7194948e2de500446743cf8afab209c74a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b771a141d6585398c3bccde321a1f485dfd0370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5c5c4556f0017ff57c331185e1c61d91acef966e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245038 | `0x5db9f05921d8d5a6a157f6f49c411cc0e46c6330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f2fca5afd9e6ee2ac2b0b565b67a66c13c903d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x608625d44457aeac252e6d0e57380b66226083b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x611e3fea8e002f0a482b4c51cc5e83f6ddfd424f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61bb0ef69262d5ef1cc2873cf61766751d99b699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62dca3b1dbe48c432579ccd883ef48d0abb9c4e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6342f4b72e11ce9dfa58024fe55f0f6b6ff5f48d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64046a8a3eeb6637e8650699ac4a3fda8f03a447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64d911d0f924a39f714a05bc9a539a044782b1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x66a8d57e3bc8b6dc4ad8a06664ae27eea15c0ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6756072ec328c373a9e1a2c18923f0c4b77bc695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68c79f794c7b7a17b681654a71d5d36ea9fe0569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x690a9908ec18ee7663f14d9f39bf120cd66e9320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6934c1f62a6d28a573e2b4071a754ddd29b81e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69cbe6a06a450f2a2b8942b1091d53490b5a7a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a2ae4361d305c2a87f932555a067612578ce499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c76cac50ba525223a7fbdb8701ea6da49f95342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ca00513bf68aa238c02c18a586687930fb1b9d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d53e9768670c01013c3b49eb5f7f58b23635ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6f63054e6abfc26ad177d554a53aa78358c79f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7010cb3216cdd5476880406b5e437108c440b4cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x71d885eb9d8e50e008e75cb303af109ba14320fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7221cc25b90a9e7c10b8c8bb1f27769466abc39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72f5322a7021098e946b0b7ef6da887e0cb2e7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74097cfb56f12cdec5170ab9aa4b1d7865ddc28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74f143037139889e46b2ada037493ee5a40a4c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x758d8c3ce794b3dfe3b3a3482b7ed33de2109d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75da4cbfa0aeba2d280605dbe02fe90237a41751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75ee57984ff760bb47713e34170e0c54f86ccbf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x761c094351ee926882bd681c7d96509cb607c930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7637d44c9f2e9ca584a8b5d2ea493012a5cdaeb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x76a1b9e4712e45c4c3d0ac6e2c3028ee0ce4d3b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245039 | `0x76f1cd8436373fa9f3c17da1e39740fe9db9a04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x77df766a8c226da084275b23147a9fe67c9311dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x792af79f35d4aff24615ba56bfe2ee1c2124c813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79fd762f5988764b0a8ece3886ea6af3a8dc56f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7a77c8d8c4126c29cc7912ac3949516c832be5da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7bc76076b0f3879b4a750450c0ccf02c6ca11220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7c4634daa95c0b04594de946959fe270805801a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7c8d06196299b1642d192c595281f2d9d7cf9d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ca6b4c637502deed915e810da75c408919030f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7d89c906ee97305dfecd3b144039ea98367934fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ec42b49779822d509a8914a7d345f443696f2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x800d732334a8a3cab96cebba33bf1ac969585139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x80b5dc88c98e528bf9cb4b7f0f076ac41da24651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x812bf604e22a676641e97bd967a593d831d35790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x82c116b4dbee7b51809b4058c0244ee1fae2f6da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x82d59470257f08ef15d0120e5559dae3f5b924a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8451238d6234dbc2f5c800a3563c451d8d999c6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245040 | `0x8454ead8e8b6d63951033f38d61a5f0ac6f40279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84d5734fe9c5cb9c9a1346bfec2e2fd0ef4681a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245041 | `0x857824e6234f7733eca4e9a76804fd1afa1a3a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8676b73c8b1e9d22fda0fa85d73ca4b6c01b9826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x87b171cc57a59e53d009eb0fd6730588f246741f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x87f7652a92adb8ce2e8423b6aeb86d4efe69a6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88b89f6f4a6609f94a2612350495e39863bd797a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x899e45316faa439200b36c7d7733192530e3dfc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89e29668e4928bf3b085df39cc2ff2104f45c37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89e5ddb3f8ee68028e8ed100a7f1536f33fd8e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a167c528beda32516a78130dbba1609dd2726aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a42c2b513da0c18d890941e14e34ce4b482a10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a951193a0c5aee87b0e32daf73feb5addfa5356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8bd3bad54f8e6dc0efa202defc07236fe3ff1601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cf42cef1f2d33e6d42c9e31e7a77c70daed6020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8d1267febf6607b7427db8652f5095820f3c609e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e936e91cf9eb3cbc64952e6eac2de5f7bd51990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e9f421bc0d0276ec9cf0cff178e177d3cddc29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8f6254332f69557a72b0da2d5f0bc07d4ca991e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8febdf5d1c7eff00b5129c9e6a3e837a7c29f1ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9002bb2d926593e4b969ba8c8293cfc59c1c0584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91f9d71610d4115e639073447505fc6c53d041b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x942e4f02e1c34f30de6c869b28554a616690cd98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x94b6adc7b1e505bf05ff59a8e5ede026a367bdb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9677fb460a378b0d35c37177437c0598a51fc442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9726ca9aeff4bc8fb8c084bdabdb71608248e3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x985363b7832b7b9d0b391b1470276c63477bb629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98bcbf20c7a4fb133d133e661df436c0ff8d9772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a4384837a49f1cabfc1dabc4df268e111864d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a801131fbf35fbdc8fbf15c6f778052975ee67a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9aa3890a87e6bd2cb85dad1a5d8b0a9d669e658a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d1912460b828d69756d66a9c40d5b6cb369c3b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9d381f44d1fbdf8190fa0ecdc028e2af24ddd3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9eb3202a4be615920d076fd79b5f3727867d2e1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9fe3ee3e7117cc3930aa58ac465223c85271ba99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245042 | `0xa0e35f56c318de1bd5d9ca6a94fe7e37c5663348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa14a5334465d3acfe08699fe04def94d25bd1aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1650627bab3c0147b7c98e1335ef942e728f414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa412d467995165cad357af6e64f416489269e572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa42781efd591d4242ef6b8cc81f820a29bd156fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa603c624571417253ae8c910f66590c9aa92c0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa6993b6d968ae161d2f1df9c18d23f360392d88b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa6d05cb9f9413d4c8bbfdb6d54c38d34e4177211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa8408f602dff4b03681cca220957b47f5f226193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa94e0fa58fb70264492d9b74eb446a2224773547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa97f915bc570a352b7e7b63e5ce920778ab76020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9a432f782dd30119883f72361ded39bb7fde442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac872bde367ff019b2e642419c8604f0666d07ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae8a9508edb52b86b91aa522d7a39ef2e74ede7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaef4a8e9163c32121360447cad9979167252e7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb0047436894bd0a105f16eac41cace5bf287eec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb05a596be1e10fca362a690a49ced7efb05030e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb211c7cacc90db6ef2e5b02432fe6eebbc217a6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245043 | `0xb4e988cf1ad8c361d56118437502a8f11c7faa01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb56323f300c04c33f6502f3ea62bebe2e99ce5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb5f6aef138b0116097836f3e50f2cf02a36befd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb68382e84bf0dbeec2e3fe59040723553bd40843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7626ac41d6f31886143452b9518cee129ad8e26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245044 | `0xb82381a3fbd3fafa77b3a7be693342618240067b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb97c8fd512248a2c92c6d883855c25e20258ad0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbac2a471443f18ac5c31078b96c5797a78fcc680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe2458396cd2375a32d85590e03e27fc495e0bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe37483dcf6c4d12c8020d9fd718f0158e85aebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbfc46c7ca2c0c4d50cb8ad7fa2935d489e68fe07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc14ea01abb94c4a3be345a081f3918e1b663fbf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1fe57d92cce19731a875b1f7ee4a56f19a2989a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc22dae40f828e38a9527b604e7a68a89a3de9c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc2ee23379aae2beccf93f9e632e954ea7dbb0e54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245045 | `0xc3586558ddb1cc6c7c5338691842b8d5f47d253d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3704e12c34d929e082257b793c8f114b7bc7546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc388508604ed6f4bde4e97e459c674a5c0800e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc40801b88c835a58e54eee6679d301ba31a4c72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc5529d67cf44a3ecea71fa1db0284088d5a7ddfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6153fdbe6941effd8cbdd150ba459175f1ea558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc66f655b53751d539e235fab88d4cd7c95c663ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc765be66984e787cd3a3c2de89f90ec3983d6a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc785e6ded925285babea8f0f1d2ecb0f314af95d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc8a087ac4bab015261dfc3469201f1169b8a5e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc973b0b02d6471791fb3158f0eae628a2a3626eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9db4844fad344e069524d67abae12fb94a7b02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcbf95445218b2c5a03ea3263215cf210744cc3d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc58c5a88bd02691212bcb9197939a34b039352e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc6e9bd96b57baed8e5467ec3bfb7ad4fe377da3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xccc9e7f5ef7695a7a36fe08d2086e51ef6df948f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd058b7f0d53e03d453de6dd489066768f8d15cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcf429d2680aa5c7c710310f7b193d2482ff4ba82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1a2a973be2c647ce2a1a013170ccefad2f52af0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd268833d50597ac18f339939ea7aaeacedc5743d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245046 | `0xd3f64eb2082cee7632c12a968dedf304bcac2def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd497be005638efcf09f6bfc8dafbbb0bb72cd991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd5abd336bb7a30f7a8f4ad54e6871d0b4f5b0542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd5bb4f91f4a34f45324801e06c8109d8df244bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd79576521869bd7c50b19a870bae9538bd75f4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd7e031b2e0fcfad2c2b2ba8dea4caeca2a131158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9e6e2c38e4e2167373ce6b75734af9023a9c01b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd9eae139a99b4bf3957ab13ddddecf9949851f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda317c1d3e835dd5f1be459006471acaa1289068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdb9d124f897ee8f448e0c97b48fa908f94782f4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc59d500a047984ea2a307dc2d0702421d52d804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc7f3c08aa574d39fc97fdce20f8fa68ea2a0f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd4f0f62878022bc61d5d7fdcfee66aceadbc234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdde982e29b3a3522a8f9b92200130222a69b0d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde2896de5acccd05f69b5c5a5256df11b23d23e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde7318afa67ead6d6bbc8224dfce5ed6e4b86d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdfbd907c0cc5e7fdac5c27c66826785f133030c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe16a5d307015dcdf269453161bc276c14cc234b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe22fbe2decee14db47d52749e166ca84917af914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2d7bfc18c29248d2170264948ae1e4b4b6b6aa6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245047 | `0xe3d90f21490686ec7ef37be788e02dfc12787264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe407d0891b8365bd2200410193d0c56afd9cabc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7226e8ab764b0611b0921364d56a090735826dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea0dc326b7427ee099e1360a1675eda38a105a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea6d43cf17fc6cf2b37c36ea076fd415b107aa62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea82c55575a6998a0e864c2c589bf245d1726510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeae15986be5e4f75e804da9fb0cc09b31162eb13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb6c36a97e9f12b60dedf411cbd4919e83249054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xec9badef22d6538d9aa0f7bb90d8576ba1fd9bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xed21c73f27fef2c08213a1b949da1e924fe482e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee386d787db24abee4dcc591f35405e323b70dad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeffd3712188941323d7c4f69dcca825f2dffa1c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0c1e6862d4a588deec91613ef962b9e18aacf75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf30a674935479cc6f2254ba65d7534eab8bd6ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf31d233a94e168c85fce4b9ead99fc0d0900cb5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf37e991eb73af30819cb7ca7017aa2049d12e2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3952c0ab2d3874131cc1c86921ed4ecacabe847` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245048 | `0xf54791059df4a12ba461b881b4080ae81a1d0ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf5f51ac3de288d2ba4a2f8d71c185bf36193e5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6e0cbeeea33bd25ff11bc6a4e8b3f1e2a11641d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf81a6ebf10557fe73d3353eb174aabb1b228faf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf9181aad773d423a2cc0155cb4263e563d51b467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf9d0225d2329fb2b9b7c81d99c628331a35ece89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfb4b2c6884037d2eb64a70ebc99b64bba5da170a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfca6d4a73ae441a9d19a439132dde66776561cb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd658cbf092a4d93f7ffd8544c92f866fce6d421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfda0775784dba0c9a7b2f6d419e42773f61e4103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff58a49cfd679460955fb15f1e7fbd9b4d031ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xff5e32726ff30e9a15f6485c3bd1e31e63b26625` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 405
- Live contracts: 10
- Unknown liveness contracts: 395
- Source-verified contracts: 121
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=72, contamination review=4, exact address book overlap=1, source verified unclassified=44, unverified unclassified=284

Showing first 200 of 405 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AddressManager<br>`0x03bbc1313d3db4b356fb307dbe86a001f29c1576` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0x089df6de0498c9dea212d80b72641984425c00ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0x1920666fa17a87b4454f08665176cbe9ecc0b7bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0x2df7057d3f25212e51afea8da628668229ea423f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0x90d1d2b89d64b1a79e1115bc2df379359b88b3d7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0x91ccfc9f2b8a2e511ec057d0039af78fdb9902c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0x9eb97469ad44e8ccdf5c1ff669d7c57c7235c49c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0xb4950517fac0a3467605bd5f83ef60c8f2cde441` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0xccb5ddf00676aed7427db50b0a69a026f442c8db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AddressManager<br>`0xe9a057545d5f29932a118ec3aab44c2902a0318a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | AssetHelper<br>`0x0969c4233120ea77f3f54b9fd5143c61e2cdd2ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | AssetHelper<br>`0x41b9ea80986f6efd7ff4d5604e283362cbb682b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | AssetHelper<br>`0xad6e7af05b7e594c81ed460ad31f18b7641acddc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | AssetTokenFactoryCCIPCompatible<br>`0xef24a519994bffa2104c4fd6c1ee58718f6c7bd5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | BFactory<br>`0x9186503af1d7d3317b4c2c44a815be984838c296` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| candidate review | DotcEscrowV2<br>`0x2b418d9b1e0c203ab93c8b5a54258bb3e6babbc6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | DotcManagerV2<br>`0x1f58f1ba43a88b4ff3b4265449b26e28c08395ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | DotcOfferHelper<br>`0x6b8808910c298239aabf6475e99ea468f1d52a0d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | DotcV2<br>`0x28295039f74b04a3ff788c1af679182cd9110b89` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | DotcV2<br>`0x9e9add0fa93487b178a975ea320b563f35e668f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | DotcV2<br>`0xca4b2d3f4e061d0826a14c15ebc8faf3d94b5500` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | DotcV2_1<br>`0x423126258e7684356c0b11bf23c7e73a1d9ed3e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | ERC1967Proxy<br>`0x114cb34b1a0fbbb686e31bf5542d64a98c42ee23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| candidate review | ERC1967Proxy<br>`0x18a0b8c653c291d69f21a6ef9a1000335f71618e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| candidate review | ERC1967Proxy<br>`0x2294a7f24187b84995a2a28112f82f07be1bcead` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| candidate review | ERC1967Proxy<br>`0x58a61b1807a7bda541855daaeaee89b1dda48568` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| candidate review | ERC1967Proxy<br>`0xe09899a4c98473460bc19d136b330608b465dc55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| candidate review | L1OpEURCFactory<br>`0x8d9a9aef9ab3b7d978fd4f723fd1a5aebbcb2c67` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| candidate review | L1VestingWalletPaused<br>`0xe2b0cfef892c017d84d8220b8d2ac249624cd087` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| candidate review | OfferHelper<br>`0xf61ed41749cd82767057aa39edcee8d797d40719` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | OssifiableProxy<br>`0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| candidate review | Proxy<br>`0x0479e6757eb4743843b309dddf78e6ba242f38be` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x05f23282ffdca8286e4738c1af79079f3d843750` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x26c7bfb430d68bf74d2d52497836d4336b555de7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x3a44a3b263fb631cdbf25f339e2d29497511a81f` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x6738c99eda2333b45d6ba8e212262305ffe34bf2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x6e5ff00e8aaf55fa55e8ee9976622409fd187824` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x7df140dd919e29cb1c8d6186f2bba6e407c7106f` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x83fc9db9ce83325f77f1aefeba1a3412d0d26fdb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x86a6f51ca732828ea6df0b377f417ba5f68490b1` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x899de169fda163f57b12852a0144bb886578d7b6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x8f11312580079057df3a3b6ea678c8585bd3a24c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x98ce5883fb99508c24d40f97016f51e04117b4e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0x9e24f5eed337f8ee0555d6b78a34a53a80dcd0d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0xa4d9ef479884d875a5b95b541f024f4e837f6fcd` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0xbaa10876223b11baae86e1bbf52daef38ecbf425` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0xc1da06cc5dd5ce23baba924463de7f762039252d` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0xdd9c27910327d3f4a4007ad8f7b53332db6f1079` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | Proxy<br>`0xf7a2e44ed9cc2a571d4b1f44110b38fb254e8675` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | ProxyAdmin<br>`0x055860f40533c4d9e7cd38105f4c0d1eb0593072` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | ProxyAdmin<br>`0x0a4477e37583bfe30002ee386f5ab3fa1537b61b` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | ProxyAdmin<br>`0x121b48f41ad4965445bc295bba0f069b1b6533c6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | ProxyAdmin<br>`0x35e59bf5ff5a732d9aa3665ebeb49b2e71714244` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| candidate review | ProxyAdmin<br>`0x3d24faf8f7bed929a11269eb615a0f2de64d03b7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | ProxyAdmin<br>`0x7a3d18271d54d6159104d2b5e791662f07dffad1` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| candidate review | ProxyAdmin<br>`0x88f3cb3500c9bcee361f334727dd4bfc9013dfd5` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | ProxyAdmin<br>`0xce36f03fe18fbf1761c77faf0dce4dc154dcb5fa` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| candidate review | ProxyAdmin<br>`0xe44cb98048afedb3cb21a7933b517165254ebd46` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | ProxyAdmin<br>`0xec432c4f1d0e12737f3a42a459b84848af979b2d` | project_anchor | unknown | live | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | ProxyAdmin<br>`0xf25146af34005010a651ec36e673709c38ce354c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | ResolvedDelegateProxy<br>`0x31b72d76fb666844c41edf08df0254875dbb7edb` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| candidate review | TransparentUpgradeableProxy<br>`0x0a103ee32f4209926d8ba7e528aff8a831ed3dae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | TransparentUpgradeableProxy<br>`0x0a4010b884a8e3f9fb3611fe830a01b46fbe2073` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | TransparentUpgradeableProxy<br>`0x1d0d0516385d2ff6748a3b87ba2c2cc37f287d4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | TransparentUpgradeableProxy<br>`0x4877d1b8c028095582f4e4f273d0ec914e15a53a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | TransparentUpgradeableProxy<br>`0x53fbfe5b1dfea7923f4691f819ca6e278de4e337` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| candidate review | TransparentUpgradeableProxy<br>`0x632f2fe528d59ae71ecd38d7f1fdf8d5b5b1cf25` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | TransparentUpgradeableProxy<br>`0x7753736456451f639281fcdc5b4151fe7791450d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | TransparentUpgradeableProxy<br>`0x964183083e623d5a8acbd27eb31c3609e25bb7b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | TransparentUpgradeableProxy<br>`0xb8adad01342d656d8f70fe1fa55cc3fbb6965f7d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| candidate review | TransparentUpgradeableProxy<br>`0xbda5743b76bcc88337336ef027958422f4dfe5f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| candidate review | TransparentUpgradeableProxy<br>`0xefbcbd94d9c411e3f0ffa559ce627498122aca82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| contamination review | BRegistry<br>`0x8133eeb249f0636bba0b8230ba1089a219263c04` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| contamination review | Extension<br>`0xe6227e07c0dd1604f3c820ad779792bbe56a9ed8` | non_address_book | unknown | unknown | verified | n/a | `0xa4d8554f7c4b680459e66d907bc017c9f728fd20` |
| contamination review | Main<br>`0x5405dd4306a4ec1e15c71275ba9a58425759c194` | non_address_book | unknown | unknown | verified | n/a | `0xa4d8554f7c4b680459e66d907bc017c9f728fd20` |
| contamination review | TellorGetters<br>`0x73e34dac4e76bda81724d333a02d850ca7fbb038` | non_address_book | unknown | unknown | verified | n/a | `0xa4d8554f7c4b680459e66d907bc017c9f728fd20` |
| exact address book overlap | L1VestingWallet<br>`0xd590c2e71739c551eba7aebe00e7855df4cf5fb7` | project_anchor | unknown | live | verified | n/a | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| source verified unclassified | ActionManager<br>`0x7005e13e8118b72f0d77e3418cdf4b48e768c820` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | ActionManager<br>`0x9835fa9b914bcbc45d731edde0d1d63adb56c477` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | Authorization<br>`0x9c9aa80f7b4990ba1ee75a121e1bf1e46fffbae1` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | BPool<br>`0xf5fada32917350b91fbd9bbde62e69bf483a960a` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | BPoolProxy<br>`0x5321647f3c3769bc7bb9e10ab10d7f5c2e402c56` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | BundleStorage<br>`0x5d84b92a34635e5c21b7885fb29d6a4b60287ab7` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | ConfigurableOracleMockFactory<br>`0xfa9f3c42e063d78a46a4f1e5b6b4c365203d478e` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | Distributor<br>`0x3c4b07ecdad1b58ac05fa5a3c3c598b1c16232c7` | non_address_book | unknown | unknown | verified | n/a | `0xb842512bd44bfad4c431e072e1189c9aa6c663b7` |
| source verified unclassified | Distributor<br>`0xad89eededf3f4996932c6949ab37d9398bfbb215` | non_address_book | unknown | unknown | verified | n/a | `0xb842512bd44bfad4c431e072e1189c9aa6c663b7` |
| source verified unclassified | Distributor<br>`0xccdbeb21b702b1b71c07b3d2b2c70460757ef7f6` | non_address_book | unknown | unknown | verified | n/a | `0xb842512bd44bfad4c431e072e1189c9aa6c663b7` |
| source verified unclassified | Dotc<br>`0x19708f0e1b9f4645907b75386a9d5bb75ea03acc` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | Dotc<br>`0x820758b04721bd0b69a091fe8ef657d936bf35c5` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | DotcEscrow<br>`0xf9ff7c0d236745399ce6bdbf3a54028339288ba3` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | DotcManager<br>`0x429737c0ddf17779803aba8b5e6133012952b4c3` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | EthPriceFeed<br>`0xf70cee7c7e638f9364c4076a01226337ec51fca5` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | EurPriceFeed<br>`0xc1b06da65074c9df0109d312eb3e59e04f638514` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | EurPriceFeed<br>`0xd0fbc3d37269ee42df57cd264e737e29a8b7c978` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | GoldKiloPriceFeed<br>`0xbe79f828e0cd909dc54ad576e8778fedeaecbde8` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | L1ERC20TokenBridge<br>`0xc7315f4faab2f700fc6b4704bb801c46ff6327ac` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0xbfc03d7c2527dd6f45f63f0d71adb36b8549fb58` |
| source verified unclassified | OperationsRegistry<br>`0xd641ae2ad8a0e72ad92ddeda7cef67ee3f2a49b9` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | PermissionItems<br>`0xb441417e6ff3acf60b9f0216d8c3179913080daa` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | PermissionItems<br>`0xf96e9a7ce4c68d85198f959f4138ca449943a0fe` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | PermissionManager<br>`0x991fd11876a438af7bcadc98f4b3cf201bdf6191` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | ProtocolFee<br>`0x9516cac65d54cc2fe4c070978223f930894ba072` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | ProtocolFee<br>`0xabc2108199f33adf0343ef3a67565313c0aed6c1` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | Sale<br>`0x6dd25ce9a4e09d16c6ab2a2e9caa373aaeb0fdfd` | non_address_book | unknown | unknown | verified | n/a | `0xb842512bd44bfad4c431e072e1189c9aa6c663b7` |
| source verified unclassified | SmtPriceFeed<br>`0x0b2a66c5106bc4be40214b0699adf8d5d9e9674d` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | SmtPriceFeed<br>`0x4afe7d5d85ed6b4aa02ce49f907248cd8810a368` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | SmtPriceFeed<br>`0x6da68d65583460742ba8711b166ad51540713ff7` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | SmtPriceFeed<br>`0x803492629acb304578c09493be086bbc9deb497c` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | SmtPriceFeed<br>`0x9221c67b935932ce5a6cb59ac3f46fde1b82c298` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | SmtVesting<br>`0x0c033bb39e67eb598d399c06a8a519498da1cec9` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | SmtVesting<br>`0x9a30173523d48cd26f681c46712cd65589eac56b` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | SwarmBuyerBurner<br>`0x1a2356d54aeead105f203a5c51a6307ec100494e` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | SwarmBuyerBurner<br>`0x2fcab60dc6ad65be5f2aae6a1b2e2ecb93017888` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | SwarmMarketsToken<br>`0xfc63b16f5dfaf3c9e1b4bde873f79ce02c216b33` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | Tellor<br>`0x04b5129735b5d9b1b54109f2c4c06ea23b506a95` | non_address_book | unknown | unknown | verified | n/a | `0xa4d8554f7c4b680459e66d907bc017c9f728fd20` |
| source verified unclassified | Tellor<br>`0x81beb487859718006191f7a2859419b201b4c038` | non_address_book | unknown | unknown | verified | n/a | `0xa4d8554f7c4b680459e66d907bc017c9f728fd20` |
| source verified unclassified | TokenTransferor<br>`0xcd465d9190e6d4943e9cabb352164621dbb6ad12` | non_address_book | unknown | unknown | verified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| source verified unclassified | UTUToken<br>`0x804dd5e6c45181b0b13ab58a3480956026150993` | non_address_book | unknown | unknown | verified | n/a | `0xb842512bd44bfad4c431e072e1189c9aa6c663b7` |
| source verified unclassified | XTokenFactory<br>`0x20bf447fe55ac3718538e89c8c32396b174e82a6` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | XTokenFactory<br>`0x247d082cd7649098d377ff8812d84aa354b55c14` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | XTokenFactory<br>`0xe1532de8fa6ead8af4e461a9c3c9544c938f33b5` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| source verified unclassified | XTokenWrapper<br>`0x2b9dc65253c035eb21778cb3898eab5a0ada0cce` | non_address_book | unknown | unknown | verified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0x70bd9615c10fb3585d7c979fc1992fe57348cf5e` | non_address_book | unknown | unknown | unverified | n/a | `0xda6e5640afb2ed212ba3a6fd83076e2ad3dad185` |
| unverified unclassified | UnnamedContract<br>`0x8f58fea61c133864b0211a278d4b286a57c98022` | non_address_book | unknown | unknown | unverified | n/a | `0xbeaee712741c7f99b64b798ca127fe776d491fb4` |
| unverified unclassified | UnnamedContract<br>`0xa5e175e7ecc13f746aa49bbc734819a06c79f6fd` | non_address_book | unknown | unknown | unverified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| unverified unclassified | UnnamedContract<br>`0xb45f105ad41570fa02fc84f56e7ee69ade5e0989` | non_address_book | unknown | unknown | unverified | n/a | `0x5b3e3b28ec066d15b63c5423e0a32b6c44401824` |
| unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| unverified unclassified | UnnamedContract<br>`0x00f1407c21184a38ded9be1d0d95eccf4b1fa992` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x017ccdba6c4defcb70a7b75e0c64ebf6e3f13d8b` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x01c018d5ae14c60c0ab24caf559d3e818dacc0e5` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x0220a1cf6c3a548be75aeabcda509cab08cde063` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x02b83e7217d314c23879cd6f2cf0fa576d4b3687` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x03746edf19f95d877ac2898976521ce5f40a2f94` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x04ed987fcaad08dbe8b2990c069f1f69b8293a0a` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x05253f6c76a3a2256936018be3417fa583c779af` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x05676e44f0d49d5530e1fa7d337175f5bc1da73b` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x05766b9ea781343721261bc35e037223438033c2` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x06c9a59a8dbfc919f1dd3bf14482d178d1f8e4f4` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x08210f9170f89ab7658f0b5e3ff39b0e03c594d4` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x082d16150bf75bb8f2197eec1d293dba96c93638` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x085679a981fbd04497ee63daea918b3dbe0f2635` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x0970de37fdde8497a112f499d1fe67a14ca6545a` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x098a952bd200005382aeb3229e38ae39a7616f56` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x0a6cd1348e7b0f3abe015c205f22526ba1377821` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x0c4f72d2dbbf87790497ec2cd319212d336edb5f` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x0e08bb2539afaa8718a701e24356324998f8439e` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x101feead47a2f539b5d8b1bb1599657f884b69ca` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x10f564d61850cad81a17a7d674c0494f941ca1ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x11b8b179ecf830a36f0e243756d1109f0cab442b` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x11d4d908d76b259e3e2168d8f2cd1592a2aaecca` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x12f558ee6d288e2864b59cf21eebee1da95e8caf` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x12f8f8bde375f547c9e9c4494f4587ff175ddad7` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x14c80ba159f06aa589e80cb35ae2e949f33b0a10` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x14e51f0a265d9b5c68387c2cf11343197a451168` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x1583c7b3f4c3b008720e6bce5726336b0ab25fdd` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x16c70a0de17b393d07be7797a72798506fc52702` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x181443ec021bfab6f1224a6fb4f878867265c8ef` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x194c9f28f86ae13036b540f14015183e28574318` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x1aa1864bdbcb2ccd1a48c4f43371436eecdbc361` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x1b0fa6d4ba8c624556dfe068ec0ff21811aa7a5a` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x1c2807b207f140a1de0b39e5546edef67af2568c` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x1d4905af7dcb3b5554ec05fabf90b8da04845dc2` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x1d5bf1d5b330349a5d5e97199c87484db897c806` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x1f0cf0a17647cf84f82679598e0b42dc878aa90e` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x251d59bce054d285539764fd13154f6369b2126c` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x25855f3055b844770f86426d6bf8444c1231c11d` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x260b6574754479913e12c91e34b0cd0964e1b16d` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2611d9293e054f04e7a4b0f9a9a87cb540ca20b8` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x27615092ef777b8d58cda7bc5abe4530c46a601b` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2b40fba1387498892aed6547e69cbccc42871cb4` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2c1d077c17d2598a99112553eff9113fc00ec5ff` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2cf35de9e73045140797acdfda0633fe4233c4b5` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2d1c420080cad3a9b86472fb415d13b8d66c205e` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2d7fa0fada885f3f48eb2220e3eb545583f8a823` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2df42a206dd8c5cb7470e1ffa8d87dddd04d8df7` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2dff8e2c55959f719faa6dcc4a3b0937bca71f73` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2e252cbe795d219b75d88fe268da446215c4bfe6` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2e3467bbd995a32b85dca51c58bd23f5a96c2ff2` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x2f0852868bb1d66165afc056dc32ac02773ccd86` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x2f62885383cd99d8b76f74e43dfea4d1299218d6` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x31e79bd2893ae29e5c784855e9ab64b497e0b475` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x31ec244863da5cbcb960b09a6f7daef0d8e51a2b` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x320955307315420b04ecd1559b5eea931f1aa364` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x321a9f4c04e480f9172281c347fc196e37a3c672` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x32ff2b0ac7fc89c6e7aa9fe540888da61f712f29` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x34259cd1a4de947b8f0ec6011763771a56df10a6` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x349b5897a2cc6c18c7033a3902946bb824b2f2c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x353e43916fa25dfa82cd7e1b79e6567982a1f3d7` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x3650e1d22a5795b5c60cfdf4ab3114bdb12da49a` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x366176e6859ee55007eb2e6ee2e07cf6a254d016` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x36939d5a1ca73901058f3fa2ba0b7546e7144d7a` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x36f8327af5b1154a5a695898d3dca8450c817190` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x37d4f4cd3f0bfa46f3d191f31d08404800310296` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x3818ff6b2504f7099f42ed15e1a0c3f08462a58e` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x39b07c4d62b4fbbb7d60b2ac74592337947500de` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x3a29155fcc1e2f158661a72658a53d056499f924` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |
| unverified unclassified | UnnamedContract<br>`0x3e74e4870179de188f9df623a95001c963a52b4e` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x3e7aa56e89eddb58b65e5e2b607dbe0d31e8c1d4` | non_address_book | unknown | unknown | unverified | n/a | `0x6885e36bfcb68cb383dfe90023a462c03bcb2ae5` |
| unverified unclassified | UnnamedContract<br>`0x3eae658aa96cfee314dee9c3ff8830468da2aa3f` | non_address_book | unknown | unknown | unverified | n/a | `0xfcf7129a8a69a2bd7f2f300efc352342d6c1638b` |

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
| ethereum | `0x2df7057d3f25212e51afea8da628668229ea423f` | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ad0d165b9607960ad850090ddd7b9eb381d9c1e` | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31efc2c8012c56e007e5bdb8e5b7955d197c168e` | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0cf7d3706a27cce2017aeb11e8a9c8b5388c282c` | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31b72d76fb666844c41edf08df0254875dbb7edb` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9348af23b01f2b517afe8f29b3183d2bb7d69fcf` | L1ERC20TokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a44a3b263fb631cdbf25f339e2d29497511a81f` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6033f7f88332b8db6ad452b7c6d5bb643990ae3f` | L1LiskToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb99c8c87c5e0c2dcb01e2a1e35aa01f5889f677` | L1OpEURCBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe3622468ea7dd804702b56ca2a4f88c0936995e6` | L1OpUSDCBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2658723bf70c7667de6b25f99fcce13a16d25d08` | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd590c2e71739c551eba7aebe00e7855df4cf5fb7` | L1VestingWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x113cb99283af242da0a0c54347667edf531aa7d6` | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc1da06cc5dd5ce23baba924463de7f762039252d` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd00e38514d66bf1b761a8937559c6b2854a5b3ad` | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26db93f8b8b4f7016240af62f7730979d353f9a7` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdd9c27910327d3f4a4007ad8f7b53332db6f1079` | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb17548c7b510427baac4e267bea62e800b247173` | SwarmMarketsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05f23282ffdca8286e4738c1af79079f3d843750` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88df592f8eb5d7bd38bfef7deb0fbc02cf3778a0` | Tellor360 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f958d2ee523a2206206994597c13d831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa58a4f5c4bb043d2cc1e170613b74e767c94189b` | UTUToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | WstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 99 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 390 |

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
