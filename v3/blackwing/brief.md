# Agentic Audit Brief: Blackwing

## Project Overview

- Project: Blackwing (`blackwing`)
- Website: [https://blackwing.fi/](https://blackwing.fi/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:35.827Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $768,964.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 5 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 5 contract(s).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlackwingNoopDeployer | unknown | ethereum | n/a | [`0x3b7df0...b1c04f`](./contracts/ethereum-1/0x3b7df0cd432c8f3b01b969ad8d2a2a1405b1c04f/) | ⚠️ Unaudited |
| BlackwingVault | unknown | ethereum | n/a | [`0xa92299...fab37d`](./contracts/ethereum-1/0xa92299289361fdcbb4ce9acbb512a84bd5fab37d/) | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | ethereum | n/a | [`0x010bd3...845ec7`](./contracts/ethereum-1/0x010bd3cfe12cd3f57b7b0dcf23a7a8eb26845ec7/) | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | ethereum | n/a | [`0xd81036...29eab4`](./contracts/ethereum-1/0xd810362556296c834e30c9a61d8e21a5cf29eab4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x761b2c...efb78f`](./contracts/arbitrum-42161/0x761b2ccdd37ef1cac84f8728687a5248c9efb78f/) | ⚠️ Unaudited |

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
| [ottersec-evm-vault.pdf](https://raw.githubusercontent.com/ferumlabs/public-contracts/main/audits/ottersec-evm-vault.pdf) | OtterSec | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [zellic-evm-vault.pdf](https://raw.githubusercontent.com/ferumlabs/public-contracts/main/audits/zellic-evm-vault.pdf) | Zellic | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [ottersec.pdf](https://raw.githubusercontent.com/ferumlabs/evm-contracts/main/audits/ottersec.pdf) | OtterSec | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [zellic.pdf](https://raw.githubusercontent.com/ferumlabs/evm-contracts/main/audits/zellic.pdf) | Zellic | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21345] ottersec-evm-vault.pdf
- [21346] zellic-evm-vault.pdf
- [21347] ottersec.pdf
- [21348] zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
