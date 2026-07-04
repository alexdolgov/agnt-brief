# Agentic Audit Brief: Trueo

## Project Overview

- Project: Trueo (`trueo`)
- Website: [https://trueo.com/](https://trueo.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.493Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base
- Contract surface: 30 unique implementations (43 raw deployments)
- DeFi Llama TVL: $4,304,112.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 48 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 29 common project-authored base contract(s) (eip712, multicall, erc721permit). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Uniswap** (`uniswap`) in the PoolManager, PositionManager subsystem.
16 audits inherited from `uniswap`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 76; live-surface contracts included: 43 (42 live, 1 unknown).
- Excluded by liveness: 33 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/23 (8.7%)
- Deployed-live implementations: 29 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/29
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 30
- Raw deployments: 43
- Audits discovered: 16 (0 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 7 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 8.7% (Certora, ConsenSys Diligence, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 2 | 6.9% | 2024-09 |
| Certora | Tier 1 | 2 | 6.9% | 2024-07 |
| ConsenSys | Tier 1 | 2 | 6.9% | 2018-12 |
| Mythril | Tier 2 | 2 | 6.9% | 2018-12 |
| OpenZeppelin | Tier 1 | 2 | 6.9% | 2024-09 |
| Spearbit | Tier 1 | 2 | 6.9% | 2024-09 |
| Trail of Bits | Tier 1 | 2 | 6.9% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolManager | core_logic | base | n/a | [`0x498581...652b2b`](./contracts/base-8453/0x498581ff718922c3f8e6a244956af099b2652b2b/) | ✅ Audited |
| PositionManager | governance | base | n/a | [`0x7c5f5a...429bdc`](./contracts/base-8453/0x7c5f5a4bbd8fd63184577525326123b519429bdc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeCollector | unknown | base | n/a | [`0x39339e...755d9d`](./contracts/base-8453/0x39339e149c2d916aa899bf73d2debb15f4755d9d/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0x03a520...ed34f1`](./contracts/base-8453/0x03a520b32c04bf3beef7beb72e919cf822ed34f1/) | ⚠️ Unaudited |
| OracleBonds | operational_periphery | base | n/a | 2 deployments: base [`0x118c2d...13f63e`](./contracts/base-8453/0x118c2d8bec04696a2f13124213bac72d0e13f63e/); base `0x388993...91a9c0` | ⚠️ Unaudited |
| OracleCouncil | operational_periphery | base | n/a | 2 deployments: base [`0x87bc36...7992ab`](./contracts/base-8453/0x87bc36ead32d5219e9cddf9f92d2077ca27992ab/); base `0xb8e809...81c450` | ⚠️ Unaudited |
| OrderManager | governance | base | n/a | [`0x8e5e63...5e3da7`](./contracts/base-8453/0x8e5e63f69bf7ef2a24f5247c2bfc3946b95e3da7/) | ⚠️ Unaudited |
| Permit2 | unknown | base | n/a | [`0x000000...c78ba3`](./contracts/base-8453/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| StakingRewards | unknown | base | n/a | 2 deployments: base [`0x1a4062...c035ed`](./contracts/base-8453/0x1a40621c54330940b081f925aa027458a4c035ed/); base `0x688f5b...8af014` | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | [`0x262666...41e481`](./contracts/base-8453/0x2626664c2603336e57b271c5c0b26f421741e481/) | ⚠️ Unaudited |
| SweepStrategy | core_logic | base | n/a | [`0xeb3151...fab215`](./contracts/base-8453/0xeb3151902c63af869977f0ba6baaec476ffab215/) | ⚠️ Unaudited |
| TimelockController | governance | base | n/a | 2 deployments: base [`0x896371...f6fd04`](./contracts/base-8453/0x8963712bc91ae8c64d96293ed9a1157344f6fd04/); base `0xc0a7e6...c4959a` | ⚠️ Unaudited |
| TrueToken | token | base | n/a | [`0x21cfcf...6eb7ab`](./contracts/base-8453/0x21cfcfc3d8f98fc728f48341d10ad8283f6eb7ab/) | ⚠️ Unaudited |
| TruthAttesterSBT | unknown | base | n/a | [`0x43a2ee...c97bc4`](./contracts/base-8453/0x43a2ee74d28612c0a9ef90884bb47cf445c97bc4/) | ⚠️ Unaudited |
| TruthMarket | unknown | base | n/a | 2 deployments: base [`0xb7b53c...eef3d1`](./contracts/base-8453/0xb7b53c6b219a29afd8f2ebbed1ea2b8867eef3d1/); base `0xd51191...7720e2` | ⚠️ Unaudited |
| TruthMarketHook | unknown | base | n/a | [`0x1cfead...1740c4`](./contracts/base-8453/0x1cfead8e66cebc5e51093dfd247ad34f841740c4/) | ⚠️ Unaudited |
| TruthMarketLPManager | governance | base | n/a | 3 deployments: base [`0x05ef8b...6398fb`](./contracts/base-8453/0x05ef8b05398a8479739658e47428076d456398fb/); base `0x68ff20...06d4b9`; base `0xa0be61...c79f89` | ⚠️ Unaudited |
| TruthMarketManager | governance | base | n/a | 4 deployments: base [`0x21d652...bbe7b5`](./contracts/base-8453/0x21d652af137bfb34d16a4103f3b75e1e4fbbe7b5/); base `0x7bdae0...275999`; base `0x83eaed...eeae2d`; base `0x8ddf40...d6dbe6` | ⚠️ Unaudited |
| TruthMarketSwapValidator | unknown | base | n/a | [`0x55e26c...74dd38`](./contracts/base-8453/0x55e26cf92b924c069db4d8da7b0b36154374dd38/) | ⚠️ Unaudited |
| TruthMarketV2 | unknown | base | n/a | 3 deployments: base [`0x2ca897...3e3409`](./contracts/base-8453/0x2ca897f98f6a45729968f0057f1fbf88db3e3409/); base `0x74ffbb...15b58c`; base `0x8e40e1...aa43da` | ⚠️ Unaudited |
| TruthMarketV2Launcher | unknown | base | n/a | [`0x7bb366...156b73`](./contracts/base-8453/0x7bb366c772869be102cccf69cce11af9c5156b73/) | ⚠️ Unaudited |
| TruthMarketV2LPManager | governance | base | n/a | 2 deployments: base [`0x1a6008...833443`](./contracts/base-8453/0x1a6008a93cad0dd562ac071107b23ed4b9833443/); base `0x42db46...2bb04c` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | base | n/a | [`0x1fae24...352d77`](./contracts/base-8453/0x1fae246b1b2d0ce47126bbb109850da355352d77/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | base | n/a | [`0x33128a...f6fdfd`](./contracts/base-8453/0x33128a8fc17869897dce68ed026d694621f6fdfd/) | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | base | n/a | [`0x42be4d...25c3c1`](./contracts/base-8453/0x42be4d6527829fefa1493e1fb9f3676d2425c3c1/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | [`0x6ff569...299b43`](./contracts/base-8453/0x6ff5693b99212da76ad316178a184ab56d299b43/) | ⚠️ Unaudited |
| V3SwapStrategy | core_logic | base | n/a | [`0x339619...fb3b65`](./contracts/base-8453/0x33961932a59d43d80b260eb866056fbe0afb3b65/) | ⚠️ Unaudited |
| V4SwapStrategy | core_logic | base | n/a | [`0x3f3da9...f7927e`](./contracts/base-8453/0x3f3da9e841fbcb5abb2a097cbb922e3ef7f7927e/) | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | base | n/a | [`0xb13cf1...1def4b`](./contracts/base-8453/0xb13cf163d916917d9cd6e836905ca5f12a1def4b/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x3334d8...621fa9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | n/a | unknown | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-core/blob/main/audits/tob/audit.pdf) | Trail of Bits | Audit | n/a | unknown | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [audit.pdf](https://github.com/Uniswap/uniswap-v3-periphery/blob/main/audits/abdk/audit.pdf) | ABDK | Audit | n/a | unknown | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [Uniswap-final.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-final.md) | ConsenSys | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [Uniswap-standalone-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-standalone-working.md) | ConsenSys | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [Uniswap-working.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/Uniswap-working.md) | ConsenSys | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [coverage_output.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/coverage-reports/coverage_output.md) | ConsenSys | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [mythril_output_exchange.md](https://github.com/ConsenSys/Uniswap-audit-report-2018-12/blob/master/tool-output/mythril/mythril_output_exchange.md) | Mythril | Audit | 2018-12 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_ABDK_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_ABDK_audit_core.pdf) | ABDK | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_Spearbit_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Spearbit_audit_core.pdf) | Spearbit | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [TrailOfBits_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/TrailOfBits_audit_core.pdf) | Trail of Bits | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_ABDK_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_ABDK_audit_periphery_universal_router.pdf) | ABDK | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_Spearbit_audit_periphery.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/DRAFT_Spearbit_audit_periphery.pdf) | Spearbit | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [OpenZeppelin_audit_periphery_universal_router.pdf](https://github.com/Uniswap/v4-periphery/blob/main/audits/OpenZeppelin_audit_periphery_universal_router.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [DRAFT_Certora_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/DRAFT_Certora_audit_core.pdf) | Certora | Audit | 2024-07 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |
| [OpenZeppelin_audit_core.pdf](https://github.com/Uniswap/v4-core/blob/main/docs/security/audits/OpenZeppelin_audit_core.pdf) | OpenZeppelin | Audit | 2024-07 | stale | Inherited from Uniswap — forked code, scoped to PoolManager, PositionManager | inherited | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x39339e...755d9d`](./contracts/base-8453/0x39339e149c2d916aa899bf73d2debb15f4755d9d/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03a520...ed34f1`](./contracts/base-8453/0x03a520b32c04bf3beef7beb72e919cf822ed34f1/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x118c2d...13f63e`](./contracts/base-8453/0x118c2d8bec04696a2f13124213bac72d0e13f63e/) | OracleBonds | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87bc36...7992ab`](./contracts/base-8453/0x87bc36ead32d5219e9cddf9f92d2077ca27992ab/) | OracleCouncil | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e5e63...5e3da7`](./contracts/base-8453/0x8e5e63f69bf7ef2a24f5247c2bfc3946b95e3da7/) | OrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a4062...c035ed`](./contracts/base-8453/0x1a40621c54330940b081f925aa027458a4c035ed/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x262666...41e481`](./contracts/base-8453/0x2626664c2603336e57b271c5c0b26f421741e481/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb3151...fab215`](./contracts/base-8453/0xeb3151902c63af869977f0ba6baaec476ffab215/) | SweepStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21cfcf...6eb7ab`](./contracts/base-8453/0x21cfcfc3d8f98fc728f48341d10ad8283f6eb7ab/) | TrueToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x43a2ee...c97bc4`](./contracts/base-8453/0x43a2ee74d28612c0a9ef90884bb47cf445c97bc4/) | TruthAttesterSBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb7b53c...eef3d1`](./contracts/base-8453/0xb7b53c6b219a29afd8f2ebbed1ea2b8867eef3d1/) | TruthMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1cfead...1740c4`](./contracts/base-8453/0x1cfead8e66cebc5e51093dfd247ad34f841740c4/) | TruthMarketHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05ef8b...6398fb`](./contracts/base-8453/0x05ef8b05398a8479739658e47428076d456398fb/) | TruthMarketLPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21d652...bbe7b5`](./contracts/base-8453/0x21d652af137bfb34d16a4103f3b75e1e4fbbe7b5/) | TruthMarketManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x55e26c...74dd38`](./contracts/base-8453/0x55e26cf92b924c069db4d8da7b0b36154374dd38/) | TruthMarketSwapValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ca897...3e3409`](./contracts/base-8453/0x2ca897f98f6a45729968f0057f1fbf88db3e3409/) | TruthMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bb366...156b73`](./contracts/base-8453/0x7bb366c772869be102cccf69cce11af9c5156b73/) | TruthMarketV2Launcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a6008...833443`](./contracts/base-8453/0x1a6008a93cad0dd562ac071107b23ed4b9833443/) | TruthMarketV2LPManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6ff569...299b43`](./contracts/base-8453/0x6ff5693b99212da76ad316178a184ab56d299b43/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x339619...fb3b65`](./contracts/base-8453/0x33961932a59d43d80b260eb866056fbe0afb3b65/) | V3SwapStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3f3da9...f7927e`](./contracts/base-8453/0x3f3da9e841fbcb5abb2a097cbb922e3ef7f7927e/) | V4SwapStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=32

Fork inheritance lineage and inherited audits are included when available.
