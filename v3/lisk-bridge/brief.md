# Agentic Audit Brief: Lisk Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Lisk Bridge (`lisk-bridge`)
- Website: [https://lisk.com](https://lisk.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, sepolia
- Contract surface: 214 unique implementations (283 raw deployments)
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
- Outside the address book: 170 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 47
- Confirmed-live implementations: 27 of 214 unique; 187 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/104
- Verified + Unaudited implementations: 104
- Verified by bytecode match: 0
- Unverified implementations: 110
- Unique implementations: 214
- Raw deployments: 283
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

### ❓ Unverified (110)

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9fa20ca1157fa686e60f1afc763104f2c794b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf242275d3a6527d877f2c927a82d9b057609cc71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf50fff154e63e510e494929e9eab1e9c5047429e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf54791059df4a12ba461b881b4080ae81a1d0ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9181aad773d423a2cc0155cb4263e563d51b467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd322b4724c497e59d48fff8f79c16b4d48837f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff5e32726ff30e9a15f6485c3bd1e31e63b26625` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-245049 | `0xac485391eb2d7d88253a7f1ef18c37f4242d1a24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245032 | `0x16b840ba01e2b05fc2268eaf6d18892a11ec29d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245033 | `0x1bb17eb31bddfd30f63d4fae6c8eb85d9e9b1f48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245034 | `0x1c7d4b196cb0c7b01d743fbc6116a902379c7238` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245035 | `0x1fb30e446ea791cd1f011675e5f3f5311b70faf5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245036 | `0x269d632c1e518a922c30c749cfd3f82eb5c779b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245037 | `0x27bb4a7cd8fb20cb816bf4aac668bf841bb3d5d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245038 | `0x5db9f05921d8d5a6a157f6f49c411cc0e46c6330` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245039 | `0x76f1cd8436373fa9f3c17da1e39740fe9db9a04b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245040 | `0x8454ead8e8b6d63951033f38d61a5f0ac6f40279` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245041 | `0x857824e6234f7733eca4e9a76804fd1afa1a3a2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245042 | `0xa0e35f56c318de1bd5d9ca6a94fe7e37c5663348` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245043 | `0xb4e988cf1ad8c361d56118437502a8f11c7faa01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245044 | `0xb82381a3fbd3fafa77b3a7be693342618240067b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245045 | `0xc3586558ddb1cc6c7c5338691842b8d5f47d253d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245046 | `0xd3f64eb2082cee7632c12a968dedf304bcac2def` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245047 | `0xe3d90f21490686ec7ef37be788e02dfc12787264` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-245048 | `0xf54791059df4a12ba461b881b4080ae81a1d0ac0` | ❓ Unverified |

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
| needs_review | 110 |

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
