# Agentic Audit Brief: FLock.io

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: FLock.io (`flock.io`)
- Website: [https://www.flock.io/](https://www.flock.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 19 unique implementations (35 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,608,880.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for FLock.io. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 1 of 19 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/18
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 19
- Raw deployments: 35
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 5.6% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FlockTokenUpgradeable | unknown | project_anchor | own_supporting | 1 | base | unit-240015 | 2 deployments: base `0x22754dad1b54ce707997afce9a78a3413045f784`; base `0x5ab3d4c385b400f3abb49e80de2faf6a88a7b691` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FlockAirDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x05379b6dc36d264f535d35c7d9bbd50115e93d66`; base `0x7c3eac01749cb3eecc5726bf00b8f43ffd988daf` | ⚠️ Unaudited |
| FlockConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x64e5450bbddea04199fbbf1ca5c22a10701e4997`; base `0x769ceca23323c4409f1782a282e5e0cd26a2148a`; base `0xf79584e389996c7189eee7fd322e4d65408fb833` | ⚠️ Unaudited |
| FlockPoolManagerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1a15d5bf8cdb6b1241903806e844fb72ebd48af6`; base `0x2d2f27589b2ac6d792fc111549c7e4547c20dd65` | ⚠️ Unaudited |
| FlockPoolManagerV2Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x25c2d9619b1548b0c8ddc3e5ceffe64b951f5137`; base `0x5c415570e4a9c49e64ea640180f91161b47a1502` | ⚠️ Unaudited |
| FlockRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x86dbb37cd9cb039e5a55562d7e716d08161343a8`; base `0xde02bb6d2a4702407c103363324bbb36f88682b5` | ⚠️ Unaudited |
| FlockStakeInfoUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2886fd3861b09d6d7b3d7cf25c8ea2999ad17883`; base `0x8a83efd9436ebf4fa4a8ad2b1751f5feb56a400a` | ⚠️ Unaudited |
| FlockStakeInfoV2Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b964b3df82238b404afd7db1c10b9c0c29f1f98`; base `0xa799ece98ca2c52eeb5837f0faffb12883f5bf63` | ⚠️ Unaudited |
| FlockTaskManagerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x05e42e03996379cd0b6290cc2767a1bdd78b737a`; base `0xac24d8a23e0306c1ee689f33359db2889e7d8fe4`; base `0xe8e31e34ee55ffc815222fe883b5137be1980d6c` | ⚠️ Unaudited |
| FlockTaskManagerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5813dee58523ea082ee80162527efeed7799aaa0`; base `0xc4d8cf5f0f994330676bef1fb4612b04e531846a` | ⚠️ Unaudited |
| FlockTaskManagerV2Upgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x29d4ecea4b1fcac239bf4b4dc3b42829c2e69fed` | ⚠️ Unaudited |
| FlockTaskManagerV2Upgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x36040670d539d13420f9d1caf605fa2901466a3d`; base `0x8884e9571debc8c5069b29fbdd4ee0702e5acdad` | ⚠️ Unaudited |
| FlockTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x81e741f9a342604af36b00365c1add26163ad626` | ⚠️ Unaudited |
| gmFlockExchangeUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9e0acc78662b9193f9eff711af460406e9def83f`; base `0xe1fa4592b7a35ff6cef65fdec5e13a1f48fc6123` | ⚠️ Unaudited |
| gmFlockUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x781dd21d8430e4e267af5713e01332742f5cad24`; base `0x7fe6d76a5e9dae35590f720679ccd10cfb0c816c` | ⚠️ Unaudited |
| LinearVestingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x34e11cf7a9d3de34b7ecf6602c23edfd98dfb5b5`; base `0xf360886bb80eb1efc413c4e89566e6c59d752b53` | ⚠️ Unaudited |
| ModelTokenLaunchUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6f39fe20f19103a215bcc444a64f78ae7797f0b1` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6523d5d33d29a7e6573330310e3f0e6157e9f06` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bf57986e7df6c19bb1222a8d09d693cba5e195e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 31
- Live contracts: 2
- Unknown liveness contracts: 29
- Source-verified contracts: 30
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=26, source verified unclassified=3, unverified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | currently scope matched | TransparentUpgradeableProxy<br>`0x5ab3d4c385b400f3abb49e80de2faf6a88a7b691` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockConfig<br>`0xf79584e389996c7189eee7fd322e4d65408fb833` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockPoolManagerUpgradeable<br>`0x1a15d5bf8cdb6b1241903806e844fb72ebd48af6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockPoolManagerV2Upgradeable<br>`0x25c2d9619b1548b0c8ddc3e5ceffe64b951f5137` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockStakeInfoUpgradeable<br>`0x8a83efd9436ebf4fa4a8ad2b1751f5feb56a400a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockStakeInfoV2Upgradeable<br>`0xa799ece98ca2c52eeb5837f0faffb12883f5bf63` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockTaskManagerUpgradeable<br>`0x05e42e03996379cd0b6290cc2767a1bdd78b737a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockTaskManagerUpgradeable<br>`0xac24d8a23e0306c1ee689f33359db2889e7d8fe4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockTaskManagerUpgradeable<br>`0xc4d8cf5f0f994330676bef1fb4612b04e531846a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockTaskManagerUpgradeable<br>`0xe8e31e34ee55ffc815222fe883b5137be1980d6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockTaskManagerV2Upgradeable<br>`0x8884e9571debc8c5069b29fbdd4ee0702e5acdad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | FlockTokenUpgradeable<br>`0x22754dad1b54ce707997afce9a78a3413045f784` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | gmFlockExchangeUpgradeable<br>`0x9e0acc78662b9193f9eff711af460406e9def83f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | gmFlockUpgradeable<br>`0x7fe6d76a5e9dae35590f720679ccd10cfb0c816c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x05379b6dc36d264f535d35c7d9bbd50115e93d66` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x1b964b3df82238b404afd7db1c10b9c0c29f1f98` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x2886fd3861b09d6d7b3d7cf25c8ea2999ad17883` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x2d2f27589b2ac6d792fc111549c7e4547c20dd65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x5813dee58523ea082ee80162527efeed7799aaa0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x5c415570e4a9c49e64ea640180f91161b47a1502` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x64e5450bbddea04199fbbf1ca5c22a10701e4997` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x769ceca23323c4409f1782a282e5e0cd26a2148a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x781dd21d8430e4e267af5713e01332742f5cad24` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x81e741f9a342604af36b00365c1add26163ad626` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xde02bb6d2a4702407c103363324bbb36f88682b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xe1fa4592b7a35ff6cef65fdec5e13a1f48fc6123` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xf360886bb80eb1efc413c4e89566e6c59d752b53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | source verified unclassified | FlockAirDrop<br>`0x7c3eac01749cb3eecc5726bf00b8f43ffd988daf` | non_address_book | unknown | unknown | verified | n/a | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | source verified unclassified | FlockRewardPool<br>`0x86dbb37cd9cb039e5a55562d7e716d08161343a8` | non_address_book | unknown | unknown | verified | n/a | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | source verified unclassified | LinearVestingRewards<br>`0x34e11cf7a9d3de34b7ecf6602c23edfd98dfb5b5` | non_address_book | unknown | unknown | verified | n/a | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |
| base | unverified unclassified | UnnamedContract<br>`0x7bf57986e7df6c19bb1222a8d09d693cba5e195e` | non_address_book | unknown | unknown | unverified | n/a | `0xb145d95d3408dcb602d4bcc03a42e45be8724816` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [FLock Phase1 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/FLock%20Phase1%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 6 | high |
| [Flock v2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Flock%20v2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Flock - FL Alliance Client - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/blockchain/Flock%20-%20FL%20Alliance%20Client%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [README.md](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/README.md) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21300] FLock Phase1 - SlowMist Audit Report.pdf — matched: Audit scope explicitly lists contracts in ./contracts directory. Audit date range is 2024.10.29 - 2024.11.11, using end date.
- [21302] Flock v2 - SlowMist Audit Report.pdf — no match: All contracts listed in the Audit Scope section under 4.1 Contracts Description.
- [21303] Flock - FL Alliance Client - SlowMist Audit Report.pdf — no match: Extracted contract names from audit scope tree and findings. Audit date from audit result table: 2025.01.17 - 2025.01.24, using end date.
- [24086] README.md — no match: The provided text is a list of audit report titles and links, not the content of a specific audit report. No contracts in scope or audit date can be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| FLock Phase1 - SlowMist Audit Report.pdf | AdminUpgradeable | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockMiniPool | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockPoolManagerUpgradeable | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockStakeInfoUpgradeable | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockTaskManagerUpgradeable | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockTokenUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5ab3d4c385b400f3abb49e80de2faf6a88a7b691` — deployed 2024-12-21 02:29:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockConfig | unmatched — not counted | — | listed in audit scope as config directory | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockMiniPoolV2 | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockPoolManagerV2Upgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockStakeInfoV2Upgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockTaskManagerV2Upgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | RbacUpgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | ConfigHelperV2 | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | ConfigOptionsV2 | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockConfigV2 | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | gmFlockExchangeUpgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | gmFlockUpgradeable | unmatched — not counted | — | listed in scope | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | FlockTask | unmatched — not counted | — | listed in scope and findings | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | Dataset | unmatched — not counted | — | listed in scope and findings | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | S3StorageManager | unmatched — not counted | — | listed in scope and findings | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | Client | unmatched — not counted | — | listed in scope and findings | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | ContainerManager | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [21302] Flock v2 - SlowMist Audit Report.pdf
- [21303] Flock - FL Alliance Client - SlowMist Audit Report.pdf
- [24086] README.md

Fork inheritance lineage and inherited audits are included when available.
