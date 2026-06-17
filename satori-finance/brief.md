# Agentic Audit Brief: Satori Finance

## Project Overview

- Project: Satori Finance (`satori-finance`)
- Website: [https://satori.finance](https://satori.finance)
- Lifecycle: active (Tier 0, 81.1% below peak)
- Generated: 2026-06-17T07:00:33.186Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, linea, polygon-zkevm, scroll
- Contract surface: 15 unique implementations (17 raw deployments)
- DeFi Llama TVL: $1,271,514.00
- On-chain TVL (included contracts): $40,944.60
- TVL by chain: Ethereum $40,944.60

## Project Description

Satori Finance is a decentralized perpetuals and financial derivatives trading platform. Its evidenced product focus is derivatives/perpetual trading; spot-trading, staking infrastructure, yield-bearing vaults, and shared oracle/registry architecture should not be described as core Satori product families unless supported by project documentation or verified contract roles.

### Architecture

Both product families share infrastructure such as proxy contracts for upgradeability and likely common oracle or registry services. The perpetual family relies on yield-bearing vaults and staking managers that may also be used in spot trading for collateral or liquidity.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 17 (13 live, 4 unknown).
- Excluded by liveness: 32 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 3/8 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 15
- Raw deployments: 17
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $40,944.60
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoringVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/); ethereum `0x9fbc36...ffdc4c`; ethereum `0xe72fe6...938cb9` | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | unit-21103 | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| RSETH | token | ethereum | unit-21102 | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| ynETH | unknown | ethereum | unit-21100 | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xa39408...63fe40` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x0842b3...d0eee0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x48756b...00c476` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x62e724...856940` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xa59a23...9c2abb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f075a...17b595` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4038d...2f2ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae9a83...fe9a03` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf96116...37c50a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xf96116...37c50a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satori_audit_report.pdf](https://github.com/satoridao/contract_audit_report/blob/main/Satori_audit_report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/) | BoringVault | core_logic | $40,944.60 | Verified native implementation with $40,944.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | RSETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3129] Satori_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
