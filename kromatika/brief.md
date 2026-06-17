# Agentic Audit Brief: Kromatika

## Project Overview

- Project: Kromatika (`kromatika`)
- Website: [https://app.kromatika.finance/limitorder#/pool](https://app.kromatika.finance/limitorder#/pool)
- Lifecycle: active (Tier 0, 40.6% below peak)
- Generated: 2026-06-17T07:00:49.623Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 16 unique implementations (18 raw deployments)
- DeFi Llama TVL: $976,307.72
- On-chain TVL (included contracts): $83,796.24
- TVL by chain: Optimism $44,689.75 | Arbitrum $32,393.26 | Polygon $6,713.23

## Project Description

Kromatika provides order-book-style limit trading on Uniswap, with KROM/token and limit-order management and monitoring contracts deployed across supported chains.

### Architecture

The Limit Order System relies on the KROM token for access control and fee payments, while the Token Infrastructure ensures the token is available on all supported chains. Both families are governed by a shared GnosisSafe multisig, and limit order managers use utility contracts like LimitOrderMonitor and UniswapUtils for order execution and validation.

## Contract Surface Quality

- Indexed contracts: 71; live-surface contracts included: 18 (3 live, 15 unknown).
- Excluded by liveness: 5 inactive, 48 singleton, 0 uninitialized.
- Deployment units: 1/20 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 16
- Raw deployments: 18
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

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L2StandardERC20 | token | optimism | n/a | [`0xf98dcd...590b07`](./contracts/optimism-10/0xf98dcd95217e15e05d8638da4c91125e59590b07/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-30144 | [`0x55ff62...a4bf70`](./contracts/arbitrum-42161/0x55ff62567f09906a85183b866df84bf599a4bf70/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | unit-30140 | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-30127 | [`0xc5bf7a...23a54f`](./contracts/ethereum-1/0xc5bf7a684a0dfca02a1e603b1d27af0af523a54f/) | ⚠️ Unaudited |
| Kromatika | unknown | ethereum | n/a | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | ⚠️ Unaudited |
| KromatikaSwapRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x7054d0...5bb034`](./contracts/arbitrum-42161/0x7054d002db18a10c31683ec1a8515589c65bb034/); arbitrum `0xa3e49d...dbe70a` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 2 deployments: polygon `0xe32e81...6e5a78`; arbitrum [`0x506013...b0cea2`](./contracts/arbitrum-42161/0x50601357a041ab311ccf57d4bf2ed978b2b0cea2/) | ⚠️ Unaudited |
| UniswapUtils | unknown | arbitrum | unit-30146 | [`0xfe6386...c4551d`](./contracts/arbitrum-42161/0xfe63860c1edd297256863a393a6a0ec512c4551d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x1d732c...c0e153` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x396c3b...7f345e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x461d09...f98216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7bf78...c6db2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc64a76...522826` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecbf2e...0211a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79ba1c...71ea39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2cd12...be58bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/kromatika) | CertiK | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [{% embed url="<>" %}](https://skynet.certik.com/projects/kromatika?auditId=Kromatika+Finance) | CertiK | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0xf98dcd...590b07`](./contracts/optimism-10/0xf98dcd95217e15e05d8638da4c91125e59590b07/) | L2StandardERC20 | token | $44,689.75 | Verified native implementation with $44,689.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x55ff62...a4bf70`](./contracts/arbitrum-42161/0x55ff62567f09906a85183b866df84bf599a4bf70/) | StandardArbERC20 | token | $32,393.26 | Verified native implementation with $32,393.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | UChildERC20 | token | $6,713.23 | Verified native implementation with $6,713.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | Kromatika | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7054d0...5bb034`](./contracts/arbitrum-42161/0x7054d002db18a10c31683ec1a8515589c65bb034/) | KromatikaSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 7 |

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
