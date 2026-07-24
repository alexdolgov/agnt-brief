# Agentic Audit Brief: Sky Lending

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Sky Lending (`maker`)
- Website: [https://app.sky.money/](https://app.sky.money/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 350 unique implementations (350 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Sky Lending in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Dai (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- DaiJoin (`0x9759a6ac90977b93b58547b4a71c78317f391a28`, chain 1)
- GemJoin (`0x2f0b23f53734252bda2277357e97e1517d6b042a`, chain 1)
- GemJoin (`0x3d0b1912b66114d4096f48a8cee3a56c231772ca`, chain 1)
- Spotter (`0x65c79fcb50ca1594b025960e539ed7a9a6d434a3`, chain 1)
- Vat (`0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 344 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 350 unique; 344 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 344
- Unique implementations: 350
- Raw deployments: 350
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Dai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388778 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ⚠️ Unaudited |
| DaiJoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388779 | `0x9759a6ac90977b93b58547b4a71c78317f391a28` | ⚠️ Unaudited |
| GemJoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388774 | `0x2f0b23f53734252bda2277357e97e1517d6b042a` | ⚠️ Unaudited |
| GemJoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388776 | `0x3d0b1912b66114d4096f48a8cee3a56c231772ca` | ⚠️ Unaudited |
| Spotter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388777 | `0x65c79fcb50ca1594b025960e539ed7a9a6d434a3` | ⚠️ Unaudited |
| Vat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388775 | `0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (344)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x004b750a71f1aa80150b18ecd510e6abf7e25480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00efe35880071c16832b3ad135885e7746adf889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01792e085cd935ffcf3046ee61cd4e45c3cb8cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0256c29e4f68dea65154e62dc098607913599ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02b3fa2bb8c17146187650a9879248a286404a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x034f643a42aa11fb67f403f3f0703198d4ac780e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b030b04ab614310f725ddb3f453fd2dacfbd74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03cba5da6c502aa574b65735a90c68a74ffcec62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x049e4d10c1b7280cfed5b0d990e39f9c54529a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ad28c7cace4dba6ab1bb2ec6519dfae1a5b796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04e76b7d4b585bcaaef8a2f032fa479456de4a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055353984cd0030530efd40c62c9112f33e0d6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0560328fdbf78edeba4ea13cfb1467e1fb44d2ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x057d35a858d6350d10f714785baf5c07703dbd4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0620d80ffb33742a58639ff1daffb6969ef68204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x065b863c43278321b6d78f19ca75c4f6d1f3c213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06895ea93547312da6a3285465f32e03c90865c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069b2fb501b6f16d1f5fe245b16f6993808f1008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0740c777941bc338f1230471dcd69d9198e575fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0780e9d22ed8c5108f92f0384d7de0bf98078aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ae5dfd28adf5e408316c01b43a7af0da0f38b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07cc6a7a14275a8e78483e82976459d27e89a2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07ee93aeea0a36fff2a9b95dd22bd6049ee54f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082c9b03a7f54aeb2c64c98f76ee3379b9acc306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a8ec3ceb616d4b99253977439c37894192e2237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa2ebfeaf69aac878ebeb763d8aea93d389d356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ac7bd7ae9d4eabe2c50400cd9c1af349deff495` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6032bee59b34786448d7147d3ba5138526cc9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1c8eb3e3bfd6cc829122478cd034bac5f5ca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d62918a63292f38bcf516226d47002c8364619f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f449ce32456fbd823b7ac5d162826cd34c48784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1152f27ec19397ccf471329f998d4c0425ce23e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11539dce2d28b4454ac7982e47e478db30264205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x117b9083cf19296472c6e8751d3296d4ce48296c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x127b47d30d293afe05f3e17e4966ed4109d4bb30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d34eab0fd1d1bf72918914fa3284abeed755b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d786b4e2a1e05af579107834202e37c51a6ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1610ccaf7a5b79f0467cbe9393a3f7acc944002e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f4c0acb65a9b9b1b98f8bad783f7ed8d8af74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1765d5fd35ad56a60163e424fd75c1baea638c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1863c0163bccfce8e979366f25db08f01bc052f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b4633d6e39870f398597f3c1ba8c4a41294966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1978da8325a6f41a5880cf76e38cd921aeb77a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a361b2b9a226c45b9267ccc1cb21dd5b30fc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5ee7c64cf874c735968e3a42fa13f1c03427f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7d50b73acf1d2b4073ca5f94890a3c05c01401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d51ca29e35b6ce30167f634dd21376da1341d9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f3229185e8f5759dcf85337552afd48795a4d38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb6e6edb8d6a35ba137c7a96b6fd2804635a8b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201c006c4556863533158855eca3878b28e6e85b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2099bc293bf63ce24fc606776627ba4982ac5078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x210851bfa22af6bbc08074f5ba4ec631b690c23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f33c95eda474832ad977c8a497bf97ea29d08a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22d94dc2cda95ae1f5ffbf7959683f9935c09e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23c800e375222693ed593d6308aec08116d980a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24fe4af7a96db316c0721be371fa1ec1d93991dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2546c3a50591b57f4fd328fc4ab10f84a9aa45b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2569023f9e39ed5987093da3b5409be363a85266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2600004fd1585f7270756ddc88ad9cfa10dd0428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x261086981fc6c57ef4679af6ac253c3755850362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x261cacc129fefbff9bff0a4d8e962a0a49a72bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fad8718270a5a146d681b6570a1564ec909d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2955e2a9a5c3d286517ca74d22a62f4f55da3264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29bd95ccb7ec9ae1704dac0bb72dd73d0d50d268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a35fa541a8481b3a05609f01096d546c26b4a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a3b28430b7b4a8ff90072cdd7ac892fb268f93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a7dec53b6ae8c1a48355296cd016cd7477d08c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2af6ef584c8937fbec4a8f50ae5ed1fe6c47bdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d76bb07626b52ed16114a02e080f597c45bedd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1f6062d9fb227069741e40f89186df222fb426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e278c5fb9231581f4284a253cc5728b6acd372d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fadcf4cd048dd77f821434a785a892181834c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30cfdb937e46e946b1038397f9cd6fa231b90863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32021687b5fa850db968769ec208f254f5738817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x322932b118a2ef29d8eafe380dfd1b7f3c41d328` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x333c0501182170c5002219380ded6b12c338e272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3417a5882fabcee3d1a461ef1a7b5102f8c1ef82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34247b933a0d0c4c9ddcd379f2730217a5f564f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f211c70dc1c4bce13dc08db3c0669871265221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f6bb84bcc8dd2fa157afd03491a053eabcf9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3526a5858aa91c058a7084ae8ab6d323d2baebb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365fb0e024fb179288e3d65c4aadf6f58c8ae114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a724bd100c39f0ea4d3a20f7097ee01a8ff573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36bccd28b0d1ea5d22685467075f9deb0f59f507` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373238337bfe1146fb49989fc222523f83081ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3778e388a5cf2778e0fe5fc6205738bece9cb99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7926b241355b66d66e4eeff2f33f452b2f8338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3deeb4f172f9474041c25c06c5eeb25df6c9c274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ec80729bd472987169485c2076ed0b71e0fa602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x403689148fa98a5a6fdcc0b984914ae968d788e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4249f949f7a57166bbe83dec59ddf64bea17c51e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x428b703efd0c3917ff0cd9955c60eeec7839f385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43aac7f1b47ff29d33dec14dcaa7901d1bb8c006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4447a29574e8ef8253fa26f04c724714c5e5e577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4454af7c8bb9463203b66c816220d41ed7837f44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f0a929889ec8cc2d5b8cd79ab55e3279945cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475f1a89c1ed844a08e8f6c50a00228b5e59e4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x483ce5db3e3438e16770bd887beb39221a02aae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48916a2b11fa7a895426eedf9acf2d70523b1677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aa05235b3b492e6892c7de733d372d84f5308ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4acdbe9dd0d00b36ec2050e805012b8fc9974f2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b46e37f032d0802291dd890acd941ac167ed61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bcd9b34560a383ffadedd4887e05bba3009080b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf6e7291dc01a41ec88a23d4921152e7d1e31d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d95a049d5b0b7d32058cd3f2163015747522e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dbe5f316b0694310cbcdcc7b5b20eb3ab6d9c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0232ce5224f2d77d76051b94e0e7d7895f8674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5f0933158569c026d617337614d00ee6589b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8834369f0767c6410034cd2f4d2bbc38e80458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff0258545528b01902d826368246f330eeabd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529b8b4b62b5f32bd47412988a0a66d72f86ba00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e5a089b8d64ab328dbd16b1aa7d92642a65daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54003dbf6ae6cba6ddae571ccdc34d834b44ab1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x569c1d105f08f685e023bb4fc6f69957e2401df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57843b34765a9bbbe9ca4234bd4b481a53ed077c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5887dc1a04eabcfb5c8cbc9882091669af129547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599dbc54fe460d8ac3bb571b10fe5461ddbe11fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0c7ced5e486b8e40dd5072d8161a8061cf7e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b79eeef441c55ff53eab84530f0711ba4edd190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9579b9a3255f7cdebd4ae335e0707f7f646615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e227ad1969ea493b43f840cff78d08a6fc17796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f941d0b8344f28e03132d0a09fc10b6b2c6740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610165592586dd351e124a6058542afb60afeaae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6157f64a2ceeeab76872ee384e4f26c9c8470aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618b9f83e7ae7bae6ed741c585e47a203fb7d3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61cc202c52c43d1a59c458431f5c43eae2666e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x624f4e1548f2e725a636da71b84ce6b778840c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x636242be41a84d49ee3d6401ea09dc645f522b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6374dcfc57bfd406addb546045a1cce61288b94d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x638242bac58698f619ef4dd966689f5cd0301f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63a4b95b50ed9fe6507002fbb45f2139137af934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64976c5b5062c56d91dafe661cb85dcf7e349c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a84e558192dd025f3a96775fee8fb530f27177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64de91f5a373cd4c28de3600cb34c7c6ce410c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656540aacf75b1c20da899fdf99f9a5865efa7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x658ec6a5d4d1cfd72d2baad14f8ad96fc2fcdd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68322ca1a9aeb8c1d610b5fc8a8920aa0fba423b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x683ee6fc52f014555b7d7e79d3c8984b51a81adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6897ecc2fe455a1cf2d3763fd75e1d282caff0f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x689e53009e695ec0f2dd15d47aeac9d9ed779a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6941df79ac5729c36debf73d0ae4f816c3759ac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x697f01f5e10c43f13fef9eb796f7670e9f5f616d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69be6c6abb7781fa731cc2f257a748efcd35fb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69ec6020ba47be01557605b53a5d56e6fd96ed8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a94dc9c2e4ae3a199d148e13682b1243999681e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8158d8e848d15ef0305221bb88569abfc5bc1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b872127c273e54e847c8b67e8a8bfe07b7f0553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bda13d43b7edd6cafe1f70fb98b5d40f61a1370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c42e62af5503bffdb7fe517f160d1c3a9edd885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6df6b05d7cde27eda97abde556e03c3fb04d5caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e2795467e070dd8b477300899b6d1c90f8ba822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e29817b2034862a12580908903da3c4373fd20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e38f59445efc88916c2318743aa841b7fccb3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6eeb68b2c7a918f36b78e2db80dcf279236ddfb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7013111f9eff306fc3712f40d9642ca484914e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7166ee2ecb2b4d6451d134a9da72b24e8c4087b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x718df12ebde73fb54b5946ef91c419ab56d7322f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72f7da16eafd000b65ec192f4889f141003fe0fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x733be463128228146485a7e1bf2ece72e91e51a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7382c066801e7acb2299ac8562847b9883f5cd3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7456695d6904c37f9fb3ab3e088d277c00f61c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a6a842bbf2a23e60dd1c57694b6e0c6f28d501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76416a4d5190d071bfed309861527431304aa14f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77223a5a1b31b029dbb8ccaba7304c8217695165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77b68899b99b686f415d074278a9a16b336085a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77bef2e8bb81bbc2535ae4846b225c58457348e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7852bbeadd2498889ed680eaac849633db7422d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78604eace67744c4a19fb84a4ef42dfe06e9f8b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a87acb1f92c50297239ef9b0ef9387105bd4fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af1cf2c29629fd4072b2a0b9be41a6ae8a8de22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aff9fc9fad225e3c88cda06bc56d8aca774bc57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b21c3ffe61ce504fc2494add0447162d6e031db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b540cf92de1b5697f3cc1dda39437027288c929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f07f426a0c1b400c17a4cb636c8ead7d1ed752f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6dcc6bce0ee6b057e4f33a9e34e24c63e37599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8067259ea630601f319fcce477977e55c6078c13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8123253ed418ac5e448f33c90a606d9e02841ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81576ca61608b9c591c7a1c279ced3b5e70922c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81fe72b5a8d1a857d176c3e7d5bd2679a9b85763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x822d49cc3e88897637697f0ccb569bf7acc06557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8269f07d159a5a2a39ba6b6deba0fde0d2f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ecd135dce65fbc6dbdd0e4237e0af93ffd5038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83076a2f42dc1925537165045c9fde9a4b71ad97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x842c99972150671f88fb78a95940ad9a7c2e81c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8487f0509e6d023fa2c4defcbf55e1a066722a22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8491862ae4109dfe98fc20e0dce7468e64cfc056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f2b4648990d93c0f478d5d82d3c38d98a4ee91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84f411093aed2e88e3d7f62a457cf77b3032ff2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x872c49c9e90e4ac7f84452ca52161fddc849246e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877fd5d58eed3c4804b9acd1458f0a6ee48c3ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8782289b33361ee1e207ba667e1be61a608956ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88d7b9c943220394b569bf8382609f06d9f55617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8afa02a56336202b9a0b1d451f2039d76da4e0be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4ce5dcbb01e0e1f0521cd8dcfb31b308e52c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b50dde72fa07205e0f8b9bb82b24c5efb931c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c9edffa39b7b65dee91e6bd3c7a32895dab0e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc0016a54fb4ce75c94339d2853f9e23d1f7273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cd9697e7143e4d059c5e09026bdea9d59b039be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5f3abc36da63142275202454c11237f47dd170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901473b80248e284caa2f056ba6d1e37a4403961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902f009d4de4a7828284b04b364dd43f00e51a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90365c14bd705d9115dadf1892fd3dbcfec6d906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90bb56053ef91129f94a2888dd468e3e72c2f8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91e556e3cb1e2842a0a3626a768b7e67199f7589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920f55f2b2188981a8a8965c3de0f343d668ce06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x920ff284ce06eef00082acb1e12617188c928f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92d31765f06728f9c83993dbc169cb8e23b779b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942e30879de5bae58aba51aa38fc18c4a37ea1a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94c19e029f5a1a115f3b99ad87da24d33e60a0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x956ecd6a9a9a0d84e8eb4e6baac09329e202e55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x962d55a5e43dc67b643c468b724271ca799aa468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966ab3b8d797cb874ab94e342f75b8d6548d3ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9713187b6d7c8d54ac041efdbac13d52c2120fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9885c81a6afafa98225673c165f04e6df6f96f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ab3ae47965ab3553075e8f86afc3fdfd705202f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bddb99625a711bf9bda237044924e34e8570f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c226cb68bb32a14693ac8015311513ab6b001e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c4adf4dd022e1f110ece0215b165656080b61bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c89c854f981801e50e363e0343386cfb893a7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d3ad15b44a909d4de00a81ea8e8c7d22c726825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e361d75bdbccd061ce01acc5265646c19778140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ef95251233e0586bf3b17f14d31e2a756454a0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f2944f631db13e98a2ec0e78c60416f5f321d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fef11c6bd14708b72fb9ce7da4af20f0bc72d32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0e99254a451eced7adf11142c5c643bb8013ca8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa191e578a6736167326d05c119ce0c90849e84b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa38a892975b6c3e45190fa517c4425b45203ec94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3fa69aa788b3e51c083347bc8fc4fcf06469dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4b041f7b7f78a3185b275628335a2bc90b99596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a786ef947b5c00d5fed8666c00f4aa841facdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6ea3b9c04b8a38ff5e224e7c3d6937ca44c0ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa710c994d03943d3f5346a9139c9a61363224c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa80e8158d69ea262c3f40e03228fd8455ae29036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85b2afcc7b75bd828df05346b23918f147c36f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8692c55aab501da3931df536ad4325f5af4a75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91b5ef93e6a0ac4ffa7bd573f167dd0357101cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9ee75d81d78c36c4163004e6cc7a988eec9433e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5683e6367867729e707fdbb53a9db836095c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad37fd42185ba63009177058208dd1be4b136e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae6edd381095e5c110a274ffc80871c72949795a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9478afb898a716e40203bdd695b3267bcd0bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9993f95b701d4deb4bd2e77ccfe8690a2b0b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45c64311127207643913fd83516f4a089c4e5fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4eb54af9cc7882df0121d26c5b97e802915abe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5327f25169fc2fea5afea721be90f3bfaf97ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5b06a16621616875a6c2637948bf98ea57c58fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c3db264d713f0f9675bdc5f6b7922c1cd5185a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5cca0f0b8fe5ae4a95043b713bb6e908c4daabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb80df2bf515cbef0e62b31ba67b288fd9cc164e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaa65281c2fa2baacb2cb550ba051525a480d3f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbab4fbea257abbfe84f4588d4eedc43656e46fc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb707072ea85b4d0eee181c77996a28c5241e2c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4f05709a02d134ae4c6f7c4849c18aa6595c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdd1af032a7d3ff453c27bce27a4b432e6f3621b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe23edc9807f6cc7207120dcf2f7ecc1577927e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe28735baafd8d438cedeb671717faf661565466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe350580fd440698dd7578c5977f73b2cc662f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe4f921cdfef2cf5080f9cf00cc2c14f1f96bd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe7e4e577fa5b7907df2c6cd4ea3f23c0b86c8cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbec282dc7d575f6ec230724a3902b816d9a808b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf29e40da385d83274ca3adfb5439adef7ae301c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf72da2bd84c5170618fbe5914b0eca9638d5eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc07d37964d1cdec72ddd8cfa380af1dcfa5381b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41c4759f67ff54c7a7314d155f40fc6504f5d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc456c0cfe0c288ffe1705896ad6cc2f9b677cb2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4be7f74ee3743bded8e0fa218ee5cf06397f472` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc687ad721f6dd1e08bf8bb1517fa95be93da962c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc725e52e55929366dfdf86ac4857ae272e8bf13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc73e0383f3aff3215e6f04b0331d58cecf0ab849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7e8cd72bdee38865b4f5615956ef47ce1a7e5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc907305be32123aebd8ccf1fe84791f17b2abd6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc96f5e6590fab6fd280e56b4c4433e242bfef5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9a7a6e2c27c663a40ed65b58d0e4dd69cfe632f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3b2e6006c996ee361b6ea6505226a463390b52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb0e6b2ad5f6f53157bc710d23917508da6e2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd5c1a2423256ddc29510ed83d057de6586627d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd989b68d99ddda02c6a58b1b3985962f4d59e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcef92c70a2eaad20cb500e128037724462fef6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0fa7fadcfcef8c211f73cc52eb46700a387e08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf930fb04a9514a3468e041c50cc4721f2d29b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0dd71814cc2185c3092a477217c9d64e7f3a38e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd17abf984740145db4b3d61559eebe2170a3d6da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1f8f69f89bbb70a95968821d08c829959054aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd24fbbb4497ad32308bda735683b55499ddc2cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27a5f3416d8791fc238c148c93630d9e3c882e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36df11cf6855b616a36eadbcf9290f7953d90fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3757287bf2db4eaf5150299ce57061681eb4cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3abc8238a18331763e08b2f0c8fbbd0e3a766e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59fa5bad750d78f121422cce026bb868194adc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74cc5fce54b1797f688e4f6a5681006fc077bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd77ad957fcf536d13a17f5d1fffa3987f83376cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7af2871024fad053c0242ba4c69793ae7b94015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd886dc2d36cfb6657ce70139112e9f80b0f071af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9d3274595436980ef66d714cd81d8f235514dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb20f2e864bfb7658ae78383d55ad4b488851fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb7d2557be1aaad888ba6a401adbf08f95b4511c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc202ba51f3b8f2ba1986832993af29d6980d2cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd4aa99077c5e976afc22060eeafbbd1ba34eae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde1069b89b246201d57aa5c3143c1433733847e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde9457b0ad731db06e5830d2497bfbe7bfbc6b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdedd12bcb045c02b2fe11031c2b269bcde457410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfda046b60be09aeeffe15a5125606bb63840d0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe02db86b72be0d0f8da9dcf32d3cb66f1a85b4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0f30cb149faadc7247e953746be9bbbb6b5751f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe32c45e8312818a271c94ee9ba828ed512e38dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4a37b878919ed3b3a63a9b0666a2a95b83ad7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4b22d484958e582098a98229a24e8a43801b674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5401e2658edaa2f69d737e4e3ad423baa478c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f57f5bf520c96f98571f910e74569ed265120f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82a8053602180dc9ea708cee5200fd931cfc169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe865e6e81394238f0ba5c91a1d5486e781a03a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b6f2f91aa88f1b9c36267f8fa2e49054976fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8ccac37e45a0cc6ad65999a71c0af7d1fb06209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb19d801221384d20b842d04891e47df09aab911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedcbe799f1b7f5155f9435401d99d6f594106b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0d5cb66c33d9858670412e3dfa09d9759de5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee13831ca96d191b688a670d47173694ba98f1e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8f2469268464a912c311de09e352b9e9132c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0ffd597e45ecf511957892355402957321b396a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf132619f3aa8fc35b256c089097e91a0c2b3902a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf15ca840ac8bb8f4c0670b335e5cedf0a0af4f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf185d0682d50819263941e5f4eacc763cc5c6c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf204fdf9dac645a463777000d3e3a8b0a41c82fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf238e4665da058275d11c75e9548aa65a96e03b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf267efdda842539a2caff990259395188a86b813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28d718656aa38607eadaac974e79ede986ac226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2fb8463cc55137a9a05b5f3d6af4d729173a2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf36b79bd4c0904a5f350f1e4f776b81208c13069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf44113760c4f70afeeb412c63bc713b13e6e202e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4771e43b24fa7d7f16c419f1e62a98da00d8be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf67de12cab72a3f3a2ece4caa99c53eb0ddff75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf69796cc997380ea96f9b7320caeef7aeb71e58b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8085d74ad616d48c225f3812a610f5cd5f676da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf880d43bb9a32dd212c77b82a7336be31ecaee08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e4362e2411dd6a64df500967fd258e450953d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbf89b7ed68081cb040e15cf07064c7378f5d73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcd64760ed7fa34fafa09d87927a9b8dd83d0470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfced114adfaea7959b58b2aaa8b94920fbb2427f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd34e2c588a519f173d54be539a56fed4830ba53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdaeb1d201e91c885d9597f901c056d8b29a91b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfddeef69f5961c73ff80a1356a49a504969ba659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe622cb3424dbbadf933d56208eb487fb16eabdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7bb16c5767694c767422912b516d9c8e94e392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd852569b533a64a5f1457a8561509b8ca900cc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 344
- Live contracts: 0
- Unknown liveness contracts: 344
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=344

Showing first 200 of 344 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x004b750a71f1aa80150b18ecd510e6abf7e25480` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x00efe35880071c16832b3ad135885e7746adf889` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01792e085cd935ffcf3046ee61cd4e45c3cb8cd8` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0256c29e4f68dea65154e62dc098607913599ad5` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02b3fa2bb8c17146187650a9879248a286404a83` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x034f643a42aa11fb67f403f3f0703198d4ac780e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03b030b04ab614310f725ddb3f453fd2dacfbd74` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03cba5da6c502aa574b65735a90c68a74ffcec62` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x049e4d10c1b7280cfed5b0d990e39f9c54529a32` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04ad28c7cace4dba6ab1bb2ec6519dfae1a5b796` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04e76b7d4b585bcaaef8a2f032fa479456de4a6f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x055353984cd0030530efd40c62c9112f33e0d6e5` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0560328fdbf78edeba4ea13cfb1467e1fb44d2ed` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x057d35a858d6350d10f714785baf5c07703dbd4c` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0620d80ffb33742a58639ff1daffb6969ef68204` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x065b863c43278321b6d78f19ca75c4f6d1f3c213` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06895ea93547312da6a3285465f32e03c90865c4` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x069b2fb501b6f16d1f5fe245b16f6993808f1008` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0740c777941bc338f1230471dcd69d9198e575fc` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0780e9d22ed8c5108f92f0384d7de0bf98078aab` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07ae5dfd28adf5e408316c01b43a7af0da0f38b1` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07cc6a7a14275a8e78483e82976459d27e89a2c6` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07ee93aeea0a36fff2a9b95dd22bd6049ee54f26` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x082c9b03a7f54aeb2c64c98f76ee3379b9acc306` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a8ec3ceb616d4b99253977439c37894192e2237` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0aa2ebfeaf69aac878ebeb763d8aea93d389d356` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ac7bd7ae9d4eabe2c50400cd9c1af349deff495` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c6032bee59b34786448d7147d3ba5138526cc9a` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ca1c8eb3e3bfd6cc829122478cd034bac5f5ca9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d62918a63292f38bcf516226d47002c8364619f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f449ce32456fbd823b7ac5d162826cd34c48784` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1152f27ec19397ccf471329f998d4c0425ce23e8` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x11539dce2d28b4454ac7982e47e478db30264205` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x117b9083cf19296472c6e8751d3296d4ce48296c` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x127b47d30d293afe05f3e17e4966ed4109d4bb30` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15d34eab0fd1d1bf72918914fa3284abeed755b7` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15d786b4e2a1e05af579107834202e37c51a6ce6` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1610ccaf7a5b79f0467cbe9393a3f7acc944002e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16f4c0acb65a9b9b1b98f8bad783f7ed8d8af74d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1765d5fd35ad56a60163e424fd75c1baea638c6a` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1863c0163bccfce8e979366f25db08f01bc052f1` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18b4633d6e39870f398597f3c1ba8c4a41294966` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1978da8325a6f41a5880cf76e38cd921aeb77a8b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19a361b2b9a226c45b9267ccc1cb21dd5b30fc3e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a5ee7c64cf874c735968e3a42fa13f1c03427f9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a7d50b73acf1d2b4073ca5f94890a3c05c01401` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d51ca29e35b6ce30167f634dd21376da1341d9b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1f3229185e8f5759dcf85337552afd48795a4d38` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fb6e6edb8d6a35ba137c7a96b6fd2804635a8b9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x201c006c4556863533158855eca3878b28e6e85b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2099bc293bf63ce24fc606776627ba4982ac5078` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x210851bfa22af6bbc08074f5ba4ec631b690c23f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21f33c95eda474832ad977c8a497bf97ea29d08a` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22d94dc2cda95ae1f5ffbf7959683f9935c09e95` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23c800e375222693ed593d6308aec08116d980a1` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24fe4af7a96db316c0721be371fa1ec1d93991dd` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2546c3a50591b57f4fd328fc4ab10f84a9aa45b6` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2569023f9e39ed5987093da3b5409be363a85266` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2600004fd1585f7270756ddc88ad9cfa10dd0428` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x261086981fc6c57ef4679af6ac253c3755850362` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x261cacc129fefbff9bff0a4d8e962a0a49a72bdc` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26fad8718270a5a146d681b6570a1564ec909d80` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2955e2a9a5c3d286517ca74d22a62f4f55da3264` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29bd95ccb7ec9ae1704dac0bb72dd73d0d50d268` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a35fa541a8481b3a05609f01096d546c26b4a2d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a3b28430b7b4a8ff90072cdd7ac892fb268f93d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a7dec53b6ae8c1a48355296cd016cd7477d08c0` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2af6ef584c8937fbec4a8f50ae5ed1fe6c47bdc6` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d76bb07626b52ed16114a02e080f597c45bedd1` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e1f6062d9fb227069741e40f89186df222fb426` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e278c5fb9231581f4284a253cc5728b6acd372d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fadcf4cd048dd77f821434a785a892181834c8b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30cfdb937e46e946b1038397f9cd6fa231b90863` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32021687b5fa850db968769ec208f254f5738817` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x322932b118a2ef29d8eafe380dfd1b7f3c41d328` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x333c0501182170c5002219380ded6b12c338e272` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3417a5882fabcee3d1a461ef1a7b5102f8c1ef82` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34247b933a0d0c4c9ddcd379f2730217a5f564f3` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34f211c70dc1c4bce13dc08db3c0669871265221` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34f6bb84bcc8dd2fa157afd03491a053eabcf9dc` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3526a5858aa91c058a7084ae8ab6d323d2baebb8` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x365fb0e024fb179288e3d65c4aadf6f58c8ae114` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36a724bd100c39f0ea4d3a20f7097ee01a8ff573` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36bccd28b0d1ea5d22685467075f9deb0f59f507` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x373238337bfe1146fb49989fc222523f83081ddb` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3778e388a5cf2778e0fe5fc6205738bece9cb99d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c7926b241355b66d66e4eeff2f33f452b2f8338` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3deeb4f172f9474041c25c06c5eeb25df6c9c274` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ec80729bd472987169485c2076ed0b71e0fa602` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x403689148fa98a5a6fdcc0b984914ae968d788e5` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4249f949f7a57166bbe83dec59ddf64bea17c51e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x428b703efd0c3917ff0cd9955c60eeec7839f385` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43aac7f1b47ff29d33dec14dcaa7901d1bb8c006` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4447a29574e8ef8253fa26f04c724714c5e5e577` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4454af7c8bb9463203b66c816220d41ed7837f44` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45f0a929889ec8cc2d5b8cd79ab55e3279945cde` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x475f1a89c1ed844a08e8f6c50a00228b5e59e4a9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x483ce5db3e3438e16770bd887beb39221a02aae3` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48916a2b11fa7a895426eedf9acf2d70523b1677` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4aa05235b3b492e6892c7de733d372d84f5308ac` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4acdbe9dd0d00b36ec2050e805012b8fc9974f2b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b46e37f032d0802291dd890acd941ac167ed61d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bcd9b34560a383ffadedd4887e05bba3009080b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bf6e7291dc01a41ec88a23d4921152e7d1e31d4` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d95a049d5b0b7d32058cd3f2163015747522e99` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4dbe5f316b0694310cbcdcc7b5b20eb3ab6d9c58` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f0232ce5224f2d77d76051b94e0e7d7895f8674` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f5f0933158569c026d617337614d00ee6589b6e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f8834369f0767c6410034cd2f4d2bbc38e80458` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ff0258545528b01902d826368246f330eeabd2c` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x529b8b4b62b5f32bd47412988a0a66d72f86ba00` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53e5a089b8d64ab328dbd16b1aa7d92642a65daa` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54003dbf6ae6cba6ddae571ccdc34d834b44ab1e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x569c1d105f08f685e023bb4fc6f69957e2401df8` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x57843b34765a9bbbe9ca4234bd4b481a53ed077c` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5887dc1a04eabcfb5c8cbc9882091669af129547` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x599dbc54fe460d8ac3bb571b10fe5461ddbe11fc` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b0c7ced5e486b8e40dd5072d8161a8061cf7e3b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b79eeef441c55ff53eab84530f0711ba4edd190` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b9579b9a3255f7cdebd4ae335e0707f7f646615` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e227ad1969ea493b43f840cff78d08a6fc17796` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60f941d0b8344f28e03132d0a09fc10b6b2c6740` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x610165592586dd351e124a6058542afb60afeaae` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6157f64a2ceeeab76872ee384e4f26c9c8470aa4` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x618b9f83e7ae7bae6ed741c585e47a203fb7d3af` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61cc202c52c43d1a59c458431f5c43eae2666e34` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x624f4e1548f2e725a636da71b84ce6b778840c00` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x636242be41a84d49ee3d6401ea09dc645f522b35` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6374dcfc57bfd406addb546045a1cce61288b94d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x638242bac58698f619ef4dd966689f5cd0301f12` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63a4b95b50ed9fe6507002fbb45f2139137af934` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64976c5b5062c56d91dafe661cb85dcf7e349c9d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64a84e558192dd025f3a96775fee8fb530f27177` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64de91f5a373cd4c28de3600cb34c7c6ce410c85` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x656540aacf75b1c20da899fdf99f9a5865efa7bd` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x658ec6a5d4d1cfd72d2baad14f8ad96fc2fcdd51` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68322ca1a9aeb8c1d610b5fc8a8920aa0fba423b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x683ee6fc52f014555b7d7e79d3c8984b51a81adf` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6897ecc2fe455a1cf2d3763fd75e1d282caff0f2` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x689e53009e695ec0f2dd15d47aeac9d9ed779a34` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6941df79ac5729c36debf73d0ae4f816c3759ac1` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x697f01f5e10c43f13fef9eb796f7670e9f5f616d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69be6c6abb7781fa731cc2f257a748efcd35fb59` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69ec6020ba47be01557605b53a5d56e6fd96ed8c` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a94dc9c2e4ae3a199d148e13682b1243999681e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b8158d8e848d15ef0305221bb88569abfc5bc1c` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b872127c273e54e847c8b67e8a8bfe07b7f0553` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bda13d43b7edd6cafe1f70fb98b5d40f61a1370` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c42e62af5503bffdb7fe517f160d1c3a9edd885` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6df6b05d7cde27eda97abde556e03c3fb04d5caf` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e2795467e070dd8b477300899b6d1c90f8ba822` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e29817b2034862a12580908903da3c4373fd20d` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e38f59445efc88916c2318743aa841b7fccb3bd` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6eeb68b2c7a918f36b78e2db80dcf279236ddfb8` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7013111f9eff306fc3712f40d9642ca484914e47` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7166ee2ecb2b4d6451d134a9da72b24e8c4087b8` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x718df12ebde73fb54b5946ef91c419ab56d7322f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72f7da16eafd000b65ec192f4889f141003fe0fc` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x733be463128228146485a7e1bf2ece72e91e51a4` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7382c066801e7acb2299ac8562847b9883f5cd3c` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7456695d6904c37f9fb3ab3e088d277c00f61c58` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75a6a842bbf2a23e60dd1c57694b6e0c6f28d501` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76416a4d5190d071bfed309861527431304aa14f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77223a5a1b31b029dbb8ccaba7304c8217695165` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77b68899b99b686f415d074278a9a16b336085a0` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77bef2e8bb81bbc2535ae4846b225c58457348e6` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7852bbeadd2498889ed680eaac849633db7422d9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78604eace67744c4a19fb84a4ef42dfe06e9f8b4` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a87acb1f92c50297239ef9b0ef9387105bd4fc5` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7af1cf2c29629fd4072b2a0b9be41a6ae8a8de22` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7aff9fc9fad225e3c88cda06bc56d8aca774bc57` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b21c3ffe61ce504fc2494add0447162d6e031db` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b540cf92de1b5697f3cc1dda39437027288c929` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f07f426a0c1b400c17a4cb636c8ead7d1ed752f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f6dcc6bce0ee6b057e4f33a9e34e24c63e37599` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8067259ea630601f319fcce477977e55c6078c13` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8123253ed418ac5e448f33c90a606d9e02841ec3` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81576ca61608b9c591c7a1c279ced3b5e70922c4` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81fe72b5a8d1a857d176c3e7d5bd2679a9b85763` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x822d49cc3e88897637697f0ccb569bf7acc06557` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8269f07d159a5a2a39ba6b6deba0fde0d2f8bca4` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82ecd135dce65fbc6dbdd0e4237e0af93ffd5038` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83076a2f42dc1925537165045c9fde9a4b71ad97` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x842c99972150671f88fb78a95940ad9a7c2e81c9` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8487f0509e6d023fa2c4defcbf55e1a066722a22` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8491862ae4109dfe98fc20e0dce7468e64cfc056` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84f2b4648990d93c0f478d5d82d3c38d98a4ee91` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84f411093aed2e88e3d7f62a457cf77b3032ff2b` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x872c49c9e90e4ac7f84452ca52161fddc849246e` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x877fd5d58eed3c4804b9acd1458f0a6ee48c3ec7` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8782289b33361ee1e207ba667e1be61a608956ab` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x88d7b9c943220394b569bf8382609f06d9f55617` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8afa02a56336202b9a0b1d451f2039d76da4e0be` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b4ce5dcbb01e0e1f0521cd8dcfb31b308e52c24` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b50dde72fa07205e0f8b9bb82b24c5efb931c44` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c9edffa39b7b65dee91e6bd3c7a32895dab0e2f` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cc0016a54fb4ce75c94339d2853f9e23d1f7273` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cd9697e7143e4d059c5e09026bdea9d59b039be` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e5f3abc36da63142275202454c11237f47dd170` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x901473b80248e284caa2f056ba6d1e37a4403961` | non_address_book | unknown | unknown | unverified | n/a | `0xddb108893104de4e1c6d0e47c42237db4e617acc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 350 |

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
