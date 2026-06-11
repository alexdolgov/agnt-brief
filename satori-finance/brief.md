# Agentic Audit Brief: Satori Finance

## Project Overview

- Project: Satori Finance (`satori-finance`)
- Website: [https://satori.finance](https://satori.finance)
- Lifecycle: active (Tier 0, 81.1% below peak)
- Generated: 2026-06-11T02:32:36.965Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-79ef
- Chains: arbitrum, base, ethereum, linea, polygon-zkevm, scroll
- Contract surface: 40 unique implementations (59 raw deployments)
- DeFi Llama TVL: $1,279,341.00
- On-chain TVL (included contracts): $40,944.60
- TVL by chain: Ethereum $40,944.60

## Project Description

Satori Finance is a decentralized perpetuals and financial derivatives trading platform. Its evidenced product focus is derivatives/perpetual trading; spot-trading, staking infrastructure, yield-bearing vaults, and shared oracle/registry architecture should not be described as core Satori product families unless supported by project documentation or verified contract roles.

### Architecture

Both product families share infrastructure such as proxy contracts for upgradeability and likely common oracle or registry services. The perpetual family relies on yield-bearing vaults and staking managers that may also be used in spot trading for collateral or liquidity.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 1
- Unverified implementations: 33
- Unique implementations: 40
- Raw deployments: 59
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoringVault | core_logic | ethereum | 3 deployments: ethereum [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/); ethereum `0x9fbc36...ffdc4c`; ethereum `0xe72fe6...938cb9` | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 5 deployments: ethereum `0x2a3e53...af0b3d`; base `0xdcbc72...9c0982`; arbitrum [`0x21ec83...0ac651`](./contracts/arbitrum-42161/0x21ec83d42ae40c6d18c3c1224d1d468eac0ac651/); linea `0xc99148...eeb63a`; linea `0xfa9b89...dad4b1` | ⚠️ Unaudited |
| RSETH | token | ethereum | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | 5 deployments: ethereum `0x4b8f58...2aafa3`; base `0x7d61a7...25cbe7`; arbitrum `0x323967...2dc800`; linea [`0x028251...ef2275`](./contracts/linea-59144/0x0282515de1f3ba5953298a72f1357cfda6ef2275/); linea `0x5940a6...9765b7` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SatoriIdo | unknown | base | 10 deployments: base [`0x10c3fc...579560`](./contracts/base-8453/0x10c3fcc7c6e378147c7e1290ed69f89d6d579560/); base `0x19492a...eb44ba`; base `0x658620...0a13b0`; base `0xcdaf86...5c3db7`; base `0xe9adb4...55b478`; base `0xf906a1...dcbcbb`; linea [`0x10c3fc...579560`](./contracts/linea-59144/0x10c3fcc7c6e378147c7e1290ed69f89d6d579560/); linea `0x19492a...eb44ba`; linea `0x658620...0a13b0`; linea `0xcdaf86...5c3db7` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0857f8...cbffde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9686cc...643726` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa39408...63fe40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae754c...8ac475` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x0842b3...d0eee0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x48756b...00c476` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0x62e724...856940` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | `0xa59a23...9c2abb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0f9144...25a02e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3c3191...420e38` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5ced5d...3ac33c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5f075a...17b595` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x668a97...4d5aed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7d3163...34f873` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9d3ada...85a155` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcad4a9...ca0dec` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf4038d...2f2ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5acceb...beeed7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7eb51e...93b84d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xae9a83...fe9a03` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0f9144...25a02e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x379869...4402e9` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x62f4cf...525535` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc6a889...014b34` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xce0930...e932dd` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe9adb4...55b478` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf96116...37c50a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xfb371e...a18425` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xff5859...6a2020` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xf96116...37c50a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xfb371e...a18425` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satori_audit_report.pdf](https://github.com/satoridao/contract_audit_report/blob/main/Satori_audit_report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/) | BoringVault | core_logic | $40,944.60 | Verified native implementation with $40,944.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 32 |

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
