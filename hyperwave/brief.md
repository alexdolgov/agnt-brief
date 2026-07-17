# Agentic Audit Brief: HyperWave

## Project Overview

- Project: HyperWave (`hyperwave`)
- Website: [https://app.hyperwavefi.xyz](https://app.hyperwavefi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.819Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base, ethereum, hyperliquid
- Contract surface: 13 unique implementations (38 raw deployments)
- DeFi Llama TVL: $3,360,966.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 12 project-authored contract(s) across 3 chain(s); 4 ERC4626 vaults, 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 9 common project-authored base contract(s) (baseupgradeabilityproxy, proxy, baseimmutableadminupgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (34 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/7 (57.1%)
- Deployed-live implementations: 9 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/9
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 13
- Raw deployments: 38
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 57.1% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 4 | 44.4% | 2024-04 |
| Spearbit | Tier 1 | 4 | 44.4% | 2024-04 |
| Pashov Audit Group | Tier 2 | 1 | 11.1% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | hyperliquid | n/a | 4 deployments: hyperliquid [`0x74f3b2edc56df9d2a7db9249d9bae6e346510e3b`](./contracts/hyperliquid-999/0x74f3b2edc56df9d2a7db9249d9bae6e346510e3b/); hyperliquid `0x78e3ac5bf48dcaf1835e7f9861542c0d43d0b03e`; hyperliquid `0xa77f32badeea2d2b7de78680c3a6d8b88c46055d`; hyperliquid `0xcf9be8bf79ad26fdd7aa73f3dd5ba73ecdee2a32` | ✅ Audited |
| BoringVault | core_logic | hyperliquid | n/a | 6 deployments: ethereum `0x9ba2edc44e0a4632eb4723e81d4142353e1bb160`; ethereum `0x9fd7466f987fd4c45a5bbde22ed8aba5bc8d72d1`; hyperliquid [`0x4de03ca1f02591b717495cfa19913ad56a2f5858`](./contracts/hyperliquid-999/0x4de03ca1f02591b717495cfa19913ad56a2f5858/); hyperliquid `0x855cedd0e13be116f3eb17fa7b7b682999f55c4f`; hyperliquid `0x9fd7466f987fd4c45a5bbde22ed8aba5bc8d72d1`; hyperliquid `0xa2f8da4a55898b6c947fa392ef8d6bfd87a4ff77` | ✅ Audited |
| ManagerWithMerkleVerification | operational_periphery | hyperliquid | n/a | 4 deployments: hyperliquid [`0x519a4e3ee7daea8d2814f059eefcd44dc4ae5618`](./contracts/hyperliquid-999/0x519a4e3ee7daea8d2814f059eefcd44dc4ae5618/); hyperliquid `0xd0f20e410503fb2b5431bf802263f4671cdf11d2`; hyperliquid `0xe3d3b6fdb0488b7167ed102ccf6bdd96e70d1cc1`; hyperliquid `0xf0cd28d6ff2c1a84fc88215e920452842d1f1929` | ✅ Audited |
| TellerWithMultiAssetSupport | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x70cb1a1888afee738344dd879d818e1f369b3dd5`](./contracts/hyperliquid-999/0x70cb1a1888afee738344dd879d818e1f369b3dd5/); hyperliquid `0xfa803575411744043130c43b53ed1f02f8d079d7` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenInstance | token | ethereum | n/a | 3 deployments: ethereum [`0x23878914efe38d27c4d67ab83ed1b93a74d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x4f5923fc5fd4a93352581b38b7cd26943012decf`; ethereum `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | base | n/a | [`0x4e65fe4dba92790696d040ac24aa414708f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 4 deployments: ethereum [`0xbeef01735c132ada46aa9aa4c54623caa92a64cb`](./contracts/ethereum-1/0xbeef01735c132ada46aa9aa4c54623caa92a64cb/); ethereum `0xbeef047a543e45807105e51a8bbefcc5950fcfba`; ethereum `0xbeefff209270748ddd194831b3fa287a5386f5bc`; ethereum `0xd63070114470f685b75b74d60eec7c1113d33a3d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | hyperliquid | n/a | 6 deployments: hyperliquid [`0x2900abd73631b2f60747e687095537b673c06a76`](./contracts/hyperliquid-999/0x2900abd73631b2f60747e687095537b673c06a76/); hyperliquid `0x835febf893c6dddee5cf762b0f8e31c5b06938ab`; hyperliquid `0x8a862fd6c12f9ad34c9c2ff45ab2b6712e8cea27`; hyperliquid `0xfc5126377f0efc0041c0969ef9ba903ce67d151e`; base `0x616a4e1db48e22028f6bbf20444cd3b8e3273738`; base `0x7bfa7c4f149e7415b73bdedfe609237e29cbf34a` | ⚠️ Unaudited |
| RolesAuthority | governance | hyperliquid | n/a | 4 deployments: hyperliquid [`0x4d1cf31a919d62c65fa616185824fe78a09da917`](./contracts/hyperliquid-999/0x4d1cf31a919d62c65fa616185824fe78a09da917/); hyperliquid `0x5ed1412f3b27e38bde1fe290c7d66bfe306ff4cc`; hyperliquid `0xce9dff5a94b7395d817bc65325245c40b81e3b8f`; hyperliquid `0xe4b9c0ede859decd6c0e32e5da8c3d9e9a204b75` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x0e01e3afd147c7f079ea19d0eca166ad3a22e79d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa9d7d4709716b90cd5013fd88fb17aeedd24bc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfaf3288976f5548ebcfb1ba9e86ccc467a075c53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xffd5fff7f184fa63e7b9eedf7eec2da7bf03f170` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ]()and [CodeSpect](https://codespect.net/).](https://threesigma.xyz/) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ](https://threesigma.xyz/)and [CodeSpect]().](https://www.codespect.net/) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | 16 | high |
| [0xmacro-boring-vault-arctic-0.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2Fzjm3HGLDFHJGiuhGz2rH%2F0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | 16 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FWofbRmhDmF5HJ8kD7IdU%2F0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2F3t8IWXvVGBrUnPZztOqS%2F023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf) | Codespect | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Forwarder_3Sigma_HyperliquidForwarder.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FzQcqLsXtwmC0N2HVZLbf%2FForwarder_3Sigma_HyperliquidForwarder.pdf) | 3Sigma | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FQvhQDsavyo1g9x5DMoha%2Fpashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | 2 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FvKOC5u32kswbfrcIs98I%2Fspearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 16 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x23878914efe38d27c4d67ab83ed1b93a74d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e65fe4dba92790696d040ac24aa414708f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4d1cf31a919d62c65fa616185824fe78a09da917`](./contracts/hyperliquid-999/0x4d1cf31a919d62c65fa616185824fe78a09da917/) | RolesAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=50

Zero-match audit list:

- [20550] Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ]()and [CodeSpect](https://codespect.net/).
- [20551] Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ](https://threesigma.xyz/)and [CodeSpect]().
- [20556] 0xmacro-boring-vault-arctic-1.pdf
- [20557] 023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf
- [20558] Forwarder_3Sigma_HyperliquidForwarder.pdf

Fork inheritance lineage and inherited audits are included when available.
