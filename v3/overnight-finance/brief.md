# Agentic Audit Brief: Overnight Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Overnight Finance (`overnight-finance`)
- Website: [https://overnight.fi](https://overnight.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, blast, bsc, linea, optimism, polygon, sonic, zksync-era
- Contract surface: 98 unique implementations (105 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,930,720.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Overnight Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across arbitrum, base, blast, bsc, ethereum, linea, optimism, polygon, sonic, zksync-era. Structural roles: 15 core, 6 infra, 5 unclassified, 4 supporting. 20 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: core (15), infra (6), unclassified (5), supporting (4)
- Contract kinds: contract (30)
- Detected standards: erc1967proxy (20), erc20 (3), erc20permit (3), ownable (3)
- Frameworks: openzeppelin (23), openzeppelin-upgradeable (16)
- Upgradeable-pattern rows: 20

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3b08fc...4d1b2e`, chain 10)
- UnnamedContract (`0xbf3fce...80f011`, chain 10)
- UnnamedContract (`0x7f947d...79e95f`, chain 56)
- UnnamedContract (`0xc5ef21...f1637c`, chain 137)
- UnnamedContract (`0x547cbf...a8268c`, chain 324)
- UnnamedContract (`0xd09ea5...3f7fdc`, chain 324)
- UnnamedContract (`0x8ab901...e6b247`, chain 8453)
- UnnamedContract (`0xa44df8...2ed2c4`, chain 42161)
- UnnamedContract (`0xa3d1a8...9d8396`, chain 59144)
- UnnamedContract (`0xb5f161...34c5eb`, chain 59144)
- UnnamedContract (`0xe12e06...21ce9d`, chain 81457)
- BurnableMintableCappedERC20 (`0x259b30...bae057`, chain 56)
- BurnableMintableCappedERC20 (`0xa3d1a8...9d8396`, chain 8453)
- BurnableMintableCappedERC20 (`0xa3d1a8...9d8396`, chain 42161)
- GnosisSafeProxy (`0xd439bd...3e0521`, chain 10)
- GnosisSafeProxy (`0xdfdb46...40065b`, chain 56)
- GnosisSafeProxy (`0xe5d155...121b33`, chain 137)
- GnosisSafeProxy (`0xaba227...0bf9bc`, chain 8453)
- GnosisSafeProxy (`0x5cbb21...b1ff2f`, chain 42161)
- GnosisSafeProxy (`0x05a69d...4f2216`, chain 59144)
- GnosisSafeProxy (`0xf9e4a8...1e6e04`, chain 81457)

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (10 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/100 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 77 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 25
- Deployed-live implementations: 21 of 98 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 98
- Raw deployments: 105
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-251029 | `0x259b30...bae057` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | base | unit-251061 | `0xa3d1a8...9d8396` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-251024 | `0xa3d1a8...9d8396` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-251083 | `0xd95ca6...72e028` | ⚠️ Unaudited |
| Exchange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-251075 | `0x8b80da...ec1ee4` | ⚠️ Unaudited |
| Exchange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | arbitrum | unit-251070 (2 proxies) | 2 deployments: arbitrum `0xbb5ea2...cb685f`; arbitrum `0xc8261d...19d4fd` | ⚠️ Unaudited |
| Exchange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | blast | unit-251081 (2 proxies) | 2 deployments: blast `0x46b0bc...e5d123`; blast `0x756d97...366789` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | bsc | unit-251078 | `0xdfdb46...40065b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | polygon | unit-251068 | `0xe5d155...121b33` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-251084 | `0xaba227...0bf9bc` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | arbitrum | unit-251072 | `0x5cbb21...b1ff2f` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | linea | unit-251079 | `0x05a69d...4f2216` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | optimism | unit-250994 | `0xd439bd...3e0521` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | blast | unit-251051 | `0xf9e4a8...1e6e04` | ⚠️ Unaudited |
| Market | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-251073 | `0x149eb6...b171b1` | ⚠️ Unaudited |
| PortfolioManager | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-251071 | `0x5fb8ab...537276` | ⚠️ Unaudited |
| UsdPlusToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | optimism | unit-251067 (2 proxies) | 2 deployments: optimism `0x73cb18...e23032`; optimism `0x970d50...a6e011` | ⚠️ Unaudited |
| UsdPlusToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-251069 | `0x236eec...5cde1f` | ⚠️ Unaudited |
| UsdPlusToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 3 | arbitrum | unit-251074 (3 proxies) | 3 deployments: arbitrum `0xb1084d...0edc30`; arbitrum `0xd4939d...777aab`; arbitrum `0xeb8e93...aebfe8` | ⚠️ Unaudited |
| UsdPlusToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | blast | unit-251082 (2 proxies) | 2 deployments: blast `0x4fee79...7b9bbd`; blast `0x870a8f...2ed32e` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-251077 | `0x5335e8...ec0c8c` | ⚠️ Unaudited |
| UsdPlusTokenV3 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | linea | unit-251080 (2 proxies) | 2 deployments: linea `0x1e1f50...3b7f13`; linea `0xb79dd0...de4376` | ⚠️ Unaudited |
| WrappedXusdToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-251076 | `0xb86fb1...32440d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-250987 | `0x3b08fc...4d1b2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-250988 | `0x542bde...b2e6a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-250989 | `0x7c7938...ce0b10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-250990 | `0x8416d2...2c01da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-250991 | `0x9af655...b90fcf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-250992 | `0xa34870...55f826` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-250993 | `0xbf3fce...80f011` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-250995 | `0xe1e36e...008409` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-250996 | `0xe80772...afca65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-251030 | `0x4788b5...62f8ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-251031 | `0x5a8eee...0db821` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-251032 | `0x7f947d...79e95f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-251033 | `0xd3f827...7cb708` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-251034 | `0xf3434f...496ef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-251035 | `0xff34aa...c9a770` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-250997 | `0x33efb0...ec4a72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-250998 | `0x4e36d8...6bd376` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-250999 | `0x4f1499...f0342c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-251000 | `0x6911f2...15e649` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-251001 | `0x6b3712...519970` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-251002 | `0xc5ef21...f1637c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-251003 | `0x170631...d5bf4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-251004 | `0x1b5949...c42519` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-251005 | `0x281a4b...9fe3ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-251006 | `0x38db75...8b2991` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-251007 | `0x53e247...25d8da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-251008 | `0x60101e...14adfa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-251009 | `0x240aad...d6fc80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-251010 | `0x547cbf...a8268c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-251011 | `0x560f43...c1ffc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-251012 | `0x84d053...27925d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-251013 | `0x8e86e4...f11557` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-251014 | `0xa37d8f...0e5b36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-251015 | `0xa970de...3fe67b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-251016 | `0xbb8d60...36ef3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-251017 | `0xc431c7...be2169` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-251018 | `0xd09ea5...3f7fdc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251052 | `0x619a50...c057e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251053 | `0x65a250...9d9275` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251054 | `0x6cdfd4...163e07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251055 | `0x7a6231...742f86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251056 | `0x854836...8d156f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251057 | `0x868d69...eb67af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251058 | `0x8ab901...e6b247` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251059 | `0x8cd408...9ba132` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251060 | `0x96aa0b...262253` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251062 | `0xb9619d...30aca9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251063 | `0xcb02f1...123d78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251064 | `0xd9a66f...f312e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251065 | `0xf7d693...7d4efa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-251066 | `0xfa3743...928bfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-251019 | `0x1c47d3...6003d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-251020 | `0x672f0f...0a84b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-251021 | `0x72f995...62f60f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-251022 | `0x769b4e...352583` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-251023 | `0x9aa95b...b94264` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251025 | `0xa44df8...2ed2c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-251026 | `0xb551be...c0e2fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-251027 | `0xf04124...078c8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-251028 | `0xf3607b...046e3b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-251036 | `0x0932bb...8420e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-251037 | `0x1f4947...a9e6fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-251038 | `0x260284...5dc72a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-251039 | `0x27b12f...78f7b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-251040 | `0x3d6765...fade41` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-251041 | `0x65d97b...d0956f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-251042 | `0x7cb1b3...ca2789` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-251043 | `0x8de541...6052c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-251044 | `0xa3d1a8...9d8396` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-251045 | `0xb5f161...34c5eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-251046 | `0x1d48dd...562f26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-251047 | `0x30e509...be8323` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-251048 | `0x93dd10...1628fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-251049 | `0x9ce3f3...13fe9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-251050 | `0xe12e06...21ce9d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ackee_2023-03-03.pdf](https://github.com/ovnstable/ovnstable-core/blob/master/audits/ackee_2023-03-03.pdf) | Ackee Blockchain | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [hacken_2022-02-03.pdf](https://github.com/ovnstable/ovnstable-core/blob/master/audits/hacken_2022-02-03.pdf) | Hacken | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7291] ackee_2023-03-03.pdf — no match: Scope explicitly listed in Executive Summary Revision 1.0: Exchange.sol, PortfolioManager.sol, UsdPlusToken.sol, Mark2Market.sol, PayoutListener.sol, Strategy.sol. Audit date from cover page: 3.3.2023 (March 3, 2023).
- [7292] hacken_2022-02-03.pdf — no match: Extracted contract names from scope section and findings. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ackee_2023-03-03.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| ackee_2023-03-03.pdf | PortfolioManager | unmatched — not counted | — | listed in scope | no |
| ackee_2023-03-03.pdf | UsdPlusToken | unmatched — not counted | — | listed in scope | no |
| ackee_2023-03-03.pdf | Mark2Market | unmatched — not counted | — | listed in scope | no |
| ackee_2023-03-03.pdf | PayoutListener | unmatched — not counted | — | listed in scope | no |
| ackee_2023-03-03.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| hacken_2022-02-03.pdf | Balancer | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | Exchange | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | PortfolioManager | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | RewardManager | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | UsdPlusToken | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | Vault | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | OvnGovernor | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | OvnToken | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | Portfolio | unmatched — not counted | — | listed in scope contracts | no |
| hacken_2022-02-03.pdf | WadRayMath | unmatched — not counted | — | mentioned in low severity finding | no |
| hacken_2022-02-03.pdf | ConnectorIDLE | unmatched — not counted | — | mentioned in low severity finding | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x259b30...bae057` | BurnableMintableCappedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa3d1a8...9d8396` | BurnableMintableCappedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa3d1a8...9d8396` | BurnableMintableCappedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 75 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [7291] ackee_2023-03-03.pdf
- [7292] hacken_2022-02-03.pdf

Fork inheritance lineage and inherited audits are included when available.
