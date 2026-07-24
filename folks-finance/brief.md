# Agentic Audit Brief: Folks Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 21 (1 matched; 20 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Folks Finance (`folks-finance`)
- Website: [https://folks.finance/](https://folks.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, monad, polygon, sei
- Contract surface: 1087 unique implementations (1216 raw deployments)
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
- Outside the address book: 953 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Confirmed-live implementations: 134 of 1087 unique; 953 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/136
- Verified + Unaudited implementations: 135
- Verified by bytecode match: 0
- Unverified implementations: 951
- Unique implementations: 1087
- Raw deployments: 1216
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

### ❓ Unverified (951)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240272 | `0x00db8119b1c919747da91d5fc2b3950bd79ec0ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025ca436f644b61ded1bc9fcdb1f0b560b27bad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03a993369b5b6290d412b63d29f3bc2dc13f5e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0618dbdb3be798346e6d9c08c3c84658f94ad09f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x077c2122e96c7457d11fb9523f5745acb49fdc1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cd2e45386da2ff8f2db716e733b6f48511a118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08341befe6428568cdf798d19223821697dcec15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b2ef910ad0b34bf575eb09d37fd7da6c148ca4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bc122c224b875ca79250a54a08a6e5df8def817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11721f9e0152b2abda99b8b86e77d7820ef4f864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b2f86c159199b6cba593438ae89078dfb83698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150d67ad07700918fc77d7fd2e78967693718ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a72be10f6e6cf0ca100a407352e50d0ed653dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1af329d2c4ceaf45e1d8062c696b09ffaddb933a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6238e95bbcabee58997c99badd4154ad68ba92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21363611b30e133825044b41b897a03843c4b713` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21bb83f84d06ad561c7d35872b0dd5aa2f3c131b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2225dabffc7f862c99477381e971e8b1fdab467e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240276 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226ef92ca9c42ab3a786e434f19c8148efa6ccd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2285ac429cccaae7cc1e27bfbe617bc626b443cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23bd2d2af26c42ef9d1a1159d80f1cd7d90f049e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2401e9ceada76a59753549f71858a3ece906f197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2861382ef967e5b539b5bdf9ffcc52fa4056eae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ed8ce7668658271da0ddb350070ffea75595e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x313ca6136521d22a7ea763b3566ed0b53f5b3ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3509d9320660b2ffea0225b0006c98f1d6293c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358fb1c8e14ce61d3d83f17e6804a678b5847673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37ea4139343d55b86c48775049defe31fbc87de8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39bbbd81ea05a09234a71b4c77775fe7bf45f947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f9f3d7203c5b13e3c2682362b608e20df02194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b82340a804776ee27b22a833204c637a429dbd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cb7b3fe89cad7fcf7fcbbef1933ead13cda5c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce02cba4952cf75dc8c1baade27761141c6cd1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42e71e641c1a11d0026f129830a0a2ef8ea7f883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x434b68b11bbe8fd3074089397ca3d275801d6354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x478bf562b2a39ff8530ee41ff0dfb39d8bdd2192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4852e48215a4785ee99b640caced5378cc39d2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd1ec6cdad93b3c6219ceda018ecaf8d655fa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c82f6829797a4174a082ce9fee0b9bddc1e5e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4deed6b663a64f76f6a59412486a9d9048cd234f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e2a5adcd6abb5196af2b7f4759e6db104b85495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e930b7d9e366b8b270ac0fc56f040a8746566c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5225efaa21aadedd79d1098b46ff0e4059532041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52861245e940c7fa964d5bd6d0f2fbeaa12227af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5324e2f61987fcb06d892f1256b7c12ca9152a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x535321013a1e2d5af3b1853812a64ca3fc6c1fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x551d155760ae96050439ad24ae98a96c765d761b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x576fc58b247963d8de9aa4018abb0240d0465a31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57c23fe7a1a8d86f1128196c7c22f8711e81437e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584338dabae9e5429c334fc1ad41c46ac007bc29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae0e44de96885702bd99a6914751c952d284938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4acca7a9989007cd74ae4ed1b096c000779dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6025533b9e095ab2730e1ad50219be8293d66220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6059cec7604f72eee7cb836a9f42661b603fe286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60d2d94acb969ca54e781007ee89f04c1a2e5943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b26ebd8586c18ed7e0ddba8df2ff690d803b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63b835015247b60977e53fec357abd854cd01a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6564fe0809e8b520a0e26ee644d98c4ea2c6fb45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6879670b1610406de180d06d19f8746943619298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b4f81f9ebf8132d7fe114a1f96e333187979092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c1e2d2c55c83de945e3f37df694cde8452c1e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6df26ae1cd755ef743e7b02bf7ef808eb1c26a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e368c33b98dfb0a376534429be8a065b47918e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70f3b8724ea96d89532089e3578aa2a31bc78c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7285880a5c41a315b0b30b273d847d7cb23cdd4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7287d90ed89d586d0d4b09f683c7f06a3e9a0997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73cf930cf4f86117c308907ce18f8e8f16710387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7463f8deb5767df59dbec2a20c9fa5bb92f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7700a0e892db04f4ee0f2fe7b4f32a2cdf200164` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240288 | `0x7a56e1c57c7475ccf742a1832b028f0456652f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ad369f1fc8ac0cba5a4ddb8381cd7d210b63769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ca353c218d18f21931d61080d2a528125bbc204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d96bd72cef72dc1f8cf55bed7ab8f03b97557ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240289 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f8ced381e6cc79f69721563157b1add0a5b6d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80b9d842081972d641375420d256ad1edcb47e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80faea283474e9fd26ffd168829350ac766e7b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8113f001ea456759264317007220cbc939ca8435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x829525417cd78cba0f99a8736426fc299506c0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84267ace6a5f558a19803693554e0d18c95c8df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86637a9aba90204575db67451ba273b01cada2a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b238787f24eecf24500135bc9d4d117062b6e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8753c00d1a94d04a01b931830011d882a3f8cc72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8793164ae37e5fae2cdf7620f4d4dc615bc22f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880a12f050376ffbd2b37a6ed78b50e93b0103ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f57d3617f6a9ff877fea34dd0688b2840ef50e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a76252ac076b60f91765c40d609fc874016c146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aad084a290c48a1580ef874211d74594e3d674b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ae023d31d3590b7fd0919251a8c68dfc0c4d398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0422d9859b2cb98761428b4518059e1cb3e8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d87cbd8c3632b7ef117a15f8100943a23b7d03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dbc8027ebee31bab05ade462b43a579575aefad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ef5d844de9bbf52fcaced2ecf66b7faf0b3aa12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a02936ba645ab719574512b578ee85d208257a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b14377df02edb410c47debfaaa20b9a1c043a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240290 | `0x911d86c72155c33993d594b0ec7e6206b4c803da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91aaa787b661419ab7e7eac4dbc665f37295dd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94af5994eb6841e1d930c95ad0c9f89771c3073f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240292 | `0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96418d70832d08cf683be81ee9890e1337fad41b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96a5915df3e4f4911f7c73e28d660ea014173d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9718a210dd1fc4dfa6d756e55ea89617da5efe77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c03f52244e60bb18511cbf03f890d5886f1f47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98273a098e2bb7663be83b48ee2c0ac3ecc02455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae7895258efb5ebda3e97e26f9819287c668a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fe5d564dc0f2b2298f5e28305065f9780e049e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0a105e10801b52bf89a042bdb40c7389e57af36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b5795a4a0b467de20d2da7e7356647753024f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240293 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa14a1a1646980c2b78eddd51b66ec220aefe6109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3b3da7fd30176f97661ba49f432a093b68c2835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7c576ef7b2742fd92edcdf83a03b5f23055facc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa95c5ebb86e0de73b4fb8c47a45b792cfea28c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0eec9be8b23895a8aaaadd33063105c0f82d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac12290b097f6893322f5430627e472131fbc1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac1d9c2b888fb20f7c20dc3c9313805a8dc165ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef186611ec96427d161107ffe14bba8aa1c2284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb074db74dc7f0f7d96c552331e59ae0a6b1ae088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1593193bcd7cecc3d19597658003d735d1e9e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27d688ac06a441c005657971b11521e80cdce98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6196b3b89981483c27ab642b27743a62c3d68ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7ce3cb5bc5c00cd2f9b39d9b0580f5355535709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b295df2cd735b15be5eb419517aa626fc43cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcd10c166b83edb0ebd05aaca5facab9c0a307f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd12aa47c186385b2c3c41bce663d5379e6bd705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfdf0af6df48e645bd076802b95ddef0b1e02a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1b6a630ae2252eac7b0b8c7f4a174b4d7f51023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a26188e4d7521960c2ddd31947afa9b2fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc548b12dc5a8b4a6d1649d038a72b70a1fc3b2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5842eaebccf357b1eeebc1a34407c112297bb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc780112305ed959ceeeb0de692e2407e4145fc3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7f5872e3d8d5e994c37087dcee9b9e89960c7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8efa074aa18368270d5cda1fe733de2b9459ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96d6382b9000f5a1f815a6ab6fcfc9befb6394c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbb64b15b0c14645a9216a4caf57b33aa9ba2860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc8f8f89ef7ba61e6a649b48221b0cf2544171cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240301 | `0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd63a29faff07130d3af89bb4f40778938aabb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd682dd9ecd4991d04787727fe669947d67849c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240302 | `0xcda75578328d0cb0e79db7797289c44fa02a77ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b6c01e9a8d21ed05726f9020b577a614bedce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240304 | `0xd11c452fc99cf405034ee446803b6f6c1f6d5ed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a622566f277aa76c3c47a30469432aaec95e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38cbf2a11c0988f535d3a09653affaf462c5b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd65556e97fea8e392be86a79b1c885d3737202fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd88fb00573adfdc98536ab60b1b4efafd41337e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240307 | `0xd97af2ff3a44427e4a412fed0cb8ebcbf09d4ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9d1b5132ef63fc0e9056d063880e7b943ea2c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda8531e75a80f553f556da767db46f514222c83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdab5b2b44cbec9979b6f8df92ffc479ba2d5f821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240308 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd317b85f7bd56361e2e3216610803e433acaea7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd629d38285d15847b3c57ae2eff1c3d860a6d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddc796a66e8b83d0bccd97df33a6ccfba8fd60ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2ee409bee416a53b5c040d8e6dad4a7ceb2510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0a48c7f968e79d9e66f89d4bbe09d643b5fc9e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe185500a98db33e3a023d1cd0141698e9c504923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d60463de3a0221276d737b87c605e0bb5451e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7dd77d408920c000c40c35c4c111318ba8b4767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb9f29b6395db28c0861c24f1cbfceee1ff0791d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc52afcfc9495ec083264ed68e8e6f454e5f715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb2826ea31edba61990e249a61d611ae82866f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22ca896427677507a9ef99d30b261659775ff56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf256306b5f8115e3d787f8658fc4904f7050b54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5760a2f36a8a3bf57cfc8376b046669a7fbbf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf69f5c5f788fae16ed8950e634e8280925d4cceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240314 | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a1c5c010c4028123fcbe75391f588b74e69b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbfef8ac9d267c463c2280bf35c9fffebaec983e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda0b8bca5d0a5a5093141d8a45d133a9f09b258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff62ad6200a54fff9288c997f8ca2d480a0c48bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20dacf037b437854926caee12bfbebab123e6e69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240396 | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240397 | `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x385fe033d211bea56a2e0bf0de39feb1ce24dfc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240398 | `0x4aae823a6a0b376de6a78e74ecc5b079d38cbcf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69f3126497b91a28a6abf3e1cb9a391f8c694cd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240403 | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f1f90e6b6bad9fc14ca71224b072541b739beb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab07afcf16fecdcc3d83db7513c7839aed626322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240408 | `0xec59de82fff1959e92b91dab975e4564fc3447cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf543915698bf89bd6d429adc79577d75da2fa1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf94a52468ff79862b8f288faf7900d34e74a1992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240326 | `0x03b54a6e9a984069379fae1a4fc4dbae93b3bccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11e73283ce361a47a9e5cc616cdc24cefd53bee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a8fed07c8b8e7a8050d75db392dba0af20eb9c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240328 | `0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2110de6c423689c9a0360cc90bd43224bd8b24b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240329 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240330 | `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53eedc0c750c9ffd63782a1b215effcb704fd402` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240333 | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae66c0564a6bb320514cd133ddc8281de59d94d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240337 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240338 | `0xc271a17db5ce6f53745a3f466077ec816bc20a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240341 | `0xfa68fb4628dff1028cfec22b4162fccd0d45efb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x0121d18d43e747f711d5d54e6b5dcf1e442ca7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x0700b2cb26688c035bd5dbbda070be408c20779c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x0849b1ad3112042f8588d3c05bfd90af929bbe7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x12db9758c4d9902334c523b94e436258eb54156f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x1a40208e9506e08a6f62dbccf8de7387743179e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240342 | `0x1b68626dca36c7fe922fd2d55e4f631d962de19c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x1ce060d47a0fd08b0869748fd7eccf151f4ec5d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x2da28fedc4643c787cb5c5e84fa6aadb596875e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x2e6e4603536078bd7661338f06fb93cf6f9b7a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x318ae0e737600c2197526dc054c1ed6b53318a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x31afcd6460db0b5d4b824e7f92c5b8cc06567604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x32a469d94ddfcb5e0ffeb9233e03fc54a52c2255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x42673ebf142067aa1614ed56d439db9d679fc6a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x4369998505fef69f9293e21d26600b72a0457b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x51f392f0d6232bf695b0c7f9bb145aa51c88d8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x531490b7674ef239c9fec39d2cf3cc10645d14d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x538640126ddc7450bcca2469179a69742368870c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x57d77fd37670e22188d1c92d7cec931bccf074a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x5b6af4c2584952d45153e3b78638764ddb7b5941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x6126b21decbe24cac2b5844549318756f8c06486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x6a4593babdf617d5d8d6fbc04b53435d08baf21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x6c0adda3a8f4175901dc563c7a92b0df992d9edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x7218bd1050d41a9ecfc517abdd294fb8116aee81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x78875fdb0ce369060e8b5fe41e69945a40edd843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x7fdcd974d2399596af9528682fd86b9690964a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x802063a23e78d0f5d158feaac605028ee490b03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240343 | `0x8498312a6b3cbd158bf0c93abdcf29e6e4f55081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x856a4019228c265dee336df705277607c4a18e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x85aa8d7fc0b44fdc2773c3252617b8d60076293d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x8ab8c2c8b9e1378abdd63880efa33a77a84d0fa1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240344 | `0x9105ceebaf43ef6b80df1b66beffd5f98a036c36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x93cab41738b6761409141adbce7605f165f8e6f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240345 | `0xa3227c5969757783154c60bf0bc1944180ed81b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xabc9bf9dc57139edccd6160b63f1e89f72a985f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xacac75df3384f6ab68bf91773f41efd9e1089431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xb1d57de83d80a2abac91714744dfe97e71b73dc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240346 | `0xb1e2939b501b73f4cfef6a9fb0aa89a75f1774ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xb39c03297e87032ff69f4d42a6698e4c4a934449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xb57a1d476d7b1c60cdeaa3cf594d7db5162a8625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xb64ba5ed5a62a5a2bfa8152607e36ac02d576f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xbe59fc165fb8941d6d0de527e58ff649a6fbe95c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xc03094c4690f3844ea17ef5272bf6376e0cf2ac6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240347 | `0xc30107a8e782e98fe890f0375afa4185aeea3356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xc50cdfd6b5a16cb046bfad21d95786031964306e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xc669b70f831f6e6cb7d2109760aad9809a66769b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xc66cb3e5a5477294c0e3861526abf06e4ccbe30c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xc9fc72370ee5cfecd44e3f8bcd74163dbb348e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xcda75578328d0cb0e79db7797289c44fa02a77ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xd12402c7472423ca668f60038ede6a437a40e913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xd32edf6642d917dbbe7b8bf8e5d6f5df6a9fff58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xdf34f43ba8045cab5c8a9a7589d5b5066c708af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xdfb7dc93b257623bf2837698776576f11e1c3800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xe026f7475e583d23d5bf76131fa4f79c67d9761c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xe5c63b5b043ebdd7c2735143a3d7aeb2cb0d9677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xe6a118c77e78a580e028b78e4b7b900ae207def8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240348 | `0xe7cd86e13ac4309349f30b3435a9d337750fc82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xeb48a1ee43b91959a1686b70b7cd482c65de69c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-240349 | `0xee8c0e9f1bffb4eb878d8f15f368a02a35481242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xf1436191989b03fef49b34b52ce28408681d2e89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xf16f96c342913575e46cff1bb827533c0b285138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xf4c542518320f09943c35db6773b2f9feb2f847e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0415ace56d39fd50b128eb7f3a8d8608dd0e6b32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240409 | `0x04c0599ae5a44757c0af6f9ec3b93da8976c150a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240412 | `0x0b3e328455c4059eeb9e3f84b5543f74e24e7e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e37599436974a25ddeedf795c848d30af46eacf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240413 | `0x2ae3f1ec7f1f5012cfeab0185bfc7aa3cf0dec22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37bbd2052751c42dc0c2a7a02a140fde6a1f8416` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240415 | `0x3b86ad95859b6ab773f55f8d94b4b9d443ee931f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x48ba8ad049604363b0bb4189024f3371ff550e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ff936d61ac986ea4fb6dca6582e35c55c29fbc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x548d3b444da39686d1a6f1544781d154e7cd1ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69ce2505ce515c0203160450157366f927243309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7063ef4f2887586e96096d3e94c9b6961c50a9a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240417 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88b81fd1753fef7bbff3bbc65e4ba73a28cc9449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90b0c73f19bd2eb9bcd6b1c6c787a63ae851b336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x91461b9117b3644609eeb0889ecc89cab4644bb2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240419 | `0x98d0baa52b2d063e780de12f615f963fe8537553` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240420 | `0x9ded28d9ec69f97efd718ce768dc39d78fd014f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5a1afbff720f79f1f7833aafbdcee87770bbc93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac9d11cd4d7ef6e54f14643a393f68ca014287ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb23a7814f718448ba2e1a2b362a8ab0c4e8ab341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc026ae03c857093979872c665b13dbba83b55987` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240423 | `0xc1cba3fcea344f92d9239c08c0568f6f2f0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240425 | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce9afcdee65ecc8887d527f57954ba3f41ffee67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240351 | `0x048e47eddef06c7f672d6b16d978ad38ec41a9ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07d4692291b9e30e326fd31706f686f83f331b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c383f63426cadaa45afda5214ebcc98a2020e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1649de9028c0a6b958118a977099d66ef0da5a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17534831d52f94eaf3ff7418b94179a6cdf9ae6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d08a8979c9ae629a22de33a884af58bc31e2460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240355 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240356 | `0x3106e2e148525b3db36795b04691d444c24972fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3222d3de5a9a3ab884751828903044cc4adc627e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x352e20158c9916579b337d1332f462b26a8a699c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240357 | `0x35751007a407ca6feffe80b3cb397736d2cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240358 | `0x3647c54c4c2c65bc7a2d63c0da2809b399dbbdc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x387090cdea72d6ab1598394d45c5b3e05616f15d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240359 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4938c803ebe999fb0a5527310662624f2e7a38c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240360 | `0x5979d7b546e38e414f7e9822514be443a4800529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c08bbc2c47447854958060725e437e6dd003332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60ff20bacd9a647e4025ed8b17ce30e40095a1d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240363 | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f93ad7963bbdd8c655a0c819b9b79347ee04b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7033105d1a527d342be618ab1f222bb310c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81e5c1483c6869e95a4f5b00b41181561278179f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85d456b2dff1fd8245387c0bfb64dfb700e98ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8eec14b9464583f4414e250a13b75cce560aaf19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240366 | `0x912ce59144191c1204e64559fe8253a0e49e6548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa88845af0d087ce8cf2f6d7d7a674154b21f73a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240367 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240368 | `0xb359155378ff5e2837f12ed0bee5168123c88acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6df8914c084242a19a4c7fb15368be244da3c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb76ccd027f7a9e82d2d0aaadafdfe83081758c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdecd374f1eeaff3250f368bfb1cb069a2701e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc922e46659821600d4f2cf5431132106b1ab8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde18b909618d6a71aabfcbfdb66dc39fd2b29c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdef49ae5fdba8f31bbb44be6e233f6aff02918cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfb202ad6734530d60501aeac1bcf99688d8319f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfea35757264f5b6c0ff21104151d9f991d0eec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe119d214a6efa7d3cf60e6e59481ede1b0064a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe75886de20df66827e321efdb88726e6baa4b0a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf21bf2bd1fd02f92397a09f77bacb080865e6ac1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240374 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240375 | `0x00000000efe302beaa2b3e6e1b18d08d69a9012a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01248204b116d4802242d02bbf215972f9156153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0147c0212ca4aba29d26dffd3c800893080ef296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01b269d2e685127f6ca3dfdc3494b204dd2145e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0259617be41ada4d97ded60daf848caa6db3f228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02d632ba7f2a046817af67ef7b279080d3cab641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043e63a7c886074720b411e3785de183d1262ec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0473f2bb3eebfe6c014f196835624d6db12465a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04a3d40399b425d8f8bbe192324b8af35b5b34aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04c8b9d8af87a6d670b646125b2d99740d8eba5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05300c3c6d0d9d6e06165eba21a681ea124d6df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0584e65ae8a47f5cb8e6a10ec487ab06132fd302` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05d06afb994047acee8c205500ab1aa25c5a3388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0700b2cb26688c035bd5dbbda070be408c20779c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x072c476cc6f75f9c1ef88f9e7c5eed69686f97f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0769179b35243a0506e890e09603c922be72cd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07c911b5a1657126b14c25e697e3d00f3a134a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07dfe570aabed486f5577472f7f7952de425a922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07fa18a8d49e02ba9693af1e15337ba66535e0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x089ec7a075afe4af4e49ff11a21a0c3b61c22dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a3b77599e3c313a9059ff768faee349a0972c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a64e8d4408f9d3ac1322fb93f4c3dd8143b0d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a75a480af4adc81b20b1664a1da2bd7caefa430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0aee2b84bd3e280cfcc9325917bfa0bb20f3cdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b09e1ffd28040654021a85a49284597f3d0e41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b2ef2abd21c1c25a64849f1e0ed9ffa40a1d5e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b4e69c4890a88aca90e7e71db76619c3aacd79d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b94d3afa017e853c82676b4118500b8f9de5864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0babedc30d786ed751ff4b68da96da4a4cab3689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0cc47aa1252f25fd95b65f19c2fd6db33366a557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1ec3666478c86ff4d5452a89250bbf9d18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e563b9fe6d9ef642bdba20d53ac5137eb0d78dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ebc3e27f57c11041082fae1dda4b471e9a4f58e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f9e9622c9cb6f8ea6cf19fa26252c3c3c06e27b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fb72b771511062c5fd1811fbdfdfeda4afaf162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fefca42e2dbbb046e46e0572ccfc2aa7cfb54b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x102011863cc4f506d1387cd6b22c522602ae0fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1072ec93cb932acfc1b74ac115cb1b0f2c5c1156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x107b31d84bf6cec672f3af924471bb6f4fb8555a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10a4481f79aac209ac6c2959b785f2e303912dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10f67276b71842a0c757d4432124096b32cb5029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1177a3c2cccdb9c50d52fc2d30a13b2c3c40bcf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11f82b5ea7408ff257f6031e6a3e29203557a1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1237804f7f4b538844fa5be835f1862b57dfb337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x132492509bc416f95fcbaba63f3d9dceecce10d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13a21bc65844cd530098ab15431c57078ea90737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x145a0e384793bcd5b481af01f8a046141265bdd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240377 | `0x14a84f1a61ccd7d1be596a6cc11fe33a36bc1646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14d458a63561ffe961544252d8eb05e606664301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14f28f124db1af40a3f034c611db75dea736e08a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240378 | `0x152b9d0fdc40c096757f570a51e494bd4b943e50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1565398057096d4bf5b843f37279dee15e0feae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160bb4cba352ffbf2021ce848f37674eeac9b38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16c5536c1b01c8037fba75bd7b9fd08d59a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16f419bbca0529ecc99ff595681b822e328ed79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x17395ad76b236fabeac3634b78ff8f6970222199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1771ba12fe9427c8416e7b64ae7349f287dba954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18031b374a571f9e060de41de58abb5957cd5258` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x188bed1968b795d5c9022f6a0bb5931ac4c18f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18b0bbf62c5b7bf6182c9b46573dcbeff16577ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18ce97e5a240813d922c6dcf962c91257f5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x195759c3f9fb62d740dd432e7a982c5dee1298a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19da5d5e16615a354316b792ef91d2dd43d439f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a6708c0b9fb96df50c0a327be76ee4f088f0849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a772776921a8d6cfdb266891d69907c474c30a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1adbde469581bfd0454fc61c7e74ec2bf7330024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1af353148f2316487b5311fcd522c037842d232c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b2a8d56967d00700dd5c94e27b1a116a1def8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b2d9116606c09d6c9903eabc1bca2e6239b440c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b5a1dce059e6069ed33c3656826ad04be536465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bb74ec551ccd9fe416c71f904d64f42079a0a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c4b41ba54492f551e98ed0a9a59b952a962c452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c51aa1516e1156d98075f2f64e259906051aba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c7ec7198f297119d4e9f359d91127c8b2f9a9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1dd4d86180eee39ac4fb35eca67cacf608ab5741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fcfdee3ab694032255cd5ffe24d66b6c85501ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20df2d2ccbafbb07a5df452ac3f094747dc83055` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240379 | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x213299ac40ce76117c2c4b13945d9d935686bb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x217945d4cb3386420252da73743f1730f38266e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2274491950b2d6d79b7e69b683b482282ba14885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2295e1cad2ea081a4a2ed85f59006e6fd42b5a66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22bafb9c882a8ba7ee5559186540bcd8dba1d073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23a96d92c80e8b926da40e574d615d9e806a87f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23eb4187580524d25ff93a3571b1969b8018f628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24db057615203c0f27f0968452a0f2327e6bc86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24fe445449f323561ba259a4abea8c51383b10d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x250a0a76bb0139d65f14500c0149d2766ea109b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25dd4a2900ee3b16f8381349a34813d41d29d7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x267a4576293d55b53c769606e886e1f343149df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27389a07d02c3cd8c3d069fcb2ee6aaa160788a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x279b3e185f64e99141d4ce363657a5f3b5b32fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x27ce13ed07c367258e0e65eb932dffcb84f62b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28adbb2822601449ff4a271c0b587d726ea7a0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28c1d5fc29b9690651b50adce14417eb34f75b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29472d511808ce925f501d25f9ee9effd2328db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2967317938e801cab3badd9c1f3a8feea0f9bd20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a834dd3e1732ee6c37c8b93b7b5b08091086401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa5eeb740a9f873f07798e6a61ffc12ac75d2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2aa8fee178a79182c4b7c61efeb4227cb8843915` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240380 | `0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b7995fd223dcf3a660cc5a514349e3fa7b16168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c7b8e971c704371772edaf16e0db381a8d02027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2cd215bc634df4962f296578a2b87a9d7a1de38b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d92eeaa1fe94cd41c22b3fe987d48a0b2e048eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e3559254469ceff47526d9c40cf94d0a22cf821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e3a352f4a94f8df17835d659853629b7e7975e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ed5cda38f295a50f59974ed75a6b46269ff11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f16172206d320339cca06d30eca6077a7ce602f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240381 | `0x2f643d728926c20269f0a04931dd7b4b6b650204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x307bcec89624660ed06c97033edb7ef49ab0eb2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30c030eec5c6b2ce609e1a69a54d0fd311be48c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30fb915258d844e9dc420b2c3aa97420aea16db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31ba32089d5474fe5b60411985c5d227d9d859ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32044834e239f5e2444052dbeeb1a3cc416cccee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3291fcf6ca62939fc432debe6cbb2a838f755d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x331a1938f94af7bb41d57691119aee416495202a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33fa3df22bac262f72a688877e728094b6eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3445055f633fef5a64f852aacd6da76143aca109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x347d342f12fa57b6231c82867f964edfa4ed1431` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34a9c96d00dce4d78f3a5a32a3e47bb40e691485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34f1ba5808eb5bf60c9b1c343d86e410466f4860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x357211bf58a13e626eeeb2e82e1297b9ebf67b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3582837738a46985f900e8ab30191198e0af8020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37686293c9423a1c5a171aada28ab5c9086b8853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37d761883a01e9f0b0d7fe59eec8c21d94393cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x386fbff27b386738cbd16f253adf0f5f72122329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x391201cec4f80e69c87dee364d599c1fcae3c363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x398715a6011391b2b7fd1ff66bb26c126e5d4aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a0fa80d30f8164212ac547c7d3eb8a254cef572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ac92878ccdd55934ecf0fd49f65689cbe16b974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b1c2ec8b7cde241e0890c9742c14dd7867aa812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b34e169438fc65ed1c018655d04e5b0f3185ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bcda00c257179d4abee0d1d94a8a9720554f1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c32463e25f562fbb3684125246c5b2ed30354ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c5486b85faae29b071f2a616a59ca7bf8f73682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c9211212118ce5fab57676c88541841d6d7b5d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cb560faeff708e21513b0ea7e65963f08eaad04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ccfc1d0319c52f177f4281ac5146cffa62f8e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cfd9a81a16e26f9fde9c751a0be0b9d8360892d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d00a639183b07e35efef044ee6cc14e8598a01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3dc34920e12067de82de2a94cd46544b255d08e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3dca53bd528f5cb71ad837d6760074733ca60a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e612511900457c364190abf4b072a9fd001acd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e85a56c2202ec067eb4ac090db3e8149da46d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e92639d1231befffd38d887199f87b813ff864d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3eb4ec45b791c6d43b8dd5373c2e94d8996e8945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f63a6401e6354a486e6a38127409fd16e222b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3f87f3b301f031ba59c479edf067621dcc72ddca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fc60aac1d843e4e181c7ab727a4027cb1ac99ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4043da5d66530f70f2ae1dfbea13d02051b45e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4161d7090dffb96e99dc30716ccc1a6d7a641fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4169cf88c7ed811e6f6e61917c5b915bea49476c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41a76343eb93b4790e53c8e2789e09ef41195d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4247c5dbac51a135939cc904c34e4913b6bcdcfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42bb92684e72707030f59c48fbe5a222a0d8b387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x439776d3786719e1243b628ef05e905679374a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43feff8296f4e7fd914b99e51a78c65c95682414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x444d68379832b3570503c7f0e67c54087a6890fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44e0d0809af8ee37bfb1a4e75d5ef5b96f6346a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45060a047b64423179e52a9b082e19444711a084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x456a6e49409f137138e2e0255368a3a37876e87b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45acb67c90615acbe9566c6aadc23ef418587d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x45b2c4139d96f44667577c0d7f7a7d170b420324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4728aa3b08c22c1005633690712e5c6b1997c080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x472e8266f564d52cba41e50817e3d2b63df56238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47d99d622b25d86f4ff8925ca8db21ea47044f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x481cf0c02bf17a33753ce32f1931ed9990ffb40e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48f0d284ba4dd0b3a9b72a10b13c94b43f0cadf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240382 | `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a586daa5d5edcd8182339c24291fb510fa4d271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4acc99dc595e2df9838ddcb1ec5d94fe96ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c916ad137b97b03ab5f105cea77c5d5f98a2a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d0b7302d7ad0b0f9efdf16caed64868ed377313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4d9f1b673aa23e8c427d78df2d9390f724706755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4db12f554623e4b0b3f5bacf1c8490d4493380a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e6dd5e35638008cdb1e9004f3e952bcdd920e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4e931f09ee083b7abfb116889622d6f337112538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4fb4c3a33cbe855c5d87078c1bbbe5f371417fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51958ed7b96f57142ce63bb223bbd9ce23da7125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52950ffee4ae5c6206d598a639647df27f8f7bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52d69a3f6ed50857e57be1f0cf1914db385ea435` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5313c309cd469b751ad3947568d65d4a70b247cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x531490b7674ef239c9fec39d2cf3cc10645d14d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5410c210c0011fe8dbd3aaef3d376e4105e4c118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5431e7f480c4985e9c3faacd3bd1fc7143eadefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54fe8edb139404228dd70c5fd0a06c7b46c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5562d84f9891288fc72aab1d857797c7275fcedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55eadf68ab32c4f782828148b465a76c54bd8a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x56046fcadbcb62ed4b5643af09724313624e88e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x564780a6aa44be1ca103b6c3f30e8593efbbacd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x568bf0d3d0ef982b8f4978bea05d287dd47a15bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x576d98d26419c5ce9595833403f64d919eca7323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57d77fd37670e22188d1c92d7cec931bccf074a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57d849b4d40536f587f2a9048dc8fe2a1d00da88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x585e7bc75089ed111b656faa7aeb1104f5b96c15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x587b32c2a5505e61cbeb252493e1286cab1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59023efdb22b9d8b2c7aed842ac1fd2f6110e5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x592f70bd9ec0ce89c4b430fac4dbc020b2419f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ac32e4c756bd57630eadf216668ba16fa4635a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b4dfdeb4f4680425e0e78d6029eb9af5afef862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bbfa5f49ec557eaba9427ac434f21b69113fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c60f12838b8e3eeb525f299cd7c454c989dd04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5caaf127cda59a1e640414aaebecd2408c006e22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cfca5b2149a20a166508b28e5fcfa65c44c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240383 | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d57f62027f567855e815489d2365c7976899c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5da155d0e75aa0e2b4c9cfc662275b95915405ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e1e12945adc54b5e5dd01582a19223ba5a424ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e5a2007a8d613c4c98f425097166095c875e6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f0902b53f91b92b41f5a04c80bca3a722865095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f2a43eeb6d624e145f2d7efebd13cade7083ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f4d2e6c118b5e3c74f0b61de40f627ca9873d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f8a1d27a269b9bd718364d9517677f4fd77e948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fe123b659fc5242f46884c37550f05ef08c816a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fe9ad068fb4c60c5ee173b12305803cb05ec7ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240384 | `0x601486c8fdc3ad22745b01c920037d6c036a38b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60ae616a2155ee3d9a68541ba4544862310933d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60f2682ab38e3c9a51b07fbd69f42ad2cfe731db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61ecdb614646ccf28c027b2bde9fcdf602ff90e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61f908d4992a790a2792d3c36850b4b9eb5849a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62387711313cc10f433b32e010a05bf768c2f037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6262bdac4369af889f6c18f7872de2fd0538eaba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x627237170706db6b63362e14b8195f2df87e9f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6276c3dc4f91fc231b9913eb6cc6c4da2e5dbb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63efda4bf91ba13d678c58af47304e6180dd46df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63fff9df7f427cc5b9a753e46bf7c4f2c263f183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6406a2916f2a44a8d0dc722ae3c03621302cdcd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6476a72282ea701748f56dcfb8a9ffa919bb286c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x647da94ae8ec35e9627df11bffad19513892cf2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x650967969025dd84a3328f30b110eed22a76f430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65f17eff747aeb3b14bb3712c6850c2da45d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6610e292a2cd9a750f6a8331a597f78b9db100e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x666aea026bc606220ec6eb83a83d81881fa48e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66b1452bb1b5e05ce08725d392a1c9a5e5f3142d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66dd1c6beadffca88365bade7928323672323d11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66fa316b49ee32aab7a7f88f08e16d8e907efb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x670968ed86ae309f552acc60cb6716b9f8198eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68b28fe0e0f91c672dcb91e5d18ac7a95f264bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69260b9483f9871ca57f81a90d91e2f96c2cd11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x692782448c146806be6a3c0b801d5eab5f8e8551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x697d7c12853a59429b62ab4d310975335dba2c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69c5725b500c7a160f8ce50474c439dbc353f094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a3560ece4fe09551d458ddd994b6b000f9883ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a5ebe1e6db9ae132fe68bdb838718e7d54e35b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6af7e24ac12b6e6e72606746833587edafeec3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b516b23a260e2d904dbfa47c7e7afd04e5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b5a37d2096f4f8445423f2e88bc6cc76093a86b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6baa882234924aa48d6c2a3d1d46d0ed723a4db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c1823a7089bf2962206f1cddea1569facc7c702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6f89bce78d4e083a7ba71574594aeaffee6459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6caf4068adc5766447205c9e51488586219d51c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d34318aaeb5a2d404c0c176cc7db69865368edb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240385 | `0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e8fd36d51d159209054dadda7f87aa4e1aed940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ee70ba71c6e95893b34b78d20906858fd031ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f5d00a263de6d40b4b2342996d2682e34f8a454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f6f5645b86b1fd3c4c015822a0e672132d4e2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7033105d1a527d342be618ab1f222bb310c8d70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x703473623885ffd8357527c61ec14a03a6b96460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70466e105170d8bad56ba390a48bac649fad27cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7054254933279d93d97309745afbff9310cdb570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70a5e4384a39775918eb430dede38b0121be307b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70f7d4bc2725288a72ed3ca85a167c70bb5ac7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70fd1a4419cd4436e4d44744c09f09a743fd1b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7178bf2a8a50153549e0d95a4c6cb816448840f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7218bd1050d41a9ecfc517abdd294fb8116aee81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72281a435fe5a9945e04ef4d0a32771430106587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x72fa22fdd2138ed5b6c5fc578ee633ad9819cf99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x737fdfb2365973474befa244953954c5b6fddf34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73cd077010c53bbc140b70b8ddb9c832db6e9ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74d2df56bf72b191a2a759255403c373d20cd1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x750db228b3c2156c2f6f2f27ac87eeb55d3ba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x752ab1da3f8fb0e715976bd5c3416a3a8e163ae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x75e8f855c22213b676fc7dc07252e075414bd200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x763dc8d725637571ea4cb85b6de3a1f568e64864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x765f6dc8496ca7ef1e4a391be10185229aacf04b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76eaa100e46475d69d22d9f42810ba4136f63008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x770b6e8a1b39f1a3ea06069cbd6d1e0b5db264f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77b995ff2bd2b5287f940bc379fbe214506403e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x78b4e5cda33c898b546db7925162879e7bd2a9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7902db65ad8c43c6e41d3b358b84a048debe55b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x795ccf6f7601edb41e4b3123c778c56f0f19389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a17fb34ce43ff7e5ef0a74a828ffed459bf3421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a609a474ac272f552b19defecd440210fdc490e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aca03e01e170107d01381a13281e4517f0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c532a6209350cf27efc3d06e82e35acfd362c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7c5fbb6c54a11f0256551bc4ead43e77be8ee2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cd4afd7f4db51a0bf06bf4630752a5b28e0b6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cdf0d944d05aa13ae140a5e880d499808fffb98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d0a3006bafd1df0ac2870d4cf3c8ecb22311326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d9d90a915a74e4acaea1c0de4efa07fd9e87740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7dcdb863215656e34470690432058b03d7ec03b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e4d8a05e10f6cb3d19822ac7742ec034a31c1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e94999005976e0715b3bac0ad2f70aa8822063f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ef4e0a14f81f4964dbcb65ad915ce2361b975e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fa4538f2cd08d4be4172351544cec6206bcb6fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fd21802709f2f180ee1982f56e58533f3031aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x802063a23e78d0f5d158feaac605028ee490b03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x810998c1014b877cde1370bf75e5defa0fcbf66d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8126f3385c7dc4072a67f17d585cec8ccab3d9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81516ec24d6d6b9952f2470002bbde4e5c23f592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x815cbe0e248d2d378c5e9c141b2ba9adaba2c9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8165aa29e883892d4b84775ec8abd0b6cfaec225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81a00330a5d7a1d4e73570a3959a7e2ad998237e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81b53932b3fa037a7d1d649a3c7fc0baaa3d9136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82e1534a5b9b299028e8939a2aef5bcbc079b241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82ea6f7bf853a199ab921137b119b6d41f08038e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82fe038ea4b50f9c957da326c412ebd73462077c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x838549b9608cf3aeb98504d7ad213525a2aa34cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x83c6720e8961e948dd3ce7815cae4f0fa7c6ea8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x846a4c2e80da03e4d8aef07a9503ecf854bfff23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84c420d5e077cf0ed8a20c44d803c380172ed5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84e71ced65470fab9d9d2d1a7eab33e1ddceb922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x861726bfe27931a4e22a7277bde6cb8432b65856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8637eb17e3f5553c9890db55f4d104e4b908636d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86884879b4213187e19fc2cd191133b86b43cc3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x872f15955dbdc1055405305558bf89ab3af8030f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87899c5c9b083e437a552a371004161fdf4ad472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x87c1b4de866b686e2b44e63521f02026e2b48a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x882fdc376c300f8689f281759ff74d17c2f62316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x884d2e9ff9e36b3e5ce293f48e959b39ab9d0861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88ae56886233c706409c74c3d4ea9a9ac1d65ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88e02662c1c22a256c5ac9be93bfe2c4ff5dda60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x88f15e36308ed060d8543da8e2a5da0810efded2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x895a539c88ca8a360ff0b085fd9c054ca61c02e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x897ce250199d102ea103aaf3a6e7906cde757560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89970d3662614a5a4c9857fcc9d9c3fa03824fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89cf789e6b622e29ddaf5283cc0c2b1301b9b64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89ecdda0d98b796e1bb93a578e0559509a033f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a2de3ccc35888bbdba2650cf10417b2089ac366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a8b9386dfd63931284545db62374b48180f0111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b33e813e6757f5c1a5e662333463c2ab23d99b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b58a5a6e8651d6ade1deec04e89131fae662afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b650e26404ac6837539ca96812f0123601e4448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c05d78066431c3b11bbfb6f3546fd3f1396115c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c3b4e60a4f6a7b25c9426bb07b272a4aa62f054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c893de1f682813eae6c6dbaa2bcad7e795bc015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cc49baf5211dd4fbc2e7641e7d17a4ca3d8a98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e41b7b3fae77107d54a9f670feae912cf442e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90bbc3995f473d64f973ab8066e77b98a71f6fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9189d18f453b1ec1f02e40a8e3711334f9ea210b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9217e7f9a6dc9e460208488f0ad92f6eac4d2b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x927be1425f2c3599ced2146459f6491ee450848b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x929f5cab61dfec79a5431a7734a68d714c4633fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x931b5dffebf156b3c295f0c50bbad494d35989ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x932406a77b3cfd3ef845c7f2999bae933ae03739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93fd598238377bdcad1712b7feda421a02527d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x94307e63ef02cf9b39894553f14b21378ef20adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9484d5da62664d65744de5d2c148c0ee89416c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x948cf23e1593d6b41d8de8b79e603e4734566e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x950d8545bb4e58b61230d47314549cae5bcedcc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x952d827765b0b65465e3ab280b0d42819656d57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x953345d960f4283b90f5ceecad9cfecd961411e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95fa8ee59ccab849e2ef01aed5b67a4de5a84b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96a6b2d888ec1dec1db4495680c7596616c20718` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240386 | `0x9702230a8ea53601f5cd2dc00fdbc13d4df4a8c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9711563c33968d063fe0a41f809c4834fa997c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97592dc676d6051bf813f663b717cfd6b177eeff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x97e3a6446e9b0d9313c30cf8ddcf65659a213612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9936812835476504d6cf495f4f0c718ec19b3aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9946e68490d71fe976951e360f295c4cf8531d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99727c80726332b3b59ff5158f106c6155f4e01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997fba28c75747417571c5f3fe50015aac2bb073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a102080970043b96773c15e6520d182565c68ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ad6c38be94206ca50bb0d90783181662f0cfa10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b711b3a4ea4390c77c9438852086b3d5af3bc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9bfade56e75798167a84c24704fed6098b590819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c1e133e9c58ec6dceabf5e428bb162353da9e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9c5b9ea52e0270a6bdc4d0daf9224766000e135d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e4456f0d03a263653e01edfc8c1447a8c3e1a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e6579161c6f53722541edbd5ac96779c5b280e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e6cab0d18291c56e7e1d6e92c268bdc75c05b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9eb54aed8426cbcbb2d65ea74c94aadadf793200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ed81f0b5b0e9b6de00f374ffc7f270902576ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f0c0adec9fd4ef946ace1e2b4f32e49ae45c8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f509ae4e18d5a14afb51e16519c2936915b896c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f59642c6733397df5c2696d3ac9ceb431b1b573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9f8c00dce50f2cc5f4f9bad0a79cdd1023b7c983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fcb6badfd73112c08e1cd607bbc09246263fa1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa008cc1839024a311ad769e4ac302ee35a8ef546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1246c3d11049e4d3fdb319455d1c721a65f83fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa14505f315143e16b999b3aca083d306b85b803e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1e1024c49c77297ba6367f624cfbefc80e697c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2008a8c6a0f8f5cc6ca59b38d5dd90455a840d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240387 | `0xa25eaf2906fa1a3a13edac9b9657108af7b703e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3b087634e78731cc593ac1b93a042eb1de0d714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fa3d254bf6af295b5b22cc6730b04144314890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa49facb26236aa5842b0817f634c482de9a38f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4e65d6ea294e3f4847651921adfd4e93f7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa526c8919f190ae0b93049aa1bdc1264d4419d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa544829795a88520ffea2626734eccd09357651a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa582a36f77e4536d95cbb99126640e7cbebc3a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa60ef5447008adaf6de56320e9dff507b828b9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa71a7cbfb554519c5a8d2f9d0043ed0ff22959fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa969faf6757fd7873f35650aa3a67823310fb54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacff0fbf56baeb9ef677de19aded8f7a950bcb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xad9ac791fca10f95248edfc953db15ba9e29f2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xada5be2a259096fd11d00c2b5c1181843ed008dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadaf18d79f316005542da4ecb1624b59c4e6e398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae1e7b06544a13315e6f7301cc161761813ce4b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeee314a3b0d88439b77fca9f125bbb66baaf61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xafb2aa50d458a5611a8e212f094871a992c7fe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaff90532e2937ff290009521e7e120ed062d4f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb06b4639b93863fecc3993eb0d6bf9779716bce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb14f2576be100cfe3b274233091a841f1e040604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2bb1e77fbafbe7b7295390ce66aa75dff7e5e8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb2d98a914c471ef2736e6875503f84bcae191cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb306c94fd016a9e8de7c6643a4f16342dab20b04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31a198f6fc551b3cb1262f4cec863f7240dfec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3782d4bc5dae948db91b611941a0ef537c8b252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3d05b9db17fd6308b85875ad7344c1c4fb8a30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5327c35e083248e3a0f79122fab3b6018e5584a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5a917ed59db899f26ce05cc75e6bc16f927f800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5f2ed77b7723da56ad58edca5106f07f390e560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6374448c68186e3138c994fce4437d26d486d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6df8914c084242a19a4c7fb15368be244da3c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7b46f62b924c857ef49fadc73e57fc6f0693e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb84fa022c7fe1ce3a1f94c49f2f13236c3d1ed08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb864ba8d53a87472d6eab93ebae58c65023d274e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240388 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba2a995bd4ab9e605454ccef88169352cd5f75a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaf1a2e7d8525c3a75a51067550ec6154a8cb510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb09ac1c984b9d93104cedb21642cc15d09bfec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb28e074c1448c92b1403ba3bd4d6905e20a7ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb4685b334988af9579c772a3df5949e0b5d3c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb83b6ecdeff084d7cd0a6ad96c3e7483672d204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb906a265f09caa02d878d0581543b554fb2b815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb95aa2089a3494e466d3cbe6d6c21eeefd7b337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc05fb8b47f6d574672a70eee04d73c647ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc5627e0b497f18dd4a321f57f4d43c1e0e9e190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240389 | `0xbc78d84ba0c46dfe32cf2895a19939c86b81a777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf70239349cd43598f7587a093232d07c5d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbfdbe35168953c9d29bdf9a0043f902f233c76e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc0108ccbc2701eab00c604afdec09dd3df4456ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc02ada9fdd113c2e76a86121fb1e69540e02b29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc095ece2c0f315381b4bf6de169fbc219b24194c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc13b1c927565c5af8fcaf9ef7387172c447f6796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc146783a59807154f92084f9243eb139d58da696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc17f9953c9cb1ecfacbed9c1c9d2e6f959f9a47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc22f01ddc8010ee05574028528614634684ec29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc2fd40d9ec4ae7e71068652209eb75258809e131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc300bc9b4b690ba7a182126299a0618ece268ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc356607e2ec30884bb0f84033c4d81419d2350bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3e997334527e6f9fcefc5606e3a34f47b2b3429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc41561f2ca84302b6e920d68b46fa21104d0676b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6001b0e628c967af6638f7538791ab3c4669249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc63085dd11fc473e6db8eba20af191885d9158e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc668904f9155ff4f36d04eb82d2691f290491f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc698d4fa211bdba3e48fe880efe371372774673c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7bc4a43384f84b8fc937ab58173edab23a4c3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7d35cdbc83cb4b90027a8036193f989c1395be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7ddb440666c144c2f27a3a5156d636bacfc769c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7fef2eac21dddf9fa332c1ff4cf208599d7a6c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240390 | `0xc891eb4cbdeff6e073e859e987815ed1505c2acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8de41c35fb389286546cf4107102a7656da7037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc96820695217c7dd8f696f8892de76f7a48432cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc988c170d0e38197dc634a45bf00169c7aa7ca19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca8539b480f1bb97697f763a77d08fa733abbb51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbaf300379da70be2f7964f6076610b633c15965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd385f1947d532186f3f6aaa93966e3e9c14af41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd68014c002184707eae7218516cb0762a44fddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd85feb8efc260a6648d1d6190e98bbb087348ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcda75578328d0cb0e79db7797289c44fa02a77ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcdac336a4839090a091b0e7a9f8938f3a730fbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce095a9657a02025081e0607c8d8b081c76a75ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce63eca0c8a2084c1baece7737db88f10c412c5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf62b6e1c54b69e59cff552cfff247671594429b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcfc69c96385b1f193f6379772ab00de1ee6c7273` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240391 | `0xd09acb80c1e8f2291862c4978a008791c9167003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd0c23f8a3777d96e7561b0b5c5ce8b5afc0c2fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd12cf5515a1acb84967980fcfada2832851e3075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd19dacf775f9cdce4926c0467e3add92ca9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1bb834a4291db09d71e4436ef3bda343f9fbe3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4f87eb6cc8795e727f7dbc1e2c6c3452ad0010c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd603663bf9f8e3709445492112a9271248fa5360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a4f121ca35509af06a0be99093d08462f53052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd77b920a9c05b3e768feae0bcb5839cd224328fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd78718932070661a00ab40ea082f001b0c90f7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ae651985a871c1bc254748c40ecc733110bc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7c24697963cb02d6e63130812970cbdd08c3ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7c8f6a6b4f2389464aaabdf57bd864f9dcbd07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ff49751daf42bf7afc4ff5c958d4bea48358d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd83d5c96bfb9e5f890e8be48165b13ddb0ecd2aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd915fdb10530ef2a8337b4b0bb33f1b0bc015531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd960ce17d15bd0d056bc4aadc491cbb3fa16e584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9d50d4f73f61a306b47e5bdc825e98cd11139dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdad1d732e319fa87fe54afb10f229ae78b881ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc0730f8fc5f0efa1c304716a50d0a96ce4a7c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc0d421bef747406bb5c947dd75e7fda5ea187a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc13687554205e5b89ac783db14bb5bba4a1edac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc3b37b5f0fe5d3f8b8701a3f8d81a02ee8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc887acfe154bf0048ae15cda3693ab2c237431a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd9efbf83572f5387381ad3a04b1318221d545a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xddf06d89c908bc38e03067d65408d632fda4fd9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde8cb3a7084e5bb6acc39afe8d0e67825379d652` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf1339ef77ba1ebd33cbe0d83b289af4c0ef8fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf781bb633ab9d0041877f169ba47f07ba242aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe24faee4c390758846cf6791349cc0eca56fff6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe2ecc226fd2d5cead96f3f9f00efae9fafe75eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe34309613b061545d42c4160ec4d64240b114482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe35e9cd716d9b87ed4bc2bb7ee8249aaee9a386f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe396e1246b7341eb6eda05dcfef9eab9e661f80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3b0e4db870aa58a24f87d895c62d3dc5cd05883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe47285cc79a8de62dfaed52abe919b87973294c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe51262211948c338c50640f1d5bdba4f4d208dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59bb0090de7bdb1198fec7018134691f404d0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5ba4d94be0480a9dd21e38dfad5e9e408cd298b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe69e068539ee627bab1ce878843a6c76484cbd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6b7713854620076b5716e2743262d315bf8609d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe6ffd92b9f77fbf5bfec0f3d9c9d027c4cf3ba6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe72438e508039e94250756c69c3e6b520e4d3f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe734779ca7a5eca71bf87af3938b60b22f628cd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7897052fac4bff9eb3abc073cbc1e17fce5709c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8a191026e71c303b0f40f15be93403f7d529707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea347ef58dfb129035dd40d6f88b453400d6d0c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea5e11c8b5ae79d139da1c9839a961ea70cbbf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb1f569271b2997779e11c5df6f457753d6e0b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb41c98513ff3f975016b26e16cbf26e2f1b1df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb48a1ee43b91959a1686b70b7cd482c65de69c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xebea851d28722e53aacdc831d2894e25f460e62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec0ca5d2f362a826fa8f53c89a5ce1c17cd604fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec8184390ff917370d700c10ea3c85d25fdd7d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed6aaf91a2b084bd594dbd1245be3691f9f637ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeed14f39a6927404c31a08def1ff22bc0d54847c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef7a6ebede2ad558db8c36df65365b209e5d57dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf04aa1700694881761de6d1cc1c490102ff8a9ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf19c35991d1c2b961e5bce260095f34a55ecb452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf25dc803dba114830b086e4cc09cfdebe2c10afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2eb595f140d86fe7631ae2ed711f4e844734279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf451171872e9395021316e44d9f5475c90e27848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf47b8c42664ef345f0be5e1c2dbfeea027d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf4c5626c39570f0637c1785b378b0ef45a1620a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf51a72b92cb9c16376da04f48ef071c966b9c50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf59a26c295d082cfc17e2a98d1324e099860ab48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf65a0817d7c5b78c97b4265576afbd9535503d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf727ec8d6e565328f2cf0ff8ac4e7c9e7f8d24b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf80eb498bbfd45f5e2d123dfbdb752677757843e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf854ac65a40f1eabfd32e6d4c7d0e1c4b1753cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf88d8e5803cde818b46a013a7d2845cf3550317c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf975aa561812cb957aa29c8dfac2c2494868ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa4329691859e8f3a811b039e9e747b8d76abf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa4ceb42b72f0c5e9cdedf68c006bdee5d0a1846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa5fb13f242180aff20d7fdc54c13ec1f8e54a46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfad33e5854d7d0065cd4cd1e2ee9a64928163752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb058632c903ef564ba9be42da94e818691a3fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc22e8fa703c557ce2224524824a0784fed56a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc2f38445be02504df62753216fd2a4566747bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc3ea32c03b4be326bced178431789f7e2d8051a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfc828c500c90e63134b2b73537cc6cadff4ce695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd0bab3735a2bd1f2fff0fb2119b0f9fb7661360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf0bf117ff6fdb98af9bfcedf303af64a09ff58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf50fea3527fad31fa840b748fd3694ae8a47cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 896
- Live contracts: 11
- Unknown liveness contracts: 885
- Source-verified contracts: 100
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=21, candidate hard block=4, contamination review=5, exact address book overlap=8, source verified unclassified=63, unverified unclassified=795

Showing first 200 of 896 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x07d4692291b9e30e326fd31706f686f83f331b82` | non_address_book | unknown | unknown | unverified | n/a | `0x1824988af7a12c339784a171a514e20609896321` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921` | non_address_book | unknown | unknown | unverified | n/a | `0x1824988af7a12c339784a171a514e20609896321` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe75886de20df66827e321efdb88726e6baa4b0a7` | non_address_book | unknown | unknown | unverified | n/a | `0x1824988af7a12c339784a171a514e20609896321` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0c383f63426cadaa45afda5214ebcc98a2020e63` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17534831d52f94eaf3ff7418b94179a6cdf9ae6c` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3222d3de5a9a3ab884751828903044cc4adc627e` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x352e20158c9916579b337d1332f462b26a8a699c` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4938c803ebe999fb0a5527310662624f2e7a38c1` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c08bbc2c47447854958060725e437e6dd003332` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x60ff20bacd9a647e4025ed8b17ce30e40095a1d2` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81e5c1483c6869e95a4f5b00b41181561278179f` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x85d456b2dff1fd8245387c0bfb64dfb700e98ef3` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8eec14b9464583f4414e250a13b75cce560aaf19` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa88845af0d087ce8cf2f6d7d7a674154b21f73a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb76ccd027f7a9e82d2d0aaadafdfe83081758c9b` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbdecd374f1eeaff3250f368bfb1cb069a2701e71` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcc922e46659821600d4f2cf5431132106b1ab8b7` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xde18b909618d6a71aabfcbfdb66dc39fd2b29c8f` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdef49ae5fdba8f31bbb44be6e233f6aff02918cd` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe119d214a6efa7d3cf60e6e59481ede1b0064a6b` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf21bf2bd1fd02f92397a09f77bacb080865e6ac1` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdfea35757264f5b6c0ff21104151d9f991d0eec0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d1401887bf6f2f04462611d9644e3dcdfb02bbc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1649de9028c0a6b958118a977099d66ef0da5a92` | non_address_book | unknown | unknown | unverified | n/a | `0x88f047dedf20ad55906eb426397ce5dcd6055ed8` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2d08a8979c9ae629a22de33a884af58bc31e2460` | non_address_book | unknown | unknown | unverified | n/a | `0x88f047dedf20ad55906eb426397ce5dcd6055ed8` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x387090cdea72d6ab1598394d45c5b3e05616f15d` | non_address_book | unknown | unknown | unverified | n/a | `0x88f047dedf20ad55906eb426397ce5dcd6055ed8` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f93ad7963bbdd8c655a0c819b9b79347ee04b70` | non_address_book | unknown | unknown | unverified | n/a | `0x88f047dedf20ad55906eb426397ce5dcd6055ed8` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdfb202ad6734530d60501aeac1bcf99688d8319f` | non_address_book | unknown | unknown | unverified | n/a | `0x88f047dedf20ad55906eb426397ce5dcd6055ed8` |
| arbitrum | candidate review | CCIPTokenAdapter<br>`0x0700b2cb26688c035bd5dbbda070be408c20779c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xea94e11fad45675b3ed9102b8565ea7121984eb6` |
| arbitrum | candidate review | SpokeRewardsV2Erc20Token<br>`0x88f15e36308ed060d8543da8e2a5da0810efded2` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xea94e11fad45675b3ed9102b8565ea7121984eb6` |
| arbitrum | exact address book overlap | BridgeRouterSpoke<br>`0xdf34f43ba8045cab5c8a9a7589d5b5066c708af3` | project_anchor | unknown | live | verified | n/a | `0xea94e11fad45675b3ed9102b8565ea7121984eb6` |
| arbitrum | exact address book overlap | CCIPDataAdapter<br>`0xf14535db61b2993264e16daed208a7603e749cdc` | project_anchor | unknown | live | verified | n/a | `0xea94e11fad45675b3ed9102b8565ea7121984eb6` |
| arbitrum | source verified unclassified | AlwaysEligibleAddressOracle<br>`0x5c60f12838b8e3eeb525f299cd7c454c989dd04e` | non_address_book | unknown | unknown | verified | n/a | `0xea94e11fad45675b3ed9102b8565ea7121984eb6` |
| arbitrum | source verified unclassified | BridgeRouterSpoke<br>`0x4db12f554623e4b0b3f5bacf1c8490d4493380a5` | non_address_book | unknown | unknown | verified | n/a | `0xea94e11fad45675b3ed9102b8565ea7121984eb6` |
| arbitrum | source verified unclassified | CCIPDataAdapter<br>`0x7218bd1050d41a9ecfc517abdd294fb8116aee81` | non_address_book | unknown | unknown | verified | n/a | `0xea94e11fad45675b3ed9102b8565ea7121984eb6` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f2f4771b7dc7e2f7e9c1308b154e1e8957ecab0` | non_address_book | unknown | unknown | unverified | n/a | `0xea94e11fad45675b3ed9102b8565ea7121984eb6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x56046fcadbcb62ed4b5643af09724313624e88e1` | non_address_book | unknown | unknown | unverified | n/a | `0x483ee70c85bf749c00a017bd98240582132ad5e7` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6f6f5645b86b1fd3c4c015822a0e672132d4e2f8` | non_address_book | unknown | unknown | unverified | n/a | `0x483ee70c85bf749c00a017bd98240582132ad5e7` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x897ce250199d102ea103aaf3a6e7906cde757560` | non_address_book | unknown | unknown | unverified | n/a | `0x483ee70c85bf749c00a017bd98240582132ad5e7` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x932406a77b3cfd3ef845c7f2999bae933ae03739` | non_address_book | unknown | unknown | unverified | n/a | `0x483ee70c85bf749c00a017bd98240582132ad5e7` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xec0ca5d2f362a826fa8f53c89a5ce1c17cd604fa` | non_address_book | unknown | unknown | unverified | n/a | `0x483ee70c85bf749c00a017bd98240582132ad5e7` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6262bdac4369af889f6c18f7872de2fd0538eaba` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xba2a995bd4ab9e605454ccef88169352cd5f75a6` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd83d5c96bfb9e5f890e8be48165b13ddb0ecd2aa` | non_address_book | unknown | unknown | unverified | n/a | `0x503560430e4b5814dda09ac789c3508bb41b24b2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0147c0212ca4aba29d26dffd3c800893080ef296` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x01b269d2e685127f6ca3dfdc3494b204dd2145e3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x02d632ba7f2a046817af67ef7b279080d3cab641` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0473f2bb3eebfe6c014f196835624d6db12465a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x05300c3c6d0d9d6e06165eba21a681ea124d6df6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0584e65ae8a47f5cb8e6a10ec487ab06132fd302` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x05d06afb994047acee8c205500ab1aa25c5a3388` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x072c476cc6f75f9c1ef88f9e7c5eed69686f97f6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0769179b35243a0506e890e09603c922be72cd75` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x07dfe570aabed486f5577472f7f7952de425a922` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x089ec7a075afe4af4e49ff11a21a0c3b61c22dcc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0a3b77599e3c313a9059ff768faee349a0972c0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0a64e8d4408f9d3ac1322fb93f4c3dd8143b0d7b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0b94d3afa017e853c82676b4118500b8f9de5864` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0babedc30d786ed751ff4b68da96da4a4cab3689` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0cc47aa1252f25fd95b65f19c2fd6db33366a557` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0e1ec3666478c86ff4d5452a89250bbf9d18ad6e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0f9e9622c9cb6f8ea6cf19fa26252c3c3c06e27b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0fb72b771511062c5fd1811fbdfdfeda4afaf162` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0fefca42e2dbbb046e46e0572ccfc2aa7cfb54b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x102011863cc4f506d1387cd6b22c522602ae0fbf` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x107b31d84bf6cec672f3af924471bb6f4fb8555a` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x10f67276b71842a0c757d4432124096b32cb5029` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1237804f7f4b538844fa5be835f1862b57dfb337` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x132492509bc416f95fcbaba63f3d9dceecce10d3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x14d458a63561ffe961544252d8eb05e606664301` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x14f28f124db1af40a3f034c611db75dea736e08a` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1565398057096d4bf5b843f37279dee15e0feae4` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x160bb4cba352ffbf2021ce848f37674eeac9b38f` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x16c5536c1b01c8037fba75bd7b9fd08d59a1ecc0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x16f419bbca0529ecc99ff595681b822e328ed79e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1771ba12fe9427c8416e7b64ae7349f287dba954` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x188bed1968b795d5c9022f6a0bb5931ac4c18f00` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x18ce97e5a240813d922c6dcf962c91257f5d8b83` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x195759c3f9fb62d740dd432e7a982c5dee1298a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a6708c0b9fb96df50c0a327be76ee4f088f0849` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a772776921a8d6cfdb266891d69907c474c30a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1adbde469581bfd0454fc61c7e74ec2bf7330024` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1af353148f2316487b5311fcd522c037842d232c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1b2d9116606c09d6c9903eabc1bca2e6239b440c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1c4b41ba54492f551e98ed0a9a59b952a962c452` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1dd4d86180eee39ac4fb35eca67cacf608ab5741` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1fcfdee3ab694032255cd5ffe24d66b6c85501ad` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x217945d4cb3386420252da73743f1730f38266e9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2274491950b2d6d79b7e69b683b482282ba14885` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x23eb4187580524d25ff93a3571b1969b8018f628` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x250a0a76bb0139d65f14500c0149d2766ea109b2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x25dd4a2900ee3b16f8381349a34813d41d29d7cc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x267a4576293d55b53c769606e886e1f343149df5` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x28adbb2822601449ff4a271c0b587d726ea7a0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x29472d511808ce925f501d25f9ee9effd2328db2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2967317938e801cab3badd9c1f3a8feea0f9bd20` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2a834dd3e1732ee6c37c8b93b7b5b08091086401` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2aa5eeb740a9f873f07798e6a61ffc12ac75d2da` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2c7b8e971c704371772edaf16e0db381a8d02027` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2cd215bc634df4962f296578a2b87a9d7a1de38b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2d92eeaa1fe94cd41c22b3fe987d48a0b2e048eb` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2e3a352f4a94f8df17835d659853629b7e7975e2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2ed5cda38f295a50f59974ed75a6b46269ff11bd` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2f4391579839c5e3bcd6d471ea4aab3de0bb5140` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x31ba32089d5474fe5b60411985c5d227d9d859ce` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x32044834e239f5e2444052dbeeb1a3cc416cccee` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x33fa3df22bac262f72a688877e728094b6eb35c2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x357211bf58a13e626eeeb2e82e1297b9ebf67b1c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x386fbff27b386738cbd16f253adf0f5f72122329` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3a0fa80d30f8164212ac547c7d3eb8a254cef572` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ac92878ccdd55934ecf0fd49f65689cbe16b974` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3b34e169438fc65ed1c018655d04e5b0f3185ecc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3bcda00c257179d4abee0d1d94a8a9720554f1c9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c32463e25f562fbb3684125246c5b2ed30354ec` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c5486b85faae29b071f2a616a59ca7bf8f73682` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c9211212118ce5fab57676c88541841d6d7b5d9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3cb560faeff708e21513b0ea7e65963f08eaad04` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ccfc1d0319c52f177f4281ac5146cffa62f8e24` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3dca53bd528f5cb71ad837d6760074733ca60a63` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3e612511900457c364190abf4b072a9fd001acd1` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3e92639d1231befffd38d887199f87b813ff864d` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3eb4ec45b791c6d43b8dd5373c2e94d8996e8945` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4247c5dbac51a135939cc904c34e4913b6bcdcfe` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x43feff8296f4e7fd914b99e51a78c65c95682414` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x444d68379832b3570503c7f0e67c54087a6890fe` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45acb67c90615acbe9566c6aadc23ef418587d87` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x45b2c4139d96f44667577c0d7f7a7d170b420324` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x47d99d622b25d86f4ff8925ca8db21ea47044f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4a586daa5d5edcd8182339c24291fb510fa4d271` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4acc99dc595e2df9838ddcb1ec5d94fe96ae7f2c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4d0b7302d7ad0b0f9efdf16caed64868ed377313` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4e931f09ee083b7abfb116889622d6f337112538` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x52d69a3f6ed50857e57be1f0cf1914db385ea435` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5410c210c0011fe8dbd3aaef3d376e4105e4c118` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x54fe8edb139404228dd70c5fd0a06c7b46c86fb0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x564780a6aa44be1ca103b6c3f30e8593efbbacd0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x585e7bc75089ed111b656faa7aeb1104f5b96c15` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x587b32c2a5505e61cbeb252493e1286cab1f41c8` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x592f70bd9ec0ce89c4b430fac4dbc020b2419f37` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5b4dfdeb4f4680425e0e78d6029eb9af5afef862` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5bbfa5f49ec557eaba9427ac434f21b69113fe20` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5caaf127cda59a1e640414aaebecd2408c006e22` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5cfca5b2149a20a166508b28e5fcfa65c44c6b9c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5d57f62027f567855e815489d2365c7976899c7c` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5da155d0e75aa0e2b4c9cfc662275b95915405ca` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5e1e12945adc54b5e5dd01582a19223ba5a424ea` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5f0902b53f91b92b41f5a04c80bca3a722865095` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5f2a43eeb6d624e145f2d7efebd13cade7083ae6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5fe9ad068fb4c60c5ee173b12305803cb05ec7ec` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x60ae616a2155ee3d9a68541ba4544862310933d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x61ecdb614646ccf28c027b2bde9fcdf602ff90e2` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x62387711313cc10f433b32e010a05bf768c2f037` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x627237170706db6b63362e14b8195f2df87e9f80` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x647da94ae8ec35e9627df11bffad19513892cf2b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x650967969025dd84a3328f30b110eed22a76f430` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x65f17eff747aeb3b14bb3712c6850c2da45d0ac7` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x66b1452bb1b5e05ce08725d392a1c9a5e5f3142d` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x66fa316b49ee32aab7a7f88f08e16d8e907efb63` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x670968ed86ae309f552acc60cb6716b9f8198eec` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x68b28fe0e0f91c672dcb91e5d18ac7a95f264bff` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x692782448c146806be6a3c0b801d5eab5f8e8551` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6af7e24ac12b6e6e72606746833587edafeec3a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6b516b23a260e2d904dbfa47c7e7afd04e5adbc9` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6b5a37d2096f4f8445423f2e88bc6cc76093a86b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6baa882234924aa48d6c2a3d1d46d0ed723a4db8` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6c6f89bce78d4e083a7ba71574594aeaffee6459` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6caf4068adc5766447205c9e51488586219d51c5` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6d34318aaeb5a2d404c0c176cc7db69865368edb` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6ee70ba71c6e95893b34b78d20906858fd031ec7` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x703473623885ffd8357527c61ec14a03a6b96460` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x70466e105170d8bad56ba390a48bac649fad27cc` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x70a5e4384a39775918eb430dede38b0121be307b` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x70f7d4bc2725288a72ed3ca85a167c70bb5ac7da` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x72281a435fe5a9945e04ef4d0a32771430106587` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x737fdfb2365973474befa244953954c5b6fddf34` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x73cd077010c53bbc140b70b8ddb9c832db6e9ca0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x763dc8d725637571ea4cb85b6de3a1f568e64864` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x76eaa100e46475d69d22d9f42810ba4136f63008` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x770b6e8a1b39f1a3ea06069cbd6d1e0b5db264f3` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x77b995ff2bd2b5287f940bc379fbe214506403e6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7a17fb34ce43ff7e5ef0a74a828ffed459bf3421` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7a609a474ac272f552b19defecd440210fdc490e` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7aca03e01e170107d01381a13281e4517f0a9e53` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7d0a3006bafd1df0ac2870d4cf3c8ecb22311326` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7d9d90a915a74e4acaea1c0de4efa07fd9e87740` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7dcdb863215656e34470690432058b03d7ec03b6` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7e4d8a05e10f6cb3d19822ac7742ec034a31c1d4` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7e94999005976e0715b3bac0ad2f70aa8822063f` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7ef4e0a14f81f4964dbcb65ad915ce2361b975e0` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7fa4538f2cd08d4be4172351544cec6206bcb6fe` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x810998c1014b877cde1370bf75e5defa0fcbf66d` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x81516ec24d6d6b9952f2470002bbde4e5c23f592` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x815cbe0e248d2d378c5e9c141b2ba9adaba2c9ee` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8165aa29e883892d4b84775ec8abd0b6cfaec225` | non_address_book | unknown | unknown | unverified | n/a | `0x5d3e4c0fe11e0ae4c32f0ff74b4544c49538ac61` |

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
| needs_review | 953 |

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
