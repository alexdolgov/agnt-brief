# Agentic Audit Brief: SpiritSwap

## Project Overview

- Project: SpiritSwap (`spiritswap`)
- Website: [https://www.spiritswap.finance/chain/ftm/swap](https://www.spiritswap.finance/chain/ftm/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.520Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: fantom, sonic
- Contract surface: 14 unique implementations (19 raw deployments)
- DeFi Llama TVL: $259,330.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 14 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 6 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 19 (8 live, 11 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 14
- Raw deployments: 19
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraCommunityVault | core_logic | sonic | n/a | [`0x5be5f7...5870f7`](./contracts/sonic-146/0x5be5f71bc89a2e5fdbbb2d9aeff1f4a38d5870f7/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | sonic | n/a | [`0xf5d228...4c0c08`](./contracts/sonic-146/0xf5d228fd454e99384bfaa4e695b70a8cdd4c0c08/) | ⚠️ Unaudited |
| AlgebraFactory | registry | sonic | n/a | [`0xb86020...4cda76`](./contracts/sonic-146/0xb860200bd68dc39ceafd6ebb82883f189f4cda76/) | ⚠️ Unaudited |
| FarmingCenter | unknown | sonic | n/a | [`0x967f26...7e51d6`](./contracts/sonic-146/0x967f26d3a2714a55bdd1bd9c6e6ed148527e51d6/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0x5084e9...572bb4`](./contracts/sonic-146/0x5084e9fdf9264489a14e77c011073d757e572bb4/) | ⚠️ Unaudited |
| Quoter | periphery | sonic | n/a | [`0xe11813...a09404`](./contracts/sonic-146/0xe1181313a39d850d3a20f11ff1a6a94a29a09404/) | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | n/a | 2 deployments: sonic [`0x2e6b9c...0f5438`](./contracts/sonic-146/0x2e6b9c8d4a0972f87f21437a3ac7e4a1810f5438/); sonic `0x488219...5acd6b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x085b00...f831ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0b1019...e9fee0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x271b8e...bc8243` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x62fa59...763e5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6f161b...af7382` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe57c42...c66ddb` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 5 deployments: fantom `0x2fbff4...acdc08`; fantom `0x5b2af7...34685e`; fantom `0x5cc61a...78e59b`; fantom `0x9d3591...2c6b9c`; fantom `0xef45d1...4950b0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SpiritSwap-Core Security Audit Report.pdf](https://github.com/Layer3Org/spiritswap-core/blob/main/SpiritSwap-Core%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [Zokyo SpiritSwap V2 Audit.pdf](https://github.com/Spirit-DAO/spiritswap-contract/blob/main/Zokyo%20SpiritSwap%20V2%20Audit.pdf) | Zokyo | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-SpiritV2-v1.0.pdf](https://github.com/Spirit-DAO/spiritswap-contract/blob/main/PeckShield-Audit-Report-SpiritV2-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [audits.md](https://docs.silverswap.io/silverswap/technical-details/audits.md) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hashlock.com/audits/silverswap](https://hashlock.com/audits/silverswap) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x5be5f7...5870f7`](./contracts/sonic-146/0x5be5f71bc89a2e5fdbbb2d9aeff1f4a38d5870f7/) | AlgebraCommunityVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf5d228...4c0c08`](./contracts/sonic-146/0xf5d228fd454e99384bfaa4e695b70a8cdd4c0c08/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb86020...4cda76`](./contracts/sonic-146/0xb860200bd68dc39ceafd6ebb82883f189f4cda76/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x967f26...7e51d6`](./contracts/sonic-146/0x967f26d3a2714a55bdd1bd9c6e6ed148527e51d6/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5084e9...572bb4`](./contracts/sonic-146/0x5084e9fdf9264489a14e77c011073d757e572bb4/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe11813...a09404`](./contracts/sonic-146/0xe1181313a39d850d3a20f11ff1a6a94a29a09404/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2e6b9c...0f5438`](./contracts/sonic-146/0x2e6b9c8d4a0972f87f21437a3ac7e4a1810f5438/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13882] SpiritSwap-Core Security Audit Report.pdf
- [13883] Zokyo SpiritSwap V2 Audit.pdf
- [13884] PeckShield-Audit-Report-SpiritV2-v1.0.pdf
- [13885] audits.md
- [13886] hashlock.com/audits/silverswap

Fork inheritance lineage and inherited audits are included when available.
