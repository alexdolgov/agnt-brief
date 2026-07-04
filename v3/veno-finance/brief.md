# Agentic Audit Brief: Veno Finance

## Project Overview

- Project: Veno Finance (`veno-finance`)
- Website: [https://veno.finance/](https://veno.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:10.335Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: cronos, ethereum, zksync-era
- Contract surface: 21 unique implementations (53 raw deployments)
- DeFi Llama TVL: $34,040,635.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 8 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 5 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 49 (9 live, 40 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 21
- Raw deployments: 53
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeMiddleware | operational_periphery | ethereum | n/a | [`0x248c73...a0b01e`](./contracts/ethereum-1/0x248c731b155af4cae198af705fb803f087a0b01e/) | ⚠️ Unaudited |
| L1Nullifier | unknown | ethereum | n/a | [`0xd7f9f5...8cb2cb`](./contracts/ethereum-1/0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb/) | ⚠️ Unaudited |
| YbEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x76bf2d...dfc351`](./contracts/ethereum-1/0x76bf2d1e6dfda645c0c17440b17eccc181dfc351/); ethereum `0xc0c23f...52d6a2` | ⚠️ Unaudited |
| YbEthBridge | operational_periphery | ethereum | n/a | [`0xd91629...bdf73f`](./contracts/ethereum-1/0xd91629518a1ec964cfce27c2a939f689dcbdf73f/) | ⚠️ Unaudited |
| YbEthNft | unknown | ethereum | n/a | 2 deployments: ethereum [`0x43df9d...86d2c5`](./contracts/ethereum-1/0x43df9d854d3fcb882847b9a638cabd06fe86d2c5/); ethereum `0x8f6b05...90762d` | ⚠️ Unaudited |
| YBUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd501a4...32b7ce`](./contracts/ethereum-1/0xd501a4d2141799f3228c40af972df622c632b7ce/); ethereum `0xfa5907...0f594a` | ⚠️ Unaudited |
| YBUSDBridge | operational_periphery | ethereum | n/a | [`0x42696a...7b0dff`](./contracts/ethereum-1/0x42696a64a238e5c661b1bad2530198d54e7b0dff/) | ⚠️ Unaudited |
| ZkCro | unknown | ethereum | n/a | 2 deployments: ethereum [`0x28ff2e...1e44e2`](./contracts/ethereum-1/0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2/); ethereum `0x34b35b...4616a5` | ⚠️ Unaudited |
| ZkCroMintAndBridge | operational_periphery | ethereum | n/a | [`0xe69a53...ab4e12`](./contracts/ethereum-1/0xe69a535730858fd8dc386b448972a9f801ab4e12/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3fa18f...d0daa2` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | 29 deployments: cronos `0x0bbe7e...2af25d`; cronos `0x10a1d7...e5d191`; cronos `0x186a96...05c7c1`; cronos `0x211793...8cca07`; cronos `0x276e28...0b6995`; cronos `0x4c86f7...130b72`; cronos `0x502473...2f27f6`; cronos `0x56fefe...1de156`; cronos `0x579206...a84ac3`; cronos `0x655c5e...eddf55`; cronos `0x6b5e1f...139419`; cronos `0x85ca39...4ee8a2`; cronos `0x89ccc2...f01587`; cronos `0x8f1010...1413fa`; cronos `0x8f4bfe...778565`; cronos `0x9fae23...7c08a6`; cronos `0xa31259...8b2f69`; cronos `0xa90ee4...8d1666`; cronos `0xac974e...85750d`; cronos `0xac9e47...e52d70`; cronos `0xb15533...633965`; cronos `0xb4be51...d6ca95`; cronos `0xbd6909...e0aee5`; cronos `0xc07a8a...439c58`; cronos `0xd73863...bc456c`; cronos `0xdb7d0a...4404e9`; cronos `0xe4fa42...15c6f8`; cronos `0xf67dca...9002de`; cronos `0xf7a5c2...c5049d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4e313f...b8cd24` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x64b774...2c81dc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa512db...8ff15d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa55fa3...e1413d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbddd1a...e20aca` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd70904...ed626b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe75a17...785e63` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe7895e...2e7f9d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf8b19e...e903ab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfea419...404936` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FkW555WIVoUbzUslDZTlZ%2FSlowMist%20Audit%20Report%20-%20Veno-Liquid%20Staking%20Contracts%20Core.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FgvneLOUCCjnAQYcHhFj7%2FSlowMist%20Audit%20Report%20-%20Veno%20-%20Liquid%20Staking%20Contracts%20Tokenomic.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FtzPxX5tBafm0DUCRrLqa%2FSlowMist%20Audit%20Report%20-%20Veno%20Liquid%20Staking%20Strategy%20Vault.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11713] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf
- [11714] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf
- [11715] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf

Fork inheritance lineage and inherited audits are included when available.
