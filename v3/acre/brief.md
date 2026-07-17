# Agentic Audit Brief: Acre

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 1 audit(s)
- Eligible audit results: 6 (1 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 38.7% over 90 days

## Project Overview

- Project: Acre (`acre`)
- Website: [https://acre.fi](https://acre.fi)
- Lifecycle: unknown (Tier 0, 48.6% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 62 unique implementations (78 raw deployments)
- Coverage basis: 5/5 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,245,321.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Acre. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across ethereum. Structural roles: 9 unclassified, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: unclassified (9), supporting (1)
- Contract kinds: contract (10)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4fd4dd7171d14e5bd93025ec35374d2b9b4321b0`, chain 1)
- UnnamedContract (`0x5356b8e06589de894d86b24f4079c629e8565234`, chain 1)
- UnnamedContract (`0x5e154946561aea4e750aac6dead23d37e00e47f6`, chain 1)
- UnnamedContract (`0xce0a2953a5d46400af601a9857235312d1924ac7`, chain 1)
- TransparentUpgradeableProxy (`0x19531c886339dd28b9923d903f6b235c45396ded`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/5 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 53 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 23
- Confirmed-live implementations: 9 of 62 unique; 53 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/45
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 62
- Raw deployments: 78
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 5 | 11.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| acreBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378405 | 4 deployments: ethereum `0x19531c886339dd28b9923d903f6b235c45396ded`; ethereum `0x74b5e703bc31fc70b4ba50e7807f9dad013e338c`; ethereum `0x7c0391a651c080e99b38c179575342512769d9d5`; ethereum `0x7e3638dba867ed44869885c36e683fab63a63d94` | ✅ Audited |
| BitcoinDepositorV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378406 | 2 deployments: ethereum `0x7b90c10c4a5848eb687b7315456da886faca2b77`; ethereum `0xe5f48d3d31baf15dff89fb394f10a5362711c777` | ✅ Audited |
| BitcoinRedeemerV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378407 | 2 deployments: ethereum `0x42a5f91586ddf041a6084494b0b375cda34d55e9`; ethereum `0x8abe54daac2b36608fa9398b548d476ac78bda5d` | ✅ Audited |
| MidasAllocator | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-378408 | 2 deployments: ethereum `0x8d23399cc87f2f83dc46d303326c634e4d7065b2`; ethereum `0xd72b0c95398058345842499975171368d49659bb` | ✅ Audited |
| WithdrawalQueue | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-378409 | 2 deployments: ethereum `0x9bc7249416ecffb75250afff374bb4b93fb031d6`; ethereum `0xe7b8c14ca8fb4f226c0a3e45e636b84809bb5d06` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcreAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a6092d9c47a7e4c085f2ed9fd4a376124587ae0`; ethereum `0x87bf779346dbd1d0a0e97282cb715543c8daf031` | ⚠️ Unaudited |
| CustomAggregatorV3CompatibleFeedDiscounted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4386307a07c4de7ba11b4f4ec3e1f37bbe95dc99` | ⚠️ Unaudited |
| MApolloDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d371cc63fb8efd48aff59c5a0c064863ae4999c` | ⚠️ Unaudited |
| MApolloRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcffed53ce828d1e3fa2fc0ec6e8496029b8c84ee` | ⚠️ Unaudited |
| MevBtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad391d0c554391c7cd81ebaf410866d1967c77d2` | ⚠️ Unaudited |
| MevBtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeb770ae942ef5ed377c6d4bbc50f9d3b25cf69b` | ⚠️ Unaudited |
| MFarmDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x349c2d5dbea2d0c59de1d627d49233f0e1fc4e52` | ⚠️ Unaudited |
| mHYPER | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x10e2352da4790e547095f06fa3ef3093881080fb`; ethereum `0x9903e9a950d4d50e23e833de0a27083f4dc781ae`; ethereum `0xa8bb0307b255925718e7f76788fb663f23d9bbfb`; ethereum `0xf406f9b5d1c78d6ee2d0d1d297057b1721dfcb01` | ⚠️ Unaudited |
| MHyperDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa62249abe86e75717ef9705f2fdb19b39c130e5e` | ⚠️ Unaudited |
| MHyperRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4b77b6d4062deafc2d4a9aa1daf6a406933d6f3` | ⚠️ Unaudited |
| MidasLzMintBurnOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x55b40c5ebc53c4b03a7cba602c6ceed3fc2349c6`; ethereum `0xa0df4e2d295a450e4704c3603b54b33eb7d086c0`; ethereum `0xc76e6105f79feb40ae04efbb10d994386c1c04c5`; ethereum `0xe43d2d52c047e2ca3f7ba3a0d03e513536eccad6` | ⚠️ Unaudited |
| MidasTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3eee3e0d2398799c884a47fc40c029c8e241852` | ⚠️ Unaudited |
| mPortofino | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636cdf65a5bb03c25c63ceb20e971f101ed060b9` | ⚠️ Unaudited |
| MSlCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x12570b84b633629b1db532fd3420f34a30acfc68` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0aecdf39d9d02833a055bf1eca518a83f66f4802` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1dd1889702a64bfc6197ac9a2c206b723918dc18` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2adfb82dd33165b76d55b926a2edabed49efa2a2` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x440040d670efe06ac666957692d0cd7c36e3498e` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x553f9c0bc76492e1e2d6d426c0217be6f68ee089` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5eff78782e823de725974a9db02d440c1a2e7887` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x66b85714e4aba1644d50c7f9fc173222aa8d9005` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x690f305e51650e7549fb60182cd0db81bafb7687` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x74e0a55ea3db85f6106ffd69ef7c9829fd130888` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x84568bccd84f7fd8c680e9101da0ef75a024b6b9` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x849f28304bafb3dd0d480e6f956c8c4bbb691fc4` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9e3fd82a18d72a74308c65193269f1af2f076f4e` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xac6f2295156026cccddffbadbfa975e8c6d340be` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc87fce4358dd5f82e937a885bc10269660a12470` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2ad97033e8c0844655f27dc0cc5f21028fe48ba` | ⚠️ Unaudited |
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf526ed1ffbc6e1be3cecb4f287b2368df73c0e9d` | ⚠️ Unaudited |
| stBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4271d490e30cc14d87666bd1577dbebc2c0e64e2` | ⚠️ Unaudited |
| SyrupAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xad298d3ec4af69af52701a539d3bd14873ac8493`; ethereum `0xb1e60a45de12adb09d67bc361ed7a79ffd237850`; ethereum `0xd071079c4c450af995e17afca91d03446b368f5f` | ⚠️ Unaudited |
| SyrupUSDCAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa869cbc273daae91d6109ee5bb958ac6b7198b67` | ⚠️ Unaudited |
| TACmBtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x570f37365fffff0a3884892b7363c0a8615bbc08` | ⚠️ Unaudited |
| TACmBtcRedemptionVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6808e4d8add893d0227690f435e1ff734d9ccdf4` | ⚠️ Unaudited |
| TBtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43835934e2b8aea718bdb014f5df08761a47df0a` | ⚠️ Unaudited |
| TEthRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32652ab236f32482f5018b027c8b54c13750ebf` | ⚠️ Unaudited |
| TUsdeRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3322c9acdac5fb32e08a96366f3aa2fff2288f2` | ⚠️ Unaudited |
| ZeroGEthvCustomAggregatorFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ea8d927f99f0d1ab2c8006df40fa7c437d8606` | ⚠️ Unaudited |
| ZeroGEthvDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d09a1c088c6b8b971ff5f5d29c79c4cdbf45b04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleMidasSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x21522659c821c9f35be3815787287eaff2234f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002006139261f269a9cb31c983b39ac66b71e516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06591a7f489b885aebd9fe46596d60ec92d172d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x157fd9b54e6d652ca920f196dd3e465f7c7750db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cedea949eec1db499fd8202191e741aacf22db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b02e8679dfc6033b660d944cd90cfdd730316cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3befd65f20534b927730f9aee4d37a0316f164b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378391 | `0x4fd4dd7171d14e5bd93025ec35374d2b9b4321b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378392 | `0x5356b8e06589de894d86b24f4079c629e8565234` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378393 | `0x5e154946561aea4e750aac6dead23d37e00e47f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69e7bf09201d60efb8482ffac0a42a0db6309d36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e324681b6b1746aace4b0361c0670f51d33d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94a6ccf30b0930bded6e72efdf5ffe8ee937655f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08e6785c75addb6c5fff375f93e57e95ec0eec5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1def0505e4fb5b61bf5bab4cf2bf2cf1e7dc996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbafcc44238f2caa80c46f3241bb7d04b1ce5a1fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378402 | `0xce0a2953a5d46400af601a9857235312d1924ac7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view](https://drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view) | yAudit | Audit | 2024-09 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | medium |
| [drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view](https://drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 5 | 5 | 0 | 11 | high |
| [240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf) | yAudit | Audit | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf) | yAudit | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/Thesis-Defense/Security-Audit-Reports/blob/main/PDFs/240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/Thesis-Defense/Security-Audit-Reports/blob/main/PDFs/240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-08 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2605] drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view — no match: Scope section mentions 'Acre smart contracts' but does not list specific contract names. Two contracts (stBTC and MezoAllocator) are identified from findings as targets. Audit date inferred from report title 'September 2024' and competition end date 'Sep 3, 2024'.
- [2606] drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view — matched: Extracted 16 contract names from scope section and context. Audit date found on cover page and header.
- [2607] 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf — no match: No reason recorded
- [2608] 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf — no match: No reason recorded
- [14591] 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf — no match: No reason recorded
- [14592] 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view | stBTC | unmatched — not counted | — | mentioned in findings as target contract | no |
| drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view | MezoAllocator | unmatched — not counted | — | mentioned in finding as target contract | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | AcreMultiAssetVault | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | BitcoinDepositor | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | FeesReimbursementPool | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | BitcoinRedeemer | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | MezoAllocator | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | PausableOwnable | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | acreBTC | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x19531c886339dd28b9923d903f6b235c45396ded` — deployed 2025-09-12 23:12:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | ERC4626Fees | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | ERC4626NonFungibleWithdrawals | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | MidasAllocator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd72b0c95398058345842499975171368d49659bb` — deployed 2025-09-19 00:26:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | WithdrawalQueue | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe7b8c14ca8fb4f226c0a3e45e636b84809bb5d06` — deployed 2025-09-19 00:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | stBTC | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | Maintainable | unmatched — not counted | — | listed in scope context | no |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | BitcoinDepositorV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe5f48d3d31baf15dff89fb394f10a5362711c777` — deployed 2025-09-14 01:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | BitcoinRedeemerV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x42a5f91586ddf041a6084494b0b375cda34d55e9` — deployed 2025-09-19 00:18:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1dbK5gCyRQURiPJloJXZOTNLaowtaeMip/view | AcreAdapter | unmatched — not counted | — | explicitly mentioned in scope: 'adapter contract for Acre written by Midas Protocol AcreAdapter.sol' | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | BitcoinDepositor | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | BitcoinRedeemer | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | ERC4626Fees | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | Errors | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | IDispatcher | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | ITBTCToken | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | MezoAllocator | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | PausableOwnable | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | stBTC | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | ERC4626Fees | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | ERC4626NonFungibleWithdrawals | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | MezoAllocator | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | Portal | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | stBTC | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | BitcoinDepositor | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | BitcoinRedeemer | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | ERC4626Fees | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | Errors | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | IDispatcher | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | ITBTCToken | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | MezoAllocator | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | PausableOwnable | unmatched — not counted | — | — | no |
| 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf | stBTC | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | ERC4626Fees | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | ERC4626NonFungibleWithdrawals | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | MezoAllocator | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | Portal | unmatched — not counted | — | — | no |
| 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf | stBTC | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 19 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=5

Zero-match audit list:

- [2605] drive.google.com/file/d/1ld8VgCkCMxBm65MuAcI8AFjjyAoYTBf6/view
- [2607] 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf
- [2608] 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf
- [14591] 240517_Thesis_Defense-Acre_Smart_Contracts_Security_Audit_Report.pdf
- [14592] 240808_Thesis_Defense-Mezo-Acre_stBTC_Smart_Contracts_Security_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
