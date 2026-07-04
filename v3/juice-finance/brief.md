# Agentic Audit Brief: Juice Finance

## Project Overview

- Project: Juice Finance (`juice-finance`)
- Website: [https://juice.finance](https://juice.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:17.560Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: blast
- Contract surface: 29 unique implementations (29 raw deployments)
- DeFi Llama TVL: $103,727.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Leveraged Farming. Structurally: 29 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 19 common project-authored base contract(s) (strategyvaultevents, addresscheckertrait, blastpoints). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/29 (0.0%)
- Deployed-live implementations: 29 of 29 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConstantStrategySlippageModel | unknown | blast | n/a | [`0x001dae...361fb4`](./contracts/blast-81457/0x001dae45b94a81cd1118f19733dc980c99361fb4/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | blast | n/a | [`0xc0f682...4fb7a3`](./contracts/blast-81457/0xc0f68276bf79cb033641f615e72b19deb44fb7a3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | blast | n/a | [`0xe2ff1a...ef34cd`](./contracts/blast-81457/0xe2ff1a8a302f406aee73271f83386aaa37ef34cd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | blast | n/a | [`0xfec64a...496382`](./contracts/blast-81457/0xfec64ae675cc4b1aacf8f9c0abead585c5496382/) | ⚠️ Unaudited |
| FixedPresale | unknown | blast | n/a | [`0x28334a...ffac61`](./contracts/blast-81457/0x28334aa690505f67f7c070b136ab80d289ffac61/) | ⚠️ Unaudited |
| JuiceAccountManager | unknown | blast | n/a | [`0x23eba0...8e6dfa`](./contracts/blast-81457/0x23eba06981b5c2a6f1a985bdce41bd64d18e6dfa/) | ⚠️ Unaudited |
| JuiceERC20AccountManager | unknown | blast | n/a | [`0x024693...966be2`](./contracts/blast-81457/0x0246937acacabe4e1b6045de9b68113d72966be2/) | ⚠️ Unaudited |
| JuiceGovernor | unknown | blast | n/a | [`0x21d188...cd30d2`](./contracts/blast-81457/0x21d1887a5dd441dc8c01713713035dd171cd30d2/) | ⚠️ Unaudited |
| JuiceHyperlockERC20PointsDepositStrategy | unknown | blast | n/a | [`0x8034b0...90d181`](./contracts/blast-81457/0x8034b01555487c26d4e21f4e33b7a30fbc90d181/) | ⚠️ Unaudited |
| JuiceLendingPool | unknown | blast | n/a | [`0xdc9ed5...25813d`](./contracts/blast-81457/0xdc9ed546bcf0546a22c242d023eb59d37d25813d/) | ⚠️ Unaudited |
| JuiceStrategyKeeper | unknown | blast | n/a | [`0x5c4845...f0e3cf`](./contracts/blast-81457/0x5c484539c7ca2e1f9188e7e24e74fd6e46f0e3cf/) | ⚠️ Unaudited |
| JuiceThrusterV2Strategy | unknown | blast | n/a | [`0x72e4ce...11d30a`](./contracts/blast-81457/0x72e4ce9b7cc5d9c017f64ad58e512c253a11d30a/) | ⚠️ Unaudited |
| JuiceThrusterV3SpotStrategy | unknown | blast | n/a | [`0x54e538...3f5ab2`](./contracts/blast-81457/0x54e5382d11d99178aef1e5a9c62fb7ee8b3f5ab2/) | ⚠️ Unaudited |
| JuiceThrusterV3WETHSpotStrategy | unknown | blast | n/a | [`0x4a355d...220027`](./contracts/blast-81457/0x4a355d57fc1a5eeb33c0a19539744a2144220027/) | ⚠️ Unaudited |
| JuiceToken | unknown | blast | n/a | [`0x818a92...5c0923`](./contracts/blast-81457/0x818a92bc81aad0053d72ba753fb5bc3d0c5c0923/) | ⚠️ Unaudited |
| JuiceV2LPStrategy | unknown | blast | n/a | [`0x576314...a3e40c`](./contracts/blast-81457/0x576314f851732b208d807260fe19fec7dba3e40c/) | ⚠️ Unaudited |
| JuiceV2SpotStrategy | unknown | blast | n/a | [`0x15e44c...144bc9`](./contracts/blast-81457/0x15e44c3f3f9b34fc49cc15a18a597bf80f144bc9/) | ⚠️ Unaudited |
| JuiceVaultActivator | unknown | blast | n/a | [`0xc44382...40ba45`](./contracts/blast-81457/0xc4438286b0793c35a94469dbacda54235a40ba45/) | ⚠️ Unaudited |
| JuiceWasabiStrategy | unknown | blast | n/a | [`0x0ca56a...c68d78`](./contracts/blast-81457/0x0ca56aa647e83a8f0a5f7a81a2fdca393bc68d78/) | ⚠️ Unaudited |
| JuiceWasabiWETHStrategy | unknown | blast | n/a | [`0x98546c...3b9adc`](./contracts/blast-81457/0x98546cdd046219b25b2e617a55563a5e4a3b9adc/) | ⚠️ Unaudited |
| MunchableLockdropStrategy | unknown | blast | n/a | [`0x01f7df...ad9d21`](./contracts/blast-81457/0x01f7df622dde3b7d234aadbe282dda24cead9d21/) | ⚠️ Unaudited |
| ParticleDuoPointsStrategy | unknown | blast | n/a | [`0x01e4eb...fe9fc3`](./contracts/blast-81457/0x01e4ebac4767f14ee0e959961f78486b5dfe9fc3/) | ⚠️ Unaudited |
| Presale | unknown | blast | n/a | [`0x360310...689441`](./contracts/blast-81457/0x360310975fae34d51a404099342baa812c689441/) | ⚠️ Unaudited |
| ProtocolGovernor | unknown | blast | n/a | [`0xa25e37...965f7b`](./contracts/blast-81457/0xa25e37aef324edb69db1b31e9877968236965f7b/) | ⚠️ Unaudited |
| PythPriceProvider | unknown | blast | n/a | [`0x43b6e7...567002`](./contracts/blast-81457/0x43b6e7acff40a11643c0d680df8bcad17c567002/) | ⚠️ Unaudited |
| RingV2StrategyView | unknown | blast | n/a | [`0x5487fd...4ff5ab`](./contracts/blast-81457/0x5487fd96e66b4e7c529e080c6dd49dafc64ff5ab/) | ⚠️ Unaudited |
| StakeIdentifiers | unknown | blast | n/a | [`0x4ca392...25b331`](./contracts/blast-81457/0x4ca392f74a4c86f5e521f1d8e915b36ed425b331/) | ⚠️ Unaudited |
| V3RangeDepositHelper | unknown | blast | n/a | [`0x245aed...c48071`](./contracts/blast-81457/0x245aed66a9f257b6799fb8cfc53d009d53c48071/) | ⚠️ Unaudited |
| ViewV3SwapPrice | unknown | blast | n/a | [`0xa31af8...a31a13`](./contracts/blast-81457/0xa31af89858960f3a2642ceb2495a40c231a31a13/) | ⚠️ Unaudited |

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
| [spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf (also discovered via alternate URL)](https://3056968727-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWknP2uI2K6bJ6A8rjMCU%2Fuploads%2FsPOYBN0lSFOcXueNilnx%2FJUICE-Trust_Security-consultaion_report.pdf?alt=media) | Trust Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21390] spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf

Fork inheritance lineage and inherited audits are included when available.
