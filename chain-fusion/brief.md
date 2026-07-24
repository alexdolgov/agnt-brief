# Agentic Audit Brief: Chain Fusion

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Chain Fusion (`chain-fusion`)
- Website: [https://dashboard.internetcomputer.org/chain-fusion](https://dashboard.internetcomputer.org/chain-fusion)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 59 unique implementations (60 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $17,508,254.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Chain Fusion. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 11 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (11)
- Contract kinds: contract (11)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- FiatTokenProxy (`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`, chain 1)
- FiatTokenProxy (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- LinkToken (`0x514910771af9ca656af840dff83e8264ecf986ca`, chain 1)
- OctToken (`0xf5cfbc74057c610c8ef151a439252680ac68c6dc`, chain 1)
- PepeToken (`0x6982508145454ce325ddbe47a25d4ec3d2311933`, chain 1)
- TetherToken (`0xdac17f958d2ee523a2206206994597c13d831ec7`, chain 1)
- TokenMintERC20Token (`0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce`, chain 1)
- TransparentUpgradeableProxy (`0x68749665ff8d2d112fa859aa293f07a622782f38`, chain 1)
- Uni (`0x1f9840a85d5af5bf1d1762f925bdaddc4201f984`, chain 1)
- WBTC (`0x2260fac5e5542a773aa44fbcfedf7c193bc2c599`, chain 1)
- WstETH (`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 10 of 59 unique; 49 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 59
- Raw deployments: 60
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| FiatTokenV2_2 | unknown | project_anchor | own_supporting | 2 | ethereum | unit-381684 (2 proxies) | 2 deployments: ethereum `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`; ethereum `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| LinkToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381676 | `0x514910771af9ca656af840dff83e8264ecf986ca` | ⚠️ Unaudited |
| OctToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381683 | `0xf5cfbc74057c610c8ef151a439252680ac68c6dc` | ⚠️ Unaudited |
| PepeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381678 | `0x6982508145454ce325ddbe47a25d4ec3d2311933` | ⚠️ Unaudited |
| TetherToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381685 | `0x68749665ff8d2d112fa859aa293f07a622782f38` | ⚠️ Unaudited |
| TetherToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381682 | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| TokenMintERC20Token | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381681 | `0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce` | ⚠️ Unaudited |
| Uni | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381674 | `0x1f9840a85d5af5bf1d1762f925bdaddc4201f984` | ⚠️ Unaudited |
| WBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381675 | `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | ⚠️ Unaudited |
| WstETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381680 | `0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x090d4613473dee047c3f2706764f49e0821d256e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e754b39e5f185984e5dcd3f5f8a61d85fdff1e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1137b822e16fa45916569337ee5d6367149e11e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b67eb9b0f8b76f30fd66aecf5420825f1461cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15c65728274e5211aa95c63d5d32819502920262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a9c8182c09f50c8318d769245bea52c32be35bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e13a8ed19ba679ef8d36a3a06df7caca28c12c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3032ab3fa8c01d786d29dade018d7f2017918e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x336aff7e90f5784d2f93d0dfb88d20cdf3d94fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d30b1ab88d487b0f3061f40de76845bec3f1e94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e8640574aa764763291ed733672d3a105107ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4750c43867ef5f89869132eccf19b9b6c4286e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b4e140d1f131fdad6fb59c13af796fd194e4135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aff4bbcbbfd94207adacec69d427aa031554ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62e1de23ed1c9744ac50c4c6e96ecb8b8beeb7f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63c7c5b9154ea997019a7323efe508b55733f1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64c72eafb5c117ce3089d368de37e17612d268c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67f760b3743a14ef7e8d11a93738836396173b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6be2bb01ef49b216333a30fc23e4db484e0795cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c9863d27e3a9e0aed4ced957e2a7bb4c98fd956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7514a947529627e32d96d8a19bf55090b5d31666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x755d0e52c85ec6008bf107b67613b2cb7de3b146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x795ccf508a7d2d55abf5edaeef0c18631db4d7b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b9176508c73c3b05233e275aec5ca5a6f1a201f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bae407586153834c11dd248655b73349d745efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e3aff4186df01ef9f9fcc9d6bb0db134ab1b7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x899d0399c1d2627e12789eba2dc10c6c59f1ac80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fe77c71acb6aa356854a68a8424e24d9afae2fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa388fdb8761cded41962ca8759be6def96897c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c69fcc479d65aa4ef59c7ebf586e366c994ac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84fc936bf0a58e937e5be0faf312b2412d781f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac159bc49fc04d664724df27c292b261ce0c1f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb25ea1d493b49a1ded42ac5b1208cc618f9a9b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb29485d736e7a5b89b6d01881a1083a958a7480b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbddcd3b124488808f2965f4be4a11cb0500ecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd54dfade311d38a78bf2d26d6b1b5dc949139e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8382415b8178b794c956fa2b7347e227611f07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf819c2437a82f9e01f6586207ebf961a7f0970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd0751588ab09f024c97ea401ee75979db285ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf0a8b8691f21bf7c91fde16372f34b8c4bd57da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3953d9d317b834592ab58ab2c7a6ad22b54075d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe477f8ef4c6509012ed5465565b39a544ec38027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6b36a64d00b4bd6fac1b3d2b69e2cedb49430ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef19a647ce811d8953892af79cf9566b7e5b2161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaae896f22c3b78b4a25a8403377f70bb685c316` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 48
- Live contracts: 0
- Unknown liveness contracts: 48
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=48

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e754b39e5f185984e5dcd3f5f8a61d85fdff1e5` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1137b822e16fa45916569337ee5d6367149e11e9` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15b67eb9b0f8b76f30fd66aecf5420825f1461cc` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15c65728274e5211aa95c63d5d32819502920262` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e13a8ed19ba679ef8d36a3a06df7caca28c12c7` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x336aff7e90f5784d2f93d0dfb88d20cdf3d94fd7` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5aff4bbcbbfd94207adacec69d427aa031554ca6` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62e1de23ed1c9744ac50c4c6e96ecb8b8beeb7f4` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63c7c5b9154ea997019a7323efe508b55733f1bd` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64c72eafb5c117ce3089d368de37e17612d268c5` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67f760b3743a14ef7e8d11a93738836396173b1a` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6be2bb01ef49b216333a30fc23e4db484e0795cf` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c9863d27e3a9e0aed4ced957e2a7bb4c98fd956` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7514a947529627e32d96d8a19bf55090b5d31666` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x755d0e52c85ec6008bf107b67613b2cb7de3b146` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x795ccf508a7d2d55abf5edaeef0c18631db4d7b4` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b9176508c73c3b05233e275aec5ca5a6f1a201f` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bae407586153834c11dd248655b73349d745efb` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e3aff4186df01ef9f9fcc9d6bb0db134ab1b7c8` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x899d0399c1d2627e12789eba2dc10c6c59f1ac80` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8fe77c71acb6aa356854a68a8424e24d9afae2fd` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa388fdb8761cded41962ca8759be6def96897c8f` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6c69fcc479d65aa4ef59c7ebf586e366c994ac9` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa84fc936bf0a58e937e5be0faf312b2412d781f7` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac159bc49fc04d664724df27c292b261ce0c1f6f` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb29485d736e7a5b89b6d01881a1083a958a7480b` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbbddcd3b124488808f2965f4be4a11cb0500ecb` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd54dfade311d38a78bf2d26d6b1b5dc949139e02` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8382415b8178b794c956fa2b7347e227611f07b` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xddd0751588ab09f024c97ea401ee75979db285ab` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf0a8b8691f21bf7c91fde16372f34b8c4bd57da` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe477f8ef4c6509012ed5465565b39a544ec38027` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6b36a64d00b4bd6fac1b3d2b69e2cedb49430ce` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef19a647ce811d8953892af79cf9566b7e5b2161` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfaae896f22c3b78b4a25a8403377f70bb685c316` | non_address_book | unknown | unknown | unverified | n/a | `0x3fcd66cfd064ed591cd4ef52f9e1ffe242665ebd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x090d4613473dee047c3f2706764f49e0821d256e` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18e433c7bf8a2e1d0197ce5d8f9afada1a771360` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a9c8182c09f50c8318d769245bea52c32be35bc` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3032ab3fa8c01d786d29dade018d7f2017918e12` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d30b1ab88d487b0f3061f40de76845bec3f1e94` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4750c43867ef5f89869132eccf19b9b6c4286e1a` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b4e140d1f131fdad6fb59c13af796fd194e4135` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e4be8bc9637f0eaa1a755019e06a68ce081d58f` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdaf819c2437a82f9e01f6586207ebf961a7f0970` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe3953d9d317b834592ab58ab2c7a6ad22b54075d` | non_address_book | unknown | unknown | unverified | n/a | `0x41653c7d61609d856f29355e404f310ec4142cfb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e8640574aa764763291ed733672d3a105107ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca06411bd7a7296d7dbdd0050dfc846e95febeb7` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5a5f138005e19a3e6d0fe68b039397eeef2322b` | non_address_book | unknown | unknown | unverified | n/a | `0x8b41783ad99fcbeb8d575fa7a7b5a04fa0b8d80b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023-06-dfinity-ckBTC-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-06-dfinity-ckBTC-securityreview.pdf) | Trail of Bits | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12893] 2023-06-dfinity-ckBTC-securityreview.pdf — no match: Extracted from Project Targets section and detailed findings. The audit report covers ckBTC and BTC integration, specifically the minter and KYT canisters.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-06-dfinity-ckBTC-securityreview.pdf | kyt | unmatched — not counted | — | listed in Project Targets and detailed findings | no |
| 2023-06-dfinity-ckBTC-securityreview.pdf | minter | unmatched — not counted | — | listed in Project Targets and detailed findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [12893] 2023-06-dfinity-ckBTC-securityreview.pdf

Fork inheritance lineage and inherited audits are included when available.
