# Agentic Audit Brief: Kromatika

## Project Overview

- Project: Kromatika (`kromatika`)
- Website: [https://app.kromatika.finance/limitorder#/pool](https://app.kromatika.finance/limitorder#/pool)
- Lifecycle: active (Tier 0, 40.6% below peak)
- Generated: 2026-06-10T20:59:06.762Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 30 unique implementations (69 raw deployments)
- DeFi Llama TVL: $1,091,186.50
- On-chain TVL (included contracts): $83,796.24
- TVL by chain: Optimism $44,689.75 | Arbitrum $32,393.26 | Polygon $6,713.23

## Project Description

Kromatika provides order-book-style limit trading on Uniswap, with KROM/token and limit-order management and monitoring contracts deployed across supported chains.

### Architecture

The Limit Order System relies on the KROM token for access control and fee payments, while the Token Infrastructure ensures the token is available on all supported chains. Both families are governed by a shared GnosisSafe multisig, and limit order managers use utility contracts like LimitOrderMonitor and UniswapUtils for order execution and validation.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 30
- Raw deployments: 69
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $83,796.24
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L2StandardERC20 | token | optimism | [`0xf98dcd...590b07`](./contracts/optimism-10/0xf98dcd95217e15e05d8638da4c91125e59590b07/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x55ff62...a4bf70`](./contracts/arbitrum-42161/0x55ff62567f09906a85183b866df84bf599a4bf70/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xc5bf7a...23a54f`](./contracts/ethereum-1/0xc5bf7a684a0dfca02a1e603b1d27af0af523a54f/) | ⚠️ Unaudited |
| Kromatika | unknown | ethereum | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | ⚠️ Unaudited |
| KromatikaSwapRouter | adapter | arbitrum | 2 deployments: arbitrum [`0x7054d0...5bb034`](./contracts/arbitrum-42161/0x7054d002db18a10c31683ec1a8515589c65bb034/); arbitrum `0xa3e49d...dbe70a` | ⚠️ Unaudited |
| LimitOrderManager | governance | arbitrum | 2 deployments: arbitrum [`0x02c282...5fc6f0`](./contracts/arbitrum-42161/0x02c282f60fb2f3299458c2b85eb7e303b25fc6f0/); arbitrum `0xf337b9...f455df` | ⚠️ Unaudited |
| LimitOrderManagerV3 | governance | polygon | 11 deployments: ethereum `0xd1fdf0...0e508e`; polygon [`0x026d63...b89ec4`](./contracts/polygon-137/0x026d63a16a5c1c28e49539780aef7fb47eb89ec4/); polygon `0x03f490...d42ae1`; polygon `0x05bf32...c4f877`; polygon `0x212b2e...e4072b`; polygon `0x47f374...487289`; polygon `0x836c40...0b0770`; polygon `0x90c9c1...43c5d6`; polygon `0xa1a527...346688`; polygon `0xf86a27...da0140`; polygon `0xfc2e6d...8ccd68` | ⚠️ Unaudited |
| LimitOrderMonitor | unknown | polygon | 14 deployments: optimism `0x5c7e78...76a8fb`; optimism `0xa16192...4491fb`; optimism `0xe3618d...2bef6e`; optimism `0xe7c74c...4661e6`; polygon [`0x044d57...9cf92c`](./contracts/polygon-137/0x044d57daa8f8a2d9e654eb57e392b942659cf92c/); polygon `0x3bd1ba...09e96c`; polygon `0x7c1bc6...2fca68`; polygon `0x89c756...1cf93d`; polygon `0x8b28ff...5bd492`; polygon `0x91d44f...c6a436`; polygon `0x951e4a...8b684a`; polygon `0xfe5bc8...280627`; arbitrum `0x37bb03...5ceccf`; arbitrum `0x90ae03...a2dad4` | ⚠️ Unaudited |
| OpAccessToken | token | optimism | 2 deployments: optimism [`0x20b568...d6acc6`](./contracts/optimism-10/0x20b5683170412daba16e64315a62d766f8d6acc6/); optimism `0xd0b676...2a1ebb` | ⚠️ Unaudited |
| OpLimitOrderManager | governance | optimism | [`0xb01614...71c719`](./contracts/optimism-10/0xb01614bd478e8776e1c8528d0469c453b171c719/) | ⚠️ Unaudited |
| OpLimitOrderManagerV2 | governance | optimism | [`0x87ab1c...7b4d2e`](./contracts/optimism-10/0x87ab1c824dff612686b45b43504bbea63b7b4d2e/) | ⚠️ Unaudited |
| OpLimitOrderManagerV3 | governance | optimism | 2 deployments: optimism [`0x10bff1...b5b99c`](./contracts/optimism-10/0x10bff12281138846b6c23e6ef7db26367bb5b99c/); optimism `0x7314af...ffaab8` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 4 deployments: optimism `0x90ae03...a2dad4`; optimism `0xd25489...937fc8`; polygon `0xe32e81...6e5a78`; arbitrum [`0x506013...b0cea2`](./contracts/arbitrum-42161/0x50601357a041ab311ccf57d4bf2ed978b2b0cea2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | 10 deployments: optimism `0x813bb6...6482a8`; optimism `0xb0301b...1c3fb3`; optimism `0xd1781f...e3921e`; polygon [`0x1ee02e...31d403`](./contracts/polygon-137/0x1ee02ed1fc6e4b032eaa75970f5ed3059831d403/); polygon `0x2618bb...e7c0c2`; polygon `0x9c75f6...aaac17`; polygon `0xa08f44...0983c8`; polygon `0xa891e5...afd68a`; polygon `0xe17537...634d9a`; polygon `0xf9a270...bc16fb` | ⚠️ Unaudited |
| UniswapUtils | unknown | arbitrum | [`0xfe6386...c4551d`](./contracts/arbitrum-42161/0xfe63860c1edd297256863a393a6a0ec512c4551d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | optimism | `0x37bb03...5ceccf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3aa2a4...8e00e9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3b83c0...16328c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9bd46c...aa0f79` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0b9d3e...619216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x113e3d...787573` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1d732c...c0e153` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x396c3b...7f345e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x461d09...f98216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa7bf78...c6db2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc64a76...522826` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xecbf2e...0211a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x79ba1c...71ea39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe2cd12...be58bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/kromatika) | CertiK | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://skynet.certik.com/projects/kromatika?auditId=Kromatika+Finance) | CertiK | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | Kromatika | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7054d0...5bb034`](./contracts/arbitrum-42161/0x7054d002db18a10c31683ec1a8515589c65bb034/) | KromatikaSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb01614...71c719`](./contracts/optimism-10/0xb01614bd478e8776e1c8528d0469c453b171c719/) | OpLimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x87ab1c...7b4d2e`](./contracts/optimism-10/0x87ab1c824dff612686b45b43504bbea63b7b4d2e/) | OpLimitOrderManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3238] DL audit link
- [3239] {% embed url="<>" %}

Fork inheritance lineage and inherited audits are included when available.
