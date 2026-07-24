# Agentic Audit Brief: Allbridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 23 (0 matched; 23 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 8.2% over 90 days

## Project Overview

- Project: Allbridge (`allbridge`)
- Website: [https://app.allbridge.io](https://app.allbridge.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, aurora, avalanche, base, bsc, celo, ethereum, fantom, harmony, linea, optimism, polygon, sonic, unichain
- Contract surface: 212 unique implementations (385 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,541,708.00
- On-chain TVL (included contracts): $323,216,816.18
- TVL by chain: Polygon $303,422,509.75 | Ethereum $15,878,484.47 | Bsc $2,099,130.39 | Arbitrum $758,338.41 | Base $457,534.09 | Celo $318,258.32 | Avalanche $160,379.08 | Optimism $74,004.22 | Unichain $26,547.22 | Sonic $21,630.23

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Allbridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, aurora, avalanche, base, bsc, celo, ethereum, fantom, harmony, linea, optimism, polygon, sonic, unichain. Structural roles: 7 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: supporting (7)
- Contract kinds: contract (7)
- Detected standards: accesscontrol (7), erc165 (7)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4`, chain 137)
- UnnamedContract (`0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4`, chain 42220)
- Bridge (`0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4`, chain 1)
- Bridge (`0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (2 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 204 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 1 of 212 unique; 211 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/56
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 4
- Unverified implementations: 156
- Unique implementations: 212
- Raw deployments: 385
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 11 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| QiStablecoin | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3fa99a148fa48d14ed51d610c367c61876997f1` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 32 deployments: ethereum `0x1d3df13adae6ca91fb90b977c21d6e90ad8d403c`; ethereum `0x542ad3c76e391b8436aaf0fbf4194bdaefa9ce97`; ethereum `0x7dbf07ad92ed4e26d5511b4f285508ebf174135d`; ethereum `0xa7062bba94c91d565ae33b893ab5dfaf1fc57c4d`; ethereum `0xb827b15ada62d78f5cb90243bc4755cf4b9d1b0e`; ethereum `0xcab34d4d532a9c9929f4f96d239653646351abad`; ethereum `0xce01bc1be28c0784492cb44ebbda662c3f539172`; ethereum `0xe6fc2aa0e9882a29f2e6c5d963fcaa7ed297063c`; optimism `0x3b96f88b2b9eb87964b852874d41b633e0f1f68f`; optimism `0xb24a05d54fcacfe1fc00c59209470d4cafb0deea`; bsc `0x179aad597399b9ae078acfe2b746c09117799ca0`; bsc `0x731822532cbc1c7c48462c9e5dc0c04a1ff29953`; bsc `0x8033d5b454ee4758e4bd1d37a49009c1a81d8b10`; bsc `0xb19cd6ab3890f18b662904fd7a40c003703d2554`; bsc `0xb19dad6712a5e4dcbb8280fef5735aa826da0e02`; bsc `0xf833afa46fcd100e62365a0fdb0734b7c4537811`; unichain `0xba2fba24b0dd81a67bbdd95bb7a9d0336ea094d7`; unichain `0xd0a1ff86c2f1c3522f183400fde355f6b3d9fce1`; polygon `0x0394c4f17738a10096510832beab89a9dd090791`; polygon `0x171f3f8ae9825667a51f31abcc085e2f92a47826`; polygon `0x218556e82962a2442cf116104f2fa770ad0bd604`; polygon `0x4c42dfdbb8ad654b42f66e0bd4dbdc71b52eb0a6`; polygon `0x58cc621c62b0aa9babfae5651202a932279437da`; polygon `0x6d92cf0d4ae712817aad1a4ccac37145e19e3622`; sonic `0xca0dc31bda6b7588590a742b2ae6a4f67b43c71f`; base `0xda6bb1ec3baba68b26bea0508d6f81c9ec5e96d5`; arbitrum `0x2b5e5e6008742cd9d139c6add9cac57679c59d6d`; arbitrum `0x47235cb71107cc66b12af6f8b8a9260ea38472c7`; arbitrum `0x690e66fc0f8be8964d40e55ede6aebdfcb8a21df`; celo `0xfb2c7c10e731ebe96dabdf4a96d656bfe8e2b5af`; avalanche `0x2d2f460d7a1e7a4fcc4ddab599451480728b5784`; avalanche `0xe827352a0552ffc835c181ab5bf1d7794038ec9f` | ⚠️ Unaudited |
| YellowToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x90b7e285ab6cf4e3a2487669dba3e339db8a3320`; polygon `0x18e73a5333984549484348a94f4d219f4fab7b81` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2c28b58db223da89b567a0a98197fc17c115148` | ⚠️ Unaudited |
| StableTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xe8537a3d056da446677b9e9d6c5db704eaab4787` | ⚠️ Unaudited |
| Accounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53`; celo `0x56567727a0da93ee0beba9400af7eb96dae2b98c`; celo `0x907f5c53c0e31db06af45bc58f076563469c525a`; celo `0xbac4a39ecba3c0f2e5caf30f090f094f6405f603` | ⚠️ Unaudited |
| Ariadne | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c9bc94acd2fae6aabf4ffae4429b93512a81d2` | ⚠️ Unaudited |
| AttestationsProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 18 deployments: celo `0x2496fda4b928e8cf799ac04ea79861ac828e9a3d`; celo `0x252b037054e1394cd5e4a92a76f1fbff925f1649`; celo `0x30b3c1265262d7bda066357a4678cb2d660595ac`; celo `0x3a493665dc7a609d94b87adf0af51bf8d2edb3f4`; celo `0x488debd4b7646a44cac389dae4c6b55ad26c8fa6`; celo `0x4a241b9df1b54f983fd0dc094bc400fc93877da9`; celo `0x65e25c46cb80ae5f8118d6bcfa3b69d969799411`; celo `0x673f19caa81ae317aa9acdcb3a8b0593c174eecb`; celo `0x68da817fda9f7538eb75792536b5c5c7b5504785`; celo `0x93d52a66e6300baadc91b194a246fc349ba0ecf7`; celo `0xb53ce2e9c5222049a4b374bb404b0d5f92d8d96a`; celo `0xc834e7c2252bb1b9df90a7f161bc0877dc359afd`; celo `0xcc651797284339852a38f66c31fafa8ffe9e8fbe`; celo `0xdadd05185e053f7ccd308852237b1aa57a6f9303`; celo `0xdd944d35b87dfdfb8aa249a434ecc2c01d99f451`; celo `0xeaaf5597cd2a86d9933d38bc1482244078bc9149`; celo `0xf114c70fda914a96e06afdac06fe19fef8f5406a`; celo `0xff2ba5b9d1a97e872a451e43a0e28a2a2bc9fd2d` | ⚠️ Unaudited |
| BatchTransfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61a58822d24534fdb1b035ac8fb85611ce60be1b` | ⚠️ Unaudited |
| Bridge | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-378961 | 5 deployments: ethereum `0xbbbd1bbb4f9b936c3604906d7592a644071de884`; bsc `0xbbbd1bbb4f9b936c3604906d7592a644071de884`; polygon `0xbbbd1bbb4f9b936c3604906d7592a644071de884`; celo `0xbbbd1bbb4f9b936c3604906d7592a644071de884`; avalanche `0xbbbd1bbb4f9b936c3604906d7592a644071de884` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 13 deployments: ethereum `0x609c690e8f7d68a59885c9132e812eebdaaf0c9e`; ethereum `0xa314330482f325d38a83b492ef6b006224a3bea9`; optimism `0x97e5bf5068ea6a9604ee25851e6c9780ff50d5ab`; bsc `0x3c4fa639c8d7e65c603145adad8bd12f2358312f`; bsc `0x7e6c2522fee4e74a0182b9c6159048361bc3260a`; unichain `0x782e918ed2b3d161e90c5e154fed3e93d705c598`; polygon `0x7775d63836987f444e2f14aa0fa2602204d7d3e0`; sonic `0x801217549ab4b0860bb506b1cbff90f42819a116`; base `0x001e3f136c2f804854581da55ad7660a2b35def7`; arbitrum `0x9ce3447b58d58e8602b7306316a5ff011b92d189`; celo `0x80858f5f8efd2ab6485aba1a0b9557ed46c6ba0e`; avalanche `0x9068e1c28941d0a680197cc03be8afe27ccaeea9`; aurora `0xbbbd1bbb4f9b936c3604906d7592a644071de884` | ⚠️ Unaudited |
| CctpBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 11 deployments: ethereum `0x965a5ea29186a4ee65b1f1d9bdbf6260dc5f31d1`; ethereum `0xc51397b75b783e31469bfaade79913f3f82210d6`; optimism `0x08391edf36f41f05d27a1e0fd7a29448417c1cd0`; optimism `0x125ead5f5979a427d8e505a33f381c67d413b5d2`; polygon `0x43330f1b5f4fe753af6d99b9a37bc74309166dcf`; polygon `0x710282bfeb554ed0a34dfad061c7c343221ac82c`; base `0x1efe2c85989d97febbd0743cdd79b9f0826314f6`; base `0xaefb62fe72112f9c53a72ed7db42d0db7556af62`; arbitrum `0x23e1aec13c92158643cf2aa17e155d27a792ccdb`; arbitrum `0x2ed0952cbd9fe7c53b7d869a68dccd5486b98a29`; avalanche `0x791a36495d2ea25cd82b6fe57d8706346647ba6d` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92f7cc43fcba972c4296d851cc31c33676fb9bf4` | ⚠️ Unaudited |
| DucklingsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x435b74f6dc4a0723ca19e4dd2ac8aa1361c7b0f0`; polygon `0x6966c831da8641881333c3afe8d9fcb98a6a7add` | ⚠️ Unaudited |
| DucklingsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ba842c5190536230105550fd8dbb5446efe2499` | ⚠️ Unaudited |
| DucklingsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x1debb826578c6736898982d6c6b4b8511a1febe2`; polygon `0x8056f8cd1349d7e0ac058f84140a48fc8da6b4d0` | ⚠️ Unaudited |
| DuckyFamilyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x2e13807a9b9577651f37322fc79ae786fff57977`; polygon `0x7cf9edae30def7e19ae5aca6a41e7aad9f37c1c8`; polygon `0xb66bf78cad7cbab51988ddc792652cbabdff7675` | ⚠️ Unaudited |
| Election | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x169c946c9f70094b8ad74ee16477f27e713009bc`; celo `0x3db69cf778dfa1d60145731d9ce09a674c9f6f28`; celo `0xbd7d392bb2ef07063256e875f363d4fb2931780e` | ⚠️ Unaudited |
| EpochManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x91e35ccea07a15af477e189c1e2bd12569dfc535` | ⚠️ Unaudited |
| EpochRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x33285cab4df24f37899dc14f324530661c63464b`; celo `0x4cadba6ae9984b408b492a3f8f451e1bb3562aba`; celo `0x9dc549eeb4fca1b2c00e55aa771144321ff050d9` | ⚠️ Unaudited |
| ERC20Lookup | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e7285c3e47c242e3ad62edd5d0f19886f1e7ef0` | ⚠️ Unaudited |
| FeeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | ⚠️ Unaudited |
| FixedAmountVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x187b9ba6dc6df1c03c39afe6711c2216181c8f80`; ethereum `0x6d24635cef57a5920ab613ca0c30f286ae73c820`; ethereum `0xabccdff5917721bc07f1d3223ddbe46c1d535af9`; bsc `0xacfde449b2950364972522f63d8e4afc90bfd768` | ⚠️ Unaudited |
| GasOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0bdf6139f2841a7856ca154d851182c52f5b96e0`; optimism `0x4ad835ffa57e5e1e82514b2ba01d21fc15199d9a`; bsc `0xcaf00d24ebdde93729aef967ffa5864eb3b9689b`; polygon `0x163f2070eb345836b7321d1c2168bcb1f329d612`; base `0x7b2f61d7d5a775af43294bc48f82c861e57c6841`; base `0x7b806aebcf82cecfb43e0e3df749c5232942f6d6`; arbitrum `0x2476b2f821612afbf01dfc51e4cd4d7b77ebcb10`; avalanche `0x175fda4260b8be64eaf6090a9c7b84b9c1a2d29e` | ⚠️ Unaudited |
| GoldToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2`; celo `0xb165169b8cccc849108d81d094d6f49324b2c19d`; celo `0xfea1b35f1d5f2a58532a70e7a32e6f2d3bc4f7b1` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 3 deployments: celo `0x40bca46d9f7db71ecaa1e76655c3038a5a1824e6`; celo `0x40cac0be7e25b14e39f782d5b7e5c3076aa6c57a`; celo `0xf51d27777e5b2b910e0caad467ae945e4b7a215d` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e`; celo `0xed1073ce5fe09f2310f0993c0b558a92d46dbe14` | ⚠️ Unaudited |
| HAPI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54` | ⚠️ Unaudited |
| HAPIBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54` | ⚠️ Unaudited |
| HedgetToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7d8d35eba58a0935ff2d5a33df105dd9f071731` | ⚠️ Unaudited |
| ImpossibleFinance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0e1fc65c1a741b4662b813eb787d369b8614af1` | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa86051f29c45218b5f6cd121ebafb690660d047c` | ⚠️ Unaudited |
| LPStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff3dfebdc111178297289003aabe7cee36a87286` | ⚠️ Unaudited |
| Messenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x203e8785b4d4312c4152d0c42ba3fa8bd79086da`; optimism `0x309a090e3fe6b122b23c6ca6df51f83d7a093695`; bsc `0x3c37bdd7acae01a8b14e0ad8be52e7ea5066c27f`; polygon `0x3e03835dbf5cbd4cfa28f1b8587b80810838451c`; base `0x9bc674e2ce891f34dd8a7531ff291e9579558271`; arbitrum `0xd5826d4d30c112b2ba0178a03be0cdd3f6bc4f9d`; avalanche `0xfd6e9dce8f98b1093049430de242ffaa7336446f` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ace30394aec6a47120626893878b11010ed6368` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7583619e11a92b22419e4c10140e0876b68670b6` | ⚠️ Unaudited |
| NftBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x999cdf7e4a9e95d499bfef29f349e02cf2b4bced` | ⚠️ Unaudited |
| OUpgradeable | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | 2 deployments: unichain `0x63f2f03b44bbbd04483dbeb1b2615f6ef1116ad8`; unichain `0xf48e70a5149ca9a70086aec094cbf4f79dcd32e3` | ⚠️ Unaudited |
| PEN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee3188a3f8adee1d736edd4ae85000105c88f66` | ⚠️ Unaudited |
| PortfolioToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbeff0ca03f5a9d4eb79057c81d2596265a63120d` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x818861321540148dbf6058d585cc0427f273c97a`; unichain `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88f042fdea1d94ccd7b848686f9f529552085110` | ⚠️ Unaudited |
| StableTokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | `0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73` | ⚠️ Unaudited |
| StakedUSDeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | 3 deployments: unichain `0x01bff41798a0bcf287b996046ca68b395dbc1071`; unichain `0x9151434b16b9763660705744891fa906f660ecc5`; unichain `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | ⚠️ Unaudited |
| TreasureVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x68d1e3f802058ce517e9ba871ab182299e74d852`; polygon `0xa0f014328cb057f0d05620d9cf216599f6d246d8` | ⚠️ Unaudited |
| TwoWeeksNotice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee170d3dc00f792e5116b42fe36628f4f28626f6` | ⚠️ Unaudited |
| USDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9edd5852cd905f086c759e8383e09bff1e68b3` | ⚠️ Unaudited |
| USDeOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x93746538d4519c809827205bd1c2c7a0e15bd74b`; celo `0x93746538d4519c809827205bd1c2c7a0e15bd74b` | ⚠️ Unaudited |
| Validators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa47961bf08da4267825866757f6e469a40c8dc95` | ⚠️ Unaudited |
| WormholeMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: optimism `0xf98a3766b5ce2bf597f997976c177e7f9649e377`; arbitrum `0x5f4e0a6b848db318f4afc0b238c09747eebfc313` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xa11bd36801d8fa4448f0ac4ea7a62e3634ce8c7c`; ethereum `0xf7413489c474ca4399eee604716c72879eea3615`; bsc `0x37dfacfaeda801437ff648a1559d73f4c40aacb7`; polygon `0x14743e1c6f812154f7ecc980d890f0f5234103e7` | ⚠️ Unaudited (bytecode match) |
| WrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 39 deployments: ethereum `0x08709543199edd2c0fa6937651695d88eef1863f`; ethereum `0x2bd1f344a2398340c2b1119da98816ea723f5f0f`; ethereum `0x34ac7e32ff0e580893aeb0743a1e798baa52d469`; ethereum `0x48b847cf774a5710f36f594b11fc10e2e59bba72`; ethereum `0x572614bd5bf32bc8d9cc3ebb8ac247d9f49ab9da`; ethereum `0x934ac3ffdc82a3abcc71c1831bdf5c766f6ee8a9`; ethereum `0xac5c23cc0bf378b2f2d53da71d407b6deb94c294`; bsc `0x4f161eb257cd81a73e4ef2f9bc8140853ef8ce9e`; bsc `0x6756d5d8248a953f8e76ea04b148eca2934b86fd`; bsc `0x68784ffaa6ff05e3e04575df77960dc1d9f42b4a`; bsc `0x9df465460938f9ebdf51c38cc87d72184471f8f0`; bsc `0xa0a9961b7477d1a530f06a1ee805d5e532e73d97`; polygon `0x04429fbb948bbd09327763214b45e505a5293346`; polygon `0x42a16b9e0559bad3eb8cae2c4fb26f6b83a1fd01`; polygon `0x5639c414d3565ac8ba7a997fd4b90d6a6a319543`; polygon `0x707d64c2b2adab083dd526d107368754a4830b4d`; polygon `0x72bd80445b0db58ebe3e8db056529d4c5faf6f2f`; polygon `0x7dff46370e9ea5f0bad3c4e29711ad50062ea7a4`; polygon `0xb6ebc3ca1741a8f37551e44a51ec00ad417b38ca`; polygon `0xbe276e3d5060b0e770fe0260bb6be94ac19b4b19`; polygon `0xbe80960b6f71648776402617997f62a070a9547c`; polygon `0xfc69f13054da5d478badea17495c3460983c8831`; celo `0x173234922eb27d5138c5e481be9df5261faed450`; celo `0x33827b26dca7f82c37b70940905e21dad00e941d`; celo `0x47264ae1fc0c8e6418ebe78630718e11a07346a8`; celo `0x6e512bfc33be36f2666754e996ff103ad1680cc9`; celo `0x8d2c7789652342e9405a15fa4f4721362495f92d`; celo `0x8e3670fd7b0935d3fe832711debfe13bb689b690`; celo `0xed193c4e69f591e42398ef54dea65aa1bb02835c`; avalanche `0xafc43610c7840b20b90caaf93759be5b54b291c9`; aurora `0x0f00576d07b594bdc1caf44b6014a6a02e5afd48`; aurora `0x0fad0ed848a7a16526e8a7574e418b015dbf41b5`; aurora `0x2bae00c8bc1868a5f7a216e881bae9e662630111`; aurora `0x486d4c62b50febf379749206ca982e68b83d785b`; aurora `0x5c92a4a7f59a9484afd79dbe251ad2380e589783`; aurora `0x5ce9f0b6afb36135b5ddbf11705ceb65e634a9dc`; aurora `0x7b8d182a04a364966b17639901f6e40199bc51eb`; aurora `0xb14674c7264ec7d948b904aab2c0e0f906f6e762`; aurora `0xc4bdd27c33ec7daa6fcfd8532ddb524bf4038096` | ⚠️ Unaudited (bytecode match) |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378962 | 4 deployments: ethereum `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4`; bsc `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4`; polygon `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4`; celo `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4` | ⚠️ Unaudited (bytecode match) |
| MultiSig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 9 deployments: celo `0x066f672c03347a24ee3f52d1f184f04f7abd25f2`; celo `0x120c00afa9052583402ea361f43d9683c849e892`; celo `0x65534a1cedacc6ef812f751b459db7660e043372`; celo `0x68e231b208d82dedba0cf7d97db0d3bf9bee3903`; celo `0x72306ff91e79054e35a785d3831b215dd072c33d`; celo `0xad52b8aa73b45b0872fe05d5de2c10123414e7fc`; celo `0xb7feac258e081415c84b7f4b1092057610ff582a`; celo `0xbcb789aabd2bf7be0a4a6674676b49787cc3a567`; celo `0xc99d541743e0570f2eebb76ac435de0c8edd411e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (156)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b337baeacb16789cde3c892161ab2f8a2b56bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3415ca7866c5e9ce91c9339edc2c050465fbd34b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3461fbef855092283b614affb8990e1739229644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x366a900efe79ae7244c4d1d279ee4a702adbee50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b91b21c40a8616145c718e28c2064026b0a04a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4074ab30ec58f97bbb65dc16de42efeb9eba3b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44f9e60cb5543777492101bf424271c5f252cf15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47dfcb3ace023e67b5afe993de133db2f6191bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d1f11edbf9e31518cb446f01a42eb062be8b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788ba01f8e2b87c08b142db46f82094e0bdcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7972d6907739593c00e6284c53c83db3ecd15c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93746538d4519c809827205bd1c2c7a0e15bd74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d39a5de30e57443bff2a8307a4256c8797a3497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0719a996310968f0a0d62119ddc680f89965e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb24c64fec4e37286102f83ade84dfca68ee60efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc8889eab536cb8a6d4e7d017955927a18f9c2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0b6e0a0e1ddb6476afd64da80b990c24def31e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec455ffc19811e573eb5700a1bdff6ee1c47ab7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4830e4f739c8eb04efdbf346bae5c82163da83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x63b693ba799bc003af1a3876b5a42a180155e933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xea725154acf2eba1e40a95bdea4e483ef2b077f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf357f3acec30f500e2bce60e1dfaf133c2bce9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0556c743849d4313ca29b852a672322ae7cbe29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a76cba3184c4890e952868e5b31c5e0e59229c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ac4a2f14927c7e038a3962b647dc7527d8a7229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dae5ebf279e792747dbdd2e6d6821a92f7d3bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f901628c63c92ed6ac63b725d8cd43222db5724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c13534907240c087fa9a0794490e31d939a2a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3420cce6525d3de70c53afb130a7271eae71c4b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3461fbef855092283b614affb8990e1739229644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34e27b6fcdda8ac35165a5eda5e0b304973b6954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37bb143e75daa6441e6cbc86722eb441318bf175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x442ca9ea9639907bd972e861e992bc262afdaf5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x454d108b34f8d1ad2635f6bfed560eed598afb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47dfcb3ace023e67b5afe993de133db2f6191bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b0b251141ad1b3d97d0616be1d23bdf32c6a5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x619c99704e96ae47bf6da65a3743a5954ec05ffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ae4b103d94013b06f372f4643a862cea12ff416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x749cf83ebd327a71bfbd16515ff39f6c0610eaea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x776bfe83afdac97b2ba100ebe245dae6331ac0e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x779fd5a8c10b7a10f872044fc881a93cd16a2da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x788ba01f8e2b87c08b142db46f82094e0bdcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7bb5df7946c4a8c4052b4687021f1a12ac8a8cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d5c70098db4609bab316194e76be07a0ffcee0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80f9553b9e727b43c80f26ca66cb71a2e9af396b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8445b8c4982c4bff1bf1e4783c33e5afe1a153d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f6c5f3d1608b35eff12a1f5f9cdb5f0030a3f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95603f9c514cbdade161b05c245a2d2a9366ea40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6908338c4f3ca28a5b9c1aa44daf614ab204c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3404f90a0fb98c37a3b75960752114d1bb2ea1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbabbcf30dc646e289ecc0a78bab0def3607bcf25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc06ebbb9b1dd1a0567fc88a238bf7c9a9c0e1b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc259b013cd89c728d3a875802b280a24111bbae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3e289a12649b64036cb3553b2125f9ec8801989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc4e747b51c051bc203c50818ea6aec8f81fd416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd41efce21b10ab7cdbf9f4c8e30abf751c3731b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd16ab80c8e5b1d1d48b55e633624c8062ada6204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1f17f253fa38e20b0897beae2223d6ba281cccd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bsc | unit-378980 | `0xda0a16c0ae74f54c963add44016085f11d99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe230746230e96e75069c3cff6ff7944a887df236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4631d8d498ac7fd9b403345ad9a6a62d44fb58b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecc1aeaca10c8a8c0dcd29c83a6ecdeca9fc14c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf119b1812d7c4a60ec42be8251d7a566473e2022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x13313c46533ca196577edd74c578c09d95524c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3070c6e39854ad792f55e8d34ac6db339ce85486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x44abfa4c87ec30a7c49063b7610cab73a5f62cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xe8a580782942e072c57bcf7db8329c7a7cc0528b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0fad0ed848a7a16526e8a7574e418b015dbf41b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3461fbef855092283b614affb8990e1739229644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44aaa9ebafb4557605de574d5e968589dc3a84d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x620a787b4611a9a64468f730df83201dcbb21aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x788ba01f8e2b87c08b142db46f82094e0bdcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9bb344c7414b794200b7eba5c22c5d5acde75cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1f17bf0d1dc2199d299433872618ac87d889d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb25bdd9723e86067e26c9dd93dbfabe2826d96f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb30d4d3e68288e69ce5c7e58601f4d9cf04a4832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb43b971fa3a385bc291ec5a244b1b9324f746fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd328809185bf58ddc7f56911130f80e50a20595b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd452682b4103d93c0917b5e8db94271ba6d736c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-378966 | `0xda0a16c0ae74f54c963add44016085f11d99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbbe85a3e22f52f834c3d5ed627fb76db554669e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83b71ba2a4ee84b7d584b353628cd47f87e170c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x92b0336fbb9571b0589a9b8a97dca6d44976634e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5b78bd88be3cab57d264f81cfe28fbf846aac70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 8 deployments: fantom `0x1bb92e03d2bdf3d7849296ff7f9685696b0caa39`; fantom `0x44f7237df00e386af8e79b817d05ed9f6fe0f296`; fantom `0x543acd673960041eee1305500893260f1887b679`; harmony `0x5cb5249d420639619ffd637c79f0aa5c0a9fcd4b`; harmony `0x788ba01f8e2b87c08b142db46f82094e0bdcad4f`; harmony `0xa21aab22a0baf9fff3392b0afc5115b955664fd4`; harmony `0xcc9d144a8a8a1e71d5ec66a13f301b9e0137e71c`; harmony `0xf80ed129002b0ee58c6d2e63d0d7dc9fc9f3383c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378967 | `0xbbbd1bbb4f9b936c3604906d7592a644071de884` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378969 | `0xda0a16c0ae74f54c963add44016085f11d99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x214d972b8c869cfce50d55b595adc7ef336d7fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dc269b32e9bb712bbdd273a5e1f1b2e709cd337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f4be852679c595ee265b17a345a0702eca908e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc75553c50fe39a0792e5aa3eb600665305e307fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0c33305fe122a13fb038a8f030f6a070dc67188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05266f84c2723f40f615b6788ee3501f543cfe60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24c679b95de4cf18c5da20379afee3f23947e560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42f9e82fc2216969364bf825dc8f60729f01ad9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ab965398d50f72326f7039dde7f053c7c543c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7746e4f73578021850e135f8bae6920333bea56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ed5343dfc95dc3ebe5b6de64f5b5423a888ca18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d7124785662540c9783709eca7c5f8686574eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa82b9e6a839a59758af8e626a5428e22cbe54d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb074e73e637e778be6411c3732bd58d44194fdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb51905591b470304e11659f269eee25b920f9f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf8d0c2168db073411f6f6c65e3171df97ef6f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe76d1b070f9f596a7c5b75984814059f9866f130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd22b7a44d02d2c90b992ca821518870f37c5423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x03e39a4747a5ad250cefb64650194228a37d1089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x08a4b5bc1b5adef0a283c8f0185ded6169f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0cb6fd1a8fef2a7ebb29b6d5083742a35b42422f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0d6d2cfbfd48ea8aae0b93a70865dd834ef2900a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1b7a4130827f8531626baeee53fe02ea1c8865b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1e3d01fe61d1bc29a34106c682a79b1c4142ba5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2dad1cd6b9597fd2b4f421aae872c4f66d64f261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x30584e0bd69e6224b256b5a9cbbec8b6c09f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3461fbef855092283b614affb8990e1739229644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4efa94f406f528ec092b896ea8b0ddffe38bc05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x55f3b4d42c0e4371a6f84d46db6e3b328eecb381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5f86cc55fd976c3dd8312e2e6b7ae8cde0e156f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6da06a99b69db929c3f3a65a98326909fe806ef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x788ba01f8e2b87c08b142db46f82094e0bdcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8bc96d9993c7613fe9a3abe00c3e302126272e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8fa40716f77370136ee18cade16f47afaceedf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb658b5de9d6711a0ca35d1e8d688e09c67be2b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb766b62df547b26e1e46c91739f43da4562fe062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb98746b9b2f00aa17e801a679323a5657bae9feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbc4ee75a5a40fba468baaeb489ebb9ab2f0f606a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc682c381ceccbffd82b25f38e518f5b50b67330d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcb32eaf22ee39fc5f8592f1720d0010150d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd0716cb2023cf22cff63a632b50c677083015c3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | celo | unit-378973 | `0xda0a16c0ae74f54c963add44016085f11d99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xddf776d8069d1684dbc7ca024cc5671a8a0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf0c3fc63a19d22d7ef81cb360c2e4fcc8e3e8b34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48b847cf774a5710f36f594b11fc10e2e59bba72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b0093a44802bd870fc20e811862875f0f1e5970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x513d0d9a59c5e118c547c9ddcd8a5f377efcd5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fbf8d23fa705a0badb6f398fdcdc28fccb521c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65de05fccce36ce7fddd668ef4348d9e933b57ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7131573275c620edab32d14c072511c83c32db10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x788ba01f8e2b87c08b142db46f82094e0bdcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93746538d4519c809827205bd1c2c7a0e15bd74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a3b53fdd66cead3a70bca17f342a2ff18007388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa666ec89ccb1740099a8ba3de624e87efb297bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd36ce955b14d2f95142dd93f1f5360639a2b010a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-378976 | `0xda0a16c0ae74f54c963add44016085f11d99eabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdcf5797a652bde009144900454980656b4ea40d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf216f287065e2c838846832d975cd784527fd100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x30572ffc59a4b478ed26dfe6aa71a51cd142da34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x39a421b7483e9fef39945a047637f8bad260e2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x78ca677b2357c71e79e36cba171529f08e5ce665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf3dd9d692a9b4df331e3bb1c8f322ba0b299b907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x788ba01f8e2b87c08b142db46f82094e0bdcad4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x93746538d4519c809827205bd1c2c7a0e15bd74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 154
- Live contracts: 0
- Unknown liveness contracts: 154
- Source-verified contracts: 69
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=41, source verified unclassified=28, unverified unclassified=85

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | candidate review | CctpBridge<br>`0x2ed0952cbd9fe7c53b7d869a68dccd5486b98a29` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x909af1c7dd693daa4f8ad76d16e74e8337159d08` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x24c679b95de4cf18c5da20379afee3f23947e560` | non_address_book | unknown | unknown | unverified | n/a | `0x909af1c7dd693daa4f8ad76d16e74e8337159d08` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x42f9e82fc2216969364bf825dc8f60729f01ad9b` | non_address_book | unknown | unknown | unverified | n/a | `0x909af1c7dd693daa4f8ad76d16e74e8337159d08` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ab965398d50f72326f7039dde7f053c7c543c30` | non_address_book | unknown | unknown | unverified | n/a | `0x909af1c7dd693daa4f8ad76d16e74e8337159d08` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7746e4f73578021850e135f8bae6920333bea56a` | non_address_book | unknown | unknown | unverified | n/a | `0x909af1c7dd693daa4f8ad76d16e74e8337159d08` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb51905591b470304e11659f269eee25b920f9f82` | non_address_book | unknown | unknown | unverified | n/a | `0x909af1c7dd693daa4f8ad76d16e74e8337159d08` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdf8d0c2168db073411f6f6c65e3171df97ef6f04` | non_address_book | unknown | unknown | unverified | n/a | `0x909af1c7dd693daa4f8ad76d16e74e8337159d08` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfd22b7a44d02d2c90b992ca821518870f37c5423` | non_address_book | unknown | unknown | unverified | n/a | `0x909af1c7dd693daa4f8ad76d16e74e8337159d08` |
| arbitrum | candidate review | StakedUSDeOFT<br>`0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xaa439fb33e55306c7c79841f20121b4c4139f3dc` |
| aurora | candidate review | Bridge<br>`0xbbbd1bbb4f9b936c3604906d7592a644071de884` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | candidate review | WrappedToken<br>`0x0f00576d07b594bdc1caf44b6014a6a02e5afd48` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | candidate review | WrappedToken<br>`0x0fad0ed848a7a16526e8a7574e418b015dbf41b5` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | candidate review | WrappedToken<br>`0x486d4c62b50febf379749206ca982e68b83d785b` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | candidate review | WrappedToken<br>`0x5c92a4a7f59a9484afd79dbe251ad2380e589783` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | candidate review | WrappedToken<br>`0x5ce9f0b6afb36135b5ddbf11705ceb65e634a9dc` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | candidate review | WrappedToken<br>`0x7b8d182a04a364966b17639901f6e40199bc51eb` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | candidate review | WrappedToken<br>`0xb14674c7264ec7d948b904aab2c0e0f906f6e762` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | candidate review | WrappedToken<br>`0xc4bdd27c33ec7daa6fcfd8532ddb524bf4038096` | non_address_book | token | unknown | verified | review: no_fresh_structural_match | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | unverified unclassified | UnnamedContract<br>`0x93746538d4519c809827205bd1c2c7a0e15bd74b` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| aurora | unverified unclassified | UnnamedContract<br>`0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x513d0d9a59c5e118c547c9ddcd8a5f377efcd5ac` | non_address_book | unknown | unknown | unverified | n/a | `0x1033ad5796cc40dedda6fd615a7ceffcc543f48c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9a3b53fdd66cead3a70bca17f342a2ff18007388` | non_address_book | unknown | unknown | unverified | n/a | `0x1033ad5796cc40dedda6fd615a7ceffcc543f48c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd36ce955b14d2f95142dd93f1f5360639a2b010a` | non_address_book | unknown | unknown | unverified | n/a | `0x1033ad5796cc40dedda6fd615a7ceffcc543f48c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x48b847cf774a5710f36f594b11fc10e2e59bba72` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x93746538d4519c809827205bd1c2c7a0e15bd74b` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| avalanche | candidate review | CctpBridge<br>`0x791a36495d2ea25cd82b6fe57d8706346647ba6d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8ccf58ffc82b6c493071db39cfbdcf1452a4b096` |
| base | candidate review | CctpBridge<br>`0xaefb62fe72112f9c53a72ed7db42d0db7556af62` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa58443cb3f2512f5e7948815bdabae4cfe54ce5f` |
| base | candidate review | GasOracle<br>`0x7b2f61d7d5a775af43294bc48f82c861e57c6841` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa58443cb3f2512f5e7948815bdabae4cfe54ce5f` |
| bsc | source verified unclassified | FixedAmountVesting<br>`0xacfde449b2950364972522f63d8e4afc90bfd768` | non_address_book | unknown | unknown | verified | n/a | `0x2fa9300f668208f8c196bb77cc46756570d6e006` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47dfcb3ace023e67b5afe993de133db2f6191bfd` | non_address_book | unknown | unknown | unverified | n/a | `0x2fa9300f668208f8c196bb77cc46756570d6e006` |
| bsc | source verified unclassified | WrappedToken<br>`0x6756d5d8248a953f8e76ea04b148eca2934b86fd` | non_address_book | unknown | unknown | verified | n/a | `0x5ca1144c26d31eabc3afa585df062d4b3a336347` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ac4a2f14927c7e038a3962b647dc7527d8a7229` | non_address_book | unknown | unknown | unverified | n/a | `0x5ca1144c26d31eabc3afa585df062d4b3a336347` |
| bsc | source verified unclassified | NftBridge<br>`0x999cdf7e4a9e95d499bfef29f349e02cf2b4bced` | non_address_book | unknown | unknown | verified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0dae5ebf279e792747dbdd2e6d6821a92f7d3bfc` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3420cce6525d3de70c53afb130a7271eae71c4b6` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x454d108b34f8d1ad2635f6bfed560eed598afb10` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b0b251141ad1b3d97d0616be1d23bdf32c6a5f6` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x619c99704e96ae47bf6da65a3743a5954ec05ffd` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7bb5df7946c4a8c4052b4687021f1a12ac8a8cdc` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x80f9553b9e727b43c80f26ca66cb71a2e9af396b` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6908338c4f3ca28a5b9c1aa44daf614ab204c78` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbabbcf30dc646e289ecc0a78bab0def3607bcf25` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcc4e747b51c051bc203c50818ea6aec8f81fd416` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd16ab80c8e5b1d1d48b55e633624c8062ada6204` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4631d8d498ac7fd9b403345ad9a6a62d44fb58b` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xecc1aeaca10c8a8c0dcd29c83a6ecdeca9fc14c6` | non_address_book | unknown | unknown | unverified | n/a | `0x660c08e438b4e6748aa7816fc00a106009e7951f` |
| bsc | source verified unclassified | FeeOracle<br>`0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | non_address_book | unknown | unknown | verified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| bsc | source verified unclassified | Validator<br>`0x93746538d4519c809827205bd1c2c7a0e15bd74b` | non_address_book | unknown | unknown | verified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0556c743849d4313ca29b852a672322ae7cbe29c` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ae4b103d94013b06f372f4643a862cea12ff416` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8445b8c4982c4bff1bf1e4783c33e5afe1a153d7` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb3404f90a0fb98c37a3b75960752114d1bb2ea1d` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc259b013cd89c728d3a875802b280a24111bbae1` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcd41efce21b10ab7cdbf9f4c8e30abf751c3731b` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| bsc | candidate review | GasOracle<br>`0xcaf00d24ebdde93729aef967ffa5864eb3b9689b` | non_address_book | operational_periphery | unknown | verified | review: no_fresh_structural_match | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | candidate review | Messenger<br>`0x3c37bdd7acae01a8b14e0ad8be52e7ea5066c27f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | candidate review | Pool<br>`0x179aad597399b9ae078acfe2b746c09117799ca0` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | candidate review | Pool<br>`0xb19cd6ab3890f18b662904fd7a40c003703d2554` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | candidate review | Pool<br>`0xb19dad6712a5e4dcbb8280fef5735aa826da0e02` | non_address_book | core_logic | unknown | verified | review: no_fresh_structural_match | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | source verified unclassified | Bridge<br>`0x7e6c2522fee4e74a0182b9c6159048361bc3260a` | non_address_book | operational_periphery | unknown | verified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0a76cba3184c4890e952868e5b31c5e0e59229c4` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c13534907240c087fa9a0794490e31d939a2a05` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34e27b6fcdda8ac35165a5eda5e0b304973b6954` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x37bb143e75daa6441e6cbc86722eb441318bf175` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x749cf83ebd327a71bfbd16515ff39f6c0610eaea` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x776bfe83afdac97b2ba100ebe245dae6331ac0e2` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x779fd5a8c10b7a10f872044fc881a93cd16a2da2` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7d5c70098db4609bab316194e76be07a0ffcee0f` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8f6c5f3d1608b35eff12a1f5f9cdb5f0030a3f86` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc06ebbb9b1dd1a0567fc88a238bf7c9a9c0e1b1f` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3e289a12649b64036cb3553b2125f9ec8801989` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd1f17f253fa38e20b0897beae2223d6ba281cccd` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe230746230e96e75069c3cff6ff7944a887df236` | non_address_book | unknown | unknown | unverified | n/a | `0x86aac4b7821a5d6e709ed27c152fc33cc558d5e8` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3461fbef855092283b614affb8990e1739229644` | non_address_book | unknown | unknown | unverified | n/a | `0xe29667f4f7ab97e81a49e29b9ebf18439cfcae30` |
| bsc | source verified unclassified | LPStaker<br>`0xff3dfebdc111178297289003aabe7cee36a87286` | non_address_book | unknown | unknown | verified | n/a | `0xebdde0641202ea77af5edaa105ae6a6c006c6551` |
| bsc | source verified unclassified | MultiSend<br>`0x3ace30394aec6a47120626893878b11010ed6368` | non_address_book | unknown | unknown | verified | n/a | `0xebdde0641202ea77af5edaa105ae6a6c006c6551` |
| bsc | source verified unclassified | MultiSigWalletWithDailyLimit<br>`0x7583619e11a92b22419e4c10140e0876b68670b6` | non_address_book | unknown | unknown | verified | n/a | `0xebdde0641202ea77af5edaa105ae6a6c006c6551` |
| bsc | source verified unclassified | TwoWeeksNotice<br>`0xee170d3dc00f792e5116b42fe36628f4f28626f6` | non_address_book | unknown | unknown | verified | n/a | `0xebdde0641202ea77af5edaa105ae6a6c006c6551` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1f901628c63c92ed6ac63b725d8cd43222db5724` | non_address_book | unknown | unknown | unverified | n/a | `0xebdde0641202ea77af5edaa105ae6a6c006c6551` |
| bsc | unverified unclassified | UnnamedContract<br>`0x442ca9ea9639907bd972e861e992bc262afdaf5c` | non_address_book | unknown | unknown | unverified | n/a | `0xebdde0641202ea77af5edaa105ae6a6c006c6551` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95603f9c514cbdade161b05c245a2d2a9366ea40` | non_address_book | unknown | unknown | unverified | n/a | `0xebdde0641202ea77af5edaa105ae6a6c006c6551` |
| celo | source verified unclassified | WrappedToken<br>`0x33827b26dca7f82c37b70940905e21dad00e941d` | non_address_book | unknown | unknown | verified | n/a | `0x0ca8f5be54546996ec1e96a41870fc4477c4e664` |
| celo | unverified unclassified | UnnamedContract<br>`0x1b7a4130827f8531626baeee53fe02ea1c8865b7` | non_address_book | unknown | unknown | unverified | n/a | `0x0ca8f5be54546996ec1e96a41870fc4477c4e664` |
| celo | source verified unclassified | Validator<br>`0x93746538d4519c809827205bd1c2c7a0e15bd74b` | non_address_book | unknown | unknown | verified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| celo | unverified unclassified | UnnamedContract<br>`0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| celo | unverified unclassified | UnnamedContract<br>`0xf0c3fc63a19d22d7ef81cb360c2e4fcc8e3e8b34` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| celo | unverified unclassified | UnnamedContract<br>`0x3461fbef855092283b614affb8990e1739229644` | non_address_book | unknown | unknown | unverified | n/a | `0xe29667f4f7ab97e81a49e29b9ebf18439cfcae30` |
| ethereum | source verified unclassified | FixedAmountVesting<br>`0x187b9ba6dc6df1c03c39afe6711c2216181c8f80` | non_address_book | unknown | unknown | verified | n/a | `0x2fa9300f668208f8c196bb77cc46756570d6e006` |
| ethereum | source verified unclassified | FixedAmountVesting<br>`0x6d24635cef57a5920ab613ca0c30f286ae73c820` | non_address_book | unknown | unknown | verified | n/a | `0x2fa9300f668208f8c196bb77cc46756570d6e006` |
| ethereum | source verified unclassified | FixedAmountVesting<br>`0xabccdff5917721bc07f1d3223ddbe46c1d535af9` | non_address_book | unknown | unknown | verified | n/a | `0x2fa9300f668208f8c196bb77cc46756570d6e006` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x47dfcb3ace023e67b5afe993de133db2f6191bfd` | non_address_book | unknown | unknown | unverified | n/a | `0x2fa9300f668208f8c196bb77cc46756570d6e006` |
| ethereum | source verified unclassified | WrappedToken<br>`0x572614bd5bf32bc8d9cc3ebb8ac247d9f49ab9da` | non_address_book | unknown | unknown | verified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| ethereum | source verified unclassified | WrappedToken<br>`0xac5c23cc0bf378b2f2d53da71d407b6deb94c294` | non_address_book | unknown | unknown | verified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x788ba01f8e2b87c08b142db46f82094e0bdcad4f` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93746538d4519c809827205bd1c2c7a0e15bd74b` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d39a5de30e57443bff2a8307a4256c8797a3497` | non_address_book | unknown | unknown | unverified | n/a | `0x8de54b1cefedeab1766b947c7d9a9963436e8fae` |
| ethereum | source verified unclassified | ERC20Lookup<br>`0x6e7285c3e47c242e3ad62edd5d0f19886f1e7ef0` | non_address_book | token | unknown | verified | n/a | `0x9724ce6209cb081ba172f756bc6c9cef924c7f72` |
| ethereum | candidate review | CctpBridge<br>`0x965a5ea29186a4ee65b1f1d9bdbf6260dc5f31d1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | candidate review | Pool<br>`0x1d3df13adae6ca91fb90b977c21d6e90ad8d403c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | candidate review | Pool<br>`0x542ad3c76e391b8436aaf0fbf4194bdaefa9ce97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | candidate review | Pool<br>`0xb827b15ada62d78f5cb90243bc4755cf4b9d1b0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | candidate review | Pool<br>`0xce01bc1be28c0784492cb44ebbda662c3f539172` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | candidate review | Pool<br>`0xe6fc2aa0e9882a29f2e6c5d963fcaa7ed297063c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | source verified unclassified | Bridge<br>`0xa314330482f325d38a83b492ef6b006224a3bea9` | non_address_book | unknown | unknown | verified | n/a | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b337baeacb16789cde3c892161ab2f8a2b56bf2` | non_address_book | unknown | unknown | unverified | n/a | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x366a900efe79ae7244c4d1d279ee4a702adbee50` | non_address_book | unknown | unknown | unverified | n/a | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70d1f11edbf9e31518cb446f01a42eb062be8b4f` | non_address_book | unknown | unknown | unverified | n/a | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0719a996310968f0a0d62119ddc680f89965e58` | non_address_book | unknown | unknown | unverified | n/a | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb24c64fec4e37286102f83ade84dfca68ee60efa` | non_address_book | unknown | unknown | unverified | n/a | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0b6e0a0e1ddb6476afd64da80b990c24def31e7` | non_address_book | unknown | unknown | unverified | n/a | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4830e4f739c8eb04efdbf346bae5c82163da83f` | non_address_book | unknown | unknown | unverified | n/a | `0xd71d4811667fa1e23bf42b55a5fdde030a71837b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3461fbef855092283b614affb8990e1739229644` | non_address_book | unknown | unknown | unverified | n/a | `0xe29667f4f7ab97e81a49e29b9ebf18439cfcae30` |
| ethereum | source verified unclassified | Distributor<br>`0x92f7cc43fcba972c4296d851cc31c33676fb9bf4` | non_address_book | unknown | unknown | verified | n/a | `0xf2f93caff6e0ec62061521723a8a23b358d8b229` |
| linea | unverified unclassified | UnnamedContract<br>`0x30572ffc59a4b478ed26dfe6aa71a51cd142da34` | non_address_book | unknown | unknown | unverified | n/a | `0xe00750b911cf5c4dde6e06507f6badf8bb00b2b7` |
| linea | unverified unclassified | UnnamedContract<br>`0x78ca677b2357c71e79e36cba171529f08e5ce665` | non_address_book | unknown | unknown | unverified | n/a | `0xe00750b911cf5c4dde6e06507f6badf8bb00b2b7` |
| optimism | candidate review | CctpBridge<br>`0x125ead5f5979a427d8e505a33f381c67d413b5d2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfd224734d813275eab896027e0295f5683cfd9ce` |
| polygon | candidate review | CctpBridge<br>`0x43330f1b5f4fe753af6d99b9a37bc74309166dcf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | candidate review | Pool<br>`0x171f3f8ae9825667a51f31abcc085e2f92a47826` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | candidate review | Pool<br>`0x218556e82962a2442cf116104f2fa770ad0bd604` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | candidate review | Pool<br>`0x6d92cf0d4ae712817aad1a4ccac37145e19e3622` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x620a787b4611a9a64468f730df83201dcbb21aae` | non_address_book | unknown | unknown | unverified | n/a | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9bb344c7414b794200b7eba5c22c5d5acde75cf2` | non_address_book | unknown | unknown | unverified | n/a | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb25bdd9723e86067e26c9dd93dbfabe2826d96f5` | non_address_book | unknown | unknown | unverified | n/a | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb30d4d3e68288e69ce5c7e58601f4d9cf04a4832` | non_address_book | unknown | unknown | unverified | n/a | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb43b971fa3a385bc291ec5a244b1b9324f746fbc` | non_address_book | unknown | unknown | unverified | n/a | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd452682b4103d93c0917b5e8db94271ba6d736c6` | non_address_book | unknown | unknown | unverified | n/a | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdbbe85a3e22f52f834c3d5ed627fb76db554669e` | non_address_book | unknown | unknown | unverified | n/a | `0x1ac3e50ec3847ffcc4b45c141f0f5448c479483a` |
| polygon | candidate review | DucklingsV1<br>`0x6966c831da8641881333c3afe8d9fcb98a6a7add` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | candidate review | DucklingsV1<br>`0x8ba842c5190536230105550fd8dbb5446efe2499` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | candidate review | DuckyFamilyV1<br>`0x2e13807a9b9577651f37322fc79ae786fff57977` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | candidate review | DuckyFamilyV1<br>`0x7cf9edae30def7e19ae5aca6a41e7aad9f37c1c8` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | candidate review | ERC1967Proxy<br>`0x435b74f6dc4a0723ca19e4dd2ac8aa1361c7b0f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | candidate review | ERC1967Proxy<br>`0x68d1e3f802058ce517e9ba871ab182299e74d852` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | candidate review | ERC1967Proxy<br>`0x8056f8cd1349d7e0ac058f84140a48fc8da6b4d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | source verified unclassified | BatchTransfer<br>`0x61a58822d24534fdb1b035ac8fb85611ce60be1b` | non_address_book | unknown | unknown | verified | n/a | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | source verified unclassified | DucklingsV2<br>`0x1debb826578c6736898982d6c6b4b8511a1febe2` | non_address_book | unknown | unknown | verified | n/a | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | source verified unclassified | TreasureVault<br>`0xa0f014328cb057f0d05620d9cf216599f6d246d8` | non_address_book | unknown | unknown | verified | n/a | `0x2c9391752ae0ee8a01e00d8b77187ab6d6debc25` |
| polygon | source verified unclassified | WrappedToken<br>`0x42a16b9e0559bad3eb8cae2c4fb26f6b83a1fd01` | non_address_book | unknown | unknown | verified | n/a | `0x5b9deab40e3eec1c64aad35d8bd6b453c537926a` |
| polygon | source verified unclassified | WrappedToken<br>`0x5639c414d3565ac8ba7a997fd4b90d6a6a319543` | non_address_book | unknown | unknown | verified | n/a | `0x5b9deab40e3eec1c64aad35d8bd6b453c537926a` |
| polygon | source verified unclassified | WrappedToken<br>`0xbe80960b6f71648776402617997f62a070a9547c` | non_address_book | unknown | unknown | verified | n/a | `0x5b9deab40e3eec1c64aad35d8bd6b453c537926a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x44aaa9ebafb4557605de574d5e968589dc3a84d1` | non_address_book | unknown | unknown | unverified | n/a | `0x5b9deab40e3eec1c64aad35d8bd6b453c537926a` |
| polygon | source verified unclassified | WrappedToken<br>`0x707d64c2b2adab083dd526d107368754a4830b4d` | non_address_book | unknown | unknown | verified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| polygon | source verified unclassified | WrappedToken<br>`0xfc69f13054da5d478badea17495c3460983c8831` | non_address_book | unknown | unknown | verified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0fad0ed848a7a16526e8a7574e418b015dbf41b5` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa1f17bf0d1dc2199d299433872618ac87d889d0f` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6` | non_address_book | unknown | unknown | unverified | n/a | `0x83f53c078bf81f6d8b79e01e2ed36c473a960c5e` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd328809185bf58ddc7f56911130f80e50a20595b` | non_address_book | unknown | unknown | unverified | n/a | `0xdf65fea51b46b6d8871d3a64b30415e6460efc07` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3461fbef855092283b614affb8990e1739229644` | non_address_book | unknown | unknown | unverified | n/a | `0xe29667f4f7ab97e81a49e29b9ebf18439cfcae30` |
| unichain | candidate review | OUpgradeable<br>`0xf48e70a5149ca9a70086aec094cbf4f79dcd32e3` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| unichain | candidate review | ProxyAdmin<br>`0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| unichain | candidate review | TetherTokenOFTExtension<br>`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | non_address_book | adapter | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| unichain | candidate review | TransparentUpgradeableProxy<br>`0x63f2f03b44bbbd04483dbeb1b2615f6ef1116ad8` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view](https://drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view) | Kudelski Security | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [20211105-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211105-Neodyme.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [20211117-LeastAuthority.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211117-LeastAuthority.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [20220916-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20220916-Halborn.pdf) | Halborn | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20221104-AckeeBlockchain.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221104-AckeeBlockchain.pdf) | Ackee Blockchain | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [20221208-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221208-Halborn.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [20230607-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20230607-Neodyme.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [hacken.io/audits/allbridge](https://hacken.io/audits/allbridge) | Hacken | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view](https://drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [www.coinfabrik.com/blog/allbridge-audit-report](https://www.coinfabrik.com/blog/allbridge-audit-report) | CoinFabrik | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b](https://allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b) | Hacken | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view](https://drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view](https://drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view](https://drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view](https://drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view](https://drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view](https://drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view](https://drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view](https://drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view](https://drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view](https://drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view](https://drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view) | Kudelski Security | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view](https://drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1820] drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view — no match: Scope section lists three repositories (EVM, Solana, Info Server) but does not enumerate individual contract files. However, the Technical Analysis section explicitly lists five EVM contracts: Bridge, Farming, FeeOracle, Staking, WrappedToken. Solana and Info Server components are mentioned but not named individually.
- [9788] 20211105-Neodyme.pdf — no match: Extracted contract names from scope section and findings. The audit date is from the cover page: 'November 5, 2021'.
- [9789] 20211117-LeastAuthority.pdf — no match: The audit report covers three main components: Neon EVM (Rust EVM), EVM Loader, and Proxy Implementation. The Solidity contract SPL_ERC20_Wrapper is also mentioned in suggestions. The audit date is clearly stated on the cover page and throughout the report.
- [9790] 20220916-Halborn.pdf — no match: Only one program (evm-loader) is in scope. No individual contract names are provided beyond the program name.
- [9791] 20221104-AckeeBlockchain.pdf — no match: Scope includes two repositories: neon-evm and rust-evm. No individual contract files listed.
- [9792] 20221208-Halborn.pdf — no match: Only one program (evm-loader) is explicitly in scope. No individual contract names are provided beyond the program name.
- [9793] 20230607-Neodyme.pdf — no match: The report scope mentions the main Neon contract (evm_loader) and Solidity wrappers, but no specific contract names are listed. The audit date is from the cover page: 'June 7th, 2023'.
- [12352] hacken.io/audits/allbridge — no match: The text is a project overview page, not an audit report. No specific contracts, files, or audit date are provided.
- [12354] drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view — no match: The executive summary explicitly states the scope as 4 smart contracts: bridge-core, validator, fee-oracle, and wrapped-token. The date is from the cover page: 28.09.2022.
- [12355] www.coinfabrik.com/blog/allbridge-audit-report — no match: Scope section explicitly lists four files. Audit date is the final report date (2023-07-18) from changelog.
- [26291] allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b — no match: The text is a blog post announcing an audit by Hacken, but it does not list specific contract names or files in scope.
- [26304] drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view — no match: The provided text is a marketing recap, not an audit report. No contracts, scope sections, or audit dates are present.
- [26306] drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view — no match: The document is a monthly report for Allbridge Core, not an audit report. No contracts in scope are mentioned.
- [26309] drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view — no match: The provided text is a public report about Allbridge Core metrics and partnerships, not an audit report. No contracts in scope or audit date were found.
- [26312] drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view — no match: The document is a monthly recap report, not an audit report. It mentions an audit by Hacken but does not list any specific contracts in scope.
- [26316] drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view — no match: The provided text is a marketing report, not an audit report. No contracts in scope or audit date found.
- [26319] drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view — no match: The provided text is not an audit report; it appears to be marketing material for Allbridge. No contracts in scope or audit date were found.
- [26320] drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view — no match: The provided text is a marketing report, not an audit report. No contracts or audit date found.
- [26321] drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view — no match: The document is a monthly progress report (March 2022) for Allbridge, not an audit report. It mentions a partnership with Kudelski Security for a future audit but does not list any contracts in scope.
- [26322] drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view — no match: The document is a monthly update report for Allbridge, not a smart contract audit report. No contracts in scope are mentioned.
- [26327] drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view — no match: The document is a monthly report (September 2022) for Allbridge, not a smart contract audit report. No contracts in scope are listed.
- [26329] drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view — no match: The document is a public report about Allbridge Core and Classic metrics, product updates, and marketing. It mentions an audit by Cossack Labs but does not list any specific smart contracts in scope. No contract names or source files are identifiable.
- [26332] drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view — no match: The provided text is a marketing report for Allbridge, not an audit report. No contracts, source files, or audit date are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Bridge | ambiguous — not counted | Bridge (alternative) `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4` — deployed 2022-12-22 17:15:47+03 — liveness: live (current_address_book_code)<br>Bridge (alternative) `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4` — deployed 2022-12-22 17:18:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Farming | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | FeeOracle | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | Staking | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view | WrappedToken | unmatched — not counted | — | Listed in General Observations as part of Allbridge EVM Contracts | no |
| 20211105-Neodyme.pdf | Neon EVM | unmatched — not counted | — | Scope section: 'Neon-EVM / evm_loader – The main Neon contract' | no |
| 20211105-Neodyme.pdf | evm_loader | unmatched — not counted | — | Scope section: 'Neon-EVM / evm_loader – The main Neon contract' | no |
| 20211105-Neodyme.pdf | ERC20Wrapper | unmatched — not counted | — | Scope section: 'Includes all ERC20Wrapper code' and finding 'ERC20 Wrapper allows privilege escalation' | no |
| 20211105-Neodyme.pdf | SYSTEM_ACCOUNT_SOLANA | unmatched — not counted | — | Finding 'External Calls execute Solana instruction instantly' mentions 'built-in SYSTEM_ACCOUNT_SOLANA contract' | no |
| 20211105-Neodyme.pdf | SYSTEM_ACCOUNT_ERC20_WRAPPER | unmatched — not counted | — | Finding 'ERC20 Wrapper allows privilege escalation' mentions 'pre-compiled SYSTEM_ACCOUNT_ERC20_WRAPPER contract' | no |
| 20211117-LeastAuthority.pdf | Neon EVM | unmatched — not counted | — | listed in scope as Rust EVM repository | no |
| 20211117-LeastAuthority.pdf | EVM Loader | unmatched — not counted | — | listed in scope as EVM Loader repository | no |
| 20211117-LeastAuthority.pdf | Proxy Implementation | unmatched — not counted | — | listed in scope as proxy implementation repository | no |
| 20211117-LeastAuthority.pdf | SPL_ERC20_Wrapper | unmatched — not counted | — | mentioned in Suggestion 7 and Suggestion 8 | no |
| 20220916-Halborn.pdf | evm-loader | unmatched — not counted | — | listed in scope section as program in scope | no |
| 20221104-AckeeBlockchain.pdf | neon-evm | unmatched — not counted | — | listed in scope as repository | no |
| 20221104-AckeeBlockchain.pdf | rust-evm | unmatched — not counted | — | listed in scope as repository | no |
| 20221208-Halborn.pdf | evm-loader | unmatched — not counted | — | listed in scope section as program in scope | no |
| 20230607-Neodyme.pdf | Neon | unmatched — not counted | — | Scope section: 'The full main Neon contract (evm_loader), which includes, among other things, the EVM, an Executor, the storage interface, and additional built-in Ethereum programs to interface with Solana.' | no |
| hacken.io/audits/allbridge | Allbridge | unmatched — not counted | — | Project description mentions Allbridge as a token bridge; no specific contracts listed. | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | bridge-core | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | validator | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | fee-oracle | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view | wrapped-token | unmatched — not counted | — | listed as one of 4 smart contracts in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | bridge | ambiguous — not counted | Bridge (alternative) `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4` — deployed 2022-12-22 17:15:47+03 — liveness: live (current_address_book_code)<br>Bridge (alternative) `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4` — deployed 2022-12-22 17:18:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.coinfabrik.com/blog/allbridge-audit-report | i-stx | unmatched — not counted | — | listed in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | n-token | unmatched — not counted | — | listed in scope | no |
| www.coinfabrik.com/blog/allbridge-audit-report | w-token | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd5d6b2f2d7a7506c49bb0cb6fb39a67f065d6fc4` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 11 |
| standard_library | 4 |
| needs_review | 149 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 26 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=14
- Match method counts: n/a

Zero-match audit list:

- [1820] drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view
- [9788] 20211105-Neodyme.pdf
- [9789] 20211117-LeastAuthority.pdf
- [9790] 20220916-Halborn.pdf
- [9791] 20221104-AckeeBlockchain.pdf
- [9792] 20221208-Halborn.pdf
- [9793] 20230607-Neodyme.pdf
- [12352] hacken.io/audits/allbridge
- [12354] drive.google.com/file/d/1PV5MN6L5FGCLYEUnLa8D5LI4Ev5157EX/view
- [12355] www.coinfabrik.com/blog/allbridge-audit-report
- [26291] allbridge.medium.com/allbridge-successfully-completes-smart-contract-code-review-by-hacken-82e8497b1d2b
- [26304] drive.google.com/file/d/1lE-zwbrmNgVEDVa5t2pRCo9AiI2vvex3/view
- [26306] drive.google.com/file/d/1gZ2KcBPNM_JC_xstw4_dUYWkJSZRQy7L/view
- [26309] drive.google.com/file/d/1JugtjUUBP7CxlFzgQt4Dntkt2s-URzLH/view
- [26312] drive.google.com/file/d/1teENtaU43DwTxsEtT5m9-Z-3nSHKHPVz/view
- [26316] drive.google.com/file/d/1kxJ4IOIL_qBeg-RYRIU9I53mQF-1cWnb/view
- [26319] drive.google.com/file/d/1tUK-oKF7MAZj-ylZq9RKAzHGiKX2xK-D/view
- [26320] drive.google.com/file/d/1xhWWWO1g9h6XGkxUsfeHybsFen0tCwuV/view
- [26321] drive.google.com/file/d/1Dp0uRpqlWXnPi0oynvd-0mbEg8GhdCH9/view
- [26322] drive.google.com/file/d/1zklH6nN5t-IDVabM_OUHqdawNmlaboX6/view
- [26327] drive.google.com/file/d/1U_lajhCK7RejsS33z6Imc9aBhaDpn2lf/view
- [26329] drive.google.com/file/d/1MCj6XdjHbyHW8_L02PFskHca9_G8xRrA/view
- [26332] drive.google.com/file/d/1JIK5p2r7BBNuDm-Ci8MSVzrYh6VRh0ho/view

Fork inheritance lineage and inherited audits are included when available.
