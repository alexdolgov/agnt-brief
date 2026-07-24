# Agentic Audit Brief: Basis Cash

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Basis Cash (`basis-cash`)
- Website: [https://basis.cash/](https://basis.cash/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 149 unique implementations (149 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $245,599.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Basis Cash. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across ethereum. Structural roles: 11 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (11)
- Contract kinds: contract (11)
- Detected standards: ownable (10), erc20 (3)
- Frameworks: openzeppelin (11)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x88da5151ab20387626520c8af8e29e3fc64ee747`, chain 1)
- UnnamedContract (`0xffd035a605b20e8461b00018adc5413c4e5d6118`, chain 1)
- BACDAIPool (`0xebd12620e29dc6c452db7b96e1f190f3ee02bde8`, chain 1)
- BACSUSDPool (`0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c`, chain 1)
- BACUSDCPool (`0x51882184b7f9beed6db9c617846140da1d429fd4`, chain 1)
- BACUSDTPool (`0x2833bdc5b31269d356bdf92d0fd8f3674e877e44`, chain 1)
- BACyCRVPool (`0xc462d8ee54953e7d7bf276612b75387ea114c3bf`, chain 1)
- Bond (`0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5`, chain 1)
- Cash (`0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a`, chain 1)
- DAIBACLPTokenSharePool (`0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f`, chain 1)
- DAIBASLPTokenSharePool (`0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a`, chain 1)
- Share (`0xa7ed29b253d8b4e3109ce07c80fc570f81b63696`, chain 1)
- Timelock (`0xd98bc19ffc98e9009146524c8bd835f1bc5d0e6a`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 135 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 13 of 149 unique; 136 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 111
- Unique implementations: 149
- Raw deployments: 149
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BACDAIPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380301 | `0xebd12620e29dc6c452db7b96e1f190f3ee02bde8` | ⚠️ Unaudited |
| BACPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e7ae8923876955d6dcb7285c04065a1b9d6ed8c` | ⚠️ Unaudited |
| BACSUSDPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380300 | `0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c` | ⚠️ Unaudited |
| BACUSDCPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380292 | `0x51882184b7f9beed6db9c617846140da1d429fd4` | ⚠️ Unaudited |
| BACUSDTPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380290 | `0x2833bdc5b31269d356bdf92d0fd8f3674e877e44` | ⚠️ Unaudited |
| BACyCRVPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380298 | `0xc462d8ee54953e7d7bf276612b75387ea114c3bf` | ⚠️ Unaudited |
| BASPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5859adb05988946b9d08dce2e12ae29af58120c0` | ⚠️ Unaudited |
| BIP11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6f889c3cedbdf6cb524813da0ee0ffaddc115a2` | ⚠️ Unaudited |
| Boardroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27c20f0b0ad78805084eeb8407291326e996fd4f` | ⚠️ Unaudited |
| BoardroomV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecf0dde35f6d895c065e7526348af1e79433e42a` | ⚠️ Unaudited |
| Bond | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380297 | `0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5` | ⚠️ Unaudited |
| Bondroom | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a904a1320b5f0a1f742a9e431ded2a55efe109` | ⚠️ Unaudited |
| Cash | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380291 | `0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a` | ⚠️ Unaudited |
| ControlledAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c48fd8ed6f6a50bf03dbdefe7d74983f447d30c` | ⚠️ Unaudited |
| DAIBACLPTokenSharePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380289 | `0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f` | ⚠️ Unaudited |
| DAIBASLPTokenSharePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380295 | `0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818f83333244ba4bb72dab0b60b1901158402f2e` | ⚠️ Unaudited |
| Feeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06589479a31f826410bbd6d43410e7ff2d8eb1b0` | ⚠️ Unaudited |
| InitialCashDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x666c2a4625ef5f8cf66a24fbff9f22437754c0cd` | ⚠️ Unaudited |
| InitialShareDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c53230875877321023f757c33d2faf71de2f4bb` | ⚠️ Unaudited |
| LinearThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdbae6de88c7525369d6826ae1cdcab415120b11` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b604349100a318e369b59a6d6c1b65a31ade677` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3868247dfbc155fa59b30ec03e63b10a8ff7ed` | ⚠️ Unaudited |
| PickleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf4acf926a4d973e4a1775e4a82839988912828` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66d7fa132b5550205d4d6a6645b66283e330b7bb` | ⚠️ Unaudited |
| PoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fe7656fa41eea50b0ee8591fd6b405c94b432c5` | ⚠️ Unaudited |
| PoolStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01592e349258233a6f13685228060511eca00ae6` | ⚠️ Unaudited |
| PoolWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e3d21e2730b4e5d5ee7214d4723ea96d041510c` | ⚠️ Unaudited |
| Share | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380296 | `0xa7ed29b253d8b4e3109ce07c80fc570f81b63696` | ⚠️ Unaudited |
| ShareV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106538cc16f938776c7c180186975bca23875287` | ⚠️ Unaudited |
| SigmoidThreshold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa728721394084ea78f10cebb192323f50407f7f3` | ⚠️ Unaudited |
| SimpleERCFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b075b3aa2f1143775101986b52e32da9d98fe22` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380299 | `0xd98bc19ffc98e9009146524c8bd835f1bc5d0e6a` | ⚠️ Unaudited |
| TokenStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0440ae12f329dbd7306b6d9edbb0e667c225c87c` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02957ae53173f58dc9989c4a09853f9528c877f5` | ⚠️ Unaudited |
| VoteProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bddf10f9956dcda89998c2e673f74a09deb729b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06364f10b501e868329afbc005b3492902d6c763` | ⚠️ Unaudited |
| WeightFeeder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5800fc35f004c1218b18a22940ee7e8be4816546` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (111)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04af91bf6c6452c9f998a7270027ae9b11b5303d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075b1bb99792c9e1041ba13afef80c91a1e70fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dfdc4d5390bea4d19e4cb797153bbb559939a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f5ecb70896fd26e595e81dac3d881fbf8e0f7b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121baee143b1859113978798fdc5d904571078bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14f9bdc901dc1f64e0f6bea6824883e56b0d7d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1794841fccdb7880a81f0cb4a43dd36bfd19762c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190503cfbe97d77e83dedfc550c79efd6e2e799f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x192092425296da5c4cd2e5365bc656f0553b36ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ada8390cee4a088dacbedbc7c92a38cab2e401f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd65cbc53ddb0fe988172d41015fba3b8ceaace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2a662fb513441f06b8db91ebd9a1466462b275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2088a86f60d2504ca47961577628aff8202d8f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2146b07c9c9fc7b4bfc31d29ef59e2a179f881b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b645a6a426f22fb7954dc15e583e3737b8d1434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e60cf74d81ac34eb21eeff58db4d385920ef419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed8727881a07bb8192c94d1a21ac827d22fc25c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3740fb63ab7a09891d7c0d4299442a551d06f5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3855c26d0621ceb21b5aaba0b8fe4ad76d658f7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b3ac5386837dc563660fb6a0937dfaa5924333b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e233a85535d32de0fdea8510d460c0aef7fdfec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d9a3012e0f15994ec11110d0e47e5bb6cc145b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49849c98ae39fff122806c06791fa73784fb3675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b182469337d46e6603ed7e26ba60c56930a342c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bd3a0f66758f2f4ebe575f9dfd7874e80689f10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d89ddee755a6200eb202112b00be988038fd5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e153d084c28f20411d6ea01f7a18e0ec45e19d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e680fba9b795c9988ae51ea398332a066357bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0e0ed4ee48f253ac92490ce851712fcf053841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ea46506b9cc5ef470c5bf89f17dc28bb35d85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5312ecc250028006aacaa372ab103f8e992f6bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ee22d5593fc76fb20eafab66c45aab3268b800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c53956d4743e4e1ba5881fee27357c5670c013b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e71f075dbd4172f7145c774ea8534fdc3cf0e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61dc3c6da3f97f544c5352fd0508d0b849896e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a883d6f84a2d307d8f587b638e2f172ef2117a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6812c0de3097d022a76dbd229ec003ee6f50fc74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a86184349aab530a0cb3e978f3f812e3030ff44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed2d6468af9d86648ff81941801c192b171c79a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ff57ec11498e67b0195be1a93c2e56fcad4fa00` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-380293 | `0x751d0ef5686a8a2a2bdeefec787c2abc27bf75ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76827f977dc1f6a02c3296636ed6d13c7421f5c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7715a2ca2c9ae2c6cde525f9588eded073df3430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7769680bf1002c98a20e21fcd694bfb9e383516c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7771f704490f9c0c3b06afe8960dbb6c58cbc812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a8c46dea5ada233abaffd40f3a0a2b1e5a4f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7adbf700919ab95ab4c444b9525b020ceb4456de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b5a0905cbed0e96c062dbf0f921726db1f5f55b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fc77b5c7614e1533320ea6ddc2eb61fa00a9714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fe97bdc3b8b32e1cdc77d0666023ececc44ecfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fffa79fe475565098951fd187148782337dfc7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80caaad7a0e977f3e93a86f4acf5db70b4c89af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ee0eafe5538872abfd860ad331552b66e71e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x824770ae30903255c389c5bc3e6edd71cf2fe192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x845838df265dcd2c412a1dc9e959c7d08537f8a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8474c1236f0bc23830a23a41abb81b2764ba9f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884be299afdb00dfc1dfe183f1a064eb05ceb75c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380294 | `0x88da5151ab20387626520c8af8e29e3fc64ee747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a573cb5234657c8bf054da2ebe63b66fb1f9502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93054188d876f558f4a66b2ef1d97d16edf0895b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9726e9314ef1b96e45f40056bed61a088897313e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b7e9c880ced70c125982b97654a56bffb9f86d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dcea4ab7fc6233b9b93720f29cd7920a2d3c216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc689ccada600b6df723d9e47d84d76664a1f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa01ffb759c94539e1c89a6fffafc409eab154a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa274761e1a926d071188cb1aa55dcddfd7d0eadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b47e3d5c44877cca798226b7b8118f9bfb7a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4210ab07f3227ebc1ef3ec04e96040178c58677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa50ccc70b6a011cffddf45057e39679379187287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5407eae9ba41422680e2e00537571bcc53efbfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa89572456486936bbdf3919384689397fe8e2e22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90e669f1c9e60026b3c9cf2a678c34915a79405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaaeee508b9a779c53a50b749fc8a7c8d00e9c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac795d2c97e60df6a99ff1c814727302fd747a80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf7005aaafab89b34caad7d71b94d7391024ebe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10c49fd2983f55fcfaa9a7a64a943d2852e23e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb241a8c2fa87de870c7cbb29bebe70ec1ee7188f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb435930fa4da72328e867b67e4fbb64e7d45efd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb527c418c3eff31a88a6818c7953014ff9ec5a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6a7935f8bc7b9822a6b05e2e0c7e32ba6e2eb44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c057591e073249f2d9d88ba59a46cfc9b59edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb8055914657195a795bb4fc127877ceab35b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbc81d23ea2c3ec7e56d39296f0cbb648873a5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbee5349f1f564b6638d6723125877cb48b86fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7e832426005669fa8a37fdad13884bc4f40a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25a3a3b969415c80451098fa907ec722572917f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc97ef40140a09eb60149c9051e52931a1c0451db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd2dfee6e7336d967ea8ac25c7146a36bd8d1fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xced2c6f8680bf4da2a429b04bdf528619e24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd133d1f0359dfeadf1fa7bb655e2e1c76be2f778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd905e2eaebe188fc92179b6350807d8bd91db0d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbe281e17540da5305eb2aefb8cef70e6db1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc31f5c17254a89d53a1248195f239618c96838e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdebe832af2c18dc1d837dfd2eae89a87f2f51b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf5e0e81dff6faf3a7e52ba697820c5e32d806a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe146dc148c95985c035a8d06da450fa065f3cf36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4efd87ad34360932e5325d77a0a6e39147debfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5fc22db659b09a476622bea3a612c9252b27884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5fdbab9ad428bbb469dee4cb6608c0a8895cba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb21209ae4c2c9ff2a86aca31e123764a3b6bc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdd536b55a66484e356be84c07d7f1632957f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedf54bc005bc2df0cc6a675596e843d28b16a966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf129d674e042a112d4644858a9be73d15a971bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf43775b508b7c3c1624e95fd874630876728fb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf79d9242d3b12ea1a69aeafe4e19c8a03f324b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8aceaae0dfb5d917086e052ef257e9da9d72dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcba3e75865d2d561be8d220616520c171f12851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef6ee493a60fc7cb496fef54512d465646d1135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff11887275cac956a651fe6523fc773e027d5b97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380302 | `0xffd035a605b20e8461b00018adc5413c4e5d6118` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 108
- Live contracts: 0
- Unknown liveness contracts: 108
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=108

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x04af91bf6c6452c9f998a7270027ae9b11b5303d` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x075b1bb99792c9e1041ba13afef80c91a1e70fb3` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x0dfdc4d5390bea4d19e4cb797153bbb559939a9d` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x0f5ecb70896fd26e595e81dac3d881fbf8e0f7b3` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x121baee143b1859113978798fdc5d904571078bd` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x14f9bdc901dc1f64e0f6bea6824883e56b0d7d15` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x1794841fccdb7880a81f0cb4a43dd36bfd19762c` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x190503cfbe97d77e83dedfc550c79efd6e2e799f` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x192092425296da5c4cd2e5365bc656f0553b36ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x1ada8390cee4a088dacbedbc7c92a38cab2e401f` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x1bd65cbc53ddb0fe988172d41015fba3b8ceaace` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x1f2a662fb513441f06b8db91ebd9a1466462b275` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x2088a86f60d2504ca47961577628aff8202d8f6c` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x2146b07c9c9fc7b4bfc31d29ef59e2a179f881b6` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x2b645a6a426f22fb7954dc15e583e3737b8d1434` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x2e60cf74d81ac34eb21eeff58db4d385920ef419` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x2ed8727881a07bb8192c94d1a21ac827d22fc25c` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x3740fb63ab7a09891d7c0d4299442a551d06f5fd` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x3855c26d0621ceb21b5aaba0b8fe4ad76d658f7d` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x3b3ac5386837dc563660fb6a0937dfaa5924333b` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x3e233a85535d32de0fdea8510d460c0aef7fdfec` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x45d9a3012e0f15994ec11110d0e47e5bb6cc145b` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x45f783cce6b7ff23b2ab2d70e416cdb7d6055f51` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x49849c98ae39fff122806c06791fa73784fb3675` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x4b182469337d46e6603ed7e26ba60c56930a342c` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x4bd3a0f66758f2f4ebe575f9dfd7874e80689f10` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x4d89ddee755a6200eb202112b00be988038fd5fd` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x4e153d084c28f20411d6ea01f7a18e0ec45e19d3` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x4e680fba9b795c9988ae51ea398332a066357bd4` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x4f0e0ed4ee48f253ac92490ce851712fcf053841` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x52ea46506b9cc5ef470c5bf89f17dc28bb35d85c` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x5312ecc250028006aacaa372ab103f8e992f6bf2` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x54ee22d5593fc76fb20eafab66c45aab3268b800` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x5c53956d4743e4e1ba5881fee27357c5670c013b` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x5e71f075dbd4172f7145c774ea8534fdc3cf0e8d` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x61dc3c6da3f97f544c5352fd0508d0b849896e87` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x67a883d6f84a2d307d8f587b638e2f172ef2117a` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x6812c0de3097d022a76dbd229ec003ee6f50fc74` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x6a86184349aab530a0cb3e978f3f812e3030ff44` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x6ed2d6468af9d86648ff81941801c192b171c79a` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x6ff57ec11498e67b0195be1a93c2e56fcad4fa00` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x76827f977dc1f6a02c3296636ed6d13c7421f5c7` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x7715a2ca2c9ae2c6cde525f9588eded073df3430` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x7769680bf1002c98a20e21fcd694bfb9e383516c` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x7771f704490f9c0c3b06afe8960dbb6c58cbc812` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x79a8c46dea5ada233abaffd40f3a0a2b1e5a4f27` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x7adbf700919ab95ab4c444b9525b020ceb4456de` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x7b5a0905cbed0e96c062dbf0f921726db1f5f55b` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x7fc77b5c7614e1533320ea6ddc2eb61fa00a9714` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x7fe97bdc3b8b32e1cdc77d0666023ececc44ecfd` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x7fffa79fe475565098951fd187148782337dfc7d` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x80caaad7a0e977f3e93a86f4acf5db70b4c89af2` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x81ee0eafe5538872abfd860ad331552b66e71e96` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x824770ae30903255c389c5bc3e6edd71cf2fe192` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x845838df265dcd2c412a1dc9e959c7d08537f8a2` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x8474c1236f0bc23830a23a41abb81b2764ba9f4f` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x884be299afdb00dfc1dfe183f1a064eb05ceb75c` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x8a573cb5234657c8bf054da2ebe63b66fb1f9502` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x93054188d876f558f4a66b2ef1d97d16edf0895b` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x9726e9314ef1b96e45f40056bed61a088897313e` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x97b7e9c880ced70c125982b97654a56bffb9f86d` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0x9dcea4ab7fc6233b9b93720f29cd7920a2d3c216` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0x9fc689ccada600b6df723d9e47d84d76664a1f23` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xa01ffb759c94539e1c89a6fffafc409eab154a65` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xa274761e1a926d071188cb1aa55dcddfd7d0eadb` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xa2b47e3d5c44877cca798226b7b8118f9bfb7a56` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xa4210ab07f3227ebc1ef3ec04e96040178c58677` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xa50ccc70b6a011cffddf45057e39679379187287` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xa5407eae9ba41422680e2e00537571bcc53efbfd` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xa89572456486936bbdf3919384689397fe8e2e22` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xa90e669f1c9e60026b3c9cf2a678c34915a79405` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xaaaeee508b9a779c53a50b749fc8a7c8d00e9c35` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xac795d2c97e60df6a99ff1c814727302fd747a80` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xaf7005aaafab89b34caad7d71b94d7391024ebe2` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xb10c49fd2983f55fcfaa9a7a64a943d2852e23e2` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xb241a8c2fa87de870c7cbb29bebe70ec1ee7188f` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xb435930fa4da72328e867b67e4fbb64e7d45efd4` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xb527c418c3eff31a88a6818c7953014ff9ec5a0b` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xb6a7935f8bc7b9822a6b05e2e0c7e32ba6e2eb44` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xb6c057591e073249f2d9d88ba59a46cfc9b59edb` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xbbb8055914657195a795bb4fc127877ceab35b8c` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xbbc81d23ea2c3ec7e56d39296f0cbb648873a5d3` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xbbee5349f1f564b6638d6723125877cb48b86fd1` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xbc7e832426005669fa8a37fdad13884bc4f40a35` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xc25a3a3b969415c80451098fa907ec722572917f` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xc97ef40140a09eb60149c9051e52931a1c0451db` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xcd2dfee6e7336d967ea8ac25c7146a36bd8d1fba` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xced2c6f8680bf4da2a429b04bdf528619e24cdc7` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xd133d1f0359dfeadf1fa7bb655e2e1c76be2f778` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xd905e2eaebe188fc92179b6350807d8bd91db0d8` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xdbe281e17540da5305eb2aefb8cef70e6db1a0a9` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xdc31f5c17254a89d53a1248195f239618c96838e` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xdebe832af2c18dc1d837dfd2eae89a87f2f51b50` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xdf5e0e81dff6faf3a7e52ba697820c5e32d806a8` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xe146dc148c95985c035a8d06da450fa065f3cf36` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xe4efd87ad34360932e5325d77a0a6e39147debfa` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xe5fc22db659b09a476622bea3a612c9252b27884` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xe5fdbab9ad428bbb469dee4cb6608c0a8895cba5` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xeb21209ae4c2c9ff2a86aca31e123764a3b6bc06` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xebdd536b55a66484e356be84c07d7f1632957f20` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xedf54bc005bc2df0cc6a675596e843d28b16a966` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xf129d674e042a112d4644858a9be73d15a971bab` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xf43775b508b7c3c1624e95fd874630876728fb93` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xf79d9242d3b12ea1a69aeafe4e19c8a03f324b8d` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xf8aceaae0dfb5d917086e052ef257e9da9d72dea` | non_address_book | unknown | unknown | unverified | n/a | `0x68c3a95b35c45db5db67ed83c43305052fad6e04` |
| unverified unclassified | UnnamedContract<br>`0xfcba3e75865d2d561be8d220616520c171f12851` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xfef6ee493a60fc7cb496fef54512d465646d1135` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |
| unverified unclassified | UnnamedContract<br>`0xff11887275cac956a651fe6523fc773e027d5b97` | non_address_book | unknown | unknown | unverified | n/a | `0xc447fcaf1def19a583f97b3620627bf69c05b5fb` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xebd12620e29dc6c452db7b96e1f190f3ee02bde8` | BACDAIPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c` | BACSUSDPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51882184b7f9beed6db9c617846140da1d429fd4` | BACUSDCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2833bdc5b31269d356bdf92d0fd8f3674e877e44` | BACUSDTPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc462d8ee54953e7d7bf276612b75387ea114c3bf` | BACyCRVPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc36824905dff2eaaee7ecc09fcc63abc0af5abc5` | Bond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3449fc1cd036255ba1eb19d65ff4ba2b8903a69a` | Cash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x067d4d3ce63450e74f880f86b5b52ea3edf9db0f` | DAIBACLPTokenSharePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9569d4cd7ac5b010da5697e952efb1ec0efb0d0a` | DAIBASLPTokenSharePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa7ed29b253d8b4e3109ce07c80fc570f81b63696` | Share | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd98bc19ffc98e9009146524c8bd835f1bc5d0e6a` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 38 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 111 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
