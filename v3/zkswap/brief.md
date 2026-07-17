# Agentic Audit Brief: ZKSwap

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

- Project: ZKSwap (`zkswap`)
- Website: [https://www.zkswap.finance/](https://www.zkswap.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, zksync-era
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $126,286.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for ZKSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1191bfc116fede5dd0b6e83fac7b0031d07a0df6`, chain 324)
- UnnamedContract (`0x12c944515f766baa62fd334efda6bdbd799adf4f`, chain 324)
- UnnamedContract (`0x386befa6a54f9685ae85871aa47056891d63c54c`, chain 324)
- UnnamedContract (`0x3b3393ed6b51a8c130598558526c7bbb26da415b`, chain 324)
- UnnamedContract (`0x40ad8e452b87381adb6c088fb80173b80752ed65`, chain 324)
- UnnamedContract (`0x4305cf9f4ad5427d6614e7207803e2426497917a`, chain 324)
- UnnamedContract (`0x58d8dd00b25f6557698d37784029f736c63f3c11`, chain 324)
- UnnamedContract (`0x61278adbbe823dd30675248e78f34e90c648ea9b`, chain 324)
- UnnamedContract (`0x63d8e785df53a18d1282c9400c6c5cd57c8f19fc`, chain 324)
- UnnamedContract (`0x6521385ce3bf30de58e402e5aed567b436736a75`, chain 324)
- UnnamedContract (`0x74394479510834e1f1bf2ad91b30383505745228`, chain 324)
- UnnamedContract (`0x79354d5bf9dcda1d06fa555c240f3f1573f1eaf4`, chain 324)
- UnnamedContract (`0x80190359df6adcc017b38372bf4c20884b0d8c75`, chain 324)
- UnnamedContract (`0x97f03b2f6246da8ff336f37ad3b047f7c3f74e59`, chain 324)
- UnnamedContract (`0xabca8cfdfa2a4285a4704bf960fb45e49821762f`, chain 324)
- UnnamedContract (`0xae3af55a2c589421f6693b6afca11d9a5ca34783`, chain 324)
- UnnamedContract (`0xc824f2cce71350cc5ece6c699c72baba75103907`, chain 324)
- UnnamedContract (`0xc9e2c117163ac4f85ac244bd4042a56d86756900`, chain 324)
- UnnamedContract (`0xce043a95f415d7873585e92904ea11955ba38fe5`, chain 324)
- UnnamedContract (`0xdbe9b7a13d744a880f417ee378fcff3d3fe5ba52`, chain 324)
- UnnamedContract (`0xff16eaec9047eaefd32b3a308057ff21ccf5cf22`, chain 324)
- UnnamedContract (`0xffdef45585b57e294487c72f01043d5dee3f069f`, chain 324)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 22 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 3 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 22 of 25 unique; 3 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 25
- Raw deployments: 25
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x02ecef526f806f06357659ffd14834fe82ef4b04` | ⚠️ Unaudited |
| ZksToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4815ae53b124e7263f08dcdbbb757d41ed658c6` | ⚠️ Unaudited |
| ZkSync | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6de5bdc580f55bc9dacafcb67b91674040a247e3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263872 | `0x1191bfc116fede5dd0b6e83fac7b0031d07a0df6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263873 | `0x12c944515f766baa62fd334efda6bdbd799adf4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263874 | `0x386befa6a54f9685ae85871aa47056891d63c54c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263875 | `0x3b3393ed6b51a8c130598558526c7bbb26da415b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263876 | `0x40ad8e452b87381adb6c088fb80173b80752ed65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263877 | `0x4305cf9f4ad5427d6614e7207803e2426497917a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263878 | `0x58d8dd00b25f6557698d37784029f736c63f3c11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263879 | `0x61278adbbe823dd30675248e78f34e90c648ea9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263880 | `0x63d8e785df53a18d1282c9400c6c5cd57c8f19fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263881 | `0x6521385ce3bf30de58e402e5aed567b436736a75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263882 | `0x74394479510834e1f1bf2ad91b30383505745228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263883 | `0x79354d5bf9dcda1d06fa555c240f3f1573f1eaf4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263884 | `0x80190359df6adcc017b38372bf4c20884b0d8c75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263885 | `0x97f03b2f6246da8ff336f37ad3b047f7c3f74e59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263886 | `0xabca8cfdfa2a4285a4704bf960fb45e49821762f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263887 | `0xae3af55a2c589421f6693b6afca11d9a5ca34783` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263888 | `0xc824f2cce71350cc5ece6c699c72baba75103907` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263889 | `0xc9e2c117163ac4f85ac244bd4042a56d86756900` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263890 | `0xce043a95f415d7873585e92904ea11955ba38fe5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263891 | `0xdbe9b7a13d744a880f417ee378fcff3d3fe5ba52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263892 | `0xff16eaec9047eaefd32b3a308057ff21ccf5cf22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263893 | `0xffdef45585b57e294487c72f01043d5dee3f069f` | ❓ Unverified |

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
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

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
