# Agentic Audit Brief: DeepLock

## Project Overview

- Project: DeepLock (`deeplock`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.837Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc
- Contract surface: 42 unique implementations (50 raw deployments)
- DeFi Llama TVL: $1,786,201.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 31 project-authored contract(s) across 1 chain(s); 22 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (bep20, servicepayer, generatorcopyright). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 120; live-surface contracts included: 50 (23 live, 27 unknown).
- Excluded by liveness: 70 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 15 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 42
- Raw deployments: 50
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ALPHAGOAT | unknown | bsc | n/a | [`0x3172057a27b0dbc48a99b8fe2222c4535d56b44c`](./contracts/bsc-56/0x3172057a27b0dbc48a99b8fe2222c4535d56b44c/) | ⚠️ Unaudited |
| ANON_INU_COIN | unknown | bsc | n/a | [`0x64f36701138f0e85cc10c34ea535fdbadcb54147`](./contracts/bsc-56/0x64f36701138f0e85cc10c34ea535fdbadcb54147/) | ⚠️ Unaudited |
| BatCoin | unknown | bsc | n/a | [`0xe2ed1a8b7fac86bf00aa3b920c1e5c3c4962b7d9`](./contracts/bsc-56/0xe2ed1a8b7fac86bf00aa3b920c1e5c3c4962b7d9/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | [`0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a`](./contracts/bsc-56/0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a/) | ⚠️ Unaudited |
| CoinToken | token | bsc | n/a | 3 deployments: bsc [`0x6396f960d14d285e70f9e8dc44452ccff7075896`](./contracts/bsc-56/0x6396f960d14d285e70f9e8dc44452ccff7075896/); bsc `0xa27cf315b7f9e529f3d56223a5c3a590b6100e15`; bsc `0xf919ea3ee19a22e067df0217d21c76077f245a4b` | ⚠️ Unaudited |
| DeepLock | unknown | bsc | n/a | [`0x60de5f9386b637fe97af1cc05f25548e9baaee19`](./contracts/bsc-56/0x60de5f9386b637fe97af1cc05f25548e9baaee19/) | ⚠️ Unaudited |
| DeepLockLocker | unknown | bsc | n/a | [`0x3f4d6bf08cb7a003488ef082102c2e6418a4551e`](./contracts/bsc-56/0x3f4d6bf08cb7a003488ef082102c2e6418a4551e/) | ⚠️ Unaudited |
| GRV | unknown | bsc | n/a | [`0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5`](./contracts/bsc-56/0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5/) | ⚠️ Unaudited |
| HelloBEP20 | unknown | bsc | n/a | 7 deployments: bsc [`0x20c5ada8b7a061dd6f32c715e4d5712491661dcf`](./contracts/bsc-56/0x20c5ada8b7a061dd6f32c715e4d5712491661dcf/); bsc `0x59ee794f24a6078d75d319971aa8439218048184`; bsc `0x618ecbc9a4f5dc90dbbf81ad5a7a6cc03e928a0a`; bsc `0x8df5ad095670a6f9a5ee22c372e09392fe37e851`; bsc `0xd1bf81fce995927361d07348ba64a20742a53e81`; bsc `0xd6a6001c3590649745614ca3949e144fe117bbd0`; bsc `0xe0f76306830c226b3a8d738285677474a8b5cf1d` | ⚠️ Unaudited |
| Mooniswap | unknown | bsc | n/a | [`0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4`](./contracts/bsc-56/0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3`](./contracts/bsc-56/0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3/) | ⚠️ Unaudited |
| RedPill | unknown | bsc | n/a | [`0x187d765829b5570c964f4b551d26d5745f9ed916`](./contracts/bsc-56/0x187d765829b5570c964f4b551d26d5745f9ed916/) | ⚠️ Unaudited |
| RPS | unknown | bsc | n/a | [`0x486dccaf152b271630216d62c00188f2558f6bec`](./contracts/bsc-56/0x486dccaf152b271630216d62c00188f2558f6bec/) | ⚠️ Unaudited |
| SimpleBEP20 | unknown | bsc | n/a | [`0xffc85da016e5f307bbcf2e370a11ab5e460fd511`](./contracts/bsc-56/0xffc85da016e5f307bbcf2e370a11ab5e460fd511/) | ⚠️ Unaudited |
| TokenMintERC20Token | token | bsc | n/a | [`0xd43b226d365d8b22ba472afc2fa769b356eb5d47`](./contracts/bsc-56/0xd43b226d365d8b22ba472afc2fa769b356eb5d47/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0013ef488d94c782ebac90b15c2b8fdaf6e05629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00dc64a47c57332cec5f241a329836fe185651c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03592ac0d3330558e2c31decea7a1440ef951274` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2316565bf3514fa04f64c408c8239260534ba646` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ac9449834c7d97331ab33714dff8796fedeb965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d229b764d419318a3cde8635a60b5767283edc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e98d3cdeff617e473091896e8fcc6cc07beb7be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f37d994df06e45060300c62bc798f552edbba5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47f6c1f8e2e3b9df29011dcadac9709abe518d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x484a43bb6e36b05f8de1ef76015f79ad405a4ff3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67cd84321955481edb46609b8e674ce90e1037b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a963c2443fe9c62e14002f61527420d55631ac8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77c0f93bd2284d01f29b6cbd532341ce2bba5460` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x850195fa9b02cf699aebe3dd130adf15fb86ee7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x865b9529a995a68ed4dd1d6954d2dbab9afa4b6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96556d9b72e5b863732ac9927ec9e684a1fa102a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ad49877f8341417aaad99c8bc89f46a5a21c480` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad59fad2b2a385491c6100c6e0bc29fcc305ca97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2e4be5b02e7416c785d5339be84af796b0814ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8c6dd054dbaa327ebb4c2fe316108749e3616a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce80ab50fca1564426ca09a977b029377c50c909` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd364ccc37a8164df7f1ca55cf6344d2cb1a73ed9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9aec59d19946af1f8ca2e8f50cc9a387a32c140` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdde9e8d669115542eff4923c647c53b46c1735f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6301ced853e236730e71be5b9aea5c4b32f24ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed774911485ede27f1fbc8daed473beb7397b51c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedf0a409f0514bd16d8a245bac0a024723401548` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DeepLock.pdf (also discovered via alternate URL)](https://web.archive.org/web/20210623162512/https://github.com/TechRate/Smart-Contract-Audits/blob/main/DeepLock.pdf) | TechRate | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3172057a27b0dbc48a99b8fe2222c4535d56b44c`](./contracts/bsc-56/0x3172057a27b0dbc48a99b8fe2222c4535d56b44c/) | ALPHAGOAT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64f36701138f0e85cc10c34ea535fdbadcb54147`](./contracts/bsc-56/0x64f36701138f0e85cc10c34ea535fdbadcb54147/) | ANON_INU_COIN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe2ed1a8b7fac86bf00aa3b920c1e5c3c4962b7d9`](./contracts/bsc-56/0xe2ed1a8b7fac86bf00aa3b920c1e5c3c4962b7d9/) | BatCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a`](./contracts/bsc-56/0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6396f960d14d285e70f9e8dc44452ccff7075896`](./contracts/bsc-56/0x6396f960d14d285e70f9e8dc44452ccff7075896/) | CoinToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x60de5f9386b637fe97af1cc05f25548e9baaee19`](./contracts/bsc-56/0x60de5f9386b637fe97af1cc05f25548e9baaee19/) | DeepLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f4d6bf08cb7a003488ef082102c2e6418a4551e`](./contracts/bsc-56/0x3f4d6bf08cb7a003488ef082102c2e6418a4551e/) | DeepLockLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5`](./contracts/bsc-56/0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5/) | GRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20c5ada8b7a061dd6f32c715e4d5712491661dcf`](./contracts/bsc-56/0x20c5ada8b7a061dd6f32c715e4d5712491661dcf/) | HelloBEP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4`](./contracts/bsc-56/0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4/) | Mooniswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3`](./contracts/bsc-56/0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x187d765829b5570c964f4b551d26d5745f9ed916`](./contracts/bsc-56/0x187d765829b5570c964f4b551d26d5745f9ed916/) | RedPill | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x486dccaf152b271630216d62c00188f2558f6bec`](./contracts/bsc-56/0x486dccaf152b271630216d62c00188f2558f6bec/) | RPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xffc85da016e5f307bbcf2e370a11ab5e460fd511`](./contracts/bsc-56/0xffc85da016e5f307bbcf2e370a11ab5e460fd511/) | SimpleBEP20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21321] DeepLock.pdf

Fork inheritance lineage and inherited audits are included when available.
