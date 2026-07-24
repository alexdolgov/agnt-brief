# Agentic Audit Brief: TokenStore

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

- Project: TokenStore (`tokenstore`)
- Website: [https://token.store/](https://token.store/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 48 unique implementations (48 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $993,871.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for TokenStore. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- TokenStore (`0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 47 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 48 unique; 47 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 48
- Raw deployments: 48
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountModifiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6927d2026befaad51eb6cf48a0c612453f46ec09` | ⚠️ Unaudited |
| AortaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45dc0b356163708169d13281d82d0a29d67be26f` | ⚠️ Unaudited |
| DesignToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5afcc39364312a7f336bc476ddca93ac8ec6b8f` | ⚠️ Unaudited |
| DigitalNomadToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94aefda2209ad7cd9a6d1c6a19e5001ce4636db` | ⚠️ Unaudited |
| FreeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd` | ⚠️ Unaudited |
| TokenStore | token | project_anchor | own_supporting | 0 | ethereum | unit-394091 | `0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0484408dee958e211596c93c720eeb716800eb7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14d3688e99f98b2caaa1c21e3342d161a4a23491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1808ae7a0ef1f8c9eb1c8df14ec7e9fd7dfbcf65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dee6e0f089fedf1438327e7f226941a0c4f6761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x218e632e821dc9240add0a1191a68a63551862d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23d49cab6cf73298e31f52931f273ecf5bd7b553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c89308f20cb5fce1b3062769400499cb15b49e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26b29dedc5ccc0e7c37c32b72b813f8162386d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2c98d100bc85b41f168e62b1df265850c22faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc87b96ec9bf1d4b13ab2eb3dbfc2333ee9765a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x357e9ff0db6805cfd602eb4ec5fb7fe3354a33a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37a978ffda9faf0f549eb63761c0132931e60bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450d03291faec4c8048693da593d53405b17d389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4741e9448e3a0be61e7abf3ba62e27f2883d1059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578a0ee805805623fda8f2aac028770107c041fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58d9d415815ddb0c6b07119bd109f75a7e8b6642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac102ef07ae36eecdddd5d4f63d69fbe53cde05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b009fbf87c23e65b3e49adfc639678ab2176ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dc99c8b19612d253991868c5c7a1c94da744310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x773d6c2c4418082f9c3cc848129290a28c6a1c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79f17f19ce4f8d9abd24c506df3dce0c804bd9d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d36e96e9d0d595172e6d6c647f4e027fb40075e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8efc67ab8ade47668713770755fa6bd9638d96f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948335b068214d58fc11eb04c1971562a627d584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d19930fb230873206d16682cffa8c0fad4d871b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9035ef8f67dffc773ab91ffd04bab54bc7d150f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa958e1797fb8545bdb940c23931a46990a978496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaba319f9d72a529409080e18bb9d94fb92e71172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae3f729b332bb212874e1cdb104f21c7c2e01026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf4236d3eed655d44c1651b07e3ead0e7ec16d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdd086d9a9d8a6c20db5df843f08c1693155f66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc73b71f5e209b2b693c0fae0087bf02ccca706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcddee138997259e27ee428a6c6302d06191f884a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd28807d7ef028af6728d12ccd621b2242da2a64f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b15e99ae6b5d0134a3ce5f2130ad11b4214019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe175d6a97bc96af387086ebbb606269f6df6b5db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6f6d648eb9885f17e3a795df9f4fbc7f601a7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee9ed29c4481022b163b11bcb8c7c4f079d539dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf551ca7267111591e4234b88ebdd680fa0ddf50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa96012d347fd3bbdaf28d36ccb1b91f0ee39e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfade8b8f504778be4fd18a3dd36f2c2c1c7b340b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeb63fc3e11909523d11936a17b06cb70f94c9b3` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 46
- Live contracts: 0
- Unknown liveness contracts: 46
- Source-verified contracts: 4
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=4, unverified unclassified=42

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | source verified unclassified | AccountModifiers<br>`0x6927d2026befaad51eb6cf48a0c612453f46ec09` | non_address_book | unknown | unknown | verified | n/a | `0x44a93f553bd529c19386b2ddfa30f458b0bc3b20` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcddee138997259e27ee428a6c6302d06191f884a` | non_address_book | unknown | unknown | unverified | n/a | `0x44a93f553bd529c19386b2ddfa30f458b0bc3b20` |
| ethereum | source verified unclassified | AortaToken<br>`0x45dc0b356163708169d13281d82d0a29d67be26f` | non_address_book | unknown | unknown | verified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | source verified unclassified | DesignToken<br>`0xf5afcc39364312a7f336bc476ddca93ac8ec6b8f` | non_address_book | unknown | unknown | verified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | source verified unclassified | DigitalNomadToken<br>`0xb94aefda2209ad7cd9a6d1c6a19e5001ce4636db` | non_address_book | unknown | unknown | verified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0484408dee958e211596c93c720eeb716800eb7b` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x14d3688e99f98b2caaa1c21e3342d161a4a23491` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1808ae7a0ef1f8c9eb1c8df14ec7e9fd7dfbcf65` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dee6e0f089fedf1438327e7f226941a0c4f6761` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x218e632e821dc9240add0a1191a68a63551862d6` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23d49cab6cf73298e31f52931f273ecf5bd7b553` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25c89308f20cb5fce1b3062769400499cb15b49e` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26b29dedc5ccc0e7c37c32b72b813f8162386d87` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a2c98d100bc85b41f168e62b1df265850c22faa` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2cc87b96ec9bf1d4b13ab2eb3dbfc2333ee9765a` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x357e9ff0db6805cfd602eb4ec5fb7fe3354a33a6` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37a978ffda9faf0f549eb63761c0132931e60bd2` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x450d03291faec4c8048693da593d53405b17d389` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4741e9448e3a0be61e7abf3ba62e27f2883d1059` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x578a0ee805805623fda8f2aac028770107c041fe` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58d9d415815ddb0c6b07119bd109f75a7e8b6642` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ac102ef07ae36eecdddd5d4f63d69fbe53cde05` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b009fbf87c23e65b3e49adfc639678ab2176ffe` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6dc99c8b19612d253991868c5c7a1c94da744310` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x773d6c2c4418082f9c3cc848129290a28c6a1c1e` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79f17f19ce4f8d9abd24c506df3dce0c804bd9d9` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d36e96e9d0d595172e6d6c647f4e027fb40075e` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8efc67ab8ade47668713770755fa6bd9638d96f8` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x948335b068214d58fc11eb04c1971562a627d584` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d19930fb230873206d16682cffa8c0fad4d871b` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9035ef8f67dffc773ab91ffd04bab54bc7d150f` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa958e1797fb8545bdb940c23931a46990a978496` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaba319f9d72a529409080e18bb9d94fb92e71172` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae3f729b332bb212874e1cdb104f21c7c2e01026` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf4236d3eed655d44c1651b07e3ead0e7ec16d76` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbdd086d9a9d8a6c20db5df843f08c1693155f66c` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbc73b71f5e209b2b693c0fae0087bf02ccca706` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd28807d7ef028af6728d12ccd621b2242da2a64f` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2b15e99ae6b5d0134a3ce5f2130ad11b4214019` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe175d6a97bc96af387086ebbb606269f6df6b5db` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6f6d648eb9885f17e3a795df9f4fbc7f601a7a5` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee9ed29c4481022b163b11bcb8c7c4f079d539dc` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf551ca7267111591e4234b88ebdd680fa0ddf50b` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa96012d347fd3bbdaf28d36ccb1b91f0ee39e41` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfade8b8f504778be4fd18a3dd36f2c2c1c7b340b` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfeb63fc3e11909523d11936a17b06cb70f94c9b3` | non_address_book | unknown | unknown | unverified | n/a | `0xdad3f160f858ac82df8af5deab03eb2b1a7e44d5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8` | TokenStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

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
