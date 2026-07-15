# Agentic Audit Brief: Euler

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 9 audit(s)
- Eligible audit results: 92 (9 matched; 83 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Euler (`euler`)
- Website: [https://www.euler.finance](https://www.euler.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, plasma, sonic, unichain
- Contract surface: 128 unique implementations (128 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,573,690,679.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Euler. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum, plasma, sonic, unichain. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1b8c36...f74f5a`, chain 1)
- UnnamedContract (`0x354008...e30a1b`, chain 1)
- UnnamedContract (`0x5171ae...f53b63`, chain 1)
- UnnamedContract (`0x5fccb8...32814a`, chain 1)
- UnnamedContract (`0x62962b...02b655`, chain 1)
- UnnamedContract (`0x8b0e04...74dc97`, chain 1)
- UnnamedContract (`0xb013be...2cf228`, chain 1)
- UnnamedContract (`0xb1345e...5fba27`, chain 1)
- UnnamedContract (`0xb3b84e...b73c53`, chain 1)
- UnnamedContract (`0xbdaa3f...6a976d`, chain 1)
- UnnamedContract (`0xbfee2d...b97e59`, chain 1)
- UnnamedContract (`0xc35a0f...d6b117`, chain 1)
- UnnamedContract (`0xcad001...fb1dce`, chain 1)
- UnnamedContract (`0xd05213...04df5f`, chain 1)
- UnnamedContract (`0xd3a349...fd513e`, chain 1)
- UnnamedContract (`0xd5b7bc...cbd471`, chain 1)
- UnnamedContract (`0xf8ef49...069b0f`, chain 1)
- UnnamedContract (`0xfb034c...07a968`, chain 1)
- UnnamedContract (`0xfe56ca...e89b95`, chain 1)
- EulerSwapPeriphery (`0x208ff5...d16b06`, chain 1)
- FactoryGovernor (`0x2f1325...dc1f3d`, chain 1)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 107 discovered implementations excluded (3 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 21 of 128 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/2
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 128
- Raw deployments: 128
- Audits discovered: 81 (81 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 11 fresh, 33 aging, 35 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 50.0% (ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 50.0% | 2025-03 |
| Cyfrin | Tier 1 | 1 | 50.0% | 2025-05 |
| Spearbit | Tier 1 | 1 | 50.0% | 2025-11 |
| yAudit | Tier 2 | 1 | 50.0% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EulerSwapPeriphery | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239507 | `0x208ff5...d16b06` | ✅ Audited |
| FactoryGovernor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239508 | `0x2f1325...dc1f3d` | ✅ Audited |

### ⚠️ Verified + Unaudited (107)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eed4e...3d8b51` | ⚠️ Unaudited |
| AztecDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafcbe8...be8362` | ⚠️ Unaudited |
| BalanceForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x52b18f...42312f` | ⚠️ Unaudited |
| Borrowing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639156...605acf` | ⚠️ Unaudited |
| CapRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x288943...97fba6` | ⚠️ Unaudited |
| CapRiskStewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34718b...921079` | ⚠️ Unaudited |
| ChronicleOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x420a98...e0d9c6` | ⚠️ Unaudited |
| CrossAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02dd5b...9528d7` | ⚠️ Unaudited |
| DToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03601e...6975d7` | ⚠️ Unaudited |
| EdgeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ddcb0...274a63` | ⚠️ Unaudited |
| EdgeFactoryPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x546d1e...12c7e5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x73cb24...0c00cd` | ⚠️ Unaudited |
| ERC20BurnableMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2117e8...6bffad` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x04e365...1c2185` | ⚠️ Unaudited |
| EscrowPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91f046...ead0c5` | ⚠️ Unaudited |
| EthereumVaultConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c9a3d...9ee383` | ⚠️ Unaudited |
| EToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090c75...0d56cf` | ⚠️ Unaudited |
| Eul | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9fcd9...aae07b` | ⚠️ Unaudited |
| EulDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd524e2...87a7e2` | ⚠️ Unaudited |
| EulDistributorOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3204...c05b5d` | ⚠️ Unaudited |
| EulerBasePerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df63d...318c39` | ⚠️ Unaudited |
| EulerClaims | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddce4...865f84` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253453...a4daab` | ⚠️ Unaudited |
| EulerEarnFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a20d3...1e3427` | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x3e6aeb...1a4b82` | ⚠️ Unaudited |
| EulerEarnVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02122a...2dbd05` | ⚠️ Unaudited |
| EulerEarnVaultLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0832b2...1e0fbf` | ⚠️ Unaudited |
| EulerFactoryPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866708...d4a74f` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5151a8...caaffb` | ⚠️ Unaudited |
| EulerGeneralView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc25c...e68e42` | ⚠️ Unaudited |
| EulerKinkIRMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x34f3ec...6a2538` | ⚠️ Unaudited |
| EulerKinkyIRMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x80594d...c3b9f5` | ⚠️ Unaudited |
| EulerRouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b3f6...72326a` | ⚠️ Unaudited |
| EulerSimpleLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d41d...20b38e` | ⚠️ Unaudited |
| EulerSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05d6c4...ea92ee` | ⚠️ Unaudited |
| EulerSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e378e...d28cc7` | ⚠️ Unaudited |
| EulerSwapManagement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88b077...d2f7d7` | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71dfb7...e3b9a1` | ⚠️ Unaudited |
| EulerSwapRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0601a3...b8cf93` | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000d8a...b05875` | ⚠️ Unaudited |
| EulStakes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc697bb...716cd3` | ⚠️ Unaudited |
| EVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x11f95a...dcf46f` | ⚠️ Unaudited |
| EVKFactoryPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x5a2164...446c6b` | ⚠️ Unaudited |
| Exec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bf049...3bb44d` | ⚠️ Unaudited |
| Extractor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05df5b...973377` | ⚠️ Unaudited |
| Fee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0009a4...46a0c9` | ⚠️ Unaudited |
| FeeFlowController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x87beec...69240c` | ⚠️ Unaudited |
| FeeFlowControllerUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20d7b4...299555` | ⚠️ Unaudited |
| FixedRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14c855...759a05` | ⚠️ Unaudited |
| FlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07df2a...8259b3` | ⚠️ Unaudited |
| GenericFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x423882...deeea3` | ⚠️ Unaudited |
| GovernableWhitelistPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x232f49...eb9399` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04cb46...5adfde` | ⚠️ Unaudited |
| GovernedPerspective | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x044dc2...01e021` | ⚠️ Unaudited |
| GovernorAccessControlEmergency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088756...a63153` | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x4f74de...75d987` | ⚠️ Unaudited |
| Hooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x1ccc20...f22fde` | ⚠️ Unaudited |
| IdleTranchesOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc15ec...427c62` | ⚠️ Unaudited |
| Initialize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x653a5b...18637a` | ⚠️ Unaudited |
| Installer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x271828...e025d3` | ⚠️ Unaudited |
| IRMClassMajor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd75870...38572b` | ⚠️ Unaudited |
| IRMClassMega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894c74...08de2d` | ⚠️ Unaudited |
| IRMClassMidCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf058fe...107318` | ⚠️ Unaudited |
| IRMClassOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e8f6...959bef` | ⚠️ Unaudited |
| IRMClassStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ec0e...e9ee89` | ⚠️ Unaudited |
| IRMClassUSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd310b...0cf8ea` | ⚠️ Unaudited |
| IRMDefault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680049...dd38f7` | ⚠️ Unaudited |
| IRMLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a6bf6...8e7743` | ⚠️ Unaudited |
| Liquidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16fa62...2ad23c` | ⚠️ Unaudited |
| Markets | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12401f...b41477` | ⚠️ Unaudited |
| MeanFinanceDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23e4a1...8eec59` | ⚠️ Unaudited |
| MintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x163326...af95b4` | ⚠️ Unaudited |
| NttManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x810055...37f0df` | ⚠️ Unaudited |
| OFTAdapterUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bf1bd...0fc5b5` | ⚠️ Unaudited |
| OracleLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x0d5e95...3dc1a4` | ⚠️ Unaudited |
| ProtocolConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x03dce6...60c91e` | ⚠️ Unaudited |
| PublicAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x68a823...e557a9` | ⚠️ Unaudited |
| PythOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0081d8...873193` | ⚠️ Unaudited |
| RadicleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c8ea...1e64a3` | ⚠️ Unaudited |
| RateProviderOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x013f30...5451b5` | ⚠️ Unaudited |
| RedstoneCoreOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x03ed90...472dac` | ⚠️ Unaudited |
| Reverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a71c1...76a9e0` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x094a3b...573305` | ⚠️ Unaudited |
| RewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9839d...610c43` | ⚠️ Unaudited |
| RewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09e6ca...518a80` | ⚠️ Unaudited |
| RiskManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00d54f...0ca69d` | ⚠️ Unaudited |
| SequenceRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x08799a...cd96db` | ⚠️ Unaudited |
| SnapshotRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x01315b...e0341f` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x229443...5bde9e` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x29d5fd...5fc06f` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4440a1...1f37af` | ⚠️ Unaudited |
| SwapHandler1Inch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32673d...343065` | ⚠️ Unaudited |
| SwapHandlerUniAutoRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd16790...f9d04e` | ⚠️ Unaudited |
| SwapHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc57d9e...b478c8` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bba09...b728bf` | ⚠️ Unaudited |
| SwapVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x003ef4...c9209f` | ⚠️ Unaudited |
| TermsOfUseSigner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ba11a...aadcba` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x51d628...7e2def` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21ed85...69863b` | ⚠️ Unaudited |
| TrackingRewardStreams | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d52d0...d7f8a3` | ⚠️ Unaudited |
| TransceiverStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c43ee...5d5676` | ⚠️ Unaudited |
| UtilsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009bd9...16a0d8` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4ad4d...7f0188` | ⚠️ Unaudited |
| VaultLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0058f4...3795ee` | ⚠️ Unaudited |
| WBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc87bfc...3e134e` | ⚠️ Unaudited |
| WithdrawalQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e5fc5...042d72` | ⚠️ Unaudited |
| WSTETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9208...eebf5f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239506 | `0x1b8c36...f74f5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239509 | `0x354008...e30a1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239510 | `0x5171ae...f53b63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239511 | `0x5fccb8...32814a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239512 | `0x62962b...02b655` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239513 | `0x8b0e04...74dc97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239514 | `0xb013be...2cf228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239515 | `0xb1345e...5fba27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239516 | `0xb3b84e...b73c53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239517 | `0xbdaa3f...6a976d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239518 | `0xbfee2d...b97e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239519 | `0xc35a0f...d6b117` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239520 | `0xcad001...fb1dce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239521 | `0xd05213...04df5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239522 | `0xd3a349...fd513e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239523 | `0xd5b7bc...cbd471` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239524 | `0xf8ef49...069b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239525 | `0xfb034c...07a968` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239526 | `0xfe56ca...e89b95` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Learn more](https://cantina.xyz/bounties/4d285eee-602e-440a-845e-25e155cec26a) | Spearbit | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Pashov_Audit_Group_report.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/euler-earn/blob/master/audits/Pashov_Audit_Group_report.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora_EulerEarn_report.pdf) | Certora | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma_Prime_EulerEarn_report.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Certora_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Sigma_Prime_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Omniscia Euler Earn Report](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Certora EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora%5FEulerEarn%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Sigma Prime EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma%5FPrime%5FEulerEarn%5Freport.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Cyfrin EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/2025-05-26-cyfrin-eulerswap-v2.0.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [Cantina Managed EulerSwap May 3](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-uniswap-euler-0422.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [| March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | (also discovered via alternate URL)](https://github.com/euler-xyz/euler-swap/blob/master/audits/ChainSecurity_EulerSwap_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Cantina Managed EulerSwap Mar 29](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-euler-swap-050325.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | medium |
| [Fuzzland EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/eulerswap-audit-report.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [report-cantinacode-euler-0901.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-euler-0901.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [yAudit ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20ERC4626%20and%20Vault%20Securitize.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Pashov Group ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Pashov%20Group%20ERC4626%20and%20Vault%20Securitize.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [| 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20ERC20BurnableMintable.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20EUL%20ERC20.pdf) | BailSec | Audit | 2025-06 | aging | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [| 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/BailSec%20EVK%20Periphery%20Oracle%20Hook%20SwapVerifier.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/CD%20Security%20HookTargetMarketStatus.pdf) | CD Security | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [CDSecurity ERC20 Wrapper Locked.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/CDSecurity%20ERC20%20Wrapper%20Locked.pdf) | CDSecurity | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20Adaptive%20IRM.pdf) | Electisec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20ERC20Synth%20and%20auxiliary%20contracts.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [| 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Electisec%20GovernorAccessControlEmergencyFactory.pdf) | MixBytes | Audit | 2025-03 | aging | Direct | address | no match | 0 | 0 | 0 | 4 | high |
| [| 22 April 2025 | CapRiskSteward | MixBytes | [MixBytes CapRiskSteward Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/MixBytes%20CapRiskSteward.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [| 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/MixBytes%20HookTargetStakeDelegator.pdf) | MixBytes | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Paladin LayerZero Adapters.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Paladin%20LayerZero%20Adapters.pdf) | Paladin | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Spearbit%20ERC20Synth%20and%20auxiliary%20contracts.pdf) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [| 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Supremacy%20IRMLinearKinky.pdf) | Supremacy | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Custom%20Liquidator%20%26%20Selector%20Access%20Control.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [| 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Periphery%20Guardians.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [| 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20EVK%20Periphery.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [| 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() |](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20Euler%20Hook%20Target%20Firewall.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [yAudit SwapVerifier update.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20SwapVerifier%20update.pdf) | yAudit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [yAudit rEUL ERC20 Wrapper Locked.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20rEUL%20ERC20%20Wrapper%20Locked.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf (also discovered via alternate URL)](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Euler Rescue StrategyEuler07 November 2025 - 12 November 2025](https://cantina.xyz/portfolio/e77dbffc-abd5-46d6-9367-48fec99e0ab2) | Spearbit | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Euler - PR111Euler26 October 2025 - 28 October 2025](https://cantina.xyz/portfolio/f145854a-327f-4f2c-a8bf-f61f95ae23dd) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | medium |
| [euler-swapEuler25 April 2025 - 29 April 2025](https://cantina.xyz/portfolio/05b16317-997e-4b78-8316-acb656e2a0e2) | Spearbit | Audit | 2025-04 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [| 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Electisec_Report.pdf) | Electisec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [| 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Electisec_setLTV_report.pdf) | Electisec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/M4rio.eth_setLTV_report.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [| 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_OracleUpdate_Report.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [| 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | (also discovered via alternate URL)](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20Code%20Competition%20Fixes%20report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high|medium |
| [| 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() |](https://github.com/euler-legacy-xyz/origami-oracle-adapters/blob/main/audits/yAudit_origami_oracles.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [| 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/OpenZeppelin_Synths_report.pdf) | OpenZeppelin | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [| 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() |](https://github.com/euler-xyz/reward-streams/blob/master/audits/Euler%20MixBytes%20report.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [| 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() |](https://github.com/euler-xyz/reward-streams/blob/master/audits/Euler%20Hunter%20Security%20report.pdf) | MixBytes | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [| 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_ChainSecurity_Report.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [| 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | (also discovered via alternate URL)](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Cantina%20Code%20Competition%20report.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | medium |
| [| 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() |](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20ChainSecurity%20report.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [| 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Spearbit_EVK_report.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 46 | medium |
| [| 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Spearbit_Report_DRAFT.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [| 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/OpenZeppelin_EVK_report.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |
| [| 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() |](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_OpenZeppelin_Report.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [| 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/yAudit_EVK_report.pdf) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 86 | high |
| [| 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() |](https://omniscia.io/reports/euler-finance-ethereum-vault-connector-6602c8d3423c1b0018ff01b6) | yAudit | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [| 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() |](https://omniscia.io/reports/euler-finance-vault-kit-66000e2fe7dba400187a4aed) | Omniscia | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [| 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() |](https://omniscia.io/reports/euler-finance-evk-price-oracles-660812035fc1c30018641b22) | Omniscia | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [| 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() |](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20OpenZeppelin%20report.pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [| 7 March 2024 | EVK | Certora | [Certora EVK Report]() |](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Certora_EVK_report.pdf) | OpenZeppelin | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 39 | high |
| [| 19 February 2024 | FeeFlow | Ottersec - FeeFlow | [Ottersec FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Ottersec%20Report.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [| 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Team%20Omega%20Report.pdf) | Team Omega | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [| 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() |](https://github.com/euler-xyz/fee-flow/blob/main/audits/FeeFlow%20Zellic%20Report.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [EnigmaDark_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/EnigmaDark_EVK_report.pdf) | Enigma Ventures | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Euler Trail of Bits report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Trail%20of%20Bits%20report.pdf) | Trail of Bits | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Euler Hunter Security report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Hunter%20Security%20report.pdf) | Hunter Security | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Euler yAudit report (EVC).pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20report%20(EVC).pdf) | yAudit | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Euler Certora report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Certora%20report.pdf) | Certora | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Cantina_competition_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Cantina_competition_report.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | medium |
| [ChainSecurity_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/ChainSecurity_EVK_report.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 62 | high |
| [Omniscia_EVK_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/Omniscia_EVK_report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 51 | high |
| [yAudit_competition_fixes_report.pdf](https://github.com/euler-xyz/euler-vault-kit/blob/master/audits/yAudit_competition_fixes_report.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Euler_Price_Oracle_BailSec_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_BailSec_Report.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Euler_Price_Oracle_Omniscia_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_Omniscia_Report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf) | yAudit | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Euler_Price_Oracle_yAudit_Report.pdf](https://github.com/euler-xyz/euler-price-oracle/blob/master/audits/Euler_Price_Oracle_yAudit_Report.pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 86 | high |
| [Euler Omniscia report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Omniscia%20report.pdf) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Euler Spearbit report.pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20Spearbit%20report.pdf) | Spearbit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Euler yAudit report (EVC + EVK + Price Oracle).pdf](https://github.com/euler-xyz/ethereum-vault-connector/blob/master/audits/Euler%20yAudit%20report%20(EVC%20%2B%20EVK%20%2B%20Price%20Oracle).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 86 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17249] Learn more — no match: The document is a bug bounty program description, not an audit report. It lists repositories in scope but no specific contract names or file paths. The extracted names are the repository/module names. No audit date is present.
- [17251] Pashov_Audit_Group_report.pdf — no match: Scope section explicitly lists EulerEarn.sol, EulerEarnFactory.sol, PublicAllocator.sol, ConstantsLib.sol, ErrorsLib.sol, EventsLib.sol, PendingLib.sol, SafeERC20Permit2Lib.sol, UtilsLib.sol, and interfaces/ directory. Audit date from timeline: July 25th 2025 - July 30th 2025, end date used.
- [17252] Certora_EulerEarn_report.pdf — no match: Scope explicitly lists src/libraries/** (library files), src/EulerEarn.sol, src/EulerEarnFactory.sol, src/PublicAllocator.sol. Libraries are included as a glob pattern but no specific library names are given. Audit date is July 2025, with work from June 26 to July 15, 2025; end date used.
- [17253] Sigma_Prime_EulerEarn_report.pdf — no match: Scope explicitly lists three contracts: EulerEarn.sol, EulerEarnFactory.sol, PublicAllocator.sol. Libraries are mentioned but not individually named. Audit date is July 2025, mapped to last day of month.
- [17254] Rendered PDF capture — no match: Scope explicitly lists src/libraries/** (not extracted as individual contracts), src/EulerEarn.sol, src/EulerEarnFactory.sol, src/PublicAllocator.sol. Audit date from 'July 2025' and work period ending July 15, 2025.
- [17255] Rendered PDF capture — no match: Scope section lists three contracts: EulerEarn.sol, EulerEarnFactory.sol, PublicAllocator.sol. Libraries/* mentioned but not individually named. Date from cover page: July, 2025 -> last day of month.
- [17257] Omniscia Euler Earn Report — no match: Only one contract name 'Earn' is mentioned as the module name, but no specific file paths or contract names are listed in the scope section. The audit date is inferred from the latest commit hash date (October 23rd 2024).
- [17259] Certora EulerEarn — no match: Scope explicitly lists src/libraries/** (library files), src/EulerEarn.sol, src/EulerEarnFactory.sol, src/PublicAllocator.sol. Libraries are not named individually. Audit date from 'July 2025' and work period ending July 15, 2025.
- [17260] Sigma Prime EulerEarn — no match: Scope explicitly lists three contracts: EulerEarn.sol, EulerEarnFactory.sol, PublicAllocator.sol, and libraries/* (but libraries are not extracted as individual contracts). Audit date is July 2025, mapped to last day of month.
- [17261] Cyfrin EulerSwap — matched: Scope section lists 10 Solidity files. Audit date is May 26, 2025 from cover page.
- [17262] Cantina Managed EulerSwap May 3 — matched: Extracted contract names from findings context and file references. No explicit scope section found; date from cover page.
- [17263] | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | — matched: Scope section explicitly lists 5 source files. Audit date from cover page: 'Mar 31, 2025'.
- [17264] Cantina Managed EulerSwap Mar 29 — matched: No explicit scope section found; contracts inferred from findings context and file references. Audit date from cover page: March 29, 2025.
- [17265] Fuzzland EulerSwap — no match: Only one contract (EulerSwap) is in scope. The report mentions 'src/*.sol' and specifically references EulerSwap.sol. No other contracts are listed.
- [17267] report-cantinacode-euler-0901.pdf — no match: Extracted contract names from findings context and file references. Audit date from cover page.
- [17268] yAudit ERC4626 and Vault Securitize Report — no match: All 8 contracts explicitly listed in scope section 1.2 with file paths. Audit date from cover page: 'November 21, 2025'.
- [17269] Pashov Group ERC4626 and Vault Securitize Report — no match: Scope section explicitly lists 9 Solidity files. Audit date is the end date of the timeline: November 8th 2025.
- [17270] | 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() | — no match: Only one contract in scope: ERC20BurnableMintable. Audit date inferred from 'December 2024' on cover page.
- [17271] | 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() | — no match: Only one contract (Eul) is in scope. OpenZeppelin dependencies are explicitly excluded. Date inferred from 'June 2025' as end of month.
- [17272] | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() | — no match: Three contracts explicitly listed in scope: ChainlinkInfrequentOracleXStocks, HookTargetTermsOfUse, SwapVerifier. Audit date inferred from 'March ‘2026' in header.
- [17273] | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() | — no match: Audit report title indicates August 2025; scope explicitly lists DataStreamsVerifier.sol and HookTargetMarketStatus.sol.
- [17274] CDSecurity ERC20 Wrapper Locked.pdf — no match: Only one contract in scope: ERC20WrapperLocked.sol. Audit date inferred from 'October2024' in header and 'euler.md2024-11-04' in findings (likely a typo, but October 2024 is the audit period). Using last day of October 2024.
- [17275] | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() | — no match: Scope section explicitly lists three contracts. Audit date is the end date of the second review period (February 4-5, 2025).
- [17276] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | — no match: All 7 contracts listed in the Audit Scope section with file paths.
- [17277] | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | — no match: Scope includes one source file and six deployed contract instances across Base and Ethereum.
- [17278] | 22 April 2025 | CapRiskSteward | MixBytes | [MixBytes CapRiskSteward Report]() | — matched: Only one contract in scope: CapRiskSteward. Audit date from cover page.
- [17279] | 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() | — no match: Only one contract in scope: HookTargetStakeDelegator. Audit date from cover page.
- [17280] Paladin LayerZero Adapters.pdf — no match: Three contracts explicitly listed in 'Contracts Assessed' table on page 4. Audit date found on cover page: '23 January 2025'.
- [17281] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | — no match: Extracted contracts from the audit report of Euler EVK Periphery PR 361. The report mentions 'evk-periphery' as the scope, and the findings reference specific contracts. The audit date is October 14, 2025 from the cover page.
- [17282] | 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() | — no match: Only one contract in scope: IRMLinearKinky. Audit date from cover page.
- [17283] | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | — matched: Scope explicitly listed contracts for Custom Liquidators and Selector Access Control features, and separately for FactoryGovernor.sol. Audit date inferred from review period end date (October 21st, 2024).
- [17284] | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | — matched: Scope section explicitly lists four contracts under src/Governor and src/HookTarget. Audit date from review summary: Aug 8 to Aug 9, 2024.
- [17285] | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | — no match: All contracts listed in the Scope section of the report were extracted. The audit date is the end date of the review period (June 26, 2024).
- [17286] | 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() | — no match: Only one contract in scope: HookTargetFirewall. Audit performed 17-18 September 2024, so end date is 2024-09-18.
- [17287] yAudit SwapVerifier update.pdf — no match: Only one contract in scope: SwapVerifier.sol. Audit date from cover page.
- [17288] yAudit rEUL ERC20 Wrapper Locked.pdf — no match: Two contracts explicitly listed in scope section.
- [17289] yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf — no match: The report is a deployment feasibility review, not a code audit. No specific contracts are listed as in scope. Only generic references to Euler protocol components (GenericFactory, LidoOracle, LidoFundamentalOracle, RedstoneCoreOracle) are mentioned in passing, but not as audited targets.
- [17290] Euler Rescue StrategyEuler07 November 2025 - 12 November 2025 — no match: No scope section or contract names found in the provided text.
- [17291] Euler - PR111Euler26 October 2025 - 28 October 2025 — no match: No explicit scope section; contracts extracted from findings and file references. Audit period ends 28 October 2025.
- [17293] euler-swapEuler25 April 2025 - 29 April 2025 — matched: Extracted contract names from findings and context; audit period ends 29 April 2025.
- [17295] | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() | — no match: Two contracts in scope: PendleUniversalOracle and CurveEMAOracle. Audit date inferred from review period end date (February 18, 2025).
- [17296] | 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() | — no match: Only one contract in scope: Governance.sol from Euler EVK PR#288.
- [17297] | 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() | — no match: Only one contract name (Governance) is explicitly mentioned in the report. The report references 'euler-vault-kit' but does not list specific contracts in scope. The date is from the cover page.
- [17301] | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | — no match: Scope explicitly lists four contracts in the src directory tree. Audit date inferred from review period end (September 6, 2024).
- [17302] | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | — no match: Extracted contract names from scope sections and issue titles. Audit date inferred from 'month of July' in text, using last day of month.
- [17303] | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | — no match: Scope explicitly lists 5 contracts in src/exchange-rate-adapters/ directory. Audit dates: 27-28 June 2024, so end date is 2024-06-28.
- [17304] | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | — no match: All five contracts from the Synths directory are explicitly listed in the Scope section.
- [17305] | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() | — no match: Scope section explicitly lists three files: BaseRewardStreams.sol, StakingRewardStreams.sol, TrackingRewardStreams.sol. Audit date is May 16, 2024 from the title.
- [17306] | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | — no match: Scope section lists 5 files: BaseRewardStreams.sol, StakingRewardStreams.sol, TrackingRewardStreams.sol, IBalanceTracker.sol, IRewardStreams.sol. Audit date is May 9, 2024 from cover page.
- [17307] | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | — no match: All contracts in ./src/ folder are in scope. The report date is May 15, 2024 from the cover page.
- [17308] | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | — no match: The report does not have an explicit scope section or table. Contract names were extracted from finding contexts and file paths mentioned in the report. The audit date is from the cover page: 'Euler v2 Competition November13,2024'.
- [17309] | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | — no match: Scope section explicitly lists 7 source files. Audit date from cover page: '18 Jun, 2024'.
- [17310] | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | — no match: The report does not contain an explicit scope section. Contract names were extracted from findings context and file references throughout the report. The audit date is from the report cover page: July 5, 2024.
- [17311] | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | — no match: Extracted contract names from the executive summary and findings sections. The report covers the euler-price-oracle repository. Audit date is May 20, 2024 from the report header.
- [17312] | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | — no match: All contracts listed in the Scope section of the audit report.
- [17313] | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | — no match: All contracts listed in the Scope section of the audit report.
- [17314] | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | — no match: Extracted all contracts from the scope section listing files in EVC, EVK, and EPO repos. Audit date inferred from review period end (May 5th, 2024).
- [17315] | 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() | — no match: Scope section not explicitly provided; contracts inferred from report text. Audit date taken from latest revision date (May 16th 2024).
- [17316] | 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() | — no match: The report does not list individual contract files or names; only the overall 'Euler Vault Kit' is mentioned as the audited system. No specific contract names are extractable.
- [17317] | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | — no match: Extracted 9 oracle modules from the audit overview. The audit report date is May 10, 2024 (latest revision date).
- [17318] | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | — no match: All contracts listed in the Scope section of the audit report.
- [17319] | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | — no match: Extracted contract names from the audit report's findings, formal verification sections, and file paths. The report covers the Euler Vault Kit project. The audit date is inferred from the report title 'August2024' and the project timeline (March 7 to May 8, 2024), but the report itself is dated August 2024. Using the last day of the month as per instructions.
- [17320] | 19 February 2024 | FeeFlow | Ottersec - FeeFlow | [Ottersec FeeFlow Report]() | — no match: The scope section describes the program 'euler-fee-flow' but does not list specific contract names or file paths. The only code snippet references a 'buy' function but no contract name is given.
- [17321] | 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() | — no match: Only one contract, FeeFlowController, is explicitly in scope. The report mentions 'the Solidity files in the src directory' but only FeeFlowController is named.
- [17322] | 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() | — no match: Scope section lists two programs: FeeFlowController and MinimalEVCClient. Audit date is February 6, 2024 from cover page and executive summary.
- [17323] EnigmaDark_EVK_report.pdf — no match: The report does not have a formal scope section; contracts are inferred from context. The date is given as 'March, 2024' so last day of month used.
- [17324] Euler Trail of Bits report.pdf — no match: The report focuses on the EthereumVaultConnector contract and related components. VaultBase, EVCClient, and ExecutionContext are referenced as part of the system.
- [17325] Euler Hunter Security report.pdf — no match: Scope section lists 6 source files under src/ and src/interfaces/ (interfaces directory listed but no specific files). Contract names extracted from filenames.
- [17326] Euler yAudit report (EVC).pdf — no match: Scope explicitly lists 9 contracts from src/ directory. Audit date inferred from review period ending December 19, 2023.
- [17327] Euler Certora report.pdf — no match: Only one contract, EthereumVaultConnector, is explicitly mentioned in the scope and findings. The report also references TransientStorage but it is not listed as a separate contract in scope; it appears to be a library or inherited contract.
- [17328] Cantina_competition_report.pdf — no match: The report does not have a dedicated scope section; contract names were extracted from finding contexts and file paths mentioned throughout the report. The audit date is from the cover page: 'Euler v2 Competition November13,2024'.
- [17329] ChainSecurity_EVK_report.pdf — no match: Extracted 68 contract names from the scope section (2.1.1 Included in scope) and file paths. Audit date from cover page: '18 June, 2024'.
- [17330] Omniscia_EVK_report.pdf — no match: Extracted 51 contract names from the 'Target Contracts Assessed' table in the Scope section. Audit date is May 20, 2024 from the report header.
- [17331] yAudit_competition_fixes_report.pdf — no match: Extracted contract names from scope section and issue headers. Audit date inferred from 'month of July' in review summary.
- [17334] Euler_Price_Oracle_BailSec_Report.pdf — no match: Three contracts explicitly listed in scope section with GitHub URLs. Audit date inferred from 'March 2026' in header.
- [17335] Euler_Price_Oracle_Omniscia_Report.pdf — no match: Extracted 14 contracts from the scope table and file listings. Audit date found in header: 'May 10, 2024'.
- [17336] Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf — no match: Only one contract in scope: PendleOracle.sol. Audit performed 16-17 Sep 2024, end date used.
- [17337] Euler_Price_Oracle_yAudit_Report.pdf — no match: Extracted all contracts from the scope section listing EVC, EVK, and EPO repos. Audit date inferred from review period end (May 5th, 2024).
- [17338] Euler Omniscia report.pdf — no match: Extracted 7 contracts from the scope table and file paths. Audit date is May 16, 2024 from the report header.
- [17339] Euler Spearbit report.pdf — no match: Extracted from executive summary and findings. Only three contracts/interfaces explicitly mentioned: EthereumVaultConnector, IEthereumVaultConnector, and EVCUtil.
- [17340] Euler yAudit report (EVC + EVK + Price Oracle).pdf — no match: Extracted all contracts from the scope section listing files in EVC, EVK, and EPO repos. Audit date inferred from review period end date (May 5th, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Learn more | Ethereum Vault Connector | unmatched — not counted | — | Listed in scope repositories: Ethereum Vault Connector | no |
| Learn more | Euler Vault Kit | unmatched — not counted | — | Listed in scope repositories: Euler Vault Kit | no |
| Learn more | Euler Price Oracle | unmatched — not counted | — | Listed in scope repositories: Euler Price Oracle | no |
| Learn more | Reward Streams | unmatched — not counted | — | Listed in scope repositories: Reward Streams | no |
| Learn more | Fee Flow | unmatched — not counted | — | Listed in scope repositories: Fee Flow | no |
| Learn more | Euler Earn | unmatched — not counted | — | Listed in scope repositories: Euler Earn | no |
| Learn more | EulerSwap | unmatched — not counted | — | Listed in scope repositories: EulerSwap | no |
| Learn more | Securitize Collateral Vault | unmatched — not counted | — | Listed in scope repositories: Securitize Collateral Vault | no |
| Pashov_Audit_Group_report.pdf | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | ConstantsLib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | EventsLib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | PendingLib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | SafeERC20Permit2Lib | unmatched — not counted | — | listed in scope | no |
| Pashov_Audit_Group_report.pdf | UtilsLib | unmatched — not counted | — | listed in scope | no |
| Certora_EulerEarn_report.pdf | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Certora_EulerEarn_report.pdf | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Certora_EulerEarn_report.pdf | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_EulerEarn_report.pdf | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_EulerEarn_report.pdf | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Sigma_Prime_EulerEarn_report.pdf | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Omniscia Euler Earn Report | Earn | unmatched — not counted | — | The report states 'Earn (Yield Aggregator) module' and describes it as an EIP-4626 vault. | no |
| Certora EulerEarn | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Certora EulerEarn | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Certora EulerEarn | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Sigma Prime EulerEarn | EulerEarn | unmatched — not counted | — | listed in scope | no |
| Sigma Prime EulerEarn | EulerEarnFactory | unmatched — not counted | — | listed in scope | no |
| Sigma Prime EulerEarn | PublicAllocator | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | EulerSwap | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | EulerSwapFactory | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5...d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cyfrin EulerSwap | UniswapHook | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | CtxLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | CurveLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | FundsLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | QuoteLib | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| Cyfrin EulerSwap | ProtocolFee | unmatched — not counted | — | listed in scope | no |
| Cantina Managed EulerSwap May 3 | EulerSwap | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | EulerSwapFactory | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5...d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Managed EulerSwap May 3 | MetaProxyDeployer | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | FundsLib | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | QuoteLib | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | CurveLib | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | CtxLib | unmatched — not counted | — | mentioned in findings context | no |
| Cantina Managed EulerSwap May 3 | UniswapHook | unmatched — not counted | — | mentioned in findings context | no |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | EulerSwap | unmatched — not counted | — | listed in scope | no |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5...d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | IEulerSwap | unmatched — not counted | — | listed in scope | no |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | IEulerSwapPeriphery | unmatched — not counted | — | listed in scope | no |
| | March 31, 2025 | EulerSwap | ChainSecurity | [ChainSecurity EulerSwap ]() | | IUniswapV2Callee | unmatched — not counted | — | listed in scope | no |
| Cantina Managed EulerSwap Mar 29 | EulerSwap | unmatched — not counted | — | Context in findings: EulerSwap.sol#L24-L31, L270-L278, etc. | no |
| Cantina Managed EulerSwap Mar 29 | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5...d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina Managed EulerSwap Mar 29 | EulerSwapFactory | unmatched — not counted | — | Mentioned in finding 3.3.3: 'there's an EulerSwapFactory' | no |
| Cantina Managed EulerSwap Mar 29 | IEulerSwapFactory | unmatched — not counted | — | Mentioned in finding 3.3.1: 'IEulerSwapFactory.sol: This interface has no NatSpec.' | no |
| Fuzzland EulerSwap | EulerSwap | unmatched — not counted | — | Scope section: 'Scopesrc/*.sol' and findings reference 'src/EulerSwap.sol' | no |
| report-cantinacode-euler-0901.pdf | EulerSwapRegistry | unmatched — not counted | — | Listed in scope context: EulerSwapRegistry.sol#L298-L300, L132-L134, L190-L194, L132-L144 | no |
| report-cantinacode-euler-0901.pdf | EulerSwap | unmatched — not counted | — | Listed in scope context: EulerSwap.sol#L255-L277, L45-L52 | no |
| report-cantinacode-euler-0901.pdf | QuoteLib | unmatched — not counted | — | Listed in scope context: QuoteLib.sol#L132, L89-L98 | no |
| report-cantinacode-euler-0901.pdf | SwapLib | unmatched — not counted | — | Listed in scope context: SwapLib library mentioned in findings | no |
| report-cantinacode-euler-0901.pdf | CurveLib | unmatched — not counted | — | Listed in scope context: CurveLib.sol#L63 | no |
| report-cantinacode-euler-0901.pdf | UniswapHook | unmatched — not counted | — | Listed in scope context: UniswapHook mentioned in finding 3.4.3 | no |
| report-cantinacode-euler-0901.pdf | CtxLib | unmatched — not counted | — | Listed in scope context: CtxLib.State mentioned in finding 3.4.3 | no |
| report-cantinacode-euler-0901.pdf | Ternary | unmatched — not counted | — | Listed in scope context: Ternary library mentioned in finding 3.5.3 | no |
| yAudit ERC4626 and Vault Securitize Report | SwapVerifier | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | TransferFromSender | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVC | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateral | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateralCapped | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateralFreezable | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateralSecuritize | unmatched — not counted | — | listed in scope section 1.2 | no |
| yAudit ERC4626 and Vault Securitize Report | ERC4626EVCCollateralSecuritizeFactory | unmatched — not counted | — | listed in scope section 1.2 | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateralSecuritize | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVC | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateral | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateralCapped | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateralFreezable | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | ERC4626EVCCollateralSecuritizeFactory | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | IERC4626EVCCollateralSecuritizeFactory | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | SwapVerifier | unmatched — not counted | — | listed in scope section | no |
| Pashov Group ERC4626 and Vault Securitize Report | TransferFromSender | unmatched — not counted | — | listed in scope section | no |
| | 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() | | ERC20BurnableMintable | unmatched — not counted | — | listed in scope table and analyzed in report | no |
| | 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() | | Eul | unmatched — not counted | — | The report explicitly states 'The EUL contract is a simple ERC20 contract...' and lists it as the target of the audit. | no |
| | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() | | ChainlinkInfrequentOracleXStocks | unmatched — not counted | — | listed in scope section | no |
| | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() | | HookTargetTermsOfUse | unmatched — not counted | — | listed in scope section | no |
| | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() | | SwapVerifier | unmatched — not counted | — | listed in scope section | no |
| | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() | | DataStreamsVerifier | unmatched — not counted | — | listed in scope | no |
| | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() | | HookTargetMarketStatus | unmatched — not counted | — | listed in scope | no |
| CDSecurity ERC20 Wrapper Locked.pdf | ERC20WrapperLocked | unmatched — not counted | — | listed in scope | no |
| | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() | | IRMAdaptiveCurve | unmatched — not counted | — | listed in scope | no |
| | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() | | ExpLib | unmatched — not counted | — | listed in scope | no |
| | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() | | EulerIRMAdaptiveCurveFactory | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | ERC20Synth | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | FeeFlowControllerEVK | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | IRMBasePremium | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | OFTFeeCollector | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | OFTGulper | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | FeeCollectorGulper | unmatched — not counted | — | listed in scope | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() | | FeeCollectorUtil | unmatched — not counted | — | listed in scope | no |
| | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | | GovernorAccessControlEmergencyFactory | unmatched — not counted | — | listed in scope | no |
| | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | | accessControlEmergencyGovernor | unmatched — not counted | — | listed in scope table | no |
| | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | | accessControlEmergencyGovernorAdminTimelockController | unmatched — not counted | — | listed in scope table | no |
| | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() | | accessControlEmergencyGovernorWildcardTimelockController | unmatched — not counted | — | listed in scope table | no |
| | 22 April 2025 | CapRiskSteward | MixBytes | [MixBytes CapRiskSteward Report]() | | CapRiskSteward | own contract | 0xfe56ca… (selected) `0xfe56ca...e89b95` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() | | HookTargetStakeDelegator | unmatched — not counted | — | listed in scope table | no |
| Paladin LayerZero Adapters.pdf | MintBurnOFTAdapter | unmatched — not counted | — | listed in Contracts Assessed table and detailed in findings section | no |
| Paladin LayerZero Adapters.pdf | OFTAdapterUpgradeable | unmatched — not counted | — | listed in Contracts Assessed table and detailed in findings section | no |
| Paladin LayerZero Adapters.pdf | ERC20BurnableMintable | unmatched — not counted | — | listed in Contracts Assessed table and detailed in findings section | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | FeeFlowControllerEVK | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | OFTFeeCollector | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | FeeCollectorUtil | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | IRMBasePremium | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | OFTGulper | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | FeeCollectorGulper | unmatched — not counted | — | listed in scope and findings context | no |
| | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() | | IIRMBasePremium | unmatched — not counted | — | listed in scope and findings context | no |
| | 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() | | IRMLinearKinky | unmatched — not counted | — | listed in scope table | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | SelectorAccessControl | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | GovernorAccessControl | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | BaseHookTarget | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | HookTargetAccessControl | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | CustomLiquidatorBase | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | SBLiquidator | unmatched — not counted | — | listed in scope | no |
| | 18 October 2024 | EVK Periphery - custom liquidator & selector access | yAudit | [yAudit EVK Custom Liquidator & Selector Access Control Report]() | | FactoryGovernor | own contract | FactoryGovernor (selected) `0x2f1325...dc1f3d` — deployed 2024-12-26 13:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | | FactoryGovernor | own contract | FactoryGovernor (selected) `0x2f1325...dc1f3d` — deployed 2024-12-26 13:55:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | | GovernorGuardian | unmatched — not counted | — | listed in scope | no |
| | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | | ReadOnlyProxy | unmatched — not counted | — | listed in scope | no |
| | 8 August 2024 | EVK Periphery - Vault Pause Guardian | yAudit | [yAudit - EVK Periphery - Vault Pause Guardian Report]() | | HookTargetGuardian | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | BaseFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EulerKinkIRMFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IEulerKinkIRMFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | AdapterRegistry | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EulerRouterFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IEulerRouter | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IEulerRouterFactory | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EscrowSingletonPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EulerDefaultClusterPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | EulerFactoryPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | ImmutableWhitelistPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | BasePerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | DefaultClusterPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | PerspectiveErrors | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IPerspective | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | ISwapper | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | SwapVerifier | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | Swapper | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | BaseHandler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | OneInchHandler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | UniswapAutoRouterHandler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | UniswapV2Handler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | UniswapV3Handler | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | ISwapRouterV2 | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | ISwapRouterV3 | unmatched — not counted | — | listed in scope | no |
| | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() | | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| | 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() | | HookTargetFirewall | unmatched — not counted | — | listed in scope section | no |
| yAudit SwapVerifier update.pdf | SwapVerifier | unmatched — not counted | — | listed in scope section | no |
| yAudit rEUL ERC20 Wrapper Locked.pdf | RewardToken | unmatched — not counted | — | listed in scope section | no |
| yAudit rEUL ERC20 Wrapper Locked.pdf | ERC20WrapperLocked | unmatched — not counted | — | listed in scope section | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | EulerSwapProtocolFeeConfig | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | EulerSwapManagement | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | EulerSwap | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | EulerSwapBase | unmatched — not counted | — | mentioned as base contract | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | FundsLib | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | SwapLib | unmatched — not counted | — | mentioned in findings | no |
| Euler - PR111Euler26 October 2025 - 28 October 2025 | IEulerSwapCallee | unmatched — not counted | — | mentioned in findings | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | EulerSwap | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | EulerSwapFactory | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | EulerSwapPeriphery | own contract | EulerSwapPeriphery (selected) `0x208ff5...d16b06` — deployed 2025-06-10 22:09:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| euler-swapEuler25 April 2025 - 29 April 2025 | MetaProxyDeployer | unmatched — not counted | — | mentioned in informational finding | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | FundsLib | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | CurveLib | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | QuoteLib | unmatched — not counted | — | mentioned in findings and context | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | CtxLib | unmatched — not counted | — | mentioned in informational finding | no |
| euler-swapEuler25 April 2025 - 29 April 2025 | UniswapHook | unmatched — not counted | — | mentioned in findings and context | no |
| | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() | | PendleUniversalOracle | unmatched — not counted | — | listed in scope | no |
| | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() | | CurveEMAOracle | unmatched — not counted | — | listed in scope | no |
| | 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() | | Governance | unmatched — not counted | — | listed in scope | no |
| | 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() | | Governance | unmatched — not counted | — | mentioned in finding context: Governance.sol#L281 | no |
| | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | | LidoFundamentalOracle | unmatched — not counted | — | listed in scope | no |
| | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | | FixedRateOracle | unmatched — not counted | — | listed in scope | no |
| | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | | RateProviderOracle | unmatched — not counted | — | listed in scope | no |
| | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() | | IRateProvider | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | EVC | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | RewardStreams | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | EPO | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | EVault | unmatched — not counted | — | listed in scope | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | ESynth | unmatched — not counted | — | mentioned in EVK issues | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | EulerSavingsRate | unmatched — not counted | — | mentioned in EVK issues | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | PegStabilityModule | unmatched — not counted | — | mentioned in EVK issues | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | BalanceUtils | unmatched — not counted | — | mentioned in EVK issues | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | ERC20Collateral | unmatched — not counted | — | enhancement mentioned | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | ERC20EVCCompatible | unmatched — not counted | — | enhancement mentioned | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | IRM | unmatched — not counted | — | mentioned in enhancements | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | DistributionStorage | unmatched — not counted | — | enhancement mentioned | no |
| | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() | | TransientStorage | unmatched — not counted | — | mentioned in EVC issues | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | EzEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | RsEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | RswEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | SwEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() | | WeEthToEthExchangeRateChainlinkAdapter | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | ESynth | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | IRMSynth | unmatched — not counted | — | listed in scope | no |
| | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() | | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() | | BaseRewardStreams | unmatched — not counted | — | listed in scope table | no |
| | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() | | StakingRewardStreams | unmatched — not counted | — | listed in scope table | no |
| | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() | | TrackingRewardStreams | unmatched — not counted | — | listed in scope table | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | BaseRewardStreams | unmatched — not counted | — | listed in scope | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | StakingRewardStreams | unmatched — not counted | — | listed in scope | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | TrackingRewardStreams | unmatched — not counted | — | listed in scope | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() | | IRewardStreams | unmatched — not counted | — | listed in scope | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | EulerRouter | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | BaseAdapter | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | CrossAdapter | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | ChainlinkOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | ChronicleOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | PythOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | RedstoneCoreOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | UniswapV3Oracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() | | LidoOracle | unmatched — not counted | — | listed in scope (all files in ./src/) | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | PegStabilityModule | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | ESynth | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | EthereumVaultConnector | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | BaseRewardStreams | unmatched — not counted | — | mentioned in finding context | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | Liquidation | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | Borrowing | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | RiskManager | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | IRMSynth | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | MetaProxyDeployer | unmatched — not counted | — | mentioned in finding context | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | BorrowUtils | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() | | EVault | unmatched — not counted | — | mentioned in finding contexts and file paths | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | ExecutionContext | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | EthereumVaultConnector | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | TransientStorage | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | Errors | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | Events | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | Set | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() | | EVCUtil | unmatched — not counted | — | listed in scope table | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Liquidation | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Governance | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Cache | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IRMSynth | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Vault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | RiskManager | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Token | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Borrowing | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Shares | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | GenericFactory | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | ESynth | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | EVCUtil | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Core | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Dispatch | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Base | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IEVault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IGovernance | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IToken | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IERC20 | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Types | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | OwedLib | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | RPow | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | FullMath | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | EVC | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | EulerRouter | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | InterestRateModel | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Ownable | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Ownable2Step | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Synthetic | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() | | Owned | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | RedstoneCoreOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | BaseAdapter | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | PythOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | ChainlinkOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | Governable | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | CrossAdapter | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | ChronicleOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | UniswapV3Oracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | LidoOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | SDaiOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | EulerRouter | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | ScaleUtils | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | IPriceOracle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | IChronicle | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | IStEth | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | AggregatorV3Interface | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | IPot | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | LiquidityUtils | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() | | LTVConfig | unmatched — not counted | — | Listed in scope and findings | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | EVault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | DToken | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Dispatch | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IEVault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Borrowing | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Governance | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Initialize | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Liquidation | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | RiskManager | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Token | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Vault | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Base | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Cache | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Constants | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | EVCClient | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Errors | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Events | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | LTVUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Storage | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | RPow | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | RevertBytes | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | AmountCap | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Assets | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Flags | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | LTVConfig | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | LTVType | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Owed | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Shares | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Snapshot | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | Types | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | UserStorage | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | VaultCache | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | VaultStorage | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | GenericFactory | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IIRM | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IPermit2 | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | EulerRouter | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | CrossAdapter | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | ChronicleOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | IChronicle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | IStEth | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | LidoOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | IPot | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | SDaiOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | PythOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | RedstoneCoreOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | UniswapV3Oracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | Errors | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | Governable | unmatched — not counted | — | listed in scope | no |
| | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() | | ScaleUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Errors | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Events | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Set | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | TransientStorage | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IERC1271 | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IVault | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EVCUtil | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | DToken | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Dispatch | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EVault | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IEVault | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Borrowing | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Governance | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Initialize | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Liquidation | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RiskManager | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Token | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Vault | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Base | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Cache | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Constants | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EVCClient | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LTVUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Storage | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RPow | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RevertBytes | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | AmountCap | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Assets | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Flags | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LTVConfig | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LTVType | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Owed | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Shares | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Snapshot | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Types | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | UserStorage | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | VaultCache | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | VaultStorage | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | GenericFactory | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IIRM | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Core | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Escrow | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ESynth | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IRMSynth | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IPermit2 | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | EulerRouter | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | CrossAdapter | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ChronicleOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IChronicle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IStEth | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | LidoOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IPot | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | SDaiOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | PythOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RedstoneCoreOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | IReth | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | RethOracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | UniswapV3Oracle | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | Governable | unmatched — not counted | — | listed in scope | no |
| | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() | | ScaleUtils | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() | | EthereumVaultConnector | unmatched — not counted | — | mentioned as the main module audited | no |
| | 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() | | Set | unmatched — not counted | — | mentioned in gas optimization context | no |
| | 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() | | Euler Vault Kit | unmatched — not counted | — | Audit Overview: 'We were tasked with performing an audit of the Euler Finance codebase and in particular their Euler Vault Kit' | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | EulerRouter | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | ChainlinkOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | ChronicleOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | LidoOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | MakerDAOOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | PythOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | RedstoneOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | RocketPoolOracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() | | UniswapV3Oracle | unmatched — not counted | — | described as a module in the audit overview | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | Errors | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | Events | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | Set | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | TransientStorage | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | IERC1271 | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | IVault | unmatched — not counted | — | listed in scope | no |
| | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() | | EVCUtil | unmatched — not counted | — | listed in scope | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BaseProductLine | unmatched — not counted | — | mentioned in findings and scope | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Core | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Escrow | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | GenericFactory | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | ProtocolConfig | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BeaconProxy | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | EVault | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | ESVault | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | EulerSavingsRate | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | ConfigAmount | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Liquidation | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | LiquidityUtils | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Cache | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BorrowUtils | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BalanceUtils | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | AssetTransfers | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | LTVUtils | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Initialize | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Borrowing | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Governance | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Vault | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Token | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | RiskManager | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BalanceForwarder | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Snapshot | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | UserStorage | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Constants | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BaseIRM | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassLido | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassMajor | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassMega | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassMidCap | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassOHM | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassStable | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMClassUSDT | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | IRMDefault | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | BaseIRMLinearKink | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | PegStabilityModule | unmatched — not counted | — | mentioned in findings | no |
| | 7 March 2024 | EVK | Certora | [Certora EVK Report]() | | Dispatch | unmatched — not counted | — | mentioned in findings | no |
| | 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() | | FeeFlowController | unmatched — not counted | — | mentioned in scope and findings | no |
| | 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() | | FeeFlowController | unmatched — not counted | — | listed in scope table | no |
| | 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() | | MinimalEVCClient | unmatched — not counted | — | listed in scope table | no |
| EnigmaDark_EVK_report.pdf | Euler Vault Kit | unmatched — not counted | — | mentioned as codebase under audit | no |
| EnigmaDark_EVK_report.pdf | EVK | unmatched — not counted | — | abbreviation for Euler Vault Kit, the audited system | no |
| EnigmaDark_EVK_report.pdf | RiskManager | unmatched — not counted | — | referenced in finding H-02 as RiskManager::107 | no |
| Euler Trail of Bits report.pdf | EthereumVaultConnector | unmatched — not counted | — | main contract in scope | no |
| Euler Trail of Bits report.pdf | VaultBase | unmatched — not counted | — | mentioned in Slither script as inherited contract | no |
| Euler Trail of Bits report.pdf | EVCClient | unmatched — not counted | — | mentioned in Slither script as inherited contract | no |
| Euler Trail of Bits report.pdf | ExecutionContext | unmatched — not counted | — | mentioned as separate library in maturity evaluation | no |
| Euler Hunter Security report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | Events | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | Set | unmatched — not counted | — | listed in scope | no |
| Euler Hunter Security report.pdf | TransientStorage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | IERC1271 | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | IVault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | Events | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | Set | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC).pdf | TransientStorage | unmatched — not counted | — | listed in scope | no |
| Euler Certora report.pdf | EthereumVaultConnector | unmatched — not counted | — | Listed in scope and findings sections | no |
| Cantina_competition_report.pdf | PegStabilityModule | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | ESynth | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | EthereumVaultConnector | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | BaseRewardStreams | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | Liquidation | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | Borrowing | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | RiskManager | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | IRMSynth | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | MetaProxyDeployer | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | BorrowUtils | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| Cantina_competition_report.pdf | EVault | unmatched — not counted | — | mentioned in finding contexts and scope | no |
| ChainSecurity_EVK_report.pdf | Dispatch | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | DToken | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | EVault | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IEVault | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Borrowing | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Governance | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Initialize | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Liquidation | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Token | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Base | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Cache | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | EVCClient | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Events | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | LTVUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | AddressUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | RevertBytes | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | RPow | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | AmountCap | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Assets | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Flags | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | LTVConfig | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Owed | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Shares | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Snapshot | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | UserStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | VaultCache | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IIRM | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IFlashLoan | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IHookTarget | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IPermit2 | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Core | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | GenericFactory | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | ESynth | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | IRMSynth | unmatched — not counted | — | listed in scope | no |
| ChainSecurity_EVK_report.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| Omniscia_EVK_report.pdf | Assets | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | AmountCap | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | AssetTransfers | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Base | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Borrowing | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | BeaconProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | BorrowUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | BalanceUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | BalanceForwarder | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Cache | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Constants | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ConfigAmount | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ConversionHelpers | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | DToken | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Dispatch | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ESynth | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | EVault | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Events | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | EVCClient | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ERC20Collateral | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | EulerSavingsRate | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Flags | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Governance | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | GenericFactory | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | IRMSynth | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Initialize | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | IRMLinearKink | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | LTVType | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | LTVUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | LTVConfig | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Liquidation | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | LiquidityUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | MetaProxyDeployer | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Owed | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ProxyUtils | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | RPow | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | RevertBytes | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | RiskManager | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Shares | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Storage | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Snapshot | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Token | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Types | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | UserStorage | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | VaultCache | unmatched — not counted | — | listed in scope table | no |
| Omniscia_EVK_report.pdf | VaultStorage | unmatched — not counted | — | listed in scope table | no |
| yAudit_competition_fixes_report.pdf | EVC | unmatched — not counted | — | listed in scope section | no |
| yAudit_competition_fixes_report.pdf | RewardStreams | unmatched — not counted | — | listed in scope section | no |
| yAudit_competition_fixes_report.pdf | EPO | unmatched — not counted | — | listed in scope section | no |
| yAudit_competition_fixes_report.pdf | EVault | unmatched — not counted | — | listed in scope section | no |
| yAudit_competition_fixes_report.pdf | ESynth | unmatched — not counted | — | mentioned in EVK issues | no |
| yAudit_competition_fixes_report.pdf | EulerSavingsRate | unmatched — not counted | — | mentioned in EVK issues | no |
| yAudit_competition_fixes_report.pdf | PegStabilityModule | unmatched — not counted | — | mentioned in EVK issues | no |
| yAudit_competition_fixes_report.pdf | BalanceUtils | unmatched — not counted | — | mentioned in EVK issues | no |
| yAudit_competition_fixes_report.pdf | ERC20Collateral | unmatched — not counted | — | mentioned in enhancements | no |
| yAudit_competition_fixes_report.pdf | ERC20EVCCompatible | unmatched — not counted | — | mentioned in enhancements | no |
| yAudit_competition_fixes_report.pdf | IRM | unmatched — not counted | — | mentioned in enhancements | no |
| yAudit_competition_fixes_report.pdf | TransientStorage | unmatched — not counted | — | mentioned in EVC issues | no |
| yAudit_competition_fixes_report.pdf | DistributionStorage | unmatched — not counted | — | mentioned in enhancements | no |
| Euler_Price_Oracle_BailSec_Report.pdf | ChainlinkInfrequentOracleXStocks | unmatched — not counted | — | Listed in scope section with file path | no |
| Euler_Price_Oracle_BailSec_Report.pdf | HookTargetTermsOfUse | unmatched — not counted | — | Listed in scope section with file path | no |
| Euler_Price_Oracle_BailSec_Report.pdf | SwapVerifier | unmatched — not counted | — | Listed in scope section with file path | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | BaseAdapter | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | ChronicleOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | EulerRouter | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | LidoOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | PythOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | RethOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | RedstoneCoreOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | SDaiOracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | ScaleUtils | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_Omniscia_Report.pdf | UniswapV3Oracle | unmatched — not counted | — | listed in scope table | no |
| Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf | PendleOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Events | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Set | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | TransientStorage | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IERC1271 | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EVCUtil | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | DToken | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Dispatch | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EVault | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IEVault | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Borrowing | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Governance | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Initialize | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Liquidation | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Base | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Cache | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EVCClient | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LTVUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RPow | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RevertBytes | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | AmountCap | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Assets | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Flags | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LTVConfig | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LTVType | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Owed | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Shares | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Snapshot | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | UserStorage | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | VaultCache | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | GenericFactory | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IIRM | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Core | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ESynth | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IRMSynth | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IPermit2 | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | EulerRouter | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | CrossAdapter | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ChronicleOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IChronicle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IStEth | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | LidoOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IPot | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | SDaiOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | PythOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RedstoneCoreOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | IReth | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | RethOracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | UniswapV3Oracle | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| Euler_Price_Oracle_yAudit_Report.pdf | ScaleUtils | unmatched — not counted | — | listed in scope | no |
| Euler Omniscia report.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | Events | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | EVCUtil | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | ExecutionContext | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | Set | unmatched — not counted | — | listed in scope table | no |
| Euler Omniscia report.pdf | TransientStorage | unmatched — not counted | — | listed in scope table | no |
| Euler Spearbit report.pdf | EthereumVaultConnector | unmatched — not counted | — | Listed in scope and findings context | no |
| Euler Spearbit report.pdf | IEthereumVaultConnector | unmatched — not counted | — | Listed in findings context | no |
| Euler Spearbit report.pdf | EVCUtil | unmatched — not counted | — | Listed in findings context | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Errors | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Events | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ExecutionContext | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Set | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | TransientStorage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IERC1271 | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IEthereumVaultConnector | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IVault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EVCUtil | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | DToken | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Dispatch | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EVault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IEVault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BalanceForwarder | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Borrowing | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Governance | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Initialize | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Liquidation | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RiskManager | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Token | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Vault | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | AssetTransfers | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BalanceUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Base | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BorrowUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Cache | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EVCClient | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LTVUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LiquidityUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Storage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ConversionHelpers | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ProxyUtils | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RPow | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RevertBytes | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | SafeERC20Lib | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | AmountCap | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Assets | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ConfigAmount | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Flags | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LTVConfig | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LTVType | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Owed | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Shares | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Snapshot | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Types | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | UserStorage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | VaultCache | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BeaconProxy | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | GenericFactory | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | MetaProxyDeployer | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IIRM | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IRMLinearKink | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BaseProductLine | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Core | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IProtocolConfig | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ProtocolConfig | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ERC20Collateral | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ESynth | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EulerSavingsRate | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IRMSynth | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | PegStabilityModule | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IBalanceTracker | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IPermit2 | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | EulerRouter | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | CrossAdapter | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ChronicleOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IChronicle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IStEth | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | LidoOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IPot | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | SDaiOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | PythOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RedstoneCoreOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | IReth | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | RethOracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | UniswapV3Oracle | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | Governable | unmatched — not counted | — | listed in scope | no |
| Euler yAudit report (EVC + EVK + Price Oracle).pdf | ScaleUtils | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 105 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 73
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 887 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=68, low=6, medium=8
- Match method counts: unique_name=9

Zero-match audit list:

- [17249] Learn more
- [17251] Pashov_Audit_Group_report.pdf
- [17252] Certora_EulerEarn_report.pdf
- [17253] Sigma_Prime_EulerEarn_report.pdf
- [17254] Rendered PDF capture
- [17255] Rendered PDF capture
- [17257] Omniscia Euler Earn Report
- [17259] Certora EulerEarn
- [17260] Sigma Prime EulerEarn
- [17265] Fuzzland EulerSwap
- [17267] report-cantinacode-euler-0901.pdf
- [17268] yAudit ERC4626 and Vault Securitize Report
- [17269] Pashov Group ERC4626 and Vault Securitize Report
- [17270] | 2 December 2024 | EVK Periphery - ERC20 Burnable Mintable | BailSec | [BailSec ERC20BurnableMintable Report]() |
- [17271] | 1 June 2025 | EUL ERC20 | BailSec | [BailSec EUL ERC20 Report]() |
- [17272] | 11 March 2026 | EVK Periphery (Oracle, Hook, SwapVerifier) | BailSec | [BailSec EVK Periphery Oracle Hook SwapVerifier Report]() |
- [17273] | 1 August 2025 | HookTargetMarketStatus | CD Security | [CD Security HookTargetMarketStatus Report]() |
- [17274] CDSecurity ERC20 Wrapper Locked.pdf
- [17275] | 5 February 2025 | Adaptive IRM | Electisec | [Electisec Adaptive IRM Report]() |
- [17276] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Electisec | [Electisec ERC20Synth and Auxiliary Contracts Report]() |
- [17277] | 11 March 2025 | GovernorAccessControlEmergencyFactory | Electisec | [Electisec GovernorAccessControlEmergencyFactory Report]() |
- [17279] | 22 April 2025 | HookTargetStakeDelegator | MixBytes | [MixBytes HookTargetStakeDelegator Report]() |
- [17280] Paladin LayerZero Adapters.pdf
- [17281] | 14 October 2025 | ERC20Synth & Auxiliary Contracts | Spearbit | [Spearbit ERC20Synth and Auxiliary Contracts Report]() |
- [17282] | 13 June 2025 | IRMLinearKinky | Supremacy | [Supremacy IRMLinearKinky Report]() |
- [17285] | 17 June 2024 | EVK Periphery | yAudit | [yAudit EVK Periphery Report]() |
- [17286] | 20 September 2024 | EVK Periphery Forta Firewall hooks | yAudit - Forta Firewall Attestation hooks | [yAudit - EVK Periphery - Forta Firewall hooks Report]() |
- [17287] yAudit SwapVerifier update.pdf
- [17288] yAudit rEUL ERC20 Wrapper Locked.pdf
- [17289] yAudit_Euler_Deployment_Polygon_Avalanche_Report.pdf
- [17290] Euler Rescue StrategyEuler07 November 2025 - 12 November 2025
- [17291] Euler - PR111Euler26 October 2025 - 28 October 2025
- [17295] | 18 February 2025 | EPO (PR#78, PR#79) | Electisec | [Electisec EPO Report]() |
- [17296] | 4 February 2025 | setLTV | Electisec | [Electisec setLTV Report]() |
- [17297] | 20 January 2025 | EVK | Cantina | [M4rio.eth SetLTV Report]() |
- [17301] | 5 September 2024 | EPO | yAudit | [yAudit EPO Update review Report]() |
- [17302] | 8 July 2024 | Euler V2 | yAudit | [yAudit CodeCompetition Fixes review]() |
- [17303] | 20 July 2024 | Origami Oracle Adapters | yAudit | [yAudit Origami Oracle Adapters Report]() |
- [17304] | 14 June 2024 | Synths | OpenZeppelin | [OpenZeppelin Synths Report]() |
- [17305] | 9 May 2024 | Reward Streams | Mixbytes | [Mixbytes Reward Streams Report]() |
- [17306] | 1 May 2024 | Reward Streams | Hunter Security | [Hunter Security Reward Streams Report]() |
- [17307] | 29 April 2024 | EPO | ChainSecurity | [ChainSecurity Oracle Report]() |
- [17308] | 22 April 2024 | Euler V2 | Cantina CodeCompetition | [Cantina CodeCompetition Report]() |
- [17309] | 8 April 2024 | EVC | ChainSecurity | [ChainSecurity EVC Report]() |
- [17310] | 8 April 2024 | EVK | Spearbit | [Spearbit EVK Report]() |
- [17311] | 8 April 2024 | EPO | Spearbit | [Spearbit EPO Report]() |
- [17312] | 8 April 2024 | EVK | OpenZeppelin | [OpenZeppelin EVK Report]() |
- [17313] | 8 April 2024 | EPO | OpenZeppelin | [OpenZeppelin Oracle Report]() |
- [17314] | 25 March 2024 | Euler V2 | yAudit | [yAudit Euler V2 Report]() |
- [17315] | 18 March 2024 | EVC | Omniscia | [Omniscia EVC Report]() |
- [17316] | 18 March 2024 | EVK | Omniscia | [Omniscia EVK Report]() |
- [17317] | 18 March 2024 | EPO | Omniscia | [Omniscia EPO Report]() |
- [17318] | 18 March 2024 | EVC | OpenZeppelin | [OpenZeppelin EVC Report]() |
- [17319] | 7 March 2024 | EVK | Certora | [Certora EVK Report]() |
- [17320] | 19 February 2024 | FeeFlow | Ottersec - FeeFlow | [Ottersec FeeFlow Report]() |
- [17321] | 12 February 2024 | FeeFlow | Team Omega | [Team Omega FeeFlow Report]() |
- [17322] | 6 February 2024 | FeeFlow | Zellic | [Zellic FeeFlow Report]() |
- [17323] EnigmaDark_EVK_report.pdf
- [17324] Euler Trail of Bits report.pdf
- [17325] Euler Hunter Security report.pdf
- [17326] Euler yAudit report (EVC).pdf
- [17327] Euler Certora report.pdf
- [17328] Cantina_competition_report.pdf
- [17329] ChainSecurity_EVK_report.pdf
- [17330] Omniscia_EVK_report.pdf
- [17331] yAudit_competition_fixes_report.pdf
- [17334] Euler_Price_Oracle_BailSec_Report.pdf
- [17335] Euler_Price_Oracle_Omniscia_Report.pdf
- [17336] Euler_Price_Oracle_yAudit_PendleOracle_Report.pdf
- [17337] Euler_Price_Oracle_yAudit_Report.pdf
- [17338] Euler Omniscia report.pdf
- [17339] Euler Spearbit report.pdf
- [17340] Euler yAudit report (EVC + EVK + Price Oracle).pdf

Fork inheritance lineage and inherited audits are included when available.
