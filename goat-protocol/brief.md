# Agentic Audit Brief: Goat Protocol

## Project Overview

- Project: Goat Protocol (`goat-protocol`)
- Website: [https://app.goat.fi/](https://app.goat.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.858Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, ethereum, sonic
- Contract surface: 18 unique implementations (30 raw deployments)
- DeFi Llama TVL: $16,971.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 37 project-authored contract(s) across 4 chain(s); 1 ERC4626 vault, 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 7 functional families. Its contracts share 14 common project-authored base contract(s) (erc165, erc721holder, erc1155holder). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 30 (29 live, 1 unknown).
- Excluded by liveness: 80 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/12 (25.0%)
- Deployed-live implementations: 17 of 18 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/17
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 18
- Raw deployments: 30
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 17.6% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GoatFeeBatch | periphery | arbitrum | n/a | [`0x7c758f30892f2ad7d7ae29f4a588eab4ddd62e66`](./contracts/arbitrum-42161/0x7c758f30892f2ad7d7ae29f4a588eab4ddd62e66/) | ✅ Audited |
| GoatRewardPool | core_logic | arbitrum | n/a | [`0xad9ce8580a1cd887038405275cb02443e8fb88ac`](./contracts/arbitrum-42161/0xad9ce8580a1cd887038405275cb02443e8fb88ac/) | ✅ Audited |
| Multistrategy | core_logic | arbitrum | n/a | 7 deployments: sonic `0x182c6aa9636a3e3882c92a082e6209aa01f788e9`; sonic `0x901e3059bf118abc74d917440f0c08fc78ec0aa6`; arbitrum [`0x0df2e3a0b5997adc69f8768e495fd98a4d00f134`](./contracts/arbitrum-42161/0x0df2e3a0b5997adc69f8768e495fd98a4d00f134/); arbitrum `0x3782ba74e32021dd2e2a7ade5118e83440ee24e4`; arbitrum `0x8a1ef3066553275829d1c0f64ee8d5871d5ce9d3`; arbitrum `0xa7781f1d982eb9000bc1733e29ff5ba2824cdbe5`; arbitrum `0xe1c410eefaebb052e17e0cb6f1c3197f35765aab` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | arbitrum | n/a | [`0x5be13f90cd86a8bb0f0573b550f04b95927f5dc5`](./contracts/arbitrum-42161/0x5be13f90cd86a8bb0f0573b550f04b95927f5dc5/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sonic | n/a | [`0x5be13f90cd86a8bb0f0573b550f04b95927f5dc5`](./contracts/sonic-146/0x5be13f90cd86a8bb0f0573b550f04b95927f5dc5/) | ⚠️ Unaudited |
| GOA | unknown | ethereum | n/a | [`0x901e3059bf118abc74d917440f0c08fc78ec0aa6`](./contracts/ethereum-1/0x901e3059bf118abc74d917440f0c08fc78ec0aa6/) | ⚠️ Unaudited |
| GOA_Redeem | unknown | arbitrum | n/a | [`0x1a6e9fd892b6ca3c6617f31164dbc6f00fb54369`](./contracts/arbitrum-42161/0x1a6e9fd892b6ca3c6617f31164dbc6f00fb54369/) | ⚠️ Unaudited |
| LayerZeroBridgeAdapter | operational_periphery | arbitrum | n/a | [`0x667fe8dd40969a5fb92b53e9c8503b454e569bdb`](./contracts/arbitrum-42161/0x667fe8dd40969a5fb92b53e9c8503b454e569bdb/) | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | n/a | 2 deployments: sonic [`0xaace416fcc30e227b023b323299651ec75688b01`](./contracts/sonic-146/0xaace416fcc30e227b023b323299651ec75688b01/); sonic `0xd132631a63af5c616e60606025c8e5871addf76f` | ⚠️ Unaudited |
| SafeProxy | unknown | base | n/a | [`0x663c8a709cdc448b657d09f0b5635f22f8e7e42f`](./contracts/base-8453/0x663c8a709cdc448b657d09f0b5635f22f8e7e42f/) | ⚠️ Unaudited |
| SiloV2Adapter | adapter | sonic | n/a | 4 deployments: sonic [`0x561f2d29177d60946298416c1d6ce274d7e627e8`](./contracts/sonic-146/0x561f2d29177d60946298416c1d6ce274d7e627e8/); sonic `0x69947083379fec458477c0613c2d6bba2fcd34e1`; sonic `0x9776865c710023f050fbcf543c3a6d529a79fd89`; sonic `0xba812e20c7888be7570fa7cca74ef08f7be9ee06` | ⚠️ Unaudited |
| SiloV2VaultAdapter | adapter | sonic | n/a | 2 deployments: sonic [`0x89d2f8f6c3073968268bd4c99f7790d1b7e0e145`](./contracts/sonic-146/0x89d2f8f6c3073968268bd4c99f7790d1b7e0e145/); sonic `0x8f348c4b165a856e2f7922ca63b031ca3764e436` | ⚠️ Unaudited |
| StakedGOAStrategy | core_logic | arbitrum | n/a | [`0xe59dacf736abd86d6c6bd4a7b6511f30eb8d4051`](./contracts/arbitrum-42161/0xe59dacf736abd86d6c6bd4a7b6511f30eb8d4051/) | ⚠️ Unaudited |
| TimelockController | governance | sonic | n/a | [`0x784abdb952b8dadfcd2f1228d3411110c6b5d58c`](./contracts/sonic-146/0x784abdb952b8dadfcd2f1228d3411110c6b5d58c/) | ⚠️ Unaudited |
| XERC20 | token | arbitrum | n/a | [`0x8c6bd546fb8b53fe371654a0e54d7a5bd484b319`](./contracts/arbitrum-42161/0x8c6bd546fb8b53fe371654a0e54d7a5bd484b319/) | ⚠️ Unaudited |
| XERC20Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6f91b345e36fc451893fa1b3873cd30a15ae8f18`](./contracts/ethereum-1/0x6f91b345e36fc451893fa1b3873cd30a15ae8f18/); arbitrum [`0x6f91b345e36fc451893fa1b3873cd30a15ae8f18`](./contracts/arbitrum-42161/0x6f91b345e36fc451893fa1b3873cd30a15ae8f18/) | ⚠️ Unaudited |
| XERC20Lockbox | token | ethereum | n/a | [`0xe16a19968ae9912d58cb8e4df520f6b568a93d60`](./contracts/ethereum-1/0xe16a19968ae9912d58cb8e4df520f6b568a93d60/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeConfigurator | unknown | arbitrum | n/a | `0x54619d61ad42bbbda294a6f744d5e989ef1830fc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_goatfi_multistrategy_v1.0-signed.pdf](https://github.com/goatfi/audits/blob/main/blocksec_goatfi_multistrategy_v1.0-signed.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [02102024-Fortifyx-security-review.pdf](https://github.com/goatfi/audits/blob/main/02102024-Fortifyx-security-review.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 2 | n/a |
| [02142024-tpiliposian-security-review.md](https://github.com/goatfi/audits/blob/main/02142024-tpiliposian-security-review.md) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x901e3059bf118abc74d917440f0c08fc78ec0aa6`](./contracts/ethereum-1/0x901e3059bf118abc74d917440f0c08fc78ec0aa6/) | GOA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a6e9fd892b6ca3c6617f31164dbc6f00fb54369`](./contracts/arbitrum-42161/0x1a6e9fd892b6ca3c6617f31164dbc6f00fb54369/) | GOA_Redeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x667fe8dd40969a5fb92b53e9c8503b454e569bdb`](./contracts/arbitrum-42161/0x667fe8dd40969a5fb92b53e9c8503b454e569bdb/) | LayerZeroBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x561f2d29177d60946298416c1d6ce274d7e627e8`](./contracts/sonic-146/0x561f2d29177d60946298416c1d6ce274d7e627e8/) | SiloV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x89d2f8f6c3073968268bd4c99f7790d1b7e0e145`](./contracts/sonic-146/0x89d2f8f6c3073968268bd4c99f7790d1b7e0e145/) | SiloV2VaultAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe59dacf736abd86d6c6bd4a7b6511f30eb8d4051`](./contracts/arbitrum-42161/0xe59dacf736abd86d6c6bd4a7b6511f30eb8d4051/) | StakedGOAStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8c6bd546fb8b53fe371654a0e54d7a5bd484b319`](./contracts/arbitrum-42161/0x8c6bd546fb8b53fe371654a0e54d7a5bd484b319/) | XERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f91b345e36fc451893fa1b3873cd30a15ae8f18`](./contracts/ethereum-1/0x6f91b345e36fc451893fa1b3873cd30a15ae8f18/) | XERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe16a19968ae9912d58cb8e4df520f6b568a93d60`](./contracts/ethereum-1/0xe16a19968ae9912d58cb8e4df520f6b568a93d60/) | XERC20Lockbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
