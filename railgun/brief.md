# Agentic Audit Brief: Railgun

## Project Overview

- Project: Railgun (`railgun`)
- Website: [https://railgun.org](https://railgun.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.537Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 85 unique implementations (158 raw deployments)
- DeFi Llama TVL: $232,664,353.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy. Structurally: 38 project-authored contract(s) across 4 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 4 common project-authored base contract(s) (commitments, tokenblacklist, verifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 200; live-surface contracts included: 158 (98 live, 60 unknown).
- Excluded by liveness: 42 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/23 (52.2%)
- Deployed-live implementations: 25 of 85 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/25
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 60
- Unique implementations: 85
- Raw deployments: 158
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 13 | 52.0% | 2023-02 |
| Hacken | Tier 2 | 8 | 32.0% | 2021-11 |
| HashCloak | Tier 2 | 3 | 12.0% | 2022-08 |
| ABDK | Tier 2 | 1 | 4.0% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Delegator | unknown | bsc | n/a | 8 deployments: ethereum `0xb6d513...3fb53b`; bsc [`0x4a7532...98bae7`](./contracts/bsc-56/0x4a7532f58259524251d7df1052762dc23c98bae7/); bsc `0x92a9c9...1a714f`; bsc `0xc20871...9079cd`; bsc `0xfc4b58...660cf9`; polygon `0x5f6744...3e83a7`; arbitrum `0x92a9c9...1a714f`; arbitrum `0xbb7d93...74ccfa` | ✅ Audited |
| Distributor | unknown | bsc | n/a | 4 deployments: ethereum `0x3bb38c...81c5d2`; bsc [`0x025e99...182793`](./contracts/bsc-56/0x025e99b45c840c829da0dcdd46bb8c8738182793/); bsc `0xa353bc...e34686`; polygon `0x3b3744...37bfc8` | ✅ Audited |
| GovernorRewards | unknown | bsc | n/a | 12 deployments: ethereum `0x27d30e...63c9d8`; ethereum `0x7d1c12...73c179`; ethereum `0x842da7...59e665`; ethereum `0x9cfa13...08f465`; ethereum `0xaf51cd...8ec42b`; bsc [`0x046e87...47a682`](./contracts/bsc-56/0x046e871ba524e4a868bd80f3b31721212847a682/); bsc `0x7d9ef6...7e35a1`; bsc `0xae4b2d...13af16`; polygon `0x2e01c6...83e32d`; polygon `0x7d9ef6...7e35a1`; polygon `0xb8af88...efd3a9`; polygon `0xd0fe83...bbebc8` | ✅ Audited |
| Multisend | unknown | ethereum | n/a | [`0x92a9c9...1a714f`](./contracts/ethereum-1/0x92a9c92c215092720c731c96d4ff508c831a714f/) | ✅ Audited |
| ProxyAdmin | governance | ethereum | n/a | [`0xed0e97...f07a08`](./contracts/ethereum-1/0xed0e97ca39973dc97416460b113f161be6f07a08/) | ✅ Audited |
| RailgunLogic | unknown | polygon | n/a | 6 deployments: ethereum `0xbcfa4d...7c541a`; ethereum `0xc6368d...6e6d09`; bsc `0xb8af88...efd3a9`; bsc `0xbcfa4d...7c541a`; polygon [`0x280e41...6d4c95`](./contracts/polygon-137/0x280e417ab3cafc378f3e6f91148fd8ef766d4c95/); polygon `0xc6368d...6e6d09` | ✅ Audited |
| RailgunSmartWallet | unknown | ethereum | n/a | [`0xfa7093...1fa4b9`](./contracts/ethereum-1/0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9/) | ✅ Audited |
| RailgunSmartWallet | unknown | bsc | n/a | 8 deployments: ethereum `0x321617...78e13b`; ethereum `0xc0bef2...f209cc`; bsc [`0x2c4fb0...4fa293`](./contracts/bsc-56/0x2c4fb0bbb09945f8e5e2100d6cb4b69d994fa293/); bsc `0x3352c7...582c24`; polygon `0x7a33ed...d0d559`; polygon `0xa375b9...c0e9f7`; arbitrum `0x5eb61f...fd5877`; arbitrum `0xed378e...9e87bf` | ✅ Audited |
| RailgunSmartWallet | unknown | bsc | n/a | [`0x590162...178a10`](./contracts/bsc-56/0x590162bf4b50f6576a459b75309ee21d92178a10/) | ✅ Audited |
| RailgunSmartWallet | unknown | polygon | n/a | [`0x19b620...ef8c71`](./contracts/polygon-137/0x19b620929f97b7b990801496c3b361ca5def8c71/) | ✅ Audited |
| RailgunSmartWallet | unknown | arbitrum | n/a | [`0xfa7093...1fa4b9`](./contracts/arbitrum-42161/0xfa7093cdd9ee6932b4eb2c9e1cde7ce00b1fa4b9/) | ✅ Audited |
| Staking | unknown | bsc | n/a | 3 deployments: ethereum `0xee6a64...b2ee20`; bsc [`0x753f0f...e441dc`](./contracts/bsc-56/0x753f0f9ba003dda95eb9284533cf5b0f19e441dc/); polygon `0x9ac2ba...71ddc1` | ✅ Audited |
| Treasury | unknown | polygon | n/a | 12 deployments: ethereum `0xc851fb...e74d6c`; bsc `0x120c07...fea2c5`; bsc `0x19b620...ef8c71`; bsc `0x1a73e8...eec757`; bsc `0x5f6744...3e83a7`; bsc `0xbf0af5...9da48e`; polygon [`0x025e99...182793`](./contracts/polygon-137/0x025e99b45c840c829da0dcdd46bb8c8738182793/); polygon `0x1a73e8...eec757`; polygon `0x7c956d...afd333`; polygon `0xfa7093...1fa4b9`; arbitrum `0x39f3df...b080c1`; arbitrum `0x9ac2ba...71ddc1` | ✅ Audited |
| Voting | unknown | bsc | n/a | 8 deployments: ethereum `0xc480f6...1da3cc`; ethereum `0xf27131...9d77fb`; ethereum `0xfc4b58...660cf9`; bsc [`0x569c15...3608c9`](./contracts/bsc-56/0x569c15b356d3ba9c9f407945b12c867f7c3608c9/); bsc `0xc3f2c8...11ac88`; polygon `0x707c42...1efb61`; polygon `0xa353bc...e34686`; polygon `0xc3f2c8...11ac88` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrumExecutor | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x280e41...6d4c95`](./contracts/arbitrum-42161/0x280e417ab3cafc378f3e6f91148fd8ef766d4c95/); arbitrum `0xc480f6...1da3cc`; arbitrum `0xce5673...ea045a` | ⚠️ Unaudited |
| ArbitrumSender | unknown | ethereum | n/a | 3 deployments: ethereum [`0x20fa11...393bd5`](./contracts/ethereum-1/0x20fa11c4f794ec1db3527bf618b02754ff393bd5/); ethereum `0x8c2bac...0b8482`; ethereum `0xf62748...16345a` | ⚠️ Unaudited |
| Getters | unknown | polygon | n/a | 6 deployments: ethereum `0xbef5f5...ab020f`; ethereum `0xe90275...7beb0e`; bsc `0xc7ffa5...486968`; bsc `0xd0fe83...bbebc8`; polygon [`0x08196b...216400`](./contracts/polygon-137/0x08196b488d3376c318bdb2fa61ac7a9b0d216400/); polygon `0x979772...defa4f` | ⚠️ Unaudited |
| OnlyAddress | unknown | ethereum | n/a | [`0xd071ed...545da7`](./contracts/ethereum-1/0xd071eddff4728f7a33bafd2759db6543b6545da7/) | ⚠️ Unaudited |
| PausableUpgradableProxy | unknown | ethereum | n/a | [`0xf94325...6197af`](./contracts/ethereum-1/0xf943253b4c53fcf69ce92b936666da26916197af/) | ⚠️ Unaudited |
| RailgunSmartWalletStub | unknown | arbitrum | n/a | [`0x3c53c1...885c3a`](./contracts/arbitrum-42161/0x3c53c163c2ece58470ee219e647f18d133885c3a/) | ⚠️ Unaudited |
| RailToken | token | ethereum | n/a | [`0xe76c6c...a7a33d`](./contracts/ethereum-1/0xe76c6c83af64e4c60245d8c7de953df673a7a33d/) | ⚠️ Unaudited |
| RailTokenFixedSupply | token | bsc | n/a | 2 deployments: bsc [`0x3f847b...cd737f`](./contracts/bsc-56/0x3f847b01d4d498a293e3197b186356039ecd737f/); polygon `0x92a9c9...1a714f` | ⚠️ Unaudited |
| RelayAdapt | unknown | bsc | n/a | 5 deployments: ethereum `0xc3f2c8...11ac88`; bsc [`0x25f795...83bf52`](./contracts/bsc-56/0x25f795a8ec8af7904aa403ff2cc7205ce683bf52/); polygon `0x969ee9...62ff86`; arbitrum `0x3bb38c...81c5d2`; arbitrum `0x5ad95c...1497aa` | ⚠️ Unaudited |
| VestLock | unknown | ethereum | n/a | 4 deployments: ethereum [`0x19b620...ef8c71`](./contracts/ethereum-1/0x19b620929f97b7b990801496c3b361ca5def8c71/); bsc `0x27d30e...63c9d8`; bsc `0xf94325...6197af`; polygon `0xb00a75...a4d527` | ⚠️ Unaudited |
| VKeySetter | unknown | polygon | n/a | 4 deployments: ethereum `0x9086af...903b46`; bsc `0xed0e97...f07a08`; polygon [`0x4025ee...f6be8a`](./contracts/polygon-137/0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a/); arbitrum `0x7d9ef6...7e35a1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (60)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1cfad2...17c639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x232c41...c73fc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3352c7...582c24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b3744...37bfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3db1c5...ab56a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4025ee...f6be8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5eb61f...fd5877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7022be...98c3bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a8657...6dc12a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c956d...afd333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d9ef6...7e35a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e5689...a68ded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb00a75...a4d527` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb7d93...74ccfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc20871...9079cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0198d...e8f59b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf035ce...42ca2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a4544...0abbf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cfad2...17c639` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b1016...19fbdd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f8e20...ac65c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5eb61f...fd5877` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e1338...4da1ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x741936...8d9e12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a0138...819064` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ab41b...3c41f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ac2ba...71ddc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa214d4...74a067` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa375b9...c0e9f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa7093...1fa4b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20fa11...393bd5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ea76a...3eaf1a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2eca05...ff119b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x353ce4...d4f9b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ad1fc...3297a4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3bb38c...81c5d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x435a48...030853` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f8e20...ac65c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x569c15...3608c9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x56e456...2d9b4e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x684545...4f3f7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x807a97...5e3006` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9086af...903b46` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9429fd...151de1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa20baf...88de5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa3b66d...84b270` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf0af5...9da48e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc35b36...5d50cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7ffa5...486968` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce5673...ea045a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcea1f0...8fe8ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd10929...a7bc5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4a57a...f81547` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa4e67...24a3bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x234841...7053f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3f847b...cd737f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d9332...cc5c98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x753f0f...e441dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b0f34...cf39e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7a958...2fb1f8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-02-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2023-02-03%20Zokyo.pdf) | Zokyo | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [2022-12-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-12-21%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | contract_name | 6 | n/a |
| [2022-09-14 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-09-14%20Zokyo.pdf) | Zokyo | Audit | 2022-09 | stale | Direct | contract_name | 2 | n/a |
| [2022-08-29 Hashcloak.pdf](https://assets.railgun.org/docs/audits/2022-08-29%20Hashcloak.pdf) | HashCloak | Audit | 2022-08 | stale | Direct | contract_name | 3 | n/a |
| [2022-04-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-21%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [2022-04-20 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-20%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |
| [2021-11-23 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-23%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [2021-11-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-03%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | contract_name | 8 | n/a |
| [2021-11-02 Hacken.pdf](https://assets.railgun.org/docs/audits/2021-11-02%20Hacken.pdf) | Hacken | Audit | 2021-11 | stale | Direct | contract_name | 8 | n/a |
| [2021-04-01 ABDK.pdf](https://assets.railgun.org/docs/audits/2021-04-01%20ABDK.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x280e41...6d4c95`](./contracts/arbitrum-42161/0x280e417ab3cafc378f3e6f91148fd8ef766d4c95/) | ArbitrumExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20fa11...393bd5`](./contracts/ethereum-1/0x20fa11c4f794ec1db3527bf618b02754ff393bd5/) | ArbitrumSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08196b...216400`](./contracts/polygon-137/0x08196b488d3376c318bdb2fa61ac7a9b0d216400/) | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd071ed...545da7`](./contracts/ethereum-1/0xd071eddff4728f7a33bafd2759db6543b6545da7/) | OnlyAddress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf94325...6197af`](./contracts/ethereum-1/0xf943253b4c53fcf69ce92b936666da26916197af/) | PausableUpgradableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c53c1...885c3a`](./contracts/arbitrum-42161/0x3c53c163c2ece58470ee219e647f18d133885c3a/) | RailgunSmartWalletStub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe76c6c...a7a33d`](./contracts/ethereum-1/0xe76c6c83af64e4c60245d8c7de953df673a7a33d/) | RailToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3f847b...cd737f`](./contracts/bsc-56/0x3f847b01d4d498a293e3197b186356039ecd737f/) | RailTokenFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25f795...83bf52`](./contracts/bsc-56/0x25f795a8ec8af7904aa403ff2cc7205ce683bf52/) | RelayAdapt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b620...ef8c71`](./contracts/ethereum-1/0x19b620929f97b7b990801496c3b361ca5def8c71/) | VestLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4025ee...f6be8a`](./contracts/polygon-137/0x4025ee6512dbbda97049bcf5aa5d38c54af6be8a/) | VKeySetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=30

Zero-match audit list:

- [13741] 2023-02-03 Zokyo.pdf
- [13745] 2022-04-21 Zokyo.pdf

Fork inheritance lineage and inherited audits are included when available.
