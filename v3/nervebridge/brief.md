# Agentic Audit Brief: NerveBridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: NerveBridge (`nervebridge`)
- Website: [https://nerve.network/](https://nerve.network/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, cronos, ethereum, fantom, harmony, kaia, kava, linea, manta-pacific, merlin, metis, mode, optimism, polygon, polygon-zkevm, scroll, zksync-era
- Contract surface: 128 unique implementations (128 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $523,698.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for NerveBridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum, optimism. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x75ab1d50bedbd32b6113941fcf5359787a4bbef4`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 127 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 128 unique; 127 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 122
- Unique implementations: 128
- Raw deployments: 128
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cd6e29d3686d24d3c2018cee54621ea0f89313b` | ⚠️ Unaudited |
| ERC20Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x029d425438e489895f2dc18442c3df9c214c1004` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3758aa66cad9f2606f1f501c9cb31b94b713a6d5` | ⚠️ Unaudited |
| NerveMultiSigWalletII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3758aa66cad9f2606f1f501c9cb31b94b713a6d5` | ⚠️ Unaudited |
| NerveMultiSigWalletIII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3758aa66cad9f2606f1f501c9cb31b94b713a6d5` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | bsc | unit-389851 | `0x75ab1d50bedbd32b6113941fcf5359787a4bbef4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (122)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03d1e72765545729a035e909edd9371a405f77fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085c12c601a602cdc0ea2ac9f66cad9cbe6c438d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d7719cc9c60fc6118211f25e2adebbe698812a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x261c3af3cbbec0361f62d080b31c7d9331293e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34787654cb39f9dd587f2aedd83faaaec9069408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630bc7dd0abfc2d196289ce09db947dd2cafae7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64ce6baa1144e307c68af1a1fb2ecfe35a058052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6758d4c4734ac7811358395a8e0c3832ba6ac624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d82a0708e75f1eca6b63e03aa86936393c6c36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79c7ef95ad32dcd5ecadb231568bb03df7824815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae5e7d5f3cf1f9a28504e4dacb9e99d81943a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b6f71c8b123b38aa8099e0098bec7fbc35b8a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6f06ea133bb0c7b5ea39c9ef42bd800df5a909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c1627299f61389c0f4d140ec3ae1984bf12f671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad089144d984e317c114ca0628b49cbb956dcb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb41aacd703140e28e6ef74da3cf596511bc64e0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f201352a953a340041e0a54a46c093bec4684a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc707e0854da2d72c90a7453f8dc224dd937d7e82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed2eee22c8d8a410b277a8c83026d19e53857122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0e406c49c63abf358030a299c0e00118c4c6ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02c2668d5c82d3314211e3373d5673f5701bf109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04fb42a2443f15a8824491e5a27d68157bb045e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dce06444dd8b553fc4148297c1be3204efbc7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x124263873f7b946bce46398e41a576430529f248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16b8e664c25da9ecbedf1638506c0529820b9601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16fcb1e356ea4ce636de5f32b218ad87de5c8b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x183bf2eafae5be374a4df116e1c22c52e3bac2d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c4de4ef2b515f62aee59bb4877cd24fc394927a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb48bbc42a9a093a529d64afaae54a86d0a8782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dc95784db76de433287599a5e72131658b7873f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1df89217a09d9d0d3ea42fef9bcb2dccac94a889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2452d871c54ad7a67534ebe02ad259e2fbdacbe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x289f347ac469bc1b7359ed95c87c75ac2c3eb16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b86f04b64b325e3762ed413f29094213af5a169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c3849569f83d492199a4e0a0e39584d8b7e52ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c46ac8ab0a487e2062c8a9118c4b09cbb4d6a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d67079c96d90150379fb7b49b21a30a2424d8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fab67e7b18b396ada42929d1af3861b7f70474e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3095666bb0393f7ea894050129cf2741c83547ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30c9923196a3a9a46899e040c91e1a15585ddf53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3133524babd022f4078c46ccadf1cdf88c79a120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3221be45cb9ae935a6394b02a565459260e5a8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33110495aff6b0e21c13d8b31cac3484e2b37723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33c1fe593804c25f1ee9c14cf8189a561dcfb18f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34787654cb39f9dd587f2aedd83faaaec9069408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b3f99e71af0daacf164176f79eaeaca94ba8aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c0444261a3174e5ec03f792b301d3b1f48afe85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fba891e42851a58e9f7282a21228d25fae38802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4523a56bc22cba0784e28ff63fb17e1cd9aa7c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4859e670cbcf5d7c86d1c3b75e72aac18021bff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cd29ed47aa9ae0b429134d4af49348897dad78d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d71c4cac29413cd0bc130cc56f59a85c5854cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fab027411662ccd119ed730ab9a9f1b01c89eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50aa0633779c2caddbcc9370646a0b14a87e20d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x552a45d54194ae85defb1b0e0f207b7ade06bdc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b46ebaa7a2b5705a9f30383e4ebb07f3ea64ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e45c902bcd87944ffb360d8ddeff8656c7bd6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f4fe05ae946145a61a2b4181198b2341e3d76af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x60a17735410820614c1eb15288b16f3c0e33618d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x630bc7dd0abfc2d196289ce09db947dd2cafae7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6760124f95a94e7d48f478bd82a4592233e6a509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x681d7a221048122f8c0888ebf637ccf943186408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x68df883715a12f085ffe54e90733a12c7c9c8128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x695bf53c6124c0a7306115c1b194f37dd8fe08b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bca4ec7cecdb1b07ef00771108a6a3f050c9994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70f52ca2265b06600fcb27fdf10daee681888dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7162bb1313ecb038eacbbd9f2e901611710591a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7419c803969062c3df016190932bb488928dd9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x755f34709e369d37c6fa52808ae84a32007d1155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7705422df101df86b16400fa0284902931848011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7979d8dd27cef4f0e39842b59abe1869ab6adbef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ab5661ad9de9a54ca05acfdc3fd21ae6f63fa6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b6f71c8b123b38aa8099e0098bec7fbc35b8a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dd4d0b7cbdd44ef5f53f8451719d6a7cc4696b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f6f06ea133bb0c7b5ea39c9ef42bd800df5a909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85f57e43c36da9f2bbe98204ba87d021f0f17723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86794a3b1ba051f1ae111e42365c32f9ac9098ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x891a23f3f2a2259d5f8fd30cba5fe8ee37e95390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x894d7aa0034c347be45f06bcb7db94c832a7cdbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cd6e29d3686d24d3c2018cee54621ea0f89313b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9464cc476ba3d73c7c4d3c429f8f34117c6f57d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94d5689757524da0fe979d0b960fb8757bd4c892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x965f605ba886d71871ad1e289275358e90a9f69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9779d08e000d5be40d57b8d0d9a3c20533b1605d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c084f9e6aaf6f3293123846464ad46a131e8a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ebacdd27a507cf8bea04d82fd9dc20a9c2c4381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3a6dd3d557d0d3a5f8493724e205d823bf8cac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7c1f2ba842153bbf7d22e8ce9bb3858c31f109d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa943fa1e5f7ab699462af268383e80441d98884a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa952371fbb2333283d1f6fbf17102bd2b0d3bee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa1b062f1919d4cdcb0610d89f55d421a8527ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab6d1937274f7b32e9bed34065e061dcba478f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafb7d8f8534694ff4bd03d9922f9d14996f01bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb233b8e779c7fbb6e2fb6be7e1eb43a20ce2e691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb25d469c4d2b3ab1a65584da37ea04339a897b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb67b85978e8a4b5738fa6b1b660eb3bacf272e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb78fbfe0af8a9f8dc7a388cff3f3638080624992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb5d806078ca47822d1e77114388dff9b653c908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1238bb1c1ea0a3ff6ad1d0bced54b55ab12f19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9ae8d91266eff9566fabd51375f06f1fa7d02f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca14caf9e8dd2793e7010fc48dfe6c6af8445136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xccf2e802848ac57ec1d087f50cc7b81965f8ad01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdb55733a48d48730d24e644d5e87dd7cf63a1c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2c0196c273448e72b70e309001c4dfbdd6d5a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4ef6910f31638614bacf027bae9b410990711ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd98897332266570c921534c89b369eda6b582a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddd66e2b3afcad1a9077a9a9fd881d33e8dae169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe19af670f990ba70da868bd1266c534944b06197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe36f6e8f21a60aed643d0e1f8dc2e7da9ed2eb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe583c4dc76d6fbfeeb53ef6d2bf0cae077fce4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedba57d8979c3dc23fa5fc063d07c10cc1ea3c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef6d734f16ff207cb4f86829a4b95f6358816c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef79a789d867a594689a4971c627c07dc0e1a884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0e406c49c63abf358030a299c0e00118c4c6ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2f1d8d8c00254ff7593a877fe034d6b15f72ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf30522f592649b3f371774f92a4a277589e67fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3bd6a8d974b40b3cc0a6dce747e7313736e6d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf97cb4687a0dcc799d9cdafb294d0fafc8defc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd2b3735caa6322acc9d096d60cdaa5c1fe79fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdfb4f10c88152d8adb3afd5cde6e29a68b84e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff59e8e27146914c904dc90feac6adacb81a0d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff9a029ead2a75d7e5b7e75469d9cd17121b3d50` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 122
- Live contracts: 0
- Unknown liveness contracts: 122
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=122

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x02c2668d5c82d3314211e3373d5673f5701bf109` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x04fb42a2443f15a8824491e5a27d68157bb045e4` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0dce06444dd8b553fc4148297c1be3204efbc7ac` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x124263873f7b946bce46398e41a576430529f248` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x16b8e664c25da9ecbedf1638506c0529820b9601` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x16fcb1e356ea4ce636de5f32b218ad87de5c8b79` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x183bf2eafae5be374a4df116e1c22c52e3bac2d1` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1c4de4ef2b515f62aee59bb4877cd24fc394927a` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1cb48bbc42a9a093a529d64afaae54a86d0a8782` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1dc95784db76de433287599a5e72131658b7873f` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1df89217a09d9d0d3ea42fef9bcb2dccac94a889` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2452d871c54ad7a67534ebe02ad259e2fbdacbe8` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x289f347ac469bc1b7359ed95c87c75ac2c3eb16f` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2b86f04b64b325e3762ed413f29094213af5a169` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c3849569f83d492199a4e0a0e39584d8b7e52ab` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c46ac8ab0a487e2062c8a9118c4b09cbb4d6a7b` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d67079c96d90150379fb7b49b21a30a2424d8ba` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2fab67e7b18b396ada42929d1af3861b7f70474e` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3095666bb0393f7ea894050129cf2741c83547ca` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30c9923196a3a9a46899e040c91e1a15585ddf53` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3133524babd022f4078c46ccadf1cdf88c79a120` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3221be45cb9ae935a6394b02a565459260e5a8cd` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33110495aff6b0e21c13d8b31cac3484e2b37723` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33c1fe593804c25f1ee9c14cf8189a561dcfb18f` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34787654cb39f9dd587f2aedd83faaaec9069408` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3b3f99e71af0daacf164176f79eaeaca94ba8aea` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3c0444261a3174e5ec03f792b301d3b1f48afe85` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3fba891e42851a58e9f7282a21228d25fae38802` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4523a56bc22cba0784e28ff63fb17e1cd9aa7c1a` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4859e670cbcf5d7c86d1c3b75e72aac18021bff9` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4cd29ed47aa9ae0b429134d4af49348897dad78d` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d71c4cac29413cd0bc130cc56f59a85c5854cea` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4fab027411662ccd119ed730ab9a9f1b01c89eb4` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x50aa0633779c2caddbcc9370646a0b14a87e20d3` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x552a45d54194ae85defb1b0e0f207b7ade06bdc1` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x56b46ebaa7a2b5705a9f30383e4ebb07f3ea64ef` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5e45c902bcd87944ffb360d8ddeff8656c7bd6fd` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f4fe05ae946145a61a2b4181198b2341e3d76af` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x60a17735410820614c1eb15288b16f3c0e33618d` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x630bc7dd0abfc2d196289ce09db947dd2cafae7c` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6760124f95a94e7d48f478bd82a4592233e6a509` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x681d7a221048122f8c0888ebf637ccf943186408` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x68df883715a12f085ffe54e90733a12c7c9c8128` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x695bf53c6124c0a7306115c1b194f37dd8fe08b5` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6bca4ec7cecdb1b07ef00771108a6a3f050c9994` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x70f52ca2265b06600fcb27fdf10daee681888dcb` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7162bb1313ecb038eacbbd9f2e901611710591a9` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7419c803969062c3df016190932bb488928dd9a9` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x755f34709e369d37c6fa52808ae84a32007d1155` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7705422df101df86b16400fa0284902931848011` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7979d8dd27cef4f0e39842b59abe1869ab6adbef` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7ab5661ad9de9a54ca05acfdc3fd21ae6f63fa6a` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7b6f71c8b123b38aa8099e0098bec7fbc35b8a13` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7dd4d0b7cbdd44ef5f53f8451719d6a7cc4696b4` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f6f06ea133bb0c7b5ea39c9ef42bd800df5a909` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x85f57e43c36da9f2bbe98204ba87d021f0f17723` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x86794a3b1ba051f1ae111e42365c32f9ac9098ee` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x891a23f3f2a2259d5f8fd30cba5fe8ee37e95390` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x894d7aa0034c347be45f06bcb7db94c832a7cdbb` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8cd6e29d3686d24d3c2018cee54621ea0f89313b` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9464cc476ba3d73c7c4d3c429f8f34117c6f57d1` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x94d5689757524da0fe979d0b960fb8757bd4c892` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x965f605ba886d71871ad1e289275358e90a9f69b` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9779d08e000d5be40d57b8d0d9a3c20533b1605d` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9c084f9e6aaf6f3293123846464ad46a131e8a8a` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ebacdd27a507cf8bea04d82fd9dc20a9c2c4381` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa3a6dd3d557d0d3a5f8493724e205d823bf8cac6` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa7c1f2ba842153bbf7d22e8ce9bb3858c31f109d` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa943fa1e5f7ab699462af268383e80441d98884a` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa952371fbb2333283d1f6fbf17102bd2b0d3bee3` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaa1b062f1919d4cdcb0610d89f55d421a8527ef7` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xab6d1937274f7b32e9bed34065e061dcba478f4e` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xafb7d8f8534694ff4bd03d9922f9d14996f01bbb` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb233b8e779c7fbb6e2fb6be7e1eb43a20ce2e691` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb25d469c4d2b3ab1a65584da37ea04339a897b54` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb67b85978e8a4b5738fa6b1b660eb3bacf272e40` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb78fbfe0af8a9f8dc7a388cff3f3638080624992` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb5d806078ca47822d1e77114388dff9b653c908` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc1238bb1c1ea0a3ff6ad1d0bced54b55ab12f19b` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc9ae8d91266eff9566fabd51375f06f1fa7d02f6` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca14caf9e8dd2793e7010fc48dfe6c6af8445136` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xccf2e802848ac57ec1d087f50cc7b81965f8ad01` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcdb55733a48d48730d24e644d5e87dd7cf63a1c2` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd2c0196c273448e72b70e309001c4dfbdd6d5a5a` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd4ef6910f31638614bacf027bae9b410990711ff` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd98897332266570c921534c89b369eda6b582a38` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xddd66e2b3afcad1a9077a9a9fd881d33e8dae169` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe19af670f990ba70da868bd1266c534944b06197` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe36f6e8f21a60aed643d0e1f8dc2e7da9ed2eb11` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe583c4dc76d6fbfeeb53ef6d2bf0cae077fce4e8` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xedba57d8979c3dc23fa5fc063d07c10cc1ea3c01` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xef6d734f16ff207cb4f86829a4b95f6358816c23` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xef79a789d867a594689a4971c627c07dc0e1a884` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf0e406c49c63abf358030a299c0e00118c4c6ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf2f1d8d8c00254ff7593a877fe034d6b15f72ffa` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf30522f592649b3f371774f92a4a277589e67fc8` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf3bd6a8d974b40b3cc0a6dce747e7313736e6d80` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf97cb4687a0dcc799d9cdafb294d0fafc8defc92` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfd2b3735caa6322acc9d096d60cdaa5c1fe79fe9` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfdfb4f10c88152d8adb3afd5cde6e29a68b84e11` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xff59e8e27146914c904dc90feac6adacb81a0d7e` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| bsc | unverified unclassified | UnnamedContract<br>`0xff9a029ead2a75d7e5b7e75469d9cd17121b3d50` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03d1e72765545729a035e909edd9371a405f77fb` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x085c12c601a602cdc0ea2ac9f66cad9cbe6c438d` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d7719cc9c60fc6118211f25e2adebbe698812a4` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x261c3af3cbbec0361f62d080b31c7d9331293e16` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34787654cb39f9dd587f2aedd83faaaec9069408` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x630bc7dd0abfc2d196289ce09db947dd2cafae7c` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64ce6baa1144e307c68af1a1fb2ecfe35a058052` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6758d4c4734ac7811358395a8e0c3832ba6ac624` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72d82a0708e75f1eca6b63e03aa86936393c6c36` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79c7ef95ad32dcd5ecadb231568bb03df7824815` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ae5e7d5f3cf1f9a28504e4dacb9e99d81943a68` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b6f71c8b123b38aa8099e0098bec7fbc35b8a13` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f6f06ea133bb0c7b5ea39c9ef42bd800df5a909` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c1627299f61389c0f4d140ec3ae1984bf12f671` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad089144d984e317c114ca0628b49cbb956dcb4f` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb41aacd703140e28e6ef74da3cf596511bc64e0f` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7f201352a953a340041e0a54a46c093bec4684a` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc707e0854da2d72c90a7453f8dc224dd937d7e82` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed2eee22c8d8a410b277a8c83026d19e53857122` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0e406c49c63abf358030a299c0e00118c4c6ba5` | non_address_book | unknown | unknown | unverified | n/a | `0x3250dabb584f7fea1bafaff6000ffbbd2f419a15` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/drive/folders/13gk5XzfJmCUyRCmoleWH47REUOyGc4yo](https://drive.google.com/drive/folders/13gk5XzfJmCUyRCmoleWH47REUOyGc4yo) | Code4rena | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20868] drive.google.com/drive/folders/13gk5XzfJmCUyRCmoleWH47REUOyGc4yo — no match: The provided text is a Google Drive listing of PDF files, not the actual audit report content. No contract names or audit details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 123 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [20868] drive.google.com/drive/folders/13gk5XzfJmCUyRCmoleWH47REUOyGc4yo

Fork inheritance lineage and inherited audits are included when available.
