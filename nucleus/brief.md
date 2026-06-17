# Agentic Audit Brief: Nucleus

## Project Overview

- Project: Nucleus (`nucleus`)
- Website: [https://www.nucleusearn.io](https://www.nucleusearn.io)
- Lifecycle: active (Tier 0, 68.8% below peak)
- Generated: 2026-06-17T07:00:50.267Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 6 unique implementations (34 raw deployments)
- DeFi Llama TVL: $28,653,388.36
- On-chain TVL (included contracts): $996,372.28
- TVL by chain: Ethereum $996,372.28

## Project Description

Nucleus is a yield aggregator that deploys user deposits into various yield-generating strategies through BoringVaults. It uses Teller contracts to manage asset flows and supports cross-chain operations via LayerZero.

### Architecture

The Nucleus family uses BoringVaults as the primary yield-bearing contracts, with Tellers managing asset deposits and withdrawals. The Step families appear to be auxiliary contracts for asset inspection and withdrawal, sharing the BoringVault infrastructure.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/6 (50.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 34
- Audits discovered: 11
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 4 fresh, 2 aging, 1 stale, 4 unknown
- Tier 1 coverage: 33.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 3 | 50.0% | 2026-03 |
| Spearbit | Tier 1 | 2 | 33.3% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoringVault | core_logic | ethereum | n/a | 22 deployments: ethereum [`0x11113f...9ee94b`](./contracts/ethereum-1/0x11113ff3a60c2450f4b22515cb760417259ee94b/); ethereum `0x170d84...c933a0`; ethereum `0x196ead...bd3dcc`; ethereum `0x19e099...3c0b32`; ethereum `0x52e4d8...07a0d1`; ethereum `0x593ccc...6388db`; ethereum `0x5d82ac...8d47a2`; ethereum `0x64ab17...afb855`; ethereum `0x66e47e...4d831a`; ethereum `0x6c5874...f7fd76`; ethereum `0x722a85...1f883b`; ethereum `0x82c40e...c7cab4`; ethereum `0x9ed153...775f22`; ethereum `0x9faaea...e301ce`; ethereum `0x9fbc36...ffdc4c`; ethereum `0xa5f78b...ec066c`; ethereum `0xa8a3a5...a3eb48`; ethereum `0xb52b09...2aa8a9`; ethereum `0xbfc577...ed19de`; ethereum `0xd3bfd6...7b5641`; ethereum `0xdea736...a200e3`; ethereum `0xe72fe6...938cb9` | ✅ Audited |
| MultiChainLayerZeroTellerWithMultiAssetSupport | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x5cce6c...06be88`](./contracts/ethereum-1/0x5cce6cb6b4b62c020f0cfcdb95fcdf6ca706be88/); ethereum `0x97d0b9...3918b9`; ethereum `0x9ff67b...a14fbc`; ethereum `0xd567b6...63e851` | ✅ Audited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x074364...182f0b`](./contracts/ethereum-1/0x0743647a607822781f9d0a639454e76289182f0b/); ethereum `0x08eb2e...8a1d53`; ethereum `0x5d3fb4...1b54dd`; ethereum `0x685adb...160429`; ethereum `0x6ae187...52e0bf` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EETH | unknown | ethereum | unit-31065 | [`0x35fa16...118ac2`](./contracts/ethereum-1/0x35fa164735182de50811e8e2e824cfb9b6118ac2/) | ⚠️ Unaudited |
| WeETH | unknown | ethereum | unit-31066 | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

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
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | aging | Direct | contract_name | 5 | high |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 5 | high |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 31 | high |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | 2026-02 | fresh | Direct | contract_name | 5 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 27 | high |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | Zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | Zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=83

Zero-match audit list:

- [3937] 0xmacro-boring-vault-arctic-0.pdf
- [3938] 0xmacro-boring-vault-arctic-1.pdf
- [3940] pashov-hlp-controller:account.pdf
- [3942] pashov-one-to-one-queue.pdf
- [3946] zenith-one-to-one-queue.pdf
- [3947] zenith-withdraw-queue.pdf

Fork inheritance lineage and inherited audits are included when available.
