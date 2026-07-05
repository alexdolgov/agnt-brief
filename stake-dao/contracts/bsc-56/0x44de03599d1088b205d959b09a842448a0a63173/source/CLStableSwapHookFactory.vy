# pragma version 0.3.10
# pragma optimize codesize
# pragma evm-version cancun
"""
@title CLStableSwapHookFactory
@author PancakeSwap
@license # TODO: Which license should we use?
@notice Permissionless pool deployer and registry
"""

struct PoolArray:
    implementation: address
    oracle_implementation: address
    coins: DynArray[address, MAX_COINS]
    decimals: DynArray[uint256, MAX_COINS]
    n_coins: uint256
    asset_types: DynArray[uint8, MAX_COINS]


interface ERC20:
    def balanceOf(_addr: address) -> uint256: view
    def decimals() -> uint256: view
    def totalSupply() -> uint256: view

interface Pool:
    def A() -> uint256: view
    def fee() -> uint256: view
    def admin_fee() -> uint256: view
    def balances(i: uint256) -> uint256: view
    def admin_balances(i: uint256) -> uint256: view
    def coins(i: uint256) -> address: view

interface PoolOracle:
    def set_hook(_hook: address): nonpayable


event PlainPoolDeployed:
    coins: DynArray[address, MAX_COINS]
    A: uint256
    fee: uint256
    deployer: address

event PoolImplementationUpdated:
    implementation_index: uint256
    implementation: address

event PoolOracleImplementationUpdated:
    implementation_index: uint256
    implementation: address

event ViewsImplementationUpdated:
    implementation: address


MAX_COINS: constant(uint256) = 2

MAX_FEE: constant(uint256) = 5 * 10 ** 9
FEE_DENOMINATOR: constant(uint256) = 10 ** 10

admin: public(address)
future_admin: public(address)

asset_types: public(HashMap[uint8, String[20]])

pool_list: public(address[4294967296])   # master list of pools
pool_count: public(uint256)              # actual length of pool_list
pool_data: HashMap[address, PoolArray]

# index -> implementation address
pool_implementations: public(HashMap[uint256, address])
pool_oracle_implementations: public(HashMap[uint256, address])
views_implementation: public(address)

# fee receiver for all pools
fee_receiver: public(address)

# mapping of coins -> pools for trading
# a mapping key is generated for each pair of addresses via
# `bitwise_xor(convert(a, uint256), convert(b, uint256))`
markets: HashMap[uint256, address[4294967296]]
market_counts: HashMap[uint256, uint256]

pool_manager: public(address)
pool_factory: public(address)


@external
def __init__(_fee_receiver: address, _owner: address, _pool_manager: address):

    self.fee_receiver = _fee_receiver
    self.admin = _owner

    # list of asset_types supported for stableswap hook
    self.asset_types[0] = "Standard"
    self.asset_types[1] = "Oracle"
    self.asset_types[3] = "ERC4626"

    self.pool_manager = _pool_manager


# <--- Factory Getters --->


@view
@external
def find_pool_for_coins(_from: address, _to: address, i: uint256 = 0) -> address:
    """
    @notice Find an available pool for exchanging two coins
    @param _from Address of coin to be sent
    @param _to Address of coin to be received
    @param i Index value. When multiple pools are available
            this value is used to return the n'th address.
    @return Pool address
    """
    key: uint256 = (convert(_from, uint256) ^ convert(_to, uint256))
    return self.markets[key][i]


# <--- Pool Getters --->

@view
@external
def get_n_coins(_pool: address) -> (uint256):
    """
    @notice Get the number of coins in a pool
    @param _pool Pool address
    @return Number of coins
    """
    return self.pool_data[_pool].n_coins


@view
@external
def get_coins(_pool: address) -> DynArray[address, MAX_COINS]:
    """
    @notice Get the coins within a pool
    @param _pool Pool address
    @return List of coin addresses
    """
    return self.pool_data[_pool].coins


@view
@external
def get_decimals(_pool: address) -> DynArray[uint256, MAX_COINS]:
    """
    @notice Get decimal places for each coin within a pool
    @param _pool Pool address
    @return uint256 list of decimals
    """
    return self.pool_data[_pool].decimals


@view
@external
def get_balances(_pool: address) -> DynArray[uint256, MAX_COINS]:
    """
    @notice Get balances for each coin within a pool
    @dev For pools using lending, these are the wrapped coin balances
    @param _pool Pool address
    @return uint256 list of balances
    """
    balances: DynArray[uint256, MAX_COINS] = empty(DynArray[uint256, MAX_COINS])

    n_coins: uint256 = self.pool_data[_pool].n_coins
    for i in range(MAX_COINS):

        if i == n_coins:
            break

        balances.append(Pool(_pool).balances(i))


    return balances


@view
@external
def get_A(_pool: address) -> uint256:
    """
    @notice Get the amplfication co-efficient for a pool
    @param _pool Pool address
    @return uint256 A
    """
    return Pool(_pool).A()


