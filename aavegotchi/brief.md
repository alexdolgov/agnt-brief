# Agentic Audit Brief: Aavegotchi

## Project Overview

- Project: Aavegotchi (`aavegotchi`)
- Website: [https://aavegotchi.com](https://aavegotchi.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:57.930Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum, polygon
- Contract surface: 16 unique implementations (16 raw deployments)
- DeFi Llama TVL: $273,284.64
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 16 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, upgradableproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 16
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

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenChildChainManager | unknown | polygon | n/a | [`0x0ea9faeacd2fcb69e9b8182aa073ff1e9fbbedc8`](./contracts/polygon-137/0x0ea9faeacd2fcb69e9b8182aa073ff1e9fbbedc8/) | ⚠️ Unaudited |
| ATokenRootChainManager | unknown | ethereum | n/a | [`0x0d29ada4c818a9f089107201eacc6300e56e0d5c`](./contracts/ethereum-1/0x0d29ada4c818a9f089107201eacc6300e56e0d5c/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x47195a03fc3fc2881d084e8dc03bd19be8474e46`](./contracts/polygon-137/0x47195a03fc3fc2881d084e8dc03bd19be8474e46/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0x14ab595377e4fccca46062a9109ffac7fa4d3f18`](./contracts/polygon-137/0x14ab595377e4fccca46062a9109ffac7fa4d3f18/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | polygon | n/a | [`0xa253460d993418dff9db9552e984a1890a71737a`](./contracts/polygon-137/0xa253460d993418dff9db9552e984a1890a71737a/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | polygon | n/a | [`0x201df88d8d79aca0aa6360f02eb9dd8aefdb1dfb`](./contracts/polygon-137/0x201df88d8d79aca0aa6360f02eb9dd8aefdb1dfb/) | ⚠️ Unaudited |
| EscrowFacet | unknown | polygon | n/a | [`0x86935f11c86623dec8a25696e1c19a8659cbf95d`](./contracts/polygon-137/0x86935f11c86623dec8a25696e1c19a8659cbf95d/) | ⚠️ Unaudited |
| MiniMeToken | unknown | ethereum | n/a | [`0x3f382dbd960e3a9bbceae22651e88158d2791550`](./contracts/ethereum-1/0x3f382dbd960e3a9bbceae22651e88158d2791550/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | ethereum | n/a | [`0xb208f8bb431f580cc4b216826affb128cd1431ab`](./contracts/ethereum-1/0xb208f8bb431f580cc4b216826affb128cd1431ab/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | ethereum | n/a | [`0x14ab595377e4fccca46062a9109ffac7fa4d3f18`](./contracts/ethereum-1/0x14ab595377e4fccca46062a9109ffac7fa4d3f18/) | ⚠️ Unaudited |
| RafflesContract | unknown | ethereum | n/a | [`0x144d196bf99a4eca33afe036da577d7d66583db6`](./contracts/ethereum-1/0x144d196bf99a4eca33afe036da577d7d66583db6/) | ⚠️ Unaudited |
| StakingFacet | unknown | ethereum | n/a | [`0x4a271b59763d4d8a18ff55f1faa286de97317b15`](./contracts/ethereum-1/0x4a271b59763d4d8a18ff55f1faa286de97317b15/) | ⚠️ Unaudited |
| TicketsFacet | unknown | ethereum | n/a | [`0x93ea6ec350ace7473f7694d43dec2726a515e31a`](./contracts/ethereum-1/0x93ea6ec350ace7473f7694d43dec2726a515e31a/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x93ea6ec350ace7473f7694d43dec2726a515e31a`](./contracts/polygon-137/0x93ea6ec350ace7473f7694d43dec2726a515e31a/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xffe6280ae4e864d9af836b562359fd828ece8020`](./contracts/ethereum-1/0xffe6280ae4e864d9af836b562359fd828ece8020/) | ⚠️ Unaudited |
| VouchersContract | unknown | ethereum | n/a | [`0xe54891774eed9277236bac10d82788aee0aed313`](./contracts/ethereum-1/0xe54891774eed9277236bac10d82788aee0aed313/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/aavegotchi) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x0ea9faeacd2fcb69e9b8182aa073ff1e9fbbedc8`](./contracts/polygon-137/0x0ea9faeacd2fcb69e9b8182aa073ff1e9fbbedc8/) | ATokenChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d29ada4c818a9f089107201eacc6300e56e0d5c`](./contracts/ethereum-1/0x0d29ada4c818a9f089107201eacc6300e56e0d5c/) | ATokenRootChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x47195a03fc3fc2881d084e8dc03bd19be8474e46`](./contracts/polygon-137/0x47195a03fc3fc2881d084e8dc03bd19be8474e46/) | ChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14ab595377e4fccca46062a9109ffac7fa4d3f18`](./contracts/polygon-137/0x14ab595377e4fccca46062a9109ffac7fa4d3f18/) | ChildChainManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa253460d993418dff9db9552e984a1890a71737a`](./contracts/polygon-137/0xa253460d993418dff9db9552e984a1890a71737a/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x201df88d8d79aca0aa6360f02eb9dd8aefdb1dfb`](./contracts/polygon-137/0x201df88d8d79aca0aa6360f02eb9dd8aefdb1dfb/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x86935f11c86623dec8a25696e1c19a8659cbf95d`](./contracts/polygon-137/0x86935f11c86623dec8a25696e1c19a8659cbf95d/) | EscrowFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f382dbd960e3a9bbceae22651e88158d2791550`](./contracts/ethereum-1/0x3f382dbd960e3a9bbceae22651e88158d2791550/) | MiniMeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb208f8bb431f580cc4b216826affb128cd1431ab`](./contracts/ethereum-1/0xb208f8bb431f580cc4b216826affb128cd1431ab/) | MultiSigWalletWithDailyLimit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14ab595377e4fccca46062a9109ffac7fa4d3f18`](./contracts/ethereum-1/0x14ab595377e4fccca46062a9109ffac7fa4d3f18/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x144d196bf99a4eca33afe036da577d7d66583db6`](./contracts/ethereum-1/0x144d196bf99a4eca33afe036da577d7d66583db6/) | RafflesContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a271b59763d4d8a18ff55f1faa286de97317b15`](./contracts/ethereum-1/0x4a271b59763d4d8a18ff55f1faa286de97317b15/) | StakingFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93ea6ec350ace7473f7694d43dec2726a515e31a`](./contracts/ethereum-1/0x93ea6ec350ace7473f7694d43dec2726a515e31a/) | TicketsFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x93ea6ec350ace7473f7694d43dec2726a515e31a`](./contracts/polygon-137/0x93ea6ec350ace7473f7694d43dec2726a515e31a/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xffe6280ae4e864d9af836b562359fd828ece8020`](./contracts/ethereum-1/0xffe6280ae4e864d9af836b562359fd828ece8020/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe54891774eed9277236bac10d82788aee0aed313`](./contracts/ethereum-1/0xe54891774eed9277236bac10d82788aee0aed313/) | VouchersContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19398] DL audit link

Fork inheritance lineage and inherited audits are included when available.
