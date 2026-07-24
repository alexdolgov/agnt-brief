# Agentic Audit Brief: TokenPocket

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: TokenPocket (`tokenpocket`)
- Website: [https://dapp.tokenpocket.pro/StakeVault/#/](https://dapp.tokenpocket.pro/StakeVault/#/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 24 unique implementations (24 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $157,282.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for TokenPocket in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xacba4cfe7f30e64da787c6dc7dc34f623570e758`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 24 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 24
- Raw deployments: 24
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BKSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121ca6a8079179678aef599d63449c6a9f3fdf7c` | ⚠️ Unaudited |
| BMRToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6df049c9471730e20a90f621db4df2b168b0e92` | ⚠️ Unaudited |
| ContractChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde858e297969f9981e65ae3c73e65f87ad8b8e2d` | ⚠️ Unaudited |
| ERC20TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9b6885d0af9914d432871dcbeb20daa8282a763` | ⚠️ Unaudited |
| EWSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7737361b538841a7157cafe5e932b27eac42f90` | ⚠️ Unaudited |
| KTToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x335a763df5bbcabd501303a9d8201cba0746e617` | ⚠️ Unaudited |
| KWToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x270d32dc8b6ac374ffef0da958a16fe48e0ebbe9` | ⚠️ Unaudited |
| RSPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc79e5ecbfb64cb292c71267731d4ef8f9b6fed3` | ⚠️ Unaudited |
| TPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4161725d019690a3e0de50f6be67b07a86a9fae1` | ⚠️ Unaudited |
| UWSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96959522effd18da0238fbbe1bc97aff2fded05` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16bcb74b499f556dade7d5e7bdda3fd1c45d8dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ba03c98fee1f538ff158766c2870196198e8e1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b27417d971d6aec8a8406143c507095f729bff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f329b64df7aa39f108e068a5a8bfd3728962bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6418c5674d2388e79d30c5cab2fd398b5be24b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x722a2eeea56b6ad4eecffff444dc116490a4b4bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea7948df73aa35f0c4f772d334be42c5ab8acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9970b0545c5f3a54987e192756d14beae78774c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394090 | `0xacba4cfe7f30e64da787c6dc7dc34f623570e758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae09a943f947da4cf9534f0a852cbae635560f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d07a45b4b8a8165cb996837a8096d08dbe0033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde3653589c56570f0cea125f7b0fe2d438033e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6b3b7222922473473bbbc2aa6b574e0da5d8a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee5dd6c3d57207d08ce090b62d34d67620ed44a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 13
- Live contracts: 0
- Unknown liveness contracts: 13
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=13

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x16bcb74b499f556dade7d5e7bdda3fd1c45d8dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x74f85fe5538dbfcf3b46399e121c3ba83f695f91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x722a2eeea56b6ad4eecffff444dc116490a4b4bc` | non_address_book | unknown | unknown | unverified | n/a | `0x74f85fe5538dbfcf3b46399e121c3ba83f695f91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae09a943f947da4cf9534f0a852cbae635560f03` | non_address_book | unknown | unknown | unverified | n/a | `0x74f85fe5538dbfcf3b46399e121c3ba83f695f91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xde3653589c56570f0cea125f7b0fe2d438033e25` | non_address_book | unknown | unknown | unverified | n/a | `0x74f85fe5538dbfcf3b46399e121c3ba83f695f91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6b3b7222922473473bbbc2aa6b574e0da5d8a62` | non_address_book | unknown | unknown | unverified | n/a | `0x74f85fe5538dbfcf3b46399e121c3ba83f695f91` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ba03c98fee1f538ff158766c2870196198e8e1d` | non_address_book | unknown | unknown | unverified | n/a | `0xfeef622fd1e5a2d68c78e5e5323db6799bd407f2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b27417d971d6aec8a8406143c507095f729bff0` | non_address_book | unknown | unknown | unverified | n/a | `0xfeef622fd1e5a2d68c78e5e5323db6799bd407f2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f329b64df7aa39f108e068a5a8bfd3728962bc1` | non_address_book | unknown | unknown | unverified | n/a | `0xfeef622fd1e5a2d68c78e5e5323db6799bd407f2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6418c5674d2388e79d30c5cab2fd398b5be24b3b` | non_address_book | unknown | unknown | unverified | n/a | `0xfeef622fd1e5a2d68c78e5e5323db6799bd407f2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89ea7948df73aa35f0c4f772d334be42c5ab8acf` | non_address_book | unknown | unknown | unverified | n/a | `0xfeef622fd1e5a2d68c78e5e5323db6799bd407f2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9970b0545c5f3a54987e192756d14beae78774c0` | non_address_book | unknown | unknown | unverified | n/a | `0xfeef622fd1e5a2d68c78e5e5323db6799bd407f2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6d07a45b4b8a8165cb996837a8096d08dbe0033` | non_address_book | unknown | unknown | unverified | n/a | `0xfeef622fd1e5a2d68c78e5e5323db6799bd407f2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeee5dd6c3d57207d08ce090b62d34d67620ed44a` | non_address_book | unknown | unknown | unverified | n/a | `0xfeef622fd1e5a2d68c78e5e5323db6799bd407f2` |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

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
