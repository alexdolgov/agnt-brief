# Agentic Audit Brief: Biswap

⚠️ Lifecycle status: DEAD - TVL dropped 10.1% over 90 days

## Project Overview

- Project: Biswap (`biswap`)
- Website: [https://biswap.org](https://biswap.org)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:53:07.488Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 85 unique implementations (137 raw deployments)
- DeFi Llama TVL: $5,058,526.00
- On-chain TVL (included contracts): $225,800.18
- TVL by chain: Bsc $225,800.18

## Project Description

Dexs. Structurally: 17 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 6 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 218; live-surface contracts included: 137 (60 live, 77 unknown).
- Excluded by liveness: 81 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 85 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 85
- Raw deployments: 137
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $225,800.18
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $225,800.18 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BSWToken | token | bsc | n/a | [`0x965f527d9159dce6288a2219db51fc6eef120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | ⚠️ Unaudited |
| autoBsw | unknown | bsc | n/a | [`0x97a16ff6fd63a46bf973671762a39f3780cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | ⚠️ Unaudited |
| BiswapFactory | registry | bsc | n/a | [`0x858e3312ed3a876947ea49d572a7c42de08af7ee`](./contracts/bsc-56/0x858e3312ed3a876947ea49d572a7c42de08af7ee/) | ⚠️ Unaudited |
| BiswapRouter02 | adapter | bsc | n/a | [`0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | ⚠️ Unaudited |
| InterchainToken | token | ethereum | n/a | [`0x66e09ec17629574a0cc8abc480b0c2572fcd6985`](./contracts/ethereum-1/0x66e09ec17629574a0cc8abc480b0c2572fcd6985/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0xdbc1a13490deef9c3c12b44fe77b503c1b061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 53 deployments: bsc [`0x00a142210f6b3bb3f78751dcd7b589e9e7b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/); bsc `0x00d2d8352fb688d8d60ae128cb171ef2ecfff1d4`; bsc `0x015c8be8d944b0190a8c7280ca874169713a44c1`; bsc `0x0189521e47093a317568055452ff66ebd3b731a9`; bsc `0x0999758d218987296c798326a0378995340c1e1b`; bsc `0x0c1e98645a1ee7f7a72e7491d77ae39676e457c9`; bsc `0x109eaa8b5ea469fb5ace0647a93695d8dcd5e836`; bsc `0x12e5b44374d4cc032800f87af9c3671ba2d93c3f`; bsc `0x13e9031133e901d5214fb4d593df8ecc034c8237`; bsc `0x1c3c5c8f97cad892a71ad090b5f8a161e4661492`; bsc `0x1f337dea1679730906f46a06fd6034054bd32970`; bsc `0x2792ccd3f02a22beba49f28f3ab0b52df18bd280`; bsc `0x2968daed4da7f9fa3edb63bf64b1c924aead6a46`; bsc `0x36fc9ceadab79156e39f164cc7f7fe987128860f`; bsc `0x50945a039421ebb59ed119b0d25ffd007f0358ac`; bsc `0x53c60a2a4154065111119ebc78265dcac7bd9891`; bsc `0x62cfcc37ec021bd245e8307e839d62b30d258373`; bsc `0x66ac2add22e63fa351344430b942b9368dd955ae`; bsc `0x69c4c9cf979431da6c4b4a2f3874e6378dfc8157`; bsc `0x7468aff7cff81ec2391b73e91cfda3a68833bebd`; bsc `0x7517c3d01e931062b7cb2155ccc75e5b29358dc6`; bsc `0x7951bc4f2bee7a642a8b3cf7d34c398e8e6fafc0`; bsc `0x81af4b68bca0b5a631e60aa69f678a0e0ebc5d61`; bsc `0x85028191179610cf7fcb780d0431921409de5bbb`; bsc `0x8b10e6959f2915f532fe142b9c53b167eec42ff4`; bsc `0x8d87f0282218f9e6fcdb5567c506f97d44105e71`; bsc `0x8ddfcdca3019518feb2a06d42748869b2c916f2d`; bsc `0x973304a8e7b13dc9a26769e85d7cc945f4fda649`; bsc `0x994f7b32eea35ade9b8bfd3cef19e9b6efe0cb24`; bsc `0x9b0111326b87d4ff67542c5a5fd719e506892c03`; bsc `0x9b9f3f1112e74765518ce93b1489c70f6db52bff`; bsc `0xa394dd5adc4aaf41aa1f9cff28158a6af2823459`; bsc `0xaa2b37d023ffa244022a9aa60eeb351cc79fd4e5`; bsc `0xab4592fc5a7f4f0f1829338a2dc85b4ad28a4784`; bsc `0xacb2f1d90bd3d182bdc9b9fce799efbe18e496f2`; bsc `0xb12c5543a277bd3c6190753474db4e04412f57b6`; bsc `0xc506769a21ecccd719c89fc44e31b1ecdc81e920`; bsc `0xc7ba45cb131c93816fa03e4c03da22b22f2ac468`; bsc `0xcc1b012ad72736653e1e5043d902a4081f3f6a73`; bsc `0xd4855892a3188da76da0066b9e4918939511e67a`; bsc `0xd59227c5fb89e812c42a5ed12c71de83dc5f3161`; bsc `0xe018d66f21c6f2ac93b652428df9d1755401831d`; bsc `0xe056fb8ce6a3437530b1aff799185a009b25990b`; bsc `0xe42d17b1a734e04d2e0cb33234ab074e21c175a7`; bsc `0xe6c58b1626c2960d334c7996c999450d6dcb9cc5`; bsc `0xe737edf3de0ace760d5497610ef2f317a43673a8`; bsc `0xeb81346e00aba3d5b90ad42c1f02bd3c200540b7`; bsc `0xeeee294dcad6fe1f213988b82f45718d95d8e193`; bsc `0xf31f62a6afb0546771a821e0f98fd187ee7f7d4c`; bsc `0xf4540b8dd7b957ca9b1acdbf75ec6b6f17950f0d`; bsc `0xf54c23398fdbd72ab1d1708099d5faad84cd9ff1`; bsc `0xf62e2321b04248a381bbac9ed2ac788775d1c899`; bsc `0xfd6820eca12a8dd9e92b1bbb7dfc9f4afa367275` | ⚠️ Unaudited |
| SmartRouter | adapter | bsc | n/a | [`0x0eb6949e725a295ecb3beacfc3766610bc970bef`](./contracts/bsc-56/0x0eb6949e725a295ecb3beacfc3766610bc970bef/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xa6fa4115f9c6b3aca9454df84b43deb7fe389019) | proxy | bsc | n/a | `0xa6fa4115f9c6b3aca9454df84b43deb7fe389019` | ❓ Unverified |
| Proxy (impl: 0xe45d08a10f253c9541c7612a9a70411e4c15dff9) | proxy | bsc | n/a | `0xe45d08a10f253c9541c7612a9a70411e4c15dff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08a9a13701b7afbde6716d10a57989a9533e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e2ab69b12b2d5036ea00c04ee213f8792f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41a9873b1f172696739b74dd0b9ccf976fd4c735` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46cdaef2b21d78466dc6b82e688844ddc037c397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62dade2a1ed0c0574351fb7558edcb99c8f97392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x633b38a9f24bd5b5cd7db18b599b56d76ded304a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c7f1a28c64e09671bee2554e2bf40548bc7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x735cb0bde6376b601c63396da6a6d96868eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b190fb0778a5d56293c7ac591cdfff6700ebc53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7be5186038cf6fc3a0b3c90548208fb55b4644dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d882ff190243392a513050ef33fa0cdb90772a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8277f64fd5784325c29126518171d05298ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87737e1bdd5eb96babf9ee29c747e947825f9815` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9819339f6806a9c6c798bc2d09a309f693ac783d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e575acc1961107c5a08eb45d5b64b6ead8a9bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa75821b415d77147be7c81828171e00cca97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb535e0a88912fa434304e072ae1f1cb5bc814798` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbf7df531fbe173d554ea9cbc03f54eb0f3392fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcae1baf379cad0b8fb57d18cae3625adb983d8ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8e94b36c999e471e008cfeb6c8be92fca4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2a99ca15082dad5adfbbd3b5f976ed94e92143d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ef706bb5dc297001f24f08c06fba466ab1f1be6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36df8aac648661b0ad064019a913bf0de4662f5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b53aa80dd213f430007fa81995aadf7ee1bd4ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d175f2cfe3e2215c1b55865b07787b751cedd36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5995fbce50d945f3fc0f9a97a72113da430c041c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x601cc4c85eb692b9067c51f3ce32447955a79d22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6073625aabce27372b97b57529dd05c2bd4bcb94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x924c26737c083cb1f067efbfdda97251da55a7fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac3422a7b4f3cfd051a4de26fdd4c2f9c189076c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf0a362a96d6e2585160db5bf31c6b8601cbb968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc48aa997f9f382c6c056b3cf1217586cdf36c596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f6f5dcaccd7866ea57128c56a853fdc5fb5302` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd772e674cf83f2908cf03f72609277f88f20f60c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x003fb442f88c7e4eed5266bad08da4a3bb7508e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08a9a13701b7afbde6716d10a57989a9533e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e2ab69b12b2d5036ea00c04ee213f8792f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x41a9873b1f172696739b74dd0b9ccf976fd4c735` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46cdaef2b21d78466dc6b82e688844ddc037c397` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62dade2a1ed0c0574351fb7558edcb99c8f97392` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x633b38a9f24bd5b5cd7db18b599b56d76ded304a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c7f1a28c64e09671bee2554e2bf40548bc7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x735cb0bde6376b601c63396da6a6d96868eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7be5186038cf6fc3a0b3c90548208fb55b4644dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d882ff190243392a513050ef33fa0cdb90772a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8277f64fd5784325c29126518171d05298ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87737e1bdd5eb96babf9ee29c747e947825f9815` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9819339f6806a9c6c798bc2d09a309f693ac783d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa75821b415d77147be7c81828171e00cca97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb535e0a88912fa434304e072ae1f1cb5bc814798` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbf7df531fbe173d554ea9cbc03f54eb0f3392fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcae1baf379cad0b8fb57d18cae3625adb983d8ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8e94b36c999e471e008cfeb6c8be92fca4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2a99ca15082dad5adfbbd3b5f976ed94e92143d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08a9a13701b7afbde6716d10a57989a9533e0cfd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e2ab69b12b2d5036ea00c04ee213f8792f2eaf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x293d67d0b7f8f8231c6821cabcd928853a009f7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x41a9873b1f172696739b74dd0b9ccf976fd4c735` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46cdaef2b21d78466dc6b82e688844ddc037c397` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62dade2a1ed0c0574351fb7558edcb99c8f97392` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x633b38a9f24bd5b5cd7db18b599b56d76ded304a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c7f1a28c64e09671bee2554e2bf40548bc7fe1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x735cb0bde6376b601c63396da6a6d96868eb2ae3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b190fb0778a5d56293c7ac591cdfff6700ebc53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7be5186038cf6fc3a0b3c90548208fb55b4644dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d882ff190243392a513050ef33fa0cdb90772a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8277f64fd5784325c29126518171d05298ec86a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87737e1bdd5eb96babf9ee29c747e947825f9815` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9819339f6806a9c6c798bc2d09a309f693ac783d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa75821b415d77147be7c81828171e00cca97bbc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb535e0a88912fa434304e072ae1f1cb5bc814798` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbf7df531fbe173d554ea9cbc03f54eb0f3392fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcae1baf379cad0b8fb57d18cae3625adb983d8ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8e94b36c999e471e008cfeb6c8be92fca4ec6b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2a99ca15082dad5adfbbd3b5f976ed94e92143d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/biswap](https://skynet.certik.com/projects/biswap) | CertiK | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x965f527d9159dce6288a2219db51fc6eef120dd1`](./contracts/bsc-56/0x965f527d9159dce6288a2219db51fc6eef120dd1/) | BSWToken | token | $225,800.18 | Verified native implementation with $225,800.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x97a16ff6fd63a46bf973671762a39f3780cda73d`](./contracts/bsc-56/0x97a16ff6fd63a46bf973671762a39f3780cda73d/) | autoBsw | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x858e3312ed3a876947ea49d572a7c42de08af7ee`](./contracts/bsc-56/0x858e3312ed3a876947ea49d572a7c42de08af7ee/) | BiswapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8`](./contracts/bsc-56/0x3a6d8ca21d1cf76f653a67577fa0d27453350dd8/) | BiswapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdbc1a13490deef9c3c12b44fe77b503c1b061739`](./contracts/bsc-56/0xdbc1a13490deef9c3c12b44fe77b503c1b061739/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00a142210f6b3bb3f78751dcd7b589e9e7b39346`](./contracts/bsc-56/0x00a142210f6b3bb3f78751dcd7b589e9e7b39346/) | SmartChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eb6949e725a295ecb3beacfc3766610bc970bef`](./contracts/bsc-56/0x0eb6949e725a295ecb3beacfc3766610bc970bef/) | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 59 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2417] skynet.certik.com/projects/biswap

Fork inheritance lineage and inherited audits are included when available.
