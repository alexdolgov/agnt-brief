# Agentic Audit Brief: CHATEAU

## Project Overview

- Project: CHATEAU (`chateau`)
- Website: [https://www.chateau.capital](https://www.chateau.capital)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.246Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: hyperliquid, plasma
- Contract surface: 31 unique implementations (32 raw deployments)
- DeFi Llama TVL: $1,030,829.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 13 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 16 common project-authored base contract(s) (oftownable2step, oft, oftcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 32 (5 live, 27 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 31
- Raw deployments: 32
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| chUSD | unknown | plasma | n/a | 2 deployments: hyperliquid `0x2222227d90046f1483b3fb37990dea31fcabea02`; plasma [`0x22222215d4edc5510d23d0886133e7ece7f5fdc1`](./contracts/plasma-9745/0x22222215d4edc5510d23d0886133e7ece7f5fdc1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EndpointV2 | operational_periphery | plasma | n/a | [`0x6f475642a6e85809b1c36fa62763669b1b48dd5b`](./contracts/plasma-9745/0x6f475642a6e85809b1c36fa62763669b1b48dd5b/) | ⚠️ Unaudited |
| StakedchUSDOFT | token | hyperliquid | n/a | [`0x888888facb316879129e1eee2451260e44b93aa8`](./contracts/hyperliquid-999/0x888888facb316879129e1eee2451260e44b93aa8/) | ⚠️ Unaudited |
| StakedchUSDV2 | token | plasma | n/a | [`0x888888bab58a7bd3068110749bc7b63b62ce874d`](./contracts/plasma-9745/0x888888bab58a7bd3068110749bc7b63b62ce874d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x14e445182c2e281cf839eb0e9a12359653525658` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x15e51701f245f6d5bd0fee87bcaf55b0841451b3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1998594e4f1007b685bc4fafa87e21c859e7a9c6` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1a327a4de4c70c37b91835c3b1b3f0564b032e58` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1dcdacadb4cb5e9846ca1b667398acdca0203795` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x2367325334447c5e1e0f1b3a6fb947b262f58312` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x2d61dcdd36f10b22176e0433b86f74567d529aaa` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x37aaaf95887624a363effb7762d489e3c05c2a02` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x38de71124f7a447a01d67945a51edce9ff491251` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x3a73033c0b1407574c76bdbac67f126f6b4a9aa9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4514fc667a944752ee8a29f544c1b20b1a315f25` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4ee2f9b7cf3a68966c370f3eb2c16613d3235245` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x5b19bd330a84c049b62d5b0fc2ba120217a18c1c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8bc1e36f015b9902b54b1387a4d733cebc2f5a4e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9740ff91f1985d8d2b71494ae1a2f723bb3ed9e4` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x980205d352f198748b626f6f7c38a8a5663ec981` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9c061c9a4782294eef65ef28cb88233a987f4bdd` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xa20db4ffe74a31d17fc24bd32a7dd7555441058e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc097ab8cd7b053326dfe9fb3e3a31a0cce3b526f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc1b15d3b262beec0e3565c11c9e0f6134bdacb36` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc1b621b18187f74c8f6d52a6f709dd2780c09821` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xce8358bc28dd8296ce8caf1cd2b44787abd65887` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xea6709c29d4d4b5162d8c55d0c28c5ced6cd7296` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf36d3fcde3271530637959ab5e3811824e49411a` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfd76d9cb0bac839725ab79127e7411fe71b1e3ca` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfe7c30860d01e28371d40434806f4a8fcdd3a098` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Chateau - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Chateau%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x6f475642a6e85809b1c36fa62763669b1b48dd5b`](./contracts/plasma-9745/0x6f475642a6e85809b1c36fa62763669b1b48dd5b/) | EndpointV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x888888facb316879129e1eee2451260e44b93aa8`](./contracts/hyperliquid-999/0x888888facb316879129e1eee2451260e44b93aa8/) | StakedchUSDOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x888888bab58a7bd3068110749bc7b63b62ce874d`](./contracts/plasma-9745/0x888888bab58a7bd3068110749bc7b63b62ce874d/) | StakedchUSDV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
