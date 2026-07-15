# Agentic Audit Brief: BearnFi

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

- Project: BearnFi (`bearnfi`)
- Website: [https://www.bearn.fi/](https://www.bearn.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 90 unique implementations (90 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $594,000.04
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for BearnFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BFI (`0x818598...91435b`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 89 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 7 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 1 of 90 unique; 89 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/90
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 90
- Raw deployments: 90
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

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x406a4a...f1c292` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2c358a...d1e715` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x40d39e...368908` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4af9cd...0ad611` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x5d42dc...54656b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x916453...1976a7` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x970d44...00b915` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb44180...92acb8` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xc3103e...fa7ff9` | ⚠️ Unaudited |
| BdexChefLocked | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fd33c...7a5a23` | ⚠️ Unaudited |
| BdexFormula | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb9f34...c92038` | ⚠️ Unaudited |
| BdexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc67479...ee76aa` | ⚠️ Unaudited |
| BdexToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x319a1f...439e88` | ⚠️ Unaudited |
| BDOAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad113f...755d3e` | ⚠️ Unaudited |
| bDollarVote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4f7b8...5228bc` | ⚠️ Unaudited |
| bDollarVoteProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x815661...d3b173` | ⚠️ Unaudited |
| BdoRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a4cfc...e73ced` | ⚠️ Unaudited |
| BDOv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x165fde...a0c5fa` | ⚠️ Unaudited |
| BDOv2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x226e7c...030699` | ⚠️ Unaudited |
| BearnAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd567f4...a18475` | ⚠️ Unaudited |
| BearnBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaaf5d...60ac7a` | ⚠️ Unaudited |
| BearnChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d695c...518edb` | ⚠️ Unaudited |
| BearnERC20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb5e26...1847de` | ⚠️ Unaudited |
| BearnEthereumGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a714c...52684b` | ⚠️ Unaudited |
| BearnReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9c015...ae505c` | ⚠️ Unaudited |
| BearnStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2afa00...5a3379` | ⚠️ Unaudited |
| BearnTokenMigrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb6abbf...d7c7bd` | ⚠️ Unaudited |
| BearnTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63d211...34c895` | ⚠️ Unaudited |
| BearnZapperRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x197317...a5f13b` | ⚠️ Unaudited |
| BFI | unknown | project_anchor | own_supporting | 0 | bsc | unit-380306 | `0x818598...91435b` | ⚠️ Unaudited |
| BnbNumberBet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b67a...dad85d` | ⚠️ Unaudited |
| Boardroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1207fb...54ffcc` | ⚠️ Unaudited |
| Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9586b0...092063` | ⚠️ Unaudited |
| BondLpRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x186f97...2437bf` | ⚠️ Unaudited |
| bpDOGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfdb9f...d6be25` | ⚠️ Unaudited |
| bpDOGERewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x674388...9a641f` | ⚠️ Unaudited |
| bpDOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x557b3a...6677c6` | ⚠️ Unaudited |
| bpDOTLiquidityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8b80c...bcf1df` | ⚠️ Unaudited |
| bpDOTRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcab056...bd0ce6` | ⚠️ Unaudited |
| bpEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc66087...9f17f2` | ⚠️ Unaudited |
| bpEURRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x656818...108a93` | ⚠️ Unaudited |
| bpJPY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7a6be...6ada96` | ⚠️ Unaudited |
| bpJPYRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d2750...fb7d33` | ⚠️ Unaudited |
| Bpower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff289b...6c252c` | ⚠️ Unaudited |
| bpTokenBoardroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17e302...626af4` | ⚠️ Unaudited |
| bpTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0600db...f29f0d` | ⚠️ Unaudited |
| bpUNI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3b723...7ee48a` | ⚠️ Unaudited |
| bpUNIRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ad899...37e720` | ⚠️ Unaudited |
| bpXAU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaaf11...8cfe8e` | ⚠️ Unaudited |
| bpXAURewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee2391...76d33b` | ⚠️ Unaudited |
| BvaultsBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x100b6d...83ffe0` | ⚠️ Unaudited |
| BvaultsHarvestInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x337269...e9c1d5` | ⚠️ Unaudited |
| BvaultsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01c559...c6299a` | ⚠️ Unaudited |
| BvaultsStrategyMigratable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0667b2...811ab6` | ⚠️ Unaudited |
| BvaultsStrategyStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97c1de...b5411f` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfe68f...a1b44b` | ⚠️ Unaudited |
| CErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00dfd1...073b25` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8937f6...161ce3` | ⚠️ Unaudited |
| CommunityFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10cb22...026793` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12a43d...f427f4` | ⚠️ Unaudited |
| ConcurrentBuyer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f03c3...9a47f1` | ⚠️ Unaudited |
| DaoFundTradeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x406f18...251319` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f93f6...0114c8` | ⚠️ Unaudited |
| DOGEAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaf40e...996ed5` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x190b58...702454` | ⚠️ Unaudited |
| DuelToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb96499...d46ede` | ⚠️ Unaudited |
| gBEARN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb32d89...d0c3e8` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x234a3f...ada6be` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x741b4c...ba0a5e` | ⚠️ Unaudited |
| LotteryNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x402c66...9fb037` | ⚠️ Unaudited |
| LoyaltyNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87d703...45f1ef` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63d7cb...38179b` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x697eba...c507a4` | ⚠️ Unaudited |
| OlympusV1BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61fbf3...bba8e7` | ⚠️ Unaudited |
| OracleSinglePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfab911...7b5b20` | ⚠️ Unaudited |
| OracleVPeg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4322f5...4a69d0` | ⚠️ Unaudited |
| PlaceHolderToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd69170...8377af` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x507ea5...c04341` | ⚠️ Unaudited |
| PriceOracleProxyBSC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16c98f...675afe` | ⚠️ Unaudited |
| ProtocolFeeRemover | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a1c6b...0f9dcc` | ⚠️ Unaudited |
| sBEARN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54b62b...9d5582` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d9319...ae2740` | ⚠️ Unaudited |
| ShareRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x948db1...566766` | ⚠️ Unaudited |
| StandardBep20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8397e...791d8c` | ⚠️ Unaudited |
| StandardBep20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x228d9a...65fbd2` | ⚠️ Unaudited |
| TimelockHasOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ad335...81f213` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x020fe9...cd97a8` | ⚠️ Unaudited |
| v80wBDEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41bc5c...b0521c` | ⚠️ Unaudited |
| xBDEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1edb8a...98b120` | ⚠️ Unaudited |
| xBFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x454f7b...22b7bf` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x818598...91435b` | BFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 82 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 0 |

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
