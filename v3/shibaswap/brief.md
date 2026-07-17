# Agentic Audit Brief: ShibaSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: ShibaSwap (`shibaswap`)
- Website: [https://www.shibaswap.com/](https://www.shibaswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 71 unique implementations (71 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $4,230,168.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for ShibaSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x03f7724180aa6b939894b5ca4314783b0b36b329`, chain 1)
- UnnamedContract (`0x115934131916c8b277dd010ee02de363c09d037c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 2 of 71 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/69
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 71
- Raw deployments: 71
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoneLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa404f66b9278c4ab8428225014266b4b239bcdc7` | ⚠️ Unaudited |
| boneMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x205c41bf932a34e14fea6b9b25585b3a5903aeeb` | ⚠️ Unaudited |
| BoneToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9813037ee2218799597d83d4a5b6f3b6778218d9` | ⚠️ Unaudited |
| BoringCryptoDashboardV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ea28d1ce1198b4af8a84e5c08c94a907f34adce` | ⚠️ Unaudited |
| BoringCryptoTokenScan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318a278711fc24f32550af30e772686bbee34141` | ⚠️ Unaudited |
| BuryBone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7a0383750fef5abace57cc4c9ff98e3790202b3` | ⚠️ Unaudited |
| BuryLeash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa57d319b3cf3ad0e4d19770f71e63cf847263a0b` | ⚠️ Unaudited |
| BuryShib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4a81261b16b92af0b9f7c4a83f1e885132d81e4` | ⚠️ Unaudited |
| Calcium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20561172f791f915323241e885b4f7d5187c36e1` | ⚠️ Unaudited |
| civMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8503bf17460aed3d19e5e09bbc2b8d70aa79ec6e` | ⚠️ Unaudited |
| daiMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0075f029648ffbd2026a7df1e9eff27ebc90ca65` | ⚠️ Unaudited |
| DevBoneDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44c652d679d99bb406167de9651d2535850fb479` | ⚠️ Unaudited |
| enmtMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69e592aa33f5c88de8dbd8791769cfdfba0f2782` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x24be6362664e362e97e653dcf3d031f3e435ef50` | ⚠️ Unaudited |
| f9MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63837c5b60fb7a29d5e8823a07ee98df3fa83955` | ⚠️ Unaudited |
| LandAuction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ed0f787223ff1feb0cfb33a9207c646d182e918` | ⚠️ Unaudited |
| LandAuctionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b74c5885d2e08efd80164965f8df002608ebffa` | ⚠️ Unaudited |
| LandAuctionV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf923cea81d4d56135e1c4e6e2199a865a5c21040` | ⚠️ Unaudited |
| LandRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x392eb130d797a3476650a4b0d2cb1138055ca390` | ⚠️ Unaudited |
| LandSaleETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39acd7281868d677adf24351fc018d7e1aacd7ab` | ⚠️ Unaudited |
| LockLeash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdefd353ba028a77c1cfbbf9571e7a19df582380` | ⚠️ Unaudited |
| LockShiboshi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4e191b22368bff26aa60be498575c477af5cc3` | ⚠️ Unaudited |
| MerkleRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d3cbaf560fc2b220a24415543e685e1bc2d8c8` | ⚠️ Unaudited |
| Muiclac | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95b59e71357280e44e61aa27e3a63ece3062d7f` | ⚠️ Unaudited |
| MultiTokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bb0cdd7c906151347ad915af07f6af50c9028f7` | ⚠️ Unaudited |
| MyDataConsumerForLeash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441cb57f2189e1df10f7010d55115f9374bae562` | ⚠️ Unaudited |
| MyDataConsumerForShib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcd80cbf131d545d8279b665bc55a56b3b08c60b` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb40241624df0bd16e4f66abf297b0fce055576ac` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x23df6504ab84adc2ea9ebd043b89b8ddc72916e0` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd66ea7d16f33ea95391aa278037d4676a98e6e7d` | ⚠️ Unaudited |
| perlMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40ab98602341a294c2b9d6a71266183edc3edf76` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683bd722a3c769b58ac9bc96023e1e12d942a126` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x486dd4ff6abd5b2f728192cda291d2ffb611cbd1` | ⚠️ Unaudited |
| ryoMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7732674b5e5ffec4785aefdaea807eeca383b5e6` | ⚠️ Unaudited |
| Sheboshi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8e7475b91e2303885c3cab1ef9725f3ce24174` | ⚠️ Unaudited |
| ShibaswapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9ce49caf7299daf18fffcb2b84a44fd33412509` | ⚠️ Unaudited |
| ShibaUniFetch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e906a0a798429fe5aa81e5052a5898dd0473907` | ⚠️ Unaudited |
| SHIBOSHIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11450058d796b02eb53e65374be59cff65d3fe7f` | ⚠️ Unaudited |
| SOUActivityTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23c7d20c5290ee92bccd8f8e88780e62d428b67` | ⚠️ Unaudited |
| SOUCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd2099946f99503a57dbc5e221c0db2c97bbeca0` | ⚠️ Unaudited |
| SOUCoreCCIPReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990a98270f24d15f63c0e95790c87f63112a9da6` | ⚠️ Unaudited |
| SOUDistributionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76224525656fd27ab8484e3c2a1fdcc2e5b4aef5` | ⚠️ Unaudited |
| SOUDonationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3fb1a74c16332cf08ae7124f4454b6c37b9e45` | ⚠️ Unaudited |
| SOUMetadata | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705645881a24f44dbce81e4f3738e061b7dd4a51` | ⚠️ Unaudited |
| SOUTokenSpecificPayoutStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710eefbc1f09a2eb6c71d1a0e613a2a11b70f225` | ⚠️ Unaudited |
| SOUUSDPayoutStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff8e27bd30df36ecf96e1f5a322a4f08016d074c` | ⚠️ Unaudited |
| starLMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95cf54120b4ee4f18d81e707213b78c5606a9b22` | ⚠️ Unaudited |
| SwapRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71741c102e5295813912cf3b2fc07bc740a0f1c` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb2ecc25c0b3af0039d4d9dddfcec19e958618963` | ⚠️ Unaudited |
| tBoneBoneDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ad2d8a212cb7d6909d9b523bb5847aa236cb25` | ⚠️ Unaudited |
| tBoneBoneMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaaa2b1f770c8aa0f86203c77a6b01e8315b3238` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67b5b1f23c373fb1252572f667d3f6e28b50fe5c` | ⚠️ Unaudited |
| TopDog | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94235659cf8b805b2c658f9ea2d6d6ddbb17c8d7` | ⚠️ Unaudited |
| TreasureFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e82e98a2119aa175eab206706efe0df2c7d51d` | ⚠️ Unaudited |
| ufoMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b7b2cba504088ff94615d8929d41f5535d1877` | ⚠️ Unaudited |
| usdcMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e1fddcfcf7c0917371497ac24d27db764aae0fe` | ⚠️ Unaudited |
| usdtMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5140ecb1aa2daa8427e724a6a5b3893617d8110c` | ⚠️ Unaudited |
| V2Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe2b8be84487c091f4a3fe1fc07acdfa277da9ec` | ⚠️ Unaudited |
| vempTokenMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2cb0c2bde7436fb90c187ba072a5038b3fd172f` | ⚠️ Unaudited |
| wbtcMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e26deb7e2b83742384f4dfbb2470947f853a2a4` | ⚠️ Unaudited |
| WeightOfLeash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf790b73f11fa1636d0d26db24bafb0f9b0ac3372` | ⚠️ Unaudited |
| WeightOfShiboshi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67cf6ebc89cc50f09a10745c414192fd62bbccd3` | ⚠️ Unaudited |
| wethMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e0eb8557437ab7393243c88a11f3c7e424ca3d` | ⚠️ Unaudited |
| xFundMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a425fc7bc4ed7cfb3cd89cca9925aba3b900bbe` | ⚠️ Unaudited |
| xLeashBoneDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68d494e06f70d1dd13f9faacd122799d4044412b` | ⚠️ Unaudited |
| xLeashBoneMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9495a029ce34983c0bf0c45ee8214021e95da26a` | ⚠️ Unaudited |
| xShibBoneDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x526684cde5e9ed50703469e1e21e388ad084e0f8` | ⚠️ Unaudited |
| xShibBoneMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c14852974afe7755ea824260ca5df03b816458` | ⚠️ Unaudited |
| zigMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2697b304724f277f4ad498a2792d694917bc640f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254704 | `0x03f7724180aa6b939894b5ca4314783b0b36b329` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254705 | `0x115934131916c8b277dd010ee02de363c09d037c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/shiba-swap](https://skynet.certik.com/projects/shiba-swap) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20999] skynet.certik.com/projects/shiba-swap — no match: Only one contract explicitly listed as assessed: BoneToken.sol. The report is from CertiK Skynet for ShibaSwap, with audit delivered on 8/2/2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/shiba-swap | BoneToken.sol | unmatched — not counted | — | Listed under 'Assessed Contracts' in the audit report. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20999] skynet.certik.com/projects/shiba-swap

Fork inheritance lineage and inherited audits are included when available.
