# Agentic Audit Brief: Onyx

## Project Overview

- Project: Onyx (`onyx`)
- Website: [https://app.onyx.org/](https://app.onyx.org/)
- Lifecycle: active (Tier 1, dead)
- Generated: 2026-06-10T20:59:08.790Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 16 unique implementations (42 raw deployments)
- DeFi Llama TVL: $58,891,762.00
- On-chain TVL (included contracts): $384,427,279.69
- TVL by chain: Ethereum $384,427,279.69

## Project Description

Onyx is an Onyxcoin/XCN-powered app and protocol ecosystem on Ethereum that includes staking and app features such as swap, bridge, farm and governance, alongside a Compound-style liquidity/lending market with oTokens and a Comptroller for risk management.

### Architecture

The Lending family relies on the OnyxDAORegistry for configuration and access control, while the Governance & Staking family manages protocol parameters and incentives. Both families share the same deployer clusters and are part of the broader Onyx ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 16
- Raw deployments: 42
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $384,427,279.69
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OErc20Delegate | token | ethereum | 9 deployments: ethereum [`0x1933f1...91646d`](./contracts/ethereum-1/0x1933f1183c421d44d531ed40a5d2445f6a91646d/); ethereum `0x1961ad...1f8d12`; ethereum `0x307269...1d00bf`; ethereum `0x447617...5fea82`; ethereum `0x830dac...17b085`; ethereum `0x8f3511...1e412a`; ethereum `0x9dcb6b...95abc4`; ethereum `0xbced4e...04d2dd`; ethereum `0xfee442...3142dc` | ⚠️ Unaudited |
| OErc20Delegator | token | ethereum | 5 deployments: ethereum [`0x0c19d2...6b0641`](./contracts/ethereum-1/0x0c19d213e9f2a5cbaa4ec6e8eac55a22276b0641/); ethereum `0x11b258...b2eb69`; ethereum `0x7497e9...170f2d`; ethereum `0xc0534b...93793a`; ethereum `0xf52459...1226d3` | ⚠️ Unaudited |
| CHNGovernance | unknown | ethereum | [`0xdec2f3...4ef767`](./contracts/ethereum-1/0xdec2f31c3984f3440540dc78ef21b1369d4ef767/) | ⚠️ Unaudited |
| CHNStaking | unknown | ethereum | [`0x23445c...0e19a9`](./contracts/ethereum-1/0x23445c63feef8d85956dc0f19ade87606d0e19a9/) | ⚠️ Unaudited |
| CHNTimelock | governance | ethereum | [`0x08edf0...158df3`](./contracts/ethereum-1/0x08edf0f2af8672029eb445742b3b4072c6158df3/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | 2 deployments: ethereum [`0x4345d3...88478e`](./contracts/ethereum-1/0x4345d308f02d1beb92475bda25e7c62be288478e/); ethereum `0x7d61ed...ec2800` | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x402104...daed52`](./contracts/ethereum-1/0x4021047a36ac60b40316f630307cd4791cdaed52/); ethereum `0xf14ab1...16ff4e` | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0x3fa642...249216`](./contracts/ethereum-1/0x3fa642c0bbad64569eb8424af35f518347249216/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | [`0xff42a0...9c233b`](./contracts/ethereum-1/0xff42a051129a1313f5c907539630238e0c9c233b/) | ⚠️ Unaudited |
| NFTLiquidation | token | ethereum | 2 deployments: ethereum [`0x323398...f83d44`](./contracts/ethereum-1/0x323398de3c35f96053d930d25fe8d92132f83d44/); ethereum `0xf10bc5...e19002` | ⚠️ Unaudited |
| OErc721Delegate | token | ethereum | 4 deployments: ethereum [`0x3f2dd7...249691`](./contracts/ethereum-1/0x3f2dd7adbcd464d5b0a766f7eb367bd20a249691/); ethereum `0x5bcc74...fd6df0`; ethereum `0x7ab16e...9cb091`; ethereum `0x921ce5...921c94` | ⚠️ Unaudited |
| OEther | unknown | ethereum | [`0x714bd9...1d0d79`](./contracts/ethereum-1/0x714bd93ab6ab2f0bcfd2aeaf46a46719991d0d79/) | ⚠️ Unaudited |
| OnyxDAORegistry | registry | ethereum | 9 deployments: ethereum [`0x0e8cf9...57f864`](./contracts/ethereum-1/0x0e8cf9bead36ee59a63a16672d024888b057f864/); ethereum `0x198064...d01f5f`; ethereum `0x590e5b...dba55c`; ethereum `0x61cdf4...b57131`; ethereum `0x690240...a08201`; ethereum `0x81ede7...60d3a5`; ethereum `0xadb90c...df3b31`; ethereum `0xb44ae1...6205a2`; ethereum `0xf161c6...52a6bb` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | operational_periphery | ethereum | [`0x67911b...9910dc`](./contracts/ethereum-1/0x67911bef892d73298283412468c94a30fe9910dc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x36f0c2...f41067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58e9a7...ffebba` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1933f1...91646d`](./contracts/ethereum-1/0x1933f1183c421d44d531ed40a5d2445f6a91646d/) | OErc20Delegate | token | $347,376,934.12 | Verified native implementation with $347,376,934.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c19d2...6b0641`](./contracts/ethereum-1/0x0c19d213e9f2a5cbaa4ec6e8eac55a22276b0641/) | OErc20Delegator | token | $37,050,345.57 | Verified native implementation with $37,050,345.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdec2f3...4ef767`](./contracts/ethereum-1/0xdec2f31c3984f3440540dc78ef21b1369d4ef767/) | CHNGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23445c...0e19a9`](./contracts/ethereum-1/0x23445c63feef8d85956dc0f19ade87606d0e19a9/) | CHNStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08edf0...158df3`](./contracts/ethereum-1/0x08edf0f2af8672029eb445742b3b4072c6158df3/) | CHNTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4345d3...88478e`](./contracts/ethereum-1/0x4345d308f02d1beb92475bda25e7c62be288478e/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x402104...daed52`](./contracts/ethereum-1/0x4021047a36ac60b40316f630307cd4791cdaed52/) | JumpRateModelV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff42a0...9c233b`](./contracts/ethereum-1/0xff42a051129a1313f5c907539630238e0c9c233b/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x323398...f83d44`](./contracts/ethereum-1/0x323398de3c35f96053d930d25fe8d92132f83d44/) | NFTLiquidation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f2dd7...249691`](./contracts/ethereum-1/0x3f2dd7adbcd464d5b0a766f7eb367bd20a249691/) | OErc721Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x714bd9...1d0d79`](./contracts/ethereum-1/0x714bd93ab6ab2f0bcfd2aeaf46a46719991d0d79/) | OEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e8cf9...57f864`](./contracts/ethereum-1/0x0e8cf9bead36ee59a63a16672d024888b057f864/) | OnyxDAORegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67911b...9910dc`](./contracts/ethereum-1/0x67911bef892d73298283412468c94a30fe9910dc/) | WhitePaperInterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
