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
| AETH_R21 | unknown | ethereum | n/a | [`0xe95a203b1a91a908f9b9ce46459d101078c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/); ethereum `0x9fbc367b9bb966a2a537989817a088afcaffdc4c`; ethereum `0xe72fe64840f4ef80e3ec73a1c749491b5c938cb9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 5 deployments: ethereum `0x2a3e5383aafe43b05dbb7a63f3c98b29afaf0b3d`; base `0xdcbc727da5fed68daf2708af525b4810469c0982`; arbitrum [`0x21ec83d42ae40c6d18c3c1224d1d468eac0ac651`](./contracts/arbitrum-42161/0x21ec83d42ae40c6d18c3c1224d1d468eac0ac651/); linea `0xc99148d2298fb0bff4802581e3cc88605beeb63a`; linea `0xfa9b890f61c28a68782b17320201b5b9acdad4b1` | ⚠️ Unaudited |
| RSETH | token | ethereum | n/a | [`0xa1290d69c65a6fe4df752f95823fae25cb99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4b8f585d281eaaeb705f3f8710c30f071a2aafa3`](./contracts/ethereum-1/0x4b8f585d281eaaeb705f3f8710c30f071a2aafa3/); ethereum `0x9686cc81cebbdd383a996ad96a21ca707d643726` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x7d61a7c329d1a23b98471f63d6a8246ca725cbe7`](./contracts/base-8453/0x7d61a7c329d1a23b98471f63d6a8246ca725cbe7/); base `0x9d3ada9e1f3fe79cb51c14211696679d4385a155` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3239678037d38865c25747e364660a0a3c2dc800`](./contracts/arbitrum-42161/0x3239678037d38865c25747e364660a0a3c2dc800/); arbitrum `0x7eb51e5e22d8a36a3bde58ae90333d113093b84d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | 2 deployments: linea [`0x0282515de1f3ba5953298a72f1357cfda6ef2275`](./contracts/linea-59144/0x0282515de1f3ba5953298a72f1357cfda6ef2275/); linea `0xc6a889ecfceda834767e91b7c49a2452b2014b34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | 2 deployments: linea [`0x3798699893b3a459e80152b7aab9f4663b4402e9`](./contracts/linea-59144/0x3798699893b3a459e80152b7aab9f4663b4402e9/); linea `0x5940a60866255031830aa1edfdd8b56ab39765b7` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | n/a | [`0x09db87a538bd693e9d08544577d5ccfaa6373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0857f8a6e41e1c71f4065daebfe7ddb825cbffde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa394080628f175472fee9eb316bd104fab63fe40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae754c8d7eb513125d5b6912cd7928a2278ac475` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 4 deployments: polygon-zkevm `0x0842b33529516abe86ca8ea771ac4c84fdd0eee0`; polygon-zkevm `0x48756b37fd643bb40f669804730024f02900c476`; polygon-zkevm `0x62e724cb4d6c6c7317e2fade4a03001fe7856940`; polygon-zkevm `0xa59a2365d555b24491b19a5093d3c99b119c2abb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f9144940a3c475617bf8bb084a32a3d4b25a02e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10c3fcc7c6e378147c7e1290ed69f89d6d579560` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19492a6f686657d07b016e983a4611772eeb44ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c3191793771cad58cc8684f4ed74de5c6420e38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4858c605862a91a34d83c19a9704f837f64fa405` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ced5d67b13f05ec0d54f1fa14b42223103ac33c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f075a6a11b2e25df664ce7419c274943017b595` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6586201ade078a4aefab700e939c3b9e260a13b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x668a9711b8d04362876dc5b6177ed362084d5aed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d3163f665a227a0cd5ff6f5b329814ca734f873` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcad4a958d171c3ba2c973d05300b70dd33ca0dec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdaf869f8c202dd3702625901c58cf99f05c3db7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9adb4358c59e584abe24ba43a70b064ee55b478` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4038d237c553bf246f7d1a377830601d72f2ab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf906a1e298bf30bc2c6294c74a628019abdcbcbb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5acceb99de5cc07168c193396c1fdc3e3abeeed7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae9a83510cbb26c58595ba671f131e0a03fe9a03` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0f9144940a3c475617bf8bb084a32a3d4b25a02e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4858c605862a91a34d83c19a9704f837f64fa405` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x62f4cf567515f2e1a6a5c9f5af1e2b5345525535` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xce0930b46f48c94d4c99be0c8fd7bb5629e932dd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe9adb4358c59e584abe24ba43a70b064ee55b478` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf96116e124eb3f62ddc6a9cfbdc58d7f8a37c50a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfb371e70eeb32f4054f40514924e77213ca18425` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xff5859b60bcb3f153431ca216b1b269eb66a2020` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xf96116e124eb3f62ddc6a9cfbdc58d7f8a37c50a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Satori_audit_report.pdf](https://github.com/satoridao/contract_audit_report/blob/main/Satori_audit_report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe95a203b1a91a908f9b9ce46459d101078c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | AETH_R21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8`](./contracts/ethereum-1/0x892dff5257b39f7afb7803dd7c81e8ecdb6af3e8/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1290d69c65a6fe4df752f95823fae25cb99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | RSETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09db87a538bd693e9d08544577d5ccfaa6373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ynETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
