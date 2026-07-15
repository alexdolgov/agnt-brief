# Agentic Audit Brief: BTCD

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BTCD (`btcd`)
- Website: [https://btcd.fi/](https://btcd.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 86 unique implementations (86 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,133,883.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BTCD. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, ethereum. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (2), erc20permit (2), ownable (2), accesscontrol (1), erc165 (1), erc4626 (1), multicall (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcad51a...fadafd`, chain 1)
- UnnamedContract (`0xd22fff...d44f5b`, chain 1)
- UnnamedContract (`0xf8f226...5eb1d8`, chain 1)
- BTCD (`0xc6694e...be4086`, chain 1)
- BTCDStaking (`0x3bc801...abbd5f`, chain 1)
- VaultMinting (`0x700ac5...991af5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (9 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 6 of 86 unique; 80 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/83
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 86
- Raw deployments: 86
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 1 | 1.2% | 2025-10 |
| Omniscia | Tier 2 | 1 | 1.2% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BTCD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381510 | `0xc6694e...be4086` | ✅ Audited |
| BTCDStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381508 | `0x3bc801...abbd5f` | ✅ Audited |

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveCarryTradePositionManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7457af...563e4b` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46e6ad...21553a` | ⚠️ Unaudited |
| AgentUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804739...c3953a` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc7e22...bd950c` | ⚠️ Unaudited |
| AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4681a8...704e8f` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6daf...01ee0d` | ⚠️ Unaudited |
| ATokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307874...074fcf` | ⚠️ Unaudited |
| BridgeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x716fad...afc099` | ⚠️ Unaudited |
| BTCDMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x270e9e...56b45f` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2a466...ba8cc8` | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50361a...12a41c` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3cef1a...efbb79` | ⚠️ Unaudited |
| CurveSUsdsPositionManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x81ae2c...eae814` | ⚠️ Unaudited |
| CurveTriPoolPositionManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7c82b4...2c6543` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf63d...7417bb` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f57db...41650a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x023dcf...ec35fb` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32cbc6...b5ff59` | ⚠️ Unaudited |
| ERC4626TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288170...c60c97` | ⚠️ Unaudited |
| FeeProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a4db...077585` | ⚠️ Unaudited |
| FISC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68b8b9...03a27c` | ⚠️ Unaudited |
| FISCStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bcafa...f71187` | ⚠️ Unaudited |
| FluidLitePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdd022...25a0f9` | ⚠️ Unaudited |
| FluidLiteVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x273da9...c29012` | ⚠️ Unaudited |
| GmPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf3079...39f4d0` | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d992c...6fc9e6` | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656f1f...c9e4d0` | ⚠️ Unaudited |
| InfiniFiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf974d7...f2fb41` | ⚠️ Unaudited |
| InifniFiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa24b17...fe8416` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x98c23e...e16f5c` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4316d...6a0456` | ⚠️ Unaudited |
| LitePSMSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e91c9...238183` | ⚠️ Unaudited |
| MainAndFallbackOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0af15...3d3017` | ⚠️ Unaudited |
| MaplePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80ac24...f5cc0b` | ⚠️ Unaudited |
| MasterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb2d0b...2c3766` | ⚠️ Unaudited |
| MetAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265714...842309` | ⚠️ Unaudited |
| MintingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d575...d1a79f` | ⚠️ Unaudited |
| Morpho | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| MorphoBlueSupplyPositionManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x24313a...968319` | ⚠️ Unaudited |
| MStableTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd74e...2dfd09` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x18f1fa...6961be` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186df6...743aa6` | ⚠️ Unaudited |
| OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ea69...ad9f00` | ⚠️ Unaudited |
| OFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010f0b...340e94` | ⚠️ Unaudited |
| Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06d63...bad360` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073a51...c74c4a` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb2a9...afaa27` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01491b...45ae65` | ⚠️ Unaudited |
| PositionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8225...ef7435` | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a21e...169a23` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59633b...f76f40` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x262b12...853bdd` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cacd2...4b7102` | ⚠️ Unaudited |
| PullOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f278b...3dd351` | ⚠️ Unaudited |
| PythMainnetPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c2d5b...14e85c` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f6c71...406834` | ⚠️ Unaudited |
| RedstoneMainnetPriceProvider | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2e597e...eeac6e` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70845d...cf44d8` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f1561...9c0bb3` | ⚠️ Unaudited |
| SBTCDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332ebf...8a6d94` | ⚠️ Unaudited |
| SBTCDPegUsdcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed577...d408b7` | ⚠️ Unaudited |
| SiUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d8c0...74d931` | ⚠️ Unaudited |
| SmartFarmingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b70e6...5f7c16` | ⚠️ Unaudited |
| StableCoinProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55744...ef005a` | ⚠️ Unaudited |
| SUsdsPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x344e78...e2cf58` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a02ae...e7e5eb` | ⚠️ Unaudited |
| SwapperUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbde032...d2b2d6` | ⚠️ Unaudited |
| SyntheticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a7ce...2f3390` | ⚠️ Unaudited |
| SyrupSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde128f...da9ba3` | ⚠️ Unaudited |
| TBYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ce81...f9b4a3` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x142518...9bea5d` | ⚠️ Unaudited |
| VariableDebtTokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x40aabe...6a8b7b` | ⚠️ Unaudited |
| VaultMinting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381509 | `0x700ac5...991af5` | ⚠️ Unaudited |
| VesperVotingPowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74432...4d5b30` | ⚠️ Unaudited |
| VesperVotingPowerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707c24...412075` | ⚠️ Unaudited |
| VetroArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359902...982914` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff907...c0f538` | ⚠️ Unaudited |
| VUSDArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c17cc...ff310a` | ⚠️ Unaudited |
| YieldBasisStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x174a18...bfca59` | ⚠️ Unaudited |
| YieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e630...e91dc7` | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244f68...c88871` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381511 | `0xcad51a...fadafd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381512 | `0xd22fff...d44f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381513 | `0xf8f226...5eb1d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Nethermind-BTCD-Audit-1.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FSam1sOy7RoQXOzxl8WHQ%2FNethermind-BTCD-Audit-1.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Nethermind-BTCD-Audit-2.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FrWme4izaqYP4p8HHl0pE%2FNethermind-BTCD-Audit-2.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 7 | high |
| [Omniscia BTCD Labs Audit.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FdaWV0PfiMzX77qe12Fu8%2FOmniscia%20BTCD%20Labs%20Audit.pdf) | Omniscia | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16847] Nethermind-BTCD-Audit-1.pdf — matched: All contracts and interfaces listed in the Audited Files table (Section 2) are in scope. Audit date is from the cover page and executive summary.
- [16848] Nethermind-BTCD-Audit-2.pdf — matched: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The final report date is October 06, 2025.
- [16849] Omniscia BTCD Labs Audit.pdf — matched: Scope section not explicitly listed; contracts inferred from audit overview. Date from revision table: December 17th 2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Nethermind-BTCD-Audit-1.pdf | BTCD | own contract | BTCD (selected) `0xc6694e...be4086` — deployed 2025-10-29 21:28:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind-BTCD-Audit-1.pdf | BTCDMinting | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | IBTCD | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | IBTCDMinting | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | IBTCDDefinitions | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | IBTCDMintingEvents | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | ISingleAdminAccessControl | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | BTCD | own contract | BTCD (selected) `0xc6694e...be4086` — deployed 2025-10-29 21:28:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind-BTCD-Audit-2.pdf | BTCDMinting | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | FISC | own contract | 0xcad51a… (selected) `0xcad51a...fadafd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind-BTCD-Audit-2.pdf | IBTCDMinting | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | ISingleAdminAccessControl | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | IBTCD | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | IBTCDMintingEvents | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | IBTCDDefinitions | unmatched — not counted | — | listed in Audited Files table | no |
| Omniscia BTCD Labs Audit.pdf | BTCDStaking | own contract | BTCDStaking (selected) `0x3bc801...abbd5f` — deployed 2025-12-19 20:24:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Omniscia BTCD Labs Audit.pdf | FISCStaking | unmatched — not counted | — | mentioned as core contract in audit overview | no |
| Omniscia BTCD Labs Audit.pdf | BTCDYieldDistributor | unmatched — not counted | — | mentioned as core contract in audit overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x700ac5...991af5` | VaultMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 7 |
| standard_library | 4 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
