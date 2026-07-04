# Agentic Audit Brief: zkBob_

## Project Overview

- Project: zkBob_ (`zkbob_`)
- Website: [https://www.zkbob.com/](https://www.zkbob.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:18.094Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: optimism, polygon
- Contract surface: 39 unique implementations (39 raw deployments)
- DeFi Llama TVL: $206,978.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 36 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (eip1967admin, proxy, ozownable.ownable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (39 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/39 (0.0%)
- Deployed-live implementations: 39 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountingMigrator | unknown | optimism | n/a | [`0xbff002...a95f7b`](./contracts/optimism-10/0xbff0020638011357315302727ed55c5193a95f7b/) | ⚠️ Unaudited |
| AllowListOperatorManager | unknown | optimism | n/a | [`0x6cbe37...3aaccb`](./contracts/optimism-10/0x6cbe376af580bc2c718f710d0e3ab98feb3aaccb/) | ⚠️ Unaudited |
| Base58 | unknown | optimism | n/a | [`0x056295...551ad1`](./contracts/optimism-10/0x056295b97c743b3553e00a54a574da24a9551ad1/) | ⚠️ Unaudited |
| BobToken | unknown | optimism | n/a | [`0x82907e...ba2d0d`](./contracts/optimism-10/0x82907eaeb25d248dc82033e45b00a3e012ba2d0d/) | ⚠️ Unaudited |
| BobVault | unknown | optimism | n/a | [`0x72e6b5...4d62fb`](./contracts/optimism-10/0x72e6b59d4a90ab232e55d4bb7ed2dd17494d62fb/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x6ebeac...a93aab`](./contracts/polygon-137/0x6ebeac13f6403d19c95b6b75008b12fd21a93aab/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| DelegatedDepositVerifier | unknown | optimism | n/a | [`0x85afa0...7ea38f`](./contracts/optimism-10/0x85afa00f38ad5f353c2b80985407b8e8a27ea38f/) | ⚠️ Unaudited |
| EIP1967Proxy | unknown | optimism | n/a | [`0x1f9843...fa039b`](./contracts/optimism-10/0x1f9843c88efc073cb0e33b9e138cff5b9efa039b/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | optimism | n/a | [`0x0b2c63...97ff85`](./contracts/optimism-10/0x0b2c639c533813f4aa9d7837caf62653d097ff85/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | optimism | n/a | [`0xbd17de...0d6fa7`](./contracts/optimism-10/0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| MasterMinter | unknown | optimism | n/a | [`0x70429f...6c325b`](./contracts/optimism-10/0x70429f78c2d7d1de6f89be421bce64ba876c325b/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| MutableOperatorManager | unknown | optimism | n/a | [`0x4b8c0b...c75a2e`](./contracts/optimism-10/0x4b8c0b14aa7cb5a7cff3546415bbdcacd7c75a2e/) | ⚠️ Unaudited |
| OPSupplyReductionHelper | unknown | optimism | n/a | [`0x3c28fb...03f21c`](./contracts/optimism-10/0x3c28fb3aa25239e6a35a6a36757d38fe9303f21c/) | ⚠️ Unaudited |
| SimpleKYCProviderManager | unknown | optimism | n/a | [`0xb6cdf6...caed78`](./contracts/optimism-10/0xb6cdf60c4097b8ef9f90bf70d2a2abd8b8caed78/) | ⚠️ Unaudited |
| TimelockController | unknown | polygon | n/a | [`0x9ec9d8...f8982a`](./contracts/polygon-137/0x9ec9d8b2ff9b9f93d7ed3362d714d751b4f8982a/) | ⚠️ Unaudited |
| TransferVerifier | unknown | optimism | n/a | [`0x7ad8d9...b8195d`](./contracts/optimism-10/0x7ad8d97c60bfb59e501e3b6c1d8e564b0bb8195d/) | ⚠️ Unaudited |
| TreeUpdateVerifier | unknown | optimism | n/a | [`0x2c34af...e1e81d`](./contracts/optimism-10/0x2c34afcb1c51796c3c0c7710c72a56eb72e1e81d/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x02daef...057966`](./contracts/polygon-137/0x02daefc2e8aad089d094579499508398e3057966/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| WETH9 | unknown | optimism | n/a | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| ZkAddress | unknown | optimism | n/a | [`0x0a165e...ec5283`](./contracts/optimism-10/0x0a165e27ebbd4da0c0c0eb851ac9cc78e0ec5283/) | ⚠️ Unaudited |
| ZkBobAccounting | unknown | optimism | n/a | [`0xbf3d58...2c9c1b`](./contracts/optimism-10/0xbf3d58f026642951990c0421964179c83e2c9c1b/) | ⚠️ Unaudited |
| ZkBobDirectDepositQueue | unknown | optimism | n/a | [`0x15b8c7...2c0014`](./contracts/optimism-10/0x15b8c75c024acba8c114c21f42eb515a762c0014/) | ⚠️ Unaudited |
| ZkBobDirectDepositQueueETH | unknown | optimism | n/a | [`0x318e2c...5fc869`](./contracts/optimism-10/0x318e2c1f5f6ac4fdd5979e73d498342b255fc869/) | ⚠️ Unaudited |
| ZkBobPay | unknown | optimism | n/a | [`0x222994...167181`](./contracts/optimism-10/0x22299414e9e0e7663f8977a7ea6c1908f2167181/) | ⚠️ Unaudited |
| ZkBobPool | unknown | optimism | n/a | [`0x00707b...09912b`](./contracts/optimism-10/0x00707bbab9dbb07b77df63dfabbafa192c09912b/) | ⚠️ Unaudited |
| ZkBobPoolETH | unknown | optimism | n/a | [`0x58320a...2c5992`](./contracts/optimism-10/0x58320a55bbc5f89e5d0c92108f762ac0172c5992/) | ⚠️ Unaudited |
| ZkBobPoolUSDC | unknown | optimism | n/a | [`0x1ca8c2...14c97c`](./contracts/optimism-10/0x1ca8c2b9b20e18e86d5b9a72370fc6c91814c97c/) | ⚠️ Unaudited |
| ZkBobPoolUSDCMigrated | unknown | polygon | n/a | [`0x72e6b5...4d62fb`](./contracts/polygon-137/0x72e6b59d4a90ab232e55d4bb7ed2dd17494d62fb/) | ⚠️ Unaudited |

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
| [BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf](https://github.com/zkBob/zkbob-contracts/blob/master/audit/chainsecurity/BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf](https://github.com/zkBob/zkbob-contracts/blob/master/audit/decurity/BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf) | Decurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [ChainSecurity_BOB_Protocol_zkBob_audit.pdf](https://old.chainsecurity.com/wp-content/uploads/2023/01/ChainSecurity_BOB_Protocol_zkBob_audit.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21485] BOB_Protocol-contracts-1.0.0-rc2-security-audit-report.pdf
- [21486] BOB_Protocol-contracts-1.1.0-rc2-security-audit-report.pdf
- [21487] ChainSecurity_BOB_Protocol_zkBob_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
