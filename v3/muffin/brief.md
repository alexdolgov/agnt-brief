# Agentic Audit Brief: Muffin

## Project Overview

- Project: Muffin (`muffin`)
- Website: [https://muffin.fi/](https://muffin.fi/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:31.898Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $106,215.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; built on solmate.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (muffinhubbase). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Lens | unknown | ethereum | n/a | [`0xaa7d5b...7de935`](./contracts/ethereum-1/0xaa7d5bdf76f6143f200f6f2d831bb049a37de935/) | ⚠️ Unaudited |
| Manager | unknown | ethereum | n/a | [`0xa9a03f...f35077`](./contracts/ethereum-1/0xa9a03ff1bac0f600cbb4e1e788fd924a43f35077/) | ⚠️ Unaudited |
| MuffinHubPositions | unknown | ethereum | n/a | [`0x5dd244...32a858`](./contracts/ethereum-1/0x5dd2444a17edc079210077924906d5bdf432a858/) | ⚠️ Unaudited |
| MuffinMigrator | unknown | ethereum | n/a | [`0xa74cc5...cee785`](./contracts/ethereum-1/0xa74cc5c431531bf2601250c52825dc7b3dcee785/) | ⚠️ Unaudited |

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
| [ABDK (Core contracts)](https://resources.muffin.fi/files/audits/ABDK_Muffin_Core_v_2_0.pdf) | ABDK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ABDK (Periphery contracts)](https://resources.muffin.fi/files/audits/ABDK_Muffin_Periphery_v_1_0.pdf) | ABDK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Dedaub (Core + periphery contracts)](https://resources.muffin.fi/files/audits/Deduab-Muffin-Audit-Report.pdf) | Dedaub | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield (Core + periphery contracts)](https://resources.muffin.fi/files/audits/PeckShield-Audit-Report-Muffin-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24252] ABDK (Core contracts)
- [24253] ABDK (Periphery contracts)
- [24254] Dedaub (Core + periphery contracts)
- [24255] PeckShield (Core + periphery contracts)

Fork inheritance lineage and inherited audits are included when available.
