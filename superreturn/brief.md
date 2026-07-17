# Agentic Audit Brief: SuperReturn

## Project Overview

- Project: SuperReturn (`superreturn`)
- Website: [https://www.superreturn.ai/](https://www.superreturn.ai/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:59.101Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $395,365.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 3 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (ownable2step). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | unknown | ethereum | n/a | [`0x53afe3343f322c4189ab69e0d048efd154259419`](./contracts/ethereum-1/0x53afe3343f322c4189ab69e0d048efd154259419/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x139450c2dcef827c9a2a0bb1cb5506260940c9fd`](./contracts/ethereum-1/0x139450c2dcef827c9a2a0bb1cb5506260940c9fd/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | arbitrum | n/a | [`0x250cf7c82bac7cb6cf899b6052979d4b5ba1f9ca`](./contracts/arbitrum-42161/0x250cf7c82bac7cb6cf899b6052979d4b5ba1f9ca/) | ⚠️ Unaudited |
| SSuperusdZapTeller | unknown | ethereum | n/a | [`0xff33415469cf7e594d349780e4f39bd6ce9cf50e`](./contracts/ethereum-1/0xff33415469cf7e594d349780e4f39bd6ce9cf50e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro.com/library/audits/superReturn-1](https://0xmacro.com/library/audits/superReturn-1) | 0xMacro | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/SuperReturn/SuperUSD/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro (upstream Boring Vault / Arctic) | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/SuperReturn/SuperUSD/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro (upstream Boring Vault / Arctic) | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/SuperReturn/SuperUSD/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit (upstream Boring Vault / Arctic) | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://0xmacro.com/library) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xff33415469cf7e594d349780e4f39bd6ce9cf50e`](./contracts/ethereum-1/0xff33415469cf7e594d349780e4f39bd6ce9cf50e/) | SSuperusdZapTeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21457] 0xmacro.com/library/audits/superReturn-1
- [21458] 0xmacro-boring-vault-arctic-0.pdf
- [21459] 0xmacro-boring-vault-arctic-1.pdf
- [21460] spearbit-boring-vault-arctic-0.pdf
- [24479] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
