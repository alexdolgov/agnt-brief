# Agentic Audit Brief: Component

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Component (`component`)
- Website: [https://component.finance/](https://component.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, fantom, gnosis
- Contract surface: 92 unique implementations (92 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $161,320.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Component. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum, fantom, gnosis. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc165 (1), erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2f4184...ff5fab`, chain 1)
- UnnamedContract (`0x57813e...d6f0c8`, chain 1)
- UnnamedContract (`0x647796...606068`, chain 1)
- UnnamedContract (`0x721e53...406bed`, chain 1)
- UnnamedContract (`0xad6e65...2a10f1`, chain 1)
- UnnamedContract (`0x3bb6bf...5c891c`, chain 56)
- UnnamedContract (`0x7b57f2...57406e`, chain 56)
- UnnamedContract (`0xcf76a0...7fefdf`, chain 56)
- UnnamedContract (`0xe27225...1d452f`, chain 56)
- UnnamedContract (`0xe5481b...469b33`, chain 56)
- UnnamedContract (`0x53de00...8eef18`, chain 100)
- UnnamedContract (`0x990107...e1b7a3`, chain 100)
- UnnamedContract (`0xc1b303...bc5f61`, chain 100)
- UnnamedContract (`0xc7e068...2e3037`, chain 100)
- UnnamedContract (`0xeac13b...4c2e1b`, chain 100)
- UnnamedContract (`0xf82fc0...2cd028`, chain 100)
- UnnamedContract (`0xfbbd0f...b06377`, chain 100)
- UnnamedContract (`0x238139...ec57db`, chain 250)
- UnnamedContract (`0x495196...6f08db`, chain 250)
- UnnamedContract (`0x660da7...5e62ec`, chain 250)
- UnnamedContract (`0x7805e2...530fe5`, chain 250)
- UnnamedContract (`0xb7e069...08865d`, chain 250)
- UnnamedContract (`0xddca02...c85b23`, chain 250)
- UnnamedContract (`0xea25f5...213701`, chain 250)
- DirectAssimilator (`0x39dcad...e0e57c`, chain 56)
- MainnetUsdpToUsdpAssimilator (`0x70f648...0bd0cf`, chain 1)
- ProportionalLiquidity (`0x495196...6f08db`, chain 1)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 65 discovered implementations excluded (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 27 of 92 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 92
- Raw deployments: 92
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

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetParametersViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51f50...499af6` | ⚠️ Unaudited |
| BearingAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190db9...1864ab` | ⚠️ Unaudited |
| BearingAssetOracleSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31629...6b4315` | ⚠️ Unaudited |
| CDPManager01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e13ab...8f66fa` | ⚠️ Unaudited |
| CDPManager01_Fallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad3617...386e15` | ⚠️ Unaudited |
| CDPRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5ff5...ec650c` | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0ca3de...8a3d21` | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OraclePoolToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3b5f4d...8391e9` | ⚠️ Unaudited |
| ChainlinkedKeydonixOracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x769e35...29b6dd` | ⚠️ Unaudited |
| ChainlinkedKeydonixOraclePoolToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x11586e...a1c500` | ⚠️ Unaudited |
| ChainlinkedOracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0b1754...dae774` | ⚠️ Unaudited |
| CollateralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db39b...d22ef3` | ⚠️ Unaudited |
| Component | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5f6c...347570` | ⚠️ Unaudited |
| Components | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b1e5...fc919e` | ⚠️ Unaudited |
| ComponentToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f20ed...00dcab` | ⚠️ Unaudited |
| CurveLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0e08d9...a8fe08` | ⚠️ Unaudited |
| CyTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b743...dae1d8` | ⚠️ Unaudited |
| DirectAssimilator | unknown | project_anchor | own_supporting | 0 | bsc | unit-232158 | `0x39dcad...e0e57c` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2532d4...d33091` | ⚠️ Unaudited |
| DummyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aade8...4c009e` | ⚠️ Unaudited |
| FeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f93de...82df46` | ⚠️ Unaudited |
| FeeDistributionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a3cc...044a1a` | ⚠️ Unaudited |
| ForceTransferAssetStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7633f...7b24c0` | ⚠️ Unaudited |
| Foundation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x492530...3dc911` | ⚠️ Unaudited |
| LiquidationAuction01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa41a36...1af6a5` | ⚠️ Unaudited |
| LiquidationAuction02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef1ed...d79955` | ⚠️ Unaudited |
| LiquidationTriggerChainlinkMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x854bf6...5baa12` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6369...176270` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1a5...e93e1e` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c854...de57dd` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d09b...f06027` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701a22...16c882` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f903...26ab10` | ⚠️ Unaudited |
| LiquidationTriggerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18485d...0c5917` | ⚠️ Unaudited |
| MainnetUsdpToUsdpAssimilator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232141 | `0x70f648...0bd0cf` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c591...dc8283` | ⚠️ Unaudited |
| OraclePoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5968bc...598434` | ⚠️ Unaudited |
| OracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10bbe2...e8f38f` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e5f6c...347570` | ⚠️ Unaudited |
| ParametersBatchUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dd1a6...3cfb6f` | ⚠️ Unaudited |
| PartitionedLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x660717...6a65f0` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 1 | ethereum | unit-232164 | `0x495196...6f08db` | ⚠️ Unaudited |
| QuackedDuck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5cf4...22f604` | ⚠️ Unaudited |
| SelectiveLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d127a...87c463` | ⚠️ Unaudited |
| StakeManager_CMP_CMPLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be4d2...af376b` | ⚠️ Unaudited |
| Swaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bd4e0...722a01` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3976cd...08ea65` | ⚠️ Unaudited |
| UniswapV3Oracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x807983...6e0ba7` | ⚠️ Unaudited |
| USDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x145668...08c925` | ⚠️ Unaudited |
| USDPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac08b...adf3a4` | ⚠️ Unaudited |
| USDPStakingCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650cc1...dae511` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1cff8...7bcf19` | ⚠️ Unaudited |
| VaultManagerChainlinkMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a646c...e1f9d1` | ⚠️ Unaudited |
| VaultManagerKeep3rMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c3ad...cc8f76` | ⚠️ Unaudited |
| VaultManagerKeep3rPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee324...043b0c` | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ba27...83067b` | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a238...6e8390` | ⚠️ Unaudited |
| VaultManagerKeep3rUniswapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2637d6...d7daa3` | ⚠️ Unaudited |
| VaultManagerKeydonixMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78727a...e64ecf` | ⚠️ Unaudited |
| VaultManagerKeydonixPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ca03...c60a75` | ⚠️ Unaudited |
| VaultManagerParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x203153...7d312e` | ⚠️ Unaudited |
| VaultManagerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82c6d...c6783c` | ⚠️ Unaudited |
| VaultManagerStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2726eb...48fbdb` | ⚠️ Unaudited |
| VaultParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb46f8c...5e9f1d` | ⚠️ Unaudited |
| ViewLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b57f2...57406e` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e6c9...1069ec` | ⚠️ Unaudited |
| WrappedToUnderlyingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1145e9...eba6a1` | ⚠️ Unaudited |
| YvTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759eb0...64652d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232138 | `0x2f4184...ff5fab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232139 | `0x57813e...d6f0c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232140 | `0x647796...606068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232142 | `0x721e53...406bed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232143 | `0xad6e65...2a10f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232159 | `0x3bb6bf...5c891c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232160 | `0x7b57f2...57406e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232161 | `0xcf76a0...7fefdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232162 | `0xe27225...1d452f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232163 | `0xe5481b...469b33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232144 | `0x53de00...8eef18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232145 | `0x990107...e1b7a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232146 | `0xc1b303...bc5f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232147 | `0xc7e068...2e3037` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232148 | `0xeac13b...4c2e1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232149 | `0xf82fc0...2cd028` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232150 | `0xfbbd0f...b06377` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232151 | `0x238139...ec57db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232152 | `0x495196...6f08db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232153 | `0x660da7...5e62ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232154 | `0x7805e2...530fe5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232155 | `0xb7e069...08865d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232156 | `0xddca02...c85b23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232157 | `0xea25f5...213701` | ❓ Unverified |

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
| bsc | `0x39dcad...e0e57c` | DirectAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70f648...0bd0cf` | MainnetUsdpToUsdpAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x495196...6f08db` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 24 |

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
