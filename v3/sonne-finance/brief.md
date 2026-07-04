# Agentic Audit Brief: sonne-finance

## Project Overview

- Project: sonne-finance (`sonne-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:55.784Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, optimism
- Contract surface: 30 unique implementations (30 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 29 project-authored contract(s) across 2 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (ctokeninterface, ctokenstorage, exponentialnoerror). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/30 (0.0%)
- Deployed-live implementations: 30 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 30
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

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardManager | unknown | base | n/a | [`0x07726a...150f0d`](./contracts/base-8453/0x07726ad34cb0f826c2a72938ae5ba8251c150f0d/) | ⚠️ Unaudited |
| BasicLens | unknown | optimism | n/a | [`0x168901...6fd311`](./contracts/optimism-10/0x168901193a72e82c00110c799c9c22f3ae6fd311/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | base | n/a | [`0x22a248...d8cf7c`](./contracts/base-8453/0x22a2488fe295047ba13bd8cccdbc8361dbd8cf7c/) | ⚠️ Unaudited |
| CErc20Immutable | unknown | optimism | n/a | [`0x066c98...d2848d`](./contracts/optimism-10/0x066c98e48238e8d77006a5fa14ec3b080fd2848d/) | ⚠️ Unaudited |
| CErc20Upgradable | unknown | base | n/a | [`0x00e29c...dcd85a`](./contracts/base-8453/0x00e29cf7d7aa0dd9d1fcacd5189d3ab9ecdcd85a/) | ⚠️ Unaudited |
| ChainlinkPriceOracle | unknown | optimism | n/a | [`0xefc049...11a502`](./contracts/optimism-10/0xefc0495da3e48c5a55f73706b249fd49d711a502/) | ⚠️ Unaudited |
| Comptroller | unknown | base | n/a | [`0x02a4c0...9ca4c6`](./contracts/base-8453/0x02a4c0512022ab3bbd329e645584dbb6719ca4c6/) | ⚠️ Unaudited |
| ExternalRewardDistributor | unknown | optimism | n/a | [`0x2b1d11...ae2597`](./contracts/optimism-10/0x2b1d11f82fc70e2693ab19c4c3da23da75ae2597/) | ⚠️ Unaudited |
| Fundraising | unknown | optimism | n/a | [`0x5b8978...f81e5f`](./contracts/optimism-10/0x5b89789fb230d17c4b0ae1461f26828554f81e5f/) | ⚠️ Unaudited |
| Gauge | unknown | base | n/a | [`0xcbfeae...71a808`](./contracts/base-8453/0xcbfeaed3dd9310406c046fb496c7e77f7571a808/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | optimism | n/a | [`0x784b82...1deaf2`](./contracts/optimism-10/0x784b82a27029c9e114b521abcc39d02b3d1deaf2/) | ⚠️ Unaudited |
| JumpRateModelV4 | unknown | base | n/a | [`0x17063a...a00ed7`](./contracts/base-8453/0x17063ad4e83b0aba4ca0f3fc3a9794e807a00ed7/) | ⚠️ Unaudited |
| LiquidityGenerator | unknown | optimism | n/a | [`0x17063a...a00ed7`](./contracts/optimism-10/0x17063ad4e83b0aba4ca0f3fc3a9794e807a00ed7/) | ⚠️ Unaudited |
| MerkleAirdrop | unknown | optimism | n/a | [`0x6b38c5...a71df9`](./contracts/optimism-10/0x6b38c561366a939ea8711a7311c8e5aab0a71df9/) | ⚠️ Unaudited |
| OwnedDistributor | unknown | optimism | n/a | [`0x2ba860...99ffc5`](./contracts/optimism-10/0x2ba86032e601e001aeb0069efff824bcf699ffc5/) | ⚠️ Unaudited |
| Pair | unknown | optimism | n/a | [`0xc899c4...7d57a2`](./contracts/optimism-10/0xc899c4d73ed8df2ead1543ab915888b0bf7d57a2/) | ⚠️ Unaudited |
| Pool | unknown | base | n/a | [`0x4cc2fe...95e264`](./contracts/base-8453/0x4cc2fefb2635c86b1bae1b58e0f60fb43e95e264/) | ⚠️ Unaudited |
| PriceOracleV2 | unknown | optimism | n/a | [`0x22c7e5...1c0fea`](./contracts/optimism-10/0x22c7e5ce392bc951f63b68a8020b121a8e1c0fea/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x036d9c...b13d34`](./contracts/base-8453/0x036d9cb816f382d947dfbc26a13d2ac8cdb13d34/) | ⚠️ Unaudited |
| ReserveManager | unknown | optimism | n/a | [`0xb112e4...bfb110`](./contracts/optimism-10/0xb112e4cc83f0df154fe3fb088109be2ac5bfb110/) | ⚠️ Unaudited |
| RewardManager | unknown | optimism | n/a | [`0x5da3ea...c3f5c2`](./contracts/optimism-10/0x5da3ea9167e159de0d3003c21c86db1334c3f5c2/) | ⚠️ Unaudited |
| Sonne | unknown | optimism | n/a | [`0x1db246...2245f0`](./contracts/optimism-10/0x1db2466d9f5e10d7090e7152b68d62703a2245f0/) | ⚠️ Unaudited |
| SonneMerkleDistributor | unknown | base | n/a | [`0x02a46f...1a2469`](./contracts/base-8453/0x02a46ffcfcf6fbd93dc38da30ff09c3e151a2469/) | ⚠️ Unaudited |
| SonneTimelockController | unknown | optimism | n/a | [`0x5b22bd...e163b0`](./contracts/optimism-10/0x5b22bd2fc485afe2deaf1ac9e2fad316dde163b0/) | ⚠️ Unaudited |
| StakedDistributor | unknown | optimism | n/a | [`0x41279e...171166`](./contracts/optimism-10/0x41279e29586eb20f9a4f65e031af09fced171166/) | ⚠️ Unaudited |
| TimelockController | unknown | optimism | n/a | [`0x37ff10...0d60b6`](./contracts/optimism-10/0x37ff10390f22fabdc2137e428a6e6965960d60b6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x305426...83d395`](./contracts/base-8453/0x305426680d6e4b062825a1b07bf9b2ed5583d395/) | ⚠️ Unaudited |
| Unitroller | unknown | optimism | n/a | [`0x7d6969...8d6778`](./contracts/optimism-10/0x7d69692389cda1ed99fd04d3081d7ac9368d6778/) | ⚠️ Unaudited |
| VesterCliff | unknown | optimism | n/a | [`0xb4bf17...517971`](./contracts/optimism-10/0xb4bf17210844418f9f2d3b90036e11aa40517971/) | ⚠️ Unaudited |
| VesterSale | unknown | optimism | n/a | [`0x8e1036...37ad10`](./contracts/optimism-10/0x8e10362334a4549640481d330a0020238b37ad10/) | ⚠️ Unaudited |

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
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
