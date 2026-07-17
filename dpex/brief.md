# Agentic Audit Brief: DPEX

## Project Overview

- Project: DPEX (`dpex`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.239Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: polygon
- Contract surface: 37 unique implementations (39 raw deployments)
- DeFi Llama TVL: $142.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 56 project-authored contract(s) across 1 chain(s); 17 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 7 common project-authored base contract(s) (governable, powered, erc20detailed). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 165; live-surface contracts included: 39 (10 live, 29 unknown).
- Excluded by liveness: 126 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/8 (25.0%)
- Deployed-live implementations: 8 of 37 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/8
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 37
- Raw deployments: 39
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 25.0% | n/a |
| CertiK | Tier 2 | 1 | 12.5% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DPEX | unknown | polygon | n/a | [`0x3ed4c2d63def617f436eb031bacae16f478f3b00`](./contracts/polygon-137/0x3ed4c2d63def617f436eb031bacae16f478f3b00/) | ✅ Audited |
| Vault | core_logic | polygon | n/a | [`0x24afb3b27156e71e68e292e4ad71db827f83f05c`](./contracts/polygon-137/0x24afb3b27156e71e68e292e4ad71db827f83f05c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DPLP | unknown | polygon | n/a | [`0xd3a829a4c9938f54072bad827780aff15335ec39`](./contracts/polygon-137/0xd3a829a4c9938f54072bad827780aff15335ec39/) | ⚠️ Unaudited |
| eDPX | unknown | polygon | n/a | [`0xa23cd4da2400b31bcf18e3a8f27578c706dbf902`](./contracts/polygon-137/0xa23cd4da2400b31bcf18e3a8f27578c706dbf902/) | ⚠️ Unaudited |
| EsDPEX | unknown | polygon | n/a | [`0x5e4a7bf3e07608ac5805c74144f2149518044435`](./contracts/polygon-137/0x5e4a7bf3e07608ac5805c74144f2149518044435/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | polygon | n/a | 3 deployments: polygon [`0x82473eabc8530bdebd2b058f12b673234ff0b8cb`](./contracts/polygon-137/0x82473eabc8530bdebd2b058f12b673234ff0b8cb/); polygon `0xd0b3db736d2021221fb6bcc4e133452251d8d25a`; polygon `0xf9dad14fd43665187fa568949313a901c202c5d9` | ⚠️ Unaudited |
| PositionRouter | adapter | polygon | n/a | [`0x6c17c37ebc95c739f9b68ecc7ad6a0c682f1636b`](./contracts/polygon-137/0x6c17c37ebc95c739f9b68ecc7ad6a0c682f1636b/) | ⚠️ Unaudited |
| Timelock | governance | polygon | n/a | [`0xfef980f130b9b8f3c1a1a71627af8e08f9431338`](./contracts/polygon-137/0xfef980f130b9b8f3c1a1a71627af8e08f9431338/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x0af272cba8c1bd7bf3c49222737257e07ecac8df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16bb9ff15d5472829c0682ef543817d24cfed7d9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x179c7a9cd3d5faa24ea562b4d34327210c7fd78f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c66a8200805ebfbcf6339b8d6b28ddc5ba89a6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x219bc7b4daf57065185c68be797db282e05ce576` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a5eeae15c19e3ca2cfea06f75f360cea0505751` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x416a3f4fb73e9c2b343fa44b7f3e1f9582bddcdf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53749b3ce4d93766cfb6ae828eccebfeecfc5686` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6326162cb236152202e3c1cba26365e924c633dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x64f671722161ee91409064a946c0eaaf6cb947f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x70637c8870ee3e844f16b5e84d3236316ed27364` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x76b730e987480f13db529feb4b619aa403da9d9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x81d01ad98b562158322ffc1e381fde2d9233962f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8743bf7004d011aac88974750c1171568574216d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89c5169b5e1b08415a3fd99e3d9a71a7b527d4cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa780fcbff7c5232fdbef4fc67313becffdf64172` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaea3d835f500d3544d50ce01b317db8dc1bfea5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb89e56b6893c59d3491255b63d929f50191eb2d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb91bf0f0337804f02d630ba3d772c3ba22bbe992` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9ed66c8ce7c667cd787dd6ec6b8a50db0490ece` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbaa2fab129786f42e271f0fe1b00aca48d74f483` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe5e5bb55beec1663709256fea3541506dff56f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbeba175299e77c5b89090f41576d50265e3d2ef9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9d79a1c013d191610b26063c8666dcf1afdb14c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7af7bedfc4531032ad85311120b2601da0432c7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeaa0a9779524b19a47064aed713b3e513351ffa8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee96c0b5becbf675b40cf3c44232e0951b1f24be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef4b74d6176b912a2743cb1468a21d5072e11070` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa1620cdca983d092548396453293cb15ded06d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/dpex](https://skynet.certik.com/projects/dpex) | CertiK | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |
| [DPEX_Zokyo audit report.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/DPEX/DPEX_Zokyo%20audit%20report.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xd3a829a4c9938f54072bad827780aff15335ec39`](./contracts/polygon-137/0xd3a829a4c9938f54072bad827780aff15335ec39/) | DPLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa23cd4da2400b31bcf18e3a8f27578c706dbf902`](./contracts/polygon-137/0xa23cd4da2400b31bcf18e3a8f27578c706dbf902/) | eDPX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5e4a7bf3e07608ac5805c74144f2149518044435`](./contracts/polygon-137/0x5e4a7bf3e07608ac5805c74144f2149518044435/) | EsDPEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x82473eabc8530bdebd2b058f12b673234ff0b8cb`](./contracts/polygon-137/0x82473eabc8530bdebd2b058f12b673234ff0b8cb/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6c17c37ebc95c739f9b68ecc7ad6a0c682f1636b`](./contracts/polygon-137/0x6c17c37ebc95c739f9b68ecc7ad6a0c682f1636b/) | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfef980f130b9b8f3c1a1a71627af8e08f9431338`](./contracts/polygon-137/0xfef980f130b9b8f3c1a1a71627af8e08f9431338/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
