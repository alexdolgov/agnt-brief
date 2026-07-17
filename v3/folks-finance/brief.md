# Agentic Audit Brief: Folks Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 21 (1 matched; 20 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Folks Finance (`folks-finance`)
- Website: [https://folks.finance/](https://folks.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, monad, polygon, sei
- Contract surface: 384 unique implementations (513 raw deployments)
- Coverage basis: 1/61 confirmed own live verified implementations (1.6%); conservative 1.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $84,214,549.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Folks Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, monad, polygon, sei. Structural roles: 50 core, 9 unclassified, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: core (50), unclassified (9), supporting (2)
- Contract kinds: contract (61)
- Detected standards: accesscontrol (44), erc165 (44), erc20 (5), erc20permit (3), erc1967proxy (2), ownable (2), erc4626 (1)
- Frameworks: openzeppelin (50), openzeppelin-upgradeable (2), chainlink (1), layerzero (1), permit2 (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 131 contracts are derived from known codebases. 131 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x00db8119b1c919747da91d5fc2b3950bd79ec0ce`, chain 1)
- UnnamedContract (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- UnnamedContract (`0x7a56e1c57c7475ccf742a1832b028f0456652f97`, chain 1)
- UnnamedContract (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)
- UnnamedContract (`0x911d86c72155c33993d594b0ec7e6206b4c803da`, chain 1)
- UnnamedContract (`0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee`, chain 1)
- UnnamedContract (`0xcda75578328d0cb0e79db7797289c44fa02a77ad`, chain 1)
- UnnamedContract (`0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8`, chain 1)
- UnnamedContract (`0xd97af2ff3a44427e4a412fed0cb8ebcbf09d4ae3`, chain 1)
- UnnamedContract (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- UnnamedContract (`0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5`, chain 1)
- UnnamedContract (`0x2170ed0880ac9a755fd29b2688956bd959f933f8`, chain 56)
- UnnamedContract (`0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd`, chain 56)
- UnnamedContract (`0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7`, chain 56)
- UnnamedContract (`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`, chain 56)
- UnnamedContract (`0xec59de82fff1959e92b91dab975e4564fc3447cc`, chain 56)
- UnnamedContract (`0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd`, chain 137)
- UnnamedContract (`0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6`, chain 137)
- UnnamedContract (`0x3c499c542cef5e3811e1192ce70d8cc03d5c3359`, chain 137)
- UnnamedContract (`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`, chain 137)
- UnnamedContract (`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`, chain 137)
- UnnamedContract (`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`, chain 137)
- UnnamedContract (`0xc271a17db5ce6f53745a3f466077ec816bc20a9c`, chain 137)
- UnnamedContract (`0xfa68fb4628dff1028cfec22b4162fccd0d45efb6`, chain 137)
- UnnamedContract (`0x1b68626dca36c7fe922fd2d55e4f631d962de19c`, chain 143)
- UnnamedContract (`0x8498312a6b3cbd158bf0c93abdcf29e6e4f55081`, chain 143)
- UnnamedContract (`0x9105ceebaf43ef6b80df1b66beffd5f98a036c36`, chain 143)
- UnnamedContract (`0xa3227c5969757783154c60bf0bc1944180ed81b9`, chain 143)
- UnnamedContract (`0xb1e2939b501b73f4cfef6a9fb0aa89a75f1774ee`, chain 143)
- UnnamedContract (`0xc30107a8e782e98fe890f0375afa4185aeea3356`, chain 143)
- UnnamedContract (`0xe7cd86e13ac4309349f30b3435a9d337750fc82d`, chain 143)
- UnnamedContract (`0xee8c0e9f1bffb4eb878d8f15f368a02a35481242`, chain 143)
- UnnamedContract (`0x0555e30da8f98308edb960aa94c0db47230d2b9c`, chain 1329)
- UnnamedContract (`0x9151434b16b9763660705744891fa906f660ecc5`, chain 1329)
- UnnamedContract (`0x04c0599ae5a44757c0af6f9ec3b93da8976c150a`, chain 8453)
- UnnamedContract (`0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b`, chain 8453)
- UnnamedContract (`0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22`, chain 8453)
- UnnamedContract (`0x3b86ad95859b6ab773f55f8d94b4b9d443ee931f`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0x98d0baa52b2d063e780de12f615f963fe8537553`, chain 8453)
- UnnamedContract (`0x9ded28d9ec69f97efd718ce768dc39d78fd014f8`, chain 8453)
- UnnamedContract (`0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452`, chain 8453)
- UnnamedContract (`0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf`, chain 8453)
- UnnamedContract (`0x048e47eddef06c7f672d6b16d978ad38ec41a9ec`, chain 42161)
- UnnamedContract (`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`, chain 42161)
- UnnamedContract (`0x3106e2e148525b3db36795b04691d444c24972fb`, chain 42161)
- UnnamedContract (`0x35751007a407ca6feffe80b3cb397736d2cf4dbe`, chain 42161)
- UnnamedContract (`0x3647c54c4c2c65bc7a2d63c0da2809b399dbbdc0`, chain 42161)
- UnnamedContract (`0x4186bfc76e2e237523cbc30fd220fe055156b41f`, chain 42161)
- UnnamedContract (`0x5979d7b546e38e414f7e9822514be443a4800529`, chain 42161)
- UnnamedContract (`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`, chain 42161)
- UnnamedContract (`0x912ce59144191c1204e64559fe8253a0e49e6548`, chain 42161)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- UnnamedContract (`0xb359155378ff5e2837f12ed0bee5168123c88acc`, chain 42161)
- UnnamedContract (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)
- UnnamedContract (`0x00000000efe302beaa2b3e6e1b18d08d69a9012a`, chain 43114)
- UnnamedContract (`0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646`, chain 43114)
- UnnamedContract (`0x152b9d0fdc40c096757f570a51e494bd4b943e50`, chain 43114)
- UnnamedContract (`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2`, chain 43114)
- UnnamedContract (`0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be`, chain 43114)
- UnnamedContract (`0x2f643d728926c20269f0a04931dd7b4b6b650204`, chain 43114)
- UnnamedContract (`0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab`, chain 43114)
- UnnamedContract (`0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34`, chain 43114)
- UnnamedContract (`0x601486c8fdc3ad22745b01c920037d6c036a38b9`, chain 43114)
- UnnamedContract (`0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd`, chain 43114)
- UnnamedContract (`0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7`, chain 43114)
- UnnamedContract (`0xa25eaf2906fa1a3a13edac9b9657108af7b703e3`, chain 43114)
- UnnamedContract (`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`, chain 43114)
- UnnamedContract (`0xbc78d84ba0c46dfe32cf2895a19939c86b81a777`, chain 43114)
- UnnamedContract (`0xc891eb4cbdeff6e073e859e987815ed1505c2acd`, chain 43114)
- UnnamedContract (`0xd09acb80c1e8f2291862c4978a008791c9167003`, chain 43114)
- AdminUpgradeabilityProxy (`0x6c3ea9036406852006290770bedfcaba0e23a0e8`, chain 1)
- Aero (`0x940181a94a35a4569e4529a3cdfb74e38fd98631`, chain 8453)
- AethirToken (`0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b`, chain 1)
- BridgeRouterSpoke (`0x4701fd475d90365a64a1c58fa8932bfa83f4d48f`, chain 1)
- BridgeRouterSpoke (`0xfc828c500c90e63134b2b73537cc6cadff4ce695`, chain 1)
- BridgeRouterSpoke (`0x57d77fd37670e22188d1c92d7cec931bccf074a4`, chain 56)
- BridgeRouterSpoke (`0xdf34f43ba8045cab5c8a9a7589d5b5066c708af3`, chain 42161)
- CCIPDataAdapter (`0x0b8c6ec1495068abe2a25fb4e63b652d83467572`, chain 1)
- CCIPDataAdapter (`0xeb48a1ee43b91959a1686b70b7cd482c65de69c9`, chain 1)
- CCIPDataAdapter (`0x1b2a8d56967d00700dd5c94e27b1a116a1def8df`, chain 56)
- CCIPDataAdapter (`0xf14535db61b2993264e16daed208a7603e749cdc`, chain 42161)
- ERC1967Proxy (`0x2cd3cdb3bd68eea0d3be81da707bc0c8743d7335`, chain 43114)
- NativeSeiTokensERC20 (`0x5cf6826140c1c56ff49c808a1a75407cd1df9423`, chain 1329)
- OFTTokenERC20 (`0x160345fc359604fc6e70e3c5facbde5f7a9342d8`, chain 1329)
- SpokeCircleToken (`0x21c624a73ba4f4f23f8f5c6f3e67161a0be7ecc2`, chain 1)
- SpokeCircleToken (`0x5162acbe83d50fae95fb6a9e878a7e6734bf8cfa`, chain 1)
- SpokeCircleToken (`0x61c80ba6f7e284c87d0e9a238b2859b4c33a69dd`, chain 1)
- SpokeCircleToken (`0xb7ab35580a6f609b8e9f9cfa28b4a4e9464d7884`, chain 1)
- SpokeCircleToken (`0xd4f7fa03a4e8063825840c083abb42ce327a3a38`, chain 1)
- SpokeCircleToken (`0xf4c542518320f09943c35db6773b2f9feb2f847e`, chain 1)
- SpokeCircleToken (`0x0700b2cb26688c035bd5dbbda070be408c20779c`, chain 56)
- SpokeCircleToken (`0x7218bd1050d41a9ecfc517abdd294fb8116aee81`, chain 56)
- SpokeCircleToken (`0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf`, chain 56)
- SpokeCircleToken (`0x59a6e720f91a6709a088b2001dc71fc417fb5361`, chain 137)
- SpokeCircleToken (`0xa95cf7000376ed50c99832de9ccb5cac41bfcbf0`, chain 137)
- SpokeCircleToken (`0x23a96d92c80e8b926da40e574d615d9e806a87f6`, chain 42161)
- SpokeCircleToken (`0x2e6e4603536078bd7661338f06fb93cf6f9b7a98`, chain 42161)
- SpokeCommon (`0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`, chain 1)
- SpokeErc20Token (`0x12d4fedd9ce1b4d7db90b07366284ac1675a5a90`, chain 1)
- SpokeErc20Token (`0x3aea5e1f27935ed59424f35ea801420d804219e4`, chain 1)
- SpokeErc20Token (`0x63bcb60165e7ec30f03883fcb800aef304ee7eea`, chain 1)
- SpokeErc20Token (`0x7967b0fe720e676f41640855a203b409cecc8f92`, chain 1)
- SpokeErc20Token (`0x91461b9117b3644609eeb0889ecc89cab4644bb2`, chain 1)
- SpokeErc20Token (`0xb39c03297e87032ff69f4d42a6698e4c4a934449`, chain 1)
- SpokeErc20Token (`0xb3abd8cc35619b907f3f2e974fe3d43956aa7cda`, chain 1)
- SpokeErc20Token (`0xff785fb7bfbbe03ed09089f73151ae563b211723`, chain 1)
- SpokeErc20Token (`0x12db9758c4d9902334c523b94e436258eb54156f`, chain 56)
- SpokeErc20Token (`0x4db12f554623e4b0b3f5bacf1c8490d4493380a5`, chain 56)
- SpokeErc20Token (`0x1a40208e9506e08a6f62dbccf8de7387743179e9`, chain 137)
- SpokeErc20Token (`0x63ad90a703e95e39be7cb9e460c2b05870c982b8`, chain 137)
- SpokeErc20Token (`0xa526f90c0caab6a0e6085830e75b084cd3c84000`, chain 137)
- SpokeErc20Token (`0xab07afcf16fecdcc3d83db7513c7839aed626322`, chain 137)
- SpokeErc20Token (`0xcb66564d0cf3d28b26a1b6d4ecb830d6e216a75a`, chain 137)
- SpokeErc20Token (`0xf2ee689fd3f7a7358beda46f83e7968ad894abf0`, chain 137)
- SpokeErc20Token (`0x2d1c07209696456b7901949fdf81037016d541a5`, chain 42161)
- SpokeErc20Token (`0x624363570a6b6fee5531cca341b794b286af091c`, chain 42161)
- SpokeErc20Token (`0x74416b0121daadfeb2a9c2306827ccf80a6ee097`, chain 42161)
- SpokeErc20Token (`0xc0a3536e0b6799014a14664ba4370bbd5d0c7590`, chain 42161)
- SpokeErc20Token (`0xdf2da9288c4d0adf6c52ccbb5062b8c73fb19111`, chain 42161)
- SpokeErc20Token (`0xe69e068539ee627bab1ce878843a6c76484cbd2c`, chain 42161)
- SpokeGasToken (`0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883`, chain 1)
- SpokeGasToken (`0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0`, chain 56)
- SpokeRewardsV2Common (`0xc6c682b1d8c7b402c6ed8aba3a6238eb956c38cc`, chain 1)
- SpokeRewardsV2Common (`0x531490b7674ef239c9fec39d2cf3cc10645d14d4`, chain 56)
- SpokeRewardsV2Common (`0x6bc1439b7663820dacebc8e8b9a5ba29201ed352`, chain 42161)
- SpokeRewardsV2Erc20Token (`0x0259617be41ada4d97ded60daf848caa6db3f228`, chain 42161)
- StablecoinProxy (`0x8292bb45bf1ee4d140127049757c2e0ff06317ed`, chain 1)
- StakedAvUSDV2 (`0x06d47f3fb376649c3a9dafe069b3d6e35572219e`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 134/158 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/61 (1.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 134 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 250 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 134 of 384 unique; 250 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/136
- Verified + Unaudited implementations: 135
- Verified by bytecode match: 0
- Unverified implementations: 248
- Unique implementations: 384
- Raw deployments: 513
- Audits discovered: 21 (21 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/folksfinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 15 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 1.6% (Immunefi)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 1 | 0.7% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240294 | `0xb39c03297e87032ff69f4d42a6698e4c4a934449` | ✅ Audited |

### ⚠️ Verified + Unaudited (135)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12db9758c4d9902334c523b94e436258eb54156f` | ⚠️ Unaudited |
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeffdcb49c2d0ef813764b709ca3c6fe71f230e3e` | ⚠️ Unaudited |
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x89245a4bd8948713fd5f6da7c84cf6d2b76bed7b`; avalanche `0x99f183bb11ae1e88f24b9f44dbecee2158af1d0f` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xfac98fbe68a4153be8eed8de289a9ccdec8b1674`; ethereum `0xfee08d34a0323aadd2bd788e5258d26275c317b3` | ⚠️ Unaudited |
| Aero | token | project_anchor | own_supporting | 0 | base | unit-240418 | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | ⚠️ Unaudited |
| AethirToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240298 | `0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b` | ⚠️ Unaudited |
| AlwaysEligibleAddressOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0`; bsc `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0`; polygon `0x85aa8d7fc0b44fdc2773c3252617b8d60076293d`; sei `0x85aa8d7fc0b44fdc2773c3252617b8d60076293d`; base `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0`; arbitrum `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e` | ⚠️ Unaudited |
| AvantCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd2c2a98009d0cbed715882036e43d26c4289053` | ⚠️ Unaudited |
| AvantMintingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x58c32c34fd4ae48a7d45ec4b3c940b41d676cc04`; avalanche `0xcb43139e90f019624e3b76c56fb05394b162a49c` | ⚠️ Unaudited |
| AvantOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3524609c4d8111d45afc912bf1e1270cd5a1bd85` | ⚠️ Unaudited |
| AvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24de8771bc5ddb3362db529fc3358f2df3a0e346` | ⚠️ Unaudited |
| AvUSDMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1499cb3197427b78dc0e2d356a1e0e4149e0ed51` | ⚠️ Unaudited |
| BridgedYBTCB | operational_periphery | project_anchor | own_supporting | 1 | avalanche | unit-240429 | `0x2cd3cdb3bd68eea0d3be81da707bc0c8743d7335` | ⚠️ Unaudited |
| BridgeRouterSpoke | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240280 | `0x4701fd475d90365a64a1c58fa8932bfa83f4d48f` | ⚠️ Unaudited |
| BridgeRouterSpoke | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240315 | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ⚠️ Unaudited |
| BridgeRouterSpoke | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-240401 | `0x57d77fd37670e22188d1c92d7cec931bccf074a4` | ⚠️ Unaudited |
| BridgeRouterSpoke | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 9 deployments: bsc `0xcda75578328d0cb0e79db7797289c44fa02a77ad`; polygon `0x7218bd1050d41a9ecfc517abdd294fb8116aee81`; polygon `0x9105ceebaf43ef6b80df1b66beffd5f98a036c36`; polygon `0xdf34f43ba8045cab5c8a9a7589d5b5066c708af3`; polygon `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5`; sei `0x0700b2cb26688c035bd5dbbda070be408c20779c`; base `0x271141304e6ef06ada0c32d22aeb0baa52ee06df`; base `0xfc828c500c90e63134b2b73537cc6cadff4ce695`; arbitrum `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5` | ⚠️ Unaudited |
| BridgeRouterSpoke | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240371 | `0xdf34f43ba8045cab5c8a9a7589d5b5066c708af3` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240273 | `0x0b8c6ec1495068abe2a25fb4e63b652d83467572` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240311 | `0xeb48a1ee43b91959a1686b70b7cd482c65de69c9` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | project_anchor | own_supporting | 0 | bsc | unit-240395 | `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e`; polygon `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e`; polygon `0xf14535db61b2993264e16daed208a7603e749cdc`; sei `0xeb48a1ee43b91959a1686b70b7cd482c65de69c9`; base `0xd0652fa3c9e918c86c72ca9b85be65620f1d6e3f`; base `0xeb48a1ee43b91959a1686b70b7cd482c65de69c9`; arbitrum `0x7218bd1050d41a9ecfc517abdd294fb8116aee81` | ⚠️ Unaudited |
| CCIPDataAdapter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240373 | `0xf14535db61b2993264e16daed208a7603e749cdc` | ⚠️ Unaudited |
| CCIPTokenAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240283 | `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e` | ⚠️ Unaudited |
| CCIPTokenAdapter | unknown | project_anchor | own_supporting | 0 | bsc | unit-240405 | `0x802063a23e78d0f5d158feaac605028ee490b03b` | ⚠️ Unaudited |
| CCIPTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: polygon `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; sei `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e`; base `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e`; arbitrum `0x0700b2cb26688c035bd5dbbda070be408c20779c` | ⚠️ Unaudited |
| CreditMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ⚠️ Unaudited |
| DummyERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d` | ⚠️ Unaudited |
| DummyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f3bd7ca5746c5fac518f67d1be87805a2be82a` | ⚠️ Unaudited |
| DummyERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b821aa52a49f32eed535fca6eb5aa130085978` | ⚠️ Unaudited |
| DummyMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f` | ⚠️ Unaudited |
| EnumerableSet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x7c2fc16384361fbfdca555d8f781bf65f85cf28c` | ⚠️ Unaudited |
| ERC1155Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ERC1155Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46ca157573005281774be9be9a4187cce4ec1871`; ethereum `0x62d7e87677ac7e3bd02c198e3fabeffdbc5eb2a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4d4daca1fa6440ed4508161328368118bed4d29d`; avalanche `0xf99b9eb13d44a9bf980002ab571f178e9a68d1f2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x6ed8c61b174f605d4ce6c02c431cd9a7ca992952`; avalanche `0xf76e6d879336d30d973f5713007e3b21de0e67b4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xff7f8f301f7a706e3cfd3d2275f5dc0b9ee8009b` | ⚠️ Unaudited |
| ERC20Predicate | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf` | ⚠️ Unaudited |
| ERC20Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x608669d4914eec1e20408bc4c9efff27bb8cbde5`; ethereum `0xc760defb87e5194e62b282c2a76cbce4766d7345` | ⚠️ Unaudited |
| ERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9aaae29879c95ed732bababea4cae20a6d931dbb`; ethereum `0xe6fc6c7cb6d2c31b359a49a33ef08ab87f4de7ce`; ethereum `0xf3f08b74b63d0c008cea903ee59b346bf1d5e4cd` | ⚠️ Unaudited |
| ERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe6f45376f64e1f568bd1404c155e5ffd2f80f7ad` | ⚠️ Unaudited |
| EtherPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x499a865ac595e6167482d2bd5a224876bab85ab4`; ethereum `0xb6a508b418d49080ce4ae4f140e585a0f95c1326` | ⚠️ Unaudited |
| EtherPredicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8484ef722627bf18ca5ae6bcf031c23e6e922b30` | ⚠️ Unaudited |
| FeeLibV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: sei `0x711b5aafd4d0a5b7b863ca434a2678d086830d8e`; sei `0xcd4302d950e7e6606b6910cd232758b5ad423311`; sei `0xde48600aa18ae707f5d57e0faafec7c118abaeb2` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35f35ca5b132cadf2916bab57639128eac5bbcb5` | ⚠️ Unaudited |
| Hub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb39c03297e87032ff69f4d42a6698e4c4a934449` | ⚠️ Unaudited |
| LoanManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4c542518320f09943c35db6773b2f9feb2f847e` | ⚠️ Unaudited |
| MapleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x643c4e15d7d62ad0abec4a9bd4b001aa3ef52d66`; ethereum `0x6ed767ebcff51533e5181f7bf818f2b9bd767aec` | ⚠️ Unaudited |
| MapleTokenInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4a4fd3bd2e0eb400355aef5aa1752bc54b30fc` | ⚠️ Unaudited |
| Merkle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| MerklePatriciaProof | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c9499edd0cd2dcbc3c9dd5070baf54777ad8f2c` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3bf44ad2e36f39572175c72c1d0fa85933c6e0b6`; ethereum `0x9b02a268fbb66eb24ac9557daeba7aa6f04a89c2` | ⚠️ Unaudited |
| MintableERC721Predicate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x932532aa4c0174b8453839a6e44ee09cc615f2b7` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5` | ⚠️ Unaudited |
| MplUserActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x59371c31a30028be76d17d70141c4e25d5b6c183`; ethereum `0x75b7b44dcd28df0beda913ae2809ede986e8f461` | ⚠️ Unaudited |
| MultiSign | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 34 deployments: ethereum `0x1073d55dfb892ed86151015402db8b1cdb6ede78`; ethereum `0x2147bdf49a0b78b4b5058eb8306ab61026bbc5fd`; ethereum `0x2591c2afd3b0730c65b1b11e961bc82aa5461d8c`; ethereum `0x2b930c0a75d12e8c8655dd3cc5352eebd2bdcfe1`; ethereum `0x315bab03fdeaaa1930193ea7c0def8f28b0b6f25`; ethereum `0x3ecbf8d5f66c26a7498aa2090475d8e5c8a3d566`; ethereum `0x46f05709230c5a6c780d9bc1f629a991084eaa53`; ethereum `0x49218440314834dacc38051e39a5054b7958ea19`; ethereum `0x5c1e4c263d8cd3bde0e7dfa8fa9aa5583d18608b`; ethereum `0x66fc2d9e4897cf3886a340a4cabc23cca2ac6a0e`; ethereum `0x6e36e38910c0145cafaa96516083c160049fe3e6`; ethereum `0x7272b2a0d2e9ae6f381677887760e953bc9f2cec`; ethereum `0x7f9922bae30ccc28d32ae284ee69e47f94c6de44`; ethereum `0x83f7f1c6a1547afe2841943f428cf6ff28541fa9`; ethereum `0x860a80bd349dc4e46dc7345600eb627552ff898e`; ethereum `0x863c8754c298d3efec3863f2a46f1c71a355ce6c`; ethereum `0x866eb2f5c483fa525137f982c2be220aa096918c`; ethereum `0x97e9d0b0bcbe86e1e230b0ffd3a5f1f9b8428591`; ethereum `0x9ab2ce56b84e3bd5081fd49c041a98eb186f8165`; ethereum `0x9b8a83e875023c3fefd8354044e011d8bc847a34`; ethereum `0xa2eea193444b16fe2d18cfe977aceeea6dd9c367`; ethereum `0xb385d20dab411d20870f47d9ca1920533db21b20`; ethereum `0xb4f89c68e382b9639e536d70851e72964ab699c5`; ethereum `0xb60fa2ad48959c016fb7545d045aeb60086aca2a`; ethereum `0xb723d5ef303711d774fed6435ed6f5e82ed155ea`; ethereum `0xd4707b518a03d3a05dd2a33df5d1fb33690385d1`; ethereum `0xd48ede10152fcad67621fc5a6ae30b5b79fedd68`; ethereum `0xd9334dd55b25f928b702d143981a8173c7272761`; ethereum `0xe230900ece18f5ca83c8640b2eb73de74f9df5ae`; ethereum `0xf1dcb5394d27a41662847d512dcc903cda30056f`; ethereum `0xf26b8bb4e76528e7f061df4441965df80d72a71f`; ethereum `0xf7db20653fe8951e3c72f168310f4229d9945b3a`; ethereum `0xfbca8b5f5794456b59ad4177e5b212d0db600bb6`; ethereum `0xff72e13a7eafd2170fe8fdf1fe73c7349c209ecb` | ⚠️ Unaudited |
| NativeSeiTokensERC20 | token | project_anchor | own_supporting | 0 | sei | unit-240321 | `0x5cf6826140c1c56ff49c808a1a75407cd1df9423` | ⚠️ Unaudited |
| OFTTokenERC20 | token | project_anchor | own_supporting | 0 | sei | unit-240318 | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ⚠️ Unaudited |
| OFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x77c71633c34c3784ede189d74223122422492a0f` | ⚠️ Unaudited |
| PriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af`; avalanche `0x40b418cf176731089b2537d027a14c78a86f2166` | ⚠️ Unaudited |
| PriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x0ef7be66249217e7588ad9277806080472357923`; avalanche `0x7b4e8103bddd5bca79513fda22892bee53ba9777` | ⚠️ Unaudited |
| PYUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240427 | `0x6c3ea9036406852006290770bedfcaba0e23a0e8` | ⚠️ Unaudited |
| RecapitalizationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dfe0460f66fa06bfcbb3211e723556be6b3f69d` | ⚠️ Unaudited |
| RequestsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4c129d3aa27272211d151ca39a0a01e4c16fc887`; avalanche `0x5f0aef33a03bf0028fc46dddd4a86ee3d29e2972` | ⚠️ Unaudited |
| RewardLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x090194f1eedc134a680e3b488abb2d212dba8c01` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x227f65131a261548b057215bb1d5ab2997964c7d` | ⚠️ Unaudited |
| RLPReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbefe614a45a8300f2a4a00fb634b7137b6b1bc47` | ⚠️ Unaudited |
| RootChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0bff34272af650632236703a3d6d8e3c133421cb`; ethereum `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| RootChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43` | ⚠️ Unaudited |
| SafeMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xa7c10c510df4b1702e1f36451dd29d7c3edc760c`; avalanche `0xf7cf101e9c3d6035a9f832a0c02efbce56f7dfc7` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xaefa3ffe45781680d5ad99627b7eb9d79192b29a`; avalanche `0xdd1cdfa52e7d8474d434cd016fd346701db6b3b9` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240275 | `0x21c624a73ba4f4f23f8f5c6f3e67161a0be7ecc2` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240282 | `0x5162acbe83d50fae95fb6a9e878a7e6734bf8cfa` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240284 | `0x61c80ba6f7e284c87d0e9a238b2859b4c33a69dd` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240297 | `0xb7ab35580a6f609b8e9f9cfa28b4a4e9464d7884` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240305 | `0xd4f7fa03a4e8063825840c083abb42ce327a3a38` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240312 | `0xf4c542518320f09943c35db6773b2f9feb2f847e` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | bsc | unit-240392 | `0x0700b2cb26688c035bd5dbbda070be408c20779c` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | bsc | unit-240404 | `0x7218bd1050d41a9ecfc517abdd294fb8116aee81` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | bsc | unit-240407 | `0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | polygon | unit-240331 | `0x59a6e720f91a6709a088b2001dc71fc417fb5361` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | polygon | unit-240335 | `0xa95cf7000376ed50c99832de9ccb5cac41bfcbf0` | ⚠️ Unaudited |
| SpokeCircleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: polygon `0xfd2bc1b25af36ca681ff8648936aeb603a7377c7`; base `0x3ef10e94b4309415ebd8c1680ca3a5ee5df9acd7`; base `0xbf142db792f60a64c4cfa6becd88a038b33c62df`; base `0xe0c45ab4295e96ec1259d787e2ed22c16a3d0d8f`; base `0xf4c542518320f09943c35db6773b2f9feb2f847e`; arbitrum `0x531490b7674ef239c9fec39d2cf3cc10645d14d4`; arbitrum `0xf4c542518320f09943c35db6773b2f9feb2f847e` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-240352 | `0x23a96d92c80e8b926da40e574d615d9e806a87f6` | ⚠️ Unaudited |
| SpokeCircleToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-240354 | `0x2e6e4603536078bd7661338f06fb93cf6f9b7a98` | ⚠️ Unaudited |
| SpokeCommon | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240300 | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | ⚠️ Unaudited |
| SpokeCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: bsc `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; polygon `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0`; sei `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; base `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd`; arbitrum `0x57d77fd37670e22188d1c92d7cec931bccf074a4`; avalanche `0xc03094c4690f3844ea17ef5272bf6376e0cf2ac6` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240274 | `0x12d4fedd9ce1b4d7db90b07366284ac1675a5a90` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240279 | `0x3aea5e1f27935ed59424f35ea801420d804219e4` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240285 | `0x63bcb60165e7ec30f03883fcb800aef304ee7eea` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240287 | `0x7967b0fe720e676f41640855a203b409cecc8f92` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240291 | `0x91461b9117b3644609eeb0889ecc89cab4644bb2` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240295 | `0xb3abd8cc35619b907f3f2e974fe3d43956aa7cda` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-240316 | `0xff785fb7bfbbe03ed09089f73151ae563b211723` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | bsc | unit-240393 | `0x12db9758c4d9902334c523b94e436258eb54156f` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | bsc | unit-240399 | `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240327 | `0x1a40208e9506e08a6f62dbccf8de7387743179e9` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240332 | `0x63ad90a703e95e39be7cb9e460c2b05870c982b8` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240334 | `0xa526f90c0caab6a0e6085830e75b084cd3c84000` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240336 | `0xab07afcf16fecdcc3d83db7513c7839aed626322` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240339 | `0xcb66564d0cf3d28b26a1b6d4ecb830d6e216a75a` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | polygon | unit-240340 | `0xf2ee689fd3f7a7358beda46f83e7968ad894abf0` | ⚠️ Unaudited |
| SpokeErc20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 25 deployments: ethereum `0xac3a01437c33203c074abaefcf9920a6f0565714`; polygon `0x2e6e4603536078bd7661338f06fb93cf6f9b7a98`; polygon `0x531490b7674ef239c9fec39d2cf3cc10645d14d4`; polygon `0x57d77fd37670e22188d1c92d7cec931bccf074a4`; polygon `0x69f3126497b91a28a6abf3e1cb9a391f8c694cd1`; polygon `0xb1e2939b501b73f4cfef6a9fb0aa89a75f1774ee`; polygon `0xb39c03297e87032ff69f4d42a6698e4c4a934449`; polygon `0xc03094c4690f3844ea17ef5272bf6376e0cf2ac6`; polygon `0xc30107a8e782e98fe890f0375afa4185aeea3356`; polygon `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883`; polygon `0xf4c542518320f09943c35db6773b2f9feb2f847e`; sei `0x12db9758c4d9902334c523b94e436258eb54156f`; sei `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5`; sei `0x7218bd1050d41a9ecfc517abdd294fb8116aee81`; sei `0x802063a23e78d0f5d158feaac605028ee490b03b`; base `0x123f831a762a165107ee2e07416f4aa713da9bfd`; base `0x31a324d233ab3e73a6e1039d64907bbb2742606c`; base `0x50d5bb3cf57d2fb003b602a6fd10f90baa8567ea`; base `0x7ace2bc1c79954b56c65c7b326035c4468ac12bb`; base `0x7c7961e590b7e005540b72238b739ae513b605fb`; base `0x8d9aad601f384c596b9e2b9124a73b278db4c51c`; base `0x9009c929873f0e68dbc253b16ac4c3e4426e6e35`; arbitrum `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df`; arbitrum `0xcd68014c002184707eae7218516cb0762a44fddf`; avalanche `0xe53189d00d1b4f231a2a208a7967e0dcae8db073` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240353 | `0x2d1c07209696456b7901949fdf81037016d541a5` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240361 | `0x624363570a6b6fee5531cca341b794b286af091c` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240364 | `0x74416b0121daadfeb2a9c2306827ccf80a6ee097` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240369 | `0xc0a3536e0b6799014a14664ba4370bbd5d0c7590` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240370 | `0xdf2da9288c4d0adf6c52ccbb5062b8c73fb19111` | ⚠️ Unaudited |
| SpokeErc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240372 | `0xe69e068539ee627bab1ce878843a6c76484cbd2c` | ⚠️ Unaudited |
| SpokeGasToken | token | project_anchor | own_supporting | 0 | ethereum | unit-240309 | `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883` | ⚠️ Unaudited |
| SpokeGasToken | token | project_anchor | own_supporting | 0 | bsc | unit-240402 | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | ⚠️ Unaudited |
| SpokeGasToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 9 deployments: polygon `0x0700b2cb26688c035bd5dbbda070be408c20779c`; polygon `0x12db9758c4d9902334c523b94e436258eb54156f`; polygon `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df`; polygon `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd`; polygon `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5`; polygon `0x802063a23e78d0f5d158feaac605028ee490b03b`; sei `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0`; base `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883`; arbitrum `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240299 | `0xc6c682b1d8c7b402c6ed8aba3a6238eb956c38cc` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | project_anchor | own_supporting | 0 | bsc | unit-240400 | `0x531490b7674ef239c9fec39d2cf3cc10645d14d4` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 3 deployments: polygon `0x6bc1439b7663820dacebc8e8b9a5ba29201ed352`; sei `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df`; base `0xd97af2ff3a44427e4a412fed0cb8ebcbf09d4ae3` | ⚠️ Unaudited |
| SpokeRewardsV2Common | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240362 | `0x6bc1439b7663820dacebc8e8b9a5ba29201ed352` | ⚠️ Unaudited |
| SpokeRewardsV2Erc20Token | token | project_anchor | own_supporting | 0 | arbitrum | unit-240350 | `0x0259617be41ada4d97ded60daf848caa6db3f228` | ⚠️ Unaudited |
| SpokeRewardsV2Erc20Token | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240365 | `0x88f15e36308ed060d8543da8e2a5da0810efded2` | ⚠️ Unaudited |
| SpokeRewardsV2GasToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf` | ⚠️ Unaudited |
| StablecoinUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec` | ⚠️ Unaudited |
| StablecoinUpgradeableV2 | token | project_anchor | own_supporting | 1 | ethereum | unit-240428 | `0x8292bb45bf1ee4d140127049757c2e0ff06317ed` | ⚠️ Unaudited |
| StakedAvantCoinV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x649342c6bff544d82df1b2ba3c93e0c22cdeba84` | ⚠️ Unaudited |
| StakedAvUSDV2 | token | project_anchor | own_supporting | 0 | avalanche | unit-240376 | `0x06d47f3fb376649c3a9dafe069b3d6e35572219e` | ⚠️ Unaudited |
| SyrupDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x509712f368255e92410893ba2e488f40f7e986ea`; ethereum `0xfc0a49256e1da4ff7b4efa5dd1b6774f81edb1cf` | ⚠️ Unaudited |
| TokenMessaging | token | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ⚠️ Unaudited |
| Treasurer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x02daefc2e8aad089d094579499508398e3057966`; ethereum `0x2791bca1f2de4661ed88a30c99a7a9449aa84174`; ethereum `0x5adf17a97ef5db18ad4cfc4b3f05128b922e0a58`; ethereum `0x9d0f8222f787ec2a1ea97f84ea279008afec93ae`; ethereum `0xcf97bc85b670494a47f99452228e2b5e501ab6bd`; ethereum `0xd24289542c2e64f86a55742ea07dd8ac73937a22`; ethereum `0xdd9185db084f5c4fff3b4f70e7ba62123b812226` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9992487b2ee03b7a91241695a58e0ef3654643e` | ⚠️ Unaudited |
| VestingWallet | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16613524e02ad97edfef371bc883f2f5d6c480a5` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4` | ⚠️ Unaudited |
| xMPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5458a294a75c3f58984a6476df4bc300e0f78ab7`; ethereum `0xc7e8b36e0766d9b04c93de68a9d47dd11f260b45` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (248)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240272 | `0x00db8119b1c919747da91d5fc2b3950bd79ec0ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240276 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7463f8deb5767df59dbec2a20c9fa5bb92f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240288 | `0x7a56e1c57c7475ccf742a1832b028f0456652f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad369f1fc8ac0cba5a4ddb8381cd7d210b63769` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240289 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84267ace6a5f558a19803693554e0d18c95c8df7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240290 | `0x911d86c72155c33993d594b0ec7e6206b4c803da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240292 | `0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9718a210dd1fc4dfa6d756e55ea89617da5efe77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240293 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a26188e4d7521960c2ddd31947afa9b2fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240301 | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240302 | `0xcda75578328d0cb0e79db7797289c44fa02a77ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240304 | `0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38cbf2a11c0988f535d3a09653affaf462c5b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd65556e97fea8e392be86a79b1c885d3737202fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240307 | `0xd97af2ff3a44427e4a412fed0cb8ebcbf09d4ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab5b2b44cbec9979b6f8df92ffc479ba2d5f821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240308 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240314 | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a1c5c010c4028123fcbe75391f588b74e69b83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240396 | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240397 | `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240398 | `0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69f3126497b91a28a6abf3e1cb9a391f8c694cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240403 | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab07afcf16fecdcc3d83db7513c7839aed626322` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240408 | `0xec59de82fff1959e92b91dab975e4564fc3447cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240326 | `0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11e73283ce361a47a9e5cc616cdc24cefd53bee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a8fed07c8b8e7a8050d75db392dba0af20eb9c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240328 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2110de6c423689c9a0360cc90bd43224bd8b24b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240329 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240330 | `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240333 | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240337 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240338 | `0xc271a17db5ce6f53745a3f466077ec816bc20a9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240341 | `0xfa68fb4628dff1028cfec22b4162fccd0d45efb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240342 | `0x1b68626dca36c7fe922fd2d55e4f631d962de19c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240343 | `0x8498312a6b3cbd158bf0c93abdcf29e6e4f55081` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240344 | `0x9105ceebaf43ef6b80df1b66beffd5f98a036c36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240345 | `0xa3227c5969757783154c60bf0bc1944180ed81b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240346 | `0xb1e2939b501b73f4cfef6a9fb0aa89a75f1774ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240347 | `0xc30107a8e782e98fe890f0375afa4185aeea3356` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240348 | `0xe7cd86e13ac4309349f30b3435a9d337750fc82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240349 | `0xee8c0e9f1bffb4eb878d8f15f368a02a35481242` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-240317 | `0x0555e30da8f98308edb960aa94c0db47230d2b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x531490b7674ef239c9fec39d2cf3cc10645d14d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x57d77fd37670e22188d1c92d7cec931bccf074a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x8e8539e4ccd69123c623a106773f2b0cbbc58746` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-240324 | `0x9151434b16b9763660705744891fa906f660ecc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9c2dc7377717603eb92b2655c5f2e7997a4945bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf4c542518320f09943c35db6773b2f9feb2f847e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240409 | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240412 | `0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240413 | `0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240415 | `0x3b86ad95859b6ab773f55f8d94b4b9d443ee931f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48ba8ad049604363b0bb4189024f3371ff550e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ff936d61ac986ea4fb6dca6582e35c55c29fbc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240417 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91461b9117b3644609eeb0889ecc89cab4644bb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240419 | `0x98d0baa52b2d063e780de12f615f963fe8537553` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240420 | `0x9ded28d9ec69f97efd718ce768dc39d78fd014f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240423 | `0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240425 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce9afcdee65ecc8887d527f57954ba3f41ffee67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240351 | `0x048e47eddef06c7f672d6b16d978ad38ec41a9ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240355 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240356 | `0x3106e2e148525b3db36795b04691d444c24972fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240357 | `0x35751007a407ca6feffe80b3cb397736d2cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240358 | `0x3647c54c4c2c65bc7a2d63c0da2809b399dbbdc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240359 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240360 | `0x5979d7b546e38e414f7e9822514be443a4800529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240363 | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7033105d1a527d342be618ab1f222bb310c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240366 | `0x912ce59144191c1204e64559fe8253a0e49e6548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240367 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240368 | `0xb359155378ff5e2837f12ed0bee5168123c88acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6df8914c084242a19a4c7fb15368be244da3c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240374 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240375 | `0x00000000efe302beaa2b3e6e1b18d08d69a9012a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01248204b116d4802242d02bbf215972f9156153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0259617be41ada4d97ded60daf848caa6db3f228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043e63a7c886074720b411e3785de183d1262ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04a3d40399b425d8f8bbe192324b8af35b5b34aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04c8b9d8af87a6d670b646125b2d99740d8eba5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0700b2cb26688c035bd5dbbda070be408c20779c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07c911b5a1657126b14c25e697e3d00f3a134a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0aee2b84bd3e280cfcc9325917bfa0bb20f3cdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b09e1ffd28040654021a85a49284597f3d0e41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b4e69c4890a88aca90e7e71db76619c3aacd79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e563b9fe6d9ef642bdba20d53ac5137eb0d78dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1072ec93cb932acfc1b74ac115cb1b0f2c5c1156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10a4481f79aac209ac6c2959b785f2e303912dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1177a3c2cccdb9c50d52fc2d30a13b2c3c40bcf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11f82b5ea7408ff257f6031e6a3e29203557a1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13a21bc65844cd530098ab15431c57078ea90737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x145a0e384793bcd5b481af01f8a046141265bdd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240377 | `0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240378 | `0x152b9d0fdc40c096757f570a51e494bd4b943e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18031b374a571f9e060de41de58abb5957cd5258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b5a1dce059e6069ed33c3656826ad04be536465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c51aa1516e1156d98075f2f64e259906051aba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c7ec7198f297119d4e9f359d91127c8b2f9a9d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240379 | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x213299ac40ce76117c2c4b13945d9d935686bb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23a96d92c80e8b926da40e574d615d9e806a87f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24db057615203c0f27f0968452a0f2327e6bc86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27389a07d02c3cd8c3d069fcb2ee6aaa160788a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x279b3e185f64e99141d4ce363657a5f3b5b32fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa8fee178a79182c4b7c61efeb4227cb8843915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240380 | `0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b7995fd223dcf3a660cc5a514349e3fa7b16168` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240381 | `0x2f643d728926c20269f0a04931dd7b4b6b650204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x307bcec89624660ed06c97033edb7ef49ab0eb2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3291fcf6ca62939fc432debe6cbb2a838f755d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x331a1938f94af7bb41d57691119aee416495202a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3445055f633fef5a64f852aacd6da76143aca109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x347d342f12fa57b6231c82867f964edfa4ed1431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34f1ba5808eb5bf60c9b1c343d86e410466f4860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x391201cec4f80e69c87dee364d599c1fcae3c363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x398715a6011391b2b7fd1ff66bb26c126e5d4aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b1c2ec8b7cde241e0890c9742c14dd7867aa812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e85a56c2202ec067eb4ac090db3e8149da46d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f63a6401e6354a486e6a38127409fd16e222b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f87f3b301f031ba59c479edf067621dcc72ddca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4161d7090dffb96e99dc30716ccc1a6d7a641fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42bb92684e72707030f59c48fbe5a222a0d8b387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44e0d0809af8ee37bfb1a4e75d5ef5b96f6346a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45060a047b64423179e52a9b082e19444711a084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x481cf0c02bf17a33753ce32f1931ed9990ffb40e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240382 | `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e6dd5e35638008cdb1e9004f3e952bcdd920e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fb4c3a33cbe855c5d87078c1bbbe5f371417fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51958ed7b96f57142ce63bb223bbd9ce23da7125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x531490b7674ef239c9fec39d2cf3cc10645d14d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5431e7f480c4985e9c3faacd3bd1fc7143eadefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5562d84f9891288fc72aab1d857797c7275fcedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56046fcadbcb62ed4b5643af09724313624e88e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57d77fd37670e22188d1c92d7cec931bccf074a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57d849b4d40536f587f2a9048dc8fe2a1d00da88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59023efdb22b9d8b2c7aed842ac1fd2f6110e5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240383 | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e5a2007a8d613c4c98f425097166095c875e6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f8a1d27a269b9bd718364d9517677f4fd77e948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fe123b659fc5242f46884c37550f05ef08c816a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240384 | `0x601486c8fdc3ad22745b01c920037d6c036a38b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60f2682ab38e3c9a51b07fbd69f42ad2cfe731db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63efda4bf91ba13d678c58af47304e6180dd46df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x666aea026bc606220ec6eb83a83d81881fa48e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66dd1c6beadffca88365bade7928323672323d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a3560ece4fe09551d458ddd994b6b000f9883ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240385 | `0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f6f5645b86b1fd3c4c015822a0e672132d4e2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7033105d1a527d342be618ab1f222bb310c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7054254933279d93d97309745afbff9310cdb570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7178bf2a8a50153549e0d95a4c6cb816448840f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7218bd1050d41a9ecfc517abdd294fb8116aee81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72fa22fdd2138ed5b6c5fc578ee633ad9819cf99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x750db228b3c2156c2f6f2f27ac87eeb55d3ba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x78b4e5cda33c898b546db7925162879e7bd2a9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7902db65ad8c43c6e41d3b358b84a048debe55b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x795ccf6f7601edb41e4b3123c778c56f0f19389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c532a6209350cf27efc3d06e82e35acfd362c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c5fbb6c54a11f0256551bc4ead43e77be8ee2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cd4afd7f4db51a0bf06bf4630752a5b28e0b6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fd21802709f2f180ee1982f56e58533f3031aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x802063a23e78d0f5d158feaac605028ee490b03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84c420d5e077cf0ed8a20c44d803c380172ed5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88ae56886233c706409c74c3d4ea9a9ac1d65ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88f15e36308ed060d8543da8e2a5da0810efded2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x897ce250199d102ea103aaf3a6e7906cde757560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89970d3662614a5a4c9857fcc9d9c3fa03824fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a8b9386dfd63931284545db62374b48180f0111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c3b4e60a4f6a7b25c9426bb07b272a4aa62f054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c893de1f682813eae6c6dbaa2bcad7e795bc015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x932406a77b3cfd3ef845c7f2999bae933ae03739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93fd598238377bdcad1712b7feda421a02527d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94307e63ef02cf9b39894553f14b21378ef20adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x953345d960f4283b90f5ceecad9cfecd961411e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240386 | `0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97592dc676d6051bf813f663b717cfd6b177eeff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9936812835476504d6cf495f4f0c718ec19b3aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a102080970043b96773c15e6520d182565c68ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e4456f0d03a263653e01edfc8c1447a8c3e1a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ed81f0b5b0e9b6de00f374ffc7f270902576ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f0c0adec9fd4ef946ace1e2b4f32e49ae45c8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f59642c6733397df5c2696d3ac9ceb431b1b573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1e1024c49c77297ba6367f624cfbefc80e697c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240387 | `0xa25eaf2906fa1a3a13edac9b9657108af7b703e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa544829795a88520ffea2626734eccd09357651a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xada5be2a259096fd11d00c2b5c1181843ed008dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb14f2576be100cfe3b274233091a841f1e040604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3782d4bc5dae948db91b611941a0ef537c8b252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5327c35e083248e3a0f79122fab3b6018e5584a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6df8914c084242a19a4c7fb15368be244da3c75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240388 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240389 | `0xbc78d84ba0c46dfe32cf2895a19939c86b81a777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0108ccbc2701eab00c604afdec09dd3df4456ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc02ada9fdd113c2e76a86121fb1e69540e02b29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2fd40d9ec4ae7e71068652209eb75258809e131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7ddb440666c144c2f27a3a5156d636bacfc769c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240390 | `0xc891eb4cbdeff6e073e859e987815ed1505c2acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc96820695217c7dd8f696f8892de76f7a48432cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd68014c002184707eae7218516cb0762a44fddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcda75578328d0cb0e79db7797289c44fa02a77ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240391 | `0xd09acb80c1e8f2291862c4978a008791c9167003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4f87eb6cc8795e727f7dbc1e2c6c3452ad0010c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd77b920a9c05b3e768feae0bcb5839cd224328fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ff49751daf42bf7afc4ff5c958d4bea48358d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9d50d4f73f61a306b47e5bdc825e98cd11139dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc887acfe154bf0048ae15cda3693ab2c237431a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd9efbf83572f5387381ad3a04b1318221d545a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe396e1246b7341eb6eda05dcfef9eab9e661f80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe47285cc79a8de62dfaed52abe919b87973294c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe69e068539ee627bab1ce878843a6c76484cbd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6b7713854620076b5716e2743262d315bf8609d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7897052fac4bff9eb3abc073cbc1e17fce5709c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb48a1ee43b91959a1686b70b7cd482c65de69c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec0ca5d2f362a826fa8f53c89a5ce1c17cd604fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef7a6ebede2ad558db8c36df65365b209e5d57dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf51a72b92cb9c16376da04f48ef071c966b9c50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf727ec8d6e565328f2cf0ff8ac4e7c9e7f8d24b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf0bf117ff6fdb98af9bfcedf303af64a09ff58` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Coinspect - Smart Contract Audit - Folks Finance v220314.pdf](https://www.coinspect.com/doc/Coinspect%20-%20Smart%20Contract%20Audit%20-%20Folks%20Finance%20v220314.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Folks-Finance-Design-Review.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Folks-Finance-Design-Review.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [OtterSec - Audit of XChain Lending - May 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/OtterSec%20-%20Audit%20of%20XChain%20Lending%20-%20May%202024.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20of%20xChain%20Liquid%20Governance%20-%20June%202023.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [audits (GitHub directory)](https://github.com/Folks-Finance/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [immunefi.com/bug-bounty/folksfinance/information](https://immunefi.com/bug-bounty/folksfinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Adevar - Algorand Wormhole NTT - October 2025.pdf](https://github.com/Folks-Finance/audits/blob/main/Adevar%20-%20Algorand%20Wormhole%20NTT%20-%20October%202025.pdf) | Adevar | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Certik - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Certik%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | CertiK | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Coinspect - Audit of Liquid Staking - August 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Audit%20of%20Liquid%20Staking%20-%20August%202024.pdf) | Coinspect | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Coinspect - Smart Contract Audit - March 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Smart%20Contract%20Audit%20-%20March%202022.pdf) | Coinspect | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Runtime Verification - Design Review.pdf](https://github.com/Folks-Finance/audits/blob/main/Runtime%20Verification%20-%20Design%20Review.pdf) | Runtime Verification | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Runtime Verification - Smart Contract Audit - February 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Runtime%20Verification%20-%20Smart%20Contract%20Audit%20-%20February%202022.pdf) | Runtime Verification | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Trail of Bits - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Trail%20of%20Bits%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Trail of Bits | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V2%20-%20June%202022.pdf) | Vantage Point | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20March%202023.pdf) | Vantage Point | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20September%202022.pdf) | Vantage Point | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Token%20Pair%20and%20Oracle%20Adapter%20-%20May%202022.pdf) | Vantage Point | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Vantage Point - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Vantage Point | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Vantage Point - Smart Contract Audit - February 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20February%202022.pdf) | Vantage Point | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md](https://github.com/immunefi-team/Bounty_Boosts/blob/main/Mitigation%20Audit%20%7C%20Folks%20Finance/Mitigation%20Audit%20_%20Folks%20Finance%2034929%20-%20%5BSmart%20Contract%20-%20Critical%5D%20Accounting%20Discrepancy%20in%20Fee%20Retention%20Leads%20to%20Protocol%20Insolvency%20and%20Fund%20Freezing.md) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md](https://github.com/immunefi-team/Bounty_Boosts/blob/main/Mitigation%20Audit%20%7C%20Folks%20Finance/Mitigation%20Audit%20_%20Folks%20Finance%2035089%20-%20%5BSmart%20Contract%20-%20Insight%5D%20Malicious%20actor%20can%20control%20interest%20rates%20by%20DoSing%20borrowings%20and%20manipulate%20utilization%20ratio%20at%20his%20will.md) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13144] Coinspect - Smart Contract Audit - Folks Finance v220314.pdf — no match: Extracted contract names from the 'Assessment and Scope' section which lists all files with their SHA256 hashes. The audit date is March 2022, so using last day of month.
- [13145] Folks-Finance-Design-Review.pdf — no match: The audit is a design review of the Folks.Finance protocol based on a whitepaper, not specific smart contracts. No contract names or file paths were provided in the scope.
- [13146] OtterSec - Audit of XChain Lending - May 2024.pdf — no match: Scope section describes the XChain-Contracts program but does not list individual contract files. Contract names extracted from findings that reference specific files.
- [13149] Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf — no match: Extracted contracts from scope section and affected files. inner_txn.py is a dependency but referenced in findings.
- [13150] audits (GitHub directory) — no match: The provided text is a GitHub repository listing of audit report PDFs, not the content of any specific audit report. No contract names or audit dates can be extracted.
- [13151] immunefi.com/bug-bounty/folksfinance/information — no match: The document is a bug bounty program page, not an audit report. No contracts in scope are listed; only general program information and reward details are provided.
- [13152] Adevar - Algorand Wormhole NTT - October 2025.pdf — no match: Scope section lists 'ntt_contracts/' as the directory; all four contracts are explicitly referenced in findings and are part of the repository.
- [13153] Certik - Smart Contract Audit - December 2022.pdf — no match: Extracted 7 files from audit scope table; also found __init__.py in common/helpers but it's empty, so not included. Date from cover page.
- [13154] Coinspect - Audit of Liquid Staking - August 2024.pdf — no match: Scope section explicitly lists three files. Audit date is August 2024, mapped to last day of month.
- [13155] Coinspect - Smart Contract Audit - March 2022.pdf — no match: All files listed in the Assessment and Scope section with sha256 hashes are considered in scope. The audit date is March 2022, so using last day of month.
- [13156] Runtime Verification - Design Review.pdf — no match: The audit is a design review of the Folks.Finance protocol based on a whitepaper, not specific smart contracts. No contract names or file paths were provided in the scope.
- [13157] Runtime Verification - Smart Contract Audit - February 2022.pdf — no match: Scope section lists four smart contracts in PyTeal: Dispenser, TokenPair, OracleAdapter, Oracle. Audit date is February 1, 2022 from the report header.
- [13158] Trail of Bits - Smart Contract Audit - December 2022.pdf — no match: Extracted contract names from Project Targets section and findings. Audit date from cover page.
- [13159] Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf — no match: Extracted contract names from scope section file paths. The audit report date is 2022-06-27 from the cover page.
- [13160] Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf — no match: Scope section lists three Python files: distributor.py, distributor_state.py, distributor_escrow.py. Audit date from cover page: 30 Mar 2023.
- [13161] Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf — no match: Scope section lists 'Application Name: Folks Finance Liquid Governance V3' and items include 'assets/algo_governance_distributor_approval_program.py'. Also 'assets/algo_governance/state.py' is listed but not a contract; it's a state file. Only the distributor approval program is a contract. The audit date is 28th September 2022 from the cover page and version history.
- [13162] Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf — no match: Scope section lists three PyTeal files. Audit date is 13th May 2022 (final version).
- [13163] Vantage Point - Smart Contract Audit - December 2022.pdf — no match: Extracted 17 contract names from scope table and findings. Audit date from cover page: 8Dec2022.
- [13164] Vantage Point - Smart Contract Audit - February 2022.pdf — no match: Extracted 16 contract/module names from the scope section (page 6) and file paths. Audit date from version history final version date.
- [16527] Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md — matched: No reason recorded
- [16528] Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md — no match: The report is a single finding submission, not a full audit report. No explicit scope section or audit date found. Only two contracts are referenced.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | staking_clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | rewards_aggregator_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | liquidity_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | token_pair_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | oracle_adapter_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | oracle_adapter/shared | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | oracle_adapter/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | dispenser_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | oracle_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | common/math | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | common/formulae | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | common/inner_txn | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | common/transactions | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | staking_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | dispenser/shared | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | dispenser/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance/transactions | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance_contract_account | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | algo_governance_clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - Folks Finance v220314.pdf | staking/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| OtterSec - Audit of XChain Lending - May 2024.pdf | BridgeRouter | unmatched — not counted | — | mentioned in findings OS-FFX-SUG-00 and OS-FFX-SUG-01 | no |
| OtterSec - Audit of XChain Lending - May 2024.pdf | SpokeBridgeRouter | unmatched — not counted | — | mentioned in finding OS-FFX-SUG-01 | no |
| OtterSec - Audit of XChain Lending - May 2024.pdf | LiquidationLogic | unmatched — not counted | — | mentioned in finding OS-FFX-ADV-01 | no |
| Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf | governance | unmatched — not counted | — | listed in scope and affected files | no |
| Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf | governance_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf | inner_txn | unmatched — not counted | — | referenced in findings as imported module | no |
| Adevar - Algorand Wormhole NTT - October 2025.pdf | TransceiverManager | unmatched — not counted | — | Listed in scope and mentioned in findings M01, L02, E01 | no |
| Adevar - Algorand Wormhole NTT - October 2025.pdf | NttManager | unmatched — not counted | — | Listed in scope and mentioned in findings L01, E06, E07 | no |
| Adevar - Algorand Wormhole NTT - October 2025.pdf | WormholeTransceiver | unmatched — not counted | — | Listed in scope and mentioned in findings E02, E04, E05 | no |
| Adevar - Algorand Wormhole NTT - October 2025.pdf | MessageHandler | unmatched — not counted | — | Listed in scope and mentioned in finding E03 | no |
| Certik - Smart Contract Audit - December 2022.pdf | f_staking | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | __init__ | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | f_staking_state | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | array | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | inner_txn | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | checks | unmatched — not counted | — | listed in audit scope table | no |
| Certik - Smart Contract Audit - December 2022.pdf | math_lib | unmatched — not counted | — | listed in audit scope table | no |
| Coinspect - Audit of Liquid Staking - August 2024.pdf | consensus | unmatched — not counted | — | listed in scope section | no |
| Coinspect - Audit of Liquid Staking - August 2024.pdf | consensus_state | unmatched — not counted | — | listed in scope section | no |
| Coinspect - Audit of Liquid Staking - August 2024.pdf | clear_program | unmatched — not counted | — | listed in scope section | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | staking_clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | rewards_aggregator_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | liquidity_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | token_pair_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | oracle_adapter_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | oracle_adapter/shared | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | oracle_adapter/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | dispenser_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | oracle_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | common/math | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | common/formulae | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | common/inner_txn | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | common/transactions | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | staking_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | dispenser/shared | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | dispenser/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance/transactions | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance_approval_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance_contract_account | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | algo_governance_clear_program | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Coinspect - Smart Contract Audit - March 2022.pdf | staking/state | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Runtime Verification - Smart Contract Audit - February 2022.pdf | Dispenser | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Smart Contract Audit - February 2022.pdf | TokenPair | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Smart Contract Audit - February 2022.pdf | OracleAdapter | unmatched — not counted | — | listed in scope section | no |
| Runtime Verification - Smart Contract Audit - February 2022.pdf | Oracle | unmatched — not counted | — | listed in scope section | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | pool_manager | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | pool | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | loan | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | lp_token_oracle | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | oracle_adapter | unmatched — not counted | — | listed in Project Targets and referenced in findings | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | deposits | unmatched — not counted | — | referenced in Code Quality Recommendations | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | formulae | unmatched — not counted | — | referenced in finding TOB-FOLKS-6 | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | loan_state | unmatched — not counted | — | referenced in finding TOB-FOLKS-7 | no |
| Trail of Bits - Smart Contract Audit - December 2022.pdf | math_lib | unmatched — not counted | — | referenced in Code Quality Recommendations | no |
| Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf | AlgoGovernanceDispenser | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf | AlgoGovernanceDistributor | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf | AlgoGovernanceDistributorClearProgram | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Revision Audit of Liquid Governance V2 - June 2022.pdf | ClearProgram6 | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf | distributor | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf | distributor_state | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf | distributor_escrow | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf | Folks Finance Liquid Governance V3 | unmatched — not counted | — | Listed in scope section as 'Application Name' | no |
| Vantage Point - Revision Audit of Liquid Governance V3 - September 2022.pdf | algo_governance_distributor_approval_program | unmatched — not counted | — | Listed in scope items and affected file in findings | no |
| Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf | oracle_adapter_2_approval_program | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf | oracle_adapter_2_clear_program | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Revision Audit of Token Pair and Oracle Adapter - May 2022.pdf | token_pair_approval_program | unmatched — not counted | — | listed in scope table | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | loan | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | loan_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool_inner_txns | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | lp_token_oracle | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | lp_token_oracle_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | oracle_adapter | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | oracle_adapter_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | refresh_prices_inner_txn | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | deposits | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | deposits_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool_manager | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool_manager_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | pool_state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | withdraw_inner_txn | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | formulae | unmatched — not counted | — | mentioned in findings as affected file | no |
| Vantage Point - Smart Contract Audit - December 2022.pdf | checks | unmatched — not counted | — | mentioned in findings as introduced subroutine | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | token_pair_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | staking_clear_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | staking_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | oracle_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | oracle_adapter_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | liquidity_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | dispenser_approval_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | clear_program | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | oracle_adapter/shared | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | oracle_adapter/state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | dispenser/shared | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | dispenser/state | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | common/formulae | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | common/inner_txn | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | common/math | unmatched — not counted | — | listed in scope | no |
| Vantage Point - Smart Contract Audit - February 2022.pdf | common/transactions | unmatched — not counted | — | listed in scope | no |
| Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md | Hub | own contract | SpokeErc20Token (selected) `0xb39c03297e87032ff69f4d42a6698e4c4a934449` — deployed 2024-09-16 01:19:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md | HubPool | unmatched — not counted | — | — | no |
| Mitigation Audit _ Folks Finance 34929 - [Smart Contract - Critical] Accounting Discrepancy in Fee Retention Leads to Protocol Insolvency and Fund Freezing.md | HubPoolLogic | unmatched — not counted | — | — | no |
| Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md | HubPoolLogic | unmatched — not counted | — | mentioned in vulnerability details and referenced file path | no |
| Mitigation Audit _ Folks Finance 35089 - [Smart Contract - Insight] Malicious actor can control interest rates by DoSing borrowings and manipulate utilization ratio at his will.md | HubPool | unmatched — not counted | — | mentioned in test fixture and contract interactions | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | Aero | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b` | AethirToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x2cd3cdb3bd68eea0d3be81da707bc0c8743d7335` | BridgedYBTCB | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4701fd475d90365a64a1c58fa8932bfa83f4d48f` | BridgeRouterSpoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | BridgeRouterSpoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x57d77fd37670e22188d1c92d7cec931bccf074a4` | BridgeRouterSpoke | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdf34f43ba8045cab5c8a9a7589d5b5066c708af3` | BridgeRouterSpoke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b8c6ec1495068abe2a25fb4e63b652d83467572` | CCIPDataAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb48a1ee43b91959a1686b70b7cd482c65de69c9` | CCIPDataAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df` | CCIPDataAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf14535db61b2993264e16daed208a7603e749cdc` | CCIPDataAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e` | CCIPTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x802063a23e78d0f5d158feaac605028ee490b03b` | CCIPTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x5cf6826140c1c56ff49c808a1a75407cd1df9423` | NativeSeiTokensERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | OFTTokenERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c3ea9036406852006290770bedfcaba0e23a0e8` | PYUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x21c624a73ba4f4f23f8f5c6f3e67161a0be7ecc2` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5162acbe83d50fae95fb6a9e878a7e6734bf8cfa` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x61c80ba6f7e284c87d0e9a238b2859b4c33a69dd` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb7ab35580a6f609b8e9f9cfa28b4a4e9464d7884` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd4f7fa03a4e8063825840c083abb42ce327a3a38` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4c542518320f09943c35db6773b2f9feb2f847e` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0700b2cb26688c035bd5dbbda070be408c20779c` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7218bd1050d41a9ecfc517abdd294fb8116aee81` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcd7ee494fa616fdbe38aa0a9355e20b7215108bf` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x59a6e720f91a6709a088b2001dc71fc417fb5361` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa95cf7000376ed50c99832de9ccb5cac41bfcbf0` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x23a96d92c80e8b926da40e574d615d9e806a87f6` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2e6e4603536078bd7661338f06fb93cf6f9b7a98` | SpokeCircleToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | SpokeCommon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12d4fedd9ce1b4d7db90b07366284ac1675a5a90` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3aea5e1f27935ed59424f35ea801420d804219e4` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63bcb60165e7ec30f03883fcb800aef304ee7eea` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7967b0fe720e676f41640855a203b409cecc8f92` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x91461b9117b3644609eeb0889ecc89cab4644bb2` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb3abd8cc35619b907f3f2e974fe3d43956aa7cda` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xff785fb7bfbbe03ed09089f73151ae563b211723` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x12db9758c4d9902334c523b94e436258eb54156f` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1a40208e9506e08a6f62dbccf8de7387743179e9` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x63ad90a703e95e39be7cb9e460c2b05870c982b8` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa526f90c0caab6a0e6085830e75b084cd3c84000` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xab07afcf16fecdcc3d83db7513c7839aed626322` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcb66564d0cf3d28b26a1b6d4ecb830d6e216a75a` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf2ee689fd3f7a7358beda46f83e7968ad894abf0` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2d1c07209696456b7901949fdf81037016d541a5` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x624363570a6b6fee5531cca341b794b286af091c` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x74416b0121daadfeb2a9c2306827ccf80a6ee097` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc0a3536e0b6799014a14664ba4370bbd5d0c7590` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdf2da9288c4d0adf6c52ccbb5062b8c73fb19111` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe69e068539ee627bab1ce878843a6c76484cbd2c` | SpokeErc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883` | SpokeGasToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | SpokeGasToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc6c682b1d8c7b402c6ed8aba3a6238eb956c38cc` | SpokeRewardsV2Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x531490b7674ef239c9fec39d2cf3cc10645d14d4` | SpokeRewardsV2Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6bc1439b7663820dacebc8e8b9a5ba29201ed352` | SpokeRewardsV2Common | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0259617be41ada4d97ded60daf848caa6db3f228` | SpokeRewardsV2Erc20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x88f15e36308ed060d8543da8e2a5da0810efded2` | SpokeRewardsV2Erc20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8292bb45bf1ee4d140127049757c2e0ff06317ed` | StablecoinUpgradeableV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x06d47f3fb376649c3a9dafe069b3d6e35572219e` | StakedAvUSDV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 132 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 250 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 128 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=5, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [13144] Coinspect - Smart Contract Audit - Folks Finance v220314.pdf
- [13145] Folks-Finance-Design-Review.pdf
- [13146] OtterSec - Audit of XChain Lending - May 2024.pdf
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
