# Agentic Audit Brief: OCP Finance

## Project Overview

- Project: OCP Finance (`ocp-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.886Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: bsc
- Contract surface: 30 unique implementations (43 raw deployments)
- DeFi Llama TVL: $9,832.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 56 project-authored contract(s) across 1 chain(s); 16 ERC20 tokens, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 24 common project-authored base contract(s) (cerc20, ctoken, ctokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 392; live-surface contracts included: 42 (19 live, 23 unknown).
- Excluded by liveness: 350 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 7 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/7
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 30
- Raw deployments: 43
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 14.3% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapOracleTWAP | unknown | bsc | n/a | 5 deployments: bsc [`0xd19714...bb574a`](./contracts/bsc-56/0xd197146045e176afde2c00955f555d237fbb574a/); bsc `0xd267d7...f87835`; bsc `0xdcae4a...cd4b4b`; bsc `0xde4f1c...72c798`; bsc `0xe793fe...8d967d` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Immutable | token | bsc | n/a | 9 deployments: bsc [`0x14da51...13c42e`](./contracts/bsc-56/0x14da51606f0927f3ccccbcac1a4db1baf513c42e/); bsc `0x1af197...fe58df`; bsc `0x3a6766...d94709`; bsc `0x5b54f0...43811b`; bsc `0x606f53...137852`; bsc `0x7759ee...e5b319`; bsc `0x9f7f20...bba7f9`; bsc `0xa169d0...fd17b8`; bsc `0xe4f570...396047` | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x0abbab...05cb31`](./contracts/bsc-56/0x0abbaba95439dabc12a6ba59e0713a722a05cb31/); bsc `0xbb35b9...5f8fc4` | ⚠️ Unaudited |
| OCP | unknown | bsc | n/a | [`0x3c7026...289fbd`](./contracts/bsc-56/0x3c70260eee0a2bfc4b375feb810325801f289fbd/) | ⚠️ Unaudited |
| SteakVault | core_logic | bsc | n/a | [`0x9e9644...acf995`](./contracts/bsc-56/0x9e96449359aff32d0e699a1335585118a7acf995/) | ⚠️ Unaudited |
| USDO | unknown | bsc | n/a | [`0x5801d0...943276`](./contracts/bsc-56/0x5801d0e1c7d977d78e4890880b8e579eb4943276/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | [`0x8b1357...aa6fc3`](./contracts/bsc-56/0x8b13570a283f3ba364b44e2f6d4986c3f3aa6fc3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x00b617...49b60d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e12e9...c6a2fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20f346...56c074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2607d0...7e19b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b64d3...3718f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f2840...9b0eb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49acf2...c73f1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eba74...0f4bc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59bb41...00362a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bd87c...1d2164` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c6479...806e5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x771595...d3c135` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x805789...96c963` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82f3a9...be919c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9119f8...526499` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa75c9...af7237` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9aca2...d729ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba23a6...9df9d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfed54...b7b951` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca94ba...33dfee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbb3f0...e83315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe198ee...be655e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1f5ca...bf685b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [OmniOracle Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/OmniOracle%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x14da51...13c42e`](./contracts/bsc-56/0x14da51606f0927f3ccccbcac1a4db1baf513c42e/) | CErc20Immutable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0abbab...05cb31`](./contracts/bsc-56/0x0abbaba95439dabc12a6ba59e0713a722a05cb31/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c7026...289fbd`](./contracts/bsc-56/0x3c70260eee0a2bfc4b375feb810325801f289fbd/) | OCP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9e9644...acf995`](./contracts/bsc-56/0x9e96449359aff32d0e699a1335585118a7acf995/) | SteakVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5801d0...943276`](./contracts/bsc-56/0x5801d0e1c7d977d78e4890880b8e579eb4943276/) | USDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8b1357...aa6fc3`](./contracts/bsc-56/0x8b13570a283f3ba364b44e2f6d4986c3f3aa6fc3/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
