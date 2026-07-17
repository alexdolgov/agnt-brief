# Agentic Audit Brief: Hercules

## Project Overview

- Project: Hercules (`hercules`)
- Website: [https://app.hercules.exchange](https://app.hercules.exchange)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.428Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: metis
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $196,762.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 21 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (ownable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Fringe Finance** (`fringe-finance`) in the CamelotMaster, CamelotYakRouter, DividendsV2, NitroPoolFactory, XGrailToken subsystem.
1 audits inherited from `fringe-finance`, scoped to that subsystem.

Total inherited audits: 1. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (0 live, 22 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/22
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 1 (0 direct, 1 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 22.7% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CamelotMaster | unknown | metis | n/a | [`0x438718e30b6395c4a0b5622490cc3dc9b1b8ba3d`](./contracts/metis-1088/0x438718e30b6395c4a0b5622490cc3dc9b1b8ba3d/) | ✅ Audited |
| CamelotYakRouter | unknown | metis | n/a | [`0xf9a6d89dccb139e26da4b9df00796c980b5975d2`](./contracts/metis-1088/0xf9a6d89dccb139e26da4b9df00796c980b5975d2/) | ✅ Audited |
| DividendsV2 | unknown | metis | n/a | [`0x20b81a68512d649d48aaae8bdb13b9142707bd7c`](./contracts/metis-1088/0x20b81a68512d649d48aaae8bdb13b9142707bd7c/) | ✅ Audited |
| NitroPoolFactory | unknown | metis | n/a | [`0x929cf42e62fd2142a1b853bc6fd15d4765b78989`](./contracts/metis-1088/0x929cf42e62fd2142a1b853bc6fd15d4765b78989/) | ✅ Audited |
| XGrailToken | unknown | metis | n/a | [`0xce65043bd6df95263f80a3185ff4b99b94347d0c`](./contracts/metis-1088/0xce65043bd6df95263f80a3185ff4b99b94347d0c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraPool | unknown | metis | n/a | [`0x6eeac91f1bd77e1ad9a25c12c6a9577b4c185d94`](./contracts/metis-1088/0x6eeac91f1bd77e1ad9a25c12c6a9577b4c185d94/) | ⚠️ Unaudited |
| AlgebraStaticQuoter | unknown | metis | n/a | [`0xa07430772ec1ec032dc9dcb88fcaac5611df84ab`](./contracts/metis-1088/0xa07430772ec1ec032dc9dcb88fcaac5611df84ab/) | ⚠️ Unaudited |
| CamelotRouter | unknown | metis | n/a | [`0x14679d1da243b8c7d1a4c6d0523a2ce614ef027c`](./contracts/metis-1088/0x14679d1da243b8c7d1a4c6d0523a2ce614ef027c/) | ⚠️ Unaudited |
| ConvertablePUMPKIN | unknown | metis | n/a | [`0x9395dd0b6de5ee28f83b3fdfd03e4db72443c06f`](./contracts/metis-1088/0x9395dd0b6de5ee28f83b3fdfd03e4db72443c06f/) | ⚠️ Unaudited |
| FairAuction | unknown | metis | n/a | [`0x07e94ab61f8b3f59b6695ba66e0a5de367117f56`](./contracts/metis-1088/0x07e94ab61f8b3f59b6695ba66e0a5de367117f56/) | ⚠️ Unaudited |
| GammaUniProxyHelper | unknown | metis | n/a | [`0xd882a7ad21a6432b806622ba5323716fba5241a8`](./contracts/metis-1088/0xd882a7ad21a6432b806622ba5323716fba5241a8/) | ⚠️ Unaudited |
| GrailTokenV2 | unknown | metis | n/a | [`0x7db501b11e07564f24fec6ac4273a0f84f1dadff`](./contracts/metis-1088/0x7db501b11e07564f24fec6ac4273a0f84f1dadff/) | ⚠️ Unaudited |
| Launchpad | unknown | metis | n/a | [`0x320356e697bc36414ebc46e5067b2a07195970db`](./contracts/metis-1088/0x320356e697bc36414ebc46e5067b2a07195970db/) | ⚠️ Unaudited |
| LimitOrder | unknown | metis | n/a | [`0x578bb6acacf821005aca8b0d92c8ee1ada7f22c2`](./contracts/metis-1088/0x578bb6acacf821005aca8b0d92c8ee1ada7f22c2/) | ⚠️ Unaudited |
| Multicall | unknown | metis | n/a | [`0x24318244b4ddc2bf93fd95925060bb92ac2cb45a`](./contracts/metis-1088/0x24318244b4ddc2bf93fd95925060bb92ac2cb45a/) | ⚠️ Unaudited |
| NFTPoolFactory | unknown | metis | n/a | [`0x1e9ed0c5fcd27f38db47cfa35036fa1db409786d`](./contracts/metis-1088/0x1e9ed0c5fcd27f38db47cfa35036fa1db409786d/) | ⚠️ Unaudited |
| NFTRewardClaimer | unknown | metis | n/a | [`0x2c88534bf4a2cbbfa91783510d76195e1e669c3f`](./contracts/metis-1088/0x2c88534bf4a2cbbfa91783510d76195e1e669c3f/) | ⚠️ Unaudited |
| PositionHelper | unknown | metis | n/a | [`0xa76416a93d0d32838857f1ef28bbfcb16c98b92f`](./contracts/metis-1088/0xa76416a93d0d32838857f1ef28bbfcb16c98b92f/) | ⚠️ Unaudited |
| SteerProxyHelper | unknown | metis | n/a | [`0x6d28bb02948e1d1ec579a4f20b9437df6494eb6f`](./contracts/metis-1088/0x6d28bb02948e1d1ec579a4f20b9437df6494eb6f/) | ⚠️ Unaudited |
| Vesting | unknown | metis | n/a | [`0x1e651964df1d932f6b1f96497bc7e27a9c35edf0`](./contracts/metis-1088/0x1e651964df1d932f6b1f96497bc7e27a9c35edf0/) | ⚠️ Unaudited |
| xMetisToken | unknown | metis | n/a | [`0xca042ea7e9aa901c85d5afa5247a79e935db4996`](./contracts/metis-1088/0xca042ea7e9aa901c85d5afa5247a79e935db4996/) | ⚠️ Unaudited |
| YieldBooster | unknown | metis | n/a | [`0xa4defaf0904529a1ffe04cc8a1ef3bc7d7f7b121`](./contracts/metis-1088/0xa4defaf0904529a1ffe04cc8a1ef3bc7d7f7b121/) | ⚠️ Unaudited |

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
| [Fringe Finance.pdf](https://github.com/HashEx/public_audits/blob/master/Fringe%20Finance/Fringe%20Finance.pdf) | unknown | Audit | 2024-02 | stale | Inherited from Fringe Finance — forked code, scoped to CamelotMaster, CamelotYakRouter, DividendsV2, NitroPoolFactory, +1 more | inherited | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0x6eeac91f1bd77e1ad9a25c12c6a9577b4c185d94`](./contracts/metis-1088/0x6eeac91f1bd77e1ad9a25c12c6a9577b4c185d94/) | AlgebraPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xa07430772ec1ec032dc9dcb88fcaac5611df84ab`](./contracts/metis-1088/0xa07430772ec1ec032dc9dcb88fcaac5611df84ab/) | AlgebraStaticQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x14679d1da243b8c7d1a4c6d0523a2ce614ef027c`](./contracts/metis-1088/0x14679d1da243b8c7d1a4c6d0523a2ce614ef027c/) | CamelotRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x9395dd0b6de5ee28f83b3fdfd03e4db72443c06f`](./contracts/metis-1088/0x9395dd0b6de5ee28f83b3fdfd03e4db72443c06f/) | ConvertablePUMPKIN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x07e94ab61f8b3f59b6695ba66e0a5de367117f56`](./contracts/metis-1088/0x07e94ab61f8b3f59b6695ba66e0a5de367117f56/) | FairAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xd882a7ad21a6432b806622ba5323716fba5241a8`](./contracts/metis-1088/0xd882a7ad21a6432b806622ba5323716fba5241a8/) | GammaUniProxyHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x7db501b11e07564f24fec6ac4273a0f84f1dadff`](./contracts/metis-1088/0x7db501b11e07564f24fec6ac4273a0f84f1dadff/) | GrailTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x320356e697bc36414ebc46e5067b2a07195970db`](./contracts/metis-1088/0x320356e697bc36414ebc46e5067b2a07195970db/) | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x578bb6acacf821005aca8b0d92c8ee1ada7f22c2`](./contracts/metis-1088/0x578bb6acacf821005aca8b0d92c8ee1ada7f22c2/) | LimitOrder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1e9ed0c5fcd27f38db47cfa35036fa1db409786d`](./contracts/metis-1088/0x1e9ed0c5fcd27f38db47cfa35036fa1db409786d/) | NFTPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2c88534bf4a2cbbfa91783510d76195e1e669c3f`](./contracts/metis-1088/0x2c88534bf4a2cbbfa91783510d76195e1e669c3f/) | NFTRewardClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xa76416a93d0d32838857f1ef28bbfcb16c98b92f`](./contracts/metis-1088/0xa76416a93d0d32838857f1ef28bbfcb16c98b92f/) | PositionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6d28bb02948e1d1ec579a4f20b9437df6494eb6f`](./contracts/metis-1088/0x6d28bb02948e1d1ec579a4f20b9437df6494eb6f/) | SteerProxyHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1e651964df1d932f6b1f96497bc7e27a9c35edf0`](./contracts/metis-1088/0x1e651964df1d932f6b1f96497bc7e27a9c35edf0/) | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xca042ea7e9aa901c85d5afa5247a79e935db4996`](./contracts/metis-1088/0xca042ea7e9aa901c85d5afa5247a79e935db4996/) | xMetisToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xa4defaf0904529a1ffe04cc8a1ef3bc7d7f7b121`](./contracts/metis-1088/0xa4defaf0904529a1ffe04cc8a1ef3bc7d7f7b121/) | YieldBooster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=5

Fork inheritance lineage and inherited audits are included when available.
