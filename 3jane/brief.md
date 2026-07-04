# Agentic Audit Brief: 3Jane

## Project Overview

- Project: 3Jane (`3jane`)
- Website: [https://www.3jane.xyz/](https://www.3jane.xyz/)
- Lifecycle: active (Tier 0, 58% below peak)
- Generated: 2026-07-04T14:52:57.804Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum
- Contract surface: 24 unique implementations (39 raw deployments)
- DeFi Llama TVL: $119,113,065.00
- On-chain TVL (included contracts): $83,787,176.40
- TVL by chain: Ethereum $83,787,176.40

## Project Description

Uncollateralized Lending. Structurally: 23 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 58; live-surface contracts included: 34 (32 live, 2 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/14 (64.3%)
- Deployed-live implementations: 22 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/22
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 24
- Raw deployments: 39
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $83,787,176.40
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 64.3% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 13 | 59.1% | 2025-10 |
| Veridise | Tier 2 | 8 | 36.4% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdaptiveCurveIrm | unknown | ethereum | n/a | [`0x1d434d...f9c7df`](./contracts/ethereum-1/0x1d434d2899f81f3c3fdf52c814a6e23318f9c7df/) | ✅ Audited |
| CreditLine | unknown | ethereum | n/a | [`0x26389b...20c6a9`](./contracts/ethereum-1/0x26389b03298ba5da0664ffd6bf78cf3a7820c6a9/) | ✅ Audited |
| Helper | periphery | ethereum | n/a | 2 deployments: ethereum [`0x2a66f9...f3f682`](./contracts/ethereum-1/0x2a66f992bf227d2e50ef19edd21503c3c4f3f682/); ethereum `0x82736f...444505` | ✅ Audited |
| InsuranceFund | unknown | ethereum | n/a | [`0x4507b5...d29935`](./contracts/ethereum-1/0x4507b5b23340d248457d955a211c8b0634d29935/) | ✅ Audited |
| Jane | unknown | ethereum | n/a | 2 deployments: ethereum [`0x333333...0e3404`](./contracts/ethereum-1/0x333333330522f64ee8d0b3039c460b41670e3404/); ethereum `0xff031e...fd72fc` | ✅ Audited |
| MarkdownController | governance | ethereum | n/a | [`0xf0eae7...726214`](./contracts/ethereum-1/0xf0eae71092f3c9411a9eab8f81e7d91d29726214/) | ✅ Audited |
| MarkdownManager | governance | ethereum | n/a | [`0xfd1726...118b5d`](./contracts/ethereum-1/0xfd172699e44008d1f48fd945a0421a03d8118b5d/) | ✅ Audited |
| MorphoCredit | unknown | ethereum | n/a | [`0xde6e08...b0ecbc`](./contracts/ethereum-1/0xde6e08ac208088cc62812ba30608d852c6b0ecbc/) | ✅ Audited |
| ProtocolConfig | governance | ethereum | n/a | [`0xaa11ab...a9bf1e`](./contracts/ethereum-1/0xaa11ab352fd05094a2400609fb6100e755a9bf1e/) | ✅ Audited |
| RewardsDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xac6985...f064e8`](./contracts/ethereum-1/0xac6985d4dbcd89ccad71db9bf0309eaf57f064e8/); ethereum `0xc95f8f...2f555c` | ✅ Audited |
| sUSD3 | unknown | ethereum | n/a | [`0xf68955...6164a7`](./contracts/ethereum-1/0xf689555121e529ff0463e191f9bd9d1e496164a7/) | ✅ Audited |
| TokenizedStrategy | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x05367c...36a06e`](./contracts/ethereum-1/0x05367c7a76afeb7bdf7c06b479d7551d6536a06e/); ethereum `0x492a3d...3d9f91`; ethereum `0x49ef4a...0df852`; ethereum `0x4f6694...bc0645`; ethereum `0x83872d...45f35a`; ethereum `0xbd35e3...247c2e`; ethereum `0xf733c7...3304de` | ✅ Audited |
| USD3 | unknown | ethereum | n/a | [`0x056b26...d55ecc`](./contracts/ethereum-1/0x056b269eb1f75477a8666ae8c7fe01b64dd55ecc/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StataTokenV2 | token | ethereum | n/a | [`0xd4fa2d...8cd23e`](./contracts/ethereum-1/0xd4fa2d31b7968e448877f69a96de69f5de8cd23e/) | ⚠️ Unaudited |
| Amplol | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fbb7b...03fc5a`](./contracts/ethereum-1/0x3fbb7b2f220e2b68f1ff14794543f01ed703fc5a/); ethereum `0xe74ee9...f45145` | ⚠️ Unaudited |
| Amplol | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72d9bc...42b2e5`](./contracts/ethereum-1/0x72d9bc9d8e65a690d12a92da249f3216ba42b2e5/); ethereum `0xf7a18b...417e21` | ⚠️ Unaudited |
| Amplol | unknown | ethereum | n/a | 2 deployments: ethereum [`0x82616e...c023c4`](./contracts/ethereum-1/0x82616ea8627f6d4def852fe918b2a61a2dc023c4/); ethereum `0xeadf1d...7509e5` | ⚠️ Unaudited |
| EmergencyController | governance | ethereum | n/a | 2 deployments: ethereum [`0x792a14...2ea12c`](./contracts/ethereum-1/0x792a1450a3d2023e2de6bb29208031dea52ea12c/); ethereum `0x84b31b...d2e051` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | n/a | [`0x333333...6fb5ef`](./contracts/ethereum-1/0x33333333bd7045f1a601a1e289d7ab21036fb5ef/) | ⚠️ Unaudited |
| ProtocolConfig | governance | ethereum | n/a | 2 deployments: ethereum [`0x64bc68...b70b98`](./contracts/ethereum-1/0x64bc68ea388e42c73747668122eee3a5bfb70b98/); ethereum `0x6b276a...84f34e` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4c8ce0...a9944c`](./contracts/ethereum-1/0x4c8ce0e024b8f53d5cac310c3046d82834a9944c/); ethereum `0xacd147...99fb4d` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x1dccd4...08f8c2`](./contracts/ethereum-1/0x1dccd4628d48a50c1a7adea3848bcc869f08f8c2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x98633a...b4520b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe12caa...48c754` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [veridise-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/veridise-audit.pdf) | Veridise | Audit | 2025-08 | fresh | Direct | contract_name | 8 | n/a |
| [sherlock-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/sherlock-audit.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 10 | n/a |
| [electisec-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/electisec-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 12 | n/a |
| [sherlock-2-audit.pdf](https://github.com/3jane-protocol/audits/blob/main/sherlock-2-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 12 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x72d9bc...42b2e5`](./contracts/ethereum-1/0x72d9bc9d8e65a690d12a92da249f3216ba42b2e5/) | Amplol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82616e...c023c4`](./contracts/ethereum-1/0x82616ea8627f6d4def852fe918b2a61a2dc023c4/) | Amplol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792a14...2ea12c`](./contracts/ethereum-1/0x792a1450a3d2023e2de6bb29208031dea52ea12c/) | EmergencyController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64bc68...b70b98`](./contracts/ethereum-1/0x64bc68ea388e42c73747668122eee3a5bfb70b98/) | ProtocolConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=42

Fork inheritance lineage and inherited audits are included when available.
