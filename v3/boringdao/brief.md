# Agentic Audit Brief: BoringDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: BoringDAO (`boringdao`)
- Website: [https://www.boringdao.com/](https://www.boringdao.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, boba, bsc, ethereum, fantom, gnosis, harmony, heco, metis, optimism, polygon
- Contract surface: 70 unique implementations (73 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $269,853.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for BoringDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 46 contract row(s) across arbitrum, aurora, avalanche, boba, bsc, ethereum, fantom, gnosis, harmony, heco, metis, optimism, polygon. Structural roles: 34 core, 8 supporting, 4 unclassified. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 46
- Structural roles: core (34), supporting (8), unclassified (4)
- Contract kinds: contract (43), abstract (2), unclassified (1)
- Detected standards: erc20 (25), accesscontrol (9), erc1967proxy (9), erc165 (8), ownable (5), pausable (2)
- Frameworks: openzeppelin (33), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 11

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 46; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 70 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 70
- Raw deployments: 73
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveTokenV3 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-231109 | `0x7fc665...2ddae9` | ⚠️ Unaudited |
| aeWETH | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-231118 | `0x82af49...3fbab1` | ⚠️ Unaudited |
| AmyFinanceToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-231095 | `0x8fbd42...f2389c` | ⚠️ Unaudited |
| ArbFiatToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-231116 | `0xff970a...db5cc8` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-231117 | `0xfd086b...9fcbb9` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-231103 | `0x2170ed...f933f8` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-231119 | `0x8ac76a...cd580d` | ⚠️ Unaudited |
| BEP20USDT | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-231105 | `0x55d398...197955` | ⚠️ Unaudited |
| Bor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231047 | `0x3c9d6c...1fc1a9` | ⚠️ Unaudited |
| BorBSC | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-231106 | `0x92d775...b32241` | ⚠️ Unaudited |
| Boring | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231051 | `0xbc1971...d792ca` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-231098 | `0x49d5c2...c10bab` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-231100 | `0xa7d707...a4c664` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-231101 | `0xc71984...b95118` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-231057 | `0x68d97b...6e5e28` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 2 | polygon | unit-231111 (2 proxies) | 2 deployments: polygon `0x0cad6e...23576b`; polygon `0x413cfe...001fee` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-231114 | `0x8de93f...dd3b1d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-231096 | `0xe4af65...b09916` | ⚠️ Unaudited |
| EvmErc20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | aurora | unit-231072 | `0x4988a8...91571f` | ⚠️ Unaudited |
| EvmErc20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | aurora | unit-231073 | `0xb12bfc...c40802` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-231108 | `0xa0b869...06eb48` | ⚠️ Unaudited |
| izumiToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231049 | `0x9ad372...c5c200` | ⚠️ Unaudited |
| izumiToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-231076 | `0x60d01e...27c747` | ⚠️ Unaudited |
| L2StandardERC20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-231066 | `0xbb06dc...16f4dc` | ⚠️ Unaudited |
| L2StandardERC20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-231067 | `0xea32a9...cc1a21` | ⚠️ Unaudited |
| MaticWETH | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-231077 | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| OToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231048 | `0x8064d9...537a68` | ⚠️ Unaudited |
| OTokenBSC | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-231102 | `0x0314fc...a9c33b` | ⚠️ Unaudited |
| OVM_ETH | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-231063 | `0x420000...00000a` | ⚠️ Unaudited |
| OVMFiatToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-231058 | `0x7f5c76...c31607` | ⚠️ Unaudited |
| PermittableToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 3 | gnosis | unit-231110 (3 proxies) | 3 deployments: gnosis `0x4ecaba...d605c6`; gnosis `0x6a023c...78f6e1`; gnosis `0xddafbb...fb7a83` | ⚠️ Unaudited |
| SwapPairV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231055 | `0xfd16ea...364477` | ⚠️ Unaudited |
| TetherToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231054 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231050 | `0xb62251...da350d` | ⚠️ Unaudited |
| Token | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-231060 | `0xbe4a54...dc9c03` | ⚠️ Unaudited |
| Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-231107 | `0xffeecb...bfdf7f` | ⚠️ Unaudited |
| Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-231075 | `0x50d079...cb32af` | ⚠️ Unaudited |
| Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-231062 | `0x226d8b...f9fd34` | ⚠️ Unaudited |
| Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-231064 | `0x68d97b...6e5e28` | ⚠️ Unaudited |
| Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | metis | unit-231065 | `0x87dd4a...af8663` | ⚠️ Unaudited |
| UChildAdministrableERC20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-231115 | `0x2791bc...a84174` | ⚠️ Unaudited |
| UChildERC20 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-231112 | `0xff8843...96da6b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-231078 | `0x7d8c13...be4137` | ⚠️ Unaudited |
| UChildUSDT0 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-231113 | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| USDT | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-231059 | `0x94b008...e58e58` | ⚠️ Unaudited |
| Vyper_contract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231053 | `0xd533a9...34cd52` | ⚠️ Unaudited |
| WETH9 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-231052 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WETH9 | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-231056 | `0x420000...000006` | ⚠️ Unaudited |
| WETH9 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | aurora | unit-231074 | `0xc9bdee...fe3feb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-231104 | `0x37e681...94c397` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | unit-231061 | `0xfc7b93...87a006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | heco | unit-231068 | `0x64ff63...28a1fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | heco | unit-231069 | `0x9362bb...26b73b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | heco | unit-231070 | `0xa71edc...c3e47a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | heco | unit-231071 | `0xe9fe1c...644784` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-231080 | `0xed6701...1691b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-231086 | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-231087 | `0x049d68...3a3c7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-231088 | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-231089 | `0xb238a5...62066c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | boba | unit-231091 | `0x364701...58acde` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | boba | unit-231092 | `0x5de167...9c062d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | boba | unit-231093 | `0x66a2a9...90fbbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-231097 | `0x216f33...f7cc21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-231099 | `0x603f0d...5c96be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | unit-231081 | `0x017ff8...9de024` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | unit-231082 | `0x3c2b8b...5aba8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | unit-231083 | `0x6983d1...3ea013` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | unit-231084 | `0x985458...9dfab4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | unit-231085 | `0xb238a5...62066c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [peckshield-audit-report-boringdao-v1.0rc.pdf](https://github.com/BoringDAO/boringDAO-contract/blob/master/peckshield-audit-report-boringdao-v1.0rc.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view](https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view](https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view](https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view](https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view](https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12827] peckshield-audit-report-boringdao-v1.0rc.pdf — no match: Extracted contract names from findings targets and file paths. Audit date from cover page and latest audit report date.
- [12828] drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view — no match: All six contracts from the audit scope table were extracted. The audit date is explicitly stated as 'Delivery Date Feb 18, 2022'.
- [12829] drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view — no match: Only one contract in scope: Boring.sol (Boring token). Audit date from delivery date.
- [12830] drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view — no match: Only one contract in scope: Boring.sol (Boring token). Audit date from delivery date.
- [12831] drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view — no match: No explicit scope table; contracts extracted from findings targets.
- [12832] drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view — no match: Extracted contract names from findings targets and file paths. Audit date from cover page and latest audit report date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| peckshield-audit-report-boringdao-v1.0rc.pdf | Liquidation | unmatched — not counted | — | Target in finding PVE-001 and PVE-002 | no |
| peckshield-audit-report-boringdao-v1.0rc.pdf | SatellitePool | unmatched — not counted | — | Target in finding PVE-003 | no |
| peckshield-audit-report-boringdao-v1.0rc.pdf | BoringDAO | unmatched — not counted | — | Target in finding PVE-002 and PVE-005 | no |
| peckshield-audit-report-boringdao-v1.0rc.pdf | Tunnel | unmatched — not counted | — | Target in finding PVE-005 | no |
| peckshield-audit-report-boringdao-v1.0rc.pdf | GovernorAlpha | unmatched — not counted | — | Target in finding PVE-004 | no |
| peckshield-audit-report-boringdao-v1.0rc.pdf | TimelockInterface | unmatched — not counted | — | Interface declared in GovernorAlpha, mentioned in finding PVE-004 | no |
| drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view | StakingReward | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view | TwoWayChef | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view | TwoWayCenter | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view | TwoWayCenterToken | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view | TwoWayEdge | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view | TwoWayProposalVote | unmatched — not counted | — | listed in scope table with SHA256 checksum | no |
| drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view | Boring | unmatched — not counted | — | listed in Audit Scope table | no |
| drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view | Boring | unmatched — not counted | — | listed in Audit Scope table with SHA256 checksum | no |
| drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view | CrossLock | unmatched — not counted | — | Target in finding PVE-001 | no |
| drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view | Liquidation | unmatched — not counted | — | Target in finding PVE-002 | no |
| drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view | Liquidation | unmatched — not counted | — | Target in finding PVE-001 and PVE-002 | no |
| drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view | SatellitePool | unmatched — not counted | — | Target in finding PVE-003 | no |
| drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view | GovernorAlpha | unmatched — not counted | — | Target in finding PVE-004 | no |
| drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view | Tunnel | unmatched — not counted | — | Target in finding PVE-005 | no |
| drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view | BoringDAO | unmatched — not counted | — | Target in finding PVE-005 and mentioned as system contract | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, medium=1
- Match method counts: n/a

Zero-match audit list:

- [12827] peckshield-audit-report-boringdao-v1.0rc.pdf
- [12828] drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view
- [12829] drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view
- [12830] drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view
- [12831] drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view
- [12832] drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view

Fork inheritance lineage and inherited audits are included when available.
