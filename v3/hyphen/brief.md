# Agentic Audit Brief: Hyphen

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

- Project: Hyphen (`hyphen`)
- Website: [https://www.biconomy.io](https://www.biconomy.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 47 unique implementations (55 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $100,361.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Hyphen in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4b1912...0633b6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 46 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 47 unique; 46 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 47
- Raw deployments: 55
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 9 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BiconomySponsorshipPaymaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: ethereum `0x000000...841bbc`; optimism `0x000000...146852`; polygon `0x000000...841bbc`; base `0x000000...146852` | ⚠️ Unaudited |
| EntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...7da032` | ⚠️ Unaudited |
| EtherForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x000000...0d41da`; ethereum `0x000000...4132a1` | ⚠️ Unaudited |
| K1MeeValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x000000...1a2d95`; ethereum `0x000000...08a44c` | ⚠️ Unaudited |
| K1Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...c75cba` | ⚠️ Unaudited |
| K1ValidatorFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...684cd6` | ⚠️ Unaudited |
| Nexus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x000000...923b03`; ethereum `0x000000...dfeaaf` | ⚠️ Unaudited |
| NexusAccountFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x000000...7b13de`; ethereum `0x000000...9f6f3a` | ⚠️ Unaudited |
| NexusBootstrap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x000000...27c289`; ethereum `0x000000...ea5903` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...71b183` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...616e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...fb3b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...ec7e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...1693c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...6edf19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...3b04fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...de50ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...5352c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...cc954c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...83ab2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...668b10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...54ec3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...e8ffa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...4af837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...a07733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...32cf19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...4217f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...fa4dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...fe3b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...747300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...075f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000082...f8f0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000082...41281d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000b1...385960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000b1...1dbad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000b1...4500c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000b1...46f62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000b1...dfdb05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000b1...b2d62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cdae7...2905b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242283 | `0x4b1912...0633b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f220...9d7fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5836bd...449917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x879fa3...0a3658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca8f48...cfab76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe854c8...cad977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000...6edf19` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CodeHawks-Cyfrin-Competition-170924.pdf](https://github.com/bcnmy/nexus/blob/main/audits/CodeHawks-Cyfrin-Competition-170924.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [report-cantinacode-biconomy-0708-updated.pdf](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-0708-updated.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 27 | n/a |
| [report-cantinacode-biconomy-erc7739-addon-final.pdf](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-erc7739-addon-final.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Biconomy-Nexus_Zenith-Audit-Report.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Biconomy-Nexus_Zenith-Audit-Report.pdf) | Zenith | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Nexus-Pashov-Review_2025-03.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Nexus-Pashov-Review_2025-03.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [2026-05-Composability-Nexus-Pashov-Review.pdf](https://github.com/bcnmy/erc8211-contracts/blob/main/audits/2026-05-Composability-Nexus-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [2025-03-Composability_Zenith-Audit-Report.pdf](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability_Zenith-Audit-Report.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [2025-03-Composability-Pashov-Review.pdf](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-02%20Zenith%20Audit%20Report%20-%20Biconomy%20MEE%20Contracts.pdf) | Zenith | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [2025-04 Zenith Audit Report - Node PM Sponsorship.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-04%20Zenith%20Audit%20Report%20-%20Node%20PM%20Sponsorship.pdf) | Zenith | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [.gitkeep](https://github.com/bcnmy/nexus/blob/main/audits/.gitkeep) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13266] CodeHawks-Cyfrin-Competition-170924.pdf — no match: No reason recorded
- [13267] report-cantinacode-biconomy-0708-updated.pdf — no match: No reason recorded
- [13268] report-cantinacode-biconomy-erc7739-addon-final.pdf — no match: No reason recorded
- [13269] Biconomy-Nexus_Zenith-Audit-Report.pdf — no match: No reason recorded
- [13270] Nexus-Pashov-Review_2025-03.pdf — no match: No reason recorded
- [13271] 2026-05-Composability-Nexus-Pashov-Review.pdf — no match: No reason recorded
- [13272] 2025-03-Composability_Zenith-Audit-Report.pdf — no match: No reason recorded
- [13273] 2025-03-Composability-Pashov-Review.pdf — no match: No reason recorded
- [13274] 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf — no match: No reason recorded
- [13275] 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf — no match: No reason recorded
- [16245] .gitkeep — no match: The provided text is a GitHub page for a .gitkeep file, not an audit report. No contracts or audit date found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CodeHawks-Cyfrin-Competition-170924.pdf | BaseAccount | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | BiconomyMetaFactory | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | Bootstrap | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | INexusAccountFactory | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | K1Validator | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | K1ValidatorFactory | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | ModuleManager | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | Nexus | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | NexusAccountFactory | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | RegistryAdapter | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | RegistryBootstrap | unmatched — not counted | — | — | no |
| CodeHawks-Cyfrin-Competition-170924.pdf | RegistryFactory | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | BaseAccount | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | Bootstrap | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | Constants | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | EIP712 | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | ExecLib | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | ExecutionHelper | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | IERC7484 | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | IFallback | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | IHook | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | IModuleManagerEvents | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | INexus | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | IStorage | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | IValidator | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | K1Validator | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | K1ValidatorFactory | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | LocalCallDataParserLib | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | ModeLib | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | ModuleManager | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | ModuleTypeLib | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | Nexus | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | NexusAccountFactory | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | NonceLib | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | Receiver | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | RegistryAdapter | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | RegistryBootstrap | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | RegistryFactory | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-0708-updated.pdf | Storage | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | Constants | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | ERC7739Validator | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | K1Validator | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | Nexus | unmatched — not counted | — | — | no |
| report-cantinacode-biconomy-erc7739-addon-final.pdf | SentinelList | unmatched — not counted | — | — | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | K1Validator | unmatched — not counted | — | — | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | ModuleManager | unmatched — not counted | — | — | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | Nexus | unmatched — not counted | — | — | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | NexusBootstrap | unmatched — not counted | — | — | no |
| Biconomy-Nexus_Zenith-Audit-Report.pdf | NexusProxy | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | AssociatedArrayLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | BaseAccount | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | BiconomyMetaFactory | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | BootstrapLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | BytesLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | EnumerableMap4337 | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | EnumerableSet4337 | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | ExecLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | ExecutionHelper | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | Initializable | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | K1Validator | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | K1ValidatorFactory | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | LocalCallDataParserLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | ModeLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | ModuleManager | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | ModuleTypeLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | Nexus | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | NexusAccountFactory | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | NexusBootstrap | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | NonceLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | ProxyLib | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | RegistryAdapter | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | RegistryFactory | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | Stakeable | unmatched — not counted | — | — | no |
| Nexus-Pashov-Review_2025-03.pdf | Storage | unmatched — not counted | — | — | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | ComposabilityDataTypes | unmatched — not counted | — | — | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | ComposableExecutionLib | unmatched — not counted | — | — | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | ComposableExecutionModule | unmatched — not counted | — | — | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | K1MeeValidator | unmatched — not counted | — | — | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | Nexus | unmatched — not counted | — | — | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | NexusAccountFactory | unmatched — not counted | — | — | no |
| 2026-05-Composability-Nexus-Pashov-Review.pdf | NodePaymaster | unmatched — not counted | — | — | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | ComposableExecutionLib | unmatched — not counted | — | — | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | ComposableExecutionModule | unmatched — not counted | — | — | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | ModuleManager | unmatched — not counted | — | — | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | Nexus | unmatched — not counted | — | — | no |
| 2025-03-Composability_Zenith-Audit-Report.pdf | Storage | unmatched — not counted | — | — | no |
| 2025-03-Composability-Pashov-Review.pdf | ComposabilityDataTypes | unmatched — not counted | — | — | no |
| 2025-03-Composability-Pashov-Review.pdf | ComposableExecutionBase | unmatched — not counted | — | — | no |
| 2025-03-Composability-Pashov-Review.pdf | ComposableExecutionLib | unmatched — not counted | — | — | no |
| 2025-03-Composability-Pashov-Review.pdf | ComposableExecutionModule | unmatched — not counted | — | — | no |
| 2025-03-Composability-Pashov-Review.pdf | Constants | unmatched — not counted | — | — | no |
| 2025-03-Composability-Pashov-Review.pdf | Storage | unmatched — not counted | — | — | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | EcdsaLib | unmatched — not counted | — | — | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | K1MeeValidator | unmatched — not counted | — | — | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | NodePaymaster | unmatched — not counted | — | — | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | PermitValidatorLib | unmatched — not counted | — | — | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | SimpleValidatorLib | unmatched — not counted | — | — | no |
| 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf | TxValidatorLib | unmatched — not counted | — | — | no |
| 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf | BaseNodePaymaster | unmatched — not counted | — | — | no |
| 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf | Constants | unmatched — not counted | — | — | no |
| 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf | K1MeeValidator | unmatched — not counted | — | — | no |
| 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf | NodePaymaster | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 102 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [13266] CodeHawks-Cyfrin-Competition-170924.pdf
- [13267] report-cantinacode-biconomy-0708-updated.pdf
- [13268] report-cantinacode-biconomy-erc7739-addon-final.pdf
- [13269] Biconomy-Nexus_Zenith-Audit-Report.pdf
- [13270] Nexus-Pashov-Review_2025-03.pdf
- [13271] 2026-05-Composability-Nexus-Pashov-Review.pdf
- [13272] 2025-03-Composability_Zenith-Audit-Report.pdf
- [13273] 2025-03-Composability-Pashov-Review.pdf
- [13274] 2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf
- [13275] 2025-04 Zenith Audit Report - Node PM Sponsorship.pdf
- [16245] .gitkeep

Fork inheritance lineage and inherited audits are included when available.
