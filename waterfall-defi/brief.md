# Agentic Audit Brief: Waterfall DeFi

## Project Overview

- Project: Waterfall DeFi (`waterfall-defi`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.177Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 70 unique implementations (70 raw deployments)
- DeFi Llama TVL: $18,955.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 20 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (coreref, permissions). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 177; live-surface contracts included: 70 (3 live, 67 unknown).
- Excluded by liveness: 107 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 67
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 33.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WTF | unknown | bsc | n/a | [`0x2fa0cac2c75efb50382b5091c6494194eacf65b0`](./contracts/bsc-56/0x2fa0cac2c75efb50382b5091c6494194eacf65b0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VotingEscrow | operational_periphery | bsc | n/a | [`0x4df3cc03fafb2bcc139e23cd6fa6073a8f73e7c7`](./contracts/bsc-56/0x4df3cc03fafb2bcc139e23cd6fa6073a8f73e7c7/) | ⚠️ Unaudited |
| WaterfallGovernanceToken | token | bsc | n/a | [`0xd73f32833b6d5d9c8070c23e599e283a3039823c`](./contracts/bsc-56/0xd73f32833b6d5d9c8070c23e599e283a3039823c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (67)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0b3f6af28ecc67ef41767348083b6d9111de0118` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e8585b683cdc89086f280cf5cfe481d698590dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1418b91537f0716645f55ac5750418e40816cf2a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15254be09c895e2412016c4fe34a5c6610f6bc79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16bc2a871c24a163a6adf3d99a4c501c3c87db42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1da495267e183791b536bed7aaa61c96e3d09be9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20b50b830aeffb1e09f0ab75cfbc76235b6a494e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x229b07c768249ce48643b7b761851deb355e9287` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30f0fe9b6432d4375cf8fc01c4e03ba625c175ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x324338ab8a456501096438db25d6e10f95df107e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35453771dfe05d157b2eb21e33734d51dd99e3ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37bc81d2707c6624ac25c5cafeffe1dd23a74313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cb57f2031039d28e22dc9fe960f990f4e4338c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x503b03313f933728ddd37589a66b60c17a0ada70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57897386b90bc6f99a0d2243102aeeadd98412b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59d671a4dd1a6e88043b2b94a2fe5b863c509767` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5af338bc89609f16dd069d2fe6a641a1176633cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ead0dc8d33a5d11093e559fa65eb0b961329a96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66b0acdad524911be746d94cca412bb66d81eb80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68a59e898cbab74cd70b77a8ff2cd9d4678f8699` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b032b5c1e69f581f057495a94b7dc3d70713d77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dfcfac6161ff3c1f639bb03beab6d3a12e10b5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7029df28e274a53a7b2bc7dc51cae94980636bdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7034ae1275508c2e2ab9f8c57cb28cc271b03fdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72adfcd18b21797696c499d6d964b2263e125223` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73e6b54932db05731ed6c7dcc735b7e6f9c72562` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x764153a10685aef881a3f630d62d9b70ad3d184e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x794d06d71232a6fe949eeda8d85b8debd69d8b09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7adce471f812fb1c5e063b43d446a31333ab3e41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b763ef5a6e8c0811c5856c7bc8b1d735f9eb17f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b93bc3d4f7f56c9ede4ec9171cf59612dbb1568` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d20bc760543e25967a2ae4aed42bda413aa3c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ecdd0cfa2fa1b81a6fa704500d58c8f1371fb48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9274309cf7a347efe0f3656ac57b7fe4af889275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x942c82bf312504a186cb50cb18cedd9317200ce5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x969632553ff84fcae9b44fd2c1bac572e0c916e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e00fe5581a0c89b8acea807ffab5f8a67f91c36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e1c5417ee9312e7bdb53b2a19460f80001b5c1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e2476573ae0ba0e46afc68ce3d7a308eb634fbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0c15d3a4243071c0a7c27b71c1e935405c0e7a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa13203d939553664a76b99453af28bd58fd674a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1b285a6cf4df4a798bb6aa85bee1333e1a5a487` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2f1e99df0a40ca328a6be0e720abde2742a2cd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa39d3a25bfaf750c2a351852e64f8d14b65c2cc7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa876ab19faf50607278a1c04cb6989682b162f1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa6a2c733b735bb12ddb48939bf058331386d5e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1bfbc7dbb31670d3bbba94552552d089e01981d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2b3846cb7887db6c196bd9c63131f24cdc2cd5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5b2693deedb95ff4f8ccbb4f15e8cc8aaaa19a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9ca54ee74e42db6a6edcd9ef89ad7177b82c444` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1c29b8e40fe1530cc11ffe8c47aaa29a5bf890b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5199383c54d50906c4394938260645577481729` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5422c4579e90348c531c4643630b38fcf9b55d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd697e9f6817f244a5510e89fca9256b4d4abb31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd320071f9005fa94851531905f674a98adf33db1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdca930f5c637bda4f6eba3fd04875e5782984837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1d3402990195383f1217a851a4786c629d5507d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe44d682037bed242aeb2a6f29a68033c0ec3b2fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5d7e2993bfc33d5212281d4e8efce6634534a62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe73eb69d7e97db1e1b84ee965585aadcf2ddf0ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe86be991d61f8240bb9175d38dad6ee3efff143c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef74164bab7f161f2e53c561d419dc12474f753a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3d2ac65459f128b37193bb751cab5a09136e22e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf43a654223b82448fabe3f02ac67e9d6c07de145` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf505467d3b4f5506244d04a4aec358bb37f88687` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf737f2ee6698033def1f09579f909cbe701342b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9269d7d4bd80fb83632b630c659243c899cef0c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - Waterfall DeFi Mainnet.pdf](https://github.com/WaterfallDefi/Waterfall-audit/blob/main/SlowMist%20Audit%20Report%20-%20Waterfall%20DeFi%20Mainnet.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4df3cc03fafb2bcc139e23cd6fa6073a8f73e7c7`](./contracts/bsc-56/0x4df3cc03fafb2bcc139e23cd6fa6073a8f73e7c7/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd73f32833b6d5d9c8070c23e599e283a3039823c`](./contracts/bsc-56/0xd73f32833b6d5d9c8070c23e599e283a3039823c/) | WaterfallGovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 67 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
