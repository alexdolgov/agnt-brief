# Agentic Audit Brief: Doppler Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Doppler Finance (`doppler-finance`)
- Website: [https://app.doppler.finance](https://app.doppler.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 45 unique implementations (45 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $95,550,890.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Doppler Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0xfd5366c739d08018286dd0c6c0f547ec72906717`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 45 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
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
| MultiSign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1073d55dfb892ed86151015402db8b1cdb6ede78` | ⚠️ Unaudited |
| StablecoinProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8292bb45bf1ee4d140127049757c2e0ff06317ed` | ⚠️ Unaudited |
| StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfd748b9de538c9f5b1805e8db9e1d4671f7f2ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2147bdf49a0b78b4b5058eb8306ab61026bbc5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2591c2afd3b0730c65b1b11e961bc82aa5461d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b930c0a75d12e8c8655dd3cc5352eebd2bdcfe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x315bab03fdeaaa1930193ea7c0def8f28b0b6f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ecbf8d5f66c26a7498aa2090475d8e5c8a3d566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46f05709230c5a6c780d9bc1f629a991084eaa53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49218440314834dacc38051e39a5054b7958ea19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c1e4c263d8cd3bde0e7dfa8fa9aa5583d18608b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66fc2d9e4897cf3886a340a4cabc23cca2ac6a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e36e38910c0145cafaa96516083c160049fe3e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7272b2a0d2e9ae6f381677887760e953bc9f2cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7463f8deb5767df59dbec2a20c9fa5bb92f9cc86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9922bae30ccc28d32ae284ee69e47f94c6de44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f7f1c6a1547afe2841943f428cf6ff28541fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x860a80bd349dc4e46dc7345600eb627552ff898e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x863c8754c298d3efec3863f2a46f1c71a355ce6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866eb2f5c483fa525137f982c2be220aa096918c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bcc178a79b7ad29ec7a140c11d9c96eb9e0ef62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97e9d0b0bcbe86e1e230b0ffd3a5f1f9b8428591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ab2ce56b84e3bd5081fd49c041a98eb186f8165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8a83e875023c3fefd8354044e011d8bc847a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2eea193444b16fe2d18cfe977aceeea6dd9c367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb385d20dab411d20870f47d9ca1920533db21b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4f89c68e382b9639e536d70851e72964ab699c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb60fa2ad48959c016fb7545d045aeb60086aca2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb723d5ef303711d774fed6435ed6f5e82ed155ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2a26188e4d7521960c2ddd31947afa9b2fdd8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc364321a409bc83b8f8727d9dbba1acd64f8d39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd366758aa3a85710f8ee870e112f58deb754d4eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd38cbf2a11c0988f535d3a09653affaf462c5b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4707b518a03d3a05dd2a33df5d1fb33690385d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd48ede10152fcad67621fc5a6ae30b5b79fedd68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd65556e97fea8e392be86a79b1c885d3737202fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9334dd55b25f928b702d143981a8173c7272761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe230900ece18f5ca83c8640b2eb73de74f9df5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1dcb5394d27a41662847d512dcc903cda30056f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf26b8bb4e76528e7f061df4441965df80d72a71f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7db20653fe8951e3c72f168310f4229d9945b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8a1c5c010c4028123fcbe75391f588b74e69b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbca8b5f5794456b59ad4177e5b212d0db600bb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384061 | `0xfd5366c739d08018286dd0c6c0f547ec72906717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff72e13a7eafd2170fe8fdf1fe73c7349c209ecb` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 41
- Live contracts: 0
- Unknown liveness contracts: 41
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=41

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x2147bdf49a0b78b4b5058eb8306ab61026bbc5fd` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2591c2afd3b0730c65b1b11e961bc82aa5461d8c` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b930c0a75d12e8c8655dd3cc5352eebd2bdcfe1` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x315bab03fdeaaa1930193ea7c0def8f28b0b6f25` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ecbf8d5f66c26a7498aa2090475d8e5c8a3d566` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46f05709230c5a6c780d9bc1f629a991084eaa53` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x49218440314834dacc38051e39a5054b7958ea19` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c1e4c263d8cd3bde0e7dfa8fa9aa5583d18608b` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66fc2d9e4897cf3886a340a4cabc23cca2ac6a0e` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e36e38910c0145cafaa96516083c160049fe3e6` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7272b2a0d2e9ae6f381677887760e953bc9f2cec` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7463f8deb5767df59dbec2a20c9fa5bb92f9cc86` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f9922bae30ccc28d32ae284ee69e47f94c6de44` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83f7f1c6a1547afe2841943f428cf6ff28541fa9` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x860a80bd349dc4e46dc7345600eb627552ff898e` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x863c8754c298d3efec3863f2a46f1c71a355ce6c` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x866eb2f5c483fa525137f982c2be220aa096918c` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97e9d0b0bcbe86e1e230b0ffd3a5f1f9b8428591` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ab2ce56b84e3bd5081fd49c041a98eb186f8165` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b8a83e875023c3fefd8354044e011d8bc847a34` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2eea193444b16fe2d18cfe977aceeea6dd9c367` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb385d20dab411d20870f47d9ca1920533db21b20` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb4f89c68e382b9639e536d70851e72964ab699c5` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb60fa2ad48959c016fb7545d045aeb60086aca2a` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb723d5ef303711d774fed6435ed6f5e82ed155ea` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2a26188e4d7521960c2ddd31947afa9b2fdd8ac` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd38cbf2a11c0988f535d3a09653affaf462c5b36` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4707b518a03d3a05dd2a33df5d1fb33690385d1` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd48ede10152fcad67621fc5a6ae30b5b79fedd68` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd65556e97fea8e392be86a79b1c885d3737202fc` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9334dd55b25f928b702d143981a8173c7272761` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe230900ece18f5ca83c8640b2eb73de74f9df5ae` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1dcb5394d27a41662847d512dcc903cda30056f` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf26b8bb4e76528e7f061df4441965df80d72a71f` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7db20653fe8951e3c72f168310f4229d9945b3a` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8a1c5c010c4028123fcbe75391f588b74e69b83` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbca8b5f5794456b59ad4177e5b212d0db600bb6` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff72e13a7eafd2170fe8fdf1fe73c7349c209ecb` | non_address_book | unknown | unknown | unverified | n/a | `0x3baf6263ad9c9d0854405b4cfe4310c556a3e6ab` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8bcc178a79b7ad29ec7a140c11d9c96eb9e0ef62` | non_address_book | unknown | unknown | unverified | n/a | `0xf8e736efc592a75a7e54721199c4a4cc8459b824` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc364321a409bc83b8f8727d9dbba1acd64f8d39e` | non_address_book | unknown | unknown | unverified | n/a | `0xf8e736efc592a75a7e54721199c4a4cc8459b824` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd366758aa3a85710f8ee870e112f58deb754d4eb` | non_address_book | unknown | unknown | unverified | n/a | `0xf8e736efc592a75a7e54721199c4a4cc8459b824` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report](https://skynet.certik.com/projects/doppler-finance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit Report](https://github.com/zenith-security/reports/blob/main/reports/Doppler%20Finance%20%232%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19715] Audit Report — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, contract names, or audit date. The only audit-related content is a link to a PDF ('Doppler - Audit') but the PDF content is not included.
- [19716] Audit Report — no match: Scope section lists a repository and commit hash but no specific contract or file names. The target is 'vault' but no .sol files or contract names are provided.

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
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=2
- Match method counts: n/a

Zero-match audit list:

- [19715] Audit Report
- [19716] Audit Report

Fork inheritance lineage and inherited audits are included when available.
