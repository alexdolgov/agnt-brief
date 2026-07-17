# Agentic Audit Brief: PRDT

## Project Overview

- Project: PRDT (`prdt`)
- Website: [https://prdt.finance](https://prdt.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.134Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc, ethereum, polygon
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $389,889.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 10 project-authored contract(s) across 3 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 10 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CPredictionFactory | unknown | polygon | n/a | [`0x24992f91cfaaae97cf0b09057a4c40dc644b0368`](./contracts/polygon-137/0x24992f91cfaaae97cf0b09057a4c40dc644b0368/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x00199e444155f6a06d74cf36315419d39b874f5c`](./contracts/bsc-56/0x00199e444155f6a06d74cf36315419d39b874f5c/) | ⚠️ Unaudited |
| PRDTFrontendHelper | unknown | bsc | n/a | [`0x301ab4a9bb432a1e034a4b92894d675e2e0ad4c2`](./contracts/bsc-56/0x301ab4a9bb432a1e034a4b92894d675e2e0ad4c2/) | ⚠️ Unaudited |
| PRDTMultipleU_V0 | unknown | polygon | n/a | [`0x7529b5550bbba74c095069dc5b370e460edb5a88`](./contracts/polygon-137/0x7529b5550bbba74c095069dc5b370e460edb5a88/) | ⚠️ Unaudited |
| PRDTToken | unknown | bsc | n/a | [`0x854b5f2bfcc5b7cd05d6259cf5d035af57cfa301`](./contracts/bsc-56/0x854b5f2bfcc5b7cd05d6259cf5d035af57cfa301/) | ⚠️ Unaudited |
| PredictionsContract | unknown | polygon | n/a | [`0x35af667afd82de3c224fcfca9a66d32b586f6d60`](./contracts/polygon-137/0x35af667afd82de3c224fcfca9a66d32b586f6d60/) | ⚠️ Unaudited |
| ProBalance | unknown | polygon | n/a | [`0x0b9c8c0a04354f41b985c10daf7db30bc66998f5`](./contracts/polygon-137/0x0b9c8c0a04354f41b985c10daf7db30bc66998f5/) | ⚠️ Unaudited |
| ProBalanceSecondary | unknown | polygon | n/a | [`0x3992a99134ae42b3be566b8b802388bf1785e0fb`](./contracts/polygon-137/0x3992a99134ae42b3be566b8b802388bf1785e0fb/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0xd9632d09518d940e307580dd1d7b4abd22a77dd4`](./contracts/ethereum-1/0xd9632d09518d940e307580dd1d7b4abd22a77dd4/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | [`0xd9632d09518d940e307580dd1d7b4abd22a77dd4`](./contracts/bsc-56/0xd9632d09518d940e307580dd1d7b4abd22a77dd4/) | ⚠️ Unaudited |
| SafeProxy | unknown | polygon | n/a | [`0xd9632d09518d940e307580dd1d7b4abd22a77dd4`](./contracts/polygon-137/0xd9632d09518d940e307580dd1d7b4abd22a77dd4/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/prdt-finance](https://skynet.certik.com/projects/prdt-finance) | CertiK | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x24992f91cfaaae97cf0b09057a4c40dc644b0368`](./contracts/polygon-137/0x24992f91cfaaae97cf0b09057a4c40dc644b0368/) | CPredictionFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x301ab4a9bb432a1e034a4b92894d675e2e0ad4c2`](./contracts/bsc-56/0x301ab4a9bb432a1e034a4b92894d675e2e0ad4c2/) | PRDTFrontendHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7529b5550bbba74c095069dc5b370e460edb5a88`](./contracts/polygon-137/0x7529b5550bbba74c095069dc5b370e460edb5a88/) | PRDTMultipleU_V0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x854b5f2bfcc5b7cd05d6259cf5d035af57cfa301`](./contracts/bsc-56/0x854b5f2bfcc5b7cd05d6259cf5d035af57cfa301/) | PRDTToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x35af667afd82de3c224fcfca9a66d32b586f6d60`](./contracts/polygon-137/0x35af667afd82de3c224fcfca9a66d32b586f6d60/) | PredictionsContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9c8c0a04354f41b985c10daf7db30bc66998f5`](./contracts/polygon-137/0x0b9c8c0a04354f41b985c10daf7db30bc66998f5/) | ProBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3992a99134ae42b3be566b8b802388bf1785e0fb`](./contracts/polygon-137/0x3992a99134ae42b3be566b8b802388bf1785e0fb/) | ProBalanceSecondary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20970] skynet.certik.com/projects/prdt-finance

Fork inheritance lineage and inherited audits are included when available.
