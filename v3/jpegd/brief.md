# Agentic Audit Brief: JPEG'd

## Project Overview

- Project: JPEG'd (`jpegd`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:17.164Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum
- Contract surface: 65 unique implementations (65 raw deployments)
- DeFi Llama TVL: $334,986.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Lending. Structurally: 59 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 2 ERC721 NFTs, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (abstractapestakingstrategy, tokenvesting). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 65 (65 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/65 (10.8%)
- Deployed-live implementations: 65 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/65
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 65
- Raw deployments: 65
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 3.1% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 7.7% | 2022-01 |
| Quantstamp | Tier 2 | 3 | 4.6% | 2024-05 |
| Code4rena | Tier 1 | 2 | 3.1% | 2022-04 |
| PeckShield | Tier 2 | 1 | 1.5% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralVaultFactory | unknown | ethereum | n/a | [`0x026803...33eee7`](./contracts/ethereum-1/0x026803874894b04fa6bf3c5d2abf8a42c333eee7/) | ✅ Audited |
| Controller | unknown | ethereum | n/a | [`0x34eb74...88ee2c`](./contracts/ethereum-1/0x34eb7401cbe5180343aaa07ec37065c07e88ee2c/) | ✅ Audited |
| JPEG | unknown | ethereum | n/a | [`0xe80c0c...8345a3`](./contracts/ethereum-1/0xe80c0cd204d654cebe8dd64a4857cab6be8345a3/) | ✅ Audited |
| LoanRegistry | unknown | ethereum | n/a | [`0x3eb2b8...dfe433`](./contracts/ethereum-1/0x3eb2b8c996c3660dddefc1f4559bab2ebbdfe433/) | ✅ Audited |
| PreJPEG | unknown | ethereum | n/a | [`0xbff28c...8599f6`](./contracts/ethereum-1/0xbff28c0b8c3df7b89e71743e835a7be2c98599f6/) | ✅ Audited |
| StableCoin | unknown | ethereum | n/a | [`0x06a220...5e3f6d`](./contracts/ethereum-1/0x06a220976adb39af2e2fac1c2ca523a3155e3f6d/) | ✅ Audited |
| TokenSale | unknown | ethereum | n/a | [`0x05f995...582dab`](./contracts/ethereum-1/0x05f9955ac8236a163833c92b492c67632b582dab/) | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ApeMatchingMarketplace | unknown | ethereum | n/a | [`0x5135fc...2d612e`](./contracts/ethereum-1/0x5135fc99e6f2dc02d07abe03ea2aa96ee32d612e/) | ⚠️ Unaudited |
| ApeStakingLib | unknown | ethereum | n/a | [`0x499618...5d438f`](./contracts/ethereum-1/0x499618600e8811e068ba6a0812c8c69fbd5d438f/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0xfe8afe...6b475e`](./contracts/ethereum-1/0xfe8afe186bacf865f76e2566648e1680c56b475e/) | ⚠️ Unaudited |
| BAKCApeStakingStrategy | unknown | ethereum | n/a | [`0x0915d8...e135a0`](./contracts/ethereum-1/0x0915d829df26d65d9716c5e9ba0535b8f8e135a0/) | ⚠️ Unaudited |
| BAYCApeStakingStrategy | unknown | ethereum | n/a | [`0x266def...d59eeb`](./contracts/ethereum-1/0x266defe3ac742279db62ad215a8aca0d1cd59eeb/) | ⚠️ Unaudited |
| CappedETHDonation | unknown | ethereum | n/a | [`0xf62b40...9752e6`](./contracts/ethereum-1/0xf62b408738b4d7003bc9a3dcdf2de9ca709752e6/) | ⚠️ Unaudited |
| ClonexEggAirdropClaim | unknown | ethereum | n/a | [`0x0f8558...d70a08`](./contracts/ethereum-1/0x0f85580aa1e81b345f6ec8701a297696c9d70a08/) | ⚠️ Unaudited |
| CollateralAggregator | unknown | ethereum | n/a | [`0x1e94e1...afedd9`](./contracts/ethereum-1/0x1e94e130c03e32a4378a352ceff327b301afedd9/) | ⚠️ Unaudited |
| DAONFTVault | unknown | ethereum | n/a | [`0x2e919b...d10364`](./contracts/ethereum-1/0x2e919b626221890c10a954cc8c3f3e8110d10364/) | ⚠️ Unaudited |
| DebtVault | unknown | ethereum | n/a | [`0x08422a...f80442`](./contracts/ethereum-1/0x08422ab5eedff7b7e34f2f4370b6584deef80442/) | ⚠️ Unaudited |
| Escrow | unknown | ethereum | n/a | [`0x10819c...1fb64f`](./contracts/ethereum-1/0x10819c95e76de0d58999832ed1e385176f1fb64f/) | ⚠️ Unaudited |
| ETHEscrow | unknown | ethereum | n/a | [`0xc48ee5...d9764d`](./contracts/ethereum-1/0xc48ee5a0e04f8ddc293c00c5d9ba6ee160d9764d/) | ⚠️ Unaudited |
| FeeSplitter | unknown | ethereum | n/a | [`0x09dcde...70199f`](./contracts/ethereum-1/0x09dcdeed84106f894412228479caffc3dd70199f/) | ⚠️ Unaudited |
| IJPEGDistribution | unknown | ethereum | n/a | [`0x2d1cb6...56557d`](./contracts/ethereum-1/0x2d1cb6fc2e13215841dc4f7dcd1aaa0fe256557d/) | ⚠️ Unaudited |
| JPEGAirdrop | unknown | ethereum | n/a | [`0x4d7849...d99728`](./contracts/ethereum-1/0x4d7849f0ad7f265b458e1df991f58fb683d99728/) | ⚠️ Unaudited |
| JPEGAirdropClaim | unknown | ethereum | n/a | [`0xbff844...131a8e`](./contracts/ethereum-1/0xbff8443e25aea1245481995e8d961a77d4131a8e/) | ⚠️ Unaudited |
| JPEGAuction | unknown | ethereum | n/a | [`0x0bb49d...282630`](./contracts/ethereum-1/0x0bb49d6d3c51708cb0c810e169455022f5282630/) | ⚠️ Unaudited |
| JPEGC | unknown | ethereum | n/a | [`0x839795...eba6f4`](./contracts/ethereum-1/0x83979584ec8c6d94d93f838a524049173deba6f4/) | ⚠️ Unaudited |
| JPEGCardsCigStaking | unknown | ethereum | n/a | [`0xff9233...64d3b7`](./contracts/ethereum-1/0xff9233825542977cd093e9ffb8f0fc526164d3b7/) | ⚠️ Unaudited |
| JPEGCStaking | unknown | ethereum | n/a | [`0x45c2d9...066f81`](./contracts/ethereum-1/0x45c2d9f2553f4e1794e1b99b8e319ead8a066f81/) | ⚠️ Unaudited |
| JPEGIndex | unknown | ethereum | n/a | [`0x3415cf...5ac0ac`](./contracts/ethereum-1/0x3415cf1a6459b62a34656e53e4048233775ac0ac/) | ⚠️ Unaudited |
| JPEGIndexStaking | unknown | ethereum | n/a | [`0x26f501...f1ef9c`](./contracts/ethereum-1/0x26f5016ce71881bf6ff7537d4d56b3864df1ef9c/) | ⚠️ Unaudited |
| JPEGOraclesAggregator | unknown | ethereum | n/a | [`0x0eb4c7...305e7a`](./contracts/ethereum-1/0x0eb4c7309a100e95b69e4a39af6bf84cea305e7a/) | ⚠️ Unaudited |
| JPGD | unknown | ethereum | n/a | [`0xce722f...a89dd6`](./contracts/ethereum-1/0xce722f60f35c37ab295adc4e6ba45bcc7ca89dd6/) | ⚠️ Unaudited |
| JPGDStaking | unknown | ethereum | n/a | [`0x05fc48...fdf6cb`](./contracts/ethereum-1/0x05fc48447e0ac445042823dd36e3e4ed2ffdf6cb/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0x59bc9f...3b1963`](./contracts/ethereum-1/0x59bc9f79b3f91a90bfd286c9f8c4c8de143b1963/) | ⚠️ Unaudited |
| MainApeMatchingStrategy | unknown | ethereum | n/a | [`0x5ba384...87f163`](./contracts/ethereum-1/0x5ba38450dee95600a7d762c379d4bc956087f163/) | ⚠️ Unaudited |
| MAYCApeStakingStrategy | unknown | ethereum | n/a | [`0x066de3...8b50d9`](./contracts/ethereum-1/0x066de3369aee792274d55d53fe9c14d06f8b50d9/) | ⚠️ Unaudited |
| NFTVaultSetter | unknown | ethereum | n/a | [`0x40eda5...94aac1`](./contracts/ethereum-1/0x40eda5fd29f306f72b2ad1d7d8be144f7b94aac1/) | ⚠️ Unaudited |
| OracleAggregator | unknown | ethereum | n/a | [`0xa83682...f8f087`](./contracts/ethereum-1/0xa836826fda1332ea06c796c9b7990a9378f8f087/) | ⚠️ Unaudited |
| OracleFeed | unknown | ethereum | n/a | [`0x022abb...aad735`](./contracts/ethereum-1/0x022abb391ddcc80a17cd0a3873ff88dd06aad735/) | ⚠️ Unaudited |
| PETH | unknown | ethereum | n/a | [`0x821a27...195c0c`](./contracts/ethereum-1/0x821a278dfff762c76410264303f25bf42e195c0c/) | ⚠️ Unaudited |
| PoolDeployer | unknown | ethereum | n/a | [`0x9ca99f...e079c2`](./contracts/ethereum-1/0x9ca99f16ba2ed5627407fd44bd3f9d2810e079c2/) | ⚠️ Unaudited |
| PositionToken | unknown | ethereum | n/a | [`0x264294...e616a4`](./contracts/ethereum-1/0x26429451aab5e4c91277e510f4289ddb8ae616a4/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x4156d0...6b13d7`](./contracts/ethereum-1/0x4156d093f5e6d649fcdccdbab733782b726b13d7/) | ⚠️ Unaudited |
| PunkLiquidator | unknown | ethereum | n/a | [`0xb7f6f1...e331b1`](./contracts/ethereum-1/0xb7f6f1a7f200f1c897b0066ac6b3d4c3fae331b1/) | ⚠️ Unaudited |
| SewerPassAirdropClaim | unknown | ethereum | n/a | [`0x2738af...ea6adf`](./contracts/ethereum-1/0x2738afa1280795b1a17acad4749490c96dea6adf/) | ⚠️ Unaudited |
| SimpleUserProxy | unknown | ethereum | n/a | [`0x3808e0...ffdc0d`](./contracts/ethereum-1/0x3808e0ee2d944e4119410dcdaf0864a96bffdc0d/) | ⚠️ Unaudited |
| TokenClaim | unknown | ethereum | n/a | [`0xc7f38c...fdc3a5`](./contracts/ethereum-1/0xc7f38c08e1f0b929a2b6af28a567aed839fdc3a5/) | ⚠️ Unaudited |
| TokenMigration | unknown | ethereum | n/a | [`0x7be03b...3d27f6`](./contracts/ethereum-1/0x7be03b36bb6eaaed3223f50c7b6ac215673d27f6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0081fc...f52123`](./contracts/ethereum-1/0x0081fc6517ea64c83bd4460a14c940efcdf52123/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0780ac...abba73`](./contracts/ethereum-1/0x0780ac90fa25fa4ff694e92172fcf3eb34abba73/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x08234d...276ec7`](./contracts/ethereum-1/0x08234d75fcbf3599a6fac456a65313cce1276ec7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x097651...bd6a72`](./contracts/ethereum-1/0x09765190845c35fb81efd6952e19c995f6bd6a72/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0d3ac0...fe6489`](./contracts/ethereum-1/0x0d3ac0aba8efb92222bc050509a0c8d2fbfe6489/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x126e6d...7d9a38`](./contracts/ethereum-1/0x126e6da0caefeaf104c6b9d022394a42567d9a38/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x152de6...2900ed`](./contracts/ethereum-1/0x152de634ff2f0a6ecbd05cb591cd1eeacd2900ed/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x18d51a...0ce0e2`](./contracts/ethereum-1/0x18d51abee19819aefb138432210a8b67f10ce0e2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x194996...2c29f7`](./contracts/ethereum-1/0x194996d38fd7f62203e0d77bacab5e191a2c29f7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1de562...32008d`](./contracts/ethereum-1/0x1de562b03184521f9a699e9290a6d578cd32008d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x22af7b...cccd00`](./contracts/ethereum-1/0x22af7b5bb743e83cbc9c922f01ad470899cccd00/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x374434...6ca40c`](./contracts/ethereum-1/0x374434df400c4b68aad8598e79840d109b6ca40c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x548cab...08c3ad`](./contracts/ethereum-1/0x548cab89ebf34509ae562bc8ce8d5cdb4f08c3ad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x57dff3...49e7bb`](./contracts/ethereum-1/0x57dff3ea4006888d2b3e9b0df62e9f3a6a49e7bb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6733cb...d86a91`](./contracts/ethereum-1/0x6733cb3b0e1a55a945c37b7bde543e74bdd86a91/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x819f7b...d81667`](./contracts/ethereum-1/0x819f7b1e52b9a70e0848148d44b3676819d81667/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x923a36...8264f8`](./contracts/ethereum-1/0x923a36f8fc2cf7628f01dc2b781d81a9c48264f8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9e2081...5a312b`](./contracts/ethereum-1/0x9e208146a28a653f6212d2931f316932015a312b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2737724165-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4q1VmrV9tKrttNrIIhP1%2Fuploads%2FHKy2zlEo0ummIpLQMtyU%2FJPEG'd%20%20Part%201%20-%20Report.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | 5 | high |
| [Rendered PDF capture](https://2737724165-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4q1VmrV9tKrttNrIIhP1%2Fuploads%2FkCsGh80bHBLFNToAQKOp%2FJPEG'd%20%20Part%202%20-%20Report.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://2737724165-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4q1VmrV9tKrttNrIIhP1%2Fuploads%2F7S52Ek2LWsdHMomLlyc6%2FJPEG'd%20%20Part%203%20-%20Report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 5 | high |
| [Rendered PDF capture](https://2737724165-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4q1VmrV9tKrttNrIIhP1%2Fuploads%2FVZlJ6Q234XxclhMg2tZ5%2FPeckShield-Audit-Report-JPEGd-1.0.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://2737724165-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4q1VmrV9tKrttNrIIhP1%2Fuploads%2FvZMdk8RmHOlfaENpfbNz%2FQuantstamp%20-%20JPEGd%20Final%20Report.pdf) | Quantstamp | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [code4rena.com/reports/2022-04-jpegd](https://code4rena.com/reports/2022-04-jpegd) | Code4rena | Contest | 2022-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=18

Fork inheritance lineage and inherited audits are included when available.
