# Agentic Audit Brief: percent-finance

## Project Overview

- Project: percent-finance (`percent-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.073Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 25 unique implementations (25 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 24 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 24 contract(s).

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (25 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/25 (0.0%)
- Deployed-live implementations: 25 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 25
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

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BadgerVotingShare | unknown | ethereum | n/a | [`0x714a35f232c0e478015f383ae0a69b1af1a2fa4a`](./contracts/ethereum-1/0x714a35f232c0e478015f383ae0a69b1af1a2fa4a/) | ⚠️ Unaudited |
| CDaiDelegate | unknown | ethereum | n/a | [`0xa446d7789f2c1daee6b9377add622a8dfe3c95ba`](./contracts/ethereum-1/0xa446d7789f2c1daee6b9377add622a8dfe3c95ba/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | [`0x0f69f08f872f366ad8edde03dae8812619a17536`](./contracts/ethereum-1/0x0f69f08f872f366ad8edde03dae8812619a17536/) | ⚠️ Unaudited |
| CErc20Delegate | unknown | ethereum | n/a | [`0x1136568622c6fb3b768385c98167b2a0b27658ab`](./contracts/ethereum-1/0x1136568622c6fb3b768385c98167b2a0b27658ab/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x4e5ddce5b4d536292218e4e02305bccc22972c9e`](./contracts/ethereum-1/0x4e5ddce5b4d536292218e4e02305bccc22972c9e/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x45f157b3d3d7c415a0e40012d64465e3a0402c64`](./contracts/ethereum-1/0x45f157b3d3d7c415a0e40012d64465e3a0402c64/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | [`0xbc16da9df0a22f01a16bc0620a27e7d6d6488550`](./contracts/ethereum-1/0xbc16da9df0a22f01a16bc0620a27e7d6d6488550/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x395cb0c7bf2808a11200a9018c98b2839f45c6f9`](./contracts/ethereum-1/0x395cb0c7bf2808a11200a9018c98b2839f45c6f9/) | ⚠️ Unaudited |
| InsolventCErc20Delegate | unknown | ethereum | n/a | [`0x2d9d55f64394f6a778110bf9e7b14be744e8866c`](./contracts/ethereum-1/0x2d9d55f64394f6a778110bf9e7b14be744e8866c/) | ⚠️ Unaudited |
| InsolventComptroller | unknown | ethereum | n/a | [`0xa8d6f19888d18add771b4649f8115a59b4425649`](./contracts/ethereum-1/0xa8d6f19888d18add771b4649f8115a59b4425649/) | ⚠️ Unaudited |
| InsolventComptroller2 | unknown | ethereum | n/a | [`0xcfbbfd727d8dcdd979e6c7b84e1d8980bbe0277a`](./contracts/ethereum-1/0xcfbbfd727d8dcdd979e6c7b84e1d8980bbe0277a/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | ethereum | n/a | [`0x3f7c656c0c3f547cb18d7a15318e98ae44ed8cbc`](./contracts/ethereum-1/0x3f7c656c0c3f547cb18d7a15318e98ae44ed8cbc/) | ⚠️ Unaudited |
| JumpRateModelV3Stable1 | unknown | ethereum | n/a | [`0x60a5d5a4499f227ee75f82946e3146b6a55531ee`](./contracts/ethereum-1/0x60a5d5a4499f227ee75f82946e3146b6a55531ee/) | ⚠️ Unaudited |
| JumpRateModelV3Stable2 | unknown | ethereum | n/a | [`0xcf6c862109e07ca961c8aaccf99200a414c07d70`](./contracts/ethereum-1/0xcf6c862109e07ca961c8aaccf99200a414c07d70/) | ⚠️ Unaudited |
| JumpRateModelV3Type1 | unknown | ethereum | n/a | [`0xf6d5fb3f34e34dc64c339b0803cc9e741da00a11`](./contracts/ethereum-1/0xf6d5fb3f34e34dc64c339b0803cc9e741da00a11/) | ⚠️ Unaudited |
| JumpRateModelV3Type2 | unknown | ethereum | n/a | [`0x2c2a712308b27a17607407d3f580b4ba571261e3`](./contracts/ethereum-1/0x2c2a712308b27a17607407d3f580b4ba571261e3/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0xa742ce2e4426290017ab165b0f7d8ab131e4a9f5`](./contracts/ethereum-1/0xa742ce2e4426290017ab165b0f7d8ab131e4a9f5/) | ⚠️ Unaudited |
| PctPool | unknown | ethereum | n/a | [`0x0190bf688ff57b935e99487aacebaccf450c5d4f`](./contracts/ethereum-1/0x0190bf688ff57b935e99487aacebaccf450c5d4f/) | ⚠️ Unaudited |
| PercentQuadraticVoteProxy | unknown | ethereum | n/a | [`0x4128fe23ef23194e00405603c937b19d3e30482c`](./contracts/ethereum-1/0x4128fe23ef23194e00405603c937b19d3e30482c/) | ⚠️ Unaudited |
| PercentVoteProxy | unknown | ethereum | n/a | [`0xf67a18404d15d83f5b77c3c522a7aa208f1127be`](./contracts/ethereum-1/0xf67a18404d15d83f5b77c3c522a7aa208f1127be/) | ⚠️ Unaudited |
| TEST_CEther | unknown | ethereum | n/a | [`0xbe14f594b790e6ed9529133af7cfe6eb92dbf192`](./contracts/ethereum-1/0xbe14f594b790e6ed9529133af7cfe6eb92dbf192/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x79faee4b277d07ce23e2387ef67ef45acc62f156`](./contracts/ethereum-1/0x79faee4b277d07ce23e2387ef67ef45acc62f156/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x4de840147db6d0655917f43da8a2e86c26aafb0a`](./contracts/ethereum-1/0x4de840147db6d0655917f43da8a2e86c26aafb0a/) | ⚠️ Unaudited |
| WhitePaperInterestRateModelEth | unknown | ethereum | n/a | [`0xa4a5a4e04e0dfe6c792b3b8a71e818e263ed8678`](./contracts/ethereum-1/0xa4a5a4e04e0dfe6c792b3b8a71e818e263ed8678/) | ⚠️ Unaudited |
| WhitePaperInterestRateModelWBTC | unknown | ethereum | n/a | [`0x1f6d784f1001d9d406031869919a076c23bc210a`](./contracts/ethereum-1/0x1f6d784f1001d9d406031869919a076c23bc210a/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x714a35f232c0e478015f383ae0a69b1af1a2fa4a`](./contracts/ethereum-1/0x714a35f232c0e478015f383ae0a69b1af1a2fa4a/) | BadgerVotingShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa446d7789f2c1daee6b9377add622a8dfe3c95ba`](./contracts/ethereum-1/0xa446d7789f2c1daee6b9377add622a8dfe3c95ba/) | CDaiDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f69f08f872f366ad8edde03dae8812619a17536`](./contracts/ethereum-1/0x0f69f08f872f366ad8edde03dae8812619a17536/) | CErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1136568622c6fb3b768385c98167b2a0b27658ab`](./contracts/ethereum-1/0x1136568622c6fb3b768385c98167b2a0b27658ab/) | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e5ddce5b4d536292218e4e02305bccc22972c9e`](./contracts/ethereum-1/0x4e5ddce5b4d536292218e4e02305bccc22972c9e/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f157b3d3d7c415a0e40012d64465e3a0402c64`](./contracts/ethereum-1/0x45f157b3d3d7c415a0e40012d64465e3a0402c64/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc16da9df0a22f01a16bc0620a27e7d6d6488550`](./contracts/ethereum-1/0xbc16da9df0a22f01a16bc0620a27e7d6d6488550/) | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395cb0c7bf2808a11200a9018c98b2839f45c6f9`](./contracts/ethereum-1/0x395cb0c7bf2808a11200a9018c98b2839f45c6f9/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d9d55f64394f6a778110bf9e7b14be744e8866c`](./contracts/ethereum-1/0x2d9d55f64394f6a778110bf9e7b14be744e8866c/) | InsolventCErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8d6f19888d18add771b4649f8115a59b4425649`](./contracts/ethereum-1/0xa8d6f19888d18add771b4649f8115a59b4425649/) | InsolventComptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfbbfd727d8dcdd979e6c7b84e1d8980bbe0277a`](./contracts/ethereum-1/0xcfbbfd727d8dcdd979e6c7b84e1d8980bbe0277a/) | InsolventComptroller2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f7c656c0c3f547cb18d7a15318e98ae44ed8cbc`](./contracts/ethereum-1/0x3f7c656c0c3f547cb18d7a15318e98ae44ed8cbc/) | JumpRateModelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60a5d5a4499f227ee75f82946e3146b6a55531ee`](./contracts/ethereum-1/0x60a5d5a4499f227ee75f82946e3146b6a55531ee/) | JumpRateModelV3Stable1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf6c862109e07ca961c8aaccf99200a414c07d70`](./contracts/ethereum-1/0xcf6c862109e07ca961c8aaccf99200a414c07d70/) | JumpRateModelV3Stable2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6d5fb3f34e34dc64c339b0803cc9e741da00a11`](./contracts/ethereum-1/0xf6d5fb3f34e34dc64c339b0803cc9e741da00a11/) | JumpRateModelV3Type1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2a712308b27a17607407d3f580b4ba571261e3`](./contracts/ethereum-1/0x2c2a712308b27a17607407d3f580b4ba571261e3/) | JumpRateModelV3Type2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa742ce2e4426290017ab165b0f7d8ab131e4a9f5`](./contracts/ethereum-1/0xa742ce2e4426290017ab165b0f7d8ab131e4a9f5/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0190bf688ff57b935e99487aacebaccf450c5d4f`](./contracts/ethereum-1/0x0190bf688ff57b935e99487aacebaccf450c5d4f/) | PctPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4128fe23ef23194e00405603c937b19d3e30482c`](./contracts/ethereum-1/0x4128fe23ef23194e00405603c937b19d3e30482c/) | PercentQuadraticVoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf67a18404d15d83f5b77c3c522a7aa208f1127be`](./contracts/ethereum-1/0xf67a18404d15d83f5b77c3c522a7aa208f1127be/) | PercentVoteProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe14f594b790e6ed9529133af7cfe6eb92dbf192`](./contracts/ethereum-1/0xbe14f594b790e6ed9529133af7cfe6eb92dbf192/) | TEST_CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79faee4b277d07ce23e2387ef67ef45acc62f156`](./contracts/ethereum-1/0x79faee4b277d07ce23e2387ef67ef45acc62f156/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4de840147db6d0655917f43da8a2e86c26aafb0a`](./contracts/ethereum-1/0x4de840147db6d0655917f43da8a2e86c26aafb0a/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4a5a4e04e0dfe6c792b3b8a71e818e263ed8678`](./contracts/ethereum-1/0xa4a5a4e04e0dfe6c792b3b8a71e818e263ed8678/) | WhitePaperInterestRateModelEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f6d784f1001d9d406031869919a076c23bc210a`](./contracts/ethereum-1/0x1f6d784f1001d9d406031869919a076c23bc210a/) | WhitePaperInterestRateModelWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
