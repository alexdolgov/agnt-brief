# Agentic Audit Brief: TokenStore

## Project Overview

- Project: TokenStore (`tokenstore`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.539Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 44 unique implementations (44 raw deployments)
- DeFi Llama TVL: $993,871.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (erc20interface, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 48; live-surface contracts included: 44 (2 live, 42 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 44 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 44
- Raw deployments: 44
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FreeToken | token | ethereum | n/a | [`0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd`](./contracts/ethereum-1/0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd/) | ⚠️ Unaudited |
| TokenStore | token | ethereum | n/a | [`0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8`](./contracts/ethereum-1/0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0484408dee958e211596c93c720eeb716800eb7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14d3688e99f98b2caaa1c21e3342d161a4a23491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1808ae7a0ef1f8c9eb1c8df14ec7e9fd7dfbcf65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dee6e0f089fedf1438327e7f226941a0c4f6761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x218e632e821dc9240add0a1191a68a63551862d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23d49cab6cf73298e31f52931f273ecf5bd7b553` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25c89308f20cb5fce1b3062769400499cb15b49e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26b29dedc5ccc0e7c37c32b72b813f8162386d87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a2c98d100bc85b41f168e62b1df265850c22faa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cc87b96ec9bf1d4b13ab2eb3dbfc2333ee9765a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x357e9ff0db6805cfd602eb4ec5fb7fe3354a33a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37a978ffda9faf0f549eb63761c0132931e60bd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x450d03291faec4c8048693da593d53405b17d389` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4741e9448e3a0be61e7abf3ba62e27f2883d1059` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x578a0ee805805623fda8f2aac028770107c041fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58d9d415815ddb0c6b07119bd109f75a7e8b6642` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac102ef07ae36eecdddd5d4f63d69fbe53cde05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b009fbf87c23e65b3e49adfc639678ab2176ffe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dc99c8b19612d253991868c5c7a1c94da744310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x773d6c2c4418082f9c3cc848129290a28c6a1c1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79f17f19ce4f8d9abd24c506df3dce0c804bd9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d36e96e9d0d595172e6d6c647f4e027fb40075e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8efc67ab8ade47668713770755fa6bd9638d96f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x948335b068214d58fc11eb04c1971562a627d584` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d19930fb230873206d16682cffa8c0fad4d871b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9035ef8f67dffc773ab91ffd04bab54bc7d150f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa958e1797fb8545bdb940c23931a46990a978496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaba319f9d72a529409080e18bb9d94fb92e71172` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae3f729b332bb212874e1cdb104f21c7c2e01026` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf4236d3eed655d44c1651b07e3ead0e7ec16d76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdd086d9a9d8a6c20db5df843f08c1693155f66c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc73b71f5e209b2b693c0fae0087bf02ccca706` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcddee138997259e27ee428a6c6302d06191f884a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd28807d7ef028af6728d12ccd621b2242da2a64f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2b15e99ae6b5d0134a3ce5f2130ad11b4214019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe175d6a97bc96af387086ebbb606269f6df6b5db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6f6d648eb9885f17e3a795df9f4fbc7f601a7a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee9ed29c4481022b163b11bcb8c7c4f079d539dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf551ca7267111591e4234b88ebdd680fa0ddf50b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa96012d347fd3bbdaf28d36ccb1b91f0ee39e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfade8b8f504778be4fd18a3dd36f2c2c1c7b340b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfeb63fc3e11909523d11936a17b06cb70f94c9b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd`](./contracts/ethereum-1/0x2f141ce366a2462f02cea3d12cf93e4dca49e4fd/) | FreeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8`](./contracts/ethereum-1/0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8/) | TokenStore | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
