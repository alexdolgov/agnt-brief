# Agentic Audit Brief: InsureDAO

## Project Overview

- Project: InsureDAO (`insuredao`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:01.344Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, ethereum, optimism
- Contract surface: 32 unique implementations (32 raw deployments)
- DeFi Llama TVL: $125,774.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 32 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (insuredaoerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 32 (32 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/32 (0.0%)
- Deployed-live implementations: 32 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/32
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BondingPremium | unknown | ethereum | n/a | [`0x2d5477...eb30e4`](./contracts/ethereum-1/0x2d54777d59f1ae50d0ebab0eddb3098ee1eb30e4/) | ⚠️ Unaudited |
| CDSTemplate | unknown | optimism | n/a | [`0x734afd...be0cf4`](./contracts/optimism-10/0x734afd33dfb5100ee91efe690526dffdedbe0cf4/) | ⚠️ Unaudited |
| DefiRound | unknown | ethereum | n/a | [`0xd0df5a...7c9c87`](./contracts/ethereum-1/0xd0df5a352d74a746754c592a6277c9060a7c9c87/) | ⚠️ Unaudited |
| DegenesisAirdrop | unknown | ethereum | n/a | [`0x6fac0a...dbd829`](./contracts/ethereum-1/0x6fac0aad21ef729550727c1ffcb9a9c74edbd829/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0x01e691...0d0f6b`](./contracts/ethereum-1/0x01e6916ccfe3630364b4538d0f8c1c22e20d0f6b/) | ⚠️ Unaudited |
| FlatPremiumV2 | unknown | optimism | n/a | [`0xdb9b97...db989c`](./contracts/optimism-10/0xdb9b9797319e9458d4d3b6eaa86c4f15eddb989c/) | ⚠️ Unaudited |
| GaugeController | unknown | ethereum | n/a | [`0x297ea2...1ddd04`](./contracts/ethereum-1/0x297ea2afce594149cd31a9b11adbae82fa1ddd04/) | ⚠️ Unaudited |
| IndexTemplate | unknown | optimism | n/a | [`0x007497...50c816`](./contracts/optimism-10/0x0074976043140a371aead31189c2be459950c816/) | ⚠️ Unaudited |
| InsureDepositor | unknown | ethereum | n/a | [`0xa12ab7...d19e29`](./contracts/ethereum-1/0xa12ab76a82d118e33682acb242180b4cc0d19e29/) | ⚠️ Unaudited |
| InsureToken | unknown | ethereum | n/a | [`0xd83ae0...24393e`](./contracts/ethereum-1/0xd83ae04c9ed29d6d3e6bf720c71bc7beb424393e/) | ⚠️ Unaudited |
| LiquidityGauge | unknown | ethereum | n/a | [`0x00e505...ddbb8c`](./contracts/ethereum-1/0x00e505bc71b2cbe55915bd017bcd790440ddbb8c/) | ⚠️ Unaudited |
| MarketTemplate | unknown | optimism | n/a | [`0x0fab21...a25dcb`](./contracts/optimism-10/0x0fab21585447dee7bd2aef21406e5f19b5a25dcb/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x734563...344160`](./contracts/ethereum-1/0x73456339407d29d787e71e4b198490ca08344160/) | ⚠️ Unaudited |
| Minter | unknown | ethereum | n/a | [`0x76e8b8...debdc0`](./contracts/ethereum-1/0x76e8b82ea3450fa598e5e164c7e28af172debdc0/) | ⚠️ Unaudited |
| Ownership | unknown | optimism | n/a | [`0x4810fa...6c3db3`](./contracts/optimism-10/0x4810fa5942a322c7bd30519ed3ebe732066c3db3/) | ⚠️ Unaudited |
| Parameters | unknown | optimism | n/a | [`0x335869...0ee511`](./contracts/optimism-10/0x335869ce5132152c27d50c8b5ce43bbccc0ee511/) | ⚠️ Unaudited |
| ParametersV2 | unknown | optimism | n/a | [`0xf29571...85d0e6`](./contracts/optimism-10/0xf29571145b421f660775fa3deb16d9ff6085d0e6/) | ⚠️ Unaudited |
| PolicyUnlocker | unknown | arbitrum | n/a | [`0x757ffd...7d31ed`](./contracts/arbitrum-42161/0x757ffd29ff8f10b0053a0bad313a8de2847d31ed/) | ⚠️ Unaudited |
| PoolProxy | unknown | ethereum | n/a | [`0xf4d046...3ba350`](./contracts/ethereum-1/0xf4d046d8fac6dc37b5eafadd34407b19de3ba350/) | ⚠️ Unaudited |
| PoolTemplate | unknown | optimism | n/a | [`0x190da1...11e8f8`](./contracts/optimism-10/0x190da1b9fa124bd872e9166ba3c7dd656a11e8f8/) | ⚠️ Unaudited |
| PremiumModelV3 | unknown | arbitrum | n/a | [`0x05c123...07c08b`](./contracts/arbitrum-42161/0x05c1238aab0c1d2393f6487fe85338b99307c08b/) | ⚠️ Unaudited |
| Referral | unknown | arbitrum | n/a | [`0x2ce353...b2d8ac`](./contracts/arbitrum-42161/0x2ce353ea9a341f67e7c4a5f391d93123afb2d8ac/) | ⚠️ Unaudited |
| Registry | unknown | optimism | n/a | [`0x046c23...7c20b2`](./contracts/optimism-10/0x046c233fd48b020f7e5085c991ffa91eb67c20b2/) | ⚠️ Unaudited |
| ReportingToken | unknown | ethereum | n/a | [`0x190da1...11e8f8`](./contracts/ethereum-1/0x190da1b9fa124bd872e9166ba3c7dd656a11e8f8/) | ⚠️ Unaudited |
| ReserveTemplate | unknown | optimism | n/a | [`0x238963...3d9863`](./contracts/optimism-10/0x23896335f2fd8735988472066405a668df3d9863/) | ⚠️ Unaudited |
| RewardsDistributorDelegator | unknown | ethereum | n/a | [`0x358536...eaa1b1`](./contracts/ethereum-1/0x35853654bc1d85991ac19923f5476f9d3feaa1b1/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0xd39e28...9f8390`](./contracts/ethereum-1/0xd39e280a9f0b74ef04d5c7a81dbe757e589f8390/) | ⚠️ Unaudited |
| TestnetAirdrop | unknown | ethereum | n/a | [`0x98e579...e8aeeb`](./contracts/ethereum-1/0x98e5790f343b83e850c20fb2d100b28de5e8aeeb/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x1b459a...2af1ca`](./contracts/ethereum-1/0x1b459aec393d604ae6468ae3f7d7422efa2af1ca/) | ⚠️ Unaudited |
| Vault | unknown | optimism | n/a | [`0x009b60...a4ed6a`](./contracts/optimism-10/0x009b60138c4bd382114de86ccf3b523bc5a4ed6a/) | ⚠️ Unaudited |
| VestingEscrow | unknown | ethereum | n/a | [`0x8f8998...80e47f`](./contracts/ethereum-1/0x8f8998e511935218aa340f41c4d005d2a080e47f/) | ⚠️ Unaudited |
| VotingEscrow | unknown | ethereum | n/a | [`0x3dc07e...05916b`](./contracts/ethereum-1/0x3dc07e60ecb3d064d20c386217ceef8e3905916b/) | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/file/d/1RTwAYuPBmQCVrmor-iZ9dFAGlCkdMtdR/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [17460] DL audit link

Fork inheritance lineage and inherited audits are included when available.
