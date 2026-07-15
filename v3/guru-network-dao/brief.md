# Agentic Audit Brief: Guru Network DAO

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Guru Network DAO (`guru-network-dao`)
- Website: [https://ftm.guru/](https://ftm.guru/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, fantom, kava, metis, polygon, sepolia, sonic
- Contract surface: 53 unique implementations (86 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,700,277.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Guru Network DAO in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 53
- Raw deployments: 86
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

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| aera_farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x6c39ff...b93264` | ⚠️ Unaudited |
| AERA_Layer1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x63d73d...28f88c` | ⚠️ Unaudited |
| AerariumMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x5c652a...ecf1fc` | ⚠️ Unaudited |
| ContractChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x869c20...c56c36` | ⚠️ Unaudited |
| elCHR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd600ec...eaa134` | ⚠️ Unaudited |
| elCHR_Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88c321...be7db1` | ⚠️ Unaudited |
| ElitenessERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x7898a0...0ceb08`; polygon `0xcc1eff...5fee93` | ⚠️ Unaudited |
| eLOCKS | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xc6b515...d5abc0` | ⚠️ Unaudited |
| elToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfab311...fa888b` | ⚠️ Unaudited |
| elToken_Depositor | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x2696f9...4b9ce7`; polygon `0xcc835d...2b8fca`; polygon `0xd600ec...eaa134`; polygon `0xdf4869...1be136` | ⚠️ Unaudited |
| elTokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x30e118...2f480c`; polygon `0x4046c4...0a40c4`; arbitrum `0x7be024...101eab`; arbitrum `0x861fe2...5811c7` | ⚠️ Unaudited |
| elTokenRedeemVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39cc81...b1d91c` | ⚠️ Unaudited |
| FertilizerGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbb2b0...ffa009` | ⚠️ Unaudited |
| Granary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xf060c8...3b8069` | ⚠️ Unaudited |
| GuruMultiRewardFarmland | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: polygon `0xc4c807...1362b4`; metis `0xa0edd9...0350e9`; arbitrum `0x2696f9...4b9ce7`; arbitrum `0x64532e...285d08`; arbitrum `0xcc835d...2b8fca`; arbitrum `0xdf4869...1be136`; avalanche `0xdf4869...1be136` | ⚠️ Unaudited |
| JoeDexLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x16162d...60f0e8`; base `0x783f86...6c8589` | ⚠️ Unaudited |
| LBFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8597db...a0e57b`; arbitrum `0x8597db...a0e57b` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0a129c...f8e146`; arbitrum `0x0a129c...f8e146` | ⚠️ Unaudited |
| LBRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xb9a64a...a450d5`; arbitrum `0xb9a64a...a450d5` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xafbe3b...492295` | ⚠️ Unaudited |
| oTokenToElToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3979d8...f55b97` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b7faf...8ebd27` | ⚠️ Unaudited |
| pvl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb264c9...b2e198` | ⚠️ Unaudited |
| ScaleAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x068f96...582a53` | ⚠️ Unaudited |
| tvlGuru | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: polygon `0x18c7ad...68845a`; metis `0x50dcc6...6be895`; base `0x7a18d1...1c2779`; arbitrum `0xfab311...fa888b`; avalanche `0xfab311...fa888b` | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x52ce71...18546b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05bf8a...6a1c7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x123136...6d16c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x345551...e0cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37c140...220423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3df3e6...c036bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x41c4d6...89a7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c00ba...c9bf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x702e5d...f033b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b7faf...8ebd27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb264c9...b2e198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5687a...287761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8207c...2716d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd1430...ec6680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd32353...0170a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfae2e...08cb65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 13 deployments: fantom `0x0786c3...c6dcad`; fantom `0x0a558d...215b3c`; fantom `0x2f20a6...a907ad`; fantom `0x35402c...21de08`; fantom `0x426a4a...17eaa9`; fantom `0x8597db...a0e57b`; fantom `0xa254bf...a4f14b`; fantom `0xb6633c...656b1e`; fantom `0xe345a5...a9c117`; fantom `0xf43cc2...3a1882`; fantom `0xfaa22e...287b27`; kava `0x86e4d9...2a7300`; kava `0x9d9682...4663fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63d73d...28f88c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x650078...12885f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb62f60...510fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc851f6...448d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9751a...8c11f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18c7ad...68845a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4c807...1362b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9751a...8c11f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc295f6...197250` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387178 | `0x449e8d...06f723` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-387182 | `0xc28611...469467` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
