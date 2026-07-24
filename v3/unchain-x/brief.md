# Agentic Audit Brief: Unchain X

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Unchain X (`unchain-x`)
- Website: [https://unchainx.io](https://unchainx.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 44 unique implementations (46 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $978,845.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Unchain X. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across bsc. Structural roles: 7 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (7)
- Contract kinds: contract (7)
- Detected standards: ownable (6), pausable (6), erc20 (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 7; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 44
- Raw deployments: 46
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x784aec367ee0ffcec378f02dfd54bd55936a7d30`; bsc `0xd12a29a314d037f472df8c535f8a465789fe69e8`; bsc `0xf328ac9c5bd4912060a44504e26181f303164b1f` | ⚠️ Unaudited |
| GenesisX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba2d44ebf3a6a2543c7825e94f673bde0960ecc6` | ⚠️ Unaudited |
| HalvingProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6820deaeb44c70bf42dbe0b561d399297c05db8` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259719 | `0x057d5bf977ce40a7c1c63b1b58609120350fa015` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259720 | `0x0ea8f9b3eff635c7e5791bff899055e4f3ce0550` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259722 | `0x8d2f485bffc182278c7ca49f1629d5d5420ae245` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259723 | `0xd7d98c9cf0a3b0b09e5b2848b9250101f21a1240` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259725 | `0xf28961b972163fad8f220a9df86014e74df911e8` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x854ec70b78933fab3f95e5bc95d7af72b62703de` | ⚠️ Unaudited |
| PositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc271ecc37502c30da31fe167c382644dc91fbe20` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03dd4ebe7120d05d7cf75cbdf7a5f375e40811f5` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9d96c797fb1ae135d56ccb96eae7f70be061f7f` | ⚠️ Unaudited |
| TimeLockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa135bcc8123f92efbd50452aa9b0b511c1338a18` | ⚠️ Unaudited |
| UNXFaucet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259724 | `0xdc0b82969e27d7d44be0bcf8a3839ad7eb28a879` | ⚠️ Unaudited |
| UNXToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-259721 | `0x4f0572ca0bf96f5ae17b7062d97cea3f35bdea6f` | ⚠️ Unaudited |
| UNXwapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82fa7b2ce2a76c7888a9d3b0a81e0b2ecfd8d40c` | ⚠️ Unaudited |
| UNXwapV3LmFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4339c24f4705bf3e3049ebcfb2ba2ae43832aed` | ⚠️ Unaudited |
| UNXwapV3Manager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb50024ccb6fdeeb7a1bfb186184936a78ea38d18` | ⚠️ Unaudited |
| XLauncherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd04eec514d8de02d60c36c196ae823f0680bc6ec` | ⚠️ Unaudited |
| XPlosion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e309f126882f467f28b67d5cc6b746a4988d650` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x011d89e71371cfddf0712465940e31ea4ac3ce8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0371a823887c8c5d7713379b62b4dc4bd0d77481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04e395e78e64d862181c7091c6c2d6cfced93edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25f544b99df79f224abbda470ee0dfb9ffce78e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267625e06d0cba36912a14e59ce8df4391d0a263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cd4792eaa206c012f4b8a4fee95ffd48f47041b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39ad718691f33208506b13b9ffb51200a6f71671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ff22e8c65ed30449967158570ee85715a500e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46c18ffef3b1447af565ba138f6c7d00dbd4fe8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47059c93c0925405672bffb6e1c1f9083253c56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c403a71395b7e4c83e201e284189b4f0fb82bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x621f2311f8ebea74e35b124e6db770873ba11f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x649f0b5a0bd9401b1e7cc35faaa6ccf4a50b034b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64ad55c44f17c7e75de4fb16e5bce6db0ac27f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94b1b8bb81a80601f109d9bb3190c535f4f655ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95b09e1a1875c410364731029957902daa13e7d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa060dbb24147462ae78cfb8f3a60a57469466689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafb510a9ea216702de4ff813361c632ea3b56753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb55590eed0d4b01e374009f5003cab63721b9c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc696bae93eba891c6ee33602b5f15f2a9e304de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc0073b49df2efdd6290379c83b60fd3146e6c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4c5ec9faaaa03b128fbc20b9c0a18145e31a7e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf8a076072ae3def389b10d3b7804e961a342889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe31f7fad3ea26ae126dedea6b91d3a50d08ae354` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 30
- Live contracts: 0
- Unknown liveness contracts: 30
- Source-verified contracts: 7
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, contamination review=1, source verified unclassified=5, unverified unclassified=23

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | GenesisX<br>`0xba2d44ebf3a6a2543c7825e94f673bde0960ecc6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| contamination review | TimeLockController<br>`0xa135bcc8123f92efbd50452aa9b0b511c1338a18` | non_address_book | unknown | unknown | verified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| source verified unclassified | ERC1967Proxy<br>`0x784aec367ee0ffcec378f02dfd54bd55936a7d30` | non_address_book | unknown | unknown | verified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| source verified unclassified | ERC1967Proxy<br>`0xd12a29a314d037f472df8c535f8a465789fe69e8` | non_address_book | unknown | unknown | verified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| source verified unclassified | ERC1967Proxy<br>`0xf328ac9c5bd4912060a44504e26181f303164b1f` | non_address_book | unknown | unknown | verified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| source verified unclassified | PositionDescriptor<br>`0xc271ecc37502c30da31fe167c382644dc91fbe20` | non_address_book | unknown | unknown | verified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| source verified unclassified | XLauncherToken<br>`0xd04eec514d8de02d60c36c196ae823f0680bc6ec` | non_address_book | unknown | unknown | verified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x011d89e71371cfddf0712465940e31ea4ac3ce8f` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x0371a823887c8c5d7713379b62b4dc4bd0d77481` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x04e395e78e64d862181c7091c6c2d6cfced93edf` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x25f544b99df79f224abbda470ee0dfb9ffce78e5` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x267625e06d0cba36912a14e59ce8df4391d0a263` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x2cd4792eaa206c012f4b8a4fee95ffd48f47041b` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x39ad718691f33208506b13b9ffb51200a6f71671` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x3ff22e8c65ed30449967158570ee85715a500e9c` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x46c18ffef3b1447af565ba138f6c7d00dbd4fe8a` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x5c403a71395b7e4c83e201e284189b4f0fb82bc4` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x621f2311f8ebea74e35b124e6db770873ba11f65` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x649f0b5a0bd9401b1e7cc35faaa6ccf4a50b034b` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x64ad55c44f17c7e75de4fb16e5bce6db0ac27f96` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x94b1b8bb81a80601f109d9bb3190c535f4f655ad` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0x95b09e1a1875c410364731029957902daa13e7d4` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0xa060dbb24147462ae78cfb8f3a60a57469466689` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0xafb510a9ea216702de4ff813361c632ea3b56753` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0xb55590eed0d4b01e374009f5003cab63721b9c8f` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0xbc696bae93eba891c6ee33602b5f15f2a9e304de` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0xcc0073b49df2efdd6290379c83b60fd3146e6c17` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0xd4c5ec9faaaa03b128fbc20b9c0a18145e31a7e6` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0xdf8a076072ae3def389b10d3b7804e961a342889` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |
| unverified unclassified | UnnamedContract<br>`0xe31f7fad3ea26ae126dedea6b91d3a50d08ae354` | non_address_book | unknown | unknown | unverified | n/a | `0xfb4401d376e1e85dca4e93e4df79464aca0a85a6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/unchain-x](https://skynet.certik.com/projects/unchain-x) | CertiK | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [PeckShield-Audit-Report-UnchainX-v1.0.pdf](https://github.com/UNCHAIN-X-Labs/launchpad-staking-contract/blob/main/audit/PeckShield-Audit-Report-UnchainX-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3135] skynet.certik.com/projects/unchain-x — no match: No reason recorded
- [3136] PeckShield-Audit-Report-UnchainX-v1.0.pdf — no match: Only one contract, LaunchpadStaking, is in scope. No file paths provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/unchain-x | HalvingProtocol | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | NonfungiblePositionManager | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | RelayERC20 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | TimeLockController | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | UNXToken | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | UNXwapV3Factory | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | UNXwapV3LmFactory | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | UNXwapV3Manager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-UnchainX-v1.0.pdf | LaunchpadStaking | unmatched — not counted | — | Listed as target in scope table and throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [3135] skynet.certik.com/projects/unchain-x
- [3136] PeckShield-Audit-Report-UnchainX-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
