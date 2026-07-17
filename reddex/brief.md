# Agentic Audit Brief: reddex

## Project Overview

- Project: reddex (`reddex`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.630Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc, ethereum
- Contract surface: 31 unique implementations (31 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 30 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (eip712). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 31 (31 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/31 (9.7%)
- Deployed-live implementations: 31 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/31
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 31
- Raw deployments: 31
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyberscope | Tier 2 | 3 | 9.7% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgePlusv2 | unknown | bsc | n/a | [`0x0f52872d6e49debc71f2bf50d233089b33a0dad1`](./contracts/bsc-56/0x0f52872d6e49debc71f2bf50d233089b33a0dad1/) | ✅ Audited |
| BridgePoolv2 | unknown | bsc | n/a | [`0x23f190188f058fad55eb2c9faa09111340334423`](./contracts/bsc-56/0x23f190188f058fad55eb2c9faa09111340334423/) | ✅ Audited |
| SwapPlusV2 | unknown | bsc | n/a | [`0x01bb6d3aff032ba4c177f561f770438abad5622f`](./contracts/bsc-56/0x01bb6d3aff032ba4c177f561f770438abad5622f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aggregator | unknown | bsc | n/a | [`0x6d25a2dc53c6e1a20e01d5147f240b1e145998eb`](./contracts/bsc-56/0x6d25a2dc53c6e1a20e01d5147f240b1e145998eb/) | ⚠️ Unaudited |
| BitcoinBingo | unknown | bsc | n/a | [`0xa03d7ce2d252f66aa30b032ae9c6a7d59b55aede`](./contracts/bsc-56/0xa03d7ce2d252f66aa30b032ae9c6a7d59b55aede/) | ⚠️ Unaudited |
| BridgePlus | unknown | bsc | n/a | [`0x02f9d48e4328343d2ad486e05b26d9b8849bdfa1`](./contracts/bsc-56/0x02f9d48e4328343d2ad486e05b26d9b8849bdfa1/) | ⚠️ Unaudited |
| BridgePlusInsurance | unknown | bsc | n/a | [`0xfd9d2eb1eb464ac211e488da68e4fc4dcb9d02fb`](./contracts/bsc-56/0xfd9d2eb1eb464ac211e488da68e4fc4dcb9d02fb/) | ⚠️ Unaudited |
| BridgePoolv2_1 | unknown | bsc | n/a | [`0xda685e31e5dab8584b8b4c21763a4427732b2a9f`](./contracts/bsc-56/0xda685e31e5dab8584b8b4c21763a4427732b2a9f/) | ⚠️ Unaudited |
| BtcBingov2 | unknown | bsc | n/a | [`0x005841af82e023779a5baee98cf21c80faf02e1d`](./contracts/bsc-56/0x005841af82e023779a5baee98cf21c80faf02e1d/) | ⚠️ Unaudited |
| CodeVerify | unknown | bsc | n/a | [`0x225f961a6635fdfcd5f5db837b92154d21f3aa1a`](./contracts/bsc-56/0x225f961a6635fdfcd5f5db837b92154d21f3aa1a/) | ⚠️ Unaudited |
| Executor | unknown | bsc | n/a | [`0x1864cbc5eec7ed6892909c8f81c30b2b4587b239`](./contracts/bsc-56/0x1864cbc5eec7ed6892909c8f81c30b2b4587b239/) | ⚠️ Unaudited |
| FakeLQDX | unknown | bsc | n/a | [`0x95b4f5a1ea1687ebfe006a96c28e3a87a8e8b836`](./contracts/bsc-56/0x95b4f5a1ea1687ebfe006a96c28e3a87a8e8b836/) | ⚠️ Unaudited |
| GambitReferralDev | unknown | bsc | n/a | [`0x34053ca69e501da8f8200f21ed9467eaaef0f9d2`](./contracts/bsc-56/0x34053ca69e501da8f8200f21ed9467eaaef0f9d2/) | ⚠️ Unaudited |
| GRMinter | unknown | bsc | n/a | [`0xa005a0fcbe5eaa900de241e5843cba8827fd5a43`](./contracts/bsc-56/0xa005a0fcbe5eaa900de241e5843cba8827fd5a43/) | ⚠️ Unaudited |
| LCBridgev2LQDX | unknown | bsc | n/a | [`0x4447de6dada291faf2d54b295763b86a1d1ba61c`](./contracts/bsc-56/0x4447de6dada291faf2d54b295763b86a1d1ba61c/) | ⚠️ Unaudited |
| LCBridgev2Token | unknown | bsc | n/a | [`0x43fe54d5a3467a537529eefd00d859ec3271bc1c`](./contracts/bsc-56/0x43fe54d5a3467a537529eefd00d859ec3271bc1c/) | ⚠️ Unaudited |
| LCBridgev2TokenMinter | unknown | bsc | n/a | [`0x5e7bd0bd88eaf577ff5a5cea4086520da6467892`](./contracts/bsc-56/0x5e7bd0bd88eaf577ff5a5cea4086520da6467892/) | ⚠️ Unaudited |
| LiquidXPreSale | unknown | bsc | n/a | [`0x37c99039cc1c393b2c3976e7a400b907523b8bf2`](./contracts/bsc-56/0x37c99039cc1c393b2c3976e7a400b907523b8bf2/) | ⚠️ Unaudited |
| LiquidXv2Factory | unknown | bsc | n/a | [`0x6d642253b6fd96d9d155279b57b8039675e49d8e`](./contracts/bsc-56/0x6d642253b6fd96d9d155279b57b8039675e49d8e/) | ⚠️ Unaudited |
| LiquidXv2Router01 | unknown | ethereum | n/a | [`0x3b22235010d3636c910f870b90b4f715694e5727`](./contracts/ethereum-1/0x3b22235010d3636c910f870b90b4f715694e5727/) | ⚠️ Unaudited |
| LiquidXv2Zap | unknown | bsc | n/a | [`0x65e6f1e055e9d6ebe06f48b3ef890acd4a467c1c`](./contracts/bsc-56/0x65e6f1e055e9d6ebe06f48b3ef890acd4a467c1c/) | ⚠️ Unaudited |
| LQDX | unknown | bsc | n/a | [`0x1cc6528aa6e8b0209ab6900dc448c36394f73f06`](./contracts/bsc-56/0x1cc6528aa6e8b0209ab6900dc448c36394f73f06/) | ⚠️ Unaudited |
| LQDXDistributor | unknown | bsc | n/a | [`0x00010673f24a4435a26a0af9cdea72012b685572`](./contracts/bsc-56/0x00010673f24a4435a26a0af9cdea72012b685572/) | ⚠️ Unaudited |
| LQDXLottery | unknown | bsc | n/a | [`0x5a2e8e1c8d1d54e384cab1ccc382d1119c5703f5`](./contracts/bsc-56/0x5a2e8e1c8d1d54e384cab1ccc382d1119c5703f5/) | ⚠️ Unaudited |
| LQDXPool | unknown | bsc | n/a | [`0x210613085dbb81840106db539ab4371c32f4aa1e`](./contracts/bsc-56/0x210613085dbb81840106db539ab4371c32f4aa1e/) | ⚠️ Unaudited |
| LQDXStaker | unknown | bsc | n/a | [`0x062a3c3b5cedd338a310bb8a7a0d272d61dbdea8`](./contracts/bsc-56/0x062a3c3b5cedd338a310bb8a7a0d272d61dbdea8/) | ⚠️ Unaudited |
| Mutilcall | unknown | bsc | n/a | [`0x3e366f648adf41e046b30e9e45a6537cef812196`](./contracts/bsc-56/0x3e366f648adf41e046b30e9e45a6537cef812196/) | ⚠️ Unaudited |
| RandomGenerator | unknown | bsc | n/a | [`0xb5b6e2a6635f7754a8fb4c5544d8a93f108e3880`](./contracts/bsc-56/0xb5b6e2a6635f7754a8fb4c5544d8a93f108e3880/) | ⚠️ Unaudited |
| RBNTPresaleBNB | unknown | bsc | n/a | [`0x476f888cc4b612425eeceebca449cbfc0e803cc8`](./contracts/bsc-56/0x476f888cc4b612425eeceebca449cbfc0e803cc8/) | ⚠️ Unaudited |
| Rewarderv2 | unknown | bsc | n/a | [`0x07edcf7ca8ab9bd123dcd98239bf2931425c2b70`](./contracts/bsc-56/0x07edcf7ca8ab9bd123dcd98239bf2931425c2b70/) | ⚠️ Unaudited |
| SwapPlusInsurance | unknown | bsc | n/a | [`0x3366b89a4bfb8af11729fe00d104d00e0ee8c7f9`](./contracts/bsc-56/0x3366b89a4bfb8af11729fe00d104d00e0ee8c7f9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.cyberscope.io/audits/lqdx](https://www.cyberscope.io/audits/lqdx) | Cyberscope | Audit | 2024-11 | aging | Direct | contract_name | 3 | high |
| [gitlab.com/reddex1/contractaudit](https://gitlab.com/reddex1/contractaudit) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/audit.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x6d25a2dc53c6e1a20e01d5147f240b1e145998eb`](./contracts/bsc-56/0x6d25a2dc53c6e1a20e01d5147f240b1e145998eb/) | Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa03d7ce2d252f66aa30b032ae9c6a7d59b55aede`](./contracts/bsc-56/0xa03d7ce2d252f66aa30b032ae9c6a7d59b55aede/) | BitcoinBingo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02f9d48e4328343d2ad486e05b26d9b8849bdfa1`](./contracts/bsc-56/0x02f9d48e4328343d2ad486e05b26d9b8849bdfa1/) | BridgePlus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd9d2eb1eb464ac211e488da68e4fc4dcb9d02fb`](./contracts/bsc-56/0xfd9d2eb1eb464ac211e488da68e4fc4dcb9d02fb/) | BridgePlusInsurance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xda685e31e5dab8584b8b4c21763a4427732b2a9f`](./contracts/bsc-56/0xda685e31e5dab8584b8b4c21763a4427732b2a9f/) | BridgePoolv2_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x005841af82e023779a5baee98cf21c80faf02e1d`](./contracts/bsc-56/0x005841af82e023779a5baee98cf21c80faf02e1d/) | BtcBingov2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x225f961a6635fdfcd5f5db837b92154d21f3aa1a`](./contracts/bsc-56/0x225f961a6635fdfcd5f5db837b92154d21f3aa1a/) | CodeVerify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1864cbc5eec7ed6892909c8f81c30b2b4587b239`](./contracts/bsc-56/0x1864cbc5eec7ed6892909c8f81c30b2b4587b239/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x95b4f5a1ea1687ebfe006a96c28e3a87a8e8b836`](./contracts/bsc-56/0x95b4f5a1ea1687ebfe006a96c28e3a87a8e8b836/) | FakeLQDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x34053ca69e501da8f8200f21ed9467eaaef0f9d2`](./contracts/bsc-56/0x34053ca69e501da8f8200f21ed9467eaaef0f9d2/) | GambitReferralDev | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa005a0fcbe5eaa900de241e5843cba8827fd5a43`](./contracts/bsc-56/0xa005a0fcbe5eaa900de241e5843cba8827fd5a43/) | GRMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4447de6dada291faf2d54b295763b86a1d1ba61c`](./contracts/bsc-56/0x4447de6dada291faf2d54b295763b86a1d1ba61c/) | LCBridgev2LQDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x43fe54d5a3467a537529eefd00d859ec3271bc1c`](./contracts/bsc-56/0x43fe54d5a3467a537529eefd00d859ec3271bc1c/) | LCBridgev2Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e7bd0bd88eaf577ff5a5cea4086520da6467892`](./contracts/bsc-56/0x5e7bd0bd88eaf577ff5a5cea4086520da6467892/) | LCBridgev2TokenMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x37c99039cc1c393b2c3976e7a400b907523b8bf2`](./contracts/bsc-56/0x37c99039cc1c393b2c3976e7a400b907523b8bf2/) | LiquidXPreSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6d642253b6fd96d9d155279b57b8039675e49d8e`](./contracts/bsc-56/0x6d642253b6fd96d9d155279b57b8039675e49d8e/) | LiquidXv2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b22235010d3636c910f870b90b4f715694e5727`](./contracts/ethereum-1/0x3b22235010d3636c910f870b90b4f715694e5727/) | LiquidXv2Router01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x65e6f1e055e9d6ebe06f48b3ef890acd4a467c1c`](./contracts/bsc-56/0x65e6f1e055e9d6ebe06f48b3ef890acd4a467c1c/) | LiquidXv2Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1cc6528aa6e8b0209ab6900dc448c36394f73f06`](./contracts/bsc-56/0x1cc6528aa6e8b0209ab6900dc448c36394f73f06/) | LQDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00010673f24a4435a26a0af9cdea72012b685572`](./contracts/bsc-56/0x00010673f24a4435a26a0af9cdea72012b685572/) | LQDXDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5a2e8e1c8d1d54e384cab1ccc382d1119c5703f5`](./contracts/bsc-56/0x5a2e8e1c8d1d54e384cab1ccc382d1119c5703f5/) | LQDXLottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x210613085dbb81840106db539ab4371c32f4aa1e`](./contracts/bsc-56/0x210613085dbb81840106db539ab4371c32f4aa1e/) | LQDXPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x062a3c3b5cedd338a310bb8a7a0d272d61dbdea8`](./contracts/bsc-56/0x062a3c3b5cedd338a310bb8a7a0d272d61dbdea8/) | LQDXStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e366f648adf41e046b30e9e45a6537cef812196`](./contracts/bsc-56/0x3e366f648adf41e046b30e9e45a6537cef812196/) | Mutilcall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb5b6e2a6635f7754a8fb4c5544d8a93f108e3880`](./contracts/bsc-56/0xb5b6e2a6635f7754a8fb4c5544d8a93f108e3880/) | RandomGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x476f888cc4b612425eeceebca449cbfc0e803cc8`](./contracts/bsc-56/0x476f888cc4b612425eeceebca449cbfc0e803cc8/) | RBNTPresaleBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07edcf7ca8ab9bd123dcd98239bf2931425c2b70`](./contracts/bsc-56/0x07edcf7ca8ab9bd123dcd98239bf2931425c2b70/) | Rewarderv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3366b89a4bfb8af11729fe00d104d00e0ee8c7f9`](./contracts/bsc-56/0x3366b89a4bfb8af11729fe00d104d00e0ee8c7f9/) | SwapPlusInsurance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [20986] gitlab.com/reddex1/contractaudit
- [20987] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
