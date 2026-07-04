# Agentic Audit Brief: Flux Finance

## Project Overview

- Project: Flux Finance (`flux-finance`)
- Website: [https://fluxfinance.com](https://fluxfinance.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.415Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 38 unique implementations (38 raw deployments)
- DeFi Llama TVL: $112,592,808.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 38 project-authored contract(s) across 1 chain(s); 14 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 22 common project-authored base contract(s) (contextupgradeable, ctokeninterface, ctokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (37 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/36 (0.0%)
- Deployed-live implementations: 37 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/fluxfinance/information))
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllowlistFactory | unknown | ethereum | n/a | [`0x0ed796...8ac988`](./contracts/ethereum-1/0x0ed7968f45cba8b8a76b014531435737e98ac988/) | ⚠️ Unaudited |
| AllPairVault | unknown | ethereum | n/a | [`0x2bb8de...de08bc`](./contracts/ethereum-1/0x2bb8de958134afd7543d4063cafad0b7c6de08bc/) | ⚠️ Unaudited |
| Blocklist | unknown | ethereum | n/a | [`0x89cb66...ef4342`](./contracts/ethereum-1/0x89cb664b5d11078afa20f0fa55a0ddf971ef4342/) | ⚠️ Unaudited |
| BondStrategy | unknown | ethereum | n/a | [`0xd1c121...e31154`](./contracts/ethereum-1/0xd1c12131b5fd306279fc5bc571bd81049ee31154/) | ⚠️ Unaudited |
| CashKYCSenderReceiver | unknown | ethereum | n/a | [`0x67e122...ce2e4b`](./contracts/ethereum-1/0x67e1220b51f58813fad3db66b1eeaf295bce2e4b/) | ⚠️ Unaudited |
| CashKYCSenderReceiverFactory | unknown | ethereum | n/a | [`0xcbf5d0...09b4a8`](./contracts/ethereum-1/0xcbf5d0b946ba15a0914d39c3e13c3c489d09b4a8/) | ⚠️ Unaudited |
| CashManager | unknown | ethereum | n/a | [`0x350188...4d618f`](./contracts/ethereum-1/0x3501883a646f1f8417bcb62162372550954d618f/) | ⚠️ Unaudited |
| CCashDelegate | unknown | ethereum | n/a | [`0x159d35...992d0a`](./contracts/ethereum-1/0x159d359b55a6d0cbe9b306862d13515fa1992d0a/) | ⚠️ Unaudited |
| CDaiDelegate | unknown | ethereum | n/a | [`0x8e1e54...5db18d`](./contracts/ethereum-1/0x8e1e54ee9516c40650d7bbee0c53aca9f95db18d/) | ⚠️ Unaudited |
| CErc20DelegatorKYC | unknown | ethereum | n/a | [`0x049e2a...4651a9`](./contracts/ethereum-1/0x049e2aab49813c7a34656a193777019ed74651a9/) | ⚠️ Unaudited |
| CompoundLens | unknown | ethereum | n/a | [`0xca8347...80acf8`](./contracts/ethereum-1/0xca83471ce9b0e7e6f628fa2a95ae97198780acf8/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x076c84...d527e0`](./contracts/ethereum-1/0x076c8405d6e2ecb84ebe265b255519e0f0d527e0/) | ⚠️ Unaudited |
| CTokenDelegate | unknown | ethereum | n/a | [`0x1c9a2d...cd978b`](./contracts/ethereum-1/0x1c9a2d6b33b4826757273d47ebee0e2dddcd978b/) | ⚠️ Unaudited |
| DestinationBridge | unknown | ethereum | n/a | [`0xbd8fb5...c9235c`](./contracts/ethereum-1/0xbd8fb563a325dc853741907ae06e5f3c02c9235c/) | ⚠️ Unaudited |
| FluxOracle | unknown | ethereum | n/a | [`0x1c1f01...2280c5`](./contracts/ethereum-1/0x1c1f01765e60f3e695b3bba902e64daecc2280c5/) | ⚠️ Unaudited |
| FTokenOracle | unknown | ethereum | n/a | [`0xc8edee...cf3a52`](./contracts/ethereum-1/0xc8edee4244c4befd6d05d6b3273c399485cf3a52/) | ⚠️ Unaudited |
| GovernerAlpha | unknown | ethereum | n/a | [`0x755481...50673f`](./contracts/ethereum-1/0x7554815084eb70e8de277141650fad7e3d50673f/) | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | ethereum | n/a | [`0x20bd72...970a13`](./contracts/ethereum-1/0x20bd72c3ab333399a85da76bcc2784a2a0970a13/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | ethereum | n/a | [`0x15adf6...2076bf`](./contracts/ethereum-1/0x15adf6047845348317771288736514778c2076bf/) | ⚠️ Unaudited |
| KYCRegistry | unknown | ethereum | n/a | [`0x71923a...678336`](./contracts/ethereum-1/0x71923a93a1f4837e931d888c90a10de4e3678336/) | ⚠️ Unaudited |
| OMMFFactory | unknown | ethereum | n/a | [`0x40f1ea...80e793`](./contracts/ethereum-1/0x40f1ea5256fddf049d9a46a96ff82766ea80e793/) | ⚠️ Unaudited |
| OMMFManager | unknown | ethereum | n/a | [`0x1d01be...be7929`](./contracts/ethereum-1/0x1d01be0296b99aadee94116e285cdb2c40be7929/) | ⚠️ Unaudited |
| OMMFRebaseSetter | unknown | ethereum | n/a | [`0x463efa...88afa7`](./contracts/ethereum-1/0x463efa052e662c6272e8aef5e4492d99f088afa7/) | ⚠️ Unaudited |
| Ondo | unknown | ethereum | n/a | [`0x3d72c7...f462df`](./contracts/ethereum-1/0x3d72c761180781d86ed5f631aeb51231d0f462df/) | ⚠️ Unaudited |
| OndoCoinlistDistributor | unknown | ethereum | n/a | [`0x14efbb...eb1e54`](./contracts/ethereum-1/0x14efbbe9f0bbae2bea83570f4fcd590c59eb1e54/) | ⚠️ Unaudited |
| OndoPriceOracle | unknown | ethereum | n/a | [`0x526a13...753c8e`](./contracts/ethereum-1/0x526a13df3594637c08bc964ad1980181f2753c8e/) | ⚠️ Unaudited |
| OndoPriceOracleV2 | unknown | ethereum | n/a | [`0xba9b10...6a7ef2`](./contracts/ethereum-1/0xba9b10f90b0ef26711373a0d8b6e7741866a7ef2/) | ⚠️ Unaudited |
| Pricer | unknown | ethereum | n/a | [`0x0d2691...78a07e`](./contracts/ethereum-1/0x0d269194548c874ec1ac7a6beb2a82bf7b78a07e/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x1a05f3...0720ac`](./contracts/ethereum-1/0x1a05f3ef99e89caa2eea361fc3fae21fc60720ac/) | ⚠️ Unaudited |
| RWAOracleExternalComparisonCheck | unknown | ethereum | n/a | [`0x0502c5...cc6abe`](./contracts/ethereum-1/0x0502c5ae08e7cd64fe1aeda7d6e229413ecc6abe/) | ⚠️ Unaudited |
| RWAOracleRateCheck | unknown | ethereum | n/a | [`0x0576f5...eccc22`](./contracts/ethereum-1/0x0576f565bdd00199b8e353f569ce903bb2eccc22/) | ⚠️ Unaudited |
| SourceBridge | unknown | ethereum | n/a | [`0xd89655...9813db`](./contracts/ethereum-1/0xd89655ecf4800251880f8f6ba9038970ad9813db/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x2c5898...b18d9c`](./contracts/ethereum-1/0x2c5898da4df1d45eab2b7b192a361c3b9eb18d9c/) | ⚠️ Unaudited |
| TrancheToken | unknown | ethereum | n/a | [`0x1cc75c...8839a1`](./contracts/ethereum-1/0x1cc75c52c66960a70e4d94452f21037cd68839a1/) | ⚠️ Unaudited |
| Unitroller | unknown | ethereum | n/a | [`0x0a5fa0...4659f4`](./contracts/ethereum-1/0x0a5fa0e21517d13e532904cfb1868d9d164659f4/) | ⚠️ Unaudited |
| USDYFactory | unknown | ethereum | n/a | [`0x478681...138557`](./contracts/ethereum-1/0x478681587af321e6b055d3b08caf17140b138557/) | ⚠️ Unaudited |
| USDYManager | unknown | ethereum | n/a | [`0x5577cf...e7df30`](./contracts/ethereum-1/0x5577cf81459b742dbfe757f98cb3ed4ed8e7df30/) | ⚠️ Unaudited |
| WOMMFFactory | unknown | ethereum | n/a | [`0x02d77d...e2b51d`](./contracts/ethereum-1/0x02d77d39c3889bf1da64c96f6f3b9a22aee2b51d/) | ⚠️ Unaudited |

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
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/fluxfinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0ed796...8ac988`](./contracts/ethereum-1/0x0ed7968f45cba8b8a76b014531435737e98ac988/) | AllowlistFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bb8de...de08bc`](./contracts/ethereum-1/0x2bb8de958134afd7543d4063cafad0b7c6de08bc/) | AllPairVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89cb66...ef4342`](./contracts/ethereum-1/0x89cb664b5d11078afa20f0fa55a0ddf971ef4342/) | Blocklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd1c121...e31154`](./contracts/ethereum-1/0xd1c12131b5fd306279fc5bc571bd81049ee31154/) | BondStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e122...ce2e4b`](./contracts/ethereum-1/0x67e1220b51f58813fad3db66b1eeaf295bce2e4b/) | CashKYCSenderReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbf5d0...09b4a8`](./contracts/ethereum-1/0xcbf5d0b946ba15a0914d39c3e13c3c489d09b4a8/) | CashKYCSenderReceiverFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x350188...4d618f`](./contracts/ethereum-1/0x3501883a646f1f8417bcb62162372550954d618f/) | CashManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x159d35...992d0a`](./contracts/ethereum-1/0x159d359b55a6d0cbe9b306862d13515fa1992d0a/) | CCashDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e1e54...5db18d`](./contracts/ethereum-1/0x8e1e54ee9516c40650d7bbee0c53aca9f95db18d/) | CDaiDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x049e2a...4651a9`](./contracts/ethereum-1/0x049e2aab49813c7a34656a193777019ed74651a9/) | CErc20DelegatorKYC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x076c84...d527e0`](./contracts/ethereum-1/0x076c8405d6e2ecb84ebe265b255519e0f0d527e0/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c9a2d...cd978b`](./contracts/ethereum-1/0x1c9a2d6b33b4826757273d47ebee0e2dddcd978b/) | CTokenDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd8fb5...c9235c`](./contracts/ethereum-1/0xbd8fb563a325dc853741907ae06e5f3c02c9235c/) | DestinationBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c1f01...2280c5`](./contracts/ethereum-1/0x1c1f01765e60f3e695b3bba902e64daecc2280c5/) | FluxOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8edee...cf3a52`](./contracts/ethereum-1/0xc8edee4244c4befd6d05d6b3273c399485cf3a52/) | FTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x755481...50673f`](./contracts/ethereum-1/0x7554815084eb70e8de277141650fad7e3d50673f/) | GovernerAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20bd72...970a13`](./contracts/ethereum-1/0x20bd72c3ab333399a85da76bcc2784a2a0970a13/) | GovernorBravoDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15adf6...2076bf`](./contracts/ethereum-1/0x15adf6047845348317771288736514778c2076bf/) | JumpRateModelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71923a...678336`](./contracts/ethereum-1/0x71923a93a1f4837e931d888c90a10de4e3678336/) | KYCRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40f1ea...80e793`](./contracts/ethereum-1/0x40f1ea5256fddf049d9a46a96ff82766ea80e793/) | OMMFFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d01be...be7929`](./contracts/ethereum-1/0x1d01be0296b99aadee94116e285cdb2c40be7929/) | OMMFManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x463efa...88afa7`](./contracts/ethereum-1/0x463efa052e662c6272e8aef5e4492d99f088afa7/) | OMMFRebaseSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d72c7...f462df`](./contracts/ethereum-1/0x3d72c761180781d86ed5f631aeb51231d0f462df/) | Ondo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14efbb...eb1e54`](./contracts/ethereum-1/0x14efbbe9f0bbae2bea83570f4fcd590c59eb1e54/) | OndoCoinlistDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x526a13...753c8e`](./contracts/ethereum-1/0x526a13df3594637c08bc964ad1980181f2753c8e/) | OndoPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba9b10...6a7ef2`](./contracts/ethereum-1/0xba9b10f90b0ef26711373a0d8b6e7741866a7ef2/) | OndoPriceOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d2691...78a07e`](./contracts/ethereum-1/0x0d269194548c874ec1ac7a6beb2a82bf7b78a07e/) | Pricer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a05f3...0720ac`](./contracts/ethereum-1/0x1a05f3ef99e89caa2eea361fc3fae21fc60720ac/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0502c5...cc6abe`](./contracts/ethereum-1/0x0502c5ae08e7cd64fe1aeda7d6e229413ecc6abe/) | RWAOracleExternalComparisonCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0576f5...eccc22`](./contracts/ethereum-1/0x0576f565bdd00199b8e353f569ce903bb2eccc22/) | RWAOracleRateCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd89655...9813db`](./contracts/ethereum-1/0xd89655ecf4800251880f8f6ba9038970ad9813db/) | SourceBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c5898...b18d9c`](./contracts/ethereum-1/0x2c5898da4df1d45eab2b7b192a361c3b9eb18d9c/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc75c...8839a1`](./contracts/ethereum-1/0x1cc75c52c66960a70e4d94452f21037cd68839a1/) | TrancheToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a5fa0...4659f4`](./contracts/ethereum-1/0x0a5fa0e21517d13e532904cfb1868d9d164659f4/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x478681...138557`](./contracts/ethereum-1/0x478681587af321e6b055d3b08caf17140b138557/) | USDYFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5577cf...e7df30`](./contracts/ethereum-1/0x5577cf81459b742dbfe757f98cb3ed4ed8e7df30/) | USDYManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02d77d...e2b51d`](./contracts/ethereum-1/0x02d77d39c3889bf1da64c96f6f3b9a22aee2b51d/) | WOMMFFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 1 |
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
