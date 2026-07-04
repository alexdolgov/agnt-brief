# Agentic Audit Brief: Multipli.fi

## Project Overview

- Project: Multipli.fi (`multipli.fi`)
- Website: [https://app.multipli.fi](https://app.multipli.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:33.408Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, ethereum
- Contract surface: 25 unique implementations (25 raw deployments)
- DeFi Llama TVL: $55,122,019.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 25 project-authored contract(s) across 2 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (accesscontrolupgradeable, contextupgradeable, erc165upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 25 (24 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/24 (0.0%)
- Deployed-live implementations: 24 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 25
- Raw deployments: 25
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

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BurnMintTokenPool | unknown | ethereum | n/a | [`0x7f49a3...00aa63`](./contracts/ethereum-1/0x7f49a388c6884c0d1706f7774e9a5575d100aa63/) | ⚠️ Unaudited |
| Clipper | unknown | ethereum | n/a | [`0x62b7a3...7378f4`](./contracts/ethereum-1/0x62b7a353928142a18c07026a33f8089d1c7378f4/) | ⚠️ Unaudited |
| Cure | unknown | ethereum | n/a | [`0x9ea54e...b2c914`](./contracts/ethereum-1/0x9ea54efa0d82b2afdf2c9f3a407622dc83b2c914/) | ⚠️ Unaudited |
| Dog | unknown | ethereum | n/a | [`0x15a36d...711ddd`](./contracts/ethereum-1/0x15a36d5caf263160c2a49dde6429c045fb711ddd/) | ⚠️ Unaudited |
| DSProxyFactory | unknown | ethereum | n/a | [`0xe23c0d...cbe312`](./contracts/ethereum-1/0xe23c0d47cdcb3df144c529648651d5c8f3cbe312/) | ⚠️ Unaudited |
| DssCdpManager | unknown | ethereum | n/a | [`0x97a762...572e47`](./contracts/ethereum-1/0x97a762d03a511754151dd046ee83599162572e47/) | ⚠️ Unaudited |
| DssProxyActions | unknown | ethereum | n/a | [`0x92a4bb...0ce7c8`](./contracts/ethereum-1/0x92a4bb65fbe7a4b516f52a0e7550982f650ce7c8/) | ⚠️ Unaudited |
| DssProxyActionsEnd | unknown | ethereum | n/a | [`0x41c09d...c36969`](./contracts/ethereum-1/0x41c09d97e10ddb1adbc202d6fc3aa18547c36969/) | ⚠️ Unaudited |
| End | unknown | ethereum | n/a | [`0x026782...834bf5`](./contracts/ethereum-1/0x026782f431bfc233c67128af42a4e9de7f834bf5/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0xa39986...3fd0f4`](./contracts/arbitrum-42161/0xa39986f96b80d04e8d7aeaaf47175f47c23fd0f4/) | ⚠️ Unaudited |
| GemJoin5 | unknown | ethereum | n/a | [`0x3c9567...8011fd`](./contracts/ethereum-1/0x3c9567c3b9c20e72858cd5714209ea7d7a8011fd/) | ⚠️ Unaudited |
| GetCdps | unknown | ethereum | n/a | [`0x2fcc0d...c9b412`](./contracts/ethereum-1/0x2fcc0d9972f489ec42804a00ba2029e7f6c9b412/) | ⚠️ Unaudited |
| HelperConfig | unknown | ethereum | n/a | [`0x7dfaf9...0815d7`](./contracts/ethereum-1/0x7dfaf914041a571448d9f638d50a3ba32a0815d7/) | ⚠️ Unaudited |
| Jug | unknown | ethereum | n/a | [`0x66654c...0d886e`](./contracts/ethereum-1/0x66654ccf7c4492fd3cfa01a7ec5b5ac28f0d886e/) | ⚠️ Unaudited |
| MULT | unknown | ethereum | n/a | [`0x468bba...54cd5c`](./contracts/ethereum-1/0x468bbabaef852c134b584382c0fef83f2954cd5c/) | ⚠️ Unaudited |
| OSM | unknown | ethereum | n/a | [`0x89fbae...65993a`](./contracts/ethereum-1/0x89fbae0302b8790d55fa36e6ab09ac93f865993a/) | ⚠️ Unaudited |
| PriceFeedAdapter | unknown | ethereum | n/a | [`0x82f579...f8b1cd`](./contracts/ethereum-1/0x82f5790bd1c96790e4c3a3ebc8142bd4d6f8b1cd/) | ⚠️ Unaudited |
| ProxyRegistry | unknown | ethereum | n/a | [`0xafd44c...1f30d3`](./contracts/ethereum-1/0xafd44c3e4bb4757527d1d58706023daf2f1f30d3/) | ⚠️ Unaudited |
| rwaUSD | unknown | ethereum | n/a | [`0x362135...3d3e13`](./contracts/ethereum-1/0x3621351d3f44a3a5e9ac1a3f3e9ca045313d3e13/) | ⚠️ Unaudited |
| rwaUSDJoin | unknown | ethereum | n/a | [`0xa2e7b4...5d2f5e`](./contracts/ethereum-1/0xa2e7b4a4823bf1c9a7cc9b0a63e82aa9845d2f5e/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x194ebc...f53b99`](./contracts/ethereum-1/0x194ebc1b9b382ef0e6998caace59af843cf53b99/) | ⚠️ Unaudited |
| Spotter | unknown | ethereum | n/a | [`0xf3aee7...34e2a2`](./contracts/ethereum-1/0xf3aee748355bb07cbe702b4ff8dbe6118b34e2a2/) | ⚠️ Unaudited |
| StairstepExponentialDecrease | unknown | ethereum | n/a | [`0xfeb42f...260de5`](./contracts/ethereum-1/0xfeb42fb58e790dd5f38d936df45b4bdd29260de5/) | ⚠️ Unaudited |
| Vat | unknown | ethereum | n/a | [`0xab79bf...50d2be`](./contracts/ethereum-1/0xab79bf795ba5de1eae989d0d46950ab47e50d2be/) | ⚠️ Unaudited |
| Vow | unknown | ethereum | n/a | [`0x524e24...38916d`](./contracts/ethereum-1/0x524e2461234672643fd59310bd95ffe41538916d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/1BrXG10bf8TBCiUh6RHv/Multipli_Risk_Framework by ChainRisk.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2F1BrXG10bf8TBCiUh6RHv%2FMultipli_Risk_Framework%20by%20ChainRisk.pdf) | ChainRisk | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FvhcNGf3NdIfJ6NKHhdMz%2FMultipli-Security-Review.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2Fk5sBBBvEEKT9idMH9Gho%2FMultipli-Vault-Security-Review.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FAjULj8T0DDZPMXmmj4Ih%2FCairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FYmc9maEaiskTxaun90hQ%2FEVM_STARK_Verifier_v4.0_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FNrgekxMDLn6mVCHlibAF%2FStarkEx_v2.0_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/coRl7lJZFVMVCenAj3Gn/StarkEx_v3.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FcoRl7lJZFVMVCenAj3Gn%2FStarkEx_v3.0_Audit_Report.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/jDx27BGojPIdHcRNNUzA/StarkEx_v4.0_Audit_Report.pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2FjDx27BGojPIdHcRNNUzA%2FStarkEx_v4.0_Audit_Report.pdf) | StarkEx | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf](https://251914897-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDerYSYw6qtxjqddgIxz0%2Fuploads%2F6i8JUxxWG0RaRUpHrhTF%2FStarkEx_v4.5_Audit_Report%20.pdf) | StarkEx | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20847] spaces/DerYSYw6qtxjqddgIxz0/uploads/1BrXG10bf8TBCiUh6RHv/Multipli_Risk_Framework by ChainRisk.pdf
- [20848] spaces/DerYSYw6qtxjqddgIxz0/uploads/vhcNGf3NdIfJ6NKHhdMz/Multipli-Security-Review.pdf
- [20849] spaces/DerYSYw6qtxjqddgIxz0/uploads/k5sBBBvEEKT9idMH9Gho/Multipli-Vault-Security-Review.pdf
- [20850] spaces/DerYSYw6qtxjqddgIxz0/uploads/AjULj8T0DDZPMXmmj4Ih/Cairo_and_SHARP_Verifiers_v3.0_Audit_Report.pdf
- [20851] spaces/DerYSYw6qtxjqddgIxz0/uploads/Ymc9maEaiskTxaun90hQ/EVM_STARK_Verifier_v4.0_Audit_Report.pdf
- [20852] spaces/DerYSYw6qtxjqddgIxz0/uploads/NrgekxMDLn6mVCHlibAF/StarkEx_v2.0_Audit_Report.pdf
- [20853] spaces/DerYSYw6qtxjqddgIxz0/uploads/coRl7lJZFVMVCenAj3Gn/StarkEx_v3.0_Audit_Report.pdf
- [20854] spaces/DerYSYw6qtxjqddgIxz0/uploads/jDx27BGojPIdHcRNNUzA/StarkEx_v4.0_Audit_Report.pdf
- [20855] spaces/DerYSYw6qtxjqddgIxz0/uploads/6i8JUxxWG0RaRUpHrhTF/StarkEx_v4.5_Audit_Report .pdf

Fork inheritance lineage and inherited audits are included when available.
