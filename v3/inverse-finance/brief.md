# Agentic Audit Brief: Inverse Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Inverse Finance (`inverse-finance`)
- Website: [https://www.inverse.finance](https://www.inverse.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, berachain, ethereum, optimism
- Contract surface: 43 unique implementations (43 raw deployments)
- Coverage basis: 7/43 confirmed own live verified implementations (16.3%); conservative 16.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $33,224,895.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Inverse Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 42 contract row(s) across arbitrum, base, berachain, ethereum, optimism. Structural roles: 33 core, 9 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 42
- Structural roles: core (33), supporting (9)
- Contract kinds: contract (42)
- Detected standards: erc20permit (9), erc165 (7), ownable (3), erc20 (2)
- Frameworks: chainlink (7), openzeppelin (2), solmate (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

17 of 39 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

**Market** (`0x27b6c3...c3f9c4`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x286844...573537`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x2a2563...ac77ff`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x3474ad...b9397a`, chain 1)
Origin: volta-club (`0x63df5e...d37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x3fd3da...7550bc`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x48ba57...264e7c`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x4a33ba...57808b`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x4e2646...c2db1a`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63d27f...2737e8`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63df5e...d37035`, chain 1)
Origin: volta-club (`0x63df5e...d37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x63fad9...aa1ee8`, chain 1)
Origin: volta-club (`0x63df5e...d37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0x79ef6d...52aec4`, chain 1)
Origin: volta-club (`0x63df5e...d37035`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xb427fc...c14a99`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xb8bc1e...4dd565`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xd68d3a...7c4b29`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xdc2265...7ddf6b`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Market** (`0xe4d47e...cb12e4`, chain 1)
Origin: inverse-finance (`0xb51624...22330b`)
Containment: 100.0% - 27 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- DolaBorrowingRights (`0xad038e...c5d710`, chain 1)
- ERC20 (`0x865377...dc9ce4`, chain 1)
- ERC20Mintable (`0xfc63c9...0cbd4e`, chain 10)
- ERC20Mintable (`0x8bbd03...ce2773`, chain 8453)
- ERC20Mintable (`0xca78ee...2bf005`, chain 8453)
- ERC20Mintable (`0x4c7b26...2236cf`, chain 42161)
- ERC20Mintable (`0x7a1e12...480898`, chain 42161)
- ERC20Mintable (`0x02eaa6...cf3b03`, chain 80094)
- GovernanceProxy (`0xaf9568...ad5289`, chain 10)
- GovernanceProxy (`0xcbb162...d60b2e`, chain 10)
- GovernanceProxy (`0x1c0642...7f82d1`, chain 8453)
- GovernanceProxy (`0x5d5392...b3e364`, chain 8453)
- GovernanceProxy (`0x1230bd...ccd6b3`, chain 42161)
- GovernanceProxy (`0x607bcd...a24d94`, chain 42161)
- GovernanceProxy (`0x1992af...1a7702`, chain 80094)
- GovernorMills (`0xbeccb6...359bf6`, chain 1)
- Guardian (`0x941c26...39259d`, chain 1)
- INV (`0x41d5d7...9dfb68`, chain 1)
- Market (`0xb51624...22330b`, chain 1)
- sDola (`0xb45ad1...157305`, chain 1)
- sINV (`0x08d234...e2e994`, chain 1)
- Timelock (`0x926df1...659d5b`, chain 1)

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 43/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/43 (16.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 43 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 43 of 43 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/43
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 11.6% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 5 | 11.6% | 2022-10 |
| Nomoi | Tier 2 | 5 | 11.6% | 2023-05 |
| yAudit | Tier 2 | 1 | 2.3% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BorrowController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387619 | `0x01eca3...ae4ce8` | ✅ Audited |
| DbrDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387647 | `0xdcd2d9...184244` | ✅ Audited |
| DolaBorrowingRights | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387639 | `0xad038e...c5d710` | ✅ Audited |
| Fed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387624 | `0x2b3454...5b90fd` | ✅ Audited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387632 | `0x63df5e...d37035` | ✅ Audited |
| Oracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387638 | `0xabe146...10cce8` | ✅ Audited |
| sDola | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387641 | `0xb45ad1...157305` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-387635 | `0x865377...dc9ce4` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | optimism | unit-387651 | `0xfc63c9...0cbd4e` | ⚠️ Unaudited |
| ERC20Mintable | unknown | project_anchor | own_supporting | 0 | base | unit-387660 | `0x8bbd03...ce2773` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | base | unit-387661 | `0xca78ee...2bf005` | ⚠️ Unaudited |
| ERC20Mintable | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387653 | `0x4c7b26...2236cf` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | arbitrum | unit-387655 | `0x7a1e12...480898` | ⚠️ Unaudited |
| ERC20Mintable | token | project_anchor | own_supporting | 0 | berachain | unit-387656 | `0x02eaa6...cf3b03` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-387649 | `0xaf9568...ad5289` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-387650 | `0xcbb162...d60b2e` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | base | unit-387658 | `0x1c0642...7f82d1` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | base | unit-387659 | `0x5d5392...b3e364` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387652 | `0x1230bd...ccd6b3` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387654 | `0x607bcd...a24d94` | ⚠️ Unaudited |
| GovernanceProxy | unknown | project_anchor | own_supporting | 0 | berachain | unit-387657 | `0x1992af...1a7702` | ⚠️ Unaudited |
| GovernorMills | governance | project_anchor | own_supporting | 0 | ethereum | unit-387644 | `0xbeccb6...359bf6` | ⚠️ Unaudited |
| Guardian | governance | project_anchor | own_supporting | 0 | ethereum | unit-387637 | `0x941c26...39259d` | ⚠️ Unaudited |
| INV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387627 | `0x41d5d7...9dfb68` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387621 | `0x27b6c3...c3f9c4` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387622 | `0x286844...573537` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387623 | `0x2a2563...ac77ff` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387625 | `0x3474ad...b9397a` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387626 | `0x3fd3da...7550bc` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387628 | `0x48ba57...264e7c` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387629 | `0x4a33ba...57808b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387630 | `0x4e2646...c2db1a` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387631 | `0x63d27f...2737e8` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387633 | `0x63fad9...aa1ee8` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387634 | `0x79ef6d...52aec4` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387640 | `0xb427fc...c14a99` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387642 | `0xb51624...22330b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387643 | `0xb8bc1e...4dd565` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387645 | `0xd68d3a...7c4b29` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387646 | `0xdc2265...7ddf6b` | ⚠️ Unaudited |
| Market | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387648 | `0xe4d47e...cb12e4` | ⚠️ Unaudited |
| sINV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387620 | `0x08d234...e2e994` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387636 | `0x926df1...659d5b` | ⚠️ Unaudited |

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
| [junior-sherlock-contest.pdf](https://www.inverse.finance/audits/junior-sherlock-contest.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [junior-sherlock-audit.pdf](https://www.inverse.finance/audits/junior-sherlock-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [sDOLA-yAudit.pdf](https://www.inverse.finance/audits/sDOLA-yAudit.pdf) | yAudit | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [firm-nomoi.pdf](https://www.inverse.finance/audits/firm-nomoi.pdf) | Nomoi | Audit | 2023-05 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 6 | medium |
| [code4rena.com/reports/2022-10-inverse](https://code4rena.com/reports/2022-10-inverse) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 3 | high |
| [audits.sherlock.xyz/bug-bounties/233](https://audits.sherlock.xyz/bug-bounties/233) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view](https://drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1758] junior-sherlock-contest.pdf — no match: No reason recorded
- [1759] junior-sherlock-audit.pdf — no match: No reason recorded
- [1760] sDOLA-yAudit.pdf — matched: No reason recorded
- [1761] firm-nomoi.pdf — matched: No explicit scope section; contracts extracted from findings and descriptions. Audit date from report update date.
- [1762] code4rena.com/reports/2022-10-inverse — matched: Scope section explicitly lists 8 smart contracts. Audit date from report title.
- [1763] audits.sherlock.xyz/bug-bounties/233 — no match: The provided text is a bug bounty page header with no contract names, file paths, or audit date. No scope section or contract listings are present.
- [1765] drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view — no match: The audit report explicitly names DebtRepayer and DebtConverter as the two repayment strategies within the DebtRepayment protocol. No other contracts are listed in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| junior-sherlock-contest.pdf | FiRMSlashingModule | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | LinearInterpolationDelayModel | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | WithdrawalEscrow | unmatched — not counted | — | — | no |
| junior-sherlock-contest.pdf | jDola | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | FiRMSlashingModule | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | LinearInterpolationDelayModel | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | WithdrawalEscrow | unmatched — not counted | — | — | no |
| junior-sherlock-audit.pdf | jDola | unmatched — not counted | — | — | no |
| sDOLA-yAudit.pdf | DolaSavings | unmatched — not counted | — | — | no |
| sDOLA-yAudit.pdf | sDola | own contract | sDola (selected) `0xb45ad1...157305` — deployed 2024-01-31 21:33:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sDOLA-yAudit.pdf | sDolaHelper | unmatched — not counted | — | — | no |
| firm-nomoi.pdf | ConvexCurveEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | Market | ambiguous — not counted | Market (alternative) `0x48ba57...264e7c` — deployed 2024-02-25 23:27:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xd68d3a...7c4b29` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb427fc...c14a99` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63fad9...aa1ee8` — deployed 2023-03-09 17:11:23+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb51624...22330b` — deployed 2023-05-16 17:19:35+03 — liveness: live (code_present_context)<br>Market (alternative) `0x4a33ba...57808b` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x27b6c3...c3f9c4` — deployed 2023-07-10 17:20:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x286844...573537` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x4e2646...c2db1a` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3474ad...b9397a` — deployed 2023-05-04 12:56:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x79ef6d...52aec4` — deployed 2024-08-02 19:15:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63d27f...2737e8` — deployed 2024-12-18 10:04:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63df5e...d37035` — deployed 2022-12-11 07:15:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xe4d47e...cb12e4` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb8bc1e...4dd565` — deployed 2024-12-18 10:05:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x2a2563...ac77ff` — deployed 2024-09-18 10:33:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xdc2265...7ddf6b` — deployed 2023-09-18 13:51:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3fd3da...7550bc` — deployed 2023-12-06 17:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| firm-nomoi.pdf | INVEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | Oracle | own contract | Oracle (selected) `0xabe146...10cce8` — deployed 2022-12-11 06:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | DbrDistributor | own contract | DbrDistributor (selected) `0xdcd2d9...184244` — deployed 2023-05-16 16:50:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | DBR | own contract | DolaBorrowingRights (selected) `0xad038e...c5d710` — deployed 2022-12-10 20:20:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | BorrowController | own contract | BorrowController (selected) `0x01eca3...ae4ce8` — deployed 2025-05-20 17:38:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | Fed | own contract | Fed (selected) `0x2b3454...5b90fd` — deployed 2022-12-11 07:01:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| firm-nomoi.pdf | ConvexCurvePriceFeed | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | GOhmTokenEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| firm-nomoi.pdf | GovTokenEscrow | unmatched — not counted | — | mentioned in findings as audited contract | no |
| code4rena.com/reports/2022-10-inverse | Market | own contract | Market (alternative) `0x48ba57...264e7c` — deployed 2024-02-25 23:27:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xd68d3a...7c4b29` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb427fc...c14a99` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63fad9...aa1ee8` — deployed 2023-03-09 17:11:23+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb51624...22330b` — deployed 2023-05-16 17:19:35+03 — liveness: live (code_present_context)<br>Market (alternative) `0x4a33ba...57808b` — deployed 2024-11-28 10:08:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x27b6c3...c3f9c4` — deployed 2023-07-10 17:20:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x286844...573537` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x4e2646...c2db1a` — deployed 2024-11-22 18:32:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3474ad...b9397a` — deployed 2023-05-04 12:56:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x79ef6d...52aec4` — deployed 2024-08-02 19:15:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x63d27f...2737e8` — deployed 2024-12-18 10:04:11+03 — liveness: live (current_address_book_code)<br>Market (selected) `0x63df5e...d37035` — deployed 2022-12-11 07:15:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xe4d47e...cb12e4` — deployed 2025-09-26 15:34:11+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xb8bc1e...4dd565` — deployed 2024-12-18 10:05:47+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x2a2563...ac77ff` — deployed 2024-09-18 10:33:59+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0xdc2265...7ddf6b` — deployed 2023-09-18 13:51:35+03 — liveness: live (current_address_book_code)<br>Market (alternative) `0x3fd3da...7550bc` — deployed 2023-12-06 17:19:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-11 was 9d from audit; next candidate 79d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | DBR | own contract | DolaBorrowingRights (selected) `0xad038e...c5d710` — deployed 2022-12-10 20:20:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | Oracle | own contract | Oracle (selected) `0xabe146...10cce8` — deployed 2022-12-11 06:52:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | Fed | own contract | Fed (selected) `0x2b3454...5b90fd` — deployed 2022-12-11 07:01:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | BorrowController | own contract | BorrowController (selected) `0x01eca3...ae4ce8` — deployed 2025-05-20 17:38:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2022-10-inverse | SimpleERC20Escrow | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-10-inverse | GovTokenEscrow | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2022-10-inverse | INVEscrow | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view | DebtRepayer | unmatched — not counted | — | Listed as a repayment strategy in Section 1.1 and targeted in findings PVE-001, PVE-002, PVE-003. | no |
| drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view | DebtConverter | unmatched — not counted | — | Listed as a repayment strategy in Section 1.1 and targeted in findings PVE-002, PVE-003. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x865377...dc9ce4` | ERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfc63c9...0cbd4e` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8bbd03...ce2773` | ERC20Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xca78ee...2bf005` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4c7b26...2236cf` | ERC20Mintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a1e12...480898` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x02eaa6...cf3b03` | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xaf9568...ad5289` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xcbb162...d60b2e` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1c0642...7f82d1` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5d5392...b3e364` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1230bd...ccd6b3` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x607bcd...a24d94` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x1992af...1a7702` | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbeccb6...359bf6` | GovernorMills | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x941c26...39259d` | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x41d5d7...9dfb68` | INV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x27b6c3...c3f9c4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x286844...573537` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a2563...ac77ff` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3474ad...b9397a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3fd3da...7550bc` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48ba57...264e7c` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a33ba...57808b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e2646...c2db1a` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63d27f...2737e8` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x63fad9...aa1ee8` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x79ef6d...52aec4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb427fc...c14a99` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb51624...22330b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb8bc1e...4dd565` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd68d3a...7c4b29` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc2265...7ddf6b` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe4d47e...cb12e4` | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x08d234...e2e994` | sINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 20 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1, medium=1
- Match method counts: temporal_name=1, unique_name=10

Zero-match audit list:

- [1758] junior-sherlock-contest.pdf
- [1759] junior-sherlock-audit.pdf
- [1763] audits.sherlock.xyz/bug-bounties/233
- [1765] drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view

Fork inheritance lineage and inherited audits are included when available.
