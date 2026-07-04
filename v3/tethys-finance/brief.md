# Agentic Audit Brief: Tethys Finance

## Project Overview

- Project: Tethys Finance (`tethys-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:59.748Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: metis
- Contract surface: 27 unique implementations (27 raw deployments)
- DeFi Llama TVL: $143,467.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 27 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (erc20permit, eip712, ownabledata). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (0 live, 27 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BDeployer | unknown | metis | n/a | [`0xe0bfe6...ff9c04`](./contracts/metis-1088/0xe0bfe6bb92be41d2b80f24952a0b4e51f6ff9c04/) | ⚠️ Unaudited |
| CDeployer | unknown | metis | n/a | [`0x558f62...db7660`](./contracts/metis-1088/0x558f62915aaec88aa1b2348d9d14ebcf84db7660/) | ⚠️ Unaudited |
| CosmicPools | unknown | metis | n/a | [`0x388474...87c796`](./contracts/metis-1088/0x388474fc9e8096d9d358566a8e8ed9b64f87c796/) | ⚠️ Unaudited |
| Disperse | unknown | metis | n/a | [`0x0a6d6a...b958e9`](./contracts/metis-1088/0x0a6d6a4964369429db4f00af226ffd51fbb958e9/) | ⚠️ Unaudited |
| Factory | unknown | metis | n/a | [`0x15294f...93c63b`](./contracts/metis-1088/0x15294ff72d7a3d21e52111a3d428d1964f93c63b/) | ⚠️ Unaudited |
| MasterChef | unknown | metis | n/a | [`0x54a8fb...241e21`](./contracts/metis-1088/0x54a8fb8c634ded694d270b78cb931ca6bf241e21/) | ⚠️ Unaudited |
| Multicall2 | unknown | metis | n/a | [`0x96a3db...ef687c`](./contracts/metis-1088/0x96a3dbbea8749eef68cbdec4486cacbcd9ef687c/) | ⚠️ Unaudited |
| Multicall3 | unknown | metis | n/a | [`0x855b69...4b636f`](./contracts/metis-1088/0x855b693bc524f6f0ac29c2a772c541da6d4b636f/) | ⚠️ Unaudited |
| OlympusProFactory | unknown | metis | n/a | [`0x8ff40b...32c505`](./contracts/metis-1088/0x8ff40b0318cd3068062c30c476be48987932c505/) | ⚠️ Unaudited |
| OlympusProFactoryStorage | unknown | metis | n/a | [`0x4c87b1...af028c`](./contracts/metis-1088/0x4c87b16ff1b67c15ffaf2b779a8a7a5739af028c/) | ⚠️ Unaudited |
| OPSubsidyRouter | unknown | metis | n/a | [`0xe02ae2...a47509`](./contracts/metis-1088/0xe02ae21b448c1f7d7f133ba9f4db1868d0a47509/) | ⚠️ Unaudited |
| OptiSwap | unknown | metis | n/a | [`0xe6b6e9...ee1988`](./contracts/metis-1088/0xe6b6e95c05375a1e24d1ec3f6d43ed34e6ee1988/) | ⚠️ Unaudited |
| SolidlyDexHandler | unknown | metis | n/a | [`0x52cd63...4466c1`](./contracts/metis-1088/0x52cd632e513ef1ebd3138d1339027676104466c1/) | ⚠️ Unaudited |
| SphereSubsidyRouter | unknown | metis | n/a | [`0x731076...4eec55`](./contracts/metis-1088/0x7310764840ac8644c4d2c77f0c1e2b1f9a4eec55/) | ⚠️ Unaudited |
| StakedETH | unknown | metis | n/a | [`0x2dda3c...c99826`](./contracts/metis-1088/0x2dda3cacb47a2eef235702292a4836751dc99826/) | ⚠️ Unaudited |
| StakedMETIS | unknown | metis | n/a | [`0x0c5dad...a5d97e`](./contracts/metis-1088/0x0c5dad5a58501135df4798a298f78ab8d1a5d97e/) | ⚠️ Unaudited |
| StakedUSDC | unknown | metis | n/a | [`0x63d4ef...12e79f`](./contracts/metis-1088/0x63d4efead90914b50e1a14858eb638f87312e79f/) | ⚠️ Unaudited |
| StyxPriceOracle | unknown | metis | n/a | [`0xea1aac...a89c4b`](./contracts/metis-1088/0xea1aac002ee2c9db41b80a27fad80632c4a89c4b/) | ⚠️ Unaudited |
| Tethys | unknown | metis | n/a | [`0x69fdb7...1f43f3`](./contracts/metis-1088/0x69fdb77064ec5c84fa2f21072973eb28441f43f3/) | ⚠️ Unaudited |
| TethysChef | unknown | metis | n/a | [`0x5bfe0d...8bea96`](./contracts/metis-1088/0x5bfe0dcb06958ecc1096aab7169147b4d98bea96/) | ⚠️ Unaudited |
| TethysMaker | unknown | metis | n/a | [`0xce202c...340702`](./contracts/metis-1088/0xce202c4e6b5aeb92427f5a8005cb3636f4340702/) | ⚠️ Unaudited |
| TethysPadToken | unknown | metis | n/a | [`0x1f25ee...07b9bf`](./contracts/metis-1088/0x1f25ee2720acc959095d16ce87d4859c0507b9bf/) | ⚠️ Unaudited |
| TethysPartnershipRouter | unknown | metis | n/a | [`0x101aae...efbd0a`](./contracts/metis-1088/0x101aaeadd762eb6852f7333e57d5323faaefbd0a/) | ⚠️ Unaudited |
| TethysRewarder | unknown | metis | n/a | [`0xe779ef...e66522`](./contracts/metis-1088/0xe779ef0c7bf86f0c74d865f45b0935b0ece66522/) | ⚠️ Unaudited |
| TethysTemple | unknown | metis | n/a | [`0x5d0cef...26e20a`](./contracts/metis-1088/0x5d0cef8e3a62f9cdb07c04f8b4188ddd5c26e20a/) | ⚠️ Unaudited |
| TokenTimelock | unknown | metis | n/a | [`0x46db4e...8ca600`](./contracts/metis-1088/0x46db4ea2f4ca6a664e850dbbbe5c0e4ae78ca600/) | ⚠️ Unaudited |
| TrackAggregator | unknown | metis | n/a | [`0xdca334...9092e8`](./contracts/metis-1088/0xdca3341b8a5943da1a3235a34d7120f4759092e8/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
