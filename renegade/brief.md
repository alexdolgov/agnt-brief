# Agentic Audit Brief: Renegade

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Renegade (`renegade`)
- Website: [https://renegade.fi/](https://renegade.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base
- Contract surface: 63 unique implementations (63 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $122,960.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Renegade in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x15d7cf277be6463f153dd0d4d73f92ad65e6348c`, chain 8453)
- UnnamedContract (`0xd9e0507d706408d0f14e22e50880189fd915be80`, chain 8453)
- UnnamedContract (`0xc5d1b8096bbdec83bc6049e42822c7483bba6500`, chain 42161)
- UnnamedContract (`0xce7a8d45daa9a5b29f6d255552f577d53ff9ebcf`, chain 42161)
- Permit2 (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 8453)
- Permit2 (`0x000000000022d473030f116ddee9f6b43ac78ba3`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 57 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 6 of 63 unique; 57 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 63
- Raw deployments: 63
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Permit2 | unknown | project_anchor | own_supporting | 0 | base | unit-391347 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |
| Permit2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391345 | `0x000000000022d473030f116ddee9f6b43ac78ba3` | ⚠️ Unaudited |

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
| Proxy (impl: 0x11d3dfd0a6cdcc50c02b68c46e5312c40e9ac994) | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391349 | `0xc5d1b8096bbdec83bc6049e42822c7483bba6500` | ❓ Unverified |
| Proxy (impl: 0x5675bdcaeab76deb26110831ac011b1d16a77dcb) | unknown | project_anchor | own_supporting | 1 | base | unit-391351 | `0xd9e0507d706408d0f14e22e50880189fd915be80` | ❓ Unverified |
| Proxy (impl: 0x90c3f277c3dce2f3f4cd5017441536522f3efaa1) | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-391350 | `0xce7a8d45daa9a5b29f6d255552f577d53ff9ebcf` | ❓ Unverified |
| Proxy (impl: 0xec64b5429ea770b287cb56f35489f39988b5d71b) | unknown | project_anchor | own_supporting | 1 | base | unit-391352 | `0x15d7cf277be6463f153dd0d4d73f92ad65e6348c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c3f20751c9e20a8b7d6eb67d85a49ad990cc8ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x247f68bbd0fb984709b911d628a0dcfa592d1553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24f5fed032178f10f81098d512432079eaea91e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3249459c5dc49fe2edef28616415663760d26b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3cd9f555163f10c116f1a1afcc285e3bb1627f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52dcdc28cffb54147d691e65608d25f76a7935f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5675bdcaeab76deb26110831ac011b1d16a77dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5dd0e86d2c4eb7617103a52779d1d362f5bd853e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x64d08c8df93e418cda9cad88f7a1408163f1f380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f124b02db6803ff6d58aaec100ef9834a3c48af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73a66e8cbbf3bfd0e3727faf2a31e154cd5128c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92e50722c396d59f8d89c1de3e355fdb851168b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94353d0d10c50aada4bbd0cfd7168fd9888e2cd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x958fadc73ea7b42eb0d72b3cd9fe3af40fb4d1ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad78e4cb2ba4fb80e910a1ae66595cd764f18f03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf9ea5e0f065f016b74268c997abcd9faad11d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4295026b991710dbfca52f6952f116101eab31b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb4a96068577141749cc8859f586fe29016c935db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb51a558c8e55de1ee5391bdfe2afa49968fc3b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbccf2034970634f597d8139c3939ea782c7a0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc98d893045c46b9e61eee401ed166415ef734ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca483346a1f0fe09ea57fd8560b39f6ecaaf4b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9961bb4cb27192f8dad20a662be081f546b0e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdae0693aed57f2d3a44ba2305679f182444c8a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdae2ced7177bac8fb4773a8bb7be0318cc364cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe1ad298b51a8924c539d1530e8e5e39232006771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea1160b76b9da735958eec21a77a3cc3c2966dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec64b5429ea770b287cb56f35489f39988b5d71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf764ebfd64ed5aa005a865c182b82b114f6fcd00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x119788accb32e6539d3138b8bfd8e63174dbeed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11d3dfd0a6cdcc50c02b68c46e5312c40e9ac994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1631de6c59e1c6d417f237b213d178ee5a12e745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c3f20751c9e20a8b7d6eb67d85a49ad990cc8ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a5eebd010e6cd813fe753ea65cbaaae53cbe329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd9f555163f10c116f1a1afcc285e3bb1627f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42a8efde3c8898e16cf6db2e3dcaf8c6a5f481ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49a4e440dd0aced8da65de87e518ceac38508457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c8243dfe5ff56413b08aa0db2bb0e06ffa88be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52dcdc28cffb54147d691e65608d25f76a7935f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75c0207b7af85c07253265ee4d2739b391f1d269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90c3f277c3dce2f3f4cd5017441536522f3efaa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94353d0d10c50aada4bbd0cfd7168fd9888e2cd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf9ea5e0f065f016b74268c997abcd9faad11d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb16bdfe8894bb10e74fd60c203a23c1ce073c333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4a96068577141749cc8859f586fe29016c935db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5c19bba92d4ce3719a9ece8df8e2c330478be74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbccf2034970634f597d8139c3939ea782c7a0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe12f672a29c64b72a92bc44dc8842d01c25a57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc038933d0b33359f5c87b4b2f92ee0dad11eadc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8b26584ce18f57de8d1be5399438809ddc5d740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc98d893045c46b9e61eee401ed166415ef734ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdae0693aed57f2d3a44ba2305679f182444c8a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde9f53351038494afc7fd491b51b4115d2621a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1ad298b51a8924c539d1530e8e5e39232006771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1da858dee4a965dd3d27c39a2b6451d8134eab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec64b5429ea770b287cb56f35489f39988b5d71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe1a29eb469f9b9ce0c5e5d68fdadb78524ed304` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 57
- Live contracts: 0
- Unknown liveness contracts: 57
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=57

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x1c3f20751c9e20a8b7d6eb67d85a49ad990cc8ff` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x247f68bbd0fb984709b911d628a0dcfa592d1553` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x24f5fed032178f10f81098d512432079eaea91e4` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x3249459c5dc49fe2edef28616415663760d26b62` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x3cd9f555163f10c116f1a1afcc285e3bb1627f73` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x52dcdc28cffb54147d691e65608d25f76a7935f3` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x5675bdcaeab76deb26110831ac011b1d16a77dcb` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x5dd0e86d2c4eb7617103a52779d1d362f5bd853e` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x64d08c8df93e418cda9cad88f7a1408163f1f380` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x6f124b02db6803ff6d58aaec100ef9834a3c48af` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x73a66e8cbbf3bfd0e3727faf2a31e154cd5128c1` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x92e50722c396d59f8d89c1de3e355fdb851168b6` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x94353d0d10c50aada4bbd0cfd7168fd9888e2cd7` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x958fadc73ea7b42eb0d72b3cd9fe3af40fb4d1ab` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xad78e4cb2ba4fb80e910a1ae66595cd764f18f03` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xaf9ea5e0f065f016b74268c997abcd9faad11d8b` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xb4295026b991710dbfca52f6952f116101eab31b` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xb4a96068577141749cc8859f586fe29016c935db` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xb51a558c8e55de1ee5391bdfe2afa49968fc3b25` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xbbccf2034970634f597d8139c3939ea782c7a0a4` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xc98d893045c46b9e61eee401ed166415ef734ffe` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xca483346a1f0fe09ea57fd8560b39f6ecaaf4b8d` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xd9961bb4cb27192f8dad20a662be081f546b0e74` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xdae0693aed57f2d3a44ba2305679f182444c8a18` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xdae2ced7177bac8fb4773a8bb7be0318cc364cc2` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xe1ad298b51a8924c539d1530e8e5e39232006771` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xea1160b76b9da735958eec21a77a3cc3c2966dab` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xec64b5429ea770b287cb56f35489f39988b5d71b` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xf764ebfd64ed5aa005a865c182b82b114f6fcd00` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x119788accb32e6539d3138b8bfd8e63174dbeed0` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x11d3dfd0a6cdcc50c02b68c46e5312c40e9ac994` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x1631de6c59e1c6d417f237b213d178ee5a12e745` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x1c3f20751c9e20a8b7d6eb67d85a49ad990cc8ff` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x2a5eebd010e6cd813fe753ea65cbaaae53cbe329` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x3cd9f555163f10c116f1a1afcc285e3bb1627f73` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x42a8efde3c8898e16cf6db2e3dcaf8c6a5f481ac` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x49a4e440dd0aced8da65de87e518ceac38508457` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x4c8243dfe5ff56413b08aa0db2bb0e06ffa88be7` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x52dcdc28cffb54147d691e65608d25f76a7935f3` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x75c0207b7af85c07253265ee4d2739b391f1d269` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x90c3f277c3dce2f3f4cd5017441536522f3efaa1` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0x94353d0d10c50aada4bbd0cfd7168fd9888e2cd7` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xaf9ea5e0f065f016b74268c997abcd9faad11d8b` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xb16bdfe8894bb10e74fd60c203a23c1ce073c333` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xb4a96068577141749cc8859f586fe29016c935db` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xb5c19bba92d4ce3719a9ece8df8e2c330478be74` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xbbccf2034970634f597d8139c3939ea782c7a0a4` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xbe12f672a29c64b72a92bc44dc8842d01c25a57c` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xc038933d0b33359f5c87b4b2f92ee0dad11eadc5` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xc8b26584ce18f57de8d1be5399438809ddc5d740` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xc98d893045c46b9e61eee401ed166415ef734ffe` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xdae0693aed57f2d3a44ba2305679f182444c8a18` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xde9f53351038494afc7fd491b51b4115d2621a28` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xe1ad298b51a8924c539d1530e8e5e39232006771` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xe1da858dee4a965dd3d27c39a2b6451d8134eab7` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xec64b5429ea770b287cb56f35489f39988b5d71b` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |
| unverified unclassified | UnnamedContract<br>`0xfe1a29eb469f9b9ce0c5e5d68fdadb78524ed304` | non_address_book | unknown | unknown | unverified | n/a | `0x812922c33079c3e2324d25ef0352a2220686c2ac` |

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 63 |

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
