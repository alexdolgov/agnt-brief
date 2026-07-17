# Agentic Audit Brief: GullNetwork

## Project Overview

- Project: GullNetwork (`gullnetwork`)
- Website: [https://www.gullnetwork.com](https://www.gullnetwork.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.119Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: manta
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $157,251.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (erc721, eip712, ownable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (0 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Beosin | Tier 2 | 1 | 12.5% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GULL | unknown | manta | n/a | [`0x9582b518d28dc65945f8151c25e44a4e80504205`](./contracts/manta-169/0x9582b518d28dc65945f8151c25e44a4e80504205/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | manta | n/a | [`0x0aa43a13c09bc0faef6aeb3ba002bc32bacd3e4a`](./contracts/manta-169/0x0aa43a13c09bc0faef6aeb3ba002bc32bacd3e4a/) | ⚠️ Unaudited |
| GullOFTAdapter | unknown | manta | n/a | [`0x617f1536dafd893994b9f51381f78875c86d2e95`](./contracts/manta-169/0x617f1536dafd893994b9f51381f78875c86d2e95/) | ⚠️ Unaudited |
| GullStakingFactory | unknown | manta | n/a | [`0xfc6387f581d2a827f183a9ea68f07063f99744de`](./contracts/manta-169/0xfc6387f581d2a827f183a9ea68f07063f99744de/) | ⚠️ Unaudited |
| GullV2Factory | unknown | manta | n/a | [`0x31a78894a2b5de2c4244cd41595cd0050a906db3`](./contracts/manta-169/0x31a78894a2b5de2c4244cd41595cd0050a906db3/) | ⚠️ Unaudited |
| GullV2Router02 | unknown | manta | n/a | [`0x0c5d91e097a22e1454987652d7ccdb825f1ec462`](./contracts/manta-169/0x0c5d91e097a22e1454987652d7ccdb825f1ec462/) | ⚠️ Unaudited |
| GullVIP | unknown | manta | n/a | [`0xc7faab6408346dc5928e60556681f2359a551f77`](./contracts/manta-169/0xc7faab6408346dc5928e60556681f2359a551f77/) | ⚠️ Unaudited |
| MantaGull | unknown | manta | n/a | [`0xccdb7b8e012d282a86a2a8e94e9351472774f360`](./contracts/manta-169/0xccdb7b8e012d282a86a2a8e94e9351472774f360/) | ⚠️ Unaudited |

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
| [<>](https://www.beosin.com/audits/GULL_202404191729.pdf) | Beosin | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [- [Audit]()](https://gullnetwork.gitbook.io/gullnetwork/contracts-and-security/audit.md) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0x617f1536dafd893994b9f51381f78875c86d2e95`](./contracts/manta-169/0x617f1536dafd893994b9f51381f78875c86d2e95/) | GullOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xfc6387f581d2a827f183a9ea68f07063f99744de`](./contracts/manta-169/0xfc6387f581d2a827f183a9ea68f07063f99744de/) | GullStakingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x31a78894a2b5de2c4244cd41595cd0050a906db3`](./contracts/manta-169/0x31a78894a2b5de2c4244cd41595cd0050a906db3/) | GullV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x0c5d91e097a22e1454987652d7ccdb825f1ec462`](./contracts/manta-169/0x0c5d91e097a22e1454987652d7ccdb825f1ec462/) | GullV2Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc7faab6408346dc5928e60556681f2359a551f77`](./contracts/manta-169/0xc7faab6408346dc5928e60556681f2359a551f77/) | GullVIP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xccdb7b8e012d282a86a2a8e94e9351472774f360`](./contracts/manta-169/0xccdb7b8e012d282a86a2a8e94e9351472774f360/) | MantaGull | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [20493] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
