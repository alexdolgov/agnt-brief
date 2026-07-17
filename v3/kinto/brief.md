# Agentic Audit Brief: Kinto

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Kinto (`kinto`)
- Website: [https://docs.kinto.xyz/kinto-the-modular-exchange/](https://docs.kinto.xyz/kinto-the-modular-exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $672,216.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Kinto in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SuperToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ba19ee69d5dde3ab70185c801fa404f66fedb58` | ⚠️ Unaudited |

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
| [certora-mar2024.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Certora-Mar2024/certora-mar2024.pdf) | Certora | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [mixbytes-feb2024.pdf](https://github.com/KintoXYZ/security/blob/main/audits/MixBytes-Feb2024/mixbytes-feb2024.pdf) | MixBytes | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [pessimistic-bridger-apr.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Apr2024/pessimistic-bridger-apr.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [pessimistic-token-apr.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Apr2024/pessimistic-token-apr.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [pessimistic-accessregistry-dec.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Dec2024/pessimistic-accessregistry-dec.pdf) | Pessimistic | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [pessimistic-feb.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Feb2024/pessimistic-feb.pdf) | Pessimistic | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [pessimistic-auction-feb.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Feb2025/pessimistic-auction-feb.pdf) | Pessimistic | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [pessimitic-jan.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Jan2024/pessimitic-jan.pdf) | Pessimistic | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [pessimistic-bridgerv2-jun.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Jun2024/pessimistic-bridgerv2-jun.pdf) | Pessimistic | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [pessimistic-superbridge-jun.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Jun2024/pessimistic-superbridge-jun.pdf) | Pessimistic | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [pessimistic-governance-sept.pdf](https://github.com/KintoXYZ/security/blob/main/audits/Pessimistic-Sept2024/pessimistic-governance-sept.pdf) | Pessimistic | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20606] certora-mar2024.pdf — no match: Extracted from Project Scope table and formal verification section. Date from title 'March2024'.
- [20607] mixbytes-feb2024.pdf — no match: Extracted 7 contracts from the scope table on page 8. Audit date from cover page.
- [20608] pessimistic-bridger-apr.pdf — no match: Scope explicitly lists Bridger.sol and IBridger.sol. Audit date is March 18, 2024 from the report footer.
- [20609] pessimistic-token-apr.pdf — no match: Scope explicitly listed three files: KintoToken.sol, IVestingContract.sol, VestingContract.sol. Audit date from cover page and final page.
- [20610] pessimistic-accessregistry-dec.pdf — no match: Extracted 8 contracts from the scope listing in the report. Audit date found in header and footer.
- [20611] pessimistic-feb.pdf — no match: Scope explicitly listed in 'Project overview' section with file paths.
- [20612] pessimistic-auction-feb.pdf — no match: Only one contract file was in scope: SealedBidTokenSale.sol. The audit date is explicitly given as February 5, 2025.
- [20613] pessimitic-jan.pdf — no match: Scope explicitly listed in 'Project overview' section: paymaster/SponsorPaymaster.sol, libraries/ByteSignature.sol, wallet/KintoWallet.sol, wallet/KintoWalletFactory.sol, KintoID.sol, and changes in Entrypoint.sol. Audit date from cover page and final page.
- [20614] pessimistic-bridgerv2-jun.pdf — no match: Scope explicitly lists Bridger.sol and IBridger.sol. Audit date is June 6, 2024 from the report header.
- [20615] pessimistic-superbridge-jun.pdf — no match: Scope explicitly listed 3 hook contracts and 10 dependencies. Audit date from cover page and final page.
- [20616] pessimistic-governance-sept.pdf — no match: No explicit scope section; contract names extracted from project overview and findings sections.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| certora-mar2024.pdf | KintoID | unmatched — not counted | — | listed in scope table and formally verified | no |
| certora-mar2024.pdf | KintoWallet | unmatched — not counted | — | listed in scope table and formally verified | no |
| certora-mar2024.pdf | KintoWalletFactory | unmatched — not counted | — | listed in scope table and formally verified | no |
| certora-mar2024.pdf | SponsorPaymaster | unmatched — not counted | — | listed in scope table and formally verified | no |
| certora-mar2024.pdf | KYCViewer | unmatched — not counted | — | listed in scope table | no |
| certora-mar2024.pdf | KintoAppRegistry | unmatched — not counted | — | listed in scope table (added later) | no |
| certora-mar2024.pdf | EntryPoint | unmatched — not counted | — | listed in scope table and mentioned in findings | no |
| certora-mar2024.pdf | StakeManager | unmatched — not counted | — | mentioned in finding C-01 as file | no |
| certora-mar2024.pdf | BasePaymaster | unmatched — not counted | — | mentioned in findings H-02, H-03 | no |
| mixbytes-feb2024.pdf | Faucet | unmatched — not counted | — | listed in scope table | no |
| mixbytes-feb2024.pdf | KintoID | unmatched — not counted | — | listed in scope table | no |
| mixbytes-feb2024.pdf | ByteSignature | unmatched — not counted | — | listed in scope table | no |
| mixbytes-feb2024.pdf | SponsorPaymaster | unmatched — not counted | — | listed in scope table | no |
| mixbytes-feb2024.pdf | SafeBeaconProxy | unmatched — not counted | — | listed in scope table | no |
| mixbytes-feb2024.pdf | KintoWalletFactory | unmatched — not counted | — | listed in scope table | no |
| mixbytes-feb2024.pdf | KintoWallet | unmatched — not counted | — | listed in scope table | no |
| pessimistic-bridger-apr.pdf | Bridger | unmatched — not counted | — | listed in scope | no |
| pessimistic-bridger-apr.pdf | IBridger | unmatched — not counted | — | listed in scope | no |
| pessimistic-token-apr.pdf | KintoToken | unmatched — not counted | — | listed in scope | no |
| pessimistic-token-apr.pdf | IVestingContract | unmatched — not counted | — | listed in scope | no |
| pessimistic-token-apr.pdf | VestingContract | unmatched — not counted | — | listed in scope | no |
| pessimistic-accessregistry-dec.pdf | AccessRegistry | unmatched — not counted | — | listed in scope | no |
| pessimistic-accessregistry-dec.pdf | AccessPoint | unmatched — not counted | — | listed in scope | no |
| pessimistic-accessregistry-dec.pdf | AaveBorrowWorkflow | unmatched — not counted | — | listed in scope | no |
| pessimistic-accessregistry-dec.pdf | AaveLendWorkflow | unmatched — not counted | — | listed in scope | no |
| pessimistic-accessregistry-dec.pdf | AaveRepayWorkflow | unmatched — not counted | — | listed in scope | no |
| pessimistic-accessregistry-dec.pdf | AaveWithdrawWorkflow | unmatched — not counted | — | listed in scope | no |
| pessimistic-accessregistry-dec.pdf | BridgeWorkflow | unmatched — not counted | — | listed in scope | no |
| pessimistic-accessregistry-dec.pdf | SwapWorkflow | unmatched — not counted | — | listed in scope | no |
| pessimistic-feb.pdf | AccessPoint | unmatched — not counted | — | listed in scope | no |
| pessimistic-feb.pdf | AccessRegistry | unmatched — not counted | — | listed in scope | no |
| pessimistic-feb.pdf | WithdrawWorkflow | unmatched — not counted | — | listed in scope | no |
| pessimistic-feb.pdf | IAccessPoint | unmatched — not counted | — | listed in scope | no |
| pessimistic-feb.pdf | IAccessRegistry | unmatched — not counted | — | listed in scope | no |
| pessimistic-feb.pdf | SignaturePaymaster | unmatched — not counted | — | listed in scope | no |
| pessimistic-auction-feb.pdf | SealedBidTokenSale | unmatched — not counted | — | The scope of the audit included the src/apps/SealedBidTokenSale.sol file. | no |
| pessimitic-jan.pdf | SponsorPaymaster | unmatched — not counted | — | listed in scope section | no |
| pessimitic-jan.pdf | ByteSignature | unmatched — not counted | — | listed in scope section | no |
| pessimitic-jan.pdf | KintoWallet | unmatched — not counted | — | listed in scope section | no |
| pessimitic-jan.pdf | KintoWalletFactory | unmatched — not counted | — | listed in scope section | no |
| pessimitic-jan.pdf | KintoID | unmatched — not counted | — | listed in scope section | no |
| pessimitic-jan.pdf | Entrypoint | unmatched — not counted | — | listed in scope section | no |
| pessimistic-bridgerv2-jun.pdf | Bridger | unmatched — not counted | — | listed in scope | no |
| pessimistic-bridgerv2-jun.pdf | IBridger | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | KintoHook | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | LimitHook | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | SenderHook | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | ConnectorPoolPlugin | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | LimitPlugin | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | HookBase | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | Gauge | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | RescueBase | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | RescueFundsLib | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | IHook | unmatched — not counted | — | listed in scope | no |
| pessimistic-superbridge-jun.pdf | IController | unmatched — not counted | — | listed in scope | no |
| pessimistic-governance-sept.pdf | NioElection | unmatched — not counted | — | mentioned in findings and project overview | no |
| pessimistic-governance-sept.pdf | NioGovernor | unmatched — not counted | — | mentioned in project overview | no |
| pessimistic-governance-sept.pdf | NioGuardians | unmatched — not counted | — | mentioned in project overview and findings | no |
| pessimistic-governance-sept.pdf | BridgedKinto | unmatched — not counted | — | mentioned in project overview | no |
| pessimistic-governance-sept.pdf | BridgedToken | unmatched — not counted | — | mentioned in project overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 62 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20606] certora-mar2024.pdf
- [20607] mixbytes-feb2024.pdf
- [20608] pessimistic-bridger-apr.pdf
- [20609] pessimistic-token-apr.pdf
- [20610] pessimistic-accessregistry-dec.pdf
- [20611] pessimistic-feb.pdf
- [20612] pessimistic-auction-feb.pdf
- [20613] pessimitic-jan.pdf
- [20614] pessimistic-bridgerv2-jun.pdf
- [20615] pessimistic-superbridge-jun.pdf
- [20616] pessimistic-governance-sept.pdf

Fork inheritance lineage and inherited audits are included when available.
