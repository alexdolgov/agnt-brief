# Agentic Audit Brief: PadSwap

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

- Project: PadSwap (`padswap`)
- Website: [https://padswap.exchange/](https://padswap.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, moonbeam, moonriver
- Contract surface: 117 unique implementations (140 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $115,354.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for PadSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 38 contract row(s) across bsc, moonbeam, moonriver. Structural roles: 25 unclassified, 11 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 38
- Structural roles: unclassified (25), core (11), supporting (2)
- Contract kinds: contract (38)
- Detected standards: erc20 (2), ownable (1)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 38; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 88 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 29 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/53
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 64
- Unique implementations: 117
- Raw deployments: 140
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

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DevLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1facff...89a2c0`; bsc `0x369bdc...6707a8`; bsc `0x940bd7...a1d492` | ⚠️ Unaudited |
| DevShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0da3c...8f756f` | ⚠️ Unaudited |
| LaunchPad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x24577a...ee19a4`; bsc `0x655cdf...ac56c7` | ⚠️ Unaudited |
| LaunchPadFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0fa59...d1b13a` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250800 | `0x00ae3d...ab04e4` | ⚠️ Unaudited |
| LPFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x14cced...9d6a2f`; bsc `0x615c44...acedca`; bsc `0xc1b3bf...f84101` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250810 | `0x50a90c...f88e30` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250811 | `0x51270e...f27118` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250818 | `0x73f41f...b28a1d` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250820 | `0x816ed1...15dc76` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250834 | `0xe70e0a...349555` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250835 | `0xe878bc...ee4c9f` | ⚠️ Unaudited |
| LPFarm | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250836 | `0xe8d79d...b4b273` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2833e2...904c44`; bsc `0x7801d4...e6d86e` | ⚠️ Unaudited |
| Pad | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250829 | `0xc0888d...deb6d5` | ⚠️ Unaudited |
| PadFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250828 | `0xb83601...50fc45` | ⚠️ Unaudited |
| PadFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x15bb70...8507fb`; bsc `0x612d22...711b9d`; bsc `0xa2e5c6...061b7d`; bsc `0xd2d7b6...ed273e`; bsc `0xd45e11...f7cbef` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: bsc `0x1fe5c0...568b49`; bsc `0x3c5540...f093ca`; bsc `0x87ad61...c58a5a`; bsc `0x88ab10...cdad19`; bsc `0xbc6ae4...1bea78`; bsc `0xbe022d...fb8a6d`; bsc `0xd47412...c7bb2b`; bsc `0xdaa2d1...4f0f5f`; bsc `0xefdace...963fa6`; bsc `0xfc551f...ea2cd5` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250805 | `0x392051...9db7ea` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250808 | `0x4992df...4ed08b` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250813 | `0x5a8615...31b53d` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250815 | `0x6555c3...becd40` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250816 | `0x662425...93e834` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250822 | `0x9ec11e...c07646` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250823 | `0xa13cb3...436345` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250824 | `0xa9f4ea...36b47c` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250825 | `0xaf56ae...d0fc96` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250826 | `0xb69829...fd5007` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250838 | `0xf189bd...f47a35` | ⚠️ Unaudited |
| PadFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250839 | `0xf6e5a8...19b270` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x19d61e...4d115a`; bsc `0x48e214...c604c8`; bsc `0x85fc45...27acc6`; bsc `0xb87b83...f55e82`; bsc `0xfc1228...0286a2` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250803 | `0x317de8...9dc534` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250812 | `0x5459a5...d8a567` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250827 | `0xb6d163...7cde2e` | ⚠️ Unaudited |
| PadFarmsV3 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250830 | `0xc27192...f8befa` | ⚠️ Unaudited |
| PadOnlyFarm | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250802 | `0x300244...664ed1` | ⚠️ Unaudited |
| PadRouter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250819 | `0x764372...138c24` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250801 | `0x2ca654...ba35cd` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250804 | `0x32af21...f5d070` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250806 | `0x40df95...d0e666` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250814 | `0x5e771a...9b29d9` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250821 | `0x98ea23...0a0dce` | ⚠️ Unaudited |
| PartnerFarmsV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250831 | `0xc64687...71c608` | ⚠️ Unaudited |
| PaydPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56a450...95a348` | ⚠️ Unaudited |
| PresaleTOAD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x372791...44450d` | ⚠️ Unaudited |
| SonofDogeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdb943...307e60` | ⚠️ Unaudited |
| StandardTokenDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250832 | `0xd654d9...e4c6af` | ⚠️ Unaudited |
| Toad | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-250807 | `0x463e73...d539e9` | ⚠️ Unaudited |
| ToadBnbFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xade60b...283b6e` | ⚠️ Unaudited |
| ToadBusdFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf08a98...15cf72` | ⚠️ Unaudited |
| ToadFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1f1ed...570154` | ⚠️ Unaudited |
| TokenFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250833 | `0xded45c...8c6399` | ⚠️ Unaudited |
| Vault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250817 | `0x6beee5...e92609` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (64)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x167cef...2f3f4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x201b8b...bebd65` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250809 | `0x4a7fdf...a6aeb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4eaf76...c5af17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5346d5...af265f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e42f4...76cde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ebab3...4d0752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x994a66...febf60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ebb25...dea9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba1ced...cafc86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc97c28...99cba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xceb4e3...e4d84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb76db...60a36a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4fa0d...49c315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe80e9f...7d0d84` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-250837 | `0xeb2d2c...e7b329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4cd67...f062ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x2affdf...6aa770` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x3ec74c...579518` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x40f1fe...e7fe34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x4d86da...443c7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x4f738b...81225e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x591935...2fb32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x603b8a...c8022b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x663a07...7888e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x6f4439...546097` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x7a06db...782176` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x7d17a9...a58ba1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x7e24c2...fc3b57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x8597ca...12e3ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0x9774e2...30ca27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xb54229...897188` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xb695fd...cc2939` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xc13cf2...1de18c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xc2092b...e0fbda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xcc95d3...d3c3a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xdc8aff...fec79d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xeee6ba...9ec665` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf165e8...0fc0a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf1ed60...e531f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf34574...0e4c85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf480f3...f00cea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | n/a | `0xf617c0...8f1047` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x05ddc2...2ee0e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x165dbb...bd60d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x35e1f3...1cc644` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x45488c...7e6f3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x4a891f...326ba8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x54cd3a...e73afb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x6b3c61...059211` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x760d2b...1c04c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x790d4b...132d2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x86be1d...ce86db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x8a5dc5...1aa6bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x9f043f...7c753a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0x9f10ef...06fa21` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonriver | n/a | `0xac7793...464411` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xb04afc...bde4cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xcb592d...d8be2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xe52c05...c3a16f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xe6d0d9...c4a98b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xe85ca6...770393` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xeb8627...590e11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonriver | n/a | `0xf403da...23cf25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [solanaleveling.com](https://solanaleveling.com/) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13641] solanaleveling.com — no match: The document is a directory of Solana tools and bots, not an audit report. No contracts or audit scope found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 64 |

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

- [13641] solanaleveling.com

Fork inheritance lineage and inherited audits are included when available.
