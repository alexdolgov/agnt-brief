# Agentic Audit Brief: Tydro

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Tydro (`tydro`)
- Website: [https://tydro.com/](https://tydro.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, ink
- Contract surface: 47 unique implementations (49 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $182,787,193.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Tydro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum. Structural roles: 6 core. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (6)
- Contract kinds: abstract (6)
- Detected standards: erc20 (6)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (6)
- Upgradeable-pattern rows: 6

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 6; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 47
- Raw deployments: 49
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BorrowLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259530 | `0xfed9871528e713b5038c4c44bbe7a315f56cadc6` | ⚠️ Unaudited |
| ClaimableRewardsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07252906a80ac482aeb1a44e1153cdd3e6005127` | ⚠️ Unaudited |
| EModeLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259523 | `0xd1bddc05a3bb5a7907d82a1b4f1e21dbce69c3d5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbb9f637fae6972ea9adeb2ac717c16590cec33e3`; ethereum `0xbe62db8ed4838e10e1318593ac9e3eb9ccfb2dc7` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259515 | `0x5e84cee2afb7b37d2ab14722c39a7c1c26f5b0bb` | ⚠️ Unaudited |
| KBTCV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x73e0c0d45e048d25fc26fa3159b0aa04bfa4db98` | ⚠️ Unaudited |
| LiquidationLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259503 | `0x36ae486289bb807c3c79a1427b9c3d934294ef43` | ⚠️ Unaudited |
| MultiplierMgmtFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x018a090fb8d50376bf8464922ffda935a1fe2859` | ⚠️ Unaudited |
| OFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147bde4f997f0d4c7544ed0c55eacf1e5e6bf9c4` | ⚠️ Unaudited |
| PAXG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da4c5d9eca180a03765a6d27196f2a0380fa543` | ⚠️ Unaudited |
| PayoutGroupFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77fe0365db15a1ec05833b7c1802d68356a363df` | ⚠️ Unaudited |
| PoolLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259527 | `0xe51b69e5722bf547866a4d7bc190c6e81b626806` | ⚠️ Unaudited |
| PYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7302ea4e51b041b691d1f3458fa7d36560f90708` | ⚠️ Unaudited |
| StakedUSDeOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211cc4dd073734da055fbf44a2b4667d5e5fe5d2` | ⚠️ Unaudited |
| SupplyControl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31d9bdea6f104606c954f8fe6ba614f1bd347ec3`; ethereum `0xfab5891ed867a1195303251912013b92c4fc3a1d` | ⚠️ Unaudited |
| SupplyLogic | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-259491 | `0x034fd14b9ae6bb066a1f9f85a55e990b0b25c168` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9036566eaa5f83e0b9e1161c6c602b0adf997654` | ⚠️ Unaudited |
| TokenAdminFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a473ed747c29397616eabae1dff273c5b1e3f5` | ⚠️ Unaudited |
| TokenExtensionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dff613f9e283d268489ba6ae1c9b22970d561a8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa1290d69c65a6fe4df752f95823fae25cb99e5a7` | ⚠️ Unaudited |
| USDeOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x568c28170115fe772b30229199d4ae0595a507f7` | ⚠️ Unaudited |
| USDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28edab7eec878d54fa877ffff4604dfd649f533f` | ⚠️ Unaudited |
| XERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2416092f143378750bb29b79ed961ab195cceea5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe2faef627a56e811e09b4e1b810b59f38f3a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6db4c20baf5f86471a0497fe9a344cd370bc9445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7569ae2be6ac51ed7f92f8167090b52615f86497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b734d401841be8d8024dd32e4a530abed671897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c35caa5fd5bdc64b6b11344ad57594a3676256a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ecae0b0402e29694b3af35d5943d4631ee568dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960fc6ed94c126198a24fdeb6031f749ac70169a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a7164112029b81c07636ab7b59fa813e0883bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e12c058a20c5b0eebaa00e44a712ec54b838971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f17058b96786951370a95fdb1273f897798dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4837cd7b4a7a3c71fbe7fc7eaddb64bddc6ef6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54ca36efe594e4c774ba8463adf67ba3de1236f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc766290954d51149bda940de8023da86414e1e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc896c7777f85cf8edf9dcb2ee40274b7307da488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd09ede557ef195983c9544a5724046fbd6e8a3c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7f3f1c5f1a7f2f42152704c782a556b2d83a020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc55b5f0f2d441c1116dcc3b9d56314da7f5496d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf9ad77036fdde9f7750d200ec6ed6b2622fea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b2467d9757d5b0dedd74edf8dde63651ca32ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe343167631d89b6ffc58b88d6b7fb0228795491d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90c0e2fecd06c5875b50f6b13f3b8dbdb4ce946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3d0c564123a4bda51a18873c516eb5b7aeec02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfacd5ff359adf87822374275699dd518aaf9a65f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 25
- Live contracts: 0
- Unknown liveness contracts: 25
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=25

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x2fe2faef627a56e811e09b4e1b810b59f38f3a81` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x6db4c20baf5f86471a0497fe9a344cd370bc9445` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x7569ae2be6ac51ed7f92f8167090b52615f86497` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x8b734d401841be8d8024dd32e4a530abed671897` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x8c35caa5fd5bdc64b6b11344ad57594a3676256a` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x8ecae0b0402e29694b3af35d5943d4631ee568dc` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x960fc6ed94c126198a24fdeb6031f749ac70169a` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x9a7164112029b81c07636ab7b59fa813e0883bbf` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x9e12c058a20c5b0eebaa00e44a712ec54b838971` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xa8f17058b96786951370a95fdb1273f897798dc8` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xb4837cd7b4a7a3c71fbe7fc7eaddb64bddc6ef6f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xbb9f637fae6972ea9adeb2ac717c16590cec33e3` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xc54ca36efe594e4c774ba8463adf67ba3de1236f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xc766290954d51149bda940de8023da86414e1e19` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xc896c7777f85cf8edf9dcb2ee40274b7307da488` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xd09ede557ef195983c9544a5724046fbd6e8a3c6` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xd7f3f1c5f1a7f2f42152704c782a556b2d83a020` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xdc55b5f0f2d441c1116dcc3b9d56314da7f5496d` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xddf9ad77036fdde9f7750d200ec6ed6b2622fea0` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xe2b2467d9757d5b0dedd74edf8dde63651ca32ee` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xe343167631d89b6ffc58b88d6b7fb0228795491d` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xe90c0e2fecd06c5875b50f6b13f3b8dbdb4ce946` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xef3d0c564123a4bda51a18873c516eb5b7aeec02` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xfab5891ed867a1195303251912013b92c4fc3a1d` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xfacd5ff359adf87822374275699dd518aaf9a65f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
