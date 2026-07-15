# Agentic Audit Brief: Hourglass

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hourglass (`hourglass`)
- Website: [https://hourglass.com/](https://hourglass.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bob, ethereum, mantle
- Contract surface: 129 unique implementations (130 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $116,802.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hourglass. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 79 contract row(s) across base, bob, ethereum, mantle. Structural roles: 73 core, 6 supporting. 70 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 79
- Structural roles: core (73), supporting (6)
- Contract kinds: contract (76), abstract (3)
- Detected standards: erc20 (63), erc20permit (9), erc1967proxy (6), erc165 (5), erc4626 (1), multicall (1), ownable (1), pausable (1)
- Frameworks: openzeppelin-upgradeable (70), openzeppelin (68), solmate (9), chainlink (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 70

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 79; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 129 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 129
- Raw deployments: 130
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242087 | `0x08c6f9...c1364c` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242106 | `0x5401b8...77d57c` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242115 | `0x722344...8c4273` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242127 | `0x917cee...909d88` | ⚠️ Unaudited |
| BoringVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242171 | `0xf0bb20...73416c` | ⚠️ Unaudited |
| CellarMigrationAdaptor2 | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242208 | `0xea1a63...06a221` | ⚠️ Unaudited |
| ConcreteMultiStrategyVault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242094 | `0x34bdba...c32da8` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242085 | `0x004d95...99dd5d` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242086 | `0x036d9d...08544b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242088 | `0x0abcbd...3f3ca6` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242093 | `0x2b8e68...0fad28` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242096 | `0x3e9314...73d863` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242098 | `0x418cff...4fa358` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242100 | `0x43efe8...0a060d` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242101 | `0x47a3a3...9058e4` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242102 | `0x484f8d...a77a71` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242104 | `0x4e11cf...9fcbbe` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242105 | `0x4eaf2a...e4842c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242108 | `0x577512...9311c3` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242109 | `0x602883...3d0585` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242110 | `0x60e3e1...68d86b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242112 | `0x66e400...a7c37d` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242114 | `0x68f080...2f4ba6` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242119 | `0x7875ea...32870b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242122 | `0x859ce1...4d788e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242126 | `0x8bd79f...b92e1e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242130 | `0x9734a6...9416bf` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242133 | `0x98ca0f...8a69d7` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242135 | `0x9b7f50...f20418` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242136 | `0x9e1c22...0d6bdf` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242137 | `0x9ec533...33d863` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242138 | `0x9eee7e...361857` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242140 | `0xa2962e...44e798` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242141 | `0xa47a1c...9c12c3` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242143 | `0xb00591...484a24` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242144 | `0xb05e8a...5d3fef` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242145 | `0xb204ab...4461a8` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242146 | `0xb3cb22...e6a38c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242147 | `0xb66835...d88dd0` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242148 | `0xb7a2c7...aa9946` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242149 | `0xb97661...cd1fc8` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242150 | `0xbaf470...e9ffa8` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242151 | `0xbd91c7...97196a` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242152 | `0xc5dbc2...ed6ae0` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242156 | `0xd02b31...ea589c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242157 | `0xd3b637...d44579` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242159 | `0xd7f10a...43e834` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242160 | `0xdb0ee7...a878d9` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242163 | `0xe6da3b...a669b1` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242164 | `0xe7f0dc...106fb6` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242165 | `0xe86550...8d109a` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242167 | `0xe91838...54e76b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242173 | `0xf3fe41...d0f275` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242174 | `0xf68c4b...910b5e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242175 | `0xfd8b20...aa3dc1` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242177 | `0x326b11...90ae6c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242179 | `0x4865bb...647560` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242181 | `0x62b9fd...0c92d7` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242182 | `0x8fc1e4...b5fef3` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242183 | `0x979ecd...3d01ed` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242184 | `0xbfe0e2...2470c4` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242193 | `0x2c7432...f4e41c` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242194 | `0x37b93e...5d310b` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242197 | `0x4347e8...d291a0` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242199 | `0x5e57e8...32c997` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242200 | `0x60fba8...bfa3a5` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242201 | `0x70b64c...06342e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242203 | `0x85e2c7...77088e` | ⚠️ Unaudited |
| HourglassERC20TBT | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242205 | `0xea3ff2...02af74` | ⚠️ Unaudited |
| HourglassEtherFiLiquidLockDepositor | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | ethereum | unit-242211 (2 proxies) | 2 deployments: ethereum `0x035d13...52da4d`; ethereum `0xd573ce...aa28a2` | ⚠️ Unaudited |
| L2cmETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | mantle | unit-242212 | `0xe6829d...59e8fa` | ⚠️ Unaudited |
| METHL2 | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | mantle | unit-242213 | `0xcda86a...b90bb0` | ⚠️ Unaudited |
| Tranche | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242195 | `0x393893...2b1382` | ⚠️ Unaudited |
| Tranche | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242204 | `0x9c63a4...5eec92` | ⚠️ Unaudited |
| Tranche | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242206 | `0xefe328...218dad` | ⚠️ Unaudited |
| Vault | core_logic | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242210 | `0x657d9a...c96dcb` | ⚠️ Unaudited |
| WeETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242207 | `0xcd5fe2...59b7ee` | ⚠️ Unaudited |
| ynETH | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-242209 | `0x09db87...373a48` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242089 | `0x0cb35d...5e98bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242090 | `0x1ba3ce...7548a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242091 | `0x25f14f...d8b02b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242092 | `0x27b60a...6e12ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242095 | `0x3d7fe7...c833df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242097 | `0x40eb88...268ef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242099 | `0x43c9ec...b9b613` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242103 | `0x497aa2...3e2b93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242107 | `0x5771b8...bfc2bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242111 | `0x63b278...338786` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242113 | `0x679619...3dad8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242116 | `0x758d13...a49189` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242117 | `0x76d9ff...3baf8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242118 | `0x782c84...fdb5e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242120 | `0x7a4924...e0fd68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242121 | `0x80a3a5...5454f6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242123 | `0x8753f5...ab5b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242124 | `0x89258b...a83b5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242125 | `0x8afbf6...de6ee3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242128 | `0x928475...802532` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242129 | `0x9522a1...cfbf43` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242131 | `0x979550...89b938` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242132 | `0x97a108...6d44fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242134 | `0x995790...e4ebcb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242139 | `0xa285bc...1ada99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242142 | `0xa6c318...5383e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242153 | `0xc8be25...79415a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242154 | `0xca12dc...43f359` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242155 | `0xce280d...5a3b8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242158 | `0xd7d929...1a6900` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242161 | `0xdd243d...fe79f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242162 | `0xe374fa...926a09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242166 | `0xe8f061...25b2d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242168 | `0xe954c2...a8c2d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242169 | `0xede767...172134` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242170 | `0xf06617...801604` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-242172 | `0xf11fbb...5535fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242176 | `0x1af5d2...1a7f27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242178 | `0x37e3ac...c727f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | mantle | unit-242180 | `0x624bd5...4ddf05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242191 | `0x05f1c0...62768b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242192 | `0x20364a...54817d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242196 | `0x3fd917...9bf1e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242198 | `0x5e009a...8968ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-242202 | `0x843a3e...2ad86a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242185 | `0x139ed7...292a7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242186 | `0x20bee0...7451f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242187 | `0x5d76f8...c27644` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242188 | `0x82c239...00a327` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242189 | `0x9998e0...628779` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | bob | unit-242190 | `0xde753d...dc80ad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [HourglassAudit3.pdf](https://github.com/TheArcadiaGroup/publications/blob/main/audits/HourglassAudit3.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit](https://docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit?tab=t.0) | Code4rena | Contest | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Hourglass_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Audit_Report.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Hourglass_HFXB_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_HFXB_Audit_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Hourglass_Index_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Index_Audit_Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Hourglass_TBT_Locking_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_TBT_Locking_Audit_Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Hourglass_v2_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_v2_Audit_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13256] HourglassAudit3.pdf — no match: No reason recorded
- [13257] docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit — no match: Scope explicitly lists HourglassLockDepositorBase and HourglassVedaLockDepositor. HourglassTBTFactory is referenced in findings but not in scope table; however it is part of the audited codebase.
- [16310] Hourglass_Audit_Report.pdf — no match: Extracted 10 contract names from the scope table on page 8-9. Audit date from cover page and document revision history.
- [16311] Hourglass_HFXB_Audit_Report.pdf — no match: Three contracts explicitly listed in scope table on page 9. Audit date from report title page: 'Nov 22, 2023'.
- [16312] Hourglass_Index_Audit_Report.pdf — no match: Scope table on page 7 lists four contracts with filenames and SHA-256 checksums. Audit date is from the report title 'Jan08,2024'.
- [16313] Hourglass_TBT_Locking_Audit_Report.pdf — no match: No reason recorded
- [16314] Hourglass_v2_Audit_Report.pdf — no match: Extracted contract names from the scope table listing files with SHA256 checksums. Also included test file and unverified contract mentioned in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| HourglassAudit3.pdf | HourglassERC20TBT | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | HourglassLockDepositor | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | HourglassTBTFactory | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | IHourglassDepositor | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | IHourglassERC20TBT | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | IHourglassLockingTBTFactory | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | TwoStepOwnable | unmatched — not counted | — | — | no |
| HourglassAudit3.pdf | TwoStepOwnableInterface | unmatched — not counted | — | — | no |
| docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit | HourglassLockDepositorBase | unmatched — not counted | — | listed in scope | no |
| docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit | HourglassVedaLockDepositor | unmatched — not counted | — | listed in scope | no |
| docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit | HourglassTBTFactory | unmatched — not counted | — | mentioned in finding LOCK-1 code location | no |
| Hourglass_Audit_Report.pdf | FeeManager | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | HourglassCustodian | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | RewardsDistributor | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | ConvexFraxVault | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | HourglassConvexFraxReceipt | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | ERC20Intermediary | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | GeneralMatureHoldingVault | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Audit_Report.pdf | HourglassCustodianTest | unmatched — not counted | — | Listed in scope table with SHA-256 checksum (later renamed to HourglassProtocolTest.t.sol) | no |
| Hourglass_Audit_Report.pdf | HourglassProtocolTest | unmatched — not counted | — | Renamed from HourglassCustodianTest.t.sol, listed in scope table | no |
| Hourglass_Audit_Report.pdf | ConvexFraxMaturedHoldings | unmatched — not counted | — | Mentioned as not verified due to work in progress, but listed as part of scope | no |
| Hourglass_HFXB_Audit_Report.pdf | HFXB | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_HFXB_Audit_Report.pdf | HFXBWithdrawalQueue | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_HFXB_Audit_Report.pdf | TwoStepOwnable | unmatched — not counted | — | Listed in scope table with SHA-256 checksum | no |
| Hourglass_Index_Audit_Report.pdf | HourglassIndex | unmatched — not counted | — | listed in scope table with SHA-256 checksum | no |
| Hourglass_Index_Audit_Report.pdf | HourglassIndexWithdrawalQueue | unmatched — not counted | — | listed in scope table with SHA-256 checksum | no |
| Hourglass_Index_Audit_Report.pdf | TwoStepOwnable | unmatched — not counted | — | listed in scope table with SHA-256 checksum | no |
| Hourglass_Index_Audit_Report.pdf | HourglassIndexFactory | unmatched — not counted | — | listed in scope table with SHA-256 checksum | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | HourglassERC20TBT | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | HourglassLockDepositor | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | HourglassTBTFactory | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | IHourglassDepositor | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | IHourglassERC20TBT | unmatched — not counted | — | — | no |
| Hourglass_TBT_Locking_Audit_Report.pdf | IHourglassLockingTBTFactory | unmatched — not counted | — | — | no |
| Hourglass_v2_Audit_Report.pdf | FeeManager | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassCustodian | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassCustodianV2 | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | RewardsDistributor | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | RewardsDistributorV2 | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | ConvexFraxVault | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassConvexFraxReceipt | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassConvexFraxReceiptV2 | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | ERC20Intermediary | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | GeneralMatureHoldingVault | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | GeneralMatureHoldingVaultV2 | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | TwoStepOwnable | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | Burn | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassToken | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| Hourglass_v2_Audit_Report.pdf | HourglassProtocolTest | unmatched — not counted | — | mentioned in scope as test file | no |
| Hourglass_v2_Audit_Report.pdf | ConvexFraxMaturedHoldings | unmatched — not counted | — | mentioned as not verified but in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 78 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 50 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [13256] HourglassAudit3.pdf
- [13257] docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit
- [16310] Hourglass_Audit_Report.pdf
- [16311] Hourglass_HFXB_Audit_Report.pdf
- [16312] Hourglass_Index_Audit_Report.pdf
- [16313] Hourglass_TBT_Locking_Audit_Report.pdf
- [16314] Hourglass_v2_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
