# Agentic Audit Brief: Arbswap

## Project Overview

- Project: Arbswap (`arbswap`)
- Website: [https://arbswap.io](https://arbswap.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:04.058Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $199,099.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 20 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 20 contract(s).

## Fork Lineage

This project reuses audited code from **PancakeSwap** (`pancakeswap`) in the PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer subsystem.
15 audits inherited from `pancakeswap`, scoped to that subsystem.

Total inherited audits: 15. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 20; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/20 (25.0%)
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/20
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 17 (2 direct, 15 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 2 fresh, 5 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 25.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbswapToken | unknown | arbitrum | n/a | [`0xd5f09e...29a099`](./contracts/arbitrum-42161/0xd5f09e5307ed5a26ac762a6ba5573c22d729a099/) | ✅ Audited |
| MasterChefV3 | unknown | arbitrum | n/a | [`0x41210a...7eb0b0`](./contracts/arbitrum-42161/0x41210a7c9853da7a65cad516c32c25fa5c7eb0b0/) | ✅ Audited |
| MirrorARBS | unknown | arbitrum | n/a | [`0xa04c34...089d36`](./contracts/arbitrum-42161/0xa04c348246efb67e5376da989d70175145089d36/) | ✅ Audited |
| VestingMaster | unknown | arbitrum | n/a | [`0x2b84f4...f06735`](./contracts/arbitrum-42161/0x2b84f485c18daeb87b1ebdba4b2bc5b945f06735/) | ✅ Audited |
| XARBSPool | unknown | arbitrum | n/a | [`0x6d6e38...f6a222`](./contracts/arbitrum-42161/0x6d6e388064eb7e3256539e9c3e9f16a829f6a222/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbEgg | unknown | arbitrum | n/a | [`0x3dd7d0...5e9b6d`](./contracts/arbitrum-42161/0x3dd7d034198357bf0d54c1e377f3d2ce2a5e9b6d/) | ⚠️ Unaudited |
| ArbsProxyOFT | unknown | arbitrum | n/a | [`0x406822...3d844a`](./contracts/arbitrum-42161/0x4068224e09d400bf2ff3dd3035bfa5671e3d844a/) | ⚠️ Unaudited |
| ArbswapAirdrop | unknown | arbitrum | n/a | [`0x3ceefa...13d3c3`](./contracts/arbitrum-42161/0x3ceefa452a8d7522786abd2f644367464f13d3c3/) | ⚠️ Unaudited |
| ArbswapSmartRouter | unknown | arbitrum | n/a | [`0x4aef9d...88f2e9`](./contracts/arbitrum-42161/0x4aef9d850a71d0f0051e8c69bf865ae34188f2e9/) | ⚠️ Unaudited |
| ArbswapStableSwapFactory | unknown | arbitrum | n/a | [`0x3a52e9...2c099d`](./contracts/arbitrum-42161/0x3a52e9200ed7403d9d21664fdee540c2d02c099d/) | ⚠️ Unaudited |
| ArbswapStableSwapLPFactory | unknown | arbitrum | n/a | [`0x5bbebd...3718f1`](./contracts/arbitrum-42161/0x5bbebd93777dfa334f6346271fbc6a56ed3718f1/) | ⚠️ Unaudited |
| ArbswapStableSwapThreePoolDeployer | unknown | arbitrum | n/a | [`0xc1b418...125e67`](./contracts/arbitrum-42161/0xc1b418879750fc785b2112a77d73498eaa125e67/) | ⚠️ Unaudited |
| ArbswapStableSwapTwoPoolDeployer | unknown | arbitrum | n/a | [`0x6b23bb...69507c`](./contracts/arbitrum-42161/0x6b23bbdddbbef5f999b9cb7e9b579231ac69507c/) | ⚠️ Unaudited |
| ArbswapStableSwapTwoPoolInfo | unknown | arbitrum | n/a | [`0xaa50d3...770d7f`](./contracts/arbitrum-42161/0xaa50d30612a58f2e7935c4482fa426b0aa770d7f/) | ⚠️ Unaudited |
| ArbswapStableSwapWBNBHelper | unknown | arbitrum | n/a | [`0x318080...5283ab`](./contracts/arbitrum-42161/0x318080b1590e06db79d55ce7a348765c3d5283ab/) | ⚠️ Unaudited |
| ArbswapStableSwapWETHHelper | unknown | arbitrum | n/a | [`0x8bf212...b71029`](./contracts/arbitrum-42161/0x8bf212f02d557f9dd4b75dd69bf1e6bf1bb71029/) | ⚠️ Unaudited |
| IFODeployer | unknown | arbitrum | n/a | [`0x85855c...148a6f`](./contracts/arbitrum-42161/0x85855cada5f92206fa0ee01d0d792849ea148a6f/) | ⚠️ Unaudited |
| MockNovaFarm | unknown | arbitrum | n/a | [`0x278235...c2531b`](./contracts/arbitrum-42161/0x278235c801e9a5d6cef1f687e59fc65470c2531b/) | ⚠️ Unaudited |
| RealArbsian | unknown | arbitrum | n/a | [`0x700794...272932`](./contracts/arbitrum-42161/0x700794d18dee51eb308eed0dc0aacadc5d272932/) | ⚠️ Unaudited |
| TestVM | unknown | arbitrum | n/a | [`0x7de026...0eafa4`](./contracts/arbitrum-42161/0x7de026ce716319d8e01c901f366719230f0eafa4/) | ⚠️ Unaudited |

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
| [blocksec_pancake_vecake_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancake_vecake_v1.0-signed.pdf) | yAudit | Audit | 2023-11 | stale | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [SlowMist Audit Report - PancakeSwap_v3_Phase2_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_Phase2_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [PeckShield-Audit-Report-PancakeSwapV3-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PancakeSwapV3-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [SlowMist Audit Report - PancakeSwap_v3_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_v3_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [spaces/-MHREX7DHcljbY5IkjgJ-1972196547/uploads/Ma0anQ4GXvFPyVLjFRxr/PancakeSwap-OFT-Audit-OtterSec.pdf](https://1397868517-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MHREX7DHcljbY5IkjgJ-1972196547%2Fuploads%2FMa0anQ4GXvFPyVLjFRxr%2FPancakeSwap-OFT-Audit-OtterSec.pdf) | yAudit | Audit | 2022-12 | stale | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Move%20Smart%20Contract%20Audits/PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [PancakeSwap Aptos - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/PancakeSwap%20Aptos%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2022-11 | stale | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [SlowMist Audit Report - PancakeSwap_MOVE_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20PancakeSwap_MOVE_en-us.pdf) | SlowMist | Audit | 2022-10 | stale | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Arbswap-MasterChef-w:-locked staking.pdf](https://github.com/Arbswap-Official/Audit-reports/blob/main/PeckShield-Audit-Report-Arbswap-MasterChef-w%3A-locked%20staking.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-Arbswap-v1.0.pdf](https://github.com/Arbswap-Official/Audit-reports/blob/main/PeckShield-Audit-Report-Arbswap-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 3 | high |
| [HashDit.pdf](https://github.com/pancakeswap/cake-token/blob/main/audits/HashDit.pdf) | yAudit | Audit | 2026-06 | fresh | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf) | unknown | Audit | 2025-11 | fresh | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [burrasec-audit.pdf](https://github.com/pancakeswap/pancake-developer/blob/master/docs/public/crosschain/burrasec-audit.pdf) | yAudit | Audit | 2025-05 | aging | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [pashov-audit.pdf](https://github.com/pancakeswap/pancake-developer/blob/master/docs/public/crosschain/pashov-audit.pdf) | Pashov Audit Group | Audit | 2025-05 | aging | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [blocksec_pancake_aggregator_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_pancake_aggregator_v1.0-signed.pdf) | yAudit | Audit | 2025-03 | aging | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [Cyfrin.pdf](https://github.com/pancakeswap/infinity-universal-router/blob/main/audits/Cyfrin.pdf) | Cyfrin | Audit | 2025-03 | aging | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |
| [Zellic.pdf (also discovered via alternate URL)](https://github.com/pancakeswap/infinity-core/blob/main/docs/audits/Zellic.pdf) | Zellic | Audit | 2024-10 | aging | Inherited from PancakeSwap — forked code, scoped to PancakeStableSwapFactory, PancakeStableSwapTwoPoolDeployer | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3dd7d0...5e9b6d`](./contracts/arbitrum-42161/0x3dd7d034198357bf0d54c1e377f3d2ce2a5e9b6d/) | ArbEgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x406822...3d844a`](./contracts/arbitrum-42161/0x4068224e09d400bf2ff3dd3035bfa5671e3d844a/) | ArbsProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3ceefa...13d3c3`](./contracts/arbitrum-42161/0x3ceefa452a8d7522786abd2f644367464f13d3c3/) | ArbswapAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4aef9d...88f2e9`](./contracts/arbitrum-42161/0x4aef9d850a71d0f0051e8c69bf865ae34188f2e9/) | ArbswapSmartRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a52e9...2c099d`](./contracts/arbitrum-42161/0x3a52e9200ed7403d9d21664fdee540c2d02c099d/) | ArbswapStableSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5bbebd...3718f1`](./contracts/arbitrum-42161/0x5bbebd93777dfa334f6346271fbc6a56ed3718f1/) | ArbswapStableSwapLPFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1b418...125e67`](./contracts/arbitrum-42161/0xc1b418879750fc785b2112a77d73498eaa125e67/) | ArbswapStableSwapThreePoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6b23bb...69507c`](./contracts/arbitrum-42161/0x6b23bbdddbbef5f999b9cb7e9b579231ac69507c/) | ArbswapStableSwapTwoPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaa50d3...770d7f`](./contracts/arbitrum-42161/0xaa50d30612a58f2e7935c4482fa426b0aa770d7f/) | ArbswapStableSwapTwoPoolInfo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x318080...5283ab`](./contracts/arbitrum-42161/0x318080b1590e06db79d55ce7a348765c3d5283ab/) | ArbswapStableSwapWBNBHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8bf212...b71029`](./contracts/arbitrum-42161/0x8bf212f02d557f9dd4b75dd69bf1e6bf1bb71029/) | ArbswapStableSwapWETHHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x85855c...148a6f`](./contracts/arbitrum-42161/0x85855cada5f92206fa0ee01d0d792849ea148a6f/) | IFODeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x278235...c2531b`](./contracts/arbitrum-42161/0x278235c801e9a5d6cef1f687e59fc65470c2531b/) | MockNovaFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x700794...272932`](./contracts/arbitrum-42161/0x700794d18dee51eb308eed0dc0aacadc5d272932/) | RealArbsian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7de026...0eafa4`](./contracts/arbitrum-42161/0x7de026ce716319d8e01c901f366719230f0eafa4/) | TestVM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=5

Zero-match audit list:

- [18807] blocksec_pancake_vecake_v1.0-signed.pdf
- [18808] SlowMist Audit Report - PancakeSwap_v3_Phase2_en-us.pdf
- [18809] PeckShield-Audit-Report-PancakeSwapV3-v1.0.pdf
- [18810] SlowMist Audit Report - PancakeSwap_v3_en-us.pdf
- [18811] spaces/-MHREX7DHcljbY5IkjgJ-1972196547/uploads/Ma0anQ4GXvFPyVLjFRxr/PancakeSwap-OFT-Audit-OtterSec.pdf
- [18812] PancakeSwap_Aptos_DEX_Move_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [18813] PancakeSwap Aptos - Zellic Audit Report.pdf
- [18814] SlowMist Audit Report - PancakeSwap_MOVE_en-us.pdf
- [24566] HashDit.pdf
- [24567] blocksec_1perp_feeearner_smart_contract_signed_20251104.pdf
- [24568] burrasec-audit.pdf
- [24569] pashov-audit.pdf
- [24570] blocksec_pancake_aggregator_v1.0-signed.pdf
- [24571] Cyfrin.pdf
- [24572] Zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
