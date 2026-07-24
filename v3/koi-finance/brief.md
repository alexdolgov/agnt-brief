# Agentic Audit Brief: Koi Finance

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

- Project: Koi Finance (`koi-finance`)
- Website: [https://koi.finance/](https://koi.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, zksync-era
- Contract surface: 50 unique implementations (50 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,129,601.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Koi Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000000000225e31d15943971f47ad3022f714fa`, chain 324)
- UnnamedContract (`0x1dd55b7ded83be6a308e64b0711493fe6e38e2d2`, chain 324)
- UnnamedContract (`0x3388530fbaf0c916fa7c0390413dfb178cb33cbb`, chain 324)
- UnnamedContract (`0x40be1cba6c5b47cdf9da7f963b6f761f4c60627d`, chain 324)
- UnnamedContract (`0x4772d618ad88b602a2ea76f2155d0356e6756b3e`, chain 324)
- UnnamedContract (`0x488a92576da475f7429bc9dec9247045156144d3`, chain 324)
- UnnamedContract (`0x4ae2ba9a5c653038c6d2f5d9f80b28011a454597`, chain 324)
- UnnamedContract (`0x5aea5775959fbc2557cc8789bc1bf90a239d9a91`, chain 324)
- UnnamedContract (`0x8b791913eb07c32779a16750e3868aa8495f5964`, chain 324)
- UnnamedContract (`0x96c2cf9edbea24ce659efbc9a6e3942b7895b5e8`, chain 324)
- UnnamedContract (`0x98db4e3df6502369dad7ac99f3aee5d064721c4c`, chain 324)
- UnnamedContract (`0xa459ebf3e6a6d5875345f725ba3f107340b67732`, chain 324)
- UnnamedContract (`0xa7cd0afe5ee7af96835822e3bdc62ba67a6a36f6`, chain 324)
- UnnamedContract (`0xa995ad25ce5eb76972ab356168f5e1d9257e4d05`, chain 324)
- KOIToken (`0x9d14bce1daddf408d77295bb1be9b343814f44de`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 15 of 50 unique; 35 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 50
- Raw deployments: 50
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KOIToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388455 | `0x9d14bce1daddf408d77295bb1be9b343814f44de` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02a994014aa94a1da3c6e0ed888905b15830bf57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e354f1a27d26d396a8d124c8ece8868b06bd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ec4960856750dfb9618cea30fbd021475e3e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d3013a07cbe84e5cbb85e0b8d26408113718022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11feecebd15487af970b5d24ebbf18fa4d062692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x172c01a1babb3e2e14cc7ea0423eaa75190934b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c88e35684aae2aa20209fba8b03c5a8b905ec8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2254f9265bb30ffa1bb93a252e96a13a5f7b2fd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2364966267b5d7d2ce6cd9a9b5bd19d9c7c6a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a903d20740b3467e1ec9d9b200455eebd097bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ba273e7532c526662e383e6635933ce12e14049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4abfbd3ad74d1207a7baa58a45ff6340a900ad99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555bb319e904861a8ff5f8748a9c3a3a262ddca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595f779120522b4c57b64f83056f488d935911c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e13c38eb8c5659d98ad0c547430f9311ebaad18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aea54ab654f12eb94d2a9df64fa65ef700d94b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x889d9a1d55de5009a3b3c42f1e66f392e12a9b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x990bc4cf13ac3cbc02bc6c66d3cf848d276c8d20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ace0a79d512e9e63c01eaf41a051cadf4680b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa34cd26f65d1cd7a75207addd1a3bc81639b1bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa49d7499271ae71cd8ab9ac515e6694c755d400c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7db7a8f7082bfa5e488e0203abba278c617327f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae30283053aea3b9ce479f8c27f987ce44c5c611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb264b9043d55edc79502bd2f418daaf4c133621e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaadfa4c48374c2e120e10296ea7505feb78c868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06d0f2ef3d22f10639dcee4b464039223f02f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc270e68e874b3ffd369e617304d547209033a9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d19be844b3e306a803569ee0980774fea0a1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4bef0bc52d0c6d82b4275cff8b96a1c16fdb49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce93ed26535e4fe42e1020c9101f5a535036002e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd762afd1b1f28b8f211b8b72ce1001965107d0ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7ce7b5ee99cb8c1b6872274b9bb4d4c7a646d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebd6b49a889dfb1ad3a141cf98d8f61d182975f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf287de2ae9c655ab9c10dddc8eed4e61969d4a5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe0fa672ce0afcc28683883cc3acf595af17b056` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388457 | `0x0000000000225e31d15943971f47ad3022f714fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388458 | `0x1dd55b7ded83be6a308e64b0711493fe6e38e2d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388459 | `0x3388530fbaf0c916fa7c0390413dfb178cb33cbb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388460 | `0x40be1cba6c5b47cdf9da7f963b6f761f4c60627d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388461 | `0x4772d618ad88b602a2ea76f2155d0356e6756b3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388462 | `0x488a92576da475f7429bc9dec9247045156144d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388463 | `0x4ae2ba9a5c653038c6d2f5d9f80b28011a454597` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388464 | `0x5aea5775959fbc2557cc8789bc1bf90a239d9a91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388465 | `0x8b791913eb07c32779a16750e3868aa8495f5964` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388466 | `0x96c2cf9edbea24ce659efbc9a6e3942b7895b5e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388467 | `0x98db4e3df6502369dad7ac99f3aee5d064721c4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388468 | `0xa459ebf3e6a6d5875345f725ba3f107340b67732` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388469 | `0xa7cd0afe5ee7af96835822e3bdc62ba67a6a36f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-388470 | `0xa995ad25ce5eb76972ab356168f5e1d9257e4d05` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 35
- Live contracts: 0
- Unknown liveness contracts: 35
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=35

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x02a994014aa94a1da3c6e0ed888905b15830bf57` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x05e354f1a27d26d396a8d124c8ece8868b06bd5e` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x05ec4960856750dfb9618cea30fbd021475e3e75` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x0d3013a07cbe84e5cbb85e0b8d26408113718022` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x11feecebd15487af970b5d24ebbf18fa4d062692` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x172c01a1babb3e2e14cc7ea0423eaa75190934b0` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x1c88e35684aae2aa20209fba8b03c5a8b905ec8e` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x2254f9265bb30ffa1bb93a252e96a13a5f7b2fd9` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x2e2364966267b5d7d2ce6cd9a9b5bd19d9c7c6a9` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x3a903d20740b3467e1ec9d9b200455eebd097bf4` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x3ba273e7532c526662e383e6635933ce12e14049` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x4abfbd3ad74d1207a7baa58a45ff6340a900ad99` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x555bb319e904861a8ff5f8748a9c3a3a262ddca4` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x595f779120522b4c57b64f83056f488d935911c3` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x6e13c38eb8c5659d98ad0c547430f9311ebaad18` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x7aea54ab654f12eb94d2a9df64fa65ef700d94b3` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x889d9a1d55de5009a3b3c42f1e66f392e12a9b97` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x990bc4cf13ac3cbc02bc6c66d3cf848d276c8d20` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0x99ace0a79d512e9e63c01eaf41a051cadf4680b8` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xa34cd26f65d1cd7a75207addd1a3bc81639b1bb8` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xa49d7499271ae71cd8ab9ac515e6694c755d400c` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xa7db7a8f7082bfa5e488e0203abba278c617327f` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xae30283053aea3b9ce479f8c27f987ce44c5c611` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xb264b9043d55edc79502bd2f418daaf4c133621e` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xbaadfa4c48374c2e120e10296ea7505feb78c868` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xc06d0f2ef3d22f10639dcee4b464039223f02f53` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xc270e68e874b3ffd369e617304d547209033a9cb` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xc2d19be844b3e306a803569ee0980774fea0a1c7` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xc4bef0bc52d0c6d82b4275cff8b96a1c16fdb49a` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xce93ed26535e4fe42e1020c9101f5a535036002e` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xd762afd1b1f28b8f211b8b72ce1001965107d0ce` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xe7ce7b5ee99cb8c1b6872274b9bb4d4c7a646d39` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xebd6b49a889dfb1ad3a141cf98d8f61d182975f0` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xf287de2ae9c655ab9c10dddc8eed4e61969d4a5b` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |
| unverified unclassified | UnnamedContract<br>`0xfe0fa672ce0afcc28683883cc3acf595af17b056` | non_address_book | unknown | unknown | unverified | n/a | `0xce20d01e96710885db68ecd7cdd2423293f15130` |

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
| needs_review | 50 |

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
