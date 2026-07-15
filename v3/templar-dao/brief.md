# Agentic Audit Brief: Templar DAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Templar DAO (`templar-dao`)
- Website: [https://templar.finance/](https://templar.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, moonriver
- Contract surface: 79 unique implementations (100 raw deployments)
- Coverage basis: 0/42 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,200,335.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Templar DAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 42 contract row(s) across bsc, ethereum, moonriver. Structural roles: 24 unclassified, 15 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 42
- Structural roles: unclassified (24), core (15), supporting (3)
- Contract kinds: contract (42)
- Detected standards: ownable (5), erc20 (4), erc20permit (2), pausable (2)
- Frameworks: openzeppelin (16)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 38 contracts are derived from known codebases. 38 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe5cf15...fb8f42`, chain 1)
- UnnamedContract (`0xd4143e...a38116`, chain 1285)
- BondDepository (`0x061bb1...a79ac8`, chain 56)
- BondDepository (`0x0d4f50...2d8273`, chain 56)
- BondDepository (`0x1b8338...8dc710`, chain 56)
- BondDepository (`0x374100...4e48f7`, chain 56)
- BondDepository (`0xd93e4d...59ab7e`, chain 56)
- BondDepository (`0xe6f0a8...278ee2`, chain 56)
- BondDepository (`0xf171ef...973d62`, chain 56)
- BondDepository (`0x534bd7...c74bd2`, chain 1285)
- BondDepository (`0xca2915...10b465`, chain 1285)
- BondDepository (`0xcbffde...d88105`, chain 1285)
- BondingCalculator (`0xd7fe34...0a5ddd`, chain 1285)
- BondReferral (`0xc90490...a1de3c`, chain 56)
- BondReferral (`0x301c82...4ce0b7`, chain 1285)
- DAOsFund (`0xfd67f4...e60a2d`, chain 56)
- DAOsFund (`0x0eccf3...2252ff`, chain 1285)
- Distributor (`0x377896...891c13`, chain 1285)
- GnosisSafeProxy (`0xea724d...1fe788`, chain 56)
- ManagerFund (`0x6ca5c8...5a80ba`, chain 56)
- ManagerFund (`0x8049ff...94b6fa`, chain 56)
- RedeemHelper (`0xf4a0b8...0a79d0`, chain 1285)
- ReserveFund (`0xebe9da...7c9f93`, chain 56)
- Staking (`0xa1f61c...5a9324`, chain 56)
- Staking (`0xa1f61c...5a9324`, chain 1285)
- StakingWarmup (`0xea90ae...e78e8c`, chain 1285)
- SwordToken (`0x8c9827...2334b9`, chain 56)
- SwordToken (`0x8c9827...2334b9`, chain 1285)
- TemplarMoney (`0x194d1d...cc2966`, chain 56)
- TemplarRouter (`0xc0f143...c6385c`, chain 56)
- TemplarToken (`0x19e6bf...45df01`, chain 56)
- TemplarToken (`0xd86e3f...ca9875`, chain 1285)
- Timelock (`0x6056d9...e14b71`, chain 56)
- Treasury (`0x650e26...6d118a`, chain 56)
- Treasury (`0xd01e8d...2b4c27`, chain 56)
- Treasury (`0xd01e8d...2b4c27`, chain 1285)
- WrapSword (`0x66972b...36dabb`, chain 56)
- WrapSword (`0xe1b9b3...3c9871`, chain 1285)

## Contract Surface Quality

- Logic-topography rows: 42; live-surface rows included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/59 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/42 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 44 of 79 unique; 35 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 79
- Raw deployments: 100
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393917 | `0x061bb1...a79ac8` | ⚠️ Unaudited |
| BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x09f67d...0588d4`; bsc `0x8baaef...94780f`; bsc `0xe59551...fcbe74`; moonriver `0xef7d6f...3d98f0` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393918 | `0x0d4f50...2d8273` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393921 | `0x1b8338...8dc710` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393922 | `0x374100...4e48f7` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393938 | `0xd93e4d...59ab7e` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393939 | `0xe6f0a8...278ee2` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | bsc | unit-393941 | `0xf171ef...973d62` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393904 | `0x534bd7...c74bd2` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393908 | `0xca2915...10b465` | ⚠️ Unaudited |
| BondDepository | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393909 | `0xcbffde...d88105` | ⚠️ Unaudited |
| BondingCalculator | unknown | project_anchor | own_supporting | 0 | bsc | unit-393937 | `0xd7fe34...0a5ddd` | ⚠️ Unaudited |
| BondingCalculator | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393912 | `0xd7fe34...0a5ddd` | ⚠️ Unaudited |
| BondManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: bsc `0xfb0c26...fcff58`; moonriver `0x1661b7...f86107` | ⚠️ Unaudited |
| BondReferral | unknown | project_anchor | own_supporting | 0 | bsc | unit-393934 | `0xc90490...a1de3c` | ⚠️ Unaudited |
| BondReferral | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393902 | `0x301c82...4ce0b7` | ⚠️ Unaudited |
| BridgeConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb774a3...8f6b5c` | ⚠️ Unaudited |
| BridgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xaf4053...140b2d`; moonriver `0xb1fc15...3462ba` | ⚠️ Unaudited |
| BridgeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3df667...0a967b`; moonriver `0x6510d4...f385de`; moonriver `0xf3e560...c10520` | ⚠️ Unaudited |
| DAOsFund | unknown | project_anchor | own_supporting | 0 | bsc | unit-393942 | `0xfd67f4...e60a2d` | ⚠️ Unaudited |
| DAOsFund | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393901 | `0x0eccf3...2252ff` | ⚠️ Unaudited |
| Distributor | unknown | project_anchor | own_supporting | 0 | bsc | unit-393923 | `0x377896...891c13` | ⚠️ Unaudited |
| Distributor | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393903 | `0x377896...891c13` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | bsc | unit-393943 | `0xea724d...1fe788` | ⚠️ Unaudited |
| ManagerFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e1ed3...026c61`; bsc `0xc06cd9...a0bbe2` | ⚠️ Unaudited |
| ManagerFund | unknown | project_anchor | own_supporting | 0 | bsc | unit-393928 | `0x6ca5c8...5a80ba` | ⚠️ Unaudited |
| ManagerFund | unknown | project_anchor | own_supporting | 0 | bsc | unit-393929 | `0x8049ff...94b6fa` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4832b9...d88b20`; bsc `0xffc7b9...2d0eb5`; moonriver `0xacc628...bdd047` | ⚠️ Unaudited |
| PoolFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: bsc `0x77316b...0e30ae`; bsc `0xa1dcc9...14cb45`; moonriver `0x208173...b2406d`; moonriver `0xa49203...8ce154` | ⚠️ Unaudited |
| RedeemHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-393924 | `0x38b306...2a075e` | ⚠️ Unaudited |
| RedeemHelper | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393916 | `0xf4a0b8...0a79d0` | ⚠️ Unaudited |
| ReserveFund | unknown | project_anchor | own_supporting | 0 | bsc | unit-393940 | `0xebe9da...7c9f93` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | bsc | unit-393932 | `0xa1f61c...5a9324` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393906 | `0xa1f61c...5a9324` | ⚠️ Unaudited |
| StakingHelper | unknown | project_anchor | own_supporting | 0 | bsc | unit-393931 | `0x8dd1ff...feea87` | ⚠️ Unaudited |
| StakingHelper | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393907 | `0xbb5d4f...db2adf` | ⚠️ Unaudited |
| StakingWarmup | unknown | project_anchor | own_supporting | 0 | bsc | unit-393935 | `0xcbffde...d88105` | ⚠️ Unaudited |
| StakingWarmup | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393915 | `0xea90ae...e78e8c` | ⚠️ Unaudited |
| SwordToken | token | project_anchor | own_supporting | 0 | bsc | unit-393930 | `0x8c9827...2334b9` | ⚠️ Unaudited |
| SwordToken | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393905 | `0x8c9827...2334b9` | ⚠️ Unaudited |
| TemplarBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: bsc `0x26bcad...b82f70`; bsc `0xd1e549...2d156b`; moonriver `0x1a9724...622e04`; moonriver `0x1c37c4...e3e21e` | ⚠️ Unaudited |
| TemplarMoney | unknown | project_anchor | own_supporting | 0 | bsc | unit-393919 | `0x194d1d...cc2966` | ⚠️ Unaudited |
| TemplarRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x122668...57db5e`; bsc `0x8d1ae2...106c40`; bsc `0x9ce6ee...a255d8`; bsc `0xfce936...104754` | ⚠️ Unaudited |
| TemplarRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-393933 | `0xc0f143...c6385c` | ⚠️ Unaudited |
| TemplarRouterMin | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26cb3f...87fa99` | ⚠️ Unaudited |
| TemplarToken | token | project_anchor | own_supporting | 0 | bsc | unit-393920 | `0x19e6bf...45df01` | ⚠️ Unaudited |
| TemplarToken | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393913 | `0xd86e3f...ca9875` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | bsc | unit-393925 | `0x6056d9...e14b71` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1cc499...e39752`; bsc `0x49f368...e248dd`; bsc `0xca5eea...d463e8` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | bsc | unit-393926 | `0x650e26...6d118a` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | bsc | unit-393936 | `0xd01e8d...2b4c27` | ⚠️ Unaudited |
| Treasury | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393910 | `0xd01e8d...2b4c27` | ⚠️ Unaudited |
| WrapSword | unknown | project_anchor | own_supporting | 0 | bsc | unit-393927 | `0x66972b...36dabb` | ⚠️ Unaudited |
| WrapSword | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393914 | `0xe1b9b3...3c9871` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393900 | `0xe5cf15...fb8f42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12d0ee...48ff22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x142457...e246de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24a53d...6b9051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x441a8e...727219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x778f61...b59fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8216a2...c620cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e8cbb...849bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa26078...fc4952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9aa47...0db743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafde5a...760c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb68c0b...c1f01d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3cfb3...a2a47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc90500...9b00e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc91b6e...961116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1dbcd...1af364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x071ecb...50e9ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x340478...5b48b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6804c9...62b92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x835b5e...82dbd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8b10a6...6a8a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xca031d...fa7bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xcc4d42...51e8ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-393911 | `0xd4143e...a38116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf171ef...973d62` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/templar-dao](https://skynet.certik.com/projects/templar-dao) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20749] skynet.certik.com/projects/templar-dao — no match: Extracted from Audited Files section; only two files explicitly listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/templar-dao | StakingHelper | ambiguous — not counted | StakingHelper (alternative) `0xbb5d4f...db2adf` — deployed 2021-12-25 01:00:42+03 — liveness: live (code_present_context)<br>StakingHelper (alternative) `0x8dd1ff...feea87` — deployed 2021-11-21 17:23:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| skynet.certik.com/projects/templar-dao | BondDepositoryBNB | unmatched — not counted | — | listed in Audited Files section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x061bb1...a79ac8` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x0d4f50...2d8273` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1b8338...8dc710` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x374100...4e48f7` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd93e4d...59ab7e` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe6f0a8...278ee2` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf171ef...973d62` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x534bd7...c74bd2` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xca2915...10b465` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xcbffde...d88105` | BondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd7fe34...0a5ddd` | BondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd7fe34...0a5ddd` | BondingCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc90490...a1de3c` | BondReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x301c82...4ce0b7` | BondReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfd67f4...e60a2d` | DAOsFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x0eccf3...2252ff` | DAOsFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x377896...891c13` | Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x377896...891c13` | Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6ca5c8...5a80ba` | ManagerFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8049ff...94b6fa` | ManagerFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x38b306...2a075e` | RedeemHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xf4a0b8...0a79d0` | RedeemHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xebe9da...7c9f93` | ReserveFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa1f61c...5a9324` | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xa1f61c...5a9324` | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8dd1ff...feea87` | StakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xbb5d4f...db2adf` | StakingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcbffde...d88105` | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xea90ae...e78e8c` | StakingWarmup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8c9827...2334b9` | SwordToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x8c9827...2334b9` | SwordToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x194d1d...cc2966` | TemplarMoney | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc0f143...c6385c` | TemplarRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x19e6bf...45df01` | TemplarToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd86e3f...ca9875` | TemplarToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6056d9...e14b71` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x650e26...6d118a` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd01e8d...2b4c27` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xd01e8d...2b4c27` | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x66972b...36dabb` | WrapSword | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xe1b9b3...3c9871` | WrapSword | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20749] skynet.certik.com/projects/templar-dao

Fork inheritance lineage and inherited audits are included when available.
