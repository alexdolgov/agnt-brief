# Agentic Audit Brief: bunicorn

## Project Overview

- Project: bunicorn (`bunicorn`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:09.967Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 40 unique implementations (40 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 37 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 7 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (proxy, erc1967upgrade, dsauth). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 40; live-surface contracts included: 40 (40 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/32 (0.0%)
- Deployed-live implementations: 40 of 40 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 40
- Raw deployments: 40
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

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Authorization | unknown | bsc | n/a | [`0x31bc15...7a3533`](./contracts/bsc-56/0x31bc150c63c67871c493c180a3a84f51787a3533/) | ⚠️ Unaudited |
| BActions | unknown | bsc | n/a | [`0x58c381...dab1d9`](./contracts/bsc-56/0x58c38179feee25fb0206983604ab5cd2a6dab1d9/) | ⚠️ Unaudited |
| BFactory | unknown | bsc | n/a | [`0x48ab31...51fe35`](./contracts/bsc-56/0x48ab312150e1802d57639859d7c3107ae751fe35/) | ⚠️ Unaudited |
| BRegistry | unknown | bsc | n/a | [`0x04a174...4438bc`](./contracts/bsc-56/0x04a174123de094a18a6ecd592c36e8385c4438bc/) | ⚠️ Unaudited |
| BuniBountyToken | unknown | bsc | n/a | [`0x48ef8c...af66c7`](./contracts/bsc-56/0x48ef8c368873eae71273e06930e03f0cbfaf66c7/) | ⚠️ Unaudited |
| BuniCornFactory | unknown | bsc | n/a | [`0x86873f...db8d68`](./contracts/bsc-56/0x86873f85bc12ce40321340392c0ff39c3bdb8d68/) | ⚠️ Unaudited |
| BunicornRoller | unknown | bsc | n/a | [`0xb2617f...92a138`](./contracts/bsc-56/0xb2617f55912ac27ff3709cc740df614d6492a138/) | ⚠️ Unaudited |
| BuniCornRouter02 | unknown | bsc | n/a | [`0x689e37...0fa0e4`](./contracts/bsc-56/0x689e37afb4236a5cf808ca05a8d1c564200fa0e4/) | ⚠️ Unaudited |
| Bunicorns | unknown | bsc | n/a | [`0x02f0db...2165eb`](./contracts/bsc-56/0x02f0db7b103a7bffc40f0bc08e4a78c4372165eb/) | ⚠️ Unaudited |
| BunicornsV2 | unknown | bsc | n/a | [`0x1ba56f...5680c9`](./contracts/bsc-56/0x1ba56feeb2d84e8b2cd0479459fc3d74645680c9/) | ⚠️ Unaudited |
| BuniPoolFactory | unknown | bsc | n/a | [`0xde14bc...4fe6d9`](./contracts/bsc-56/0xde14bc828ff33e476345fa4757e63d8c504fe6d9/) | ⚠️ Unaudited |
| BuniSafeMath | unknown | bsc | n/a | [`0x79149d...46ce67`](./contracts/bsc-56/0x79149d44cf33a04550b68fd7bdeebb660e46ce67/) | ⚠️ Unaudited |
| BuniToken | unknown | bsc | n/a | [`0x0e7bee...94ed49`](./contracts/bsc-56/0x0e7beec376099429b85639eb3abe7cf22694ed49/) | ⚠️ Unaudited |
| BurToken | unknown | bsc | n/a | [`0xc1619d...84bd56`](./contracts/bsc-56/0xc1619d98847cf93d857dfed4e4d70cf4f984bd56/) | ⚠️ Unaudited |
| CRPFactory | unknown | bsc | n/a | [`0xefb9ce...d8a928`](./contracts/bsc-56/0xefb9cec617317d9814a226d1321b76b6ced8a928/) | ⚠️ Unaudited |
| DSProxyFactory | unknown | bsc | n/a | [`0x1d300b...acb06a`](./contracts/bsc-56/0x1d300b0eadcd2c4e7d9e78c2b67a84860eacb06a/) | ⚠️ Unaudited |
| ElpisWhitelistIGO | unknown | bsc | n/a | [`0xe8c061...c5eb4f`](./contracts/bsc-56/0xe8c061ed23ed7e83495027956acf1dcba8c5eb4f/) | ⚠️ Unaudited |
| ExchangeProxy | unknown | bsc | n/a | [`0xcbc167...438d0b`](./contracts/bsc-56/0xcbc167c444d01bc00da1bf0abd7f8c3c1f438d0b/) | ⚠️ Unaudited |
| Governance | unknown | bsc | n/a | [`0xdaf169...d3343a`](./contracts/bsc-56/0xdaf16974d89a06ef9c82bf6d05f11a532ed3343a/) | ⚠️ Unaudited |
| KRegistry | unknown | bsc | n/a | [`0x3190b9...8269bf`](./contracts/bsc-56/0x3190b9ef2817da924c8c12567edbfb8ba08269bf/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x317622...656bf3`](./contracts/bsc-56/0x3176221b9b2b10cb06c5a822ac02bc3270656bf3/) | ⚠️ Unaudited |
| Multicall | unknown | bsc | n/a | [`0x9a7be3...6aaa18`](./contracts/bsc-56/0x9a7be3db9d75b1dd74eb0bb2e6825c659c6aaa18/) | ⚠️ Unaudited |
| MysteryBox | unknown | bsc | n/a | [`0xeb1dad...89df38`](./contracts/bsc-56/0xeb1dad5faa694c693966d8f228f9f02efe89df38/) | ⚠️ Unaudited |
| NFTMarketV2 | unknown | bsc | n/a | [`0xcaa4c8...9ca1b9`](./contracts/bsc-56/0xcaa4c8a8b4c424b30b81fd498c421b15289ca1b9/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x10b9e2...8cbb6d`](./contracts/bsc-56/0x10b9e2b9122c47d3562453630b1e5d902d8cbb6d/) | ⚠️ Unaudited |
| ProxyRegistry | unknown | bsc | n/a | [`0x427875...b00433`](./contracts/bsc-56/0x427875ee2dbcde033fd7ce34563e07c740b00433/) | ⚠️ Unaudited |
| RightsManager | unknown | bsc | n/a | [`0x77a7c0...a3eeff`](./contracts/bsc-56/0x77a7c0c174cae97e49c5f224746a2e04dca3eeff/) | ⚠️ Unaudited |
| SmartPoolManager | unknown | bsc | n/a | [`0x9c0a6f...a7ec17`](./contracts/bsc-56/0x9c0a6fd84fa4c2d0496e96ca2f22c381e7a7ec17/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | bsc | n/a | [`0x92e2a3...427594`](./contracts/bsc-56/0x92e2a3764d23de5babc3b5ce939daede3f427594/) | ⚠️ Unaudited |
| SyrupStakingPool | unknown | bsc | n/a | [`0x020ce3...b76d49`](./contracts/bsc-56/0x020ce34c5dd21867be6820d8e08183487cb76d49/) | ⚠️ Unaudited |
| TokenLocker | unknown | bsc | n/a | [`0x48fae2...affd48`](./contracts/bsc-56/0x48fae2c4e1f983183cd89bbd9de883b0acaffd48/) | ⚠️ Unaudited |
| Trainers | unknown | bsc | n/a | [`0x01c592...efef61`](./contracts/bsc-56/0x01c59294c7c7ce6aaeda0e0a812f6350f0efef61/) | ⚠️ Unaudited |
| TrainersV2 | unknown | bsc | n/a | [`0x1ca844...efd9dc`](./contracts/bsc-56/0x1ca844068c9186489220b832d6d23df0e8efd9dc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0c760b...29a2a0`](./contracts/bsc-56/0x0c760b436f55ab432345b29ae58e9cf23c29a2a0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x13cff4...e78b67`](./contracts/bsc-56/0x13cff42b153ef7d43d313f2e15658ae464e78b67/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1fa2ec...7a93f9`](./contracts/bsc-56/0x1fa2ec1fbd6a2f3efd6d4ee3972f1fef917a93f9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2af5cc...b63322`](./contracts/bsc-56/0x2af5cce4292f6f2d60bc3720e684fc747cb63322/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2b982f...a9c7bb`](./contracts/bsc-56/0x2b982fb9dccfca940fa8c7e93d8d2742f3a9c7bb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xc375db...6b4df1`](./contracts/bsc-56/0xc375db34a02263ab41b3db7a1862895a006b4df1/) | ⚠️ Unaudited |
| VBuniToken | unknown | bsc | n/a | [`0x79ba45...940e0d`](./contracts/bsc-56/0x79ba45d4fbcde838db2705efad368e3fbe940e0d/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x31bc15...7a3533`](./contracts/bsc-56/0x31bc150c63c67871c493c180a3a84f51787a3533/) | Authorization | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x58c381...dab1d9`](./contracts/bsc-56/0x58c38179feee25fb0206983604ab5cd2a6dab1d9/) | BActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48ab31...51fe35`](./contracts/bsc-56/0x48ab312150e1802d57639859d7c3107ae751fe35/) | BFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04a174...4438bc`](./contracts/bsc-56/0x04a174123de094a18a6ecd592c36e8385c4438bc/) | BRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48ef8c...af66c7`](./contracts/bsc-56/0x48ef8c368873eae71273e06930e03f0cbfaf66c7/) | BuniBountyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86873f...db8d68`](./contracts/bsc-56/0x86873f85bc12ce40321340392c0ff39c3bdb8d68/) | BuniCornFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb2617f...92a138`](./contracts/bsc-56/0xb2617f55912ac27ff3709cc740df614d6492a138/) | BunicornRoller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x689e37...0fa0e4`](./contracts/bsc-56/0x689e37afb4236a5cf808ca05a8d1c564200fa0e4/) | BuniCornRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02f0db...2165eb`](./contracts/bsc-56/0x02f0db7b103a7bffc40f0bc08e4a78c4372165eb/) | Bunicorns | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ba56f...5680c9`](./contracts/bsc-56/0x1ba56feeb2d84e8b2cd0479459fc3d74645680c9/) | BunicornsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xde14bc...4fe6d9`](./contracts/bsc-56/0xde14bc828ff33e476345fa4757e63d8c504fe6d9/) | BuniPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x79149d...46ce67`](./contracts/bsc-56/0x79149d44cf33a04550b68fd7bdeebb660e46ce67/) | BuniSafeMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e7bee...94ed49`](./contracts/bsc-56/0x0e7beec376099429b85639eb3abe7cf22694ed49/) | BuniToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc1619d...84bd56`](./contracts/bsc-56/0xc1619d98847cf93d857dfed4e4d70cf4f984bd56/) | BurToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xefb9ce...d8a928`](./contracts/bsc-56/0xefb9cec617317d9814a226d1321b76b6ced8a928/) | CRPFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d300b...acb06a`](./contracts/bsc-56/0x1d300b0eadcd2c4e7d9e78c2b67a84860eacb06a/) | DSProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe8c061...c5eb4f`](./contracts/bsc-56/0xe8c061ed23ed7e83495027956acf1dcba8c5eb4f/) | ElpisWhitelistIGO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcbc167...438d0b`](./contracts/bsc-56/0xcbc167c444d01bc00da1bf0abd7f8c3c1f438d0b/) | ExchangeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdaf169...d3343a`](./contracts/bsc-56/0xdaf16974d89a06ef9c82bf6d05f11a532ed3343a/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3190b9...8269bf`](./contracts/bsc-56/0x3190b9ef2817da924c8c12567edbfb8ba08269bf/) | KRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x317622...656bf3`](./contracts/bsc-56/0x3176221b9b2b10cb06c5a822ac02bc3270656bf3/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xeb1dad...89df38`](./contracts/bsc-56/0xeb1dad5faa694c693966d8f228f9f02efe89df38/) | MysteryBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcaa4c8...9ca1b9`](./contracts/bsc-56/0xcaa4c8a8b4c424b30b81fd498c421b15289ca1b9/) | NFTMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x427875...b00433`](./contracts/bsc-56/0x427875ee2dbcde033fd7ce34563e07c740b00433/) | ProxyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x77a7c0...a3eeff`](./contracts/bsc-56/0x77a7c0c174cae97e49c5f224746a2e04dca3eeff/) | RightsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9c0a6f...a7ec17`](./contracts/bsc-56/0x9c0a6fd84fa4c2d0496e96ca2f22c381e7a7ec17/) | SmartPoolManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x92e2a3...427594`](./contracts/bsc-56/0x92e2a3764d23de5babc3b5ce939daede3f427594/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x020ce3...b76d49`](./contracts/bsc-56/0x020ce34c5dd21867be6820d8e08183487cb76d49/) | SyrupStakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48fae2...affd48`](./contracts/bsc-56/0x48fae2c4e1f983183cd89bbd9de883b0acaffd48/) | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01c592...efef61`](./contracts/bsc-56/0x01c59294c7c7ce6aaeda0e0a812f6350f0efef61/) | Trainers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ca844...efd9dc`](./contracts/bsc-56/0x1ca844068c9186489220b832d6d23df0e8efd9dc/) | TrainersV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x79ba45...940e0d`](./contracts/bsc-56/0x79ba45d4fbcde838db2705efad368e3fbe940e0d/) | VBuniToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
