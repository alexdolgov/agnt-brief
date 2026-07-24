# Agentic Audit Brief: Paxos

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Paxos (`paxos`)
- Website: [https://www.paxos.com/](https://www.paxos.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum, ink, x-layer
- Contract surface: 70 unique implementations (71 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $1,812,141,203.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Paxos in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9a7164112029b81c07636ab7b59fa813e0883bbf`, chain 1)
- UnnamedContract (`0xe343167631d89b6ffc58b88d6b7fb0228795491d`, chain 1)
- UnnamedContract (`0x046ca5a59d53448bf63e0bee1d552c84ad8beb70`, chain 196)
- UnnamedContract (`0x4ae46a509f6b1d9056937ba4500cb143933d2dc8`, chain 196)
- UnnamedContract (`0x004b506865409877c9fa29bfb1eba929984b9bbc`, chain 42161)
- UnnamedContract (`0x359a1ee087abd3042151b93ec8ea462d6b27bcb6`, chain 42161)
- UnnamedContract (`0x9a7164112029b81c07636ab7b59fa813e0883bbf`, chain 57073)
- UnnamedContract (`0xe343167631d89b6ffc58b88d6b7fb0228795491d`, chain 57073)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 8 of 70 unique; 62 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 70
- Raw deployments: 71
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 3 fresh, 4 aging, 0 stale, 0 unknown
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
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x45804880de22913dafe09f4980848ece6ecbaf78`; ethereum `0x74271f2282ed7ee35c166122a60c9830354be42a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x018a090fb8d50376bf8464922ffda935a1fe2859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a473ed747c29397616eabae1dff273c5b1e3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07252906a80ac482aeb1a44e1153cdd3e6005127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x147bde4f997f0d4c7544ed0c55eacf1e5e6bf9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28edab7eec878d54fa877ffff4604dfd649f533f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe2faef627a56e811e09b4e1b810b59f38f3a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31d9bdea6f104606c954f8fe6ba614f1bd347ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x568c28170115fe772b30229199d4ae0595a507f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dff613f9e283d268489ba6ae1c9b22970d561a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6db4c20baf5f86471a0497fe9a344cd370bc9445` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6f475642a6e85809b1c36fa62763669b1b48dd5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7302ea4e51b041b691d1f3458fa7d36560f90708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7569ae2be6ac51ed7f92f8167090b52615f86497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77fe0365db15a1ec05833b7c1802d68356a363df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da4c5d9eca180a03765a6d27196f2a0380fa543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b734d401841be8d8024dd32e4a530abed671897` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c35caa5fd5bdc64b6b11344ad57594a3676256a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ecae0b0402e29694b3af35d5943d4631ee568dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9036566eaa5f83e0b9e1161c6c602b0adf997654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x960fc6ed94c126198a24fdeb6031f749ac70169a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251148 | `0x9a7164112029b81c07636ab7b59fa813e0883bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e12c058a20c5b0eebaa00e44a712ec54b838971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f17058b96786951370a95fdb1273f897798dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4837cd7b4a7a3c71fbe7fc7eaddb64bddc6ef6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb9f637fae6972ea9adeb2ac717c16590cec33e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe62db8ed4838e10e1318593ac9e3eb9ccfb2dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54ca36efe594e4c774ba8463adf67ba3de1236f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc766290954d51149bda940de8023da86414e1e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc896c7777f85cf8edf9dcb2ee40274b7307da488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd09ede557ef195983c9544a5724046fbd6e8a3c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7f3f1c5f1a7f2f42152704c782a556b2d83a020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc55b5f0f2d441c1116dcc3b9d56314da7f5496d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf9ad77036fdde9f7750d200ec6ed6b2622fea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2b2467d9757d5b0dedd74edf8dde63651ca32ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251149 | `0xe343167631d89b6ffc58b88d6b7fb0228795491d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90c0e2fecd06c5875b50f6b13f3b8dbdb4ce946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3d0c564123a4bda51a18873c516eb5b7aeec02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfab5891ed867a1195303251912013b92c4fc3a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfacd5ff359adf87822374275699dd518aaf9a65f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-251150 | `0x046ca5a59d53448bf63e0bee1d552c84ad8beb70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-251151 | `0x4ae46a509f6b1d9056937ba4500cb143933d2dc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251152 | `0x004b506865409877c9fa29bfb1eba929984b9bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0219fce1c5cc06eb7de6d8cb13b7b01ccceb306a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x031610e2d186d78d3defbf907f56d1eac843d9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f1f6b6fa8c64c27d74ec1126ee9a96f475d8bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x118f5fde8b78aefc0d8fdd0571c7dfecde961473` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251153 | `0x359a1ee087abd3042151b93ec8ea462d6b27bcb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c3b50413a07931def31aafcc2e0810e74d1b34a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x426aa1b950a4305fe393563452aeb5f63a9c7832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5af175d74d374766ded50b88ab4b18b371c27026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6566e4af5f7421bfeb3b0b64b1f39b5c3112b1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66c2d82f7f97a844792d917d2edcd9acef1b1800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c9e821ade9efc1bcda763f9942dd7822d6e86b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83442a9b6d51d8a125aa91f44787f16b311aca27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x897ba9b3b1c039762c4f2f3f4fbecf1f33f02822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ce5ea246e46b1b04bc31de5a4732b7748ba9e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9142390dd015811a0d493e4665bab6e51e3e4f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94b7de346afaff550f393335acaf4a2b9ffee72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ce23fc2c05034a878411ebbf926664670f1c831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb004c51e2dbc9cbc26e00978f4b11d408b4cf19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb01e831c57b1dfb9b217595251919903ec51e8ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe00bfff3833883d966801751f84165f0a2a2e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3274ec3f772d8534575eaad5231cf250a48b6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5c897656dec8161de64120d54ad937d7ec7de29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce449f8a4581e57eba927cb36c3224e032da76bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce517f3b818d7552b4bd5944fbfaab9a07afc0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdacc6345feae03020bb5de97c3b3ad0c3a3d6c0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251154 | `0x9a7164112029b81c07636ab7b59fa813e0883bbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251155 | `0xe343167631d89b6ffc58b88d6b7fb0228795491d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 61
- Live contracts: 0
- Unknown liveness contracts: 61
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=61

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x018a090fb8d50376bf8464922ffda935a1fe2859` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x01a473ed747c29397616eabae1dff273c5b1e3f5` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x07252906a80ac482aeb1a44e1153cdd3e6005127` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x147bde4f997f0d4c7544ed0c55eacf1e5e6bf9c4` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x28edab7eec878d54fa877ffff4604dfd649f533f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x2fe2faef627a56e811e09b4e1b810b59f38f3a81` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x31d9bdea6f104606c954f8fe6ba614f1bd347ec3` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x568c28170115fe772b30229199d4ae0595a507f7` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x5dff613f9e283d268489ba6ae1c9b22970d561a8` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x6db4c20baf5f86471a0497fe9a344cd370bc9445` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x7302ea4e51b041b691d1f3458fa7d36560f90708` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x74271f2282ed7ee35c166122a60c9830354be42a` | non_address_book | unknown | unknown | unverified | n/a | `0x36c2e652a6c774f4c48f6d3ae747c17916aeb537` |
| unverified unclassified | UnnamedContract<br>`0x7569ae2be6ac51ed7f92f8167090b52615f86497` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x77fe0365db15a1ec05833b7c1802d68356a363df` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x7da4c5d9eca180a03765a6d27196f2a0380fa543` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x8b734d401841be8d8024dd32e4a530abed671897` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x8c35caa5fd5bdc64b6b11344ad57594a3676256a` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x8ecae0b0402e29694b3af35d5943d4631ee568dc` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x9036566eaa5f83e0b9e1161c6c602b0adf997654` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x960fc6ed94c126198a24fdeb6031f749ac70169a` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x9e12c058a20c5b0eebaa00e44a712ec54b838971` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xa8f17058b96786951370a95fdb1273f897798dc8` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xb4837cd7b4a7a3c71fbe7fc7eaddb64bddc6ef6f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xbb9f637fae6972ea9adeb2ac717c16590cec33e3` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xbe62db8ed4838e10e1318593ac9e3eb9ccfb2dc7` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xc54ca36efe594e4c774ba8463adf67ba3de1236f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xc766290954d51149bda940de8023da86414e1e19` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xc896c7777f85cf8edf9dcb2ee40274b7307da488` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xd09ede557ef195983c9544a5724046fbd6e8a3c6` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xd7f3f1c5f1a7f2f42152704c782a556b2d83a020` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xdc55b5f0f2d441c1116dcc3b9d56314da7f5496d` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xddf9ad77036fdde9f7750d200ec6ed6b2622fea0` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xe2b2467d9757d5b0dedd74edf8dde63651ca32ee` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xe90c0e2fecd06c5875b50f6b13f3b8dbdb4ce946` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xef3d0c564123a4bda51a18873c516eb5b7aeec02` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xfab5891ed867a1195303251912013b92c4fc3a1d` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0xfacd5ff359adf87822374275699dd518aaf9a65f` | non_address_book | unknown | unknown | unverified | n/a | `0x4b39f384422a5f1281e80e54f219d3e13b076ae5` |
| unverified unclassified | UnnamedContract<br>`0x0219fce1c5cc06eb7de6d8cb13b7b01ccceb306a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x031610e2d186d78d3defbf907f56d1eac843d9de` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x0f1f6b6fa8c64c27d74ec1126ee9a96f475d8bbf` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x118f5fde8b78aefc0d8fdd0571c7dfecde961473` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x3c3b50413a07931def31aafcc2e0810e74d1b34a` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x426aa1b950a4305fe393563452aeb5f63a9c7832` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x5af175d74d374766ded50b88ab4b18b371c27026` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x6566e4af5f7421bfeb3b0b64b1f39b5c3112b1a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x66c2d82f7f97a844792d917d2edcd9acef1b1800` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x6c9e821ade9efc1bcda763f9942dd7822d6e86b4` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x83442a9b6d51d8a125aa91f44787f16b311aca27` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x897ba9b3b1c039762c4f2f3f4fbecf1f33f02822` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x8ce5ea246e46b1b04bc31de5a4732b7748ba9e48` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x9142390dd015811a0d493e4665bab6e51e3e4f9f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x94b7de346afaff550f393335acaf4a2b9ffee72b` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0x9ce23fc2c05034a878411ebbf926664670f1c831` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0xb004c51e2dbc9cbc26e00978f4b11d408b4cf19e` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0xb01e831c57b1dfb9b217595251919903ec51e8ce` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0xbe00bfff3833883d966801751f84165f0a2a2e76` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0xc3274ec3f772d8534575eaad5231cf250a48b6b6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0xc5c897656dec8161de64120d54ad937d7ec7de29` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0xce449f8a4581e57eba927cb36c3224e032da76bb` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0xce517f3b818d7552b4bd5944fbfaab9a07afc0b6` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |
| unverified unclassified | UnnamedContract<br>`0xdacc6345feae03020bb5de97c3b3ad0c3a3d6c0f` | non_address_book | unknown | unknown | unverified | n/a | `0xbc86a281ba3dd8a3a740c143b447a674a1a6366a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Domain Separator - Halborn.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Domain%20Separator%20-%20Halborn.pdf) | Halborn | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Enhance Signature Validation - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Enhance%20Signature%20Validation%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [PAXG V2 - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/PAXG%20V2%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20-%20Cross%20Chain%20Integration%20-%20Trail%20Of%20Bits%20Audit%20Report.pdf) | Trail of Bits | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Paxos Stablecoin - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20Stablecoin%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Paxos Token Contracts Halborn Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20Token%20Contracts%20Halborn%20Audit%20Report.pdf) | Halborn | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 23 | high |
| [Paxos USDG Rewards - Zellic Audit Report.pdf](https://github.com/paxosglobal/paxos-token-contracts/blob/master/audits/Paxos%20USDG%20Rewards%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20915] Domain Separator - Halborn.pdf — no match: Only PaxosTokenV2.sol is explicitly in scope; no other contracts listed.
- [20916] Enhance Signature Validation - Zellic Audit Report.pdf — no match: All contracts listed in the scope table on page 4 of the report.
- [20917] PAXG V2 - Zellic Audit Report.pdf — no match: Scope section lists PAXG.sol and PaxosTokenV2.sol as targets. Audit date from cover page.
- [20918] Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page.
- [20919] Paxos Stablecoin - Zellic Audit Report.pdf — no match: Scope table on page 9 lists 13 programs/contracts. Audit date is November 7, 2024 from cover page.
- [20920] Paxos Token Contracts Halborn Audit Report.pdf — no match: All contracts listed in the Scope section of the report. Audit date is the end date of the engagement (November 3, 2025).
- [20921] Paxos USDG Rewards - Zellic Audit Report.pdf — no match: All contracts listed in the scope table on page 9 of the PDF.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Domain Separator - Halborn.pdf | PaxosTokenV2 | unmatched — not counted | — | mentioned in scope description and findings | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | PaxosTokenV2 | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP2612 | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP2612Definitions | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP3009 | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP3009Definitions | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP712 | unmatched — not counted | — | listed in scope table | no |
| Enhance Signature Validation - Zellic Audit Report.pdf | EIP712Domain | unmatched — not counted | — | listed in scope table | no |
| PAXG V2 - Zellic Audit Report.pdf | PAXG | unmatched — not counted | — | listed in scope table | no |
| PAXG V2 - Zellic Audit Report.pdf | PaxosTokenV2 | unmatched — not counted | — | listed in scope table | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | OFTProxy | unmatched — not counted | — | mentioned in Project Coverage and Non-Security-Related Recommendations | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | PaxosTokenV2 | unmatched — not counted | — | mentioned in Project Coverage | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | SupplyControl | unmatched — not counted | — | mentioned in Project Coverage and findings | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | RateLimit | unmatched — not counted | — | mentioned in Project Coverage and Non-Security-Related Recommendations | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | EIP3009 | unmatched — not counted | — | mentioned in Project Coverage and finding TOB-PAXOSLZ-11 | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | EIP2612 | unmatched — not counted | — | mentioned in Project Coverage | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | XYZImplementationV1 | unmatched — not counted | — | mentioned in Project Coverage | no |
| Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf | minter-controller | unmatched — not counted | — | mentioned in Project Targets and Project Coverage | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | PaxosBaseAbstract | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | RateLimit | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | PYUSD | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | USDP | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | USDX | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | BaseStorage | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | PaxosTokenV2 | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | SupplyControl | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | ECRecover | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | EIP712Domain | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | EIP3009 | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | EIP2612 | unmatched — not counted | — | listed in scope table | no |
| Paxos Stablecoin - Zellic Audit Report.pdf | EIP712 | unmatched — not counted | — | listed in scope table | no |
| Paxos Token Contracts Halborn Audit Report.pdf | BaseStorageV3 | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsBase | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsErrors | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsEvents | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsStorageV3 | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | PaxosTokenClaimableRewards | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | TokenAdminEvents | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | ClaimableRewardsFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | MultiplierMgmtFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | PayoutGroupFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | TokenAdminFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | TokenExtensionsFacet | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | RateLimitFixture | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | EIP2612 | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | EIP2612Definitions | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | EIP3009Definitions | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | Roles | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | MultiplierGrowthLib | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | SharesLib | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | EIP3009 | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | PaxosBaseAbstract | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | StorageLib | unmatched — not counted | — | listed in scope | no |
| Paxos Token Contracts Halborn Audit Report.pdf | USDG | unmatched — not counted | — | listed in scope | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | BaseStorageV3 | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsBase | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsErrors | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsEvents | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsStorageV3 | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | PaxosTokenClaimableRewards | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | TokenAdminEvents | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | ClaimableRewardsFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | MultiplierMgmtFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | PayoutGroupFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | TokenExtensionsFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | TokenAdminFacet | unmatched — not counted | — | listed in scope table | no |
| Paxos USDG Rewards - Zellic Audit Report.pdf | PaxosBaseAbstract | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 67 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [20915] Domain Separator - Halborn.pdf
- [20916] Enhance Signature Validation - Zellic Audit Report.pdf
- [20917] PAXG V2 - Zellic Audit Report.pdf
- [20918] Paxos - Cross Chain Integration - Trail Of Bits Audit Report.pdf
- [20919] Paxos Stablecoin - Zellic Audit Report.pdf
- [20920] Paxos Token Contracts Halborn Audit Report.pdf
- [20921] Paxos USDG Rewards - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
