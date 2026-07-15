# Agentic Audit Brief: Ronin Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ronin Bridge (`ronin-bridge`)
- Website: [https://app.roninchain.com/bridge](https://app.roninchain.com/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,538,156.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Ronin Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 3 stale, 0 unknown
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-162861 | `0x2d7b76...9261a1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf](https://docs.roninchain.com/assets/files/Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf) | Code4rena | Contest | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf](https://docs.roninchain.com/assets/files/Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf) | yAudit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf](https://docs.roninchain.com/assets/files/Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf](https://docs.roninchain.com/assets/files/Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf](https://docs.roninchain.com/assets/files/CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf) | CertiK | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20989] Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf — no match: All contracts listed in the scope table (Section 1.2) are included. The audit date is the public report date (Jun 28, 2022) from the cover page and version history.
- [20990] Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf — no match: All contracts listed in the 'Audit scope' section on page 5 of the report.
- [20991] Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf — no match: Four contracts explicitly listed in ContractScope section on page 7. Audit date from cover page: Aug 21st, 2024.
- [20992] Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf — no match: Scope includes directories src/mainchain and src/ronin/gateway; four contracts explicitly named in overview.
- [20993] CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | GatewayV2 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | Governance | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | GatewayGovernance | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | GlobalProposalGovernance | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | ProposalGovernance | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | WithdrawalLimitation | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | HasProxyAdmin | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | MinimumWithdrawal | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | TransparentUpgradeableProxyV2 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | MockERC721 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | MockGatewayV2 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | IERC721Mintable | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | IWeightedValidator | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | IERC20Mintable | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | IWETH | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | SignatureConsumer | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | IQuorum | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | RoninValidator | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | GovernanceAdmin | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | IMainchainGatewayV2 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | MainchainGatewayV2 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | Proposal | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | Token | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | Transfer | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | BridgeProposal | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | Ballot | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | RoninGatewayV2 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf | IRoninGatewayV2 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | MainchainBridgeManager | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | MainchainGatewayV2 | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | RoninBridgeManager | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | BridgeReward | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | BridgeSlash | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | BridgeTracking | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | PauseEnforcer | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | RoninGatewayV2 | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | GatewayV2 | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | BridgeManager | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | BridgeManagerCallbackRegister | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | BridgeTrackingHelper | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | CoreGovernance | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | GlobalCoreGovernance | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | CoinbaseExecution | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | CommonGovernanceProposal | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | GlobalGovernanceProposal | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | GovernanceProposal | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | CommonGovernanceRelay | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | GlobalGovernanceRelay | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | GovernanceRelay | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | MinimumWithdrawal | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | RONTransferHelper | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | WithdrawalLimitation | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | HasContracts | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | HasProxyAdmin | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | IdentityGuard | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | AddressArrayUtils | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | Ballot | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | EmergencyExitBallot | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | EnumFlags | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | ErrorHandler | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | GlobalProposal | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | IsolatedGovernance | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | Proposal | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf | Transfer | unmatched — not counted | — | listed in scope | no |
| Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf | RoninBridgeManager | unmatched — not counted | — | listed in ContractScope section | no |
| Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf | RoninGatewayV3 | unmatched — not counted | — | listed in ContractScope section | no |
| Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf | MainchainBridgeManager | unmatched — not counted | — | listed in ContractScope section | no |
| Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf | MainchainGatewayV3 | unmatched — not counted | — | listed in ContractScope section | no |
| Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf | MainchainBridgeManager | unmatched — not counted | — | mentioned in scope overview | no |
| Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf | MainchainGatewayV3 | unmatched — not counted | — | mentioned in scope overview and findings | no |
| Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf | RoninBridgeManager | unmatched — not counted | — | mentioned in scope overview | no |
| Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf | RoninGatewayV3 | unmatched — not counted | — | mentioned in scope overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 74 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [20989] Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf
- [20990] Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf
- [20991] Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf
- [20992] Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf
- [20993] CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf

Fork inheritance lineage and inherited audits are included when available.
