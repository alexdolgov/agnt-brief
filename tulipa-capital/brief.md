# Agentic Audit Brief: Tulipa Capital

## Project Overview

- Project: Tulipa Capital (`tulipa-capital`)
- Website: [https://www.tulipa.capital](https://www.tulipa.capital)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.514Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base, berachain, ethereum
- Contract surface: 6 unique implementations (10 raw deployments)
- DeFi Llama TVL: $39,008,576.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Risk Curators. Structurally: 7 project-authored contract(s) across 2 chain(s); 3 ERC4626 vaults, 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 8 contract(s).

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 10
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x699e04...976490`](./contracts/ethereum-1/0x699e04f98de2fc395a7dcbf36b48ec837a976490/); ethereum `0x6bf340...1c3ddf` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | [`0x3b028b...73f228`](./contracts/ethereum-1/0x3b028b4b6c567ef5f8ca1144da4fbaa0d973f228/) | ⚠️ Unaudited |
| EVault | core_logic | berachain | n/a | [`0xe932da...54c444`](./contracts/berachain-80094/0xe932da5a4d00536c224f8153f299cdcd8054c444/) | ⚠️ Unaudited |
| LendingVault | core_logic | base | n/a | [`0x61a860...ae47d4`](./contracts/base-8453/0x61a8606e04d350dfa1d1aaa68b37260746ae47d4/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x7895a0...6f6396`](./contracts/ethereum-1/0x7895a046b26cc07272b022a0c9bafc046e6f6396/); ethereum `0x7a12d4...37e428`; ethereum `0x936fac...d81bc7`; ethereum `0xce0b79...b574f3` | ⚠️ Unaudited |
| Vault | core_logic | base | n/a | [`0xee6a60...c8b150`](./contracts/base-8453/0xee6a60be216058afd7a0643795b4f1e197c8b150/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x699e04...976490`](./contracts/ethereum-1/0x699e04f98de2fc395a7dcbf36b48ec837a976490/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b028b...73f228`](./contracts/ethereum-1/0x3b028b4b6c567ef5f8ca1144da4fbaa0d973f228/) | EVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xe932da...54c444`](./contracts/berachain-80094/0xe932da5a4d00536c224f8153f299cdcd8054c444/) | EVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x61a860...ae47d4`](./contracts/base-8453/0x61a8606e04d350dfa1d1aaa68b37260746ae47d4/) | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7895a0...6f6396`](./contracts/ethereum-1/0x7895a046b26cc07272b022a0c9bafc046e6f6396/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xee6a60...c8b150`](./contracts/base-8453/0xee6a60be216058afd7a0643795b4f1e197c8b150/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
