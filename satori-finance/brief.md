# Agentic Audit Brief: Satori Finance

## Project Overview

- Project: Satori Finance (`satori-finance`)
- Website: [https://satori.finance](https://satori.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.604Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, ethereum, linea, polygon-zkevm, scroll
- Contract surface: 40 unique implementations (54 raw deployments)
- DeFi Llama TVL: $914,426.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 178 project-authored contract(s) across 4 chain(s); 2 ERC4626 vaults, 53 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 22 common project-authored base contract(s) (proxy, lockable, ynbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 58; live-surface contracts included: 54 (16 live, 38 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 10 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 30
- Unique implementations: 40
- Raw deployments: 54
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AETH_R21 | unknown | ethereum | n/a | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/); ethereum `0x9fbc36...ffdc4c`; ethereum `0xe72fe6...938cb9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 5 deployments: ethereum `0x2a3e53...af0b3d`; base `0xdcbc72...9c0982`; arbitrum [`0x21ec83...0ac651`](./contracts/arbitrum-42161/0x21ec83d42ae40c6d18c3c1224d1d468eac0ac651/); linea `0xc99148...eeb63a`; linea `0xfa9b89...dad4b1` | ⚠️ Unaudited |
| RSETH | token | ethereum | n/a | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4b8f58...2aafa3`](./contracts/ethereum-1/0x4b8f585d281eaaeb705f3f8710c30f071a2aafa3/); ethereum `0x9686cc...643726` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x7d61a7...25cbe7`](./contracts/base-8453/0x7d61a7c329d1a23b98471f63d6a8246ca725cbe7/); base `0x9d3ada...85a155` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x323967...2dc800`](./contracts/arbitrum-42161/0x3239678037d38865c25747e364660a0a3c2dc800/); arbitrum `0x7eb51e...93b84d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | 2 deployments: linea [`0x028251...ef2275`](./contracts/linea-59144/0x0282515de1f3ba5953298a72f1357cfda6ef2275/); linea `0xc6a889...014b34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | 2 deployments: linea [`0x379869...4402e9`](./contracts/linea-59144/0x3798699893b3a459e80152b7aab9f4663b4402e9/); linea `0x5940a6...9765b7` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | n/a | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (30)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0857f8...cbffde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa39408...63fe40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae754c...8ac475` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 4 deployments: polygon-zkevm `0x0842b3...d0eee0`; polygon-zkevm `0x48756b...00c476`; polygon-zkevm `0x62e724...856940`; polygon-zkevm `0xa59a23...9c2abb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f9144...25a02e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10c3fc...579560` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19492a...eb44ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c3191...420e38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ced5d...3ac33c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f075a...17b595` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x658620...0a13b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x668a97...4d5aed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d3163...34f873` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcad4a9...ca0dec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdaf86...5c3db7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9adb4...55b478` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4038d...2f2ab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf906a1...dcbcbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5acceb...beeed7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae9a83...fe9a03` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0f9144...25a02e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4858c6...4fa405` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x62f4cf...525535` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xce0930...e932dd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe9adb4...55b478` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf96116...37c50a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfb371e...a18425` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xff5859...6a2020` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xf96116...37c50a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satori_audit_report.pdf](https://github.com/satoridao/contract_audit_report/blob/main/Satori_audit_report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | AETH_R21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x892dff...6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | RSETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ynETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 31 |

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