@view
@external
def get_fees(_pool: address) -> (uint256, uint256):
    """
    @notice Get the fees for a pool
    @dev Fees are expressed as integers
    @return Pool fee and admin fee as uint256 with 1e10 precision
    """
    return Pool(_pool).fee(), Pool(_pool).admin_fee()


@view
@external
def get_admin_balances(_pool: address) -> DynArray[uint256, MAX_COINS]:
    """
    @notice Get the current admin balances (uncollected fees) for a pool
    @param _pool Pool address
    @return List of uint256 admin balances
    """
    n_coins: uint256 = self.pool_data[_pool].n_coins
    admin_balances: DynArray[uint256, MAX_COINS] = empty(DynArray[uint256, MAX_COINS])
    for i in range(MAX_COINS):
        if i == n_coins:
            break
        admin_balances.append(Pool(_pool).admin_balances(i))
    return admin_balances


@view
@external
def get_implementation_address(_pool: address) -> address:
    """
    @notice Get the address of the implementation contract used for a factory pool
    @param _pool Pool address
    @return Implementation contract address
    """
    return self.pool_data[_pool].implementation


@view
@external
def get_oracle_implementation_address(_pool: address) -> address:
    """
    @notice Get the address of the oracle implementation contract used for a factory pool
    @param _pool Pool address
    @return Implementation contract address
    """
    return self.pool_data[_pool].oracle_implementation


@view
@external
def get_pool_asset_types(_pool: address) -> DynArray[uint8, MAX_COINS]:
    """
    @notice Query the asset type of `_pool`
    @param _pool Pool Address
    @return Dynarray of uint8 indicating the pool asset type
            Asset Types:
                0. Standard ERC20 token with no additional features
                1. Oracle - token with rate oracle (e.g. wrapped staked ETH)
                3. ERC4626 - e.g. sDAI
    """
    return self.pool_data[_pool].asset_types


# <--- Pool Deployers --->

@external
def deploy_plain_pool(
    _name: String[32],
    _symbol: String[10],
    _coins: DynArray[address, MAX_COINS],
    _A: uint256,
    _fee: uint256,
    _offpeg_fee_multiplier: uint256,
    _ma_exp_time: uint256,
    _implementation_idx: uint256,
    _asset_types: DynArray[uint8, MAX_COINS],
    _method_ids: DynArray[bytes4, MAX_COINS],
    _oracles: DynArray[address, MAX_COINS],
) -> address:
    """
    @notice Deploy a new plain pool
    @param _name Name of the new plain pool
    @param _symbol Symbol for the new plain pool - will be
                   concatenated with factory symbol
    @param _coins List of addresses of the coins being used in the pool.
    @param _A Amplification co-efficient - a lower value here means
              less tolerance for imbalance within the pool's assets.
              Suggested values include:
               * Uncollateralized algorithmic stablecoins: 5-10
               * Non-redeemable, collateralized assets: 100
               * Redeemable assets: 200-400
    @param _fee Trade fee, given as an integer with 1e10 precision. The
                maximum is 1% (100000000). 50% of the fee is distributed to veCRV holders.
    @param _ma_exp_time Averaging window of oracle. Set as time_in_seconds / ln(2)
                        Example: for 10 minute EMA, _ma_exp_time is 600 / ln(2) ~= 866
    @param _implementation_idx Index of the implementation to use
    @param _asset_types Asset types for pool, as an integer
    @param _method_ids Array of first four bytes of the Keccak-256 hash of the function signatures
                       of the oracle addresses that gives rate oracles.
                       Calculated as: keccak(text=event_signature.replace(" ", ""))[:4]
    @param _oracles Array of rate oracle addresses.
    @return Address of the deployed pool
    """
    assert msg.sender == self.pool_factory  # dev: pool factory only
    assert len(_coins) == 2  # dev: pool needs to have exactly two coins!
    assert len(_coins) == len(_method_ids)  # dev: All coin arrays should be same length
    assert len(_coins) == len(_oracles)  # dev: All coin arrays should be same length
    assert len(_coins) == len(_asset_types)  # dev: All coin arrays should be same length
    assert _fee <= 100000000, "Invalid fee"
    assert _offpeg_fee_multiplier * _fee <= MAX_FEE * FEE_DENOMINATOR

    n_coins: uint256 = len(_coins)
    _rate_multipliers: DynArray[uint256, MAX_COINS] = empty(DynArray[uint256, MAX_COINS])
    decimals: DynArray[uint256, MAX_COINS] = empty(DynArray[uint256, MAX_COINS])

    for i in range(MAX_COINS):
        if i == n_coins:
            break

        coin: address = _coins[i]

        decimals.append(ERC20(coin).decimals())
        assert decimals[i] < 19, "Max 18 decimals for coins"

        _rate_multipliers.append(10 ** (36 - decimals[i]))

        for j in range(i, i + MAX_COINS):
            if (j + 1) == n_coins:
                break
            assert coin != _coins[j+1], "Duplicate coins"

    for asset_type in _asset_types:
        assert self.asset_types[asset_type] != empty(String[20]), "Invalid asset type"

    oracle_implementation: address = self.pool_oracle_implementations[_implementation_idx]
    assert oracle_implementation != empty(address), "Invalid oracle implementation index"

    pool_oracle: address = create_from_blueprint(
        oracle_implementation,
        _ma_exp_time,                                   # _ma_exp_time: uint256
        code_offset=3
    )

    implementation: address = self.pool_implementations[_implementation_idx]
    assert implementation != empty(address), "Invalid implementation index"

    pool: address = create_from_blueprint(
        implementation,
        _name,                                          # _name: String[32]
        _symbol,                                        # _symbol: String[10]
        _A,                                             # _A: uint256
        _fee,                                           # _fee: uint256
        _offpeg_fee_multiplier,                         # _offpeg_fee_multiplier: uint256
        pool_oracle,                                    # _oracle_helper: address
        _coins,                                         # _coins: DynArray[address, MAX_COINS]
        _rate_multipliers,                              # _rate_multipliers: DynArray[uint256, MAX_COINS]
        _asset_types,                                   # _asset_types: DynArray[uint8, MAX_COINS]
        _method_ids,                                    # _method_ids: DynArray[bytes4, MAX_COINS]
        _oracles,                                       # _oracles: DynArray[address, MAX_COINS]
        code_offset=3
    )

    PoolOracle(pool_oracle).set_hook(pool)

    length: uint256 = self.pool_count
    self.pool_list[length] = pool
    self.pool_count = length + 1
    self.pool_data[pool].decimals = decimals
    self.pool_data[pool].n_coins = n_coins
    self.pool_data[pool].implementation = implementation
    self.pool_data[pool].oracle_implementation = oracle_implementation
    self.pool_data[pool].asset_types = _asset_types

    for i in range(MAX_COINS):
        if i == n_coins:
            break

        coin: address = _coins[i]
        self.pool_data[pool].coins.append(coin)

        for j in range(i, i + MAX_COINS):
            if (j + 1) == n_coins:
                break
            swappable_coin: address = _coins[j + 1]
            key: uint256 = (convert(coin, uint256) ^ convert(swappable_coin, uint256))
            length = self.market_counts[key]
            self.markets[key][length] = pool
            self.market_counts[key] = length + 1

    log PlainPoolDeployed(_coins, _A, _fee, msg.sender)
    return pool


