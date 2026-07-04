# Agentic Audit Brief: Drops

## Project Overview

- Project: Drops (`drops`)
- Website: [https://drops.co](https://drops.co)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:41.612Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum
- Contract surface: 55 unique implementations (81 raw deployments)
- DeFi Llama TVL: $2,697,771.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Lending. Structurally: 86 project-authored contract(s) across 1 chain(s); 28 ERC20 tokens, 4 ERC721 NFTs, 1 ERC1155 multi-token, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 34 common project-authored base contract(s) (ctoken, ctokeninterface, ctokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 272; live-surface contracts included: 81 (57 live, 24 unknown).
- Excluded by liveness: 191 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/32 (0.0%)
- Deployed-live implementations: 32 of 55 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 55
- Raw deployments: 81
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

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgedOracle | operational_periphery | ethereum | n/a | [`0xda12a2...7992e1`](./contracts/ethereum-1/0xda12a24515e4ba722103a8ff648ba11faf7992e1/) | ⚠️ Unaudited |
| CErc20Immutable | token | ethereum | n/a | [`0x985297...38dd03`](./contracts/ethereum-1/0x985297275e1c5404b3a557ae2bcb594a2338dd03/) | ⚠️ Unaudited |
| CErc20YearnDelegate | token | ethereum | n/a | [`0x72ab68...d87952`](./contracts/ethereum-1/0x72ab6843d4c988d74dd8d5cdf16ef49301d87952/) | ⚠️ Unaudited |
| CErc20YearnDelegate | token | ethereum | n/a | [`0xf63f89...90e9cb`](./contracts/ethereum-1/0xf63f89f6463550ce4ce5b6ca6b1323b39c90e9cb/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | 8 deployments: ethereum [`0x052319...6eb95b`](./contracts/ethereum-1/0x05231980914b702083b9ac08002325654f6eb95b/); ethereum `0x0a1ef7...d2fd9c`; ethereum `0x4ae741...f0e411`; ethereum `0x588c13...fee086`; ethereum `0x6b2a9d...cb2140`; ethereum `0x777ecc...2619a0`; ethereum `0xa56131...f3141b`; ethereum `0xd72929...ccb339` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2db946...d51981`](./contracts/ethereum-1/0x2db94606a588ce2486600fa9fc287ec472d51981/); ethereum `0x51eb9f...1b268e`; ethereum `0x65a32c...02456b`; ethereum `0xb81167...011d63`; ethereum `0xcf8102...3ae1a6` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 3 deployments: ethereum [`0x48e29b...d14abb`](./contracts/ethereum-1/0x48e29b9ddbf3fe6380d7d1ec5b415e97afd14abb/); ethereum `0x874ff8...bfbe3d`; ethereum `0xc01c28...985113` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7674cc...915a00`](./contracts/ethereum-1/0x7674ccf96303c52dc4a9267be132e092b5915a00/); ethereum `0xd9c86d...20902e` | ⚠️ Unaudited |
| ComptrollerG1 | unknown | ethereum | n/a | [`0x69cb56...b6bcdc`](./contracts/ethereum-1/0x69cb567ace32c016ca6a389fef8fcee55ab6bcdc/) | ⚠️ Unaudited |
| ComptrollerG1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79b56c...f96206`](./contracts/ethereum-1/0x79b56cb219901dbf42bb5951a0edf27465f96206/); ethereum `0xcec075...07596c` | ⚠️ Unaudited |
| ComptrollerG2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3903e6...1f81c6`](./contracts/ethereum-1/0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6/); ethereum `0x7312a3...fcde7f`; ethereum `0xbe1417...ea949d` | ⚠️ Unaudited |
| ComptrollerG3 | unknown | ethereum | n/a | [`0x1e50db...9aff6e`](./contracts/ethereum-1/0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e/) | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | ethereum | n/a | 2 deployments: ethereum [`0x502806...811b40`](./contracts/ethereum-1/0x50280672f1734893895f1aeb7d7db7bc1b811b40/); ethereum `0xe99ef1...8eb43a` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb70fb6...6ee2f5`](./contracts/ethereum-1/0xb70fb69a522ed8d4613c4c720f91f93a836ee2f5/); ethereum `0xbe3609...d91f23` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35ae17...95f4a8`](./contracts/ethereum-1/0x35ae171dda486a77693f8b7c7898867c2f95f4a8/); ethereum `0x5ce326...4e1da8` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x32e417...3e89c9`](./contracts/ethereum-1/0x32e41714dcce1c4be08cc1e896bbca56f93e89c9/); ethereum `0xc5ecef...a19f65` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42b747...ee0f3d`](./contracts/ethereum-1/0x42b747330b97b042b85ba5fbf3348e7966ee0f3d/); ethereum `0xb6cdf3...da57f1` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | ethereum | n/a | [`0x3ae03e...8c8df5`](./contracts/ethereum-1/0x3ae03ee1abef401d74ae297fd883e0a06d8c8df5/) | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x896b80...361e8b`](./contracts/ethereum-1/0x896b8019f5ea3caaab23cda0a09b405ed8361e8b/); ethereum `0x9ed0dc...d3b5d2` | ⚠️ Unaudited |
| ComptrollerG3Migration | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00635e...242571`](./contracts/ethereum-1/0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571/); ethereum `0x9deb56...5f8bc7` | ⚠️ Unaudited |
| ComptrollerG3Paused | unknown | ethereum | n/a | [`0xb78bb3...6b98e4`](./contracts/ethereum-1/0xb78bb3068d16803c3d643d166b69f084f46b98e4/) | ⚠️ Unaudited |
| Dop | unknown | ethereum | n/a | [`0x6bb612...1da2ef`](./contracts/ethereum-1/0x6bb61215298f296c55b19ad842d3df69021da2ef/) | ⚠️ Unaudited |
| ERC20CustomStaking | token | ethereum | n/a | [`0xc4b734...5d0262`](./contracts/ethereum-1/0xc4b73419265b9dfce7abdd0d8e33f99e565d0262/) | ⚠️ Unaudited |
| LPStaking | unknown | ethereum | n/a | [`0x2c9274...2b22eb`](./contracts/ethereum-1/0x2c92744a0428e405e95dc3eb812e1b87872b22eb/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0x8a7801...554df9`](./contracts/ethereum-1/0x8a78011bf2c42df82cc05f198109ea024b554df9/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12846d...6a8eb5`](./contracts/ethereum-1/0x12846dd1a5c2ea001044429ab91a4037b16a8eb5/); ethereum `0x408abe...4b78a0` | ⚠️ Unaudited |
| NFTStaking | token | ethereum | n/a | [`0x81b6a8...3e01e5`](./contracts/ethereum-1/0x81b6a8bf87817adca4874838560966957c3e01e5/) | ⚠️ Unaudited |
| NodeRunnersNFT | token | ethereum | n/a | [`0x89ee76...71c26a`](./contracts/ethereum-1/0x89ee76cc25fcbf1714ed575faa6a10202b71c26a/) | ⚠️ Unaudited |
| NodeRunnersToken | token | ethereum | n/a | [`0x739763...55be53`](./contracts/ethereum-1/0x739763a258640919981f9ba610ae65492455be53/) | ⚠️ Unaudited |
| Snapshot | unknown | ethereum | n/a | [`0xe701bb...d46af8`](./contracts/ethereum-1/0xe701bb0290b26609e947d0e65591af0ac6d46af8/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x00aa1c...7ea1d1`](./contracts/ethereum-1/0x00aa1c57e894c4010fe44cb840ae56432d7ea1d1/) | ⚠️ Unaudited |
| Unitroller | unknown | ethereum | n/a | [`0x34abc8...e9b16e`](./contracts/ethereum-1/0x34abc88ac9a137531c7a3c91dff9e2dfb8e9b16e/) | ⚠️ Unaudited |
| Unitroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd9193a...f48e4e`](./contracts/ethereum-1/0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e/); ethereum `0xe35058...a84892` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x089740...2c51d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09b3c0...8f1ed8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bfbfb...391355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7711...26aa85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x415a7a...eb4d3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52719d...e63635` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5551c7...1d74fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x769461...91b40d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ec686...16b813` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ff498...53b47d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa42035...7d7590` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9cb5f...a2926d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab6061...af87d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb48be1...2b31f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc183b...fde059` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca59b7...760481` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4d2fb...ab7b9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9d545...c408be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde26e8...734713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb8470...952ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef6e9d...134491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5a514...b884fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-DropsNFT-v1.0.pdf](https://18550138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-McKlQwRyMZvSyjwnggp%2Fuploads%2FugSmroZsQBlElM4GiqQ3%2FPeckShield-Audit-Report-DropsNFT-v1.0.pdf) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19719] PeckShield-Audit-Report-DropsNFT-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
