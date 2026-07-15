# Agentic Audit Brief: Mitosis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Mitosis (`mitosis`)
- Website: [https://mitosis.org](https://mitosis.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, ethereum, linea, manta-pacific, mantle, mode, optimism, scroll
- Contract surface: 58 unique implementations (62 raw deployments)
- Coverage basis: 0/39 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,146,572.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Mitosis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 44 contract row(s) across arbitrum, base, blast, bsc, ethereum, linea, manta-pacific, mantle, mode, optimism, scroll. Structural roles: 27 supporting, 13 core, 3 unclassified, 1 infra. 25 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 44
- Structural roles: supporting (27), core (13), unclassified (3), infra (1)
- Contract kinds: contract (41), abstract (2), unclassified (1)
- Detected standards: erc1967proxy (21), erc20 (6), ownable (5), ownable2step (3), erc165 (2), erc20permit (1)
- Frameworks: openzeppelin (28), openzeppelin-upgradeable (19), solady (3), solmate (2)
- Upgradeable-pattern rows: 25

## Fork Analysis

0 of 60 contracts are derived from known codebases. 60 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbf5495...8d2110`, chain 1)
- UnnamedContract (`0x5616fe...6821be`, chain 10)
- UnnamedContract (`0xea8edd...da0dd7`, chain 10)
- UnnamedContract (`0x6d1703...1a5943`, chain 56)
- UnnamedContract (`0xa5deb1...8df42d`, chain 56)
- UnnamedContract (`0x6ff000...dbce55`, chain 5000)
- UnnamedContract (`0x3c09fb...beb0df`, chain 42161)
- UnnamedContract (`0x73981b...f2a007`, chain 42161)
- UnnamedContract (`0x7e8cff...53e8ba`, chain 42161)
- UnnamedContract (`0xbed575...749471`, chain 42161)
- UnnamedContract (`0x04c059...6c150a`, chain 59144)
- UnnamedContract (`0x3478de...b5eaa5`, chain 59144)
- UnnamedContract (`0x56ced4...b08768`, chain 59144)
- UnnamedContract (`0x96d6ce...d9ec2d`, chain 59144)
- UnnamedContract (`0x0817b8...ae31ef`, chain 81457)
- UnnamedContract (`0x8506fd...3f60a0`, chain 81457)
- UnnamedContract (`0x213e5f...aa3bdb`, chain 534352)
- BasicVaultMigration (`0xa0eeb4...28bd28`, chain 534352)
- BeaconProxy (`0x0109e9...fa5358`, chain 1)
- BeaconProxy (`0x02ff1f...b94cf3`, chain 1)
- BeaconProxy (`0x14c5a9...d8cdbf`, chain 1)
- BeaconProxy (`0xa1ebd2...629182`, chain 1)
- BeaconProxy (`0xe4cf2d...59a3ec`, chain 1)
- BeaconProxy (`0xadd585...1abfc2`, chain 56)
- BeaconProxy (`0x8735c8...61981e`, chain 169)
- BeaconProxy (`0xa30c15...dfa442`, chain 34443)
- BeaconProxy (`0xb9ca61...4308d6`, chain 534352)
- BEP20USDT (`0x55d398...197955`, chain 56)
- BoringVault (`0x917cee...909d88`, chain 1)
- ClonableBeaconProxy (`0x357510...cf4dbe`, chain 42161)
- ERC1967Proxy (`0x747a3d...809c55`, chain 8453)
- ERC1967Proxy (`0x8a7f54...97a98b`, chain 8453)
- FiatTokenProxy (`0x833589...a02913`, chain 8453)
- GnosisSafeL2 (`0x978fc4...032701`, chain 34443)
- GnosisSafeProxy (`0x818116...d4cf3c`, chain 1)
- GnosisSafeProxy (`0xce0d51...2e7fa6`, chain 10)
- GnosisSafeProxy (`0x213e5f...aa3bdb`, chain 5000)
- GnosisSafeProxy (`0x978fc4...032701`, chain 42161)
- MantaMintableERC20WithBridgeFlag (`0x77b6f9...1c2300`, chain 169)
- MultiBridgeToken (`0x3d15fd...e2c3a0`, chain 42161)
- MultiBridgeToken (`0x15eefe...ef4d25`, chain 534352)
- OptimismMintableERC20 (`0x346e03...0e08f0`, chain 10)
- SafeProxy (`0x213e5f...aa3bdb`, chain 56)
- SafeProxy (`0x213e5f...aa3bdb`, chain 59144)
- SafeProxy (`0x213e5f...aa3bdb`, chain 81457)
- TheoDepositVault (`0x0b75e1...eaa2fa`, chain 1)
- TheoDepositVault (`0x54602e...2cee34`, chain 42161)
- TheoDepositVault (`0xcf101e...95b28c`, chain 59144)
- TransparentUpgradeableProxy (`0x004e9c...350568`, chain 1)
- TransparentUpgradeableProxy (`0xf1376b...df51f4`, chain 1)
- TransparentUpgradeableProxy (`0x939197...2b593e`, chain 10)
- TransparentUpgradeableProxy (`0xe6829d...59e8fa`, chain 5000)
- TransparentUpgradeableProxy (`0x04c059...6c150a`, chain 34443)
- TransparentUpgradeableProxy (`0x241609...cceea5`, chain 42161)
- TransparentUpgradeableProxy (`0x6b2a01...bd726a`, chain 42161)
- TransparentUpgradeableProxy (`0x1bf74c...0b8aa6`, chain 59144)
- TransparentUpgradeableProxy (`0x01f0a3...a1c506`, chain 534352)
- UUPSProxy (`0x35fa16...118ac2`, chain 1)
- UUPSProxy (`0xcd5fe2...59b7ee`, chain 1)
- WETH9 (`0x420000...000006`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 44 (43 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 56/70 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/39 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 56 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Deployed-live implementations: 56 of 58 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 58
- Raw deployments: 62
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasicVaultMigration | operational_periphery | project_anchor | own_supporting | 5 | ethereum | unit-247735 (5 proxies) | 5 deployments: ethereum `0x0109e9...fa5358`; ethereum `0x02ff1f...b94cf3`; ethereum `0x14c5a9...d8cdbf`; ethereum `0xa1ebd2...629182`; ethereum `0xe4cf2d...59a3ec` | ⚠️ Unaudited |
| BasicVaultMigration | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-247744 | `0xadd585...1abfc2` | ⚠️ Unaudited |
| BasicVaultMigration | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-247714 | `0xa0eeb4...28bd28` | ⚠️ Unaudited |
| BeaconProxy | registry | project_anchor | own_supporting | 0 | manta-pacific | unit-247700 | `0x8735c8...61981e` | ⚠️ Unaudited |
| BeaconProxy | registry | project_anchor | own_supporting | 0 | mode | unit-247703 | `0xa30c15...dfa442` | ⚠️ Unaudited |
| BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbed575...749471` | ⚠️ Unaudited |
| BeaconProxy | registry | project_anchor | own_supporting | 0 | scroll | unit-247715 | `0xb9ca61...4308d6` | ⚠️ Unaudited |
| BEP20USDT | token | project_anchor | own_supporting | 0 | bsc | unit-247717 | `0x55d398...197955` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-247691 | `0x917cee...909d88` | ⚠️ Unaudited |
| EETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247732 | `0x35fa16...118ac2` | ⚠️ Unaudited |
| EtherfiOFTUpgradeable | unknown | project_anchor | own_supporting | 1 | linea | unit-247746 | `0x1bf74c...0b8aa6` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | project_anchor | own_supporting | 1 | base | unit-247747 | `0x833589...a02913` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-247733 | `0x818116...d4cf3c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | optimism | unit-247737 | `0xce0d51...2e7fa6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 0 | mode | unit-247702 | `0x978fc4...032701` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | arbitrum | unit-247738 | `0x978fc4...032701` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | mantle | unit-247710 | `0x213e5f...aa3bdb` | ⚠️ Unaudited |
| HypERC20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-247745 | `0x8e1e6b...16caef` | ⚠️ Unaudited |
| L2cmETH | unknown | project_anchor | own_supporting | 1 | mantle | unit-247742 | `0xe6829d...59e8fa` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | project_anchor | own_supporting | 0 | manta-pacific | unit-247699 | `0x77b6f9...1c2300` | ⚠️ Unaudited |
| MitosisHypERC20 | token | project_anchor | own_supporting | 1 | base | unit-247749 | `0x747a3d...809c55` | ⚠️ Unaudited |
| MitosisHypERC20 | token | project_anchor | own_supporting | 1 | base | unit-247748 | `0x8a7f54...97a98b` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-247705 | `0x3d15fd...e2c3a0` | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-247712 | `0x15eefe...ef4d25` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | optimism | unit-247696 | `0x346e03...0e08f0` | ⚠️ Unaudited |
| RockXETH | token | project_anchor | own_supporting | 1 | ethereum | unit-247731 | `0xf1376b...df51f4` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-247716 | `0x213e5f...aa3bdb` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | linea | unit-247721 | `0x213e5f...aa3bdb` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | blast | unit-247727 | `0x213e5f...aa3bdb` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-247739 | `0x357510...cf4dbe` | ⚠️ Unaudited |
| TheoDepositVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-247680 | `0x0b75e1...eaa2fa` | ⚠️ Unaudited |
| TheoDepositVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-247706 | `0x54602e...2cee34` | ⚠️ Unaudited |
| TheoDepositVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-247725 | `0xcf101e...95b28c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | mode | unit-247701 | `0x04c059...6c150a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-247711 | `0x01f0a3...a1c506` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247734 | `0x004e9c...350568` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | optimism | unit-247736 | `0x939197...2b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-247741 | `0x6b2a01...bd726a` | ⚠️ Unaudited |
| WeETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247730 | `0xcd5fe2...59b7ee` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-247729 | `0x420000...000006` | ⚠️ Unaudited |
| XERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-247740 | `0x241609...cceea5` | ⚠️ Unaudited |

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
| BasicVaultMigration | operational_periphery | project_anchor | own_supporting | 1 | mantle | unit-247743 | `0x6ff000...dbce55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247692 | `0xbf5495...8d2110` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247697 | `0x5616fe...6821be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247698 | `0xea8edd...da0dd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247718 | `0x6d1703...1a5943` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-247719 | `0xa5deb1...8df42d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247704 | `0x3c09fb...beb0df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247707 | `0x73981b...f2a007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247708 | `0x7e8cff...53e8ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-247709 | `0xbed575...749471` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-247720 | `0x04c059...6c150a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-247722 | `0x3478de...b5eaa5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-247723 | `0x56ced4...b08768` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-247724 | `0x96d6ce...d9ec2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-247726 | `0x0817b8...ae31ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-247728 | `0x8506fd...3f60a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-247713 | `0x213e5f...aa3bdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-05-22_Zellic_Mainnet.pdf](https://raw.githubusercontent.com/mitosis-org/chain/203384fc62b6203525f486c5130fd484344c2668/audits/2025-05-22_Zellic_Mainnet.pdf) | Zellic | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 34 | high |
| [2025-09-21_Zenith_Protocol.pdf](https://github.com/mitosis-org/protocol/blob/main/audits/2025-09-21_Zenith_Protocol.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8](https://omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8) | Code4rena | Contest | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3056] 2025-05-22_Zellic_Mainnet.pdf — no match: Extracted 34 contract names from the scope section and system design section. The audit date is May 22, 2025 from the cover page.
- [3059] 2025-09-21_Zenith_Protocol.pdf — no match: Extracted 10 contract names from the scope section and findings. Audit date from report published date.
- [14230] omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8 — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-05-22_Zellic_Mainnet.pdf | MitosisVault | unmatched — not counted | — | listed in scope and findings | no |
| 2025-05-22_Zellic_Mainnet.pdf | MitosisVaultEOL | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MitosisVaultMatrix | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MitosisVaultEntrypoint | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | GovernanceEntrypoint | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MatrixStrategyExecutor | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | GovMITO | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | GovMITOEmission | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ReclaimQueue | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ConsensusValidatorEntrypoint | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ConsensusGovernanceEntrypoint | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | AssetManager | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | AssetManagerEntrypoint | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | HubAsset | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | HubAssetFactory | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | CrossChainRegistry | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | EOLVault | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | EOLVaultFactory | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MITOGovernance | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MITOGovernanceVP | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | BranchGovernanceEntrypoint | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MatrixVault | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MatrixVaultBasic | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MatrixVaultCapped | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | Treasury | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | MerkleRewardDistributor | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ValidatorManager | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ValidatorStaking | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ValidatorStakingHub | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ValidatorStakingGovMITO | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ValidatorRewardDistributor | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | ValidatorContributionFeed | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | EpochFeeder | unmatched — not counted | — | listed in scope and system design | no |
| 2025-05-22_Zellic_Mainnet.pdf | LibSecp256k1 | unmatched — not counted | — | listed in scope and findings | no |
| 2025-09-21_Zenith_Protocol.pdf | ReclaimQueue | unmatched — not counted | — | Listed in scope and findings target ReclaimQueue.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | AssetManager | unmatched — not counted | — | Listed in scope and findings target AssetManager.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | MitosisVault | unmatched — not counted | — | Listed in scope and findings target MitosisVault.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | MitosisVaultDepositProxy | unmatched — not counted | — | Listed in scope and findings target MitosisVaultDepositProxy.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | MitosisVaultVLF | unmatched — not counted | — | Listed in scope and findings target MitosisVaultVLF.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | MitosisVaultEntrypoint | unmatched — not counted | — | Listed in scope and findings target MitosisVaultEntrypoint.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | LinearVestingManager | unmatched — not counted | — | Listed in scope and findings target LinearVestingManager.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | VLFVaultCapped | unmatched — not counted | — | Listed in scope and findings target VLFVaultCapped.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | MerkleRewardDistributor | unmatched — not counted | — | Listed in scope and findings target MerkleRewardDistributor.sol | no |
| 2025-09-21_Zenith_Protocol.pdf | VLFStrategyExecutor | unmatched — not counted | — | Listed in scope and findings target VLFStrategyExecutor.sol | no |
| omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8 | CCDMHost | unmatched — not counted | — | — | no |
| omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8 | Cap | unmatched — not counted | — | — | no |
| omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8 | EETHDepositHelper | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0109e9...fa5358` | BasicVaultMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xadd585...1abfc2` | BasicVaultMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xa0eeb4...28bd28` | BasicVaultMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x55d398...197955` | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x917cee...909d88` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35fa16...118ac2` | EETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x833589...a02913` | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xe6829d...59e8fa` | L2cmETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta-pacific | `0x77b6f9...1c2300` | MantaMintableERC20WithBridgeFlag | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x747a3d...809c55` | MitosisHypERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8a7f54...97a98b` | MitosisHypERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3d15fd...e2c3a0` | MultiBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x15eefe...ef4d25` | MultiBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x346e03...0e08f0` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf1376b...df51f4` | RockXETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x357510...cf4dbe` | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b75e1...eaa2fa` | TheoDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x54602e...2cee34` | TheoDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xcf101e...95b28c` | TheoDepositVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x004e9c...350568` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x939197...2b593e` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6b2a01...bd726a` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd5fe2...59b7ee` | WeETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x420000...000006` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x241609...cceea5` | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 1 |
| standard_library | 14 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 47 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [3056] 2025-05-22_Zellic_Mainnet.pdf
- [3059] 2025-09-21_Zenith_Protocol.pdf
- [14230] omniscia.io/reports/mitosis-core-protocol-65d72c4f31a85a00186cf5f8

Fork inheritance lineage and inherited audits are included when available.
