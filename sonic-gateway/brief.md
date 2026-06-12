# Agentic Audit Brief: Sonic Gateway

⚠️ Lifecycle status: DECLINING - TVL dropped 32.0% over 90 days

## Project Overview

- Project: Sonic Gateway (`sonic-gateway`)
- Website: [https://gateway.soniclabs.com/ethereum/sonic/s](https://gateway.soniclabs.com/ethereum/sonic/s)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-12T16:09:34.125Z
- Pipeline run: v2-pipeline-2026-06-12-c7aee3-9d35
- Chains: ethereum, sonic
- Contract surface: 9 unique implementations (17 raw deployments)
- DeFi Llama TVL: $45,448,524.34
- On-chain TVL (included contracts): $7,800,454.70
- TVL by chain: Ethereum $7,800,454.70

## Project Description

Sonic Gateway is Sonic's canonical bridge between Ethereum and Sonic, enabling users to deposit tokens on Ethereum and receive equivalent tokens on the Sonic network for cross-chain asset transfers.

### Architecture

The protocol consists of a single product family with one core proxy contract that delegates to a TokenDeposit implementation, with no additional supporting contracts or shared infrastructure identified.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 17
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $7,800,454.70
- Latest audit: 2018-06 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $7,800,454.70 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TokenDeposit | token | ethereum | 2 deployments: ethereum [`0xa1e248...3bec20`](./contracts/ethereum-1/0xa1e2481a9cd0cb0447eeb1cbc26f1b3fff3bec20/); ethereum `0xade2ef...94ade9` | ⚠️ Unaudited |
| Bridge | unknown | sonic | [`0x9ef762...c895b3`](./contracts/sonic-146/0x9ef7629f9b930168b76283add7120777b3c895b3/) | ⚠️ Unaudited |
| DirectExitAdministrator | operational_periphery | ethereum | [`0x739025...918329`](./contracts/ethereum-1/0x7390251bf35aa7ea7c196fc4750bd5d6c5918329/) | ⚠️ Unaudited |
| MessageBus | unknown | sonic | [`0xb5b371...925308`](./contracts/sonic-146/0xb5b371b75f9850ddd6ccb6c436db54972a925308/) | ⚠️ Unaudited |
| MPTProofVerifier | unknown | ethereum | 2 deployments: ethereum [`0x921b14...3e9306`](./contracts/ethereum-1/0x921b147a90ef738bbb7c2c89d88ea9d8af3e9306/); sonic `0xd2f1e9...5d29a9` | ⚠️ Unaudited |
| StateOracle | unknown | sonic | 2 deployments: ethereum `0xb7e8cc...2ded7f`; sonic [`0x836664...28f2c3`](./contracts/sonic-146/0x836664b0c0cb29b7877bccf94159cc996528f2c3/) | ⚠️ Unaudited |
| TokenPairs | registry | sonic | 3 deployments: ethereum `0x68a4dd...5dd8c7`; ethereum `0xf2b151...7193e4`; sonic [`0x134e4c...00ba94`](./contracts/sonic-146/0x134e4c207ad5a13549de1ebf8d43c1f49b00ba94/) | ⚠️ Unaudited |
| UpdateManager | governance | sonic | 3 deployments: ethereum `0x50c42d...f2634b`; ethereum `0xb0becf...d62da4`; sonic [`0x1d3c99...176bb7`](./contracts/sonic-146/0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7/) | ⚠️ Unaudited |
| ValidatorsRegistry | unknown | sonic | 2 deployments: ethereum `0x729650...d4d910`; sonic [`0x12727d...d3f447`](./contracts/sonic-146/0x12727d4169a42a9b5e3ecb11a6d2c95553d3f447/) | ⚠️ Unaudited |

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
| [fantom-audit-first.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-first.pdf) | unknown | Audit | 2018-06 | stale | Direct | n/a | 0 | n/a |
| [fantom-audit-second.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-second.pdf) | unknown | Audit | 2018-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11677] fantom-audit-first.pdf
- [11678] fantom-audit-second.pdf

Fork inheritance lineage and inherited audits are included when available.
