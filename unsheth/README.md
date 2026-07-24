# Agentic Audit Brief: unshETH

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: unshETH (`unsheth`)
- Website: [https://unsheth.xyz](https://unsheth.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 42 unique implementations (42 raw deployments)
- Coverage basis: 3/6 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $125,636.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for unshETH. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum. Structural roles: 6 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), supporting (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (5), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9d14855cc4c89d4647bc39bc9cfe458ce46c1a36`, chain 1)
- UnnamedContract (`0xd027ef82db658805c9ba8053196cd6ed1dd407e4`, chain 1)
- UnnamedContract (`0xef1203e0680fe690c2923ce508556c92c9abd48e`, chain 1)
- LSDVault (`0x51a80238b5738725128d3a3e06ab41c1d4c05c74`, chain 1)
- RenouncedOwner (`0xb250216b5bce306fa37f7de76a82409663ed52c3`, chain 1)
- unshETH (`0x0ae38f7e10a43b5b2fb064b42a2f4514cba909ef`, chain 1)
- VDAMM (`0x35636b85b68c1b4a216110fb3a5fb447a99db14a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/6 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 7 of 42 unique; 35 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/22
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 3 | 13.6% | 2023-06 |
| CertiK | Tier 2 | 1 | 4.5% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LSDVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395329 | `0x51a80238b5738725128d3a3e06ab41c1d4c05c74` | ✅ Audited |
| unshETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395325 | `0x0ae38f7e10a43b5b2fb064b42a2f4514cba909ef` | ✅ Audited |
| VDAMM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395328 | `0x35636b85b68c1b4a216110fb3a5fb447a99db14a` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CommunalFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33890b88f98a9d511678954ad8db0510b6953cfc` | ⚠️ Unaudited |
| Darknet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3f131e624de06c6c5b7897827c9875b67e3cedc` | ⚠️ Unaudited |
| EuclideanFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x954d5088d88291146ce58270add820e809ff3d7e` | ⚠️ Unaudited |
| GovernorsFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bb59e8556e7fca9000f05678abc4ba06261832` | ⚠️ Unaudited |
| LSDRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2feaa552559fec162b2a767f674f86776fbf1b7d` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2955c9cba43e769017caf257dd96c0dd9d79bd3a` | ⚠️ Unaudited |
| RenouncedOwner | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395333 | `0xb250216b5bce306fa37f7de76a82409663ed52c3` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395331 | `0x9d14855cc4c89d4647bc39bc9cfe458ce46c1a36` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395335 | `0xd027ef82db658805c9ba8053196cd6ed1dd407e4` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-395337 | `0xef1203e0680fe690c2923ce508556c92c9abd48e` | ⚠️ Unaudited |
| unshETHProxyOft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35f899ce6cc304aedfdb7835f623a30473b26457` | ⚠️ Unaudited |
| unshETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f0a29e479744dca0d3d912f87f1a6e3237a55d3` | ⚠️ Unaudited |
| unshETHZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x718c26e5e60829a36fee8df1d791f340aaa91b4b` | ⚠️ Unaudited |
| unshETHZapv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7461092aa5234b42a17ee8cc51cfde6ef4becbc7` | ⚠️ Unaudited |
| USDTSGReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41d27ff3205787a4a617708f6675a44821c53ec` | ⚠️ Unaudited |
| USH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60779cc1b2c1d0580611c526a8df0e3f870ec48` | ⚠️ Unaudited |
| USHFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46671bfb2746ba2916cbf9773b94f85dd94a8339` | ⚠️ Unaudited |
| USHProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c8a4058db744808fffa97e29c8e1b7cbf7aad01` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d0db2154b0abd117ade13dc73bbf4e0d1ce014` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f9d954fc679912d8ac968815a1f18d325061c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cdc0b3658a82c79dce3c1e9a29d5f069afa1cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fbfdf205bf425a5b3e21d9ce34128030c3c785d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x489791b6ada4463634afa900540eef42f05b6070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d95f8072ca1d5472ffb96debc89cd8df5a133b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5153b553d8ae3cbbb5ac97f5e4c8e5776d30ee09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9a0edcb834a7c395aabfb34f59b1ca3a9eb485` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b223db0266c12c0ac785c8038070c28fdbcab43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x825bac2f6a1c576ff0b123fe3739c51a5e18aa8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x846982c0a47b0e9f4c13f3251ba972bb8d32a8ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ef73ca1474cd533d2ed2743394ff02e3332605f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa857904691bbdeca2e768b318b5f6b9bfa698b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4abb80cff96cdafdbe8e59949c8a6f6bc493544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcefb07e9fa7563efc943dd5e25a2d5530acd5717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05855385f632eb20a36e51d6915e136b02c7b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f2e5d41c49fe62a37725a8ff94a65e9a1a165c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6297a3f7a7ec264ca8e293f927d86e532b5da9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76ffee8722c21b390eebe71b67d95602f58237f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8ef2e07e2fca3305372cb0345c686efbec75658` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf728db9182e7c3a9dffbd71f9506d04f129ac9c8` | ❓ Unverified |

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
| unverified unclassified | UnnamedContract<br>`0x2f9d954fc679912d8ac968815a1f18d325061c1a` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0x3cdc0b3658a82c79dce3c1e9a29d5f069afa1cdb` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0x3fbfdf205bf425a5b3e21d9ce34128030c3c785d` | non_address_book | unknown | unknown | unverified | n/a | `0xd88e7d30f7548b7a7c6bfe513629724916449e6d` |
| unverified unclassified | UnnamedContract<br>`0x489791b6ada4463634afa900540eef42f05b6070` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0x4d95f8072ca1d5472ffb96debc89cd8df5a133b0` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0x5153b553d8ae3cbbb5ac97f5e4c8e5776d30ee09` | non_address_book | unknown | unknown | unverified | n/a | `0xd88e7d30f7548b7a7c6bfe513629724916449e6d` |
| unverified unclassified | UnnamedContract<br>`0x5a9a0edcb834a7c395aabfb34f59b1ca3a9eb485` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0x5b223db0266c12c0ac785c8038070c28fdbcab43` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0x825bac2f6a1c576ff0b123fe3739c51a5e18aa8f` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0x846982c0a47b0e9f4c13f3251ba972bb8d32a8ca` | non_address_book | unknown | unknown | unverified | n/a | `0xd88e7d30f7548b7a7c6bfe513629724916449e6d` |
| unverified unclassified | UnnamedContract<br>`0x9ef73ca1474cd533d2ed2743394ff02e3332605f` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0xa857904691bbdeca2e768b318b5f6b9bfa698b7c` | non_address_book | unknown | unknown | unverified | n/a | `0xd88e7d30f7548b7a7c6bfe513629724916449e6d` |
| unverified unclassified | UnnamedContract<br>`0xc4abb80cff96cdafdbe8e59949c8a6f6bc493544` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0xcefb07e9fa7563efc943dd5e25a2d5530acd5717` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0xe05855385f632eb20a36e51d6915e136b02c7b83` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0xe3f2e5d41c49fe62a37725a8ff94a65e9a1a165c` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0xe6297a3f7a7ec264ca8e293f927d86e532b5da9a` | non_address_book | unknown | unknown | unverified | n/a | `0x55638a11757cea2dd6130aa42ddc09149bdcaf84` |
| unverified unclassified | UnnamedContract<br>`0xe76ffee8722c21b390eebe71b67d95602f58237f` | non_address_book | unknown | unknown | unverified | n/a | `0xd88e7d30f7548b7a7c6bfe513629724916449e6d` |
| unverified unclassified | UnnamedContract<br>`0xe8ef2e07e2fca3305372cb0345c686efbec75658` | non_address_book | unknown | unknown | unverified | n/a | `0xd88e7d30f7548b7a7c6bfe513629724916449e6d` |
| unverified unclassified | UnnamedContract<br>`0xf728db9182e7c3a9dffbd71f9506d04f129ac9c8` | non_address_book | unknown | unknown | unverified | n/a | `0xd88e7d30f7548b7a7c6bfe513629724916449e6d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/unsheth) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [Paladin](https://paladinsec.co/projects/unsheth) | Paladin | Audit | 2023-06 | stale | Direct | address | matched | 3 | 0 | 0 | 5 | high |
| [Certik](https://unsheth.xyz/v2-audit.pdf) | Paladin | Audit | 2023-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18433] DL audit link — matched: Extracted from audited files section; date from 'Last Audit was delivered on 4/4/2023'.
- [18434] Paladin — matched: Contracts audited listed in the 'Contracts Audited' section with addresses.
- [18435] Certik — matched: 7 files audited as per scope table; date from cover page 'Verified on Apr 4th, 2023'

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | LSDVault | own contract | LSDVault (selected) `0x51a80238b5738725128d3a3e06ab41c1d4c05c74` — deployed 2023-04-01 05:52:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DL audit link | USH-OFT-BSC | unmatched — not counted | — | listed in audited files | no |
| Paladin | ERC20PermitPermissionedMint | unmatched — not counted | — | listed in scope | no |
| Paladin | unshETH | own contract | unshETH (selected) `0x0ae38f7e10a43b5b2fb064b42a2f4514cba909ef` — deployed 2023-04-01 05:52:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin | Darknet | unmatched — not counted | — | listed in scope | no |
| Paladin | LSDVault | own contract | LSDVault (selected) `0x51a80238b5738725128d3a3e06ab41c1d4c05c74` — deployed 2023-04-01 05:52:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin | RenouncedOwner | unmatched — not counted | — | listed in scope | no |
| Paladin | unshETHZap | unmatched — not counted | — | listed in scope | no |
| Paladin | EvdAMM | own contract | VDAMM (selected) `0x35636b85b68c1b4a216110fb3a5fb447a99db14a` — deployed 2023-04-28 11:55:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin | OwnedDependency | unmatched — not counted | — | listed in scope | no |
| Certik | LSDVault | own contract | LSDVault (selected) `0x51a80238b5738725128d3a3e06ab41c1d4c05c74` — deployed 2023-04-01 05:52:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik | sgReciever | unmatched — not counted | — | listed in scope table | no |
| Certik | sgSender | unmatched — not counted | — | listed in scope table | no |
| Certik | USH-OFT-BSC | unmatched — not counted | — | listed in scope table | no |
| Certik | USH-Proxy-ETH | unmatched — not counted | — | listed in scope table | no |
| Certik | unshETH-OFT-BSC | unmatched — not counted | — | listed in scope table | no |
| Certik | unshETH-Proxy-ETH | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: address=3, unique_name=2

Fork inheritance lineage and inherited audits are included when available.
