# Agentic Audit Brief: Ring Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 10 (0 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ring Protocol (`ring-protocol`)
- Website: [https://ring.exchange/](https://ring.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, unichain
- Contract surface: 10 unique implementations (24 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $23,217,131.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Ring Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across arbitrum, base, bsc, ethereum, unichain. Structural roles: 9 core, 7 supporting, 6 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (9), supporting (7), unclassified (6)
- Contract kinds: contract (22)
- Detected standards: pausable (2)
- Frameworks: uniswap (9), openzeppelin (8), solmate (6), uniswap-v2 (5), permit2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 22; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 24
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FewETHHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x044301...0c6888` | ⚠️ Unaudited |
| FewETHWrapper | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0xada605...6b5ebb`; bsc `0xf9d7ff...97916f`; unichain `0xc43a3d...89df42`; base `0x20e6b1...9c4fe7` | ⚠️ Unaudited |
| FewFactory | registry | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x7d8639...4464dd`; bsc `0xeee400...b972cd`; base `0xb3ad77...a47920`; arbitrum `0x974cc3...ee556f` | ⚠️ Unaudited |
| FewTokenHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b2eb6...592888`; ethereum `0x4b3e2a...f22888`; ethereum `0x85b648...bde888` | ⚠️ Unaudited |
| FewUSDTHook | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbadf77...486888` | ⚠️ Unaudited |
| SwapV2Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xeb2a62...d06416`; bsc `0x4de602...c4dd9b`; base `0x9bffc3...b4980e`; arbitrum `0x1246fa...609442` | ⚠️ Unaudited |
| SwapV2Router | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x39d1d8...6d3519`; bsc `0x20504f...e6bad0`; base `0x224749...4cd254`; arbitrum `0xd69ed5...baa46a` | ⚠️ Unaudited |
| UniversalRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1fb6ef...38cfcc` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-162693 | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-162692 | `0x000000...c78ba3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 44 | high |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 49 | n/a |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/RingProtocol/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 41 | n/a |
| [ABDK_RingProtocol_Hook_v_1_0.pdf (also discovered via alternate URL)](https://github.com/RingProtocol/v4-periphery/blob/main/audits/ABDK_RingProtocol_Hook_v_1_0.pdf) | ABDK | Audit | 2025-11 | fresh | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 6 | high |
| [SlowMist Audit Report - Ring Protocol_en-us.pdf](https://github.com/RingProtocol/audits/blob/main/SlowMist%20Audit%20Report%20-%20Ring%20Protocol_en-us.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [blocksec_ringcore_v1.0-signed.pdf](https://github.com/RingProtocol/audits/blob/main/blocksec_ringcore_v1.0-signed.pdf) | BlockSec | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [RingLaunchpad - SlowMist Audit Report.pdf](https://github.com/RingProtocol/audits/blob/main/RingLaunchpad%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [SlowMist Audit Report - Ring Protocol Contracts.pdf](https://github.com/RingProtocol/audits/blob/main/SlowMist%20Audit%20Report%20-%20Ring%20Protocol%20Contracts.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SlowMist Audit Report - Ring Protocol.pdf](https://github.com/RingProtocol/audits/blob/main/SlowMist%20Audit%20Report%20-%20Ring%20Protocol.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | address | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3969] OpenZeppelin_audit_periphery_universal_router.pdf — no match: Extracted all contracts and libraries from the scope section of the audit report. The audit date is from the report header: 'September 5, 2024'.
- [3970] DRAFT_Spearbit_audit_periphery.pdf — no match: No reason recorded
- [3971] DRAFT_ABDK_audit_periphery_universal_router.pdf — no match: No reason recorded
- [3972] ABDK_RingProtocol_Hook_v_1_0.pdf — no match: Extracted from scope section listing files: FewETHHook.sol, FewTokenHook.sol, FewUSDTHook.sol. Also included BaseHook, DeltaResolver, IFewWrappedToken as they are part of the audited codebase. Audit date from changelog: 24.11.25.
- [15030] SlowMist Audit Report - Ring Protocol_en-us.pdf — no match: No reason recorded
- [15031] blocksec_ringcore_v1.0-signed.pdf — no match: No reason recorded
- [27831] RingLaunchpad - SlowMist Audit Report.pdf — no match: The audit report focuses on the RingLaunchpad contract and its dependencies. The scope includes the RingLaunchpad contract itself, the Token contract created within it, and interfaces to external contracts (FewWrappedToken, FewFactory, UniswapV2Router02, IWETH, ERC20). The audit date is explicitly stated as 2024.11.27.
- [27833] SlowMist Audit Report - Ring Protocol Contracts.pdf — no match: Contracts extracted from visibility tables and code references in the audit report. Audit date is the end date of the audit period (2024.01.26 - 2024.01.30).
- [27834] SlowMist Audit Report - Ring Protocol.pdf — no match: Contracts in scope extracted from the 'Contracts Description' table and 'Visibility Description' section. The audit date is the end date of the audit period (2024.01.26 - 2024.01.30).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| OpenZeppelin_audit_periphery_universal_router.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V4Router | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BaseActionsRouter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | DeltaResolver | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | EIP712_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ImmutableState | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Multicall_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Notifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Permit2Forwarder | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PoolInitializer | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ReentrancyLock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SafeCallback | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | UnorderedNonce | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BaseHook | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IEIP712_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IERC721Permit_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IMulticall_v4 | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | INotifier | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IPositionManager | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IQuoter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ISubscriber | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IV4Router | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | IERC20PermitAllowed | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Quoter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | StateView | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ActionConstants | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Actions | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | BipsLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | CalldataDecoder | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | ERC721PermitHash | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Locker | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PathKey | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | PositionConfig | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | SlippageCheck | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | UniversalRouter | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Callbacks | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Dispatcher | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | Lock | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | MigratorImmutables | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V3ToV4Migrator | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin_audit_periphery_universal_router.pdf | V4SwapRouter | unmatched — not counted | — | listed in scope | no |
| DRAFT_Spearbit_audit_periphery.pdf | ActionConstants | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Actions | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BalanceDelta | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BalanceDeltaLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BaseActionsRouter | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BaseHook | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BeforeSwapDelta | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BeforeSwapDeltaLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | BipsLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | CalldataDecoder | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Currency | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | DeltaResolver | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | EIP712_v4 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC1271 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC721PermitHashLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | ERC721Permit_v4 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Hooks | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IERC20PermitAllowed | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IERC721Permit_v4 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IHooks | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | INotifier | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IPoolManager | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IQuoter | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | IV4Router | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | ImmutableState | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | MockERC20 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | MockHooks | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Multicall_v4 | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Notifier | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PathKey | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Pool | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolId | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolIdLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolInitializer | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolKey | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolManager | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PoolTicksCounter | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionConfig | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionConfigLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | PositionManager | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | Quoter | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | SafeCast | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | SignatureVerification | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | SlippageCheck | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | StateLibrary | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | StateView | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | TickBitmap | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | UnorderedNonce | unmatched — not counted | — | — | no |
| DRAFT_Spearbit_audit_periphery.pdf | V4Router | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ActionConstants | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Actions | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | BaseActionsRouter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | BipsLibrary | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Callbacks | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | CalldataDecoder | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | DeltaResolver | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Dispatcher | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | EIP712_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ERC721PermitHash | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ERC721Permit_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IEIP712_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IERC721Permit_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IMulticall_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | INotifier | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IPositionManager | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IQuoter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ISubscriber | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | IV4Router | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ImmutableState | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Lock | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Locker | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | MigratorImmutables | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Multicall_v4 | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Notifier | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PathKey | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Permit2Forwarder | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PoolInitializer | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PoolTicksCounter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PositionConfig | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | PositionManager | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | Quoter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | ReentrancyLock | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SafeCallback | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SafeCast | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | SlippageCheck | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | UniversalRouter | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | UnorderedNonce | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V3ToV4Migrator | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V4Router | unmatched — not counted | — | — | no |
| DRAFT_ABDK_audit_periphery_universal_router.pdf | V4SwapRouter | unmatched — not counted | — | — | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | BaseHook | unmatched — not counted | — | mentioned as core component | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | DeltaResolver | unmatched — not counted | — | mentioned as foundational module | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | FewETHHook | unmatched — not counted | — | listed in scope | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | FewTokenHook | unmatched — not counted | — | listed in scope | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | FewUSDTHook | unmatched — not counted | — | listed in scope | no |
| ABDK_RingProtocol_Hook_v_1_0.pdf | IFewWrappedToken | unmatched — not counted | — | mentioned as interface | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | BlastManager | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | BlastManagerFromFactory | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | Core | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | CoreRef | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | FewFactory | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | FewWrappedToken | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | FixedStakingRewards | unmatched — not counted | — | — | no |
| SlowMist Audit Report - Ring Protocol_en-us.pdf | Permissions | unmatched — not counted | — | — | no |
| blocksec_ringcore_v1.0-signed.pdf | FewWrappedToken | unmatched — not counted | — | — | no |
| blocksec_ringcore_v1.0-signed.pdf | FixedStakingRewards | unmatched — not counted | — | — | no |
| RingLaunchpad - SlowMist Audit Report.pdf | RingLaunchpad | unmatched — not counted | — | listed in scope and findings | no |
| RingLaunchpad - SlowMist Audit Report.pdf | Token | unmatched — not counted | — | mentioned in deploy function and findings | no |
| RingLaunchpad - SlowMist Audit Report.pdf | FewWrappedToken | unmatched — not counted | — | mentioned in deploy function | no |
| RingLaunchpad - SlowMist Audit Report.pdf | FewFactory | unmatched — not counted | — | mentioned in deploy function | no |
| RingLaunchpad - SlowMist Audit Report.pdf | UniswapV2Router02 | unmatched — not counted | — | mentioned in deploy function | no |
| RingLaunchpad - SlowMist Audit Report.pdf | IWETH | unmatched — not counted | — | mentioned in deployETH function | no |
| RingLaunchpad - SlowMist Audit Report.pdf | ERC20 | unmatched — not counted | — | mentioned in deployWETH function | no |
| SlowMist Audit Report - Ring Protocol Contracts.pdf | FewFactory | unmatched — not counted | — | mentioned in visibility table and code overview | no |
| SlowMist Audit Report - Ring Protocol Contracts.pdf | CoreRef | unmatched — not counted | — | mentioned in visibility table and finding N5 | no |
| SlowMist Audit Report - Ring Protocol Contracts.pdf | FewWrappedToken | unmatched — not counted | — | mentioned in visibility table and findings | no |
| SlowMist Audit Report - Ring Protocol Contracts.pdf | FixedStakingRewards | unmatched — not counted | — | mentioned in visibility table and findings | no |
| SlowMist Audit Report - Ring Protocol.pdf | FewFactory | unmatched — not counted | — | listed in scope table and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | FewWrappedToken | unmatched — not counted | — | listed in scope table and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | FixedStakingRewards | unmatched — not counted | — | listed in scope table and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | Core | unmatched — not counted | — | listed in scope table and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | Permissions | unmatched — not counted | — | mentioned in vulnerability N1 and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | CoreRef | unmatched — not counted | — | mentioned in vulnerability N5 and visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | BlastManager | unmatched — not counted | — | listed in visibility section | no |
| SlowMist Audit Report - Ring Protocol.pdf | BlastManagerFromFactory | unmatched — not counted | — | listed in visibility section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 169 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [3969] OpenZeppelin_audit_periphery_universal_router.pdf
- [3970] DRAFT_Spearbit_audit_periphery.pdf
- [3971] DRAFT_ABDK_audit_periphery_universal_router.pdf
- [3972] ABDK_RingProtocol_Hook_v_1_0.pdf
- [15030] SlowMist Audit Report - Ring Protocol_en-us.pdf
- [15031] blocksec_ringcore_v1.0-signed.pdf
- [27831] RingLaunchpad - SlowMist Audit Report.pdf
- [27833] SlowMist Audit Report - Ring Protocol Contracts.pdf
- [27834] SlowMist Audit Report - Ring Protocol.pdf

Fork inheritance lineage and inherited audits are included when available.
