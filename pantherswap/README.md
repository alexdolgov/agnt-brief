# Agentic Audit Brief: PantherSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: PantherSwap (`pantherswap`)
- Website: [https://pantherswap.com/](https://pantherswap.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 38 unique implementations (39 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $240,569.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PantherSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x751a58ceb152b68e8a4564de7731f9be21fa985b`, chain 56)
- UnnamedContract (`0x86dfd9e1d68f769d4473feefafab545aa49b00f3`, chain 56)
- UnnamedContract (`0x9287f5ad55d7ee8eae90b865718eb9a7cf3fb71a`, chain 56)
- UnnamedContract (`0x937ced19daa8a057e7f4062e93ea4aedad730e1c`, chain 56)
- UnnamedContract (`0xbe000549930417774e30535472c5e389a2d76e38`, chain 56)
- UnnamedContract (`0xc058b0a4689884633479f1d142ae53bff734a836`, chain 56)
- UnnamedContract (`0xc24ad5197daefd97df28c70acbdf17d9ff92a49b`, chain 56)
- UnnamedContract (`0xecc11a78490866e0073ebc4a4dcb6f75673c8685`, chain 56)
- PantherToken (`0x1f546ad641b56b86fd9dceac473d1c7a357276b7`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 29 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 9 of 38 unique; 29 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 38
- Raw deployments: 39
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| IPOByProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x3950124730a3b013e402dd2bf49e8665cdfe68a9`; bsc `0xb7377aac407c0456439113524cd2614a38d24a8e` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f3b6cf47bae56473cb7129a9e1cbda8cba3a3fa` | ⚠️ Unaudited |
| LotteryNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x983c4fb762e6136a609431d4a93187c6f6ab886f` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x058451c62b96c594ad984370eda8b6fd7197bbd4` | ⚠️ Unaudited |
| PantherFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x670f55c6284c629c23bae99f585e3f17e8b9fc31` | ⚠️ Unaudited |
| PantherJungleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f2c870f0c131d90c9336f08334bb68586ab4a40` | ⚠️ Unaudited |
| PantherLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78cddaa1a917a177cb2624bd750a0c428f95604b` | ⚠️ Unaudited |
| PantherReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb688307a13e5abbd99ee4d6229272a17d60fe34` | ⚠️ Unaudited |
| PantherRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24f7c33ae5f77e2a9eceed7ea858b4ca2fa1b7ec` | ⚠️ Unaudited |
| PantherToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-390666 | `0x1f546ad641b56b86fd9dceac473d1c7a357276b7` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6a8f0269d6af307a908ecd3938f470db7a56daa` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34f76405cf8578b61fad9c58b3c845dcd01591ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x461e6c1e851fd53402bb73d14db227c373b0c220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46c84abbbeb3ca0c2fac5b37079596517b4e8a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64880f71561746609dad42c7b1f64c6ba4b8c430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x667a84b7ea2eb7312ffc6eae561c6102bfe5642b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e333d389afbc6a2176a5513cedd0767be2d4500` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390667 | `0x751a58ceb152b68e8a4564de7731f9be21fa985b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x829c86e75597dfeeb05b0bd4aa3a7bf225546393` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390668 | `0x86dfd9e1d68f769d4473feefafab545aa49b00f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390669 | `0x9287f5ad55d7ee8eae90b865718eb9a7cf3fb71a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390670 | `0x937ced19daa8a057e7f4062e93ea4aedad730e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8f11fce5010dcd86446a241cedd379392864c92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390671 | `0xbe000549930417774e30535472c5e389a2d76e38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390672 | `0xc058b0a4689884633479f1d142ae53bff734a836` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390673 | `0xc24ad5197daefd97df28c70acbdf17d9ff92a49b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3103e1f1498cc340d0445c852a46400721908b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7685c096fff79efab5c69a810869d778fd1197b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc79f511d863b23ae114f9eb4bb0f190636ed32d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd384a431e0ed986d440cf271073bafce2e10acb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4161a9aec71b6d846fe5dbec0679ad99a580330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6634a901b73aeb47847a9461a03086e92cfa498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd75dc5a09bcfe4c508e2aa3320188c0742ee717a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe426127f0d1d1483d8fa0453f849b450985ab020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390674 | `0xecc11a78490866e0073ebc4a4dcb6f75673c8685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed5d167ec7ba9a1920cb3b34fdc223fe9ba5bda7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf14cc067c7b84641e05ea4002a3246265620448e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5048c225a0d220cd784d81f4e07f137faf35ff8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 20
- Live contracts: 0
- Unknown liveness contracts: 20
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=20

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x34f76405cf8578b61fad9c58b3c845dcd01591ba` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0x461e6c1e851fd53402bb73d14db227c373b0c220` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0x46c84abbbeb3ca0c2fac5b37079596517b4e8a6e` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0x64880f71561746609dad42c7b1f64c6ba4b8c430` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0x667a84b7ea2eb7312ffc6eae561c6102bfe5642b` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0x6e333d389afbc6a2176a5513cedd0767be2d4500` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0x829c86e75597dfeeb05b0bd4aa3a7bf225546393` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xa8f11fce5010dcd86446a241cedd379392864c92` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xb7377aac407c0456439113524cd2614a38d24a8e` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xc3103e1f1498cc340d0445c852a46400721908b1` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xc7685c096fff79efab5c69a810869d778fd1197b` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xc79f511d863b23ae114f9eb4bb0f190636ed32d9` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xd384a431e0ed986d440cf271073bafce2e10acb4` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xd4161a9aec71b6d846fe5dbec0679ad99a580330` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xd6634a901b73aeb47847a9461a03086e92cfa498` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xd75dc5a09bcfe4c508e2aa3320188c0742ee717a` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xe426127f0d1d1483d8fa0453f849b450985ab020` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xed5d167ec7ba9a1920cb3b34fdc223fe9ba5bda7` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xf14cc067c7b84641e05ea4002a3246265620448e` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |
| unverified unclassified | UnnamedContract<br>`0xf5048c225a0d220cd784d81f4e07f137faf35ff8` | non_address_book | unknown | unknown | unverified | n/a | `0xfb58d737942e1c39f713203c323e95afb12361ab` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [- [Audit/Review]()](https://pantherswap.gitbook.io/polyrabbit/security/audit-review.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17951] - [Audit/Review]() — no match: The provided text is a documentation index page listing audit/review statuses with links, but does not contain any contract names, file paths, or scope sections. No contracts in scope could be identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x1f546ad641b56b86fd9dceac473d1c7a357276b7` | PantherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [17951] - [Audit/Review]()

Fork inheritance lineage and inherited audits are included when available.
