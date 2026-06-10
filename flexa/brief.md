# Agentic Audit Brief: Flexa

⚠️ Lifecycle status: DECLINING - TVL dropped 70.6% over 90 days

## Project Overview

- Project: Flexa (`flexa`)
- Website: [https://amp.xyz/](https://amp.xyz/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T20:59:04.011Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $1,365,895.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Flexa is a payments-focused protocol built around Amp (AMP) as its core collateral token. The Flexa/Amp system uses collateralization to support payment settlement and merchant payment acceptance; AMP should be treated as the protocol's collateral token rather than as an unrelated upstream governance or staking component. Claims that Flexa is a collateralized stablecoin borrowing protocol, synthetic asset minting system, vault product, BAC/ARCx pool, or yield-staking protocol should be removed unless separately verified from Flexa documentation.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-08 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: 100.0% (Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 2 | 100.0% | 2020-08 |
| unknown | Tier 2 | 2 | 100.0% | 2020-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Amp | unknown | ethereum | [`0xff2081...1095c2`](./contracts/ethereum-1/0xff20817765cb7f73d4bde2e66e067e58d11095c2/) | ✅ Audited |
| FlexaCollateralManager | governance | ethereum | [`0x706d7f...e7c578`](./contracts/ethereum-1/0x706d7f8b3445d8dfc790c524e3990ef014e7c578/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [DL audit link](https://diligence.security/audits/2020/06/amp) | unknown | Audit | 2020-06 | stale | Direct | contract_name | 2 | high |
| [amp.pdf](https://github.com/trailofbits/publications/blob/master/reviews/amp.pdf) | Trail of Bits | Audit | 2020-08 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
