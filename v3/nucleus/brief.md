# Agentic Audit Brief: Nucleus

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 13 (1 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Nucleus (`nucleus`)
- Website: [https://www.nucleusearn.io](https://www.nucleusearn.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 15 unique implementations (21 raw deployments)
- Coverage basis: 1/11 confirmed own live verified implementations (9.1%); conservative 9.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,883,431.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Nucleus. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 11 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (11)
- Contract kinds: contract (11)
- Detected standards: erc165 (6), erc20permit (6)
- Frameworks: openzeppelin (11), solmate (11)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 12 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

**MultiChainLayerZeroTellerWithMultiAssetSupport** (`0x9ff67b...a14fbc`, chain 1)
Origin: nucleus (`0x97d0b9...3918b9`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcd721c...0ea8ba`, chain 1)
- BoringVault (`0x170d84...c933a0`, chain 1)
- BoringVault (`0x196ead...bd3dcc`, chain 1)
- BoringVault (`0x19e099...3c0b32`, chain 1)
- BoringVault (`0x52e4d8...07a0d1`, chain 1)
- BoringVault (`0x722a85...1f883b`, chain 1)
- BoringVault (`0x82c40e...c7cab4`, chain 1)
- TellerWithMultiAssetSupport (`0x074364...182f0b`, chain 1)
- TellerWithMultiAssetSupport (`0x08eb2e...8a1d53`, chain 1)
- TellerWithMultiAssetSupport (`0x5d3fb4...1b54dd`, chain 1)
- TellerWithMultiAssetSupport (`0x6ae187...52e0bf`, chain 1)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/11 (9.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 12 of 15 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/11
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 15
- Raw deployments: 21
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-07 (fresh)
- Audit staleness (calendar age): 7 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 1 | 9.1% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiChainLayerZeroTellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249910 | `0x9ff67b...a14fbc` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249893 | `0x170d84...c933a0` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249895 | `0x196ead...bd3dcc` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249897 | `0x19e099...3c0b32` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249899 | `0x52e4d8...07a0d1` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x5d82ac...8d47a2`; ethereum `0x66e47e...4d831a`; ethereum `0x6c5874...f7fd76`; ethereum `0x9faaea...e301ce`; ethereum `0xa8a3a5...a3eb48` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249906 | `0x722a85...1f883b` | ⚠️ Unaudited |
| BoringVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249908 | `0x82c40e...c7cab4` | ⚠️ Unaudited |
| MultiChainLayerZeroTellerWithMultiAssetSupport | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5cce6c...06be88`; ethereum `0x97d0b9...3918b9`; ethereum `0xd567b6...63e851` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249889 | `0x074364...182f0b` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249891 | `0x08eb2e...8a1d53` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249902 | `0x5d3fb4...1b54dd` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x685adb...160429` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-249904 | `0x6ae187...52e0bf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-249912 | `0xcd721c...0ea8ba` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [pashov-hyperlane.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | Zenith | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | Zenith | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [guardian-transit-station.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/guardian-transit-station.pdf) | Guardian | Audit | 2026-07 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [zellic-transit-station.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zellic-transit-station.pdf) | Zellic | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3937] 0xmacro-boring-vault-arctic-0.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is from the cover page: March 20, 2024.
- [3938] 0xmacro-boring-vault-arctic-1.pdf — no match: All contracts listed in the 'Source Code' section with file paths and SHA256 hashes. Audit date from cover page.
- [3939] pashov-boring-vault.pdf — no match: Scope section explicitly lists 10 smart contracts. Audit date is July 13th 2024 (end date of the review period).
- [3940] pashov-hlp-controller:account.pdf — no match: Scope section explicitly lists 4 contracts: CoreWriterDecoderAndSanitizer.sol, WHLPDecoderAndSanitizer.sol, HLPAccount.sol, HLPController.sol. Audit date is July 30th 2025 (end date of review period).
- [3941] pashov-hyperlane.pdf — no match: Scope section lists 5 contracts. Audit date from header: December 14th - December 16th, using end date.
- [3942] pashov-one-to-one-queue.pdf — no match: Scope section explicitly lists 10 contracts/files. Audit date from cover page: November 22nd 2025 - November 26th 2025, using end date.
- [3943] pashov-predicate-freeze-supply-cap.pdf — matched: All contracts listed in the Scope section of the audit report. Audit date is March 5th 2026 (end date of timeline).
- [3944] pashov-withdraw-queue.pdf — no match: Scope section explicitly lists four contracts: WithdrawQueue.sol, TellerWithMultiAssetSupport.sol, CrossChainTellerBase.sol, AccountantWithRateProviders.sol. Audit date is the end date of the timeline: February 5th 2026.
- [3945] spearbit-boring-vault-arctic-0.pdf — no match: The report does not have a dedicated scope section, but the contracts are explicitly mentioned in findings and context. The audit date is from the cover page: April 19, 2024.
- [3946] zenith-one-to-one-queue.pdf — no match: Scope section explicitly lists two targets: CommunityCodeDepositor (with file pattern) and OneToOneQueue (with multiple files). All contract names extracted from file names.
- [3947] zenith-withdraw-queue.pdf — no match: Scope section lists 4 files; contract names extracted from file paths.
- [27380] guardian-transit-station.pdf — no match: Extracted 6 contracts from scope table and 1 additional contract from finding location. Audit date from final report date.
- [27390] zellic-transit-station.pdf — no match: Scope section explicitly lists three targets: transit/TransitStation.sol, base/Roles/CrossChain/OAppAuth/**/*.sol, helper/Pausable.sol. The wildcard pattern likely includes OAppAuthCore.sol and possibly other files, but only OAppAuthCore is mentioned in findings. Audit date is June 26, 2026 from cover and header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 0xmacro-boring-vault-arctic-0.pdf | AtomicQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IAtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVault | ambiguous — not counted | BoringVault (alternative) `0x170d84...c933a0` — deployed 2025-01-15 09:21:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x82c40e...c7cab4` — deployed 2025-01-15 10:16:59+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x196ead...bd3dcc` — deployed 2024-09-30 22:53:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x19e099...3c0b32` — deployed 2024-09-12 06:24:59+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x722a85...1f883b` — deployed 2025-04-19 18:47:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x52e4d8...07a0d1` — deployed 2024-08-09 21:44:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 0xmacro-boring-vault-arctic-0.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ERC4626DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | NativeWrapperDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | OneInchDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | ambiguous — not counted | TellerWithMultiAssetSupport (alternative) `0x08eb2e...8a1d53` — deployed 2024-09-30 22:53:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x5d3fb4...1b54dd` — deployed 2025-01-15 10:17:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x074364...182f0b` — deployed 2025-01-15 09:21:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x6ae187...52e0bf` — deployed 2024-09-12 06:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVaultV0Lens | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquid1 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IRateProvider | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | RawDataDecoderAndSanitizerInterfaces | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CellarMigrationAdaptor | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBPositionDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | AaveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | BoringDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBContractDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | Ownable2StepDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | WithdrawableDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveAndConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveNoConfigDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| pashov-boring-vault.pdf | CrossChainLayerZeroTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuth | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthCore | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthReceiver | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthSender | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | TellerWithMultiAssetSupport | ambiguous — not counted | TellerWithMultiAssetSupport (alternative) `0x08eb2e...8a1d53` — deployed 2024-09-30 22:53:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x5d3fb4...1b54dd` — deployed 2025-01-15 10:17:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x074364...182f0b` — deployed 2025-01-15 09:21:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x6ae187...52e0bf` — deployed 2024-09-12 06:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| pashov-boring-vault.pdf | BoringVaultCrossChainDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultL2OFT | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultOFTAdapter | unmatched — not counted | — | listed in scope | no |
| pashov-hlp-controller:account.pdf | CoreWriterDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| pashov-hlp-controller:account.pdf | WHLPDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| pashov-hlp-controller:account.pdf | HLPAccount | unmatched — not counted | — | listed in scope | no |
| pashov-hlp-controller:account.pdf | HLPController | unmatched — not counted | — | listed in scope | no |
| pashov-hyperlane.pdf | MultiChainHyperlaneTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | MultiChainTellerBase | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | TellerWithMultiAssetSupport | ambiguous — not counted | TellerWithMultiAssetSupport (alternative) `0x08eb2e...8a1d53` — deployed 2024-09-30 22:53:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x5d3fb4...1b54dd` — deployed 2025-01-15 10:17:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x074364...182f0b` — deployed 2025-01-15 09:21:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x6ae187...52e0bf` — deployed 2024-09-12 06:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| pashov-hyperlane.pdf | AtomicQueueUCP | unmatched — not counted | — | listed in scope section | no |
| pashov-one-to-one-queue.pdf | CommunityCodeDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | DistributorCodeDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | OneToOneQueue | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | QueueAccessAuthority | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | SimpleFeeModule | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | AccessAuthority | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | VerboseAuth | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | IAccessAuthorityHook | unmatched — not counted | — | listed in scope | no |
| pashov-one-to-one-queue.pdf | IFeeModule | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | BoringVault | ambiguous — not counted | BoringVault (alternative) `0x170d84...c933a0` — deployed 2025-01-15 09:21:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x82c40e...c7cab4` — deployed 2025-01-15 10:16:59+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x196ead...bd3dcc` — deployed 2024-09-30 22:53:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x19e099...3c0b32` — deployed 2024-09-12 06:24:59+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x722a85...1f883b` — deployed 2025-04-19 18:47:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x52e4d8...07a0d1` — deployed 2024-08-09 21:44:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| pashov-predicate-freeze-supply-cap.pdf | NucleusDecoderAndSanitizer | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | MultiChainHyperlaneTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | MultiChainLayerZeroTellerWithMultiAssetSupport | own contract | MultiChainLayerZeroTellerWithMultiAssetSupport (selected) `0x9ff67b...a14fbc` — deployed 2025-04-19 18:47:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| pashov-predicate-freeze-supply-cap.pdf | TellerWithMultiAssetSupport | ambiguous — not counted | TellerWithMultiAssetSupport (alternative) `0x08eb2e...8a1d53` — deployed 2024-09-30 22:53:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x5d3fb4...1b54dd` — deployed 2025-01-15 10:17:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x074364...182f0b` — deployed 2025-01-15 09:21:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x6ae187...52e0bf` — deployed 2024-09-12 06:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| pashov-predicate-freeze-supply-cap.pdf | TellerWithMultiAssetSupportPredicateProxy | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | AssetSpecificFeeModule | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | DexAggregatorWrapperWithPredicateProxy | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | DistributorCodeDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | FreezeListBeforeTransferHook | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | WarpRouteWrapper | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope | no |
| pashov-predicate-freeze-supply-cap.pdf | IFallbackHook | unmatched — not counted | — | listed in scope | no |
| pashov-withdraw-queue.pdf | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| pashov-withdraw-queue.pdf | TellerWithMultiAssetSupport | ambiguous — not counted | TellerWithMultiAssetSupport (alternative) `0x08eb2e...8a1d53` — deployed 2024-09-30 22:53:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x5d3fb4...1b54dd` — deployed 2025-01-15 10:17:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x074364...182f0b` — deployed 2025-01-15 09:21:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x6ae187...52e0bf` — deployed 2024-09-12 06:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| pashov-withdraw-queue.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-withdraw-queue.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope | no |
| spearbit-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | ambiguous — not counted | TellerWithMultiAssetSupport (alternative) `0x08eb2e...8a1d53` — deployed 2024-09-30 22:53:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x5d3fb4...1b54dd` — deployed 2025-01-15 10:17:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x074364...182f0b` — deployed 2025-01-15 09:21:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x6ae187...52e0bf` — deployed 2024-09-12 06:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spearbit-boring-vault-arctic-0.pdf | BoringVault | ambiguous — not counted | BoringVault (alternative) `0x170d84...c933a0` — deployed 2025-01-15 09:21:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x82c40e...c7cab4` — deployed 2025-01-15 10:16:59+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x196ead...bd3dcc` — deployed 2024-09-30 22:53:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x19e099...3c0b32` — deployed 2024-09-12 06:24:59+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x722a85...1f883b` — deployed 2025-04-19 18:47:11+03 — liveness: live (code_present_context)<br>BoringVault (alternative) `0x52e4d8...07a0d1` — deployed 2024-08-09 21:44:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spearbit-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| zenith-one-to-one-queue.pdf | CommunityCodeDepositor | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | OneToOneQueue | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | QueueAccessAuthority | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | SimpleFeeModule | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | AccessAuthority | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| zenith-one-to-one-queue.pdf | VerboseAuth | unmatched — not counted | — | listed in scope | no |
| zenith-withdraw-queue.pdf | WithdrawQueue | unmatched — not counted | — | listed in scope | no |
| zenith-withdraw-queue.pdf | TellerWithMultiAssetSupport | ambiguous — not counted | TellerWithMultiAssetSupport (alternative) `0x08eb2e...8a1d53` — deployed 2024-09-30 22:53:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x5d3fb4...1b54dd` — deployed 2025-01-15 10:17:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x074364...182f0b` — deployed 2025-01-15 09:21:47+03 — liveness: live (current_address_book_code)<br>TellerWithMultiAssetSupport (alternative) `0x6ae187...52e0bf` — deployed 2024-09-12 06:25:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zenith-withdraw-queue.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| zenith-withdraw-queue.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope | no |
| guardian-transit-station.pdf | TransitStation | unmatched — not counted | — | listed in scope table | no |
| guardian-transit-station.pdf | Pausable | unmatched — not counted | — | listed in scope table | no |
| guardian-transit-station.pdf | OAppAuth | unmatched — not counted | — | listed in scope table | no |
| guardian-transit-station.pdf | OAppAuthCore | unmatched — not counted | — | listed in scope table | no |
| guardian-transit-station.pdf | OAppAuthReceiver | unmatched — not counted | — | listed in scope table | no |
| guardian-transit-station.pdf | OAppAuthSender | unmatched — not counted | — | listed in scope table | no |
| guardian-transit-station.pdf | NucleusDecoderAndSanitizer | unmatched — not counted | — | mentioned in finding L-02 location | no |
| zellic-transit-station.pdf | TransitStation | unmatched — not counted | — | listed in scope table | no |
| zellic-transit-station.pdf | OAppAuthCore | unmatched — not counted | — | listed in scope table (wildcard pattern) | no |
| zellic-transit-station.pdf | Pausable | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x170d84...c933a0` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x196ead...bd3dcc` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19e099...3c0b32` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x52e4d8...07a0d1` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x722a85...1f883b` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82c40e...c7cab4` | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x074364...182f0b` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x08eb2e...8a1d53` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d3fb4...1b54dd` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ae187...52e0bf` | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 116 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13
- Match method counts: unique_name=1

Zero-match audit list:

- [3937] 0xmacro-boring-vault-arctic-0.pdf
- [3938] 0xmacro-boring-vault-arctic-1.pdf
- [3939] pashov-boring-vault.pdf
- [3940] pashov-hlp-controller:account.pdf
- [3941] pashov-hyperlane.pdf
- [3942] pashov-one-to-one-queue.pdf
- [3944] pashov-withdraw-queue.pdf
- [3945] spearbit-boring-vault-arctic-0.pdf
- [3946] zenith-one-to-one-queue.pdf
- [3947] zenith-withdraw-queue.pdf
- [27380] guardian-transit-station.pdf
- [27390] zellic-transit-station.pdf

Fork inheritance lineage and inherited audits are included when available.
