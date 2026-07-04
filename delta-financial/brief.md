# Agentic Audit Brief: Delta Financial

## Project Overview

- Project: Delta Financial (`delta-financial`)
- Website: [https://www.delta.finance](https://www.delta.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.914Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $7,496,097.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 39 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (baseadminupgradeabilityproxy, baseupgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 102; live-surface contracts included: 22 (7 live, 15 unknown).
- Excluded by liveness: 80 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CORE | unknown | ethereum | n/a | [`0x62359e...fa23d7`](./contracts/ethereum-1/0x62359ed7505efc61ff1d56fef82158ccaffa23d7/) | ⚠️ Unaudited |
| coreDAI | unknown | ethereum | n/a | [`0x00a661...f37642`](./contracts/ethereum-1/0x00a66189143279b6db9b77294688f47959f37642/) | ⚠️ Unaudited |
| CoreDAO | unknown | ethereum | n/a | [`0xf66cd2...32dd58`](./contracts/ethereum-1/0xf66cd2f8755a21d3c8683a10269f795c0532dd58/) | ⚠️ Unaudited |
| DELTA_Deep_Vault_Withdrawal | operational_periphery | ethereum | n/a | [`0x251bbe...60a943`](./contracts/ethereum-1/0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943/) | ⚠️ Unaudited |
| DELTA_Distributor | operational_periphery | ethereum | n/a | [`0xf249c5...667461`](./contracts/ethereum-1/0xf249c5b422758d91d8f05e1cc5fc85cf4b667461/) | ⚠️ Unaudited |
| FannyVault | core_logic | ethereum | n/a | [`0xbb791b...9d7816`](./contracts/ethereum-1/0xbb791bc6106e4d949863e2ab76fc01ac0a9d7816/) | ⚠️ Unaudited |
| Unimplemented | unknown | ethereum | n/a | [`0x0c53b4...7e363c`](./contracts/ethereum-1/0x0c53b4b0a343c70a9e610bde28a269610d7e363c/) | ⚠️ Unaudited |
| wCORE | unknown | ethereum | n/a | [`0x17b8c1...23b669`](./contracts/ethereum-1/0x17b8c1a92b66b1cf3092c5d223cb3a129023b669/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x25858c...fe71da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x398ab4...02c954` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48f32c...06e199` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x708722...5059d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c0f5f...d6e01a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80af36...7c4cdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x859b2f...66c20e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e20ec...54c38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1a957...de71d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa53369...a98e0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8a9da...42b8a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0a3f8...788654` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1fa5b...0403cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8a55f...ccf506` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/delta-finance](https://skynet.certik.com/projects/delta-finance) | CertiK | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x62359e...fa23d7`](./contracts/ethereum-1/0x62359ed7505efc61ff1d56fef82158ccaffa23d7/) | CORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00a661...f37642`](./contracts/ethereum-1/0x00a66189143279b6db9b77294688f47959f37642/) | coreDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf66cd2...32dd58`](./contracts/ethereum-1/0xf66cd2f8755a21d3c8683a10269f795c0532dd58/) | CoreDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x251bbe...60a943`](./contracts/ethereum-1/0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943/) | DELTA_Deep_Vault_Withdrawal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf249c5...667461`](./contracts/ethereum-1/0xf249c5b422758d91d8f05e1cc5fc85cf4b667461/) | DELTA_Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb791b...9d7816`](./contracts/ethereum-1/0xbb791bc6106e4d949863e2ab76fc01ac0a9d7816/) | FannyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c53b4...7e363c`](./contracts/ethereum-1/0x0c53b4b0a343c70a9e610bde28a269610d7e363c/) | Unimplemented | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17b8c1...23b669`](./contracts/ethereum-1/0x17b8c1a92b66b1cf3092c5d223cb3a129023b669/) | wCORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21299] skynet.certik.com/projects/delta-finance

Fork inheritance lineage and inherited audits are included when available.
