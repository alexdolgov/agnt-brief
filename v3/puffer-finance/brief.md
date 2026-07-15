# Agentic Audit Brief: Puffer Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Puffer Finance (`puffer-finance`)
- Website: [https://puffer.fi](https://puffer.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: apechain, arbitrum, base, berachain, bsc, chain-17000, ethereum, hyperliquid, linea, megaeth, monad, scroll, soneium, tac, zircuit
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: 2/15 confirmed own live verified implementations (13.3%); conservative 13.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $42,781,317.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Puffer Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across apechain, arbitrum, base, berachain, bsc, chain-17000, ethereum, hyperliquid, linea, megaeth, monad, scroll, soneium, tac, zircuit. Structural roles: 18 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (18)
- Contract kinds: contract (16), abstract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- pufETH BurnMintERC677 (`0x6c460b...9b9a8b`, chain 1868)
- pufETH BurnMintERC677 (`0x37d638...eddbcf`, chain 42161)
- pufETH BurnMintERC677 (`0x417b0f...e6f205`, chain 80094)
- pufETH LayerZero OFT (`0x37d638...eddbcf`, chain 143)
- pufETH LayerZero OFT (`0x37d638...eddbcf`, chain 239)
- pufETH LayerZero OFT (`0x87d000...5392b6`, chain 999)
- pufETH LayerZero OFT (`0x37d638...eddbcf`, chain 4326)
- pufETH LayerZero OFT (`0x37d638...eddbcf`, chain 59144)
- PUFFER LayerZero OFT (`0x8da0ba...74f3e4`, chain 8453)
- PufferVault proxy (`0xd9a442...306a72`, chain 1)
- PufferVault pufETH proxy (`0xc4d46e...ea030e`, chain 534352)
- xPufETH proxy (`0x642748...569381`, chain 56)
- xPufETH proxy (`0x23da5f...10eff1`, chain 8453)
- xPufETH proxy (`0x6234e5...feae3b`, chain 33139)
- xPufETH proxy (`0x9346a5...ddba57`, chain 48900)

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (15 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/15 (13.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 19 of 20 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/15
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 13.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blocksec | Tier 2 | 2 | 13.3% | 2024-04 |
| Creed | Tier 2 | 2 | 13.3% | 2024-05 |
| Nethermind | Tier 2 | 2 | 13.3% | 2024-04 |
| SlowMist | Tier 1 | 2 | 13.3% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PufferProtocol | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391383 | `0xf7b6b3...bd238b` | ✅ Audited |
| ValidatorTicket | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391381 | `0x7d26ad...73a55a` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1RewardManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391382 | `0x157788...3cf17b` | ⚠️ Unaudited |
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391371 | `0x37d638...eddbcf` | ⚠️ Unaudited |
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | berachain | unit-391377 | `0x417b0f...e6f205` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391380 | `0x87d000...5392b6` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | megaeth | unit-391372 | `0x37d638...eddbcf` | ⚠️ Unaudited |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | linea | unit-391376 | `0x37d638...eddbcf` | ⚠️ Unaudited |
| PUFFER LayerZero OFT | unknown | project_anchor | own_supporting | 0 | base | unit-391379 | `0x8da0ba...74f3e4` | ⚠️ Unaudited |
| PufferVault proxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391364 | `0xd9a442...306a72` | ⚠️ Unaudited |
| PufferVault pufETH proxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-391374 | `0xc4d46e...ea030e` | ⚠️ Unaudited |
| PufferVaultV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391363 | `0x3b2fdf...3b8afa` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-391375 | `0x642748...569381` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | base | unit-391378 | `0x23da5f...10eff1` | ⚠️ Unaudited |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | apechain | unit-391370 | `0x6234e5...feae3b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| pufETH BurnMintERC677 | unknown | project_anchor | own_supporting | 0 | soneium | unit-391368 | `0x6c460b...9b9a8b` | ❓ Unverified |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | monad | unit-391365 | `0x37d638...eddbcf` | ❓ Unverified |
| pufETH LayerZero OFT | unknown | project_anchor | own_supporting | 0 | tac | unit-391369 | `0x37d638...eddbcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-391367 | `0x919683...b6bec9` | ❓ Unverified |
| xPufETH proxy | unknown | project_anchor | own_supporting | 0 | zircuit | unit-391373 | `0x9346a5...ddba57` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Blocksec_audit_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Blocksec_audit_April2024.pdf) | Blocksec | Audit | 2024-04 | stale | Direct | n/a | matched | 2 | 2 | 0 | 13 | n/a |
| [Creed_Puffer_Finance_Audit_May2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Creed_Puffer_Finance_Audit_May2024.pdf) | Creed | Audit | 2024-05 | stale | Direct | n/a | matched | 2 | 2 | 0 | 56 | n/a |
| [Nethermind_PufferProtocol_NM0202_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Nethermind_PufferProtocol_NM0202_April2024.pdf) | Nethermind | Audit | 2024-04 | stale | Direct | n/a | matched | 2 | 2 | 0 | 31 | n/a |
| [SlowMist_PufferFinance_Phase2.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/SlowMist_PufferFinance_Phase2.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | n/a | matched | 2 | 2 | 0 | 12 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4684] Blocksec_audit_April2024.pdf — matched: No reason recorded
- [4685] Creed_Puffer_Finance_Audit_May2024.pdf — matched: No reason recorded
- [4686] Nethermind_PufferProtocol_NM0202_April2024.pdf — matched: No reason recorded
- [4687] SlowMist_PufferFinance_Phase2.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Blocksec_audit_April2024.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | GuardianModule | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | LibBeaconchainContract | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | LibGuardianMessages | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferModule | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferOracle | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b3...bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Blocksec_audit_April2024.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| Blocksec_audit_April2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad...73a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Blocksec_audit_April2024.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | AVSContractsRegistry | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | BalancerRateProvider | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | EchidnaPufferVaultV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Errors | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | GuardianModule | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IBeaconDepositContract | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IDelegationManager | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IEigenLayer | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IEnclaveVerifier | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IGuardianModule | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ILidoWithdrawalQueue | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferDepositor | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferDepositorV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferModule | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferModuleManager | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferOracle | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferOracleV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferProtocol | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferVault | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IPufferVaultV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IRegistryCoordinatorExtended | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IRestakingOperator | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IStETH | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IStrategy | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ISushiRouter | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IValidatorTicket | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IWETH | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | IWstETH | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | LibBeaconchainContract | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | LibGuardianMessages | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | NoImplementation | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | NodeInfo | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Permit | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ProtocolStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferDeployment | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferDepositor | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferDepositorStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferModule | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferOracle | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b3...bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferVault | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferVaultStorage | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | PufferVaultV2Tests | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | RaveEvidence | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Status | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | StoppedValidatorInfo | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Timelock | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | Validator | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ValidatorKeyData | unmatched — not counted | — | — | no |
| Creed_Puffer_Finance_Audit_May2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad...73a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Creed_Puffer_Finance_Audit_May2024.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | BalancerRateProvider | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | Errors | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | GuardianModule | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IBeaconDepositContract | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IEnclaveVerifier | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IGuardianModule | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IPufferModule | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IPufferModuleManager | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IPufferProtocol | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IRestakingOperator | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IValidatorTicket | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | IWETH | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | LibBeaconchainContract | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | LibGuardianMessages | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | NodeInfo | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ProtocolStorage | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferModule | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferOracle | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b3...bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | RaveEvidence | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | Status | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | StoppedValidatorInfo | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | Validator | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorKeyData | unmatched — not counted | — | — | no |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad...73a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind_PufferProtocol_NM0202_April2024.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | BalancerRateProvider | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | EnclaveVerifier | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | GuardianModule | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferDepositorV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferModule | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferModuleManager | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferOracle | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferOracleV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferProtocol | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xf7b6b3...bd238b` — deployed 2024-04-30 20:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_PufferFinance_Phase2.pdf | PufferProtocolStorage | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | PufferVaultV2 | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | RestakingOperator | unmatched — not counted | — | — | no |
| SlowMist_PufferFinance_Phase2.pdf | ValidatorTicket | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x7d26ad...73a55a` — deployed 2024-04-30 20:36:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_PufferFinance_Phase2.pdf | ValidatorTicketStorage | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x157788...3cf17b` | L1RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3b2fdf...3b8afa` | PufferVaultV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 112 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=8

Fork inheritance lineage and inherited audits are included when available.
