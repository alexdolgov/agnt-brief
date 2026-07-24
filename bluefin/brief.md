# Agentic Audit Brief: Bluefin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Bluefin (`bluefin`)
- Website: [https://bluefin.io](https://bluefin.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum
- Contract surface: 186 unique implementations (186 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $26,028,155.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Bluefin in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 186 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 184
- Unique implementations: 186
- Raw deployments: 186
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-127231 | `0x2b4b5e5dffcde417ead8253cf6a117836a00fc53` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | unit-127232 | `0x01a4acf737ea3b786cb8ace16ca95e1bef6090f6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (184)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02ce34274a9bb182188ca2e1262fabb9ba63354f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0374db5ab156b2a23cb34626b015c03c40f3fbc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04b029f35287a68dec1c07100d45b1fe1eb55756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04df63a097b0520d4723515554a21e971835457c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06692f04e1da1cb5a15c072f8c8fd4ed358d56d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0690eb940cde952906d1a1c3cf9f708fed7e0fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07cd4d50b25e94c32d00d124814f2638cb789a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08426eab6338a52052406d06f34037b43167e492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a0ec854eae877a846d3a651c556c8067acdc196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bf52d47821713bcd92a9cd273ca941abe29c131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dabf63a910adc1598a5e1228c39139d2bf769c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e37b4f9896628c03ffb90c88ddd8766f02bcdad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ee4984650bce35ba21a4db180236566e3acf3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ffabe75beba5c899fb8aaaa46f188e9856ef034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10c2328c198c7209ee47b997ee76e3d1f5d5bb79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12db27c39c79ae092da0a606fb26257d9aa6b8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1331cf8a29f0a237883b3d80787e29e79d512410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13f43d4fe696d298edbcdbafeaca47323b75488c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x146da8beb8921a719eff9763a2c94e392ddf5d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14a1905888fe8e2bfe830bf44b3f3416cc818567` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15fb51000e174017de14cd802366abe341b141d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x185ad5a32a67a372ac00ccd5288449def75bd860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x198c28d4289cb0125a707b1a1c3b15a298f64cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19b31d21f715fd19ef6b512e5e169995bd43878f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a7b3ec92969816fe2105f4fcc1bef93bee26180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x220470258a120d2f99e84ce2fc8fabfdd86b8a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2579ee695186b6fe3aa0b4ac49363764f19c8d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25a122f1f6159cbcc833aa4f17c3b055a690103f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2812b24ecb362887619dcb8be61a9b94ed1b71dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ebe3676325ee71a4a8dd047eb72a04ba51c2033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f3169558436cad379f3b39bf3176a97188d0dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31f820d4974007b5a3e7b9cdf5a59ec54d19e875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32305b4682728c415c117a5cf7da0151e80277ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x332a86fc5c9c1e19bc8ec3343b219c255caa9a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x334abef29e726ee9ce79e1d5ea8a4ad60826aa7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34b9f697ae7ab0c16df90658f5616bf32aff74b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34d0cb32ec7e68c704c7e6439fb2a76a9f71b4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35c09fa4faf9c0c88c7a8f5f994b5f8886bf66c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37629e1d49faa56c37ee2a6f100f1524206c00b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x387aa072bf06e2d05ae1cde55091f6147650ca94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d764d7dd6bea358a275d0c78cc19b373d9534c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d8222d8eb1bc0cafe08008ecb46272f2b430500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f7780e2c5c22dfdef4133f8ff169369a60858cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x413bf8f480cac6338a65b3b2c98f0625fdeeba6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x425d76037eb5ead742bd0e09b78ad5464f55553e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43cf046cde6d322aa29eddfba40d5c6f1bb8de1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x458abbf3d1774d8d80f4abe9960d091aa3ee1283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4604bdbc7d0e1dba40010a6d10ad6fc56383b720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x473fe9ea7129078002d421bde28620b4b5da5ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4aaa96f34ac000db93b9f60c3ec1a13517678659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c8ddd4daac6a957fa9a2ba00cb357f991c13650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e34bf6951b586d7475d2403765d8f883bf210c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f6f1cd76b4d146cd9fbc4a091e138b8a28e1ff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x529bbc24f91d223ecb5b8b6f51328a3cc1a489d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52b5471d04487fb85b39e3ae47307f115fe8733f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52cb7afcd7cf62df392308e88efb88e6df8f0d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53b6c48c984ff0d6986f5da4d252eac28fd6d492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x553466690f021889771ffc282255de3f256a7ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56243e11afb9105f188fff9fc9718d272e291475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56a202fe0d907d675c73cefc2eb24a0af23ca930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x582b7c70e8749d40328019dd380fd0380e3300be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x583239ad104270c09427fdb16b01dad43048d975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a81618cf4240a08fcd9dde23844eea7e7c240c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b424c83dbeded0e815bb0064abc62fc53967e6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d19f5526e7cdd68ce40e3786bbe79fc839c53e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d8dd518c4afd18064f222fb5e72e64c2c8b855f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f00d1b1f3ba1c9b37ba56537eb5362b4e55acd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fef9b15f69247d9155fba2cb5a11488a443a0c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60b256e7939704c69f3fb0810fd83cb4b76543a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61659b75f8a0e9066159b81b97ad1ba8c00a3f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6354335c5b98b81292836fa23fac05f8659fc37c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6410ea1d6a8d304d467248a49bb76b5b5422b6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6419b163011df6b3abdff7c31a5e63a75550552e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64d9fdcf5e66838a93d4d4b96e49e4b9c33002e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65c57739886fc1b951653f332392062de44ddb7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6601a2345520149865c1ca749145d2ab15c3c52c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66a0cefc04df8f8be2aaef8cb0af8b1da1cc704e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6807d639b6dc2a3d4ca6b9f1f26ed30edcc75247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x692e9076048e313c66443236e7c09be5db6077c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69a931b98f1bf87a286a581c3404688dabcc5f48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b3ba7098a1c77ecad9d8360ddb0e41c611a118c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6bda6c4e1af425f26f55237a3ab842cfa79fb3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6cffbf7b074c5b9aa7d23864f903e722a24c6815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6eb23eb783bca1567bff63ef35c32d1f6f1fc9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f960038cba3a0fb2dfaa9f5034724977bc33ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7136376911fba797b24fa77b280847ab5440adb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7200ec93d8f9d71bb1016c46de499df19adc2b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x728b67ea9246c0791526d7d396d0d0a2acc08660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73e589c6870c5849ee8a5b73f9d49b03b9b270f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76789801aae3f432c29e866acf0c0398e68a4efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77d40f63c320d3b3747674c2ab1c94f252795dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x785f00609a21739e8adaad01afa87c3a2f94827e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78e1da45ad14ddb0ab6dd2b1132d48ca17345bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x799512841b5baad08e9f1c349a298745e713e156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c73fcd2f126d3a738517f627041afee0611cacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e53796cc9980619ce9770b531cb4d7267e63202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7eb29bc4f5d0d3f65f2685be535dbe9376fcbaf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80f94cc1c0e254785a1c90536ea9d5ede3b42801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x825558bfb27463fa60250bd693ad8b063eeef141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82590a475363253ed3b6fa5edd940a3ebae8d891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x825e9bb20d7a2e6451c07d9d3c477de2e778abac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82b8791250e4f2c6bc92bb48ccd2a1f856cb7170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84e7f8731bebcf9470f2e6d368114533d107139c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85d3c1f7cac2233c2aa5e65bfc38afffcc3f8865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85ffa6878e83044364ae3d3624846b8d07f2e48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x862c3a4eade270e55cc45e286a14dbedc93c78e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86479f5c85698828d930c56b02c7a806a7751ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x875b84dc69098adef8eac26f03adff1db3ee8f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87dd8588b8d98c95d59f6194d2152055da0ff0ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89c191e23555a0964877689e2240cca68c56801d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d0d4cf4ecb5a5b31aa6d4d0f391ca8b80ab48e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e58840230fb2533451585eedd18f8bb937a8f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97af45445cce22fe3388a9bb6043048f15a01ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x994f7d1aae85b84849e4edc70ff281e249064d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a2d9ae457811dcab674ad66e0fb43dcd1764674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a4eb2c91c5fc260eeb54de32b2c67c64c0941be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ae809fac3f3b05a7cc6f20d85237ff55db69bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b53eb18f86c9db73c3c8639a9b71a0ef2391c33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b6fbea242b76b596f8b83c46d1399d8e47fa074` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c3d191ac620ef07499545526ede56ea34256a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c482b621cd026fc040995f49b80ff580b95dbcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d8712bde1ac1f9d39daf0451050be22c224f1bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e2ce21b3e886ac872f36602cb001bc32c4a61f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e9c2701d0cab33e70f0e3ccc32545fdab7af3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9edac6dd9ba438756142fa48f92a5483de2a0e2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ee3f56ae709fd318218420c52170a648f81d721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa243297c1395de2246c3b0766efd4eba1f72835b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2c8c7f605efa0dc2bbbd24573e4ed1c829c28b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa46d80f69c6845394d62011e04696c0d8231f33f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5989158ebcf6e61f719f5200090d468d8b54954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa60044e5008992370e80c3b523da9c7b9648e73b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa78088e69ed6d604a2b6b6119140598caa6ddbb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa903cef96528b5cb3e77ee690f0134d709f2c500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaad2ab5a2f47796e2bc041fb5accaa3d18427c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabc5ad89419661730c111962a5dad4e4390a8ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacc6f7112aba7e709d85d3e8f5bb09f077b3401c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad0585f69b382861032d7a48bdaeb045ef58a3c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb162d29a4664165d351020c3b979c5cd4f86022e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb22efc01400f34cdc429c7b8b70ee7e85cd2a8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb37f710e3bed6baf044ebe1054fa59e30fdc2af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6c7c4db21d1f49194539b998a096601e743cd81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7547794f8a73a976c27b8bc333c4fe461e5ccee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7d4df0eac63ae665a66ceb2ee095eed8a82604d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb99aad247f2314898c4471242ae222dcaadcee5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc2f42d133dcad9475e9b4e7e4bbad83b1bcf38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca5e8d974539510f6e048938ff93a06296ca01f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd102ecaf3a14f68bb5ba1add1dce99c3eaf8726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdbacbd362e30e45dc8bc70dfde83ef68302965b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1dfc31cfc2012481af5c8f185864a3611c15ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc77c18a19b5b27890b2fa4aa47dd9e3c0b549787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc92fd7879c7ef4401e5179de7155298d0922475b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd0d3a7be0d8a81f0d35b62f018f8151ecdc23ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd8a57fc59b7236557d698af0cd93c35e4e8ac03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdc0cf23459738b49dc5309df2a7cfc1217f01ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xceb6e51fe85073e306735db19ddcacb641953803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd11a36687783e51021488fe67db5b282701e66f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3e8ebe5d1ae05e9639e39b9fc165c1fefa1c852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd78ad82dcd4d130985d9b7684e3130018f070bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddb640d59617611aa911eb6f0a3243b40a28bd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde343542aa2bfa494151b75bf94716df70d768f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0789326c73e84fbac4d45ab62efa77f92b89b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe09dbf300c6516d720481b95168a98dd66fdc6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe16c4e127752d04eab699b1fb5168b0021017df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe303bdeb595b5a24ae6f3cc33e67c002434234e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe35a40b1c65c87006e7df8354677a43481eda6da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe39e3de0a5e9434f4bdead7525e4c38090bd9ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe51396d22e27687a3c6f7d765557fa1096420bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5967d47c31dd71dddc00216ebef08385e11bfb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb09c23a49ace2eb5e8d8625d129cc27e0717b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xece785baacc5d71478d751caa591924f30f8cbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed404b4f0a33d3a123b78eb70e405ad389921e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef75d4b09eca4faca64a506ea5242e5fc3f0fd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf01aae93b525cea1d422bf628734a35e814bd43d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf05b1d2912a3ee405f8b8656a1a4e001bad2452f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0b46f2f32019985e7caf9fcb7822de04b609b64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf23f9a3171a6cb7bb1af65303dc897421b0d71fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4d270982f7f2c154861ba0b068f389240cb1383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf793ecb8a034a200bf311c35378d9e3f9bd0a147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7972d311222423619e3210299e163baf951601b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa84dbeccde9872a100861ecccb399f136c71568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfaea9b6f5c7cca965e9096b80045d856ac01aec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfba28565cf9ba4b0afb63b814f2cb4408e1d92cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcefe8a8444b069cb496baf068a2b2a3796d9d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe3b8123bcf3e489df353305ba01e123502bde72` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 184
- Live contracts: 0
- Unknown liveness contracts: 184
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=184

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x02ce34274a9bb182188ca2e1262fabb9ba63354f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0374db5ab156b2a23cb34626b015c03c40f3fbc0` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04b029f35287a68dec1c07100d45b1fe1eb55756` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04df63a097b0520d4723515554a21e971835457c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06692f04e1da1cb5a15c072f8c8fd4ed358d56d4` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0690eb940cde952906d1a1c3cf9f708fed7e0fa6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x07cd4d50b25e94c32d00d124814f2638cb789a43` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08426eab6338a52052406d06f34037b43167e492` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0a0ec854eae877a846d3a651c556c8067acdc196` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0bf52d47821713bcd92a9cd273ca941abe29c131` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0dabf63a910adc1598a5e1228c39139d2bf769c3` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0e37b4f9896628c03ffb90c88ddd8766f02bcdad` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ee4984650bce35ba21a4db180236566e3acf3ec` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ffabe75beba5c899fb8aaaa46f188e9856ef034` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10c2328c198c7209ee47b997ee76e3d1f5d5bb79` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x12db27c39c79ae092da0a606fb26257d9aa6b8d4` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1331cf8a29f0a237883b3d80787e29e79d512410` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13f43d4fe696d298edbcdbafeaca47323b75488c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x146da8beb8921a719eff9763a2c94e392ddf5d53` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x14a1905888fe8e2bfe830bf44b3f3416cc818567` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x15fb51000e174017de14cd802366abe341b141d1` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x185ad5a32a67a372ac00ccd5288449def75bd860` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x198c28d4289cb0125a707b1a1c3b15a298f64cf7` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x19b31d21f715fd19ef6b512e5e169995bd43878f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a7b3ec92969816fe2105f4fcc1bef93bee26180` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x220470258a120d2f99e84ce2fc8fabfdd86b8a05` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2579ee695186b6fe3aa0b4ac49363764f19c8d88` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x25a122f1f6159cbcc833aa4f17c3b055a690103f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2812b24ecb362887619dcb8be61a9b94ed1b71dc` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ebe3676325ee71a4a8dd047eb72a04ba51c2033` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2f3169558436cad379f3b39bf3176a97188d0dfa` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31f820d4974007b5a3e7b9cdf5a59ec54d19e875` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x32305b4682728c415c117a5cf7da0151e80277ac` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x332a86fc5c9c1e19bc8ec3343b219c255caa9a2b` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x334abef29e726ee9ce79e1d5ea8a4ad60826aa7f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34b9f697ae7ab0c16df90658f5616bf32aff74b0` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34d0cb32ec7e68c704c7e6439fb2a76a9f71b4f7` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x35c09fa4faf9c0c88c7a8f5f994b5f8886bf66c4` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x37629e1d49faa56c37ee2a6f100f1524206c00b3` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x387aa072bf06e2d05ae1cde55091f6147650ca94` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d764d7dd6bea358a275d0c78cc19b373d9534c5` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d8222d8eb1bc0cafe08008ecb46272f2b430500` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3f7780e2c5c22dfdef4133f8ff169369a60858cd` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x413bf8f480cac6338a65b3b2c98f0625fdeeba6e` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x425d76037eb5ead742bd0e09b78ad5464f55553e` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43cf046cde6d322aa29eddfba40d5c6f1bb8de1c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x458abbf3d1774d8d80f4abe9960d091aa3ee1283` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4604bdbc7d0e1dba40010a6d10ad6fc56383b720` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x473fe9ea7129078002d421bde28620b4b5da5ef7` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4aaa96f34ac000db93b9f60c3ec1a13517678659` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c8ddd4daac6a957fa9a2ba00cb357f991c13650` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4e34bf6951b586d7475d2403765d8f883bf210c3` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f6f1cd76b4d146cd9fbc4a091e138b8a28e1ff4` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x529bbc24f91d223ecb5b8b6f51328a3cc1a489d0` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x52b5471d04487fb85b39e3ae47307f115fe8733f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x52cb7afcd7cf62df392308e88efb88e6df8f0d34` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x53b6c48c984ff0d6986f5da4d252eac28fd6d492` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x553466690f021889771ffc282255de3f256a7ae7` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x56243e11afb9105f188fff9fc9718d272e291475` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x56a202fe0d907d675c73cefc2eb24a0af23ca930` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x582b7c70e8749d40328019dd380fd0380e3300be` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x583239ad104270c09427fdb16b01dad43048d975` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5a81618cf4240a08fcd9dde23844eea7e7c240c6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b424c83dbeded0e815bb0064abc62fc53967e6b` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d19f5526e7cdd68ce40e3786bbe79fc839c53e8` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5d8dd518c4afd18064f222fb5e72e64c2c8b855f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f00d1b1f3ba1c9b37ba56537eb5362b4e55acd7` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fef9b15f69247d9155fba2cb5a11488a443a0c2` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x60b256e7939704c69f3fb0810fd83cb4b76543a1` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x61659b75f8a0e9066159b81b97ad1ba8c00a3f5c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6354335c5b98b81292836fa23fac05f8659fc37c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6410ea1d6a8d304d467248a49bb76b5b5422b6df` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6419b163011df6b3abdff7c31a5e63a75550552e` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x64d9fdcf5e66838a93d4d4b96e49e4b9c33002e3` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x65c57739886fc1b951653f332392062de44ddb7d` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6601a2345520149865c1ca749145d2ab15c3c52c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x66a0cefc04df8f8be2aaef8cb0af8b1da1cc704e` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6807d639b6dc2a3d4ca6b9f1f26ed30edcc75247` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x692e9076048e313c66443236e7c09be5db6077c0` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69a931b98f1bf87a286a581c3404688dabcc5f48` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b3ba7098a1c77ecad9d8360ddb0e41c611a118c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6bda6c4e1af425f26f55237a3ab842cfa79fb3c4` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6cffbf7b074c5b9aa7d23864f903e722a24c6815` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6eb23eb783bca1567bff63ef35c32d1f6f1fc9bb` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f960038cba3a0fb2dfaa9f5034724977bc33ffa` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7136376911fba797b24fa77b280847ab5440adb0` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7200ec93d8f9d71bb1016c46de499df19adc2b2a` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x728b67ea9246c0791526d7d396d0d0a2acc08660` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x73e589c6870c5849ee8a5b73f9d49b03b9b270f6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x76789801aae3f432c29e866acf0c0398e68a4efd` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x77d40f63c320d3b3747674c2ab1c94f252795dc2` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x785f00609a21739e8adaad01afa87c3a2f94827e` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78e1da45ad14ddb0ab6dd2b1132d48ca17345bec` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x799512841b5baad08e9f1c349a298745e713e156` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c73fcd2f126d3a738517f627041afee0611cacd` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7e53796cc9980619ce9770b531cb4d7267e63202` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7eb29bc4f5d0d3f65f2685be535dbe9376fcbaf2` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x80f94cc1c0e254785a1c90536ea9d5ede3b42801` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x825558bfb27463fa60250bd693ad8b063eeef141` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x82590a475363253ed3b6fa5edd940a3ebae8d891` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x825e9bb20d7a2e6451c07d9d3c477de2e778abac` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x82b8791250e4f2c6bc92bb48ccd2a1f856cb7170` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x84e7f8731bebcf9470f2e6d368114533d107139c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x85d3c1f7cac2233c2aa5e65bfc38afffcc3f8865` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x85ffa6878e83044364ae3d3624846b8d07f2e48e` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x862c3a4eade270e55cc45e286a14dbedc93c78e6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86479f5c85698828d930c56b02c7a806a7751ea6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x875b84dc69098adef8eac26f03adff1db3ee8f97` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x87dd8588b8d98c95d59f6194d2152055da0ff0ce` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89c191e23555a0964877689e2240cca68c56801d` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8d0d4cf4ecb5a5b31aa6d4d0f391ca8b80ab48e6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e58840230fb2533451585eedd18f8bb937a8f25` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97af45445cce22fe3388a9bb6043048f15a01ac8` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x994f7d1aae85b84849e4edc70ff281e249064d0f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a2d9ae457811dcab674ad66e0fb43dcd1764674` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9a4eb2c91c5fc260eeb54de32b2c67c64c0941be` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ae809fac3f3b05a7cc6f20d85237ff55db69bfc` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b53eb18f86c9db73c3c8639a9b71a0ef2391c33` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9b6fbea242b76b596f8b83c46d1399d8e47fa074` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c3d191ac620ef07499545526ede56ea34256a78` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c482b621cd026fc040995f49b80ff580b95dbcd` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d8712bde1ac1f9d39daf0451050be22c224f1bc` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e2ce21b3e886ac872f36602cb001bc32c4a61f6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e9c2701d0cab33e70f0e3ccc32545fdab7af3d4` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9edac6dd9ba438756142fa48f92a5483de2a0e2b` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ee3f56ae709fd318218420c52170a648f81d721` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa243297c1395de2246c3b0766efd4eba1f72835b` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2c8c7f605efa0dc2bbbd24573e4ed1c829c28b9` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa46d80f69c6845394d62011e04696c0d8231f33f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa5989158ebcf6e61f719f5200090d468d8b54954` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa60044e5008992370e80c3b523da9c7b9648e73b` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa78088e69ed6d604a2b6b6119140598caa6ddbb1` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa903cef96528b5cb3e77ee690f0134d709f2c500` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaad2ab5a2f47796e2bc041fb5accaa3d18427c41` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xabc5ad89419661730c111962a5dad4e4390a8ac0` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xacc6f7112aba7e709d85d3e8f5bb09f077b3401c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xad0585f69b382861032d7a48bdaeb045ef58a3c6` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb162d29a4664165d351020c3b979c5cd4f86022e` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb22efc01400f34cdc429c7b8b70ee7e85cd2a8a3` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb37f710e3bed6baf044ebe1054fa59e30fdc2af8` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6c7c4db21d1f49194539b998a096601e743cd81` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb7547794f8a73a976c27b8bc333c4fe461e5ccee` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb7d4df0eac63ae665a66ceb2ee095eed8a82604d` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb99aad247f2314898c4471242ae222dcaadcee5a` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbc2f42d133dcad9475e9b4e7e4bbad83b1bcf38f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbca5e8d974539510f6e048938ff93a06296ca01f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd102ecaf3a14f68bb5ba1add1dce99c3eaf8726` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbdbacbd362e30e45dc8bc70dfde83ef68302965b` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc1dfc31cfc2012481af5c8f185864a3611c15ba2` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc77c18a19b5b27890b2fa4aa47dd9e3c0b549787` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc92fd7879c7ef4401e5179de7155298d0922475b` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcd0d3a7be0d8a81f0d35b62f018f8151ecdc23ec` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcd8a57fc59b7236557d698af0cd93c35e4e8ac03` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcdc0cf23459738b49dc5309df2a7cfc1217f01ff` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xceb6e51fe85073e306735db19ddcacb641953803` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd11a36687783e51021488fe67db5b282701e66f9` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd3e8ebe5d1ae05e9639e39b9fc165c1fefa1c852` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd78ad82dcd4d130985d9b7684e3130018f070bc9` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xddb640d59617611aa911eb6f0a3243b40a28bd8d` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xde343542aa2bfa494151b75bf94716df70d768f5` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe0789326c73e84fbac4d45ab62efa77f92b89b9c` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe09dbf300c6516d720481b95168a98dd66fdc6c2` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe16c4e127752d04eab699b1fb5168b0021017df4` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe303bdeb595b5a24ae6f3cc33e67c002434234e0` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe35a40b1c65c87006e7df8354677a43481eda6da` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe39e3de0a5e9434f4bdead7525e4c38090bd9ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe51396d22e27687a3c6f7d765557fa1096420bf1` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe5967d47c31dd71dddc00216ebef08385e11bfb2` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeb09c23a49ace2eb5e8d8625d129cc27e0717b69` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xece785baacc5d71478d751caa591924f30f8cbb9` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xed404b4f0a33d3a123b78eb70e405ad389921e88` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xef75d4b09eca4faca64a506ea5242e5fc3f0fd97` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf01aae93b525cea1d422bf628734a35e814bd43d` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf05b1d2912a3ee405f8b8656a1a4e001bad2452f` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf0b46f2f32019985e7caf9fcb7822de04b609b64` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf23f9a3171a6cb7bb1af65303dc897421b0d71fd` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf4d270982f7f2c154861ba0b068f389240cb1383` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf793ecb8a034a200bf311c35378d9e3f9bd0a147` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf7972d311222423619e3210299e163baf951601b` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfa84dbeccde9872a100861ecccb399f136c71568` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfaea9b6f5c7cca965e9096b80045d856ac01aec1` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfba28565cf9ba4b0afb63b814f2cb4408e1d92cd` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfcefe8a8444b069cb496baf068a2b2a3796d9d16` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfe3b8123bcf3e489df353305ba01e123502bde72` | non_address_book | unknown | unknown | unverified | n/a | `0x3e99dff3cf8f801d701e8c108abc46540f54f735` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Code Audits](https://learn.bluefin.io/bluefin/more/security/code-audits.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [Spot Audits](https://learn.bluefin.io/bluefin/more/security/spot-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [full report](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-dTrade-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [full report](https://github.com/HalbornSecurity/PublicReports/blob/master/Web%20Pentest/dTrade_Frontend_Pentest_Executive_Summary_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19579] Code Audits — no match: The document lists multiple audits but does not provide a single audit date. Contract names extracted from PeckShield audit scope description. No file paths or addresses provided.
- [19580] Spot Audits — no match: The provided text is a documentation index page with a link to an audit report file, but the actual audit report content is not included. No contract names or scope information can be extracted.
- [19581] full report — no match: Extracted from report introduction and findings. The report states 'The dTrade contracts for audit include four main components: dTrade Exchange Token (DET), Insurance Mining, Vesting, and Governance.' Additionally, findings reference TokenVesting and InsuranceFund contracts.
- [19582] full report — no match: The audit scope lists frontend web applications (FQDNs and repositories) but no smart contracts. The report is a penetration test of frontend apps, not smart contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Code Audits | Governance | unmatched — not counted | — | PeckShield audited Bluefin's V1 repository, which includes Governance, Insurance Fund, Token Vesting, and Timelock smart contracts. | no |
| Code Audits | Insurance Fund | unmatched — not counted | — | PeckShield audited Bluefin's V1 repository, which includes Governance, Insurance Fund, Token Vesting, and Timelock smart contracts. | no |
| Code Audits | Token Vesting | unmatched — not counted | — | PeckShield audited Bluefin's V1 repository, which includes Governance, Insurance Fund, Token Vesting, and Timelock smart contracts. | no |
| Code Audits | Timelock | unmatched — not counted | — | PeckShield audited Bluefin's V1 repository, which includes Governance, Insurance Fund, Token Vesting, and Timelock smart contracts. | no |
| full report | DET | unmatched — not counted | — | mentioned as dTrade Exchange Token (DET) | no |
| full report | InsuranceMining | unmatched — not counted | — | mentioned as Insurance Mining component | no |
| full report | Vesting | unmatched — not counted | — | mentioned as Vesting component | no |
| full report | Governance | unmatched — not counted | — | mentioned as Governance component and in findings | no |
| full report | TokenVesting | unmatched — not counted | — | mentioned in findings PVE-001 and PVE-002 | no |
| full report | InsuranceFund | unmatched — not counted | — | mentioned in findings PVE-001 and PVE-002 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 184 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [19579] Code Audits
- [19580] Spot Audits
- [19581] full report
- [19582] full report

Fork inheritance lineage and inherited audits are included when available.
