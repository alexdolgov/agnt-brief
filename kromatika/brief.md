# Agentic Audit Brief: Kromatika

## Project Overview

- Project: Kromatika (`kromatika`)
- Website: [https://app.kromatika.finance/limitorder#/pool](https://app.kromatika.finance/limitorder#/pool)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.325Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 47 unique implementations (49 raw deployments)
- DeFi Llama TVL: $948,705.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 8 project-authored contract(s) across 4 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 49 (10 live, 39 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 8 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 47
- Raw deployments: 49
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | n/a | [`0xc5bf7a...23a54f`](./contracts/ethereum-1/0xc5bf7a684a0dfca02a1e603b1d27af0af523a54f/) | ⚠️ Unaudited |
| Kromatika | unknown | ethereum | n/a | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | ⚠️ Unaudited |
| KromatikaSwapRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x7054d0...5bb034`](./contracts/arbitrum-42161/0x7054d002db18a10c31683ec1a8515589c65bb034/); arbitrum `0xa3e49d...dbe70a` | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0xf98dcd...590b07`](./contracts/optimism-10/0xf98dcd95217e15e05d8638da4c91125e59590b07/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 2 deployments: polygon `0xe32e81...6e5a78`; arbitrum [`0x506013...b0cea2`](./contracts/arbitrum-42161/0x50601357a041ab311ccf57d4bf2ed978b2b0cea2/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x55ff62...a4bf70`](./contracts/arbitrum-42161/0x55ff62567f09906a85183b866df84bf599a4bf70/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | ⚠️ Unaudited |
| UniswapUtils | unknown | arbitrum | n/a | [`0xfe6386...c4551d`](./contracts/arbitrum-42161/0xfe63860c1edd297256863a393a6a0ec512c4551d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x026d63...b89ec4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03f490...d42ae1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x044d57...9cf92c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x05bf32...c4f877` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b9d3e...619216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x113e3d...787573` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d732c...c0e153` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1ee02e...31d403` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x212b2e...e4072b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2618bb...e7c0c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x396c3b...7f345e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3bd1ba...09e96c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x461d09...f98216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47f374...487289` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c1bc6...2fca68` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x836c40...0b0770` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89c756...1cf93d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b28ff...5bd492` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x90c9c1...43c5d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91d44f...c6a436` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x951e4a...8b684a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c75f6...aaac17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa08f44...0983c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1a527...346688` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7bf78...c6db2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa891e5...afd68a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc64a76...522826` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe17537...634d9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecbf2e...0211a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf86a27...da0140` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9a270...bc16fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc2e6d...8ccd68` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe5bc8...280627` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02c282...5fc6f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37bb03...5ceccf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79ba1c...71ea39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x90ae03...a2dad4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2cd12...be58bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf337b9...f455df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/kromatika](https://skynet.certik.com/projects/kromatika) | CertiK | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/kromatika](https://skynet.certik.com/projects/kromatika?auditId=Kromatika+Finance) | CertiK | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3af33b...a4d789`](./contracts/ethereum-1/0x3af33bef05c2dcb3c7288b77fe1c8d2aeba4d789/) | Kromatika | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7054d0...5bb034`](./contracts/arbitrum-42161/0x7054d002db18a10c31683ec1a8515589c65bb034/) | KromatikaSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf98dcd...590b07`](./contracts/optimism-10/0xf98dcd95217e15e05d8638da4c91125e59590b07/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x55ff62...a4bf70`](./contracts/arbitrum-42161/0x55ff62567f09906a85183b866df84bf599a4bf70/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14af1f...63b83c`](./contracts/polygon-137/0x14af1f2f02dccb1e43402339099a05a5e363b83c/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3238] skynet.certik.com/projects/kromatika
- [3239] skynet.certik.com/projects/kromatika

Fork inheritance lineage and inherited audits are included when available.
