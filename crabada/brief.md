# Agentic Audit Brief: Crabada

## Project Overview

- Project: Crabada (`crabada`)
- Website: [https://www.crabada.com](https://www.crabada.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.593Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: avalanche
- Contract surface: 59 unique implementations (67 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Gaming. Structurally: 12 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (operator). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 67 (2 live, 65 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 59 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 57
- Unique implementations: 59
- Raw deployments: 67
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CRA | unknown | avalanche | n/a | [`0xa32608e873f9ddef944b24798db69d80bbb4d1ed`](./contracts/avalanche-43114/0xa32608e873f9ddef944b24798db69d80bbb4d1ed/) | ⚠️ Unaudited |
| TUS | unknown | avalanche | n/a | [`0xf693248f96fe03422fea95ac0afbbbc4a8fdd172`](./contracts/avalanche-43114/0xf693248f96fe03422fea95ac0afbbbc4a8fdd172/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (57)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xaae485780b00dc96859348bc59b7b3fc099e5a00) | unknown | avalanche | n/a | 2 deployments: avalanche `0x7e8deef5bb861cf158d8bdaaa1c31f7b49922f49`; avalanche `0xaae485780b00dc96859348bc59b7b3fc099e5a00` | ❓ Unverified |
| Proxy (impl: 0xb3f066d44d6022972d21f6cfaba5ed2af600eda0) | unknown | avalanche | n/a | 2 deployments: avalanche `0x82a85407bd612f52577909f4a58bfc6873f14da8`; avalanche `0xb3f066d44d6022972d21f6cfaba5ed2af600eda0` | ❓ Unverified |
| Proxy (impl: 0xb984b15e338ac7cabc66d497af383f2916ddfcfa) | unknown | avalanche | n/a | 2 deployments: avalanche `0x05c828ec1b4e480c0c72ba47da78b20adee9939e`; avalanche `0xb984b15e338ac7cabc66d497af383f2916ddfcfa` | ❓ Unverified |
| Proxy (impl: 0xccae3948640097c67f067cba7f6a4e9b40f16ec4) | unknown | avalanche | n/a | 2 deployments: avalanche `0x1b7966315ef0259de890f38f1bdb95acc03cacdd`; avalanche `0xccae3948640097c67f067cba7f6a4e9b40f16ec4` | ❓ Unverified |
| Proxy (impl: 0xceac74d1e9ac8b5e938f75936373d73b6cd01a49) | unknown | avalanche | n/a | 2 deployments: avalanche `0xa87544f33c6020ece6ba4deac7c3009666b4a525`; avalanche `0xceac74d1e9ac8b5e938f75936373d73b6cd01a49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0eafc8057a698f617f01a13b29b3a693eaae19e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x109f1757e391e6e09d801c3600c290e52f72f241` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10d48fabe605666470037e0c3d6431b0d31ee5dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16bf44dffb40b5ed8a8eb7cdd0c62dbf4aeb9452` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19a88dd36396ed6707de3affb8ce8cbd5153bdab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fa283b8c14e2d33e699cce56bf32b7cb2db67d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2c74781387ce23c05a02bdb8375ff75d5a6f467c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x311c4670906989133629bcf0b67179e95db5ecaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x397b635bc39686e86dbd212898f2938267510f35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ba25d4a8d71e1fc7a3844dafb4d89776df5ef10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d77f973d9d9f568676596b618b1f34fb0373e91` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x431de0736f523c2d974b5698dbce2707871d04b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4710eab7eb09ddaf89a99427040418db6c3a6c79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x472087d49cf633cb7d906bb1972cd806ceb8c2da`; avalanche `0x67b0edd7a9fe9ca7dd74531187afa2b1d1114af0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49a7bf34b92bfb8beba31641e6498682c17ac203` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54b92d5ef16f1d7d2522bed60978039f8d06cee4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f0c78719a554c1e8466f157d6c9db5fd7e61412` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6448ca375511e7cbc7cb2b99a1ddad2be582c891` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b2f89f8a7f73667f4d40a96d3bbbf5913f02b7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x70f58cab471b6614252b724060cf106a937f1c92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x716275daac91df227aec4e7879c21b601deede52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7567a4d67434fc478510c111ae3d6c9bcf3aa83b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a1b461bc3cb404e67bf77eae60fbf68e0cc4dd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c56f94a6e1bfd2675e761b746d4658b112e94ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x86a6e25f1c383d88f7d9b09557cab2164ec7d757`; avalanche `0xf8a82f5815b2ef783184f4b4bdb84d6d928fc84c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c576a65d95efb3f160d3a62b43ccfd9e0e3c59c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9099aeb35a9d013ee39342a209693e93e370378d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9370243c8533c71b3e5e0b811a17cb0f3801b3d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x94482b135f02f50d8ec447b805228f90b5ab0ac9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x96dd95307295e2f72e6382fc5130f1a8db74042c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b82d362626833938b7bb1c38d131d2c64d64bcd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f9151c0cbe16df722c5da7ecec86b83dafa95ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaa499ca023ca05068ebade8133e6f9ac4dcf5e47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xadcd1100b704c5ff816962a70b2ffd23d94e9818` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf6992a332eac67fb36dd5d440c936f282737b7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf74e08db166b413e9f51f851a9cd6c3d8707df3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb599b7972c0b953b434a862a71fb03a55548fc90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbdac98530bd86e34993e80bb337f6f1e32fb45e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe3337311bfca00611c71c661b503204542102cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc190d1c4921c041976f5cce5e13fc7d17a7e5d94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3ae90b86773b2c911fd23c7f56dba25c1e30a97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc57b51da6a87496c8c8ffdaaba654cf8e018401d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5c803280bc933c14d0fbfa6601f268511c05087` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce5595df5971eee18fee0d6a9f297339c9f7d46b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcee50068a61aac1aaba8ea115bd9cc542a62a1cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2a7cdaec1ed0da238a7e826d7838b19fea0a835` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0xd2bc7703e1ee6626180442f6829350460bd0fc24`; avalanche `0xd2cd7a59aa8f8fdc68d01b1e8a95747730b927d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd882a45cf5bc97190ddf65aa82e597c1b36e00ce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda90de2bc914732fa552f5ed5b4f62e77aff60c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed08e227644bae137daff340d755e668f835f121` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xedc3b72a9e3ad53e62ae8e9ca4e740405b31a431` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6b05da208fe46cb9ce991f05b2938c25f206923` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Verichains Public Audit Report - Crabada Game - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Crabada%20Game%20-%20v1.1.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Audit Report - Crabada Sale - v1.2.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Crabada%20Sale%20-%20v1.2.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xa32608e873f9ddef944b24798db69d80bbb4d1ed`](./contracts/avalanche-43114/0xa32608e873f9ddef944b24798db69d80bbb4d1ed/) | CRA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf693248f96fe03422fea95ac0afbbbc4a8fdd172`](./contracts/avalanche-43114/0xf693248f96fe03422fea95ac0afbbbc4a8fdd172/) | TUS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12967] Verichains Public Audit Report - Crabada Game - v1.1.pdf
- [12968] Verichains Public Audit Report - Crabada Sale - v1.2.pdf

Fork inheritance lineage and inherited audits are included when available.
