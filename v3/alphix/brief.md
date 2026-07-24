# Agentic Audit Brief: Alphix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Alphix (`alphix`)
- Website: [https://www.alphix.fi/swap](https://www.alphix.fi/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, base-sepolia
- Contract surface: 64 unique implementations (64 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $299,063.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Alphix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, base-sepolia. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x831cfdf7c0e194f5369f204b3dd2481b843d60c0`, chain 8453)
- UnnamedContract (`0x5e645c3d580976ca9e3fe77525d954e73a0ce0c0`, chain 42161)
- Alphix (`0x0e4b892df7c5bcf5010faf4aa106074e555660c0`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 57 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 3 of 64 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 64
- Raw deployments: 64
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BugPocer | Tier 2 | 1 | 33.3% | n/a |
| Sherlock | Tier 1 | 1 | 33.3% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Alphix | unknown | project_anchor | own_supporting | 0 | base | unit-378729 | `0x0e4b892df7c5bcf5010faf4aa106074e555660c0` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphixLVRFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7cbbff9c4fcd74b221c535f4fb4b1db04f1b9044` | ⚠️ Unaudited |
| AlphixPro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f9cf87a6cbfa53c3f1b184900de17298e3f9080` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378730 | `0x831cfdf7c0e194f5369f204b3dd2481b843d60c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378728 | `0x5e645c3d580976ca9e3fe77525d954e73a0ce0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0435e41f73970617ce4843214fe26a42fe941823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0b059bc3b2ee7c74356ff8c34cfcfe7ae384f118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x0e99563bc3412bf64b0d0913e0777e8d97ee8756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x13c26fb69d48ed5a72ce3302fc795082e2427f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1b95d0ec7f7ebc0a337ede77391ccdae537c763a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1ecf2eb64fd9ab3ac6a449030f7143eea34f56bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x2080cac366cbc3b5e8893145f06b274518f51c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x24429b8f2c8eba374dd75c0a72bcf4df4c545bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x27717fc87db93bc0699c846eef53e95c4f8b262e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378731 | `0x285a195230239822adbc6fd2281c7b1de1a17fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x28c00749cb9066d240fe1270b6d7f294b8b34d99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3b09a67d6bb931adebacfd277e96e69e200e7252` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378732 | `0x3c59d4d01682c6180a564f52573c07372bd07cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4a8595c45dcbe80da0e0952e97e6f86a020182d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4afe03e015097626ad82a3228ae754e56ecd3cf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4ced1d50aa631dbcb79dab5c9435e79e578fdbac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4ef3e449f5858663e27dd251bbd7ce8e42cf72d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5634ba278a0655f88432c6dfac22338361bbac00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x59c117c9edfdef3bd57de560c679a9eacabd6f3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378733 | `0x5a22aa4a4b62e3ee72cb6d077b0873d6aa794b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5ae7ce909022a2b031c31872af5dfa796f233aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5cff73eb0ada7a796690cdbf7b3956ad0cfe6fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6380a6f42542c6e00ab8f278a9f18f184a7be019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x63ea2149ff93b92431ebd1373eec402b7f31918c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6535eaf077dbbe43b04d27511a3d2046d7701c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x663cf82e49419a3dc88eec65c2155b4b2d0fa335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x6876ef4dc1abadd2f3da7a0ccbf562e63b62964e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x68f01342b2395e632ba05e451d8177aefb7f3f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x7b6ab2b16d4e618cf14c8f4f23e1b0979a22e938` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x85a22ee84a7ff2e41d845c39835dd9de955719a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x8656537969cca5006eb1d288c26e29ed13d25935` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-378734 | `0x8768950eb999faa53c8b0aa0cd7dcc19b9d23a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x880ff58c43dc2c8f19691ba5a8e5a8e1e2a525a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x8a71a7a3cf0561896b1c776e9ef141401bc4dcf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x8bd0d0fdda8b7c8986c2d02da48b8cdcda537a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x8bfd10aab71139fb9f1753746d6b5bde9f0fbb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x90867625aeb9e745d54688f4e4522dae97a72339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9c13397d24bef39934c2628e6d9cabddd1c359b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9d5f910c91e69adddb06919825305efea5c9c604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9ef55c79823e468bff0cac260e8257a86e36cf0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9f785feb65dbd0170bd6ca1a045eeda44ae9b4dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x9fd294c34ee20dc5fa120c19b15918f285ddb418` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xab7a6d7abf22dd4e7d18950ea92e7cb795921ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb5b4fe811c42ca2f87364f6118ceed77ecc27187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb74d5d4e3e0241b6a9430677ef822619856b8d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbaabfa3ac2ed3d0154e9e2002f94d8550a79bfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbf291c390591010a9eb64bebe66b91103f24bcc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd8e127c23488381c2a5ef07fc356c5ab2a16bf98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xde03ecf3d6aa7fd0e61a3888681abbd2cf954621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe22bdad07616e945f516995e0d9def27e7ef1567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe3350564252b16f7e9e5361c177397ab742f2aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe656db1341c5c8bcf113e42937cbc9d938fa83e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe7711aa6557a69592520bbe7d704d64438f160e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xecc8849225209aeea27759b181c74d876b791a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf57ab74f0bae06ee6a7d223fc8c02bad6acbf7d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xf933ba520681d940595ec0e2dff60f0e16a46e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfadb34a7e6f1d263053d05987408ba5cff60b4f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfbf0480955ffd163d12011da8713022d1aae312c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xfd9467672c14be02b87d5e171c49f838a13d2c5f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 55
- Live contracts: 0
- Unknown liveness contracts: 55
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=55

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0435e41f73970617ce4843214fe26a42fe941823` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x0b059bc3b2ee7c74356ff8c34cfcfe7ae384f118` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x0e99563bc3412bf64b0d0913e0777e8d97ee8756` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x13c26fb69d48ed5a72ce3302fc795082e2427f4d` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x1b95d0ec7f7ebc0a337ede77391ccdae537c763a` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x1ecf2eb64fd9ab3ac6a449030f7143eea34f56bf` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x2080cac366cbc3b5e8893145f06b274518f51c94` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x24429b8f2c8eba374dd75c0a72bcf4df4c545bed` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x27717fc87db93bc0699c846eef53e95c4f8b262e` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x28c00749cb9066d240fe1270b6d7f294b8b34d99` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x3b09a67d6bb931adebacfd277e96e69e200e7252` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x4a8595c45dcbe80da0e0952e97e6f86a020182d7` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x4afe03e015097626ad82a3228ae754e56ecd3cf2` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x4ced1d50aa631dbcb79dab5c9435e79e578fdbac` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x4ef3e449f5858663e27dd251bbd7ce8e42cf72d3` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x5634ba278a0655f88432c6dfac22338361bbac00` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x59c117c9edfdef3bd57de560c679a9eacabd6f3a` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x5ae7ce909022a2b031c31872af5dfa796f233aa5` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x5cff73eb0ada7a796690cdbf7b3956ad0cfe6fb2` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x6380a6f42542c6e00ab8f278a9f18f184a7be019` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x63ea2149ff93b92431ebd1373eec402b7f31918c` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x6535eaf077dbbe43b04d27511a3d2046d7701c88` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x663cf82e49419a3dc88eec65c2155b4b2d0fa335` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x6876ef4dc1abadd2f3da7a0ccbf562e63b62964e` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x68f01342b2395e632ba05e451d8177aefb7f3f77` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x7b6ab2b16d4e618cf14c8f4f23e1b0979a22e938` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x85a22ee84a7ff2e41d845c39835dd9de955719a5` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x8656537969cca5006eb1d288c26e29ed13d25935` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x880ff58c43dc2c8f19691ba5a8e5a8e1e2a525a3` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x8a71a7a3cf0561896b1c776e9ef141401bc4dcf2` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x8bd0d0fdda8b7c8986c2d02da48b8cdcda537a02` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x8bfd10aab71139fb9f1753746d6b5bde9f0fbb25` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x90867625aeb9e745d54688f4e4522dae97a72339` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x9c13397d24bef39934c2628e6d9cabddd1c359b8` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x9d5f910c91e69adddb06919825305efea5c9c604` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x9ef55c79823e468bff0cac260e8257a86e36cf0c` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x9f785feb65dbd0170bd6ca1a045eeda44ae9b4dc` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0x9fd294c34ee20dc5fa120c19b15918f285ddb418` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xab7a6d7abf22dd4e7d18950ea92e7cb795921ba9` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xb5b4fe811c42ca2f87364f6118ceed77ecc27187` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xb74d5d4e3e0241b6a9430677ef822619856b8d8b` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xbaabfa3ac2ed3d0154e9e2002f94d8550a79bfa8` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xbf291c390591010a9eb64bebe66b91103f24bcc7` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xd8e127c23488381c2a5ef07fc356c5ab2a16bf98` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xde03ecf3d6aa7fd0e61a3888681abbd2cf954621` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xe22bdad07616e945f516995e0d9def27e7ef1567` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xe3350564252b16f7e9e5361c177397ab742f2aa3` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xe656db1341c5c8bcf113e42937cbc9d938fa83e1` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xe7711aa6557a69592520bbe7d704d64438f160e7` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xecc8849225209aeea27759b181c74d876b791a77` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xf57ab74f0bae06ee6a7d223fc8c02bad6acbf7d7` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xf933ba520681d940595ec0e2dff60f0e16a46e10` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xfadb34a7e6f1d263053d05987408ba5cff60b4f1` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xfbf0480955ffd163d12011da8713022d1aae312c` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |
| unverified unclassified | UnnamedContract<br>`0xfd9467672c14be02b87d5e171c49f838a13d2c5f` | non_address_book | unknown | unknown | unverified | n/a | `0x6747d49a460ea87cf57a2bceab288c8d152cdd03` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [| Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. |](https://github.com/alphixfi/alphix-core/blob/main/security/2025.12.17-Final-AlphixCollaborativeAuditReport.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [BugPocer_Alphix.pdf](https://github.com/alphixfi/alphix-core/blob/main/security/BugPocer_Alphix.pdf) | BugPocer | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19418] | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | — matched: Scope section lists 9 files; audit date range December 1-8, 2025, end date used.
- [19419] BugPocer_Alphix.pdf — matched: Only one contract name (Alphix) is explicitly mentioned in the report text, but no formal scope section or date is present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | AlphixLogic | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | Alphix | own contract | Alphix (selected) `0x0e4b892df7c5bcf5010faf4aa106074e555660c0` — deployed 2026-02-10 21:30:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | BaseDynamicFee | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | IAlphixLogic | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | IAlphix | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | IRegistry | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | AlphixGlobalConstants | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | DynamicFee | unmatched — not counted | — | listed in scope | no |
| | Sherlock | [Github](https://github.com/alphixfi/alphix-core) | [Github]() | December 2025 | 0 High, 0 Medium, 6 Low/Info. All fixed. | | Registry | unmatched — not counted | — | listed in scope | no |
| BugPocer_Alphix.pdf | Alphix | own contract | Alphix (selected) `0x0e4b892df7c5bcf5010faf4aa106074e555660c0` — deployed 2026-02-10 21:30:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 61 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
