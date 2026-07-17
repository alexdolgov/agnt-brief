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
| UniswapOracleTWAP | unknown | bsc | n/a | 5 deployments: bsc [`0xd197146045e176afde2c00955f555d237fbb574a`](./contracts/bsc-56/0xd197146045e176afde2c00955f555d237fbb574a/); bsc `0xd267d78847c417a3861d4231b63a2afd79f87835`; bsc `0xdcae4ad14259f7bf3926b6a79533d384c0cd4b4b`; bsc `0xde4f1cb1dd1debfac7c63709b592b4501872c798`; bsc `0xe793fe72e335a1c4b443c8d36bfb1aee318d967d` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Immutable | token | bsc | n/a | 9 deployments: bsc [`0x14da51606f0927f3ccccbcac1a4db1baf513c42e`](./contracts/bsc-56/0x14da51606f0927f3ccccbcac1a4db1baf513c42e/); bsc `0x1af197d1bc1cde0e9ee0c9ea090a4c6c36fe58df`; bsc `0x3a67668c43aa08294144755efc8669fef5d94709`; bsc `0x5b54f07e3c24e64bb7ac67d0774fb8fc0a43811b`; bsc `0x606f53b25984d60559b21bee6c51e2fe93137852`; bsc `0x7759eeb5365e94428bf46a26567c49c25ee5b319`; bsc `0x9f7f204ecaaa37e6b3cd52da0627ae00e0bba7f9`; bsc `0xa169d0a22012edd345610e71bbeb84690efd17b8`; bsc `0xe4f5700b60a7a9dadcac0c6aa365d74132396047` | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x0abbaba95439dabc12a6ba59e0713a722a05cb31`](./contracts/bsc-56/0x0abbaba95439dabc12a6ba59e0713a722a05cb31/); bsc `0xbb35b9e28c2212a75bf26b45713de8c3375f8fc4` | ⚠️ Unaudited |
| OCP | unknown | bsc | n/a | [`0x3c70260eee0a2bfc4b375feb810325801f289fbd`](./contracts/bsc-56/0x3c70260eee0a2bfc4b375feb810325801f289fbd/) | ⚠️ Unaudited |
| SteakVault | core_logic | bsc | n/a | [`0x9e96449359aff32d0e699a1335585118a7acf995`](./contracts/bsc-56/0x9e96449359aff32d0e699a1335585118a7acf995/) | ⚠️ Unaudited |
| USDO | unknown | bsc | n/a | [`0x5801d0e1c7d977d78e4890880b8e579eb4943276`](./contracts/bsc-56/0x5801d0e1c7d977d78e4890880b8e579eb4943276/) | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | [`0x8b13570a283f3ba364b44e2f6d4986c3f3aa6fc3`](./contracts/bsc-56/0x8b13570a283f3ba364b44e2f6d4986c3f3aa6fc3/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x00b617850d9961dce7782a2a3f230e9ad249b60d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e12e9847840765d435ef6498148c37f58c6a2fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20f34626beb21979eebe113526353786cf56c074` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2607d097d056ef178745f4b7c4bb5a12017e19b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b64d353556d738974b63bd4d82dca2c1c3718f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f2840b5eb81cf5b8af40ba45e278adc299b0eb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49acf21c4d29339744438dcf112615b2a9c73f1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4eba74ac8180fc4449dd274e75c74bdeff0f4bc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59bb413bd333a072ac9823b430ca1a112800362a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bd87ca62b8d7ee0a7b8fae8686233e3151d2164` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c647999078e13050f02b7ea8952e6f644806e5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7715952d21260ca21a44b052617c0111dbd3c135` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x805789c16e7c78dcdea260eb64f0d152f896c963` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82f3a9e763f923c9bbc38e886fa1218a74be919c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9119f82ede04e04c9677489fb186c572b2526499` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa75c956eef5188272823cdae1750fd085af7237` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9aca2ef540f4fbb6917849936e4b4c0b5d729ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba23a61af61420f97e82808dbb870360ac9df9d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfed542c636906bac4ee115ff41ae2274fb7b951` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca94ba6a44231ae94093e8ed654cc1315033dfee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbb3f0708cb272bedc451e02a92d8224ace83315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe198ee88bfe6cd308bdbbf51778aa3955cbe655e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1f5cae81005e74dba7df691a3139d7bbcbf685b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [OmniOracle Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/OmniOracle%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x14da51606f0927f3ccccbcac1a4db1baf513c42e`](./contracts/bsc-56/0x14da51606f0927f3ccccbcac1a4db1baf513c42e/) | CErc20Immutable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0abbaba95439dabc12a6ba59e0713a722a05cb31`](./contracts/bsc-56/0x0abbaba95439dabc12a6ba59e0713a722a05cb31/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c70260eee0a2bfc4b375feb810325801f289fbd`](./contracts/bsc-56/0x3c70260eee0a2bfc4b375feb810325801f289fbd/) | OCP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9e96449359aff32d0e699a1335585118a7acf995`](./contracts/bsc-56/0x9e96449359aff32d0e699a1335585118a7acf995/) | SteakVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5801d0e1c7d977d78e4890880b8e579eb4943276`](./contracts/bsc-56/0x5801d0e1c7d977d78e4890880b8e579eb4943276/) | USDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8b13570a283f3ba364b44e2f6d4986c3f3aa6fc3`](./contracts/bsc-56/0x8b13570a283f3ba364b44e2f6d4986c3f3aa6fc3/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
