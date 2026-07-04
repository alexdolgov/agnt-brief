# Agentic Audit Brief: HyperWave

## Project Overview

- Project: HyperWave (`hyperwave`)
- Website: [https://app.hyperwavefi.xyz](https://app.hyperwavefi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:28.700Z
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

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 13
- Raw deployments: 38
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 9 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | hyperliquid | n/a | 4 deployments: hyperliquid [`0x74f3b2...510e3b`](./contracts/hyperliquid-999/0x74f3b2edc56df9d2a7db9249d9bae6e346510e3b/); hyperliquid `0x78e3ac...d0b03e`; hyperliquid `0xa77f32...46055d`; hyperliquid `0xcf9be8...ee2a32` | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | n/a | 3 deployments: ethereum [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x4f5923...12decf`; ethereum `0x98c23e...e16f5c` | ⚠️ Unaudited |
| ATokenInstance | token | base | n/a | [`0x4e65fe...f5c0ab`](./contracts/base-8453/0x4e65fe4dba92790696d040ac24aa414708f5c0ab/) | ⚠️ Unaudited |
| BoringVault | core_logic | hyperliquid | n/a | 6 deployments: ethereum `0x9ba2ed...1bb160`; ethereum `0x9fd746...8d72d1`; hyperliquid [`0x4de03c...2f5858`](./contracts/hyperliquid-999/0x4de03ca1f02591b717495cfa19913ad56a2f5858/); hyperliquid `0x855ced...f55c4f`; hyperliquid `0x9fd746...8d72d1`; hyperliquid `0xa2f8da...a4ff77` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | operational_periphery | hyperliquid | n/a | 4 deployments: hyperliquid [`0x519a4e...ae5618`](./contracts/hyperliquid-999/0x519a4e3ee7daea8d2814f059eefcd44dc4ae5618/); hyperliquid `0xd0f20e...df11d2`; hyperliquid `0xe3d3b6...0d1cc1`; hyperliquid `0xf0cd28...1f1929` | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 4 deployments: ethereum [`0xbeef01...2a64cb`](./contracts/ethereum-1/0xbeef01735c132ada46aa9aa4c54623caa92a64cb/); ethereum `0xbeef04...0fcfba`; ethereum `0xbeefff...86f5bc`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | hyperliquid | n/a | 6 deployments: hyperliquid [`0x2900ab...c06a76`](./contracts/hyperliquid-999/0x2900abd73631b2f60747e687095537b673c06a76/); hyperliquid `0x835feb...6938ab`; hyperliquid `0x8a862f...8cea27`; hyperliquid `0xfc5126...7d151e`; base `0x616a4e...273738`; base `0x7bfa7c...cbf34a` | ⚠️ Unaudited |
| RolesAuthority | governance | hyperliquid | n/a | 4 deployments: hyperliquid [`0x4d1cf3...9da917`](./contracts/hyperliquid-999/0x4d1cf31a919d62c65fa616185824fe78a09da917/); hyperliquid `0x5ed141...6ff4cc`; hyperliquid `0xce9dff...1e3b8f`; hyperliquid `0xe4b9c0...204b75` | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x70cb1a...9b3dd5`](./contracts/hyperliquid-999/0x70cb1a1888afee738344dd879d818e1f369b3dd5/); hyperliquid `0xfa8035...d079d7` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | hyperliquid | n/a | `0x0e01e3...22e79d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa9d7d...d24bc4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfaf328...075c53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xffd5ff...03f170` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ]()and [CodeSpect](https://codespect.net/).](https://threesigma.xyz/) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ](https://threesigma.xyz/)and [CodeSpect]().](https://www.codespect.net/) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2Fzjm3HGLDFHJGiuhGz2rH%2F0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FWofbRmhDmF5HJ8kD7IdU%2F0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2F3t8IWXvVGBrUnPZztOqS%2F023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf) | Codespect | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Forwarder_3Sigma_HyperliquidForwarder.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FzQcqLsXtwmC0N2HVZLbf%2FForwarder_3Sigma_HyperliquidForwarder.pdf) | 3Sigma | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FQvhQDsavyo1g9x5DMoha%2Fpashov-boring-vault.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://2213769390-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FBrgaYIcgXLJRhZfsWo0V%2Fuploads%2FvKOC5u32kswbfrcIs98I%2Fspearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20550] Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ]()and [CodeSpect](https://codespect.net/).
- [20551] Hyperwave’s Hyperwave HLP is built on the [boring-vault](https://github.com/Se7en-Seas/boring-vault) standard, a battle tested Vault standard currently facilitating \~3.5 Billion in TVL Across multiple vaults. The boring vault has been audited by [Spearbit ](https://spearbit.com/)and [0xMacro](https://0xmacro.com/). In addition to this periphery contracts have undergone further audits by [ThreeSigma ](https://threesigma.xyz/)and [CodeSpect]().
- [20552] 0xmacro-boring-vault-arctic-0.pdf
- [20555] 0xmacro-boring-vault-arctic-0.pdf
- [20556] 0xmacro-boring-vault-arctic-1.pdf
- [20557] 023_CODESPECT_SWELL_HYPERLIQUID_FORWARDER.pdf
- [20558] Forwarder_3Sigma_HyperliquidForwarder.pdf
- [20559] pashov-boring-vault.pdf
- [20560] spearbit-boring-vault-arctic-0.pdf

Fork inheritance lineage and inherited audits are included when available.
