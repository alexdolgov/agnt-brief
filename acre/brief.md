# Agentic Audit Brief: Acre

## Project Overview

- Project: Acre (`acre`)
- Website: [https://acre.fi](https://acre.fi)
- Lifecycle: active (Tier 0, 31.9% below peak)
- Generated: 2026-06-17T07:00:37.690Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 59 unique implementations (70 raw deployments)
- DeFi Llama TVL: $3,431,540.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Acre is a Bitcoin yield protocol centered on BTC/tBTC deposits into an ERC-4626 auto-compounding vault, with acreBTC as the receipt token representing a user's vault position and accrued yield. It should not be described as a broad multi-asset Midas-style mToken issuance platform unless those products are separately attested as Acre-owned.

### Architecture

The Acre family provides the foundational Bitcoin yield token (acreBTC) and its deposit/redemption infrastructure, while mRe7BTC and mRe7YIELD are separate product lines with their own vaults. All families share a common pattern of using proxy-upgraded vaults and data feeds, and the Acre family's MidasAllocator may be used to manage yield across multiple products.

## Contract Surface Quality

- Indexed contracts: 568; live-surface contracts included: 70 (70 live, 0 unknown).
- Excluded by liveness: 46 inactive, 452 singleton, 0 uninitialized.
- Deployment units: 20/221 live.
- Detected codebases: none
- Dependencies extracted: 10; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/46 (2.2%)
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 59
- Raw deployments: 70
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 2.2% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| stBTC | unknown | ethereum | n/a | [`0x4271d4...0e64e2`](./contracts/ethereum-1/0x4271d490e30cc14d87666bd1577dbebc2c0e64e2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcreAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/); ethereum `0x87bf77...daf031` | ⚠️ Unaudited |
| acreBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7c0391...69d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/); ethereum `0x7e3638...a63d94` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | ethereum | n/a | [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | ethereum | n/a | [`0x4d371c...e4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xcffed5...8c84ee`](./contracts/ethereum-1/0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee/) | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | ethereum | n/a | [`0xad391d...7c77d2`](./contracts/ethereum-1/0xad391d0c554391c7cd81ebaf410866d1967c77d2/) | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xfeb770...5cf69b`](./contracts/ethereum-1/0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b/) | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | ethereum | n/a | [`0x349c2d...fc4e52`](./contracts/ethereum-1/0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52/) | ⚠️ Unaudited |
| mHYPER | unknown | ethereum | n/a | 4 deployments: ethereum [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/); ethereum `0x9903e9...c781ae`; ethereum `0xa8bb03...d9bbfb`; ethereum `0xf406f9...dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | ethereum | n/a | [`0xa62249...130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xf4b77b...33d6f3`](./contracts/ethereum-1/0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3/) | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | ethereum | n/a | 4 deployments: ethereum [`0x55b40c...2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/); ethereum `0xa0df4e...d086c0`; ethereum `0xc76e61...1c04c5`; ethereum `0xe43d2d...eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | ethereum | n/a | [`0xe3eee3...241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | ⚠️ Unaudited |
| mPortofino | unknown | ethereum | n/a | [`0x636cdf...d060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | ⚠️ Unaudited |
| mRE7 | unknown | ethereum | unit-18057 | [`0x87c905...afb0cf`](./contracts/ethereum-1/0x87c9053c819bb28e0d73d33059e1b3da80afb0cf/) | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | ethereum | unit-17945 | [`0x12570b...acfc68`](./contracts/ethereum-1/0x12570b84b633629b1db532fd3420f34a30acfc68/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-17941 | [`0x0aecdf...6f4802`](./contracts/ethereum-1/0x0aecdf39d9d02833a055bf1eca518a83f66f4802/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-17960 | [`0x1dd188...18dc18`](./contracts/ethereum-1/0x1dd1889702a64bfc6197ac9a2c206b723918dc18/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-17972 | [`0x2adfb8...efa2a2`](./contracts/ethereum-1/0x2adfb82dd33165b76d55b926a2edabed49efa2a2/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-17996 | [`0x440040...e3498e`](./contracts/ethereum-1/0x440040d670efe06ac666957692d0cd7c36e3498e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18007 | [`0x553f9c...8ee089`](./contracts/ethereum-1/0x553f9c0bc76492e1e2d6d426c0217be6f68ee089/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18021 | [`0x5eff78...2e7887`](./contracts/ethereum-1/0x5eff78782e823de725974a9db02d440c1a2e7887/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18028 | [`0x66b857...8d9005`](./contracts/ethereum-1/0x66b85714e4aba1644d50c7f9fc173222aa8d9005/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18030 | [`0x690f30...fb7687`](./contracts/ethereum-1/0x690f305e51650e7549fb60182cd0db81bafb7687/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18041 | [`0x74e0a5...130888`](./contracts/ethereum-1/0x74e0a55ea3db85f6106ffd69ef7c9829fd130888/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18054 | [`0x84568b...24b6b9`](./contracts/ethereum-1/0x84568bccd84f7fd8c680e9101da0ef75a024b6b9/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18056 | [`0x849f28...691fc4`](./contracts/ethereum-1/0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18078 | [`0x9e3fd8...076f4e`](./contracts/ethereum-1/0x9e3fd82a18d72a74308c65193269f1af2f076f4e/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18098 | [`0xac6f22...d340be`](./contracts/ethereum-1/0xac6f2295156026cccddffbadbfa975e8c6d340be/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18119 | [`0xc87fce...a12470`](./contracts/ethereum-1/0xc87fce4358dd5f82e937a885bc10269660a12470/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18134 | [`0xe2ad97...fe48ba`](./contracts/ethereum-1/0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | unit-18145 | [`0xf526ed...3c0e9d`](./contracts/ethereum-1/0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d/) | ⚠️ Unaudited |
| RsEthAdapter | adapter | ethereum | n/a | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | ⚠️ Unaudited |
| SyrupAdapter | adapter | ethereum | n/a | 3 deployments: ethereum [`0xad298d...ac8493`](./contracts/ethereum-1/0xad298d3ec4af69af52701a539d3bd14873ac8493/); ethereum `0xb1e60a...237850`; ethereum `0xd07107...368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | ethereum | n/a | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | ethereum | n/a | [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | ethereum | n/a | [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | ⚠️ Unaudited |
| tBTC | unknown | ethereum | unit-18033 | [`0x6b6b87...0857e4`](./contracts/ethereum-1/0x6b6b870c7f449266a9f40f94eca5a6ff9b0857e4/) | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0x438359...47df0a`](./contracts/ethereum-1/0x43835934e2b8aea718bdb014f5df08761a47df0a/) | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | ethereum | n/a | [`0xa3322c...2288f2`](./contracts/ethereum-1/0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2/) | ⚠️ Unaudited |
| WrappedEEthAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/); ethereum `0xb79301...534bcc` | ⚠️ Unaudited |
| WstEthAdapter | adapter | ethereum | n/a | [`0xa74f99...dbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | ethereum | n/a | [`0xa7ea8d...7d8606`](./contracts/ethereum-1/0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606/) | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | ethereum | n/a | [`0x3d09a1...f45b04`](./contracts/ethereum-1/0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PendleMidasSY | unknown | ethereum | unit-17965 | `0x215226...234f53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x002006...71e516` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06591a...d172d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x157fd9...7750db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cedea...f22db5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b02e8...0316cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3befd6...f164b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69e7bf...309d36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73e324...d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94a6cc...37655f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb08e67...c0eec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1def0...7dc996` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbafcc4...e5a1fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Read Report](https://drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Read Report](https://drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Read Report](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [Read Report](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x6a6092...587ae0`](./contracts/ethereum-1/0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0/) | AcreAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c0391...69d9d5`](./contracts/ethereum-1/0x7c0391a651c080e99b38c179575342512769d9d5/) | acreBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x438630...95dc99`](./contracts/ethereum-1/0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99/) | CustomAggregatorV3CompatibleFeedDiscounted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d371c...e4999c`](./contracts/ethereum-1/0x4d371cc63fb8efd48aff59c5a0c064863ae4999c/) | MApolloDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcffed5...8c84ee`](./contracts/ethereum-1/0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee/) | MApolloRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad391d...7c77d2`](./contracts/ethereum-1/0xad391d0c554391c7cd81ebaf410866d1967c77d2/) | MevBtcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfeb770...5cf69b`](./contracts/ethereum-1/0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b/) | MevBtcRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x349c2d...fc4e52`](./contracts/ethereum-1/0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52/) | MFarmDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e235...1080fb`](./contracts/ethereum-1/0x10e2352da4790e547095f06fa3ef3093881080fb/) | mHYPER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa62249...130e5e`](./contracts/ethereum-1/0xa62249abe86e75717ef9705f2fdb19b39c130e5e/) | MHyperDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4b77b...33d6f3`](./contracts/ethereum-1/0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3/) | MHyperRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55b40c...2349c6`](./contracts/ethereum-1/0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6/) | MidasLzMintBurnOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3eee3...241852`](./contracts/ethereum-1/0xe3eee3e0d2398799c884a47fc40c029c8e241852/) | MidasTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x636cdf...d060b9`](./contracts/ethereum-1/0x636cdf65a5bb03c25c63ceb20e971f101ed060b9/) | mPortofino | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd52ba0...baab2a`](./contracts/ethereum-1/0xd52ba087e30928886baba15b1584d4ac9abaab2a/) | RsEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa869cb...198b67`](./contracts/ethereum-1/0xa869cbc273daae91d6109ee5bb958ac6b7198b67/) | SyrupUSDCAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x570f37...5bbc08`](./contracts/ethereum-1/0x570f37365fffff0a3884892b7363c0a8615bbc08/) | TACmBtcDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6808e4...9ccdf4`](./contracts/ethereum-1/0x6808e4d8add893d0227690f435e1ff734d9ccdf4/) | TACmBtcRedemptionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x438359...47df0a`](./contracts/ethereum-1/0x43835934e2b8aea718bdb014f5df08761a47df0a/) | TBtcRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc32652...750ebf`](./contracts/ethereum-1/0xc32652ab236f32482f5018b027c8b54c13750ebf/) | TEthRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3322c...2288f2`](./contracts/ethereum-1/0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2/) | TUsdeRedemptionVaultWithSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3f5f...1fcb69`](./contracts/ethereum-1/0x0c3f5fafb87318c0deaebff096aba019501fcb69/) | WrappedEEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa74f99...dbb9d7`](./contracts/ethereum-1/0xa74f994672f232a30067da820f0e54881edbb9d7/) | WstEthAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7ea8d...7d8606`](./contracts/ethereum-1/0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606/) | ZeroGEthvCustomAggregatorFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d09a1...f45b04`](./contracts/ethereum-1/0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04/) | ZeroGEthvDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 1 |
| standard_library | 19 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2605] Read Report
- [2606] Read Report

Fork inheritance lineage and inherited audits are included when available.
