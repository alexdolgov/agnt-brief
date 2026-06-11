# Agentic Audit Brief: Verus Market

⚠️ Lifecycle status: DECLINING - TVL dropped 52.9% over 90 days

## Project Overview

- Project: Verus Market (`verus-market`)
- Website: [https://eth.verusbridge.io/](https://eth.verusbridge.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T03:59:08.605Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-7b75
- Chains: ethereum
- Contract surface: 32 unique implementations (32 raw deployments)
- DeFi Llama TVL: $9,647,253.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Verus Market is a DefiLlama-listed decentralized exchange (DEX) on the Verus chain. Separately, multiple Ethereum contracts are associated or suspected in the available contract surface, including VerusProof and NotarizationSerializer, but their roles should be treated as verifier/support/unknown infrastructure unless independently verified. The current evidence does not support describing the product as an Ethereum DEX or as a single-proxy contract family.

### Architecture

The protocol consists of a single product family with one proxy contract; no shared infrastructure or inter-family relationships are present.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xa045cf963b79833faf445f555ee1a6812d6fc87f) | proxy | ethereum | `0x715185...cd7f63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1cc501...562b9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39ee9c...b2d512` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a3017...4d2888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a8bd9...093646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x40ec84...400aae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f8666...0dce15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5355ca...2e91ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56b88c...afc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a1d5b...9cc069` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6aff72...20e8e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x709afa...88eb8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x794944...4dc89a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f70d1...e3b79c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x90dee0...50f3e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x918d6f...983ffb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x972d75...7e8979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x99587c...d7e100` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa274b8...690dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb95b7f...ec2ccd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc706df...bb70e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd2d809...4f5997` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8c203...171f98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdac256...038b9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc7f78...91ddde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdecdc7...86cc7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdfd901...adad7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2a711...32598e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9bd85...51dca7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec8da8...dcb3e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa6cf9...ca78e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfbf982...c1da20` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
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
