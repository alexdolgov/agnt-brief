# Agentic Audit Brief: Hyper Finance

## Project Overview

- Project: Hyper Finance (`hyper-finance`)
- Website: [https://hyfi.pro](https://hyfi.pro)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.696Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc
- Contract surface: 42 unique implementations (52 raw deployments)
- DeFi Llama TVL: $34,170.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 9 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 88; live-surface contracts included: 52 (14 live, 38 unknown).
- Excluded by liveness: 36 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 4 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 42
- Raw deployments: 52
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | bsc | n/a | [`0x4b7a63837c8cf56e4dcf5140c12388c24030d7df`](./contracts/bsc-56/0x4b7a63837c8cf56e4dcf5140c12388c24030d7df/) | ⚠️ Unaudited |
| mVault | core_logic | bsc | n/a | 11 deployments: bsc [`0x01d5d7bf32fb0f347ed19ad76bd9225423d29b07`](./contracts/bsc-56/0x01d5d7bf32fb0f347ed19ad76bd9225423d29b07/); bsc `0x11e0836bc6c44c5fa6bb3eaf788c8c744b2c38a8`; bsc `0x14c5cb0975aab7880cdabd013011c42b1ef59592`; bsc `0x5486a0371c25c213c2c46a29f2a5a82c8190d97b`; bsc `0x6c3a4e99d0fc907a4df55a97e812bf603e35581e`; bsc `0x712c88dad58bde65ca687b8cfbefbb478eff9de7`; bsc `0x8257d16767050a6acee7f150c7bc86e2b3e47b6a`; bsc `0x99c7e5dc8b2c79a413ef829b7ce81441b800ddbf`; bsc `0xa1383d11b51f0f9403bdd3b7bec602fa6ea71879`; bsc `0xd6b72c4624bda510c9ffd5fa5ef061d95c238a3f`; bsc `0xe5a08db69cd71802130dd8aac41146335d46ad51` | ⚠️ Unaudited |
| SimpleController | governance | bsc | n/a | [`0x7a4f3dae26e549e2645e83e67a74c7a096814d01`](./contracts/bsc-56/0x7a4f3dae26e549e2645e83e67a74c7a096814d01/) | ⚠️ Unaudited |
| SushiToken | token | bsc | n/a | [`0x9a319b959e33369c5eaa494a770117ee3e585318`](./contracts/bsc-56/0x9a319b959e33369c5eaa494a770117ee3e585318/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0241535a3c19189897398996786445b753589eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a72a1456a17843fd66a3feb698af66ee2c875d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12c90bd2466a7597fba9d45e27223df1a7b5e536` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15484911c364292077bd3f451d0f4800db55e20c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a0d5a976f010099104f385058b318a8262c197b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ce4f390eb07884878b9011ae63986c8884991ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cf7087fc2bf922d28284245cf7ae2c586565f60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26989ca06aaa64843096744d3e799901003e8fe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27c392985f3f16c802bc7d97301c15b049716d97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x384c50089db5f9dad24a4957b58f3e061cc664b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x430f8bc301e768ddf9ef7cfe680d81546e6785d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x436e2bdef249e3a76eb2b209f627538da8533f9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49af81c3f7f267ec3721418d1f93c74109cfb7d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f61d9e9217e986e8d2a331c3f520ededecace54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58f2a5fb2b45f11c2516c9805f57501b0ea4c2fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c9650d3fdb552e04b014f86df210f40c77a5804` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68e9610c02b6a68a0ca6eb0892e286f30112244f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x699c1ec4bd9dcda8e14b23dc9542b4910cd3ad77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6aefb66c27f37487b45ff85f6615570257dbae60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7465ed1243feb14c2d09455d64ad3454dfa34b1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8722140cc4c80d867bd786b792f4066972f1dcf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a7ba60ce44c6f601b4503b1341fe81085c4ef13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9114454f83108c5c764d1f9c7a61a4287872aacd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b27b6d22344f4d727475afa19e9971b7c37b9ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3412881c736bb8e4d238018146cdccb27dee938` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa997743121ccd70b927543a0b93914874dbbf57d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa4dbd2dbd8292de092bad4f0e1642fb6d0fc0c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0a0b1198edb5d0cfe0a85c0448009aafdd26fa0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4f38ec61ec7d81d4ec1f85ceca85abd9930f556` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc94bdb2be526a9687a17be3e320185d4a5fc10e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb49af2f49b62007e863196cadab5ae1d653dcbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc9e4790c1cc0ce5ff9b2ddaae19f0577e56eb92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd295c4d222f53665b433899f6c34ecde65a08c31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9c4ca97c4492e6c2dbdc4c07271ca57160c5021` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdeff8ef68d2d7ec6699b29515b401589bf21fb75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3ace6aed83a25ad0a429dab7a42c3183a2409ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3f16dd2c251ad5d874dd02323b267c935be0c5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedc136817ffad92a39bb713a89a3568486c416de` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/hyperfinance](https://skynet.certik.com/projects/hyperfinance) | CertiK | Audit | 2021-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4b7a63837c8cf56e4dcf5140c12388c24030d7df`](./contracts/bsc-56/0x4b7a63837c8cf56e4dcf5140c12388c24030d7df/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01d5d7bf32fb0f347ed19ad76bd9225423d29b07`](./contracts/bsc-56/0x01d5d7bf32fb0f347ed19ad76bd9225423d29b07/) | mVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7a4f3dae26e549e2645e83e67a74c7a096814d01`](./contracts/bsc-56/0x7a4f3dae26e549e2645e83e67a74c7a096814d01/) | SimpleController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13262] skynet.certik.com/projects/hyperfinance

Fork inheritance lineage and inherited audits are included when available.
