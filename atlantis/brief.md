# Agentic Audit Brief: Atlantis

⚠️ Lifecycle status: DECLINING - TVL changed 13.7% over 90 days

## Project Overview

- Project: Atlantis (`atlantis`)
- Website: [https://www.atlantisprotocol.so/swap](https://www.atlantisprotocol.so/swap)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T23:02:07.292Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: sonic
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $13,605.37
- On-chain TVL (included contracts): $9,925.72
- TVL by chain: Sonic $9,925.72

## Project Description

Atlantis is a decentralized exchange (DEX) on the Sonic chain, built on the Algebra protocol. It provides concentrated liquidity trading, token staking, and dividend distribution for its native AQUA token ecosystem.

### Architecture

The DEX family provides the trading infrastructure, while the Token Ecosystem family incentivizes participation through staking and dividends. The two families are linked by the AQUA token, which is likely used for governance or fee sharing within the DEX.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 14 (0 live, 14 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $9,925.72
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $9,925.72 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AQUAToken | token | sonic | n/a | [`0x9138a8...7599d9`](./contracts/sonic-146/0x9138a8733dce2e877f430b7500e3c229ad7599d9/) | ⚠️ Unaudited |
| AlgebraFactory | registry | sonic | n/a | [`0x7c8396...2f1a1b`](./contracts/sonic-146/0x7c839669a12fae0bfbe2f6a16516dd2adc2f1a1b/) | ⚠️ Unaudited |
| AtlantisStaking | unknown | sonic | n/a | [`0x601993...39e63b`](./contracts/sonic-146/0x601993f292db6eceb6bc29becf928d874639e63b/) | ⚠️ Unaudited |
| DividendsV2 | unknown | sonic | n/a | [`0x46b6d5...a8164b`](./contracts/sonic-146/0x46b6d5732d1b86f4fac7572efb675afbaba8164b/) | ⚠️ Unaudited |
| Faucet | unknown | sonic | n/a | [`0x7aabe8...069a11`](./contracts/sonic-146/0x7aabe848f8feb04dcfb410bcb88c129e6a069a11/) | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | n/a | [`0xd817f4...08b60d`](./contracts/sonic-146/0xd817f470bcf8f5489f801c3b79969b090508b60d/) | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | n/a | [`0xc8a68b...ef808d`](./contracts/sonic-146/0xc8a68bbc6f1b2ff03837f5a98b94be0066ef808d/) | ⚠️ Unaudited |
| xAQUAToken | token | sonic | n/a | [`0x4e0bd8...9c4e84`](./contracts/sonic-146/0x4e0bd8bd175bd3ba4d20e068a56ea213289c4e84/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x41ecf1...e38526` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45f9e1...79511b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x937826...36197b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa384b0...a03d4f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeac93d...a01728` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xed4ee1...68b8f3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://3468129680-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FKboRABceyMllFm7vMRLZ%2Fuploads%2FschKQ6l6avq9x3Aldvfd%2FBailsec%20-%20Atlantis%20-%20Final%20Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x9138a8...7599d9`](./contracts/sonic-146/0x9138a8733dce2e877f430b7500e3c229ad7599d9/) | AQUAToken | token | $9,925.72 | Verified native implementation with $9,925.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x601993...39e63b`](./contracts/sonic-146/0x601993f292db6eceb6bc29becf928d874639e63b/) | AtlantisStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x46b6d5...a8164b`](./contracts/sonic-146/0x46b6d5732d1b86f4fac7572efb675afbaba8164b/) | DividendsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7aabe8...069a11`](./contracts/sonic-146/0x7aabe848f8feb04dcfb410bcb88c129e6a069a11/) | Faucet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4e0bd8...9c4e84`](./contracts/sonic-146/0x4e0bd8bd175bd3ba4d20e068a56ea213289c4e84/) | xAQUAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12697] DL audit link

Fork inheritance lineage and inherited audits are included when available.
