# Agentic Audit Brief: Kafe Finance

## Project Overview

- Project: Kafe Finance (`kafe-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:27.857Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: moonriver
- Contract surface: 199 unique implementations (247 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 2 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 2 contract(s).

## Contract Surface Quality

- Indexed contracts: 247; live-surface contracts included: 247 (50 live, 197 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 199 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 197
- Unique implementations: 199
- Raw deployments: 247
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GrowthVaultLaunch | unknown | moonriver | n/a | 49 deployments: moonriver [`0x0ca82bf08b50a7eb12d237b0f37c39a972c06520`](./contracts/moonriver-1285/0x0ca82bf08b50a7eb12d237b0f37c39a972c06520/); moonriver `0x0ccd33838bbb91d3e16eef59fb0c3ce7315c99a6`; moonriver `0x1920217068359c0f5c6e6f05f8823284d6df6c22`; moonriver `0x19ace41c2aacb78d0ad9cdbdba340f75a8e17b4d`; moonriver `0x1c5398ab5acbd58437b5391a114c790c55701743`; moonriver `0x21ad5f45467d1d8b3aa7424efd12ae805c290477`; moonriver `0x222e31addb2172b67db6d040f06de0987851d72b`; moonriver `0x290dcaade27727e7f27c065cdc712205b2d03519`; moonriver `0x2ccc4641edee417a4752f6011499c219499b8190`; moonriver `0x2e98c76898875073adc805b85a2fbd0e4e1a9b04`; moonriver `0x2f81dd0c54de7e301c1d8d860c9e5d50df426f51`; moonriver `0x34d547e83843ebdbadc73045e627cfb786b29201`; moonriver `0x36c06c1b77782fe33415e257d38ec7dd6ea105fd`; moonriver `0x372ba1de767c523cf01f545023f49549304ed49b`; moonriver `0x39402a9dc7526d9ca782b786150275d2da9d5e89`; moonriver `0x3dd58167941f032bb13310d31801cdc03cc94eb4`; moonriver `0x3ff00501ba0c429e11a8263d32373c159af890c6`; moonriver `0x46395842c0d55fd61f9bcc805d45cb6af92e99fc`; moonriver `0x46944a4dd92d263b385dd212ea0d1f6eda50efb6`; moonriver `0x5bc257e44843b710f4813fc07716e761d7cf1a41`; moonriver `0x5e4a10a089768aed8ff355cd6b8fd4715b060e52`; moonriver `0x626ccd58d89b891f55a587f1a605a05ce209f133`; moonriver `0x6a970cfcae96955410a50adccb58e47a1f707065`; moonriver `0x7088553f71aaa8ffb8c89e98e58ab505d46d3c6b`; moonriver `0x71ad72408ad1a3def20fde1f0e264444eea8e753`; moonriver `0x73ff88dc67ce8eda27f2b4debe4b8b160e3c1f51`; moonriver `0x81885b1bd801334445920cca9a33b0729ec23337`; moonriver `0x8ad8e1ad610204f1fa40857de82732710471d36d`; moonriver `0x8d0ca73068608fa32c3360943b78b75f03b469ab`; moonriver `0x9aaf321da4e04289c58bc1d84edd539327899c15`; moonriver `0x9bba20fc0657310a3b44b29c66242d466711a624`; moonriver `0xa0c4d8c1c87a8cd972f0bce86cda9fb45169008f`; moonriver `0xab366e397ad87e508e571366248ecf0fcf580da0`; moonriver `0xaf44a1a187522561938337026de1686fea5d91bd`; moonriver `0xb5ef6444910092675a474801fd9aa6be171c93ce`; moonriver `0xb74becb9525603df45965e713518abf4d48c8fbb`; moonriver `0xb9fc48b5364014b912ded9c3535eaede80e2b6cc`; moonriver `0xba998d265625d34b6c84a6b8237658216a27bfbb`; moonriver `0xbdcba27599589b03d493fec9a49c49cf4df1f933`; moonriver `0xc9a7c932ca620fcce4053e568b41faf96fafaf4a`; moonriver `0xd82bb48fd9738ef174bf674b4f52b3cad9dbc562`; moonriver `0xd9e89665cfd2497c0df486a73daa30215ed4f774`; moonriver `0xdc443a80188cd2790f7f2a5e333d7679e5e7bce3`; moonriver `0xe8216dd845137b12389e179a4d0105294a8a7978`; moonriver `0xf4d860f1949196046f7602b81b1e13b4a4013d2b`; moonriver `0xf5791d77c5975610af1be35b423189a8f5eb6923`; moonriver `0xf68151a467ce39fb55f938135ab83bbc7f2b0b7d`; moonriver `0xf7b54a97c39c9766824843ad63446d7dcac5d8e1`; moonriver `0xfda619a5ec2d0dfece47a3ce12f5eb23db7751f1` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MOONKAFE | unknown | moonriver | n/a | [`0x52f04c806eb82930f40d410259b7af8e18d3bdc9`](./contracts/moonriver-1285/0x52f04c806eb82930f40d410259b7af8e18d3bdc9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (197)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x0093298b1714fbb9c6e50444ea88d6cfd4846cca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x01f4a5ef72dd30245a87eddbce4e639ac1e02a40` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x02e0fbcf62a72f4e4e51aa43e9f2fa8a0ea3e873` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x03e9ef65bacfc6edae0d977c71b10748ad3288fc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0b41e6e502c4928be307fa2d1ca983ccef3d157c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c1f2f11e29d8a1f4beed9beb8b9a3398421200f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0d5c3c63f94246143d7779a56876b484a3c2be8a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x119ff34e7e66b0be370762cb8a615bbbfd396549` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x12099300fae21beb5bac352e278fe9b670ec8c39` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1269d30c78c8274ef276fdbba82849994d3a4a58` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x12fdca1a4ab7c536709c4045a0532c22176ceb2b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x15556058232f939e7e838ec46e1e7908c4921845` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1573f010f6d856b45a8e87c75f81da1080f342b4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1576f1f974eef8630ed97c63e193f9266eca931a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x15795b391eb2d2d19b7a41d10b4a1889f447422b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x165e1dfb6dd8490f568ef7d1e049af39f0b216b4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x16678edb02936bbcf2c064bcac1eed54609a69ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1670b2fb6359a8038d17076d713cb6b281583bad` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x179ca28a3f6cc4565ff4d6f37684497f63b47064` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x19842d2bf5690372bf212bcb253ea2c7ca448add` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1a4f1e9c262b89fc0d716cb328c6c324883338b7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1aaaa06662e59bcd5347d6c1d90d44f9c259ae1b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1abe6b7c25c772d4955113c364676022284e995c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1aef6123505a31495e935fa211672dfd11261736` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1c2c8546344e728896fa36c9d97177838d76df06` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1fa6700e1ba5dd664b60506a3173d59fcc1743f2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x205b51703eb2114a6904288d1d2bd08eea4c3e0f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x20bc20dec3e89c7c65e8ee6d24f742270322fba0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x22e6719fa4cc386ac6172a6f7ed7ecc5d235b8c1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2313779d60bc1433f5219e9145ea4f484e0380e6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x251274e4b1cf2bebeaff82024358a9c7b5cfcc43` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2705359d18bf262425a1e121b1fdde24c089a793` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x28be409d1f52121ba0e384bdd0242d7e34665139` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x28d5a7e73b70bff27a2bbd3adff37a61779a9e77` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2992507ab3619f31e10fa7fc7d1c3502f3b5254b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2a4f9c387099e0dc595cfcd8ea5e60df31a2ba84` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2bd4f31b65bbac4d7421082f5905738b0d4443b0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2c32829713af0add943be901b2d7befaa6171977` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2d2f7ae3b377570fa049be0e476a99c00e9219ef` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x30825264687407139e17d8c30dbdce08203603a2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x33b5ed1ce70cb1c488115796b4ee61594a0ee2c5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x33c90ad6ad9a28bb88b953aa3638be415c581933` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3481c1fae8ffa9eec1113b9b404c89447fe97303` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x34f7e093f386eaf63721022697c17bcdaaf000c5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x35d21ca2059c090e5ad639f481301fed9ab27e1e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x381bd834fa3ca43f5a3c0866c813898a7b94aea3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x397a5ba9fe6bc13ed4aa34ff4bf3aad3760329d4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3af1f5a6059f723c82db4f864ffdc6f73cc1cc0e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3d451c53de69482d4e928b370a308f37a669a4ac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3ed965718e581dccfef403901667efd65565aa00` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x41d54acc89c2b5203665a9d0fe87815223ea33ed` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x42b4c45d980ee7d163c0dcc86c2bbbd365535040` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4619553ba1705ffe98457600f5e70e6558992f11` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x49cb834c4df47d8f77b593530a067a5351987426` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4a9bff68b3485b63a4637a3918f4a9bedff8e3f6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4ec73357ad3b0cd7c8af9c6a83bf084d2790b262` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x527df2073fdb2e13de95323f9a640fd054c389ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x53a7faa4e50efdd0929e278654197d8803ac74f1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5573b79abc34dc7e216e99129330771394c2249a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5955be7d35409bbae4cc8912e6dcc322b03020dd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5aed52cc816465e45a1c268913d827b68dda520f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5af4bd9621ff07ab98ec8c4cdef47979f43bf87e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b398756e3c6d5ec1d626221a04eadef8b798c25` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b682888df65e968d81fde319f2e303a9f276667` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b6cdc980cbc67a6b5fca58b0367359567979ee6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b809d154e4e01975eb183a5b771db18beaecd6b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5db498915c711f1ebec9faecc74610154efd49f7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5dce5134ec8e961bf27ec3e585c83d826070fd94` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5df6d1480d28be27332b8cad482ffae27f06a7ba` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5f621ec7008ba64003f8a87935903ee1d7eee9f4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x604a259e50c23943ddc5d98b6f08769bf1e0fa27` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x60d573b63bdc5b5afc48cdbc906a449efbc725c9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x66111ae6392c5940db0c2739dc2785b186c36147` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x678434e2ae11b7fe9f1af35cf47841a56d6c45a8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6a00e47a4c8da47e426630e54dc50532a0791944` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6a210b791716e8e35a144a2d3fe04e98478a73b3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6c3ad761403f525a2386c778933cf0c7e8965242` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6c41682f5a396700525f5741989b4937af19a719` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6dd7b14bd78366174e71c83feab4275b642171e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7025a55d6edd6871cf0be5961b79e61737b99d27` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x70daaf8eaaece74f21309bb53290f07f628b5e1b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x754eb4c710a2bc2c8b4bfa92a91b6811e15169c3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x75b35c7abaaf57ffebfcf5a9748908e311cb3db7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x761a0335831f32282089303133a80c554d9d933e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x76e02a8b54d9add371c341bf16053278ed0f42c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x78c2f3f6634b439f473c9674b0a4702daa95f88d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7a2a1987f4f7f1d8bff9d61805777a6ec6f7ceb5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7adb2047c4727f9ef2c7f2614b0c8defa23e0bdc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7c3980956404c4fb79411f53df6b702dab399abb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7dab110996d919458012f6c21554d96dd525bfac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7e23b56c5373c9c9ae4326edbe8ad74a110b1896` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8051406d16ae4b34b0f7bec7049b7e8558e7d8c4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x818cbf93d8fa3f90f61783f477b8cff3cdd45f52` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x836f66d3ceee42f46ba41c5d7d917d4d95276a23` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8424984e0f70f8b4ef28f77e4ae174c7c7938ec1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x862a9d8021cd73e9cec675dcb0c6a7c9529cb180` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8a8af16dd91333fa879fb3b0430468ba83291dc2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8cea47a8421680bc33cbe5a79c011e8114782d42` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8fa41408deb5e6815a265dc965dd52ab59cc1ecb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8fbf1111d10a50b0d33fd6b5528a450af8317acb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x91ad62286cb69d2c6abdb952564e0efea082869c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x94b7a6c0faaa047b59f073f016b0e651448049a1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x979ac9e08b7ec962e04382802ea537818a69b369` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9815b371861a57d27c514de00a7b5fb34532811b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x99216f1710484528adc79af8e9a1499f34421081` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x995ef2d99a5cd5f4d3a4a4b1309499f24c92a863` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x99e86dbdc5d05d23bd60681a8574ad9625a79854` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9c5b62e7a989df1cfefa02f127b9007d21995379` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9d1a477ea414e719911619e1e26b840e8a19697b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9e2325e49cc15ec9b0dd7ad14c1f0971f6fc17d5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa164deb841ddfb2e257226df48961b315dfbf0f9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa28dce7f091f97da759386e9e80323ace55426e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa2e56a3e7f9013afe9738fb283c63261f7ba5082` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa7ff12f24480a680f5e7d30e45ccba6979f60cfe` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa9355d3107906e40f8ccc16b954dac28330b824b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad55e269d9598cf7c7c650a9898fa2f5caab5c50` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad65e5d87a0226e53cfa354d58f6072733a9bcab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xadd075f059110e447e630d4f01f5496501e4c5e9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xae94b52d9fb330d7170619d54bf6913d8773e662` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xaebc487d1905373a8d482a5c8880550a125375b4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb2c247396a9ca8ce8fcd9787f459b5e8ac04ebe5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb2c3493a8c8f62ad2406fee090683724c13f8064` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb33c40d412db6e3608c78f7ab19588856f5db106` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb356f291cdfe3a28140b5b70a3b39135b9ce7e2d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb65294f6f13ae55bf23ab2ba687167f8ed534c13` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb653a24eea1fde673a59ea22605e6e68c5322607` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb8b2a3843870fd747ea89e534e18690ec913ffa8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb8fa69ec5a27603d1caff0415fec9d70b362bb5a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb8fbd7f4120f90b1dcf83bf0488aec96b1114ee7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbb498040b3b933c9fbc8f22f90624095bfbc4ec2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbbbb048b10f24c3df14aeb662a88836bfdfd3491` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbd79673c0243ab5404c9ee088da9c9b5e9b9c560` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbede6e5007059f185845738226e03a5d87e61357` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbee04bf198922850c60dff3154138ea9979ceef1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbf188be769fa680bc44661c3d06e918f9d0863dd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbfb3577c50c03594dd2dea6e565b72e9869fbdf7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbff5ac5b133d5409dda569ca24d4e58a01ec4398` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc1371932e5235585afecc6fba127bee8e035b55e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc1ec155c243374f9a61d4349f1f6ff6bbaf6f728` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc3cb7c51a3bc2fba2a7d43eea8063e6b748f8d12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc5adfb025fdaad22bb5d46ca64857b8984aab3ab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc6bc650178230672c7ed4954ef2f738fc0d3de47` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc81fc5e0f86552500e195f0ab3f3afd75134cd70` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc9d678d687a8649938d1703791d30fd678ae8ecf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcae39ecf8d68348deaf3138fd9ee225d53cf1597` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcd26d70fe2c928c3a4fd9764d15b3ad906c138ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcdce87c923bd114d3b1987f997c4761581185eb7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcebdca6c2587f839cfc7a079cbeaf1065b7a40d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcf6440e3d9c563dae55dfdc01e82c3ad3d6aecf8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcf8cf91fa0ee6d64acf0b6a4ac67073eff96a22f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcfbd005644e8c91d5dc912a66b130bd72ee2330a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xcff6f550b4e02701e5767ba9b5f96a5e51dce9cb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd069b24d0ab56706b669fe50b43ad687b844a167` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd076d70a91997e610ec0618899b2259b0e7bfc78` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd0c03b5a5db74b7e5a5a2708f2b7231ad714d844` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd3009c94664d947650b5803a3de3b8509fc9cbf4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd3de82242982c47dcada8c5a709653f22a446918` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd4ca9f93c41d3b10bed3468d2b308c2570d3daf1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd509a79feada2654ee23761c4924daf61f64754c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd513087d1e1f77c4d5cfc288746775636f0c7d72` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd622b218ed3198239b9e4337f6c28b8207d3be1d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd6da3f3239b03c16ae0ee9b2456a377b673e2481` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd84b5d03b5c49892faea9d614dfceb20aa7ffe8a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd936f8934312b82898218e5608c0adf3b067a5b5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd94f0a4159d16c114e65349e0d7c159c7406305d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdb5ab02f685a328af4066d15430e162feeade192` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdc001e8d07fbfdca21bba5de9a43c26d6e131a48` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdc11816b72fda185e443e76b0aa90d34d6156253` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdf71f363940a2298e831f18f44266c80015c8dfd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe00eed5e67635a0c27ca10077189a0af35fa9a3b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe03d9add036ffbe84a99e00a045c0b25b59adfdd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe10621494a08e1b65ac2f10f7d1aff7f6886491b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe1544fea5c0692301085ca85fcd80cdeee254f40` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe21106a7535d0786d9cd0158526deda4e6b42e99` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe21a87a569f47777973b90abbdda8b2315b6a8a7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe3c3dedc7dc23a47d52e3eb81eba67be62c8010f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe3ca5e9c5f0325ea71c6bca2dd24a69a84870c4d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe3e70d93c080560ec2ce3af8dfc7837939868f12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe4b429fdd1fb40109d10ab3ad0add604b500fc52` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe584193b093390a1a1270af2579b3b69af84d445` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe9fa05ebdb345985bb27c7dd8bcff488fbd570f4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xee551306ce3a7ae3e06f4d99da2a2944680e06c3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xefaa7294304f8aa38095d6de20024611a46613f3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf0b7647f265fe4de26eaf9fff697c3c3ee1683e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf25f77bcc1f8797b61f7e4a1bfa4c2e3c8566fde` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf2b63286630990f0b7e7cb3df29e1e457c43a0a4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf2db1f44d92213f8b0875f378af69d973fe7ed71` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf320d1f6aa76cd53f9bdad18e68ae952c017e896` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf39331180d0f4c82f0bcd927a2af1469834368fe` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf3bbd03081419d27fff27cf242e5c849ca3c8fa4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf43ee2c374bbb3a650c4624ebd769e9ad31ffb2f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf7d9abf2038edd30e8afba657202788667d73630` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf8568175f3355a3edfb74b25524dcf7f5e8d1782` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf881a84e891a3bdba07fce373617200ba62c3c57` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf8bc4b5234198cbbdc558e873ee3e0bd02c9a665` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfbaca8f603ea674cee49dd9d731045e5b6b7a9ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfc0021d6d96837e48efe554a0ccb75ce4136698f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Kukafe.pdf](https://github.com/Tibereum/obelisk-audits/blob/main/Kukafe.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 49 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonriver | [`0x52f04c806eb82930f40d410259b7af8e18d3bdc9`](./contracts/moonriver-1285/0x52f04c806eb82930f40d410259b7af8e18d3bdc9/) | MOONKAFE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 197 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=49

Fork inheritance lineage and inherited audits are included when available.
