# Agentic Audit Brief: Hera Finance

## Project Overview

- Project: Hera Finance (`hera-finance`)
- Website: [https://staking.hera.finance](https://staking.hera.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.422Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, ethereum, metis
- Contract surface: 285 unique implementations (290 raw deployments)
- DeFi Llama TVL: $5,501,677.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 18 project-authored contract(s) across 3 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 292; live-surface contracts included: 290 (5 live, 285 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/4 (75.0%)
- Deployed-live implementations: 5 of 285 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/15
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 270
- Unique implementations: 285
- Raw deployments: 290
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 20.0% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HeraAggregatorV1 | unknown | metis | n/a | 2 deployments: metis [`0xafcb08...deb24c`](./contracts/metis-1088/0xafcb0803f96dc1e9768d14ce55b1a46b26deb24c/); metis `0xc1aa23...db94a9` | ✅ Audited |
| HeraFeeOrganizer | unknown | metis | n/a | 2 deployments: metis [`0xdcf404...26a877`](./contracts/metis-1088/0xdcf40457b0f83ee1f82b573dc58db7d47826a877/); metis `0xff2e95...0f2fa5` | ✅ Audited |
| HeraSecurity | unknown | metis | n/a | [`0x6da631...b02225`](./contracts/metis-1088/0x6da6317e819d6a19c28f0a59291f85fb41b02225/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Disperse | unknown | metis | n/a | [`0x5a87bf...ae4154`](./contracts/metis-1088/0x5a87bf17066a749c794163af160d52a466ae4154/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xca0dfc...d96e6e`](./contracts/arbitrum-42161/0xca0dfc4e1935ffa0019aa760db0564b8cdd96e6e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | metis | n/a | [`0xe089a4...007995`](./contracts/metis-1088/0xe089a4efa2da690f21a3ea682cb36dc4ac007995/) | ⚠️ Unaudited |
| HeraAggregator | unknown | metis | n/a | 3 deployments: metis [`0x0a6010...8684a9`](./contracts/metis-1088/0x0a601071e0a89b706b494a2c1931eb961b8684a9/); metis `0xce3759...356fd0`; metis `0xdfb2c6...2ba68e` | ⚠️ Unaudited |
| HeraAggregatorV2 | unknown | metis | n/a | 2 deployments: metis [`0x000000...fb183a`](./contracts/metis-1088/0x0000000000924fb1969e719eded2fed54afb183a/); arbitrum [`0x000000...fb183a`](./contracts/arbitrum-42161/0x0000000000924fb1969e719eded2fed54afb183a/) | ⚠️ Unaudited |
| HeraFeeSequencer | unknown | metis | n/a | [`0x000000...9fab15`](./contracts/metis-1088/0x000000fee322aaa0a5772e7f92de10180f9fab15/) | ⚠️ Unaudited |
| HeraPublicSale | unknown | metis | n/a | [`0x1bd717...9047e7`](./contracts/metis-1088/0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7/) | ⚠️ Unaudited |
| HeraPublicSaleV2 | unknown | metis | n/a | [`0x1a404c...1f19e1`](./contracts/metis-1088/0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1/) | ⚠️ Unaudited |
| HeraToken | token | metis | n/a | [`0x6f0570...2c9dce`](./contracts/metis-1088/0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce/) | ⚠️ Unaudited |
| Multicall2 | unknown | metis | n/a | [`0xfc6a61...407353`](./contracts/metis-1088/0xfc6a61c085e7831f66c35e9c3c5b75c558407353/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | metis | n/a | [`0x61861d...2b658b`](./contracts/metis-1088/0x61861d91e73d9cbc5e4893df0e85f442dd2b658b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | metis | n/a | [`0xc92f8e...333ef7`](./contracts/metis-1088/0xc92f8e6d6c68f63cbf4af439ff0d12f7a9333ef7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (270)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1a404c...1f19e1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x00b34c...dd81b7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x00c37b...1a73e8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x01b1bc...420b0e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x025b15...fa8df0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x02e6e5...c2a5b3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x035294...8f78e3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x03734c...e6832c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x05322d...b8e4f5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x05ab5e...cc2762` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x05b7f0...2ca221` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0656c9...7dca6f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x06d511...418ff1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x079534...f62e9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0b0388...ef7c3d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0b0794...33fb45` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0b2ab5...576ce2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0c5cf0...24a0dd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0eeff0...9102e4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0f236b...7d8da7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1015a5...936ce9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x101646...38a4f5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x109671...b27ce3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x10d405...9ec0cf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x12487e...e62ab1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x127a2f...631d0c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x13a614...061c0c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x14a5e4...6bb46d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1535bf...8c5280` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x158ee8...1b8059` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x15fdd4...dd46fd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x17ce31...7adeaa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x17fae3...198708` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x187bba...1af123` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1881ba...63f01e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x18a0cb...75a1c5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x19e205...c4cd3a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1ad8d3...8a6205` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1b2419...9f11c2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1b92e5...17d2c1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1c609f...f6d7ad` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1e74fb...92f24a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1e97fd...61b92c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2117f1...083c06` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x212576...017f09` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2154b2...7d7d0f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x21688b...1a8609` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x222059...7090dc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x22b9dd...d83158` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x250896...7762d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x260f23...f151b9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x275b43...b3ee23` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2763b2...a0e19e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x27f0d5...253187` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x28050e...1e2c45` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x281ed5...fa3bba` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x28227e...1f970d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x291a4d...acc63d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2a33c5...2ca49f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2aa7c6...6d1b55` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2d6b48...479efa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2d707e...a5b788` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2ec373...835c03` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2fb84b...3f6bb7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x303723...843579` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x308288...8fa00d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x31900b...6bf581` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x32c8f6...9072cf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x33983d...b18098` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x351d8c...9dca4c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x35472e...f62dd4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x35d9ac...8ee5f8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x375b9f...e3b890` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3842a9...0f399d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x390845...5882db` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3a03c2...761f31` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3a1c3b...82a8c0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3acfb7...a205d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3b9a54...bbf7a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3c8a8e...471783` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3d1e83...8aaa7a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x3e3c36...e73f2e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x43584e...32a80d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x451b18...0ce3d2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x46a003...db9bde` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4885a2...15d25c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x48aed4...249570` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4956cd...4e1ffb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4c478f...7c57f2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4e162c...d1c7cf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x522aca...5abd16` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x52f772...4520e6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x532435...61d3f1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x556487...b9c987` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x556ca2...98a692` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x562009...9f9173` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x57dd2f...d6fbcd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5a442c...861a4d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5ad67a...0ec35e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5b60aa...788077` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5e6c9f...dc6bd3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x604668...514f2f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6059be...e6a4ca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x620633...d5294a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x63ffc9...f5f9fc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x645f29...9e129d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x669f98...81075b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6704bd...5c530e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x67500f...282f33` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x675801...08540e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x68e736...31e036` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6ab9e9...c95fed` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6adf66...585dbe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6b7430...6b2669` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6b862d...09d8ca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6bc4f8...bd74da` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6c1875...0716a3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6dc9bb...2e93d3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6e5004...44a95d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6f5e6b...9bb5a0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x748a89...87e3de` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x750a6b...6752e3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x759d9a...fcfa25` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x765fa6...a973a0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x76a706...e70b3b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x79393e...d3a663` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7b009b...fdb58a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7dbdf1...8e421c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7ec835...0ac1cb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8272fe...3ba1e8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x83a958...5539ca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8508cd...2939a0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x852bea...352223` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x852d1f...d1f383` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x863077...e9b57c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x863361...5ca041` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x865ec7...b7778b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x869e99...f638af` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x89c6ac...f4f7fc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x89e360...7e1a5b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8a43e8...bbc7c9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8a48ca...a2430c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8a4d9e...ee76b2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8a719e...fddda8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8a8201...9509af` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8aa628...290cf0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8b35ff...7d1663` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8cb265...dc3c98` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8d0b76...a337df` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8d1992...266f5b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x8fed60...446a32` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9177b3...701ef0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9341ed...a0b95b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x93bf91...de56f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x94317d...9947c6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x945300...05186a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x948e1e...45e9e8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x949ba0...e7e16c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x94fbfb...59ec36` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x962d67...72eb4d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x96b010...7b63e5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x979424...5279e1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x982d80...883c6a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x98b889...724b70` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x99d507...a80aa6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9abb86...57500e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9c598d...74ddf6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9cebef...7d503c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9fbf11...d3bb6a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa037dd...bb9334` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0cf23...21518c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0e8ec...100713` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa1e555...a2f0d9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa2b8c7...099c1e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa305a9...ac2f88` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa4061c...6ac6df` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa4a052...7a1ab6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa6d7e4...083b5a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa73ea8...487cdc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa77956...c8ebac` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa82666...22b731` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa8cde8...8499e1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaa604f...655517` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xab61ea...7d34f3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xae8f71...69fd2d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaefbc5...7d891b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xafcec4...2c2520` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb0f82b...21b23a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb2b5e4...9568d1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb4801c...0a7127` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb4e109...3e5dde` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb65604...3863bd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb6756e...40dbd0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb8379e...edc16b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb91a44...8424ed` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb9ed42...d15a15` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbc493f...121226` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbdd07e...c84dbf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbe705e...60399a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf6ca1...eb47b4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc06a30...bb988a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc279ce...1d8847` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc27dd4...0d30fe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc323af...64bf24` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc60fbb...25c2d2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc6b9aa...874571` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc72777...0365e9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc74863...08f455` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc7880b...d567fb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc8ec71...58ac2d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc9c669...413797` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcb10b8...823ad0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xcd24bd...a7e85f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd07cc2...eb27fa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd1f5bc...dd441a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd20990...b7aa70` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd3436d...3fd67c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd42cee...fd1fc1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd51732...9729bf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd5723d...fb41d6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd652e0...b7cec5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd778b9...4c87a9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd7f038...0a6047` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd867f1...7f23e8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd892bd...599a15` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd92cbd...7b6b5f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdae802...75d6b9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdbb733...200195` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdbd21a...412855` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd434b...80f5b8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd61a0...d7d708` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xddfbeb...b400ad` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xde22e9...d4da1f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xde53dc...d7ce57` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xde656d...4c09a2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdfe70e...1a38fb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe0099e...8308d3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe04a95...25b861` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe18589...a632a5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe3e6f2...1e045c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe435dc...e8ac47` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe5378a...901372` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe5855c...bd98a7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe76b97...535076` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe7ba32...97e6f4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe9998e...c6a840` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xea99e3...5c4ae7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xebdf92...b11946` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xec389e...dc1402` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xee10db...8c7eca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xee1416...ec9267` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xef2cf8...59c9b3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xef7b62...8e6f85` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf4c0d6...ebb9b8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf5377d...b6ede5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf56961...34330b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf62aa3...700316` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf87793...9661e8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf999f9...04a103` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfa3e5b...383fd0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfb7db2...c2df28` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfd2466...1d0695` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfd97bb...e76f36` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfdc464...895b63` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfdfddf...c2d03e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xff5a85...68bcf7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bd717...9047e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x699127...f2e9df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f0570...2c9dce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce3759...356fd0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/AYXuPbqH2kInNyfTsUcv/Hera-AggregatorV2_audit-report.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FAYXuPbqH2kInNyfTsUcv%2FHera-AggregatorV2_audit-report.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/UXpADKAVfIgit4tFsFbq/Hera Aggregatorv1_audit.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FUXpADKAVfIgit4tFsFbq%2FHera%20Aggregatorv1_audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |
| [spaces/RPd6E8y8uIj9QOgICwhl/uploads/mILY1xtqsQZdQO7FcOjW/Hera Fee Organizer_audit.pdf](https://468680357-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FRPd6E8y8uIj9QOgICwhl%2Fuploads%2FmILY1xtqsQZdQO7FcOjW%2FHera%20Fee%20Organizer_audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0x0a6010...8684a9`](./contracts/metis-1088/0x0a601071e0a89b706b494a2c1931eb961b8684a9/) | HeraAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x000000...fb183a`](./contracts/metis-1088/0x0000000000924fb1969e719eded2fed54afb183a/) | HeraAggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x000000...9fab15`](./contracts/metis-1088/0x000000fee322aaa0a5772e7f92de10180f9fab15/) | HeraFeeSequencer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1bd717...9047e7`](./contracts/metis-1088/0x1bd717c5cdd133e1985628e1e194b0ed9c9047e7/) | HeraPublicSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1a404c...1f19e1`](./contracts/metis-1088/0x1a404ca2f355141eb9ef1d5fe872bfc8511f19e1/) | HeraPublicSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6f0570...2c9dce`](./contracts/metis-1088/0x6f05709bc91bad933346f9e159f0d3fdbc2c9dce/) | HeraToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 270 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
