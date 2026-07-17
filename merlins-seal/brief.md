# Agentic Audit Brief: Merlins Seal

## Project Overview

- Project: Merlins Seal (`merlins-seal`)
- Website: [https://merlinchain.io/bridge/staking](https://merlinchain.io/bridge/staking)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.617Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, ethereum
- Contract surface: 41 unique implementations (41 raw deployments)
- DeFi Llama TVL: $349,025,166.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 41 project-authored contract(s) across 2 chain(s); 5 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (timelockcontroller, erc165, erc721holder). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 41; live-surface contracts included: 41 (41 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/40 (0.0%)
- Deployed-live implementations: 41 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 41
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessRegistry | unknown | ethereum | n/a | [`0x728da61583441bb4326481ae27edeaaaa2d75c19`](./contracts/ethereum-1/0x728da61583441bb4326481ae27edeaaaa2d75c19/) | ⚠️ Unaudited |
| AssetsRouter | unknown | ethereum | n/a | [`0x219e157c79f5b188397f6ccdb6d0f97600eadfb6`](./contracts/ethereum-1/0x219e157c79f5b188397f6ccdb6d0f97600eadfb6/) | ⚠️ Unaudited |
| AssetsVault | unknown | ethereum | n/a | [`0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9`](./contracts/ethereum-1/0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9/) | ⚠️ Unaudited |
| AssetVault | unknown | ethereum | n/a | [`0x1fc603779dc6b4866769a58067777d2c52628226`](./contracts/ethereum-1/0x1fc603779dc6b4866769a58067777d2c52628226/) | ⚠️ Unaudited |
| AsyncDistributor | unknown | ethereum | n/a | [`0xed15e5dd75a266110a69764ac6919ef9188656cb`](./contracts/ethereum-1/0xed15e5dd75a266110a69764ac6919ef9188656cb/) | ⚠️ Unaudited |
| BeraStoneRateAdapter | unknown | ethereum | n/a | [`0x48d74bdbcd0b7570fd8c3056d5d0ef04b8b8a664`](./contracts/ethereum-1/0x48d74bdbcd0b7570fd8c3056d5d0ef04b8b8a664/) | ⚠️ Unaudited |
| BevmDepositBridge | unknown | ethereum | n/a | [`0x53dde9a818ff2bdb9e54b9149a5e66dca5df6c7f`](./contracts/ethereum-1/0x53dde9a818ff2bdb9e54b9149a5e66dca5df6c7f/) | ⚠️ Unaudited |
| DepositBridge | unknown | ethereum | n/a | [`0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e`](./contracts/ethereum-1/0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e/) | ⚠️ Unaudited |
| DepositHelper | unknown | ethereum | n/a | [`0x1565db133d0108e911224f174ec12d20f1531a76`](./contracts/ethereum-1/0x1565db133d0108e911224f174ec12d20f1531a76/) | ⚠️ Unaudited |
| DepositVault | unknown | ethereum | n/a | [`0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc`](./contracts/ethereum-1/0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc/) | ⚠️ Unaudited |
| DepositWrapper | unknown | ethereum | n/a | [`0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357`](./contracts/ethereum-1/0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357/) | ⚠️ Unaudited |
| Escrow | unknown | ethereum | n/a | [`0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d`](./contracts/ethereum-1/0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x147a198d803d4a02b8bec7cc78be1abe0c3d93e5`](./contracts/ethereum-1/0x147a198d803d4a02b8bec7cc78be1abe0c3d93e5/) | ⚠️ Unaudited |
| Locker | unknown | ethereum | n/a | [`0xa0fde87b8e6d263bb18ac76c8a7ab868bb0db2fb`](./contracts/ethereum-1/0xa0fde87b8e6d263bb18ac76c8a7ab868bb0db2fb/) | ⚠️ Unaudited |
| MellowDepositWstETHStrategy | unknown | ethereum | n/a | [`0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574`](./contracts/ethereum-1/0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574/) | ⚠️ Unaudited |
| MiningPool | unknown | ethereum | n/a | [`0x8f5420e76eec29027800d4e3e8e879617bde709b`](./contracts/ethereum-1/0x8f5420e76eec29027800d4e3e8e879617bde709b/) | ⚠️ Unaudited |
| Minter | unknown | ethereum | n/a | [`0xec306e46549a7e8f4fce823d3058f2d134133b17`](./contracts/ethereum-1/0xec306e46549a7e8f4fce823d3058f2d134133b17/) | ⚠️ Unaudited |
| NativeLendingETHStrategy | unknown | ethereum | n/a | [`0x2d70868f12a05b8c347974415bac5de053daa376`](./contracts/ethereum-1/0x2d70868f12a05b8c347974415bac5de053daa376/) | ⚠️ Unaudited |
| NoDelayTimelockController | unknown | ethereum | n/a | [`0x00e72315f630b11034fd081793fca1279b6a3d82`](./contracts/ethereum-1/0x00e72315f630b11034fd081793fca1279b6a3d82/) | ⚠️ Unaudited |
| OneDayDelayTimelockController | unknown | ethereum | n/a | [`0x5eddcfe6b829621487a00e3b3d211ef80986de9a`](./contracts/ethereum-1/0x5eddcfe6b829621487a00e3b3d211ef80986de9a/) | ⚠️ Unaudited |
| OracleConfigurator | unknown | ethereum | n/a | [`0x6cd42e64630d25406bfc51cca65cffa7cd495fb1`](./contracts/ethereum-1/0x6cd42e64630d25406bfc51cca65cffa7cd495fb1/) | ⚠️ Unaudited |
| OracleRegistry | unknown | ethereum | n/a | [`0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196`](./contracts/ethereum-1/0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196/) | ⚠️ Unaudited |
| ParamRegistry | unknown | ethereum | n/a | [`0x1fa8e2673ee9de09c31cad191d8974ac1f125e23`](./contracts/ethereum-1/0x1fa8e2673ee9de09c31cad191d8974ac1f125e23/) | ⚠️ Unaudited |
| Proposal | unknown | ethereum | n/a | [`0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b`](./contracts/ethereum-1/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | ⚠️ Unaudited |
| SBTCBeraVault | unknown | ethereum | n/a | [`0x437c885357425686b53e0d18c8d9c26a4a6be43f`](./contracts/ethereum-1/0x437c885357425686b53e0d18c8d9c26a4a6be43f/) | ⚠️ Unaudited |
| StakeStoneRewardDistributor | unknown | ethereum | n/a | [`0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf`](./contracts/ethereum-1/0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf/) | ⚠️ Unaudited |
| STO | unknown | ethereum | n/a | [`0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d`](./contracts/ethereum-1/0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d/) | ⚠️ Unaudited |
| StoneBeraVault | unknown | ethereum | n/a | [`0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0`](./contracts/ethereum-1/0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0/) | ⚠️ Unaudited |
| StoneBTC | unknown | ethereum | n/a | [`0x094c0e36210634c3cfa25dc11b96b562e0b07624`](./contracts/ethereum-1/0x094c0e36210634c3cfa25dc11b96b562e0b07624/) | ⚠️ Unaudited |
| StoneBTCVault | unknown | ethereum | n/a | [`0x7dbac0aa440a25d7fb43951f7b178ff7a809108d`](./contracts/ethereum-1/0x7dbac0aa440a25d7fb43951f7b178ff7a809108d/) | ⚠️ Unaudited |
| StoneCarnival | unknown | ethereum | n/a | [`0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0`](./contracts/ethereum-1/0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0/) | ⚠️ Unaudited |
| StoneCarnivalETH | unknown | ethereum | n/a | [`0x42af9986e56c8c9a88368d69879a64de6715754b`](./contracts/ethereum-1/0x42af9986e56c8c9a88368d69879a64de6715754b/) | ⚠️ Unaudited |
| StoneOracle | unknown | ethereum | n/a | [`0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5`](./contracts/ethereum-1/0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5/) | ⚠️ Unaudited |
| StoneVault | unknown | ethereum | n/a | [`0xa62f9c5af106feee069f38de51098d9d81b90572`](./contracts/ethereum-1/0xa62f9c5af106feee069f38de51098d9d81b90572/) | ⚠️ Unaudited |
| StoryPreDepositVault | unknown | ethereum | n/a | [`0xb1381900c742b509cf2b23d6b293649ea875654c`](./contracts/ethereum-1/0xb1381900c742b509cf2b23d6b293649ea875654c/) | ⚠️ Unaudited |
| ThreeDaysDelayTimelockController | unknown | ethereum | n/a | [`0xbc29f7781a26dd3958d0caf26885c4820d031ae6`](./contracts/ethereum-1/0xbc29f7781a26dd3958d0caf26885c4820d031ae6/) | ⚠️ Unaudited |
| TimeLockContract | unknown | arbitrum | n/a | [`0x5e8c3f0ea1d4004f32dfae54bca88c78d065d869`](./contracts/arbitrum-42161/0x5e8c3f0ea1d4004f32dfae54bca88c78d065d869/) | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x0de028af168524f3557615d2f0ef9943e6731ee4`](./contracts/ethereum-1/0x0de028af168524f3557615d2f0ef9943e6731ee4/) | ⚠️ Unaudited |
| VeSTO | unknown | ethereum | n/a | [`0xf0abc56ed707a55825312e2fe2f5dc11876828c2`](./contracts/ethereum-1/0xf0abc56ed707a55825312e2fe2f5dc11876828c2/) | ⚠️ Unaudited |
| WETHOracle | unknown | ethereum | n/a | [`0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628`](./contracts/ethereum-1/0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628/) | ⚠️ Unaudited |
| WithdrawController | unknown | ethereum | n/a | [`0x081d9019b016d7879b3aa4b278728771bfdb0b29`](./contracts/ethereum-1/0x081d9019b016d7879b3aa4b278728771bfdb0b29/) | ⚠️ Unaudited |

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
| [Bitmap-Tech-BTCBridge_report_2024-03-06.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Bitmap-Tech-BTCBridge_report_2024-03-06.pdf) | Bitmap Tech | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf) | ScaleBit | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Merlin_BTC_L2_final_Secure3_Audit_Report.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/Merlin_BTC_L2_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - BTCLayer2BridgeContract.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/SlowMist%20Audit%20Report%20-%20BTCLayer2BridgeContract.pdf) | SlowMist | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf](https://github.com/MerlinLayer2/merlin-audits/blob/main/blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf) | BlockSec | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [merlin-audits (GitHub directory)](https://github.com/MerlinLayer2/merlin-audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x728da61583441bb4326481ae27edeaaaa2d75c19`](./contracts/ethereum-1/0x728da61583441bb4326481ae27edeaaaa2d75c19/) | AccessRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x219e157c79f5b188397f6ccdb6d0f97600eadfb6`](./contracts/ethereum-1/0x219e157c79f5b188397f6ccdb6d0f97600eadfb6/) | AssetsRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9`](./contracts/ethereum-1/0x9485711f11b17f73f2ccc8561bcae05bdc7e9ad9/) | AssetsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fc603779dc6b4866769a58067777d2c52628226`](./contracts/ethereum-1/0x1fc603779dc6b4866769a58067777d2c52628226/) | AssetVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed15e5dd75a266110a69764ac6919ef9188656cb`](./contracts/ethereum-1/0xed15e5dd75a266110a69764ac6919ef9188656cb/) | AsyncDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48d74bdbcd0b7570fd8c3056d5d0ef04b8b8a664`](./contracts/ethereum-1/0x48d74bdbcd0b7570fd8c3056d5d0ef04b8b8a664/) | BeraStoneRateAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53dde9a818ff2bdb9e54b9149a5e66dca5df6c7f`](./contracts/ethereum-1/0x53dde9a818ff2bdb9e54b9149a5e66dca5df6c7f/) | BevmDepositBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e`](./contracts/ethereum-1/0x1b70ff1e5152fdb8425a2b84b098df2f9c1df54e/) | DepositBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1565db133d0108e911224f174ec12d20f1531a76`](./contracts/ethereum-1/0x1565db133d0108e911224f174ec12d20f1531a76/) | DepositHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc`](./contracts/ethereum-1/0x749342526451eb0a8c5dc3b02cb60cb1088ed2cc/) | DepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357`](./contracts/ethereum-1/0x2aca0c7ed4d5eb4a2116a3bc060a2f264a343357/) | DepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d`](./contracts/ethereum-1/0x2fa6f067713ef12f1de276326f8f44fbcd6d9d2d/) | Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0fde87b8e6d263bb18ac76c8a7ab868bb0db2fb`](./contracts/ethereum-1/0xa0fde87b8e6d263bb18ac76c8a7ab868bb0db2fb/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574`](./contracts/ethereum-1/0xe9b7ccfc7d05028bd8214bd04f9b4fa7c734d574/) | MellowDepositWstETHStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f5420e76eec29027800d4e3e8e879617bde709b`](./contracts/ethereum-1/0x8f5420e76eec29027800d4e3e8e879617bde709b/) | MiningPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec306e46549a7e8f4fce823d3058f2d134133b17`](./contracts/ethereum-1/0xec306e46549a7e8f4fce823d3058f2d134133b17/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d70868f12a05b8c347974415bac5de053daa376`](./contracts/ethereum-1/0x2d70868f12a05b8c347974415bac5de053daa376/) | NativeLendingETHStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e72315f630b11034fd081793fca1279b6a3d82`](./contracts/ethereum-1/0x00e72315f630b11034fd081793fca1279b6a3d82/) | NoDelayTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eddcfe6b829621487a00e3b3d211ef80986de9a`](./contracts/ethereum-1/0x5eddcfe6b829621487a00e3b3d211ef80986de9a/) | OneDayDelayTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cd42e64630d25406bfc51cca65cffa7cd495fb1`](./contracts/ethereum-1/0x6cd42e64630d25406bfc51cca65cffa7cd495fb1/) | OracleConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196`](./contracts/ethereum-1/0xa77cf3a4c2e97830c9e025a43d2eb1e8a9fd9196/) | OracleRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fa8e2673ee9de09c31cad191d8974ac1f125e23`](./contracts/ethereum-1/0x1fa8e2673ee9de09c31cad191d8974ac1f125e23/) | ParamRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b`](./contracts/ethereum-1/0x3aa0670e24cb122e1d5307ed74b0c44d619aff9b/) | Proposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x437c885357425686b53e0d18c8d9c26a4a6be43f`](./contracts/ethereum-1/0x437c885357425686b53e0d18c8d9c26a4a6be43f/) | SBTCBeraVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf`](./contracts/ethereum-1/0xfd97796442ae3f8d1bc2043b3efae67eb6b866cf/) | StakeStoneRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d`](./contracts/ethereum-1/0x1d88713b483a8e45cff0e5cd7c2e15e5fab4534d/) | STO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0`](./contracts/ethereum-1/0x8f88ae3798e8ff3d0e0de7465a0863c9bbb577f0/) | StoneBeraVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094c0e36210634c3cfa25dc11b96b562e0b07624`](./contracts/ethereum-1/0x094c0e36210634c3cfa25dc11b96b562e0b07624/) | StoneBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7dbac0aa440a25d7fb43951f7b178ff7a809108d`](./contracts/ethereum-1/0x7dbac0aa440a25d7fb43951f7b178ff7a809108d/) | StoneBTCVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0`](./contracts/ethereum-1/0x4d831e22f062b5327dfdb15f0b6a5df20e2e3dd0/) | StoneCarnival | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42af9986e56c8c9a88368d69879a64de6715754b`](./contracts/ethereum-1/0x42af9986e56c8c9a88368d69879a64de6715754b/) | StoneCarnivalETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5`](./contracts/ethereum-1/0x2c1d3d359ea322efb31d6d1be6a1d9bc67f531e5/) | StoneOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa62f9c5af106feee069f38de51098d9d81b90572`](./contracts/ethereum-1/0xa62f9c5af106feee069f38de51098d9d81b90572/) | StoneVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1381900c742b509cf2b23d6b293649ea875654c`](./contracts/ethereum-1/0xb1381900c742b509cf2b23d6b293649ea875654c/) | StoryPreDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc29f7781a26dd3958d0caf26885c4820d031ae6`](./contracts/ethereum-1/0xbc29f7781a26dd3958d0caf26885c4820d031ae6/) | ThreeDaysDelayTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5e8c3f0ea1d4004f32dfae54bca88c78d065d869`](./contracts/arbitrum-42161/0x5e8c3f0ea1d4004f32dfae54bca88c78d065d869/) | TimeLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0de028af168524f3557615d2f0ef9943e6731ee4`](./contracts/ethereum-1/0x0de028af168524f3557615d2f0ef9943e6731ee4/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0abc56ed707a55825312e2fe2f5dc11876828c2`](./contracts/ethereum-1/0xf0abc56ed707a55825312e2fe2f5dc11876828c2/) | VeSTO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628`](./contracts/ethereum-1/0xb09b4ec73ad3a23fbe8542ff0e248e01d4cb6628/) | WETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x081d9019b016d7879b3aa4b278728771bfdb0b29`](./contracts/ethereum-1/0x081d9019b016d7879b3aa4b278728771bfdb0b29/) | WithdrawController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21160] Bitmap-Tech-BTCBridge_report_2024-03-06.pdf
- [21161] Merlin_BTC_L2_final_ScaleBit_Audit_Report.pdf
- [21162] Merlin_BTC_L2_final_Secure3_Audit_Report.pdf
- [21163] SlowMist Audit Report - BTCLayer2BridgeContract.pdf
- [21164] blocksec_merlin_erc20tokenwrapped_v1.0-signed.pdf
- [21165] merlin-audits (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
