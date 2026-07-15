# Agentic Audit Brief: SKALE Network Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SKALE Network Bridge (`skale-network-bridge`)
- Website: [https://portal.skale.space/bridge](https://portal.skale.space/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, sepolia
- Contract surface: 7 unique implementations (7 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $489,520.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for SKALE Network Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0555e3...0d2b9c`, chain 8453)
- UnnamedContract (`0x420000...000006`, chain 8453)
- UnnamedContract (`0x833589...a02913`, chain 8453)
- UnnamedContract (`0xfde4c9...699bb2`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 4 of 7 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a435f...32a2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a38d...86d812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254913 | `0x0555e3...0d2b9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254916 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254918 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-254920 | `0xfde4c9...699bb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-254903 | `0x036cbd...3dcf7e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SKALE_Audit_Bramah.pdf](https://github.com/skalenetwork/IMA/blob/develop/audits/SKALE_Audit_Bramah.pdf) | unknown | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 53 | n/a |
| [Audit Report - SKALE Self-Recharging Wallets.pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20SKALE%20Self-Recharging%20Wallets.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13847] SKALE_Audit_Bramah.pdf — no match: No reason recorded
- [13848] Audit Report - SKALE Self-Recharging Wallets.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SKALE_Audit_Bramah.pdf | CommunityLocker | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | CommunityPool | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ConfigReader | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBox | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBoxERC1155 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBoxERC20 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBoxERC721 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | DepositBoxEth | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC1155OnChain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC20OnChain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC721OnChain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC721ReferenceMintAndMetadataMainnet | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ERC721ReferenceMintAndMetadataSchain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | EthErc20 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | FieldOperations | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | IMainnetContract | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | IMessageProxy | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | IMessageReceiver | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | KeyStorage | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | KeyStorageMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Linker | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Logger | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyClient | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForMainnet | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForMainnetTester | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForSchain | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForSchainTester | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageProxyForSchainWithoutSignature | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageReceiver | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessageSender | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Messages | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | MessagesTester | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Migrations | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Precompiled | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | PrecompiledMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ReceiverGasLimitMainnetMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ReceiverGasLimitSchainMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | ReceiverMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | SkaleManagerClient | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | SkaleVerifier | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | SkaleVerifierMock | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestContractManager | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestNodes | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestSchains | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestSchainsInternal | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TestWallets | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManager | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerERC1155 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerERC20 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerERC721 | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerEth | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | TokenManagerLinker | unmatched — not counted | — | — | no |
| SKALE_Audit_Bramah.pdf | Twin | unmatched — not counted | — | — | no |
| Audit Report - SKALE Self-Recharging Wallets.pdf | Wallet | unmatched — not counted | — | — | no |
| Audit Report - SKALE Self-Recharging Wallets.pdf | Wallets | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 55 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13847] SKALE_Audit_Bramah.pdf
- [13848] Audit Report - SKALE Self-Recharging Wallets.pdf

Fork inheritance lineage and inherited audits are included when available.
