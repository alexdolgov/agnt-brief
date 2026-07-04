# Agentic Audit Brief: Nucleus

## Project Overview

- Project: Nucleus (`nucleus`)
- Website: [https://www.nucleusearn.io](https://www.nucleusearn.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.839Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 7 unique implementations (36 raw deployments)
- DeFi Llama TVL: $23,883,431.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 139 project-authored contract(s) across 1 chain(s); 15 ERC20 tokens, 7 ERC721 NFTs, 6 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 5 functional families. Its contracts share 27 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, erc1967upgradeupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 36 (36 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/6 (50.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/7
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 36
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 5 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 3 | 42.9% | 2024-04 |
| Pashov Audit Group | Tier 2 | 3 | 42.9% | 2026-03 |
| Spearbit | Tier 1 | 2 | 28.6% | 2024-04 |
| Zenith | Tier 2 | 2 | 28.6% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x603583...7a04cb`](./contracts/ethereum-1/0x6035832f65b0cf20064681505b73a6de307a04cb/); ethereum `0x8c1902...926dfd` | ✅ Audited |
| BoringVault | core_logic | ethereum | n/a | 22 deployments: ethereum [`0x11113f...9ee94b`](./contracts/ethereum-1/0x11113ff3a60c2450f4b22515cb760417259ee94b/); ethereum `0x170d84...c933a0`; ethereum `0x196ead...bd3dcc`; ethereum `0x19e099...3c0b32`; ethereum `0x52e4d8...07a0d1`; ethereum `0x593ccc...6388db`; ethereum `0x5d82ac...8d47a2`; ethereum `0x64ab17...afb855`; ethereum `0x66e47e...4d831a`; ethereum `0x6c5874...f7fd76`; ethereum `0x722a85...1f883b`; ethereum `0x82c40e...c7cab4`; ethereum `0x9ed153...775f22`; ethereum `0x9faaea...e301ce`; ethereum `0x9fbc36...ffdc4c`; ethereum `0xa5f78b...ec066c`; ethereum `0xa8a3a5...a3eb48`; ethereum `0xb52b09...2aa8a9`; ethereum `0xbfc577...ed19de`; ethereum `0xd3bfd6...7b5641`; ethereum `0xdea736...a200e3`; ethereum `0xe72fe6...938cb9` | ✅ Audited |
| MultiChainLayerZeroTellerWithMultiAssetSupport | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x5cce6c...06be88`](./contracts/ethereum-1/0x5cce6cb6b4b62c020f0cfcdb95fcdf6ca706be88/); ethereum `0x97d0b9...3918b9`; ethereum `0x9ff67b...a14fbc`; ethereum `0xd567b6...63e851` | ✅ Audited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x074364...182f0b`](./contracts/ethereum-1/0x0743647a607822781f9d0a639454e76289182f0b/); ethereum `0x08eb2e...8a1d53`; ethereum `0x5d3fb4...1b54dd`; ethereum `0x685adb...160429`; ethereum `0x6ae187...52e0bf` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EETH | unknown | ethereum | n/a | [`0x35fa16...118ac2`](./contracts/ethereum-1/0x35fa164735182de50811e8e2e824cfb9b6118ac2/) | ⚠️ Unaudited |
| WeETH | unknown | ethereum | n/a | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
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
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | 29 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 3 | n/a |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | 2026-02 | fresh | Direct | contract_name | 1 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | Zenith | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | Zenith | Audit | 2026-01 | fresh | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x35fa16...118ac2`](./contracts/ethereum-1/0x35fa164735182de50811e8e2e824cfb9b6118ac2/) | EETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | WeETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=10, extraction_exact=29

Zero-match audit list:

- [3938] 0xmacro-boring-vault-arctic-1.pdf
- [3940] pashov-hlp-controller:account.pdf
- [3942] pashov-one-to-one-queue.pdf
- [3946] zenith-one-to-one-queue.pdf

Fork inheritance lineage and inherited audits are included when available.
