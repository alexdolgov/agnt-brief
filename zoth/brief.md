# Agentic Audit Brief: Zoth

## Project Overview

- Project: Zoth (`zoth`)
- Website: [https://zoth.io](https://zoth.io)
- Lifecycle: active (Tier 0, 92.5% below peak)
- Generated: 2026-06-17T07:00:47.394Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, base, ethereum, manta, metis
- Contract surface: 11 unique implementations (16 raw deployments)
- DeFi Llama TVL: $2,198,027.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Zoth currently positions itself as a stablecoin neobank and RWA-yield platform, with products spanning stablecoin Earn, Send, Tokenize, Agentic/automation features, payments, cards, compliance, and privacy-first neobanking. Its on-chain surface includes historical or related ZeUSD, vault, redemption, zOPAL, ZTLNPrime, governance, proxy, and implementation contracts, but ZeUSD/CDP functionality should not be described as the sole or primary current product unless supported by current documentation.

### Architecture

The ZeUSD CDP & Vaults family relies on shared registries, access managers, and oracles to coordinate collateral deposits and stablecoin minting across multiple sub-vault types. The zOPAL family uses its own access control and oracles but follows a similar vault-based pattern, while the ZTLN-P token serves as collateral within the ZeUSD ecosystem, creating a unified RWA-backed DeFi platform.

## Contract Surface Quality

- Indexed contracts: 149; live-surface contracts included: 16 (14 live, 2 unknown).
- Excluded by liveness: 71 inactive, 62 singleton, 0 uninitialized.
- Deployment units: 1/35 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 11
- Raw deployments: 16
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 3 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Claude | Tier 2 | 2 | 33.3% | 2026-03 |
| ENTERSOFT | Tier 2 | 2 | 33.3% | 2026-02 |
| EVM Bench | Tier 2 | 2 | 33.3% | 2026-03 |
| unknown | Tier 2 | 1 | 16.7% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FunctionsAccessControl | governance | base | n/a | [`0x58722c...859cb7`](./contracts/base-8453/0x58722c4f1a8bca491dcf074ae3c6b519cc859cb7/) | ✅ Audited |
| PriceOracle | operational_periphery | base | n/a | [`0x2756bf...6715eb`](./contracts/base-8453/0x2756bf902563b6e767a6e9ec20abfab3706715eb/) | ✅ Audited |
| ZeUSD_OFT | unknown | manta | n/a | [`0x7dc974...8ea761`](./contracts/manta-169/0x7dc9748da8e762e569f9269f48f69a1a9f8ea761/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | governance | ethereum | n/a | 5 deployments: ethereum [`0x062b76...99c672`](./contracts/ethereum-1/0x062b7697fd492270732295e5486e405a5999c672/); ethereum `0x600b26...420430`; ethereum `0x7e43e3...5c8d58`; ethereum `0x80099b...43ee02`; ethereum `0xc1ce24...a2be5f` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0x5a9916...b79b84`](./contracts/base-8453/0x5a9916c8b89f4cc97b782d5138ea54a17eb79b84/) | ⚠️ Unaudited |
| ZeUSDRouterV2 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x8154db...498551`](./contracts/ethereum-1/0x8154db5007d78dd2deb7d4d6940752feb5498551/); ethereum `0xf1fd73...681f5c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x6f4d7192e66feacf6e3f65cfeae3f69c49ef9b03) | proxy | avalanche | unit-29055 | `0x7dc974...8ea761` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2d3d1a...e27a77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15925a...65683e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x973bd2...7b2f04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9dd43...a314c6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2F8csMoFUI4T4MyCctrCfQ%2FHacken%20Zeusd%20Contracts%20Dec2024.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2FCIkyRzhjzbJxAdhVDwfV%2FSolidityScan%20ZeUSD%20Contracts%20Dec2024.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [Check the report here: <>](https://github.com/0xZothio/zVault/blob/dev/audits/ENTERSOFT.pdf) | ENTERSOFT | Audit | 2026-02 | fresh | Direct | contract_name | 2 | high |
| [CLAUDE.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/CLAUDE.pdf) | Claude | Audit | 2026-03 | fresh | Direct | contract_name | 2 | high |
| [EVMBENCH.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/EVMBENCH.pdf) | EVM Bench | Audit | 2026-03 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x062b76...99c672`](./contracts/ethereum-1/0x062b7697fd492270732295e5486e405a5999c672/) | AccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8154db...498551`](./contracts/ethereum-1/0x8154db5007d78dd2deb7d4d6940752feb5498551/) | ZeUSDRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=126

Zero-match audit list:

- [2868] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
