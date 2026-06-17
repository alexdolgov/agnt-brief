# Agentic Audit Brief: Yei Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 55.2% over 90 days

## Project Overview

- Project: Yei Finance (`yei-finance`)
- Website: [https://www.yei.finance/](https://www.yei.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:33.324Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: sei
- Contract surface: 14 unique implementations (16 raw deployments)
- DeFi Llama TVL: $18,295,903.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yei Finance is a DeFi protocol on Sei with marketed products including YeiLend lending markets, YeiSwap token swaps, and bridge/cross-chain pre-deposit vault features. The project brief should distinguish these product surfaces and avoid unverified governance or cross-product support assumptions unless confirmed by documentation or contract analysis.

### Architecture

The protocol uses shared proxy-based infrastructure for cross-chain asset management (NttManager, WormholeTransceiver) and governance (Collector), which likely support both lending and DEX operations. The deployer clusters suggest modular development with distinct groups managing core and peripheral contracts.

## Contract Surface Quality

- Indexed contracts: 156; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 134 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 7/10 live.
- Detected codebases: aave-v2
- Unverified dependencies: 5/46.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 16
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveProtocolDataProvider | unknown | sei | n/a | [`0x60c82a...07f0d6`](./contracts/sei-1329/0x60c82a40c57736a9c692c42e87a8849fb407f0d6/) | ⚠️ Unaudited |
| ACLManager | governance | sei | n/a | [`0xc6f728...90eea6`](./contracts/sei-1329/0xc6f7283620683bd1fda0c20158a2a589a090eea6/) | ⚠️ Unaudited |
| AToken | token | sei | unit-21134 (2 proxies) | 2 deployments: sei [`0x945c04...2f4171`](./contracts/sei-1329/0x945c042a18a90dd7adb88922387d12efe32f4171/); sei `0xc1a6f2...3cb935` | ⚠️ Unaudited |
| ATokenV3 | token | sei | unit-21133 | [`0x809ff4...0d63a4`](./contracts/sei-1329/0x809ff4801aa5bdb33045d1fec810d082490d63a4/) | ⚠️ Unaudited |
| Clovis | unknown | sei | n/a | 2 deployments: sei [`0x8154d3...628555`](./contracts/sei-1329/0x8154d3161fc83ff69111b69b1120cd7475628555/); sei `0x81d3a2...bf89d2` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | sei | n/a | [`0x960200...46b2f1`](./contracts/sei-1329/0x96020007583c55abe6297090269179e6e046b2f1/) | ⚠️ Unaudited |
| Pool | core_logic | sei | n/a | [`0xd078c4...c8f305`](./contracts/sei-1329/0xd078c43f88fbed47b3ce16dc361606b594c8f305/) | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | sei | n/a | [`0xff33a7...8f2a1e`](./contracts/sei-1329/0xff33a79d9190bd63d0e9a4946f7fccba0e8f2a1e/) | ⚠️ Unaudited |
| PoolConfigurator | core_logic | sei | unit-21137 | [`0xf81577...e614e1`](./contracts/sei-1329/0xf8157786e3401a7377becb7af288b84c8ee614e1/) | ⚠️ Unaudited |
| PoolV3 | unknown | sei | unit-21129 | [`0x4a4d9a...4fb638`](./contracts/sei-1329/0x4a4d9abd36f923cba0af62a39c01dec2944fb638/) | ⚠️ Unaudited |
| RewardsControllerV2 | governance | sei | unit-21130 | [`0x60485c...374259`](./contracts/sei-1329/0x60485c5e5e3d535b16cc1bd2c9243c7877374259/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | sei | unit-21131 | [`0x67a0a8...f86ed3`](./contracts/sei-1329/0x67a0a897a32f0e5c76303666ca34178949f86ed3/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | sei | unit-21136 | [`0xefe505...aab91a`](./contracts/sei-1329/0xefe5054adf8c5fb416b4c6acca594b646caab91a/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | sei | n/a | [`0xbc096b...eec8aa`](./contracts/sei-1329/0xbc096b6a7d5404de916b3333ad223a1b32eec8aa/) | ⚠️ Unaudited |

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
| [[**https://drive.google.com/drive/folders/1DoZnQU-KURN29grndjvnrumCanwCHhnI?usp=drive\_link**]()](https://drive.google.com/drive/folders/1DoZnQU-KURN29grndjvnrumCanwCHhnI?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1795] [**https://drive.google.com/drive/folders/1DoZnQU-KURN29grndjvnrumCanwCHhnI?usp=drive\_link**]()

Fork inheritance lineage and inherited audits are included when available.
