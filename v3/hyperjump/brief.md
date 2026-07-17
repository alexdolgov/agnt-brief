# Agentic Audit Brief: HyperJump

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: HyperJump (`hyperjump`)
- Website: [https://hyperjump.fi/](https://hyperjump.fi/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, fantom, metis
- Contract surface: 55 unique implementations (55 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $185,953.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for HyperJump. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, fantom, metis. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (2), pausable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xfd5b495d6ce1a98102a14a7443928fc1b31a200d`, chain 56)
- UnnamedContract (`0x7afca69dcd68a8b36764cce35b89a76450cca411`, chain 250)
- HyperAlloy (`0x5ef5994fa33ff4eb6c82d51ee1dc145c546065bd`, chain 56)
- HyperBurn (`0x03d6bd3d48f956d783456695698c407a46ecd54d`, chain 56)
- HyperCity (`0x4f1818ff649498a2441ae1ad29ccf55a8e1c6250`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 39 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 55 unique; 50 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 41
- Unique implementations: 55
- Raw deployments: 55
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeefyVaultV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02931dca7f6360fbfafde00be784b8c80123d913` | ⚠️ Unaudited |
| BurnMachineV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef6a9d388071cfa59534c625e03df002f64af52b` | ⚠️ Unaudited |
| HyperAlloy | unknown | project_anchor | own_supporting | 0 | bsc | unit-242267 | `0x5ef5994fa33ff4eb6c82d51ee1dc145c546065bd` | ⚠️ Unaudited |
| HyperBurn | unknown | project_anchor | own_supporting | 0 | bsc | unit-242262 | `0x03d6bd3d48f956d783456695698c407a46ecd54d` | ⚠️ Unaudited |
| HyperCity | unknown | project_anchor | own_supporting | 0 | bsc | unit-242266 | `0x4f1818ff649498a2441ae1ad29ccf55a8e1c6250` | ⚠️ Unaudited |
| HyperMechs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ae713c662b8852d686e718e0762631a4cb84954` | ⚠️ Unaudited |
| HyperPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b04a6cdd6422f44eeea2dbe9bf1127a1ae82f4b` | ⚠️ Unaudited |
| HyperPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x027587c42d8c43b5e8e622aa9981a409ef625a85` | ⚠️ Unaudited |
| HyperWarp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x624e7c88b6884bffbab31623f4d1f8bc8b8ae756` | ⚠️ Unaudited |
| LPFeeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fa9420a4bfc08dbb6bdd1728b1555a96c59fa8d` | ⚠️ Unaudited |
| StarVaultLPF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64776d5bdbd391716a01c9fff35fc18fbce01447` | ⚠️ Unaudited |
| StrategyHyperLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02db4d714641f46dd70bec80e4e4c33f8fd65cf8` | ⚠️ Unaudited |
| StrategyHyperLPV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78609e486ec17441e250d949df395a37e00454ab` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89861bf28cedabba52ea4b06869186294cd00265` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (41)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x130025ee738a66e691e6a7a62381cb33c6d9ae83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x1985cd7af3b410cfe87b59eaf8a0833816729c49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2b4618996fad3ee7bc9ba8c98969a8eaf01b5e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3876720ef21cd7036b8a247a695cb82d5319e588` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x3bc677674df90a9e5d741f28f6ca303357d0e4ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x4406d7cf208fcc3503bb23b4964a558d68a3cd70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x522650de53e79ead931e4eb3537b12d7fe06697d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7a0de9a006129a18ae8d3c4e609fa866ee29a5b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x7f0a733b03ec455cb340e0f6af736a13d8fbb851` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x9a493874b5e1fa9ec900a48d46c2791d894be454` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xac653ce27e04c6ac565fd87f18128ad33ca03ba2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xdf26b7bf6f059f0ef9524c8ad2a09ccfc4f27604` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf153911d912de1f4fe576fbe4ab29c075d656b58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242270 | `0xfd5b495d6ce1a98102a14a7443928fc1b31a200d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x0575f8738efda7f512e3654f277c77e80c7d2725` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x13f3d1b75caba433da82d8a72e4d75f66da30313` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x2b4618996fad3ee7bc9ba8c98969a8eaf01b5e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x2e03284727ff6e50bb00577381059a11e5bb01de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x4e81dba135eb3e541c65ee811ec071eaecb531a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x53c153a0df7e050bbefbb70ee9632061f12795fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x5621ca989428cf105784164b84d500f4a6bec889` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x593ea5e7689a07ec1131a90f176ddd63c48725a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x78de9326792ce1d6eca0c978753c6953cdeedd73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-242261 | `0x7afca69dcd68a8b36764cce35b89a76450cca411` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x863130381c476a3dabcd6f287ab967fe4c3a7d13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x991152411a7b5a14a8cf0cdde8439435328070df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xb0aa3a0458bd85f859345e2251c7665c5f7a9d18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xbc2451aad349b6b43fd05f4f0cc327f8a6bca2d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xd27d38694aadb487aea67db70fcebb411a7ac3ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xeae39a03fb06b9a1f9540c5c15711ac67dd0e464` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf195ee230ec8dd16d8e3d0572c28b81b3d70c1a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xf640259e4032ef4f7e0a1b7a14b2473373c0245c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xfd44ae75b934335262654600006e93594129caa9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xfedd479723b03350cff007fe0db19d1c6f179457` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0x3339e128fe4df4d80f2aa95ffda953b983815c4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0x7b649f38286231755ffccbe6c82e8d7529800ed4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0x9239ce2946e90adf4519cce82eeabf6ee3dc7d49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0xa565037058df44f336e01683e096cdde45cfe5c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0xaa1504c878b158906b78a471fd6bdbf328688aeb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0xd96aee439e6e5b4f3544bf105eb78f3b8b6cd774` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | n/a | `0xe3c82a836ec85311a433fbd9486efaf4b1afbf48` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Certik HyperJump Audit: <>](https://skynet.certik.com/projects/hyperjump) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Diving in to the Certik Audit of HyperJump](https://hyperjumpfi.medium.com/diving-in-to-the-certik-audit-of-hyperjump-b7ae6bb5d5bb) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [Audit]()](https://hyperjump.gitbook.io/hyperguides/security/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20519] Certik HyperJump Audit: <> — no match: The document is a CertiK Skynet project insight page, not a formal audit report. It mentions an audit delivered on 5/26/2021 but does not list specific contracts in scope. No contract names are identifiable.
- [20520] Diving in to the Certik Audit of HyperJump — no match: The document is a blog post summarizing a Certik audit, but it does not list specific contract names, file paths, or a scope section. Only finding codes (e.g., HBH-07, HCH-11) are mentioned, which are not contract names.
- [20521] - [Audit]() — no match: The provided text is a general description of auditing and a reference to a Certik audit, but does not contain the actual audit report with a scope section or contract names.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5ef5994fa33ff4eb6c82d51ee1dc145c546065bd` | HyperAlloy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x03d6bd3d48f956d783456695698c407a46ecd54d` | HyperBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4f1818ff649498a2441ae1ad29ccf55a8e1c6250` | HyperCity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=3
- Match method counts: n/a

Zero-match audit list:

- [20519] Certik HyperJump Audit: <>
- [20520] Diving in to the Certik Audit of HyperJump
- [20521] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
