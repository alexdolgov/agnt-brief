# Agentic Audit Brief: Re7 Labs

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

- Project: Re7 Labs (`re7-labs`)
- Website: [https://www.re7labs.xyz](https://www.re7labs.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, berachain, bsc, ethereum, linea, optimism, plasma, polygon, sonic, unichain
- Contract surface: 16 unique implementations (57 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $81,853,990.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Re7 Labs in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 57
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

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 10 deployments: ethereum `0x117576...bfa866`; ethereum `0x586719...1193e8`; ethereum `0x631d8e...634de8`; ethereum `0x82c710...7f86fa`; ethereum `0x8dde38...44dc4c`; ethereum `0xa992d3...f737af`; ethereum `0xac73ef...b70eda`; ethereum `0xbd9a87...36e0cb`; ethereum `0xce45ef...7873de`; ethereum `0xe3b66c...126760` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x81698f...df0af0`; ethereum `0x9437b2...f72003`; ethereum `0xe86399...a04433` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xd8b0f4...99c940` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x3a828c...45b4c7`; ethereum `0x7f43fd...9ce444`; ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| MetaMorpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: ethereum `0x78fc2c...d094d0`; ethereum `0x95eef5...be01a8`; ethereum `0xa02f5e...a772f7`; ethereum `0xe0c986...823763`; base `0x12afde...70406e`; base `0x6e37c9...7a001b`; base `0xa2cac0...203afc` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: ethereum `0x341193...bd0dda`; ethereum `0x4d5254...c4acfe`; ethereum `0x64964e...1aeb8e`; unichain `0x2c0f7e...10858c`; unichain `0x6af5e4...c26e52`; unichain `0xa48f8a...50f8cd`; polygon `0xf91d80...2c1c69`; base `0x00dfdb...9fb330` | ⚠️ Unaudited |
| MRe7BtcDepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5e1549...0e47f6` | ⚠️ Unaudited |
| MRe7BtcRedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4fd4dd...4321b0` | ⚠️ Unaudited |
| MRe7DepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xce0a29...924ac7` | ⚠️ Unaudited |
| MRe7RedemptionVaultWithSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5356b8...565234` | ⚠️ Unaudited |
| MultiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 7 | ethereum | n/a | 7 deployments: ethereum `0x2759e4...8f2faf`; ethereum `0x4c690c...3c48d6`; ethereum `0x617895...0ad40c`; ethereum `0x62f0ba...3e041c`; ethereum `0x7a4eff...327e3a`; ethereum `0x84631c...a9f93a`; ethereum `0x8b0e80...32a2e8` | ⚠️ Unaudited |
| NetworkRestakeDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde43da...e51da0` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ba156...62be65` | ⚠️ Unaudited |
| SymbioticWithdrawalQueue | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbac961...09900e` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x35e44d...e75fe7`; ethereum `0x3d93b3...cdd46e` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x044472...042122`; ethereum `0x1ce235...3da446`; ethereum `0x5181cd...4643ae`; ethereum `0x787fc6...af7af9`; optimism `0x3d6393...79dd76`; base `0x0b7ee8...171d25`; base `0x618495...b07b9b`; base `0xc9c474...ead645`; base `0xca120d...8edec4` | ⚠️ Unaudited |

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
| native | 10 |
| upstream | 3 |
| standard_library | 3 |
| needs_review | 0 |

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
