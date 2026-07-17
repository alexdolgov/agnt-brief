# Agentic Audit Brief: KingDefi

## Project Overview

- Project: KingDefi (`kingdefi`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.231Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: bsc
- Contract surface: 36 unique implementations (36 raw deployments)
- DeFi Llama TVL: $35,204.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 7 contract(s).

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 36 (2 live, 34 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
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
| KROWN | unknown | bsc | n/a | [`0x1446f3cedf4d86a9399e49f7937766e6de2a3aab`](./contracts/bsc-56/0x1446f3cedf4d86a9399e49f7937766e6de2a3aab/) | ⚠️ Unaudited |
| KrownAutoCompoundFarm | unknown | bsc | n/a | [`0x98f3b99198e164f50272ea5ba44ea76b1a439876`](./contracts/bsc-56/0x98f3b99198e164f50272ea5ba44ea76b1a439876/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x113628feec46e48e9f8aa225e0844d3c6fe335ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x189aad57f93c09acf9bb023eab2cfc6b6f7bac53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d54ed92dbac42877a878b8fcb5b227d49730efb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1db4adb2981865e0b63ded83bbee2701a6d78962` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20d1ac385e6fc7c71b0a1f6c05528b07e0a074d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x211c08c23c3410c16c3509b8537a615b7cd1f0ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30da6008a3c6b19af044b932a61f59e90898e983` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36c83d7443a580d623492478a0035d84e0c0b48e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e3f600b64c93727220212b0e63d0a2ad783113d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x597eade8b4fafdc31dc5b68903b283aa70b9e322` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62831588fa65ddf6b71fdaf7e385973214425ac3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x645ad51311f5ddd4da936ec1200fd24a662d6d6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d469e0ea418a6f51eb4eff17873b7a7c540fd71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e589d08d919679324e7883ac259cfa5f124c656` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72548dc0b5b0527230e327b9fe2f6c0e5a304a6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8157d7d710135834f99859a7b0b92cccc3bcca94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x841d8a3bb9bc1eeefd681a6626971e68ca509139` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8570711e86eb7f87c9ebe81c6929db5222651b37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d4ea59670c2ce93e955cb120ed8c740a3a94873` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b01e491333e87034ff29d3ae0e916b87006362b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9caf283e25eb55c1585622935fa13dc697c9fa8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa26940cbb09c5176363f14eb2267779bba1e1d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadba2d83e6a80766bd418ac3d20472664cbc3dd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd79291ad78b22a20b4571bed91202db619f2999` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc0ef4e0b610337bdafe2623443c11a72871fef6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccd341d9d826c925f2738ffe07f0d088f94d096f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4cb175a40a4e97228e314c86baba1dce5a724c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5572a1e5b206a218f71654d07d8ba5365c46768` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe19365885d81e8c28343151360691392280b7576` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea5d7350fb21843c58c9128577f2835d19723965` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb0fd8fce7adaaddd3222f634c01ebb0987807ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb3337178de791983089ea32fe9df0e6568d5682` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdaccc498c9d007ee5729a8f3a6bc0d24e2053ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfddade65bf769e1cd4f7ef40fc767175dcaf93c8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [meaoffice.nl](https://meaoffice.nl/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [raterpoint.com.co](https://raterpoint.com.co/) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1446f3cedf4d86a9399e49f7937766e6de2a3aab`](./contracts/bsc-56/0x1446f3cedf4d86a9399e49f7937766e6de2a3aab/) | KROWN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x98f3b99198e164f50272ea5ba44ea76b1a439876`](./contracts/bsc-56/0x98f3b99198e164f50272ea5ba44ea76b1a439876/) | KrownAutoCompoundFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13344] meaoffice.nl
- [16120] raterpoint.com.co

Fork inheritance lineage and inherited audits are included when available.