# <--- Admin / Guarded Functionality --->

@external
def set_pool_implementations(
    _implementation_index: uint256,
    _implementation: address,
):
    """
    @notice Set implementation contracts for pools
    @dev Only callable by admin
    @param _implementation_index Implementation index where implementation is stored
    @param _implementation Implementation address to use when deploying plain pools
    """
    assert msg.sender == self.admin  # dev: admin-only function
    self.pool_implementations[_implementation_index] = _implementation
    log PoolImplementationUpdated(_implementation_index, _implementation)


@external
def set_pool_oracle_implementations(
    _implementation_index: uint256,
    _implementation: address,
):
    """
    @notice Set oracle implementation contracts for pools
    @dev Only callable by admin
    @param _implementation_index Implementation index where implementation is stored
    @param _implementation Implementation address to use when deploying pool oracles
    """
    assert msg.sender == self.admin  # dev: admin-only function
    self.pool_oracle_implementations[_implementation_index] = _implementation
    log PoolOracleImplementationUpdated(_implementation_index, _implementation)


@external
def set_views_implementation(_views_implementation: address):
    """
    @notice Set implementation contracts for Views methods
    @dev Only callable by admin
    @param _views_implementation Implementation address of views contract
    """
    assert msg.sender == self.admin  # dev: admin-only function
    self.views_implementation = _views_implementation
    log ViewsImplementationUpdated(_views_implementation)


@external
def commit_transfer_ownership(_addr: address):
    """
    @notice Transfer ownership of this contract to `addr`
    @param _addr Address of the new owner
    """
    assert msg.sender == self.admin  # dev: admin only
    self.future_admin = _addr


@external
def accept_transfer_ownership():
    """
    @notice Accept a pending ownership transfer
    @dev Only callable by the new owner
    """
    _admin: address = self.future_admin
    assert msg.sender == _admin  # dev: future admin only

    self.admin = _admin
    self.future_admin = empty(address)


@external
def set_fee_receiver(_fee_receiver: address):
    """
    @notice Set fee receiver for all pools
    @param _fee_receiver Address that fees are sent to
    """
    assert msg.sender == self.admin  # dev: admin only
    self.fee_receiver = _fee_receiver


@external
def add_asset_type(_id: uint8, _name: String[10]):
    """
    @notice Admin only method that adds a new asset type.
    @param _id asset type id.
    @param _name Name of the asset type.
    """
    assert msg.sender == self.admin  # dev: admin only
    self.asset_types[_id] = _name


@external
def set_pool_factory(_pool_factory: address):
    """
    @notice Set pool factory
    @param _pool_factory Address of the pool factory
    """
    assert msg.sender == self.admin  # dev: admin only
    self.pool_factory = _pool_factory