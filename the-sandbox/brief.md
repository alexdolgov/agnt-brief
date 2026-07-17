# Agentic Audit Brief: the-sandbox

## Project Overview

- Project: the-sandbox (`the-sandbox`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.387Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 24 unique implementations (24 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 24 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 24 contract(s).

## Fork Lineage

This project reuses audited code from **KyberSwap** (`kyberswap`) in the KyberReserve, LiquidityConversionRates subsystem.
9 audits inherited from `kyberswap`, scoped to that subsystem.

This project reuses audited code from **Hashflow** (`hashflow`) in the Asset, ERC20GroupCatalyst, ERC20GroupGem, EstateSale, EstateSaleWithFee, KyberReserve, … subsystem.
1 audits inherited from `hashflow`, scoped to that subsystem.

Total inherited audits: 10. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/22 (50.0%)
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/24
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 10 (0 direct, 10 inherited from forked code)
- Scoreable audits (matched contracts): 10
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/hashflow/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 4 fresh, 2 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 50.0% (ChainSecurity, Immunefi, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunefi | Tier 1 | 11 | 45.8% | n/a |
| ChainSecurity | Tier 1 | 2 | 8.3% | 2021-04 |
| Hexens | Tier 2 | 2 | 8.3% | 2025-12 |
| Omniscia | Tier 2 | 2 | 8.3% | 2025-06 |
| Spearbit | Tier 1 | 2 | 8.3% | 2025-10 |
| unknown | Tier 2 | 2 | 8.3% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Asset | unknown | ethereum | n/a | [`0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8`](./contracts/ethereum-1/0x067a1eb5e383ed24b66d72aaf80d8d7db3d299a8/) | ✅ Audited |
| ERC20GroupCatalyst | unknown | ethereum | n/a | [`0x2fc246149b4b8d7bcef6188a10af1791380227f1`](./contracts/ethereum-1/0x2fc246149b4b8d7bcef6188a10af1791380227f1/) | ✅ Audited |
| ERC20GroupGem | unknown | ethereum | n/a | [`0x8ff2611da386de427fc96a8073963619c5851ba5`](./contracts/ethereum-1/0x8ff2611da386de427fc96a8073963619c5851ba5/) | ✅ Audited |
| EstateSale | unknown | ethereum | n/a | [`0xe372ed8d188517ef4d4bc464c0c068d2002e2903`](./contracts/ethereum-1/0xe372ed8d188517ef4d4bc464c0c068d2002e2903/) | ✅ Audited |
| EstateSaleWithFee | unknown | ethereum | n/a | [`0x089a55baf7052321cbce4bdbf3be568955648d9d`](./contracts/ethereum-1/0x089a55baf7052321cbce4bdbf3be568955648d9d/) | ✅ Audited |
| KyberReserve | unknown | ethereum | n/a | [`0xc82d6f13d96511977b21bcd9d60b7fc46191daf2`](./contracts/ethereum-1/0xc82d6f13d96511977b21bcd9d60b7fc46191daf2/) | ✅ Audited |
| Land | unknown | ethereum | n/a | [`0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a`](./contracts/ethereum-1/0x50f5474724e0ee42d9a4e711ccfb275809fd6d4a/) | ✅ Audited |
| LandSaleWithETHAndDAI | unknown | ethereum | n/a | [`0x47136343c616c3d6713b3ad4a223deda42839859`](./contracts/ethereum-1/0x47136343c616c3d6713b3ad4a223deda42839859/) | ✅ Audited |
| LandSaleWithReferral | unknown | ethereum | n/a | [`0x126a3437f3b76155e5e574abdc048b54f2f4adaa`](./contracts/ethereum-1/0x126a3437f3b76155e5e574abdc048b54f2f4adaa/) | ✅ Audited |
| LiquidityConversionRates | unknown | ethereum | n/a | [`0x9afeb4122240b58e67a55e11d55555b4ad73f4d5`](./contracts/ethereum-1/0x9afeb4122240b58e67a55e11d55555b4ad73f4d5/) | ✅ Audited |
| StarterPackV1 | unknown | ethereum | n/a | [`0x157372f9d3c94609adfb967741a0afc0c1db1bbf`](./contracts/ethereum-1/0x157372f9d3c94609adfb967741a0afc0c1db1bbf/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetGiveaway | unknown | ethereum | n/a | [`0x05831537ff42ac82ddf89790f81cb5c4664be9c1`](./contracts/ethereum-1/0x05831537ff42ac82ddf89790f81cb5c4664be9c1/) | ⚠️ Unaudited |
| AssetSignedAuction | unknown | ethereum | n/a | [`0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a`](./contracts/ethereum-1/0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a/) | ⚠️ Unaudited |
| CatalystMinter | unknown | ethereum | n/a | [`0x4d103f2a660114f7fa0e3d78f13acbcd13672e57`](./contracts/ethereum-1/0x4d103f2a660114f7fa0e3d78f13acbcd13672e57/) | ⚠️ Unaudited |
| CatalystRegistry | unknown | ethereum | n/a | [`0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7`](./contracts/ethereum-1/0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7/) | ⚠️ Unaudited |
| CommonMinter | unknown | ethereum | n/a | [`0x27b4c402ff602fac8248a895d325d45bf740643c`](./contracts/ethereum-1/0x27b4c402ff602fac8248a895d325d45bf740643c/) | ⚠️ Unaudited |
| ERC20SubToken | unknown | ethereum | n/a | [`0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe`](./contracts/ethereum-1/0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe/) | ⚠️ Unaudited |
| GenesisBouncer | unknown | ethereum | n/a | [`0x48dee19c0e44c147934702c12dc98963ca831009`](./contracts/ethereum-1/0x48dee19c0e44c147934702c12dc98963ca831009/) | ⚠️ Unaudited |
| LandWeightedSANDRewardPool | unknown | ethereum | n/a | [`0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6`](./contracts/ethereum-1/0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6/) | ⚠️ Unaudited |
| NativeMetaTransactionProcessor | unknown | ethereum | n/a | [`0xb48ce889bdfc5164c309d03b9c6126133c85f396`](./contracts/ethereum-1/0xb48ce889bdfc5164c309d03b9c6126133c85f396/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x46ac83d74091dd54b503d89fa92b5c788bcd3886`](./contracts/ethereum-1/0x46ac83d74091dd54b503d89fa92b5c788bcd3886/) | ⚠️ Unaudited |
| Sand | unknown | ethereum | n/a | [`0x3845badade8e6dff049820680d1f14bd3903a5d0`](./contracts/ethereum-1/0x3845badade8e6dff049820680d1f14bd3903a5d0/) | ⚠️ Unaudited |
| SANDRewardPool | unknown | ethereum | n/a | [`0xce7467531f0fa949e6cd09a3b8f39e287eec33b8`](./contracts/ethereum-1/0xce7467531f0fa949e6cd09a3b8f39e287eec33b8/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3dd49f67e9d5bc4c5e6634b3f70bfd9dc1b6bd74`](./contracts/ethereum-1/0x3dd49f67e9d5bc4c5e6634b3f70bfd9dc1b6bd74/) | ⚠️ Unaudited |

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
| [kyberswap-dec-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/kyberswap-dec-25(Final).pdf) | unknown | Audit | 2026-01 | fresh | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025](https://hexens.io/audit-reports/kyber-network-smart-intent-protocol-dec-2025) | Hexens | Audit | 2025-12 | fresh | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Kyber-Hook-Uniswap-Foundation-Spearbit-Security-Review-October-2025.pdf) | Spearbit | Audit | 2025-10 | fresh | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf](https://github.com/KyberNetwork/kyber-exclusive-amm-sc/blob/main/audits/06_24_2025_KyberNetwork_Omniscia_SecurityReview_UniswapV4Hooks.pdf) | Omniscia | Audit | 2025-06 | aging | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [omniscia.io/reports/kyber-network-uniswap-v4-hooks-68163cf266222800187026b8](https://omniscia.io/reports/kyber-network-uniswap-v4-hooks-68163cf266222800187026b8) | Omniscia | Audit | 2025-06 | aging | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf](https://reports.chainsecurity.com/KyberNetwork/ChainSecurity_KyberNetwork_KyberSwapClassic_Audit.pdf) | ChainSecurity | Audit | 2021-04 | stale | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [SmartDecAudit.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/APRAudit/SmartDecAudit.pdf) | unknown | Audit | 2019-12 | stale | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [ChainSecurity_Kyberv3.pdf](https://github.com/KyberNetwork/smart-contracts/blob/master/audits/kyberV3Audit/ChainSecurity_Kyberv3.pdf) | ChainSecurity | Audit | 2019-01 | stale | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f](https://cantina.xyz/portfolio/eb59f23b-ef3c-4b3c-9d28-3455d5337d3f) | Spearbit | Audit | 2025-10 | fresh | Inherited from KyberSwap — forked code, scoped to KyberReserve, LiquidityConversionRates | inherited | 2 | n/a |
| [immunefi.com/bug-bounty/hashflow/information](https://immunefi.com/bug-bounty/hashflow/information) | Immunefi | Bug Bounty | Ongoing | n/a | Inherited from Hashflow — forked code, scoped to Asset, ERC20GroupCatalyst, ERC20GroupGem, EstateSale, +7 more | n/a | n/a | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x05831537ff42ac82ddf89790f81cb5c4664be9c1`](./contracts/ethereum-1/0x05831537ff42ac82ddf89790f81cb5c4664be9c1/) | AssetGiveaway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a`](./contracts/ethereum-1/0x5167c6a6e91adeddafcfacd675ba1325fd70dc9a/) | AssetSignedAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d103f2a660114f7fa0e3d78f13acbcd13672e57`](./contracts/ethereum-1/0x4d103f2a660114f7fa0e3d78f13acbcd13672e57/) | CatalystMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7`](./contracts/ethereum-1/0xefa52f2f24a82fa27faae3c1ec3cca52806d1aa7/) | CatalystRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27b4c402ff602fac8248a895d325d45bf740643c`](./contracts/ethereum-1/0x27b4c402ff602fac8248a895d325d45bf740643c/) | CommonMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe`](./contracts/ethereum-1/0x3b8af23aadabe31fdd079d1720bf357cb3ec67fe/) | ERC20SubToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48dee19c0e44c147934702c12dc98963ca831009`](./contracts/ethereum-1/0x48dee19c0e44c147934702c12dc98963ca831009/) | GenesisBouncer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6`](./contracts/ethereum-1/0xeae6fd7d8c1740f3f1b03e9a5c35793cd260b9a6/) | LandWeightedSANDRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb48ce889bdfc5164c309d03b9c6126133c85f396`](./contracts/ethereum-1/0xb48ce889bdfc5164c309d03b9c6126133c85f396/) | NativeMetaTransactionProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3845badade8e6dff049820680d1f14bd3903a5d0`](./contracts/ethereum-1/0x3845badade8e6dff049820680d1f14bd3903a5d0/) | Sand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce7467531f0fa949e6cd09a3b8f39e287eec33b8`](./contracts/ethereum-1/0xce7467531f0fa949e6cd09a3b8f39e287eec33b8/) | SANDRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=29

Fork inheritance lineage and inherited audits are included when available.
