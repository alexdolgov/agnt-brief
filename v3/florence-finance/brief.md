# Agentic Audit Brief: florence-finance

## Project Overview

- Project: florence-finance (`florence-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:52.322Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum, ethereum
- Contract surface: 24 unique implementations (24 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 20 project-authored contract(s) across 2 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (arbitrumgateway, tokengateway, abstracttoken). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 24; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/24 (0.0%)
- Deployed-live implementations: 24 of 24 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 24
- Raw deployments: 24
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EURSToken | unknown | ethereum | n/a | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| FFML2 | unknown | arbitrum | n/a | [`0x10e938...6fc03e`](./contracts/arbitrum-42161/0x10e938b39b24aaf6e8d3c9987ba32244186fc03e/) | ⚠️ Unaudited |
| FlorenceFinanceMediciToken | unknown | ethereum | n/a | [`0x0c3fec...7c2a14`](./contracts/ethereum-1/0x0c3fec55589904256f65e584fd57cd2dba7c2a14/) | ⚠️ Unaudited |
| FlorenceFinanceMediciTokenArbitrum | unknown | arbitrum | n/a | [`0x3269a3...b0d848`](./contracts/arbitrum-42161/0x3269a3c00ab86c753856fd135d97b87facb0d848/) | ⚠️ Unaudited |
| FlorinStaking | unknown | arbitrum | n/a | [`0x026ca4...30365a`](./contracts/arbitrum-42161/0x026ca46939373a3eab19ea3d3da0ac54af30365a/) | ⚠️ Unaudited |
| FlorinToken | unknown | arbitrum | n/a | [`0x1626bc...f64a42`](./contracts/arbitrum-42161/0x1626bce314591fb105a82b44e0953ec182f64a42/) | ⚠️ Unaudited |
| FlorinTokenArbitrum | unknown | arbitrum | n/a | [`0x25f1f0...6db2d9`](./contracts/arbitrum-42161/0x25f1f0435311e4033912b18607ab19ca4c6db2d9/) | ⚠️ Unaudited |
| FlorinTreasury | unknown | arbitrum | n/a | [`0x547e9a...c69b26`](./contracts/arbitrum-42161/0x547e9aa53d5d2d5181e42896c696e02558c69b26/) | ⚠️ Unaudited |
| Funding | unknown | ethereum | n/a | [`0x220ffa...0c565c`](./contracts/ethereum-1/0x220ffa53dcf7fb93770f164c6b156aea2d0c565c/) | ⚠️ Unaudited |
| GHIToken | unknown | ethereum | n/a | [`0x4be1f1...2faf4a`](./contracts/ethereum-1/0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a/) | ⚠️ Unaudited |
| L1CustomGateway | unknown | ethereum | n/a | [`0x20c9d2...5354c0`](./contracts/ethereum-1/0x20c9d24edcf5cc943be6ec55cbe786abf05354c0/) | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | ethereum | n/a | [`0x553524...93a5db`](./contracts/ethereum-1/0x553524e576a0e92bec7cc24843c04bf51493a5db/) | ⚠️ Unaudited |
| L1GatewayRouter | unknown | ethereum | n/a | [`0x72ce9c...7031ef`](./contracts/ethereum-1/0x72ce9c846789fdb6fc1f34ac4ad25dd9ef7031ef/) | ⚠️ Unaudited |
| LendingPool | unknown | ethereum | n/a | [`0x0e2388...c1babc`](./contracts/ethereum-1/0x0e23889cfe7d54f15efcb5a465fb46191ec1babc/) | ⚠️ Unaudited |
| LinearStaking | unknown | ethereum | n/a | [`0x8e8d5b...bf797d`](./contracts/ethereum-1/0x8e8d5b1888d55d12522677b298dd89f2b6bf797d/) | ⚠️ Unaudited |
| LoanVault | unknown | ethereum | n/a | [`0x084b9e...6cf6cf`](./contracts/ethereum-1/0x084b9e9bcb64533b59a2c72a4d42f2408f6cf6cf/) | ⚠️ Unaudited |
| LoanVaultRegistry | unknown | arbitrum | n/a | [`0x19a210...227ce3`](./contracts/arbitrum-42161/0x19a2106475b29f0ff5053ae026190ce7a9227ce3/) | ⚠️ Unaudited |
| MediciToken | unknown | ethereum | n/a | [`0x96f509...56eafc`](./contracts/ethereum-1/0x96f5094998a20008839487369012bb4d3c56eafc/) | ⚠️ Unaudited |
| PeriodStaking | unknown | ethereum | n/a | [`0x6935fd...41c9f8`](./contracts/ethereum-1/0x6935fd0ea533f0bd00313e21ba6cc00a3941c9f8/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x155705...64f5a6`](./contracts/arbitrum-42161/0x15570528d8ffc6b220014fd502137093cc64f5a6/) | ⚠️ Unaudited |
| TokenDistributor | unknown | arbitrum | n/a | [`0xb6e19a...04a9f9`](./contracts/arbitrum-42161/0xb6e19aabf457740e0077eb112805b3abab04a9f9/) | ⚠️ Unaudited |
| TokenVestingWallet | unknown | ethereum | n/a | [`0x024540...c8e777`](./contracts/ethereum-1/0x024540c8f5a194aa92b00ae238b95b673cc8e777/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0x5411fa...dfec09`](./contracts/arbitrum-42161/0x5411fac563f98ab60c7720c70778209cebdfec09/) | ⚠️ Unaudited |
| WhitelistManager | unknown | ethereum | n/a | [`0x9f2bad...85b4a3`](./contracts/ethereum-1/0x9f2bad43e738e90df6df80cc417d00e47d85b4a3/) | ⚠️ Unaudited |

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
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/pashov/audits/b60fc16f80b1291d36bd09a443e90f39bcb5d660/solo/pdf/FlorenceFinance-second-security-review.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [Audits](): Florence previous audits](https://docs.florence.finance/docs/support/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20304] Rendered PDF capture
- [20306] - [Audits](): Florence previous audits

Fork inheritance lineage and inherited audits are included when available.
