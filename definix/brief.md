# Agentic Audit Brief: Definix

## Project Overview

- Project: Definix (`definix`)
- Website: [https://definix.com/en](https://definix.com/en)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.874Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $374,666.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 8 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 8 contract(s).

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/7 (85.7%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/8
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Techrate | Tier 2 | 6 | 75.0% | 2021-04 |
| CertiK | Tier 2 | 5 | 62.5% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Apollo | unknown | bsc | n/a | [`0x1b4aec66ef4f942da16845d22ce2656d759d0a15`](./contracts/bsc-56/0x1b4aec66ef4f942da16845d22ce2656d759d0a15/) | ✅ Audited |
| DefinixFactory | unknown | bsc | n/a | [`0x43ebb0cb9bd53a3ed928dd662095ace1cef92d19`](./contracts/bsc-56/0x43ebb0cb9bd53a3ed928dd662095ace1cef92d19/) | ✅ Audited |
| DefinixRouter | unknown | bsc | n/a | [`0x151030a9fa62fbb202eee50bd4a4057ab9e826ad`](./contracts/bsc-56/0x151030a9fa62fbb202eee50bd4a4057ab9e826ad/) | ✅ Audited |
| FinixToken | unknown | bsc | n/a | [`0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d`](./contracts/bsc-56/0x0f02b1f5af54e04fb6dd6550f009ac2429c4e30d/) | ✅ Audited |
| FlameKeeper | unknown | bsc | n/a | [`0xfaaa404735f33cdab5eae2fddfd375b92399853f`](./contracts/bsc-56/0xfaaa404735f33cdab5eae2fddfd375b92399853f/) | ✅ Audited |
| Herodotus | unknown | bsc | n/a | [`0x6b51e8fdc32ead0b837deb334fcb79e24f3b105a`](./contracts/bsc-56/0x6b51e8fdc32ead0b837deb334fcb79e24f3b105a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SIXToken | unknown | bsc | n/a | [`0x070a9867ea49ce7afc4505817204860e823489fe`](./contracts/bsc-56/0x070a9867ea49ce7afc4505817204860e823489fe/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | [`0x967bef27c509fa0772c10d59f47236a2d304cbfe`](./contracts/bsc-56/0x967bef27c509fa0772c10d59f47236a2d304cbfe/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/sixnetwork) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_Definix_Core_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | 1 | high |
| [REP-Six_Network_Definix_Periphery-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_Definix_Periphery-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | 1 | high |
| [REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_LP_Farm_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | 3 | high |
| [REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Certik/REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf) | CertiK | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [The Six Network-24_04_2021.pdf](https://github.com/thesixnetwork/definix-audit/blob/main/Techrate/The%20Six%20Network-24_04_2021.pdf) | Techrate | Audit | 2021-04 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x070a9867ea49ce7afc4505817204860e823489fe`](./contracts/bsc-56/0x070a9867ea49ce7afc4505817204860e823489fe/) | SIXToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=11

Zero-match audit list:

- [19679] DL audit link
- [19683] REP-Six_Network_SixSwap_Contracts-22_04_2021.pdf

Fork inheritance lineage and inherited audits are included when available.
