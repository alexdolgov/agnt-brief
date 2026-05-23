# Agentic Audit Brief: Easedefi.org

## Project Overview

- Project: Easedefi.org (`easedefi.org`)
- Website: [https://easedefi.org](https://easedefi.org)
- Lifecycle: active (Tier 0, 66.3% below peak)
- Generated: 2026-05-23T21:08:55.510Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $4,423,066.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Easedefi.org is a decentralized insurance protocol on Ethereum that allows users to purchase coverage for smart contract risks. It uses a vault-based model where premiums are pooled and claims are assessed and paid out according to predefined rules.

### Architecture

The protocol consists of a single product family centered around the arNXMVault, which is deployed behind an OwnedUpgradeabilityProxy for upgradeability. All insurance logic, including premium collection and claim payouts, is handled within this vault contract.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| arNXMVault | core_logic | ethereum | [`0x1337de...593fc4`](./contracts/ethereum-1/0x1337def1fc06783d4b03cb8c1bf3ebf7d0593fc4/) | ⚠️ Unaudited |

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
| [Dedaub_RCA_Audit.pdf](https://github.com/EaseDeFi/Audits/blob/main/Dedaub_RCA_Audit.pdf) | Dedaub | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Ease_21062022_SCAudit_Report2 2.pdf](https://github.com/EaseDeFi/gvToken/blob/main/audits/Ease_21062022_SCAudit_Report2%202.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Ease_gvToken_audit.pdf](https://github.com/EaseDeFi/gvToken/blob/main/audits/Ease_gvToken_audit.pdf) | unknown | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1337de...593fc4`](./contracts/ethereum-1/0x1337def1fc06783d4b03cb8c1bf3ebf7d0593fc4/) | arNXMVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2584] Dedaub_RCA_Audit.pdf
- [2585] Ease_21062022_SCAudit_Report2 2.pdf
- [2586] Ease_gvToken_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
